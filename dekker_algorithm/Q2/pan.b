	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC process */

	case 3: // STATE 1
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 6: // STATE 4
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 6
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 18
		;
		now.critical = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 20
		;
		now.critical = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 21
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 22
		;
		now.flag[ Index(((P0 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;
	}

