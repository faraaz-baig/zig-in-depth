const std = @import("std");

// std.mem.eql(u8, str1, str2) for comparing string slices
// std.mem.eql does a byte-by-byte comparison

pub fn control_mod() void {
    // if else statements
    // const method = "DOG";
    // // for a string it'll be case sensitive
    // if (std.mem.eql(u8, method, "GET") or std.mem.eql(u8, method, "HEAD")) {
    //     // handle a GET request
    //     std.debug.print("It was a {s} Request\n", .{method});
    // } else if (std.mem.eql(u8, method, "POST")) {
    //     // handle a POST request
    //     std.debug.print("It was a POST Request - {s}\n", .{method});
    // } else {
    //     std.debug.print("you are a fucking doochbag - {s}\n", .{method});
    // }
    // const power = 20;
    // const super = if (power > 9000) true else false;
    // std.debug.print("{}", .{super});

    //switch statements
    std.debug.print("{s}\n", .{aniversary_date(5)});
    std.debug.print("{s}\n", .{arrivalTimeDesc(3, false)});
}

//switch statements
fn aniversary_date(years_married: u16) []const u8 {
    switch (years_married) {
        1 => return "paper",
        2 => return "cotton",
        3 => return "leather",
        4 => return "flower",
        5 => return "wood",
        6 => return "sugar",
        else => return "no more gifts for you",
    }
}

fn arrivalTimeDesc(minutes: u16, is_late: bool) []const u8 {
    switch (minutes) {
        0 => return "arrived",
        1, 2 => return "soon",
        3...5 => return "no more than 5 minutes",
        else => {
            if (!is_late) {
                return "sorry, it'll be a while";
            }
            // todo, something is very wrong
            return "never";
        },
    }
}
