`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/31 11:05:03
// Design Name: 
// Module Name: SR_latch_gate_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_latch_gate_tb(
);
     reg tr,ts,te;
   wire tq,tqbar;
       SR_latch_gate test_buff(
       .R(tr),.S(ts),.Q(tq),.E(te),.Qbar(tqbar)
       );
initial
   begin
   tr=0;
   ts=0;
   te=0;
   #1 ts=1;
   #1 te=1;
   #1 ts=0;
   #1 tr=1;
   #1 te =0;
   #1 tr=1;
   
   #1 tr=0;
   ts=1;
   #1 tr=1;
   ts=0;
   #1 ts=1;
   tr=0;
   #1 te=1;
end
endmodule
