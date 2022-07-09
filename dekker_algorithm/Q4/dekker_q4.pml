//Dekker's mutex algorithm, two parallel processes

bool flag[2] = {false};
byte turn = 0, critical = 0;

active [2] proctype process(){
	//printf("process: %d",_pid)
	byte i = _pid, j = 1 - _pid
	
	//infinite loop
	do
	  :: 		//non-critical section
	  		flag[i] = true;
	  		//trying section
	  		if
	  			:: 	flag[j] ->
		  			if
		  				:: turn==j -> 
			  				flag[i] = false;
			  				if
			  					:: turn != j -> flag[i] = true;
			  				fi 
		  				:: else -> skip;
		  			fi
	  			:: else -> skip;
	  		fi 
	  		//critical section
	  		critical++;
	  		
	  		critical--;
	  		turn = j;
	  		flag[i] = false;
	od	
}
ltl atMostOne{
	[](critical<=1)
}
