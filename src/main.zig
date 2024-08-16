const std = @import("std");
const user = @import("./models/user.zig").User;
const MAX_POWER = @import("./models/user.zig").MAX_POWER;

pub fn main() void {
    std.debug.print("Username : {} and MAX_POWER : {}!\n", .{ user.name, MAX_POWER });
}
