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

		 /* CLAIM atMostOne */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((critical<=1)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!( !((((int)now.critical)<=1))))
			continue;
		/* merge: assert(!(!((critical<=1))))(0, 2, 6) */
		reached[1][2] = 1;
		spin_assert( !( !((((int)now.critical)<=1))), " !( !((critical<=1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[1][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC process */
	case 5: // STATE 1 - dekker_q4.pml:13 - [flag[i] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]);
		now.flag[ Index(((P0 *)_this)->i, 2) ] = 1;
#ifdef VAR_RANGES
		logval("flag[process:i]", ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - dekker_q4.pml:16 - [(flag[j])] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((int)now.flag[ Index(((int)((P0 *)_this)->j), 2) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - dekker_q4.pml:18 - [((turn==j))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)now.turn)==((int)((P0 *)_this)->j))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - dekker_q4.pml:19 - [flag[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]);
		now.flag[ Index(((P0 *)_this)->i, 2) ] = 0;
#ifdef VAR_RANGES
		logval("flag[process:i]", ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 5 - dekker_q4.pml:21 - [((turn!=j))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.turn)!=((int)((P0 *)_this)->j))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 6 - dekker_q4.pml:21 - [flag[i] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]);
		now.flag[ Index(((P0 *)_this)->i, 2) ] = 1;
#ifdef VAR_RANGES
		logval("flag[process:i]", ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 17 - dekker_q4.pml:28 - [critical = (critical+1)] (0:0:1 - 6)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.critical);
		now.critical = (((int)now.critical)+1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 18 - dekker_q4.pml:30 - [critical = (critical-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.critical);
		now.critical = (((int)now.critical)-1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 19 - dekker_q4.pml:31 - [turn = j] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = ((int)((P0 *)_this)->j);
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 20 - dekker_q4.pml:32 - [flag[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]);
		now.flag[ Index(((P0 *)_this)->i, 2) ] = 0;
#ifdef VAR_RANGES
		logval("flag[process:i]", ((int)now.flag[ Index(((int)((P0 *)_this)->i), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 24 - dekker_q4.pml:34 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
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

