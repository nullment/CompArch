input [7:0] minuend;
input [7:0] subtrahend;
output [7:0] difference;

wire inv_subtrahend_7;
wire inv_subtrahend_6;
wire inv_subtrahend_5;
wire inv_subtrahend_4;
wire inv_subtrahend_3;
wire inv_subtrahend_2;
wire inv_subtrahend_1;
wire inv_subtrahend_0;

wire negator_carry_0;
wire negator_carry_1;
wire negator_carry_2;
wire negator_carry_3;
wire negator_carry_4;
wire negator_carry_5;
wire negator_carry_6;
wire negator_carry_7;

wire neg_subtrahend_7;
wire neg_subtrahend_6;
wire neg_subtrahend_5;
wire neg_subtrahend_4;
wire neg_subtrahend_3;
wire neg_subtrahend_2;
wire neg_subtrahend_1;
wire neg_subtrahend_0;

wire difference_7;
wire difference_6;
wire difference_5;
wire difference_4;
wire difference_3;
wire difference_2;
wire difference_1;
wire difference_0;

wire diffcarry_0;
wire diffcarry_1;
wire diffcarry_2;
wire diffcarry_3;
wire diffcarry_4;
wire diffcarry_5;
wire diffcarry_6;
wire diffcarry_7;

wire diffcarry_10;
wire diffcarry_21;
wire diffcarry_32;
wire diffcarry_43;
wire diffcarry_54;
wire diffcarry_65;
wire diffcarry_76;



assign inv_subtrahend_7 = ~ subtrahend[7];
assign inv_subtrahend_6 = ~ subtrahend[6];
assign inv_subtrahend_5 = ~ subtrahend[5];
assign inv_subtrahend_4 = ~ subtrahend[4];
assign inv_subtrahend_3 = ~ subtrahend[3];
assign inv_subtrahend_2 = ~ subtrahend[2];
assign inv_subtrahend_1 = ~ subtrahend[1];
assign inv_subtrahend_0 = ~ subtrahend[0];

assign negator_carry_0 = inv_subtrahend_0;
assign negator_carry_1 = negator_carry_0 & inv_subtrahend_1;
assign negator_carry_2 = negator_carry_1 & inv_subtrahend_2;
assign negator_carry_3 = negator_carry_2 & inv_subtrahend_3;
assign negator_carry_4 = negator_carry_3 & inv_subtrahend_4;
assign negator_carry_5 = negator_carry_4 & inv_subtrahend_5;
assign negator_carry_6 = negator_carry_5 & inv_subtrahend_6;
assign negator_carry_7 = negator_carry_6 & inv_subtrahend_7;

assign neg_subtrahend_0 = ~ inv_subtrahend_0;
assign neg_subtrahend_1 = negator_carry_0 ^ inv_subtrahend_1;
assign neg_subtrahend_2 = negator_carry_1 ^ inv_subtrahend_2;
assign neg_subtrahend_3 = negator_carry_2 ^ inv_subtrahend_3;
assign neg_subtrahend_4 = negator_carry_3 ^ inv_subtrahend_4;
assign neg_subtrahend_5 = negator_carry_4 ^ inv_subtrahend_5;
assign neg_subtrahend_6 = negator_carry_5 ^ inv_subtrahend_6;
assign neg_subtrahend_7 = negator_carry_6 ^ inv_subtrahend_7;

assign difference_0 = minuend[0] ^ neg_subtrahend_0;
assign difference_1 = minuend[1] ^ neg_subtrahend_1;
assign difference_2 = minuend[2] ^ neg_subtrahend_2;
assign difference_3 = minuend[3] ^ neg_subtrahend_3;
assign difference_4 = minuend[4] ^ neg_subtrahend_4;
assign difference_5 = minuend[5] ^ neg_subtrahend_5;
assign difference_6 = minuend[6] ^ neg_subtrahend_6;
assign difference_7 = minuend[7] ^ neg_subtrahend_7;

assign diffcarry_0 = minuend[0] & neg_subtrahend_0;
assign diffcarry_1 = minuend[1] & neg_subtrahend_1;
assign diffcarry_2 = minuend[2] & neg_subtrahend_2;
assign diffcarry_3 = minuend[3] & neg_subtrahend_3;
assign diffcarry_4 = minuend[4] & neg_subtrahend_4;
assign diffcarry_5 = minuend[5] & neg_subtrahend_5;
assign diffcarry_6 = minuend[6] & neg_subtrahend_6;
assign diffcarry_7 = minuend[7] & neg_subtrahend_7;

assign diffcarry_10 = difference_1 & diffcarry_0;
assign diffcarry_1 = diffcarry_1 | diffcarry_10;

assign diffcarry_21 = difference_2 & diffcarry_1;
assign diffcarry_2 = diffcarry_2 | diffcarry_21;

assign diffcarry_32 = difference_3 & diffcarry_2;
assign diffcarry_3 = diffcarry_3 | diffcarry_32;

assign diffcarry_43 = difference_4 & diffcarry_3;
assign diffcarry_4 = diffcarry_4 | diffcarry_43;

assign diffcarry_54 = difference_5 & diffcarry_4;
assign diffcarry_5 = diffcarry_5 | diffcarry_54;

assign diffcarry_65 = difference_6 & diffcarry_5;
assign diffcarry_6 = diffcarry_6 | diffcarry_65;

assign diffcarry_76 = difference_7 & diffcarry_6;
assign diffcarry_7 = diffcarry_7 | diffcarry_76;

assign difference[0] = difference_0;
assign difference[1] = difference_1 ^ diffcarry_0;
assign difference[2] = difference_2 ^ diffcarry_1;
assign difference[3] = difference_3 ^ diffcarry_2;
assign difference[4] = difference_4 ^ diffcarry_3;
assign difference[5] = difference_5 ^ diffcarry_4;
assign difference[6] = difference_6 ^ diffcarry_5;
assign difference[7] = difference_7 ^ diffcarry_6;