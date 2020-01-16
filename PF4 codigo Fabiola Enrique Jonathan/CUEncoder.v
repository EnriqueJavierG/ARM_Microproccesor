module CUEncoder(input [4:0] MLR,input [9:0] Ds, output reg FR_ld, output reg RF_ld, output reg IR_ld, output reg MAR_ld,
                 output reg MDR_ld, output reg R_W, output reg MOV, output reg MA1, output reg MA0, 
                 output reg MB1, output reg MB0, output reg MC1, output reg MC0, output reg MD, output reg ME,
                 output reg OP4, output reg OP3, output reg OP2, output reg OP1, output reg OP0, output reg type,output reg [4:0] MLR_to_Reg);

            always @(Ds) begin
            type <= 1'b0;
            case (Ds)
			10'd0:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd1:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 1;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd2:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 1;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 1;
				type <= 1'b1;
			end
			10'd3:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 1;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
                type <= 1'b1;
			end
			10'd4:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
                type <= 1'b0;
			end
			10'd5:
			begin
				FR_ld <= 1;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd6:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd7:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd8:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd9:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd10:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd11:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd12:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd13:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd14:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd15:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd16:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd17:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd18:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd19:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd20:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd21:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd22:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd23:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd24:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd25:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd26:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd27:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd28:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd29:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd30:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd31:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd32:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd33:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd34:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd35:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd36:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd37:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd38:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd39:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd40:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd41:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd42:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd43:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd44:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd45:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd46:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd47:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd48:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd49:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd50:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd51:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd52:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd53:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd54:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd55:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd56:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd57:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd58:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd59:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd60:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd61:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd62:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd63:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd64:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd65:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd66:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd67:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd68:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd69:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd70:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd71:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd72:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd73:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd74:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd75:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd76:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd77:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd78:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd79:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd80:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd81:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd82:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd83:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd84:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd85:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd86:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd87:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd88:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd89:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd90:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd91:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd92:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd93:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd94:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd95:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd96:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd97:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd98:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd99:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd100:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd101:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd102:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd103:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd104:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd105:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd106:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd107:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd108:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd109:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd110:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd111:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd112:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd113:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd114:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd115:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd116:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd117:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd118:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd119:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd120:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd121:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd122:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd123:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd124:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd125:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd126:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd127:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd128:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd129:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd130:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd131:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd132:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd133:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd134:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd135:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd136:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd137:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd138:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 1;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd139:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd140:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd141:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd142:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd143:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd144:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd145:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd146:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd147:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd148:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd149:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd150:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd151:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd152:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd153:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd154:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 1;
				// MA0 <= 1;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				// OP4 <= 1;
				// OP3 <= 0;
				// OP2 <= 0;
				// OP1 <= 1;
				// OP0 <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd155: // branch and link
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 1;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
				MLR_to_Reg <= 5'b01110;
			end
			10'd156:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 1;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd157:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd158:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd159:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd160:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd161:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd162:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd163:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd164:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd165:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd166:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd167:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd168:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd169:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd170:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd171:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd172:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd173:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd174:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd175:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd176:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd177:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1; // lo cambie
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd178:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 1;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd179:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd180:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd181:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd182:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd183:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd184:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd185:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd186:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd187:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd188:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd189:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd190:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd191:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd192:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd193:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd194:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd195:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd196:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd197:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd198:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd199:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd200:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd201:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd202:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd203:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd204:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd205:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd206:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd207:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd208:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd209:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd210:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd211:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd212:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd213:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd214:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd215:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd216:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd217:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd218:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd219:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd220:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd221:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd222:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd223:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd224:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd225:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd226:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd227:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd228:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd229:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd230:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd231:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd232:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd233:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd234:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd235:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd236:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd237:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd238:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd239:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd240:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd241:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd242:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd243:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd244:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd245:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd246:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd247:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd248:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd249:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd250:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd251:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd252:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd253:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd254:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd255:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd256:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd257:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd258:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd259:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd260:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd261:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd262:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd263:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd264:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd265:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd266:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd267:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd268:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd269:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd270:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd271:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd272:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd273:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd274:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd275:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd276:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd277:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd278:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd279:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd280:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd281:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd282:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd283:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd284:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd285:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd286:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd287:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd288:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd289:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd290:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd291:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd292:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd293:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd294:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd295:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd296:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd297:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd298:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd299:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd300:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd301:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd302:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd303:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd304:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd305:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd306:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd307:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd308:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd309:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd310:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd311:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd312:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd313:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd314:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd315:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd316:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd317:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd318:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd319:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd320:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd321:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd322:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd323:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd324:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd325:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd326:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd327:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd328:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd329:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd330:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd331:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd332:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd333:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd334:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd335:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd336:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd337:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd338:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd339:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd340:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd341:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd342:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd343:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd344:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd345:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd346:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd347:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd348:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd349:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd350:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd351:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd352:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd353:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd354:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd355:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd356:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd357:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd358:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd359:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd360:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd361:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd362:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd363:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd364:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd365:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd366:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd367:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd368:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd369:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd370:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd371:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd372:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd373:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd374:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd375:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd376:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd377:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd378:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd379:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd380:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd381:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd382:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd383:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd384:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd385:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd386:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd387:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd388:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd389:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd390:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd391:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd392:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd393:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd394:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd395:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd396:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd397:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd398:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd399:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd400:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd401:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd402:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd403:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd404:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd405:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd406:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd407:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd408:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd409:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd410:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd411:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd412:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd413:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd414:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd415:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd416:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd417:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd418:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd419:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd420:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd421:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd422:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd423:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd424:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd425:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd426:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd427:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd428:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd429:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd430:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd431:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd432:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd433:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd434:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd435:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd436:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd437:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd438:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd439:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd440:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd441:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd442:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd443:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd444:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd445:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd446:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd447:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd448:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd449:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd450:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd451:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd452:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd453:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd454:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd455:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd456:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd457:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd458:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd459:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd460:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd461:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd462:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd463:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd464:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd465:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd466:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd467:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd468:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd469:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd470:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd471:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd472:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd473:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd474:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd475:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd476:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd477:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd478:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd479:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd480:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd481:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd482:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd483:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd484:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd485:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd486:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd487:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd488:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd489:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd490:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd491:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd492:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd493:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd494:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd495:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd496:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd497:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd498:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd499:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd500:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd501:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd502:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd503:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd504:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd505:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd506:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd507:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd508:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd509:
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 1;
				OP0 <= 0;
			end
			10'd510:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd511:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd512:
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd513:// multiple load
			begin // pasar el mar
				 FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
				MLR_to_Reg <= MLR;
			end
			10'd514:
			begin // cambiar rn + 4
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 1;
				MLR_to_Reg <= MLR;
			end
			10'd515:
			begin // Leer
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd516:
			begin //esperar y guardar MDR
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 1;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 1;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
				
			end
			10'd517:// ultimo paso del load multiple
			begin // poner MDR en R
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 1;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 1;
				MD <= 1;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 1;
				OP2 <= 1;
				OP1 <= 0;
				OP0 <= 1;
			end
			10'd518: // store multiple 
			begin// pasar mar
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 1;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
				MLR_to_Reg <= MLR;
			end
			10'd519://Rn + 4
			begin
				FR_ld <= 0;
				RF_ld <= 1;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 1;
				MC0 <= 0;
				MD <= 1;
				ME <= 0;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 1;
				MLR_to_Reg <= MLR;
			end
			10'd520:// pasar Rd a mdr
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 0;
				MA1 <= 1;
				MA0 <= 1;
				MB1 <= 0;
				MB0 <= 1;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 1;
				ME <= 1;
				OP4 <= 1;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd521://Escribir en RAM
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 1;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end
			10'd522:// esperar por MOC
			begin
				FR_ld <= 0;
				RF_ld <= 0;
				IR_ld <= 0;
				MAR_ld <= 0;
				MDR_ld <= 0;
				R_W <= 0;
				MOV <= 1;
				MA1 <= 0;
				MA0 <= 0;
				MB1 <= 0;
				MB0 <= 0;
				MC1 <= 0;
				MC0 <= 0;
				MD <= 0;
				ME <= 0;
				OP4 <= 0;
				OP3 <= 0;
				OP2 <= 0;
				OP1 <= 0;
				OP0 <= 0;
			end


                    endcase
                end     
endmodule
