const std = @import("std");

pub fn array_mod() void {
    // const a = [_]i32{ 1, 2, 3, 4, 5 };
    // const b = a[1..];

    // std.debug.print("b: {any}\n", .{@TypeOf(b)});

    // const a = [_]i32{ 1, 2, 3, 4, 5 };
    // var end: usize = 3;
    // end += 1;
    // const b = a[1..end];
    // std.debug.print("b: {d}\n", .{b});

    // const a = [_]i32{ 1, 2, 3, 4, 5 };
    // var end: usize = 4;
    // end += 1;
    // const b = a[1..end];
    // std.debug.print("{any}", .{@TypeOf(b)});

    var a = [_]i32{ 1, 2, 3, 4, 5 };
    var end: usize = 3;
    end += 1;
    const b = a[1..end];
    b[0] = 10;
    std.debug.print("b: {d}\n", .{b});
}
