//module ipod_fsm_addr (clk, reset, address_flag,finish,address,state);
//
//input clk, reset, address_flag;
//
//output finish;
//output reg [22:0] address;
//output reg [5:0] state; 
//
//wire direction;
//assign direction = 1'b0;
//
//parameter idle_state = 6'b000_000;
//parameter direction_check = 6'b001_000;
//parameter reverse_address = 6'b010_000;
//parameter forward_address = 6'b011_000;	
//parameter finished = 6'b111_100;
//
//assign finish = state[2];
//
//always @ (posedge clk)
//begin
//	if (reset)
//		state <= idle_state;
//		
//	else
//		case(state)
//		
//			idle_state: if(address_flag)
//				state <= direction_check;
//				
//			direction_check: if(direction)
//				state <= reverse_address;
//			else
//				state <= forward_address;
//				
//			reverse_address: 
//			if (address != 23'd0)
//				address <= address - 23'd1;
//			else begin
//				address <= 23'd0;
//			state <= finished;
//			end
//			
//			forward_address:
//			if (address != 23'h7FFFF)
//				address <= address + 23'd1;
//			else begin
//				address <= 23'd0;
//			state <= finished;
//			end
//			
//			finished: state<=idle_state;
//			
//			default: begin
//			state <= idle_state;
//			end
//		endcase
//end
//endmodule
// 