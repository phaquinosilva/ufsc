/*
 * Copyright(C) 2011-2016 Pedro H. Penna   <pedrohenriquepenna@gmail.com>
 *              2015-2016 Davidson Francis <davidsondfgl@hotmail.com>
 *
 * This file is part of Nanvix.
 *
 * Nanvix is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Nanvix is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Nanvix. If not, see <http://www.gnu.org/licenses/>.
 */

#include <nanvix/clock.h>
#include <nanvix/const.h>
#include <nanvix/hal.h>
#include <nanvix/pm.h>
#include <nanvix/klib.h>  /* krand e ksrand */
#include <signal.h>

/**
 * @brief Schedules a process to execution.
 * 
 * @param proc Process to be scheduled.
 */
PUBLIC void sched(struct process *proc)
{
	/* Compensate if process hasn't finished its quantum */
	if (proc->counter > 0 && proc->counter < PROC_QUANTUM)
	{
		/* Compute fraction of quantum used */
		int inflation = PROC_QUANTUM / (PROC_QUANTUM - proc->counter);
		/* Compensate for unused processor time */
		proc->priority *= inflation;
	}
	proc->state = PROC_READY;
}

/**
 * @brief Stops the current running process.
 */
PUBLIC void stop(void)
{
	curr_proc->state = PROC_STOPPED;
	sndsig(curr_proc->father, SIGCHLD);
	yield();
}

/**
 * @brief Resumes a process.
 * 
 * @param proc Process to be resumed.
 * 
 * @note The process must stopped to be resumed.
 */
PUBLIC void resume(struct process *proc)
{	
	/* Resume only if process has stopped. */
	if (proc->state == PROC_STOPPED)
		sched(proc);
}

/**
 * @brief Yields the processor.
 *
 * @todo Compensation tickets.
 */
PUBLIC void yield(void)
{
	struct process *p;    /* Working process.     */
	struct process *next; /* Next process to run. */

	/* Re-schedule process for execution. */
	if (curr_proc->state == PROC_RUNNING)
		sched(curr_proc);

	/* Remember this process. */
	last_proc = curr_proc;

	/* Check alarm and count total tickets. */
	int total_tickets = 0;
	for (p = FIRST_PROC; p <= LAST_PROC; p++)
	{
		/* Skip invalid processes. */ 
		if (!IS_VALID(p))
			continue;
		
		/* Alarm has expired. */
		if ((p->alarm) && (p->alarm < ticks))
			p->alarm = 0, sndsig(p, SIGALRM);

		/* Counts tickets for processes that are ready */
		if (p->state == PROC_READY)
			total_tickets += p->priority;
	}

	/* Choose a process to run next. */
	next = IDLE;
	if (total_tickets > 0)  // there is at least one ready process && avoids division by zero
	{
		/* Draws a random ticket */
		int lottery_draw = krand()%total_tickets;
		int ticket_counter = 0;

		/* Find the winner process */	
		for (p = FIRST_PROC; p <= LAST_PROC; p++)
		{
			/* Skip non-ready process. */
			if (p->state != PROC_READY)
				continue;

			/* Add process tickets to counter */
			ticket_counter += p->priority;

			/* Select winner process */
			if (ticket_counter > lottery_draw)
			{
				next = p;
				break;  // chooses only one process
			}
		}
	}

	/* Remove chosen ticket */
	next->priority = (next->priority > PRIO_USER ? next->priority - 1 : PRIO_USER);
	
	/* Switch to next process. */
	next->state = PROC_RUNNING;
	next->counter = PROC_QUANTUM;  
	if (curr_proc != next)
		switch_to(next);
}
