module BK_Adder16Bit (
input [15:0] x,
input [15:0] y,
output [16:0] sumTotal
);
//??????????????????????????????????????|
//Propagate and Generate wires
wire [15:0] pro;
wire [15:0] gen;

//Addition handling wires
wire [16:0] add;

//Level_1 Implementation wires
wire [15:0] cProLvl1;
wire [15:0] cGenLvl1;

//Level_2 Implementation wires
wire cProLvl2C4;
wire cProLvl2C8;
wire cProLvl2C12;
wire cProLvl2C16;
wire cGenLvl2C4;
wire cGenLvl2C8;
wire cGenLvl2C12;
wire cGenLvl2C16;

//Level_3 Implementation wires
wire cProLvl3C8;
wire cProLvl3C16;
wire cGenLvl3C8;
wire cGenLvl3C16;

//Level_4 Implementation wires
wire cProLvl4C12;
wire cProLvl4C16;
wire cGenLvl4C12;
wire cGenLvl4C16;

//Level_5 Implementation wires
wire cProLvl5C6;
wire cProLvl5C10;
wire cProLvl5C14;
wire cGenLvl5C6;
wire cGenLvl5C10;
wire cGenLvl5C14;

//Level_6 Implementation wires
wire cProLvl6C3;
wire cProLvl6C5;
wire cProLvl6C7;
wire cProLvl6C9;
wire cProLvl6C11;
wire cProLvl6C13;
wire cProLvl6C15;
wire cGenLvl6C3;
wire cGenLvl6C5;
wire cGenLvl6C7;
wire cGenLvl6C9;
wire cGenLvl6C11;
wire cGenLvl6C13;
wire cGenLvl6C15;

//??????????????????????????????????????|
//Propagate Assignments
assign pro[0] = x[0] ^ y[0];
assign pro[1] = x[1] ^ y[1];
assign pro[2] = x[2] ^ y[2];
assign pro[3] = x[3] ^ y[3];
assign pro[4] = x[4] ^ y[4];
assign pro[5] = x[5] ^ y[5];
assign pro[6] = x[6] ^ y[6];
assign pro[7] = x[7] ^ y[7];
assign pro[8] = x[8] ^ y[8];
assign pro[9] = x[9] ^ y[9];
assign pro[10] = x[10] ^ y[10];
assign pro[11] = x[11] ^ y[11];
assign pro[12] = x[12] ^ y[12];
assign pro[13] = x[13] ^ y[13];
assign pro[14] = x[14] ^ y[14];
assign pro[15] = x[15] ^ y[15];

//Generate Assignments
assign gen[0] = x[0] & y[0];
assign gen[1] = x[1] & y[1];
assign gen[2] = x[2] & y[2];
assign gen[3] = x[3] & y[3];
assign gen[4] = x[4] & y[4];
assign gen[5] = x[5] & y[5];
assign gen[6] = x[6] & y[6];
assign gen[7] = x[7] & y[7];
assign gen[8] = x[8] & y[8];
assign gen[9] = x[9] & y[9];
assign gen[10] = x[10] & y[10];
assign gen[11] = x[11] & y[11];
assign gen[12] = x[12] & y[12];
assign gen[13] = x[13] & y[13];
assign gen[14] = x[14] & y[14];
assign gen[15] = x[15] & y[15];

//????????????????????????|
//Level_1 Implementation for Propagate and Generate
//For C1
assign cProLvl1[0] = pro[0];
assign cGenLvl1[0] = gen[0];

//For C2
assign cProLvl1[1] = pro[1] & pro[0];
assign cGenLvl1[1] = (pro[1] & gen[0]) | gen[1];

//For C3
assign cProLvl1[2] = pro[2];
assign cGenLvl1[2] = gen[2];

//For C4
assign cProLvl1[3] = pro[3] & pro[2];
assign cGenLvl1[3] = (pro[3] & gen[2]) | gen[3];

//For C5
assign cProLvl1[4] = pro[4];
assign cGenLvl1[4] = gen[4];

//For C6
assign cProLvl1[5] = pro[5] & pro[4];
assign cGenLvl1[5] = (pro[5] & gen[4]) | gen[5];

//For C7
assign cProLvl1[6] = pro[6];
assign cGenLvl1[6] = gen[6];

//For C8
assign cProLvl1[7] = pro[7] & pro[6];
assign cGenLvl1[7] = (pro[7] & gen[6]) | gen[7];

//For C9
assign cProLvl1[8] = pro[8];
assign cGenLvl1[8] = gen[8];

//For C10
assign cProLvl1[9] = pro[9] & pro[8];
assign cGenLvl1[9] = (pro[9] & gen[8]) | gen[9];

//For C11
assign cProLvl1[10] = pro[10];
assign cGenLvl1[10] = gen[10];

//For C12
assign cProLvl1[11] = pro[11] & pro[10];
assign cGenLvl1[11] = (pro[11] & gen[10]) | gen[11];

//For C13
assign cProLvl1[12] = pro[12];
assign cGenLvl1[12] = gen[12];

//For C14
assign cProLvl1[13] = pro[13] & pro[12];
assign cGenLvl1[13] = (pro[13] & gen[12]) | gen[13];

//For C15
assign cProLvl1[14] = pro[14];
assign cGenLvl1[14] = gen[14];

//For C16
assign cProLvl1[15] = pro[15] & pro[14];
assign cGenLvl1[15] = (pro[15] & gen[14]) | gen[15];

//????????????????????????|
//Level_2 Implementation for Propagate and Generate
//For C4
assign cProLvl2C4 = cProLvl1[3] & cProLvl1[1];
assign cGenLvl2C4 = (cProLvl1[3] & cGenLvl1[1]) | cGenLvl1[3];

//For C8
assign cProLvl2C8 = cProLvl1[7] & cProLvl1[5];
assign cGenLvl2C8 = (cProLvl1[7] & cGenLvl1[5]) | cGenLvl1[7];

//For C12
assign cProLvl2C12 = cProLvl1[11] & cProLvl1[9];
assign cGenLvl2C12 = (cProLvl1[11] & cGenLvl1[9]) | cGenLvl1[11];

//For C16
assign cProLvl2C16 = cProLvl1[15] & cProLvl1[13];
assign cGenLvl2C16 = (cProLvl1[15] & cGenLvl1[13]) | cGenLvl1[15];

//????????????????????????|
//Level_3 Implementation for Propagate and Generate
//For C8
assign cProLvl3C8 = cProLvl2C8 & cProLvl2C4;
assign cGenLvl3C8 = (cProLvl2C8 & cGenLvl2C4) | cGenLvl2C8;

//For C16
assign cProLvl3C16 = cProLvl2C16 & cProLvl2C12;
assign cGenLvl3C16 = (cProLvl2C16 & cGenLvl2C12) | cGenLvl2C16;

//????????????????????????|
//Level_4 Implementation for Propagate and Generate
//For C12
assign cProLvl4C12 = cProLvl2C12 & cProLvl3C8;
assign cGenLvl4C12 = (cProLvl2C12 & cGenLvl3C8) | cGenLvl2C12;

//For C16
assign cProLvl4C16 = cProLvl3C16 & cProLvl3C8;
assign cGenLvl4C16 = (cProLvl3C16 & cGenLvl3C8) | cGenLvl3C16;

//????????????????????????|
//Level_5 Implementation for Propagate and Generate
//For C6
assign cProLvl5C6 = cProLvl1[5] & cProLvl2C4;
assign cGenLvl5C6 = (cProLvl1[5] & cGenLvl2C4) | cGenLvl1[5];

//For C10
assign cProLvl5C10 = cProLvl1[9] & cProLvl3C8;
assign cGenLvl5C10 = (cProLvl1[9] & cGenLvl3C8) | cGenLvl1[9];

//For C14
assign cProLvl5C14 = cProLvl1[13] & cProLvl4C12;
assign cGenLvl5C14 = (cProLvl1[13] & cGenLvl4C12) | cGenLvl1[13];

//????????????????????????|
//Level_6 Implementation for Propagate and Generate
//For C3
assign cProLvl6C3 = cProLvl1[2] & cProLvl1[1];
assign cGenLvl6C3 = (cProLvl1[2] & cGenLvl1[1]) | cGenLvl1[2];

//For C5
assign cProLvl6C5 = cProLvl1[4] & cProLvl2C4;
assign cGenLvl6C5 = (cProLvl1[4] & cGenLvl2C4) | cGenLvl1[4];

//For C7
assign cProLvl6C7 = cProLvl1[6] & cProLvl5C6;
assign cGenLvl6C7 = (cProLvl1[6] & cGenLvl5C6) | cGenLvl1[6];

//For C9
assign cProLvl6C9 = cProLvl1[8] & cProLvl3C8;
assign cGenLvl6C9 = (cProLvl1[8] & cGenLvl3C8) | cGenLvl1[8];

//For C11
assign cProLvl6C11 = cProLvl1[10] & cProLvl5C10;
assign cGenLvl6C11 = (cProLvl1[10] & cGenLvl5C10) | cGenLvl1[10];

//For C13
assign cProLvl6C13 = cProLvl1[12] & cProLvl4C12;
assign cGenLvl6C13 = (cProLvl1[12] & cGenLvl4C12) | cGenLvl1[12];

//For C15
assign cProLvl6C15 = cProLvl1[14] & cProLvl5C14;
assign cGenLvl6C15 = (cProLvl1[14] & cGenLvl5C14) | cGenLvl1[14];

//??????????????????????????????????????|
//Handling Addition Process
assign add[0] = pro[0];
assign add[1] = pro[1] ^ cGenLvl1[0];
assign add[2] = pro[2] ^ cGenLvl1[1];
assign add[3] = pro[3] ^ cGenLvl6C3;
assign add[4] = pro[4] ^ cGenLvl2C4;
assign add[5] = pro[5] ^ cGenLvl6C5;
assign add[6] = pro[6] ^ cGenLvl5C6;
assign add[7] = pro[7] ^ cGenLvl6C7;
assign add[8] = pro[8] ^ cGenLvl3C8;
assign add[9] = pro[9] ^ cGenLvl6C9;
assign add[10] = pro[10] ^ cGenLvl5C10;
assign add[11] = pro[11] ^ cGenLvl6C11;
assign add[12] = pro[12] ^ cGenLvl4C12;
assign add[13] = pro[13] ^ cGenLvl6C13;
assign add[14] = pro[14] ^ cGenLvl5C14;
assign add[15] = pro[15] ^ cGenLvl6C15;

//Carry Bit 
assign add[16] = cGenLvl4C16;


//Output (Summation Total)
assign sumTotal = {add[16:0]};

endmodule

