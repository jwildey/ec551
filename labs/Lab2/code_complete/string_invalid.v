0: begin print_char <= 73; print_counter <= print_counter + 1; print_en <= 1; end
1: begin print_char <= 78; print_counter <= print_counter + 1; print_en <= 1; end
2: begin print_char <= 86; print_counter <= print_counter + 1; print_en <= 1; end
3: begin print_char <= 65; print_counter <= print_counter + 1; print_en <= 1; end
4: begin print_char <= 76; print_counter <= print_counter + 1; print_en <= 1; end
5: begin print_char <= 73; print_counter <= print_counter + 1; print_en <= 1; end
6: begin print_char <= 68; print_counter <= print_counter + 1; print_en <= 1; end
7: begin print_char <= 32; print_counter <= print_counter + 1; print_en <= 1; end
8: begin print_char <= 67; print_counter <= print_counter + 1; print_en <= 1; end
9: begin print_char <= 79; print_counter <= print_counter + 1; print_en <= 1; end
10: begin print_char <= 77; print_counter <= print_counter + 1; print_en <= 1; end
11: begin print_char <= 77; print_counter <= print_counter + 1; print_en <= 1; end
12: begin print_char <= 65; print_counter <= print_counter + 1; print_en <= 1; end
13: begin print_char <= 78; print_counter <= print_counter + 1; print_en <= 1; end
14: begin print_char <= 68; print_counter <= print_counter + 1; print_en <= 1; end
15: begin print_char <= 13; print_counter <= print_counter + 1; print_en <= 1; end
default: begin print_char <= 0; print_en <= 0; print_done <= 1; end
