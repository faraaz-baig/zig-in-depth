pub fn funtions_mod() void {
    const User = @import("./models/user.zig").User;
    const user = User.init("Goku", 9000);
    const user_1 = User.init("Faraaz", 10000);

    user.diagnose();
    user_1.diagnose();
}
