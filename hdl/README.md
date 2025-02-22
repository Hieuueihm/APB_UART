# Coding Convetion
This file describes how to set name to the modules, instance, macros...
## Naming
| Construct                                                             | Style                | Example                           |
| --------------------------------------------------------------------- | -------------------- |
| Declarations (module, class, package, interface)                      | `lower_snake_case`   | d_ff                              |
| Instance names                                                        | `lower_snake_case`   | add_sub_instance                  |
| Signals (nets and ports)                                              | `lower_snake_case`   | wire   out_from_mux               |
| Variables, functions, tasks                                           | `lower_snake_case`   | task read_bmp                     |
| Named code blocks                                                     | `lower_snake_case`   | : gen_sum_block                   |
| \`define macros                                                       | `ALL_CAPS`           | BAUDRATE                          |
| Tunable parameters for parameterized modules, classes, and interfaces | `UpperCamelCase`     | Width                             |
| Enumeration types                                                     | `lower_snake_case_e` | enum {Red, Blue, Green} led_rgb_e |
| Other typedef types                                                   | `lower_snake_case_t` | object_t                          |
| Enumerated value names                                                | `UpperCamelCase`     | Red, Green, Blue                  |
