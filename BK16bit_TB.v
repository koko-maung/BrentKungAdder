module BK_Adder16Bit_TB;
reg [15:0] x;
reg [15:0] y;
wire [16:0] sumTotal;
integer a,b;

BK_Adder16Bit Unit01 (.x(x), .y(y), .sumTotal(sumTotal));

initial
begin
$monitor("x = %b, y = %b, sumTotal = %b", x,y, sumTotal);

for (a = 0; a<= 5; a = a+1)
begin
case(a)
0: x = 16'h0;
1: x = 16'hF;
2: x = 16'h0001;
3: x = 16'h3526;
4: x = 16'h1235;
5: x = 16'h6346;
endcase

for (b = 0; b<= 5; b = b+1)
begin
case(b)
0: y = 16'h0;
1: y = 16'hF;
2: y = 16'h0001;
3: y = 16'h6677;
4: y = 16'h3466;
5: y = 16'h2356;
endcase

#10;

end
end
end

endmodule

