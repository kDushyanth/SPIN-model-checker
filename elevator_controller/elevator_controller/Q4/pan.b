	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM outOfBound */
;
		;
		
	case 4: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM openedDoorCloses */
;
		;
		;
		;
		
	case 7: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM withinLimits */
;
		
	case 8: // STATE 1
		goto R999;

	case 9: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC controller */

	case 10: // STATE 1
		;
		XX = 1;
		unrecv(now.elevator_buttons, XX-1, 0, 8, 1);
		;
		;
		goto R999;
;
		;
		
	case 12: // STATE 3
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 13: // STATE 4
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 5
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 15: // STATE 6
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 17: // STATE 9
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 18: // STATE 10
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 16
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 20: // STATE 17
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 18
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 22: // STATE 19
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 22
		;
		XX = 1;
		unrecv(now.elevator_buttons, XX-1, 0, 7, 1);
		;
		;
		goto R999;
;
		;
		
	case 25: // STATE 24
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 26: // STATE 25
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 26
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 28: // STATE 27
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: // STATE 29
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 31: // STATE 30
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 31
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 33: // STATE 32
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 33
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 35: // STATE 34
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 37: // STATE 37
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 38: // STATE 38
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 44
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 40: // STATE 45
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 46
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 42: // STATE 47
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 50
		;
		XX = 1;
		unrecv(now.elevator_buttons, XX-1, 0, 6, 1);
		;
		;
		goto R999;
;
		;
		
	case 45: // STATE 52
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 46: // STATE 53
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 47: // STATE 54
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 48: // STATE 55
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 51: // STATE 58
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 52: // STATE 59
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 65
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 54: // STATE 66
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 67
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 56: // STATE 68
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 58: // STATE 70
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 59: // STATE 71
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 72
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 61: // STATE 73
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 74
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 63: // STATE 75
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 78
		;
		XX = 1;
		unrecv(now.elevator_buttons, XX-1, 0, 5, 1);
		;
		;
		goto R999;
;
		;
		
	case 66: // STATE 80
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 67: // STATE 81
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 82
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 69: // STATE 83
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 86
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 72: // STATE 87
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 93
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 74: // STATE 94
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 95
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 76: // STATE 96
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 99
		;
		XX = 1;
		unrecv(now.floor_buttons, XX-1, 0, 12, 1);
		;
		;
		goto R999;
;
		;
		
	case 79: // STATE 101
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 80: // STATE 102
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 103
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 82: // STATE 104
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 84: // STATE 107
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 85: // STATE 108
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 114
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 87: // STATE 115
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 116
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 89: // STATE 117
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 120
		;
		XX = 1;
		unrecv(now.floor_buttons, XX-1, 0, 11, 1);
		;
		;
		goto R999;
;
		;
		
	case 92: // STATE 122
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 93: // STATE 123
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 124
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 95: // STATE 125
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 127
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 98: // STATE 128
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 129
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 100: // STATE 130
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 131
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 102: // STATE 132
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 104: // STATE 135
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 105: // STATE 136
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 106: // STATE 142
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 107: // STATE 143
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 144
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 109: // STATE 145
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 148
		;
		XX = 1;
		unrecv(now.floor_buttons, XX-1, 0, 10, 1);
		;
		;
		goto R999;
;
		;
		
	case 112: // STATE 150
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 113: // STATE 151
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 152
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 115: // STATE 153
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 118: // STATE 156
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 119: // STATE 157
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 120: // STATE 163
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 121: // STATE 164
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 122: // STATE 165
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 123: // STATE 166
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 125: // STATE 168
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 126: // STATE 169
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 127: // STATE 170
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 128: // STATE 171
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 129: // STATE 172
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 130: // STATE 173
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 131: // STATE 176
		;
		XX = 1;
		unrecv(now.floor_buttons, XX-1, 0, 9, 1);
		;
		;
		goto R999;
;
		;
		
	case 133: // STATE 178
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 134: // STATE 179
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 180
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 136: // STATE 181
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 138: // STATE 184
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 139: // STATE 185
		;
		now.at = trpt->bup.oval;
		;
		goto R999;

	case 140: // STATE 191
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 141: // STATE 192
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 193
		;
		_m = unsend(now.commands);
		;
		goto R999;

	case 143: // STATE 194
		;
		now.closed = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 200
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC elevator_button_input */

	case 145: // STATE 1
		;
		_m = unsend(now.elevator_buttons);
		;
		goto R999;

	case 146: // STATE 2
		;
		_m = unsend(now.elevator_buttons);
		;
		goto R999;

	case 147: // STATE 3
		;
		_m = unsend(now.elevator_buttons);
		;
		goto R999;

	case 148: // STATE 4
		;
		_m = unsend(now.elevator_buttons);
		;
		goto R999;

	case 149: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC floor_button_input */

	case 150: // STATE 1
		;
		_m = unsend(now.floor_buttons);
		;
		goto R999;

	case 151: // STATE 2
		;
		_m = unsend(now.floor_buttons);
		;
		goto R999;

	case 152: // STATE 3
		;
		_m = unsend(now.floor_buttons);
		;
		goto R999;

	case 153: // STATE 4
		;
		_m = unsend(now.floor_buttons);
		;
		goto R999;

	case 154: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC elevator */

	case 155: // STATE 1
		;
		XX = 1;
		unrecv(now.commands, XX-1, 0, 4, 1);
		;
		;
		goto R999;

	case 156: // STATE 4
		;
		XX = 1;
		unrecv(now.commands, XX-1, 0, 3, 1);
		;
		;
		goto R999;

	case 157: // STATE 7
		;
		XX = 1;
		unrecv(now.commands, XX-1, 0, 2, 1);
		;
		;
		goto R999;

	case 158: // STATE 10
		;
		XX = 1;
		unrecv(now.commands, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 159: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;
	}

