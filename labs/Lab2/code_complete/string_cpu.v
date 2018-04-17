0: begin print_char <= 67; print_counter <= print_counter + 1; print_en <= 1; end
1: begin print_char <= 80; print_counter <= print_counter + 1; print_en <= 1; end
2: begin print_char <= 85; print_counter <= print_counter + 1; print_en <= 1; end
3: begin print_char <= 32; print_counter <= print_counter + 1; print_en <= 1; end
4: begin print_char <= 77; print_counter <= print_counter + 1; print_en <= 1; end
5: begin print_char <= 79; print_counter <= print_counter + 1; print_en <= 1; end
6: begin print_char <= 68; print_counter <= print_counter + 1; print_en <= 1; end
7: begin print_char <= 69; print_counter <= print_counter + 1; print_en <= 1; end
8: begin print_char <= 13; print_counter <= print_counter + 1; print_en <= 1; end
default: begin print_char <= 0; print_en <= 0; print_done <= 1; end
