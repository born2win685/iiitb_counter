//include "iiitb_counter.v"
module test_bcd();
reg aRN,aCK;
wire [7:0] aQ;
wire [3:0] aQu,aQz;

bcd test_bcd(.RN(aRN),.CK(aCK),.Qu(aQu),.Qz(aQz),.Q(aQ));

initial begin

$dumpfile("iiitb_counter_tb.vcd");
$dumpvars(0, test_bcd);

aRN=1'b0;
aCK=1'b1;

#5 aRN=1'b1;
#300 $finish;
end

always #3 aCK = ~aCK;
endmodule


