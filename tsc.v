module tsc (
    output reg [2:0] nl,
    output reg [2:0] sl,
    output reg [2:0] el,
    output reg [2:0] wl,
    input clk,
    input rst
);

reg [2:0] state;
reg [2:0] count;

parameter [2:0] north = 3'b000;
parameter [2:0] northy = 3'b001;
parameter [2:0] south = 3'b010;
parameter [2:0] southy = 3'b011;
parameter [2:0] east = 3'b100;
parameter [2:0] easty = 3'b101;
parameter [2:0] west = 3'b110;
parameter [2:0] westy = 3'b111;

// State transition logic
always @(posedge clk, posedge rst) begin
    if (rst) begin
        state = north;
        count = 3'b000;
    end
    else begin
        case (state)
            north: begin
                if (count == 3'b111) begin
                    count = 3'b000;
                    state = northy;
                end
                else begin
                    count = count + 3'b001;
                    state = north;
                end
            end
            // Add other cases similarly
        endcase
    end
end

// Output assignment based on state
always @(state) begin
    case (state)
        north: begin
            nl = 3'b001;
            // Assign values for other directions similarly
        end
        // Add other cases similarly
    endcase
end

endmodule
