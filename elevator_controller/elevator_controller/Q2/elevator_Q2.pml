mtype = {
	call_0,call_1,call_2,call_3,
	go_0,go_1,go_2,go_3,
	open,close,up,down
};

chan floor_buttons = [1] of {mtype};
chan elevator_buttons = [1] of {mtype};
chan commands = [0] of {mtype};
int at = 0;
bool closed = true;
	
active proctype elevator() {
	do
	:: commands ? open -> printf("Elevator: opened doors.\n");
	:: commands ? close -> printf("Elevator: closed doors.\n");
	:: commands ? up -> assert(at!=3);printf("Elevator: moved up one floor.\n");
	:: commands ? down -> assert(at!=0);printf("Elevator: moved down one floor.\n");
	od
}

active proctype floor_button_input() {
	do
	:: floor_buttons ! call_0;
	:: floor_buttons ! call_1;
	:: floor_buttons ! call_2;
	:: floor_buttons ! call_3;
	od
}

active proctype elevator_button_input() {
	do
	:: elevator_buttons ! go_0;
	:: elevator_buttons ! go_1;
	:: elevator_buttons ! go_2;
	:: elevator_buttons ! go_3;
	od
}
active proctype controller() {
	
	do
		:: elevator_buttons ? go_0 ->
			if
				:: at==0 -> 
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: else ->
					do
						:: at>0 ->
							commands ! down;
							at--;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
			fi
		:: elevator_buttons ? go_1 ->
			if
				:: at==1 ->
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at==0 ->
					commands ! up;
					at++;
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: else ->
					do
						:: at>1 ->
							commands ! down;
							at--;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;		
			fi
		:: elevator_buttons ? go_2 ->
			if
				:: at==2 ->
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at<2 ->
					do
						:: at<2 ->
							commands ! up;
							at++;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at==3 ->
					commands ! down;
					at--;
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
					
			fi
		:: elevator_buttons ? go_3 ->
			if
				:: at==3 -> 
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: else ->
					do
						:: at<3 ->
							commands ! up;
							at++;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
			fi
			
		:: floor_buttons ? call_0 ->
			if
				:: at==0 -> 
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: else ->
					do
						:: at>0 ->
							commands ! down;
							at--;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
			fi
		:: floor_buttons ? call_1 ->
			if
				:: at==1 ->
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at==0 ->
					commands ! up;
					at++;
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
					
				:: else ->
					do
						:: at>1 ->
							commands ! down;
							at--;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;		
			fi
		:: floor_buttons ? call_2 ->
			if
				:: at==2 ->
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at<2 ->
					do
						:: at<2 ->
							commands ! up;
							at++;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: at==3 ->
					
					commands ! down;
					at--;
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
					
			fi
		:: floor_buttons ? call_3 ->
			if
				:: at==3 -> 
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
				:: else ->
					do
						:: at<3 ->
							commands ! up;
							at++;
						:: else -> break;
					od
					commands ! open;
					closed = false;
					commands ! close;
					closed = true;
			fi
		
			
	od
}
	
