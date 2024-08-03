module seqdetector(
    output reg found,
    input x,res,clk
);
reg [2:0] state;


always @(posedge x or posedge res)
    begin
    if(res) begin
        state<=3b'000;
        found<=0;
    end
    else begin
        case(state)
        3b'000:begin
        if(x) begin
            state<=3b'001;
            found<=0;
        end
        else begin
            state<=3b'000;
            found<=0;
        end
        end
        3b'001:begin
            if(x) begin
                state<=3b'001;
                found<=0;
            end
            else begin
                state<=3b'010;
                found<=0;
            end
        end
        3b'010:begin
            if(x) begin
                state<=3b'011;
                found<=0;
            end
            else begin
                state<=3b'000;
                found<=0;
            end
        end
        3b'011:begin
            if(x) begin
                state<=3b'100;
                found<=0;
            end
            else begin
                state<=3b'010;
                found<=0;
            end
        end
        3b'100:begin
            if(x) begin
                state<=3b'001;
                found<=0;
            end
            else begin
                state<=3b'010;
                found<=1;
            end
        end
        default : begin
            state<=3b'000;
            found<=0;
        end
        endcase
    end
    end
endmodule