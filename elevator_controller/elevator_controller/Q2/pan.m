#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC controller */
	case 3: // STATE 1 - corrected.pml:42 - [elevator_buttons?go_0] (0:0:0 - 1)
		reached[3][1] = 1;
		if (q_zero(now.elevator_buttons))
		{	if (boq != now.elevator_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.elevator_buttons) == 0) continue;

		XX=1;
		if (8 != qrecv(now.elevator_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.elevator_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.elevator_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.elevator_buttons);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.elevator_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - corrected.pml:44 - [((at==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((now.at==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - corrected.pml:45 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 6: // STATE 4 - corrected.pml:46 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - corrected.pml:47 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 8: // STATE 6 - corrected.pml:48 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - corrected.pml:51 - [((at>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		if (!((now.at>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 9 - corrected.pml:52 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 10 - corrected.pml:53 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 16 - corrected.pml:56 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][16] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 17 - corrected.pml:57 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 18 - corrected.pml:58 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 19 - corrected.pml:59 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 22 - corrected.pml:61 - [elevator_buttons?go_1] (0:0:0 - 1)
		reached[3][22] = 1;
		if (q_zero(now.elevator_buttons))
		{	if (boq != now.elevator_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.elevator_buttons) == 0) continue;

		XX=1;
		if (7 != qrecv(now.elevator_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.elevator_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.elevator_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.elevator_buttons);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.elevator_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 17: // STATE 23 - corrected.pml:63 - [((at==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		if (!((now.at==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 24 - corrected.pml:64 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][24] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 19: // STATE 25 - corrected.pml:65 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][25] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 26 - corrected.pml:66 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][26] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 27 - corrected.pml:67 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 28 - corrected.pml:68 - [((at==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		if (!((now.at==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 29 - corrected.pml:69 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 30 - corrected.pml:70 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 31 - corrected.pml:71 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 32 - corrected.pml:72 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 33 - corrected.pml:73 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][33] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 34 - corrected.pml:74 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][34] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 36 - corrected.pml:77 - [((at>1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][36] = 1;
		if (!((now.at>1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 37 - corrected.pml:78 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 38 - corrected.pml:79 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 44 - corrected.pml:82 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][44] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 45 - corrected.pml:83 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][45] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 46 - corrected.pml:84 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][46] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 47 - corrected.pml:85 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][47] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 50 - corrected.pml:87 - [elevator_buttons?go_2] (0:0:0 - 1)
		reached[3][50] = 1;
		if (q_zero(now.elevator_buttons))
		{	if (boq != now.elevator_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.elevator_buttons) == 0) continue;

		XX=1;
		if (6 != qrecv(now.elevator_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.elevator_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.elevator_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.elevator_buttons);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.elevator_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 37: // STATE 51 - corrected.pml:89 - [((at==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][51] = 1;
		if (!((now.at==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 52 - corrected.pml:90 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][52] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 53 - corrected.pml:91 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][53] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 54 - corrected.pml:92 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][54] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 55 - corrected.pml:93 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][55] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 56 - corrected.pml:94 - [((at<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][56] = 1;
		if (!((now.at<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 57 - corrected.pml:96 - [((at<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][57] = 1;
		if (!((now.at<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 58 - corrected.pml:97 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][58] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 45: // STATE 59 - corrected.pml:98 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][59] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 65 - corrected.pml:101 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][65] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 66 - corrected.pml:102 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][66] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 67 - corrected.pml:103 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][67] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 68 - corrected.pml:104 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][68] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 69 - corrected.pml:105 - [((at==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][69] = 1;
		if (!((now.at==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 70 - corrected.pml:106 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][70] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 52: // STATE 71 - corrected.pml:107 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][71] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 72 - corrected.pml:108 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][72] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 73 - corrected.pml:109 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][73] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 74 - corrected.pml:110 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][74] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 75 - corrected.pml:111 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][75] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 78 - corrected.pml:114 - [elevator_buttons?go_3] (0:0:0 - 1)
		reached[3][78] = 1;
		if (q_zero(now.elevator_buttons))
		{	if (boq != now.elevator_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.elevator_buttons) == 0) continue;

		XX=1;
		if (5 != qrecv(now.elevator_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.elevator_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.elevator_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.elevator_buttons);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.elevator_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 58: // STATE 79 - corrected.pml:116 - [((at==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][79] = 1;
		if (!((now.at==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 80 - corrected.pml:117 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][80] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 81 - corrected.pml:118 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][81] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 82 - corrected.pml:119 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][82] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 62: // STATE 83 - corrected.pml:120 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][83] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 85 - corrected.pml:123 - [((at<3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][85] = 1;
		if (!((now.at<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 86 - corrected.pml:124 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][86] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 87 - corrected.pml:125 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][87] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 93 - corrected.pml:128 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][93] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 67: // STATE 94 - corrected.pml:129 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][94] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 95 - corrected.pml:130 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][95] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 69: // STATE 96 - corrected.pml:131 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][96] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 99 - corrected.pml:134 - [floor_buttons?call_0] (0:0:0 - 1)
		reached[3][99] = 1;
		if (q_zero(now.floor_buttons))
		{	if (boq != now.floor_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.floor_buttons) == 0) continue;

		XX=1;
		if (12 != qrecv(now.floor_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.floor_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.floor_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.floor_buttons);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.floor_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 71: // STATE 100 - corrected.pml:136 - [((at==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][100] = 1;
		if (!((now.at==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 101 - corrected.pml:137 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][101] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 73: // STATE 102 - corrected.pml:138 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][102] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 103 - corrected.pml:139 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][103] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 75: // STATE 104 - corrected.pml:140 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][104] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 106 - corrected.pml:143 - [((at>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][106] = 1;
		if (!((now.at>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 107 - corrected.pml:144 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][107] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 78: // STATE 108 - corrected.pml:145 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][108] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 114 - corrected.pml:148 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][114] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 80: // STATE 115 - corrected.pml:149 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][115] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 116 - corrected.pml:150 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][116] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 82: // STATE 117 - corrected.pml:151 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][117] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 120 - corrected.pml:153 - [floor_buttons?call_1] (0:0:0 - 1)
		reached[3][120] = 1;
		if (q_zero(now.floor_buttons))
		{	if (boq != now.floor_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.floor_buttons) == 0) continue;

		XX=1;
		if (11 != qrecv(now.floor_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.floor_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.floor_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.floor_buttons);
		sprintf(simtmp, "%d", 11); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.floor_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 84: // STATE 121 - corrected.pml:155 - [((at==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][121] = 1;
		if (!((now.at==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 122 - corrected.pml:156 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][122] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 86: // STATE 123 - corrected.pml:157 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][123] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 124 - corrected.pml:158 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][124] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 125 - corrected.pml:159 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][125] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 126 - corrected.pml:160 - [((at==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][126] = 1;
		if (!((now.at==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 127 - corrected.pml:161 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][127] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 91: // STATE 128 - corrected.pml:162 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][128] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 129 - corrected.pml:163 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][129] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 93: // STATE 130 - corrected.pml:164 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][130] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 131 - corrected.pml:165 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][131] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 95: // STATE 132 - corrected.pml:166 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][132] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 134 - corrected.pml:170 - [((at>1))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][134] = 1;
		if (!((now.at>1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 135 - corrected.pml:171 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][135] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 136 - corrected.pml:172 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][136] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 142 - corrected.pml:175 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][142] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 100: // STATE 143 - corrected.pml:176 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][143] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 101: // STATE 144 - corrected.pml:177 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][144] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 102: // STATE 145 - corrected.pml:178 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][145] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 148 - corrected.pml:180 - [floor_buttons?call_2] (0:0:0 - 1)
		reached[3][148] = 1;
		if (q_zero(now.floor_buttons))
		{	if (boq != now.floor_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.floor_buttons) == 0) continue;

		XX=1;
		if (10 != qrecv(now.floor_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.floor_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.floor_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.floor_buttons);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.floor_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 104: // STATE 149 - corrected.pml:182 - [((at==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][149] = 1;
		if (!((now.at==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 150 - corrected.pml:183 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][150] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 106: // STATE 151 - corrected.pml:184 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][151] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 152 - corrected.pml:185 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][152] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 108: // STATE 153 - corrected.pml:186 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][153] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 154 - corrected.pml:187 - [((at<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][154] = 1;
		if (!((now.at<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 155 - corrected.pml:189 - [((at<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][155] = 1;
		if (!((now.at<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 156 - corrected.pml:190 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][156] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 112: // STATE 157 - corrected.pml:191 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][157] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 163 - corrected.pml:194 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][163] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 114: // STATE 164 - corrected.pml:195 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][164] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 165 - corrected.pml:196 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][165] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 116: // STATE 166 - corrected.pml:197 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][166] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 167 - corrected.pml:198 - [((at==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][167] = 1;
		if (!((now.at==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 168 - corrected.pml:200 - [commands!down] (0:0:0 - 1)
		IfNotBlocked
		reached[3][168] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 1, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 119: // STATE 169 - corrected.pml:201 - [at = (at-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][169] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at-1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 170 - corrected.pml:202 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][170] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 121: // STATE 171 - corrected.pml:203 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][171] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 172 - corrected.pml:204 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][172] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 123: // STATE 173 - corrected.pml:205 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][173] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 176 - corrected.pml:208 - [floor_buttons?call_3] (0:0:0 - 1)
		reached[3][176] = 1;
		if (q_zero(now.floor_buttons))
		{	if (boq != now.floor_buttons) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.floor_buttons) == 0) continue;

		XX=1;
		if (9 != qrecv(now.floor_buttons, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.floor_buttons-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.floor_buttons, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.floor_buttons);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.floor_buttons))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 125: // STATE 177 - corrected.pml:210 - [((at==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][177] = 1;
		if (!((now.at==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 178 - corrected.pml:211 - [commands!open] (0:0:0 - 1)
		IfNotBlocked
		reached[3][178] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 127: // STATE 179 - corrected.pml:212 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][179] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 180 - corrected.pml:213 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][180] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 129: // STATE 181 - corrected.pml:214 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][181] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 183 - corrected.pml:217 - [((at<3))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][183] = 1;
		if (!((now.at<3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 184 - corrected.pml:218 - [commands!up] (0:0:0 - 1)
		IfNotBlocked
		reached[3][184] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 2, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 132: // STATE 185 - corrected.pml:219 - [at = (at+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][185] = 1;
		(trpt+1)->bup.oval = now.at;
		now.at = (now.at+1);
#ifdef VAR_RANGES
		logval("at", now.at);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 191 - corrected.pml:222 - [commands!open] (0:0:0 - 3)
		IfNotBlocked
		reached[3][191] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 4, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 134: // STATE 192 - corrected.pml:223 - [closed = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][192] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 0;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 193 - corrected.pml:224 - [commands!close] (0:0:0 - 1)
		IfNotBlocked
		reached[3][193] = 1;
		if (q_full(now.commands))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.commands, 0, 3, 1);
		if (q_zero(now.commands)) { boq = now.commands; };
		_m = 2; goto P999; /* 0 */
	case 136: // STATE 194 - corrected.pml:225 - [closed = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][194] = 1;
		(trpt+1)->bup.oval = ((int)closed);
		closed = 1;
#ifdef VAR_RANGES
		logval("closed", ((int)closed));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 200 - corrected.pml:230 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][200] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC elevator_button_input */
	case 138: // STATE 1 - corrected.pml:33 - [elevator_buttons!go_0] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (q_full(now.elevator_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.elevator_buttons);
		sprintf(simtmp, "%d", 8); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.elevator_buttons, 0, 8, 1);
		if (q_zero(now.elevator_buttons)) { boq = now.elevator_buttons; };
		_m = 2; goto P999; /* 0 */
	case 139: // STATE 2 - corrected.pml:34 - [elevator_buttons!go_1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.elevator_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.elevator_buttons);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.elevator_buttons, 0, 7, 1);
		if (q_zero(now.elevator_buttons)) { boq = now.elevator_buttons; };
		_m = 2; goto P999; /* 0 */
	case 140: // STATE 3 - corrected.pml:35 - [elevator_buttons!go_2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (q_full(now.elevator_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.elevator_buttons);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.elevator_buttons, 0, 6, 1);
		if (q_zero(now.elevator_buttons)) { boq = now.elevator_buttons; };
		_m = 2; goto P999; /* 0 */
	case 141: // STATE 4 - corrected.pml:36 - [elevator_buttons!go_3] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (q_full(now.elevator_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.elevator_buttons);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.elevator_buttons, 0, 5, 1);
		if (q_zero(now.elevator_buttons)) { boq = now.elevator_buttons; };
		_m = 2; goto P999; /* 0 */
	case 142: // STATE 8 - corrected.pml:38 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC floor_button_input */
	case 143: // STATE 1 - corrected.pml:24 - [floor_buttons!call_0] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (q_full(now.floor_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.floor_buttons);
		sprintf(simtmp, "%d", 12); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.floor_buttons, 0, 12, 1);
		if (q_zero(now.floor_buttons)) { boq = now.floor_buttons; };
		_m = 2; goto P999; /* 0 */
	case 144: // STATE 2 - corrected.pml:25 - [floor_buttons!call_1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.floor_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.floor_buttons);
		sprintf(simtmp, "%d", 11); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.floor_buttons, 0, 11, 1);
		if (q_zero(now.floor_buttons)) { boq = now.floor_buttons; };
		_m = 2; goto P999; /* 0 */
	case 145: // STATE 3 - corrected.pml:26 - [floor_buttons!call_2] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.floor_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.floor_buttons);
		sprintf(simtmp, "%d", 10); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.floor_buttons, 0, 10, 1);
		if (q_zero(now.floor_buttons)) { boq = now.floor_buttons; };
		_m = 2; goto P999; /* 0 */
	case 146: // STATE 4 - corrected.pml:27 - [floor_buttons!call_3] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.floor_buttons))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.floor_buttons);
		sprintf(simtmp, "%d", 9); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.floor_buttons, 0, 9, 1);
		if (q_zero(now.floor_buttons)) { boq = now.floor_buttons; };
		_m = 2; goto P999; /* 0 */
	case 147: // STATE 8 - corrected.pml:29 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC elevator */
	case 148: // STATE 1 - corrected.pml:15 - [commands?open] (15:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.commands))
		{	if (boq != now.commands) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.commands) == 0) continue;

		XX=1;
		if (4 != qrecv(now.commands, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.commands-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.commands, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.commands);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.commands))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: printf('Elevator: opened doors.\\n')(0, 2, 15) */
		reached[0][2] = 1;
		Printf("Elevator: opened doors.\n");
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 149: // STATE 4 - corrected.pml:16 - [commands?close] (15:0:0 - 1)
		reached[0][4] = 1;
		if (q_zero(now.commands))
		{	if (boq != now.commands) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.commands) == 0) continue;

		XX=1;
		if (3 != qrecv(now.commands, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.commands-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.commands, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.commands);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.commands))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: printf('Elevator: closed doors.\\n')(0, 5, 15) */
		reached[0][5] = 1;
		Printf("Elevator: closed doors.\n");
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 4; goto P999; /* 2 */
	case 150: // STATE 7 - corrected.pml:17 - [commands?up] (15:0:0 - 1)
		reached[0][7] = 1;
		if (q_zero(now.commands))
		{	if (boq != now.commands) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.commands) == 0) continue;

		XX=1;
		if (2 != qrecv(now.commands, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.commands-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.commands, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.commands);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.commands))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: assert((at!=3))(15, 8, 15) */
		reached[0][8] = 1;
		spin_assert((now.at!=3), "(at!=3)", II, tt, t);
		/* merge: printf('Elevator: moved up one floor.\\n')(15, 9, 15) */
		reached[0][9] = 1;
		Printf("Elevator: moved up one floor.\n");
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 4; goto P999; /* 3 */
	case 151: // STATE 11 - corrected.pml:18 - [commands?down] (15:0:0 - 1)
		reached[0][11] = 1;
		if (q_zero(now.commands))
		{	if (boq != now.commands) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.commands) == 0) continue;

		XX=1;
		if (1 != qrecv(now.commands, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.commands-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.commands, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.commands);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.commands))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		/* merge: assert((at!=0))(15, 12, 15) */
		reached[0][12] = 1;
		spin_assert((now.at!=0), "(at!=0)", II, tt, t);
		/* merge: printf('Elevator: moved down one floor.\\n')(15, 13, 15) */
		reached[0][13] = 1;
		Printf("Elevator: moved down one floor.\n");
		/* merge: .(goto)(0, 16, 15) */
		reached[0][16] = 1;
		;
		_m = 4; goto P999; /* 3 */
	case 152: // STATE 18 - corrected.pml:20 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

