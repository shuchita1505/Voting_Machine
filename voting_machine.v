module voting_machine(clk,rst,button1,button2,button3,button4,led1,led2,led3,led4,count_total,count1,count2,count3,count4);
	input clk,rst;
	input button1;//button1 is for candidate 1
	input button2;//button2 is for candidate 2
	input button3;//button3 is for candidate 3
	input button4;//button4 is for candidate 4
	output reg led1,led2,led3,led4;
	output reg [32:0] count_total,count1,count2,count3,count4;
	
	initial
	begin
	led1=0;
		led2=0;
		led3=0;
		led4=0;
		count_total=0;
		count1=0;
		count2=0;
		count3=0;
		count4=0;
		end
				 
	always@(posedge clk)
	begin
		if(rst)
		begin
		 
		 count_total=0;
		 count1=0;
		 count2=0;
		 count3=0;
		 count4=0;
		 end
		else if(button1==1)
			begin
			
			count_total=count_total+1;
			count1=count1+1;
			led1=1;
			#10;
			led1=0;
			end
		else if(button2==1)
			begin
			
			count_total=count_total+1;
			count2=count2+1;
			led2=1;
			#10;
			led2=0;
			end
		else if(button3==1)
			begin
			
			count_total=count_total+1;
			count3=count3+1;
			led3=1;
			#10;
			led3=0;
			end
		else if(button4==1)
			begin
			
			count_total=count_total+1;
			count4=count4+1;
			led4=1;
			#10;
			led4=0;
			end
	end
endmodule
		
			
