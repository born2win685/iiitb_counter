module bcd(RN,CK,Qz,Qu,Q);
input RN,CK;
output [3:0] Qz;
output [3:0] Qu;
output [7:0] Q;
reg  [3:0] Qz1,Qu1;

always @ (posedge CK or negedge RN)
begin
if(!RN )   begin
           Qz1=4'b0;
           Qu1=4'b0;
           end
else
begin
    if ({Qz1,Qu1}==8'b10011001) 
    begin
      Qz1=4'b0;
      Qu1=4'b0;
    end
    else if  (Qu1==4'b1001) begin
      Qu1=4'b0;
      Qz1= Qz1 +1;

      if(Qz1==4'b1001)
          Qz1=4'b0;
      end
    else
      Qu1=Qu1+1;
end
end

assign Q={Qz1,Qu1};
assign Qu=Qu1;
assign Qz=Qz1;

endmodule


// module up_counter    (
// out     ,  // Output of the counter
// enable  ,  // enable for counter
// clk     ,  // clock Input
// reset      // reset Input
// );
// //----------Output Ports--------------
//     output [7:0] out;
// //------------Input Ports--------------
//      input enable, clk, reset;
// //------------Internal Variables--------
//     reg [7:0] out;
// //-------------Code Starts Here-------
// always @(posedge clk)
// if (reset) begin
//   out <= 8'b0 ;
// end else if (enable) begin
//   out <= out + 1;
// end


// endmodule 