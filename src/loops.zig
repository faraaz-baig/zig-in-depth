const std = @import("std");

pub fn loop_mod() void {
    // const result = contains([1, 2, 3, 4, 4, ], "r");
    // if (result) {
    //     std.debug.print("The string contains the character\n");
    // } else {
    //     std.debug.print("The string does not contain the character\n");
    // }

    // var i: usize = 0;
    // var escape_count: usize = 0;
    // const src = "hello\\world";
    // while (i < src.len) : (i += 1) {
    //     if (src[i] == '\\') {
    //         i += 1;
    //         escape_count += 1;
    //     }
    // }

    outer: for (1..10) |i| {
        for (i..10) |j| {
            if (i * j > (i + i + j + j)) continue :outer;
            std.debug.print("{d} + {d} >= {d} * {d}\n", .{ i + i, j + j, i, j });
        }
    }

    const personality_analysis = blk: {
        if (tea_vote > coffee_vote) break :blk "sane";
        if (tea_vote == coffee_vote) break :blk "whatever";
        if (tea_vote < coffee_vote) break :blk "dangerous";
    };
}

fn contains(haystack: []const u32, needle: u32) bool {
    for (haystack) |value| {
        if (needle == value) {
            return true;
        }
    }
    return false;
}

pub fn eql(comptime T: type, a: []const T, b: []const T) bool {
    // if they arent' the same length, the can't be equal
    if (a.len != b.len) return false;

    for (a, b) |a_elem, b_elem| {
        if (a_elem != b_elem) return false;
    }

    return true;
}

// for (0..10) |i| {
// 	std.debug.print("{d}\n", .{i});
// }

fn indexOf(haystack: []const u32, needle: u32) ?usize {
    for (haystack, 0..) |value, i| {
        if (needle == value) {
            return i;
        }
    }
    return null;
}
