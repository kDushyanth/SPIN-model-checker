	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM atMostOne */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC process */

	case 5: // STATE 1
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 8: // STATE 4
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 10: // STATE 6
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 18
		;
		now.critical = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 19
		;
		now.critical = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 20
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 21
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;
	}

