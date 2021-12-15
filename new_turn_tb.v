`timescale 1ns / 1ps


module turn_tb(
    input   [2:0]   curr_elevator_1, curr_elevator_2,
    input   [13:0]   up_passenger, down_passenger,
    input   [1:0]   dir_elevator,
    input   [5:0]   boarding_1, boarding_2,
    output wire  [1:0]   turn,
    output reg   [5:0]   hold_1, hold_2
	
	 turn TURN(

			.curr_elevator_1(curr_elevator_1).
			.curr_elevator_2(curr_elevator_2),
			.up_passenger(up_passenger),
			.down_passenger(down_passenger),
			.dir_elevator(dir_elevator),
			.boarding_1(boarding_1),
			.boarding_2(boarding_2),
			.turn(turn),
			.hold_1(hold_1), 
			.hold_2(hold_2)
	 );
		 

initial begin
	#25
	curr_elevator_1 = 3b'011;
	curr_elevator_2 = 3b'100;
	down_passenger = 14b'00010000000000;
	up_passenger = 14b'00000000000001;
	dir_elevator = 2b'01;
	boarding_1 = 6b'010111;
	boarding_2 = 6b'110101;
end

initial begin
		if (turn1 ==1) begin
			$monitor($time,
		    "ns.   elevator_1 turn now
		    );
			 end
		if (hold_1[5]) begin
			$monitor($time,
		    "ns.   elevator_1 is hold for boarding
		    );
		if (hold_1[2]) begin
			$monitor($time,
		    "ns.   elevator_1 is hold for getting off
		    );
		if (turn2 ==1) begin
			$monitor($time,
		    "ns.   elevator_2 turn now
		    );
			 end
		if (hold_2[5]) begin
			$monitor($time,
		    "ns.   elevator_2 is hold for boarding
		    );
		if (hold_2[2]) begin
			$monitor($time,
		    "ns.   elevator_2 is hold for getting off
		    );		
	end

	initial begin
		#500 $finish;
	end
    );


endmodule
