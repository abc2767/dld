`timescale 1ns / 1ps	

module rsh_tb(
);
	reg a, f, y;
	wire lsh;
	
	rsh RSH(
		  .a(a),
		  .f(f),
		  .y(y)
		 );
		 

initial begin
	#25
	a = 14'b11111111111111;
	f = (f == 7) ? 0 : f+3b'001;
end

initial begin
		$monitor($time,
		    "ns.    After shift output is : %d\n",
		    y
		    );
	end

	initial begin
		#200 $finish;
	end

endmodule
