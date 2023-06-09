// Autogenerated: 'src/ExtractionOCaml/dettman_multiplication' --lang Zig --internal-static --public-function-case camelCase --private-function-case camelCase --public-type-case UpperCamelCase --private-type-case UpperCamelCase --no-prefix-fiat --package-name secp256k1_dettman '' 32 10 22 6 '2^256 - 4294968273' mul square
// curve description (via package name): secp256k1_dettman
// machine_wordsize = 32 (from "32")
// requested operations: mul, square
// n = 10 (from "10")
// last_limb_width = 22 (from "22")
// last_reduction = 6 (from "6")
// s-c = 2^256 - [(1, 4294968273)] (from "2^256 - 4294968273")
// inbounds_multiplier: None (from "")
//
// Computed values:
//
//

const std = @import("std");
const mode = @import("builtin").mode; // Checked arithmetic is disabled in non-debug modes to avoid side channels

inline fn cast(comptime DestType: type, target: anytype) DestType {
    @setEvalBranchQuota(10000);
    if (@typeInfo(@TypeOf(target)) == .Int) {
        const dest = @typeInfo(DestType).Int;
        const source = @typeInfo(@TypeOf(target)).Int;
        if (dest.bits < source.bits) {
            return @bitCast(DestType, @truncate(std.meta.Int(source.signedness, dest.bits), target));
        } else {
            return @bitCast(DestType, @as(std.meta.Int(source.signedness, dest.bits), target));
        }
    }
    return @as(DestType, target);
}

/// The function mul multiplies two field elements.
///
/// Postconditions:
///   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg2) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
///
/// Input Bounds:
///   arg1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
///   arg2: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
/// Output Bounds:
///   out1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x5fffff]]
pub fn mul(out1: *[10]u32, arg1: [10]u32, arg2: [10]u32) void {
    @setRuntimeSafety(mode == .Debug);

    const x1 = ((cast(u64, (arg1[8])) * cast(u64, (arg2[9]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[8]))));
    const x2 = cast(u32, (x1 >> 26));
    const x3 = cast(u32, (x1 & cast(u64, 0x3ffffff)));
    const x4 = (((cast(u64, (arg1[0])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[7])) * cast(u64, (arg2[0])))))))))) + (cast(u64, x3) * cast(u64, 0x3d10)));
    const x5 = cast(u32, (x4 >> 26));
    const x6 = cast(u32, (x4 & cast(u64, 0x3ffffff)));
    const x7 = (cast(u64, x2) + (cast(u64, (arg1[9])) * cast(u64, (arg2[9]))));
    const x8 = cast(u32, (x7 >> 32));
    const x9 = cast(u32, (x7 & cast(u64, 0xffffffff)));
    const x10 = ((cast(u64, x5) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[8])) * cast(u64, (arg2[0]))))))))))) + (cast(u64, x3) << 10))) + (cast(u64, x9) * cast(u64, 0x3d10)));
    const x11 = cast(u32, (x10 >> 26));
    const x12 = cast(u32, (x10 & cast(u64, 0x3ffffff)));
    const x13 = ((cast(u64, x11) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[0])))))))))))) + (cast(u64, x9) << 10))) + (cast(u64, x8) * cast(u64, 0xf4400)));
    const x14 = cast(u32, (x13 >> 26));
    const x15 = cast(u32, (x13 & cast(u64, 0x3ffffff)));
    const x16 = (x15 >> 22);
    const x17 = (x15 & 0x3fffff);
    const x18 = (cast(u64, x14) + (((cast(u64, (arg1[1])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[2]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[1]))))))))))) + cast(u64, (x8 << 16))));
    const x19 = cast(u32, (x18 >> 26));
    const x20 = cast(u32, (x18 & cast(u64, 0x3ffffff)));
    const x21 = ((cast(u64, (arg1[0])) * cast(u64, (arg2[0]))) + (cast(u64, (x16 + (x20 << 4))) * cast(u64, 0x3d1)));
    const x22 = cast(u32, (x21 >> 26));
    const x23 = cast(u32, (x21 & cast(u64, 0x3ffffff)));
    const x24 = (cast(u64, x19) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[3]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[2])))))))))));
    const x25 = cast(u32, (x24 >> 26));
    const x26 = cast(u32, (x24 & cast(u64, 0x3ffffff)));
    const x27 = ((cast(u64, x22) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[1])) * cast(u64, (arg2[0])))) + (cast(u64, (x16 + (x20 << 4))) << 6))) + (cast(u64, x26) * cast(u64, 0x3d10)));
    const x28 = cast(u32, (x27 >> 26));
    const x29 = cast(u32, (x27 & cast(u64, 0x3ffffff)));
    const x30 = (cast(u64, x25) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[4]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[3]))))))))));
    const x31 = cast(u32, (x30 >> 26));
    const x32 = cast(u32, (x30 & cast(u64, 0x3ffffff)));
    const x33 = ((cast(u64, x28) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[2])) * cast(u64, (arg2[0]))))) + (cast(u64, x26) << 10))) + (cast(u64, x32) * cast(u64, 0x3d10)));
    const x34 = cast(u32, (x33 >> 26));
    const x35 = cast(u32, (x33 & cast(u64, 0x3ffffff)));
    const x36 = (cast(u64, x31) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[5]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[4])))))))));
    const x37 = cast(u32, (x36 >> 26));
    const x38 = cast(u32, (x36 & cast(u64, 0x3ffffff)));
    const x39 = ((cast(u64, x34) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[3])) * cast(u64, (arg2[0])))))) + (cast(u64, x32) << 10))) + (cast(u64, x38) * cast(u64, 0x3d10)));
    const x40 = cast(u32, (x39 >> 26));
    const x41 = cast(u32, (x39 & cast(u64, 0x3ffffff)));
    const x42 = (cast(u64, x37) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[7]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[6]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[5]))))))));
    const x43 = cast(u32, (x42 >> 26));
    const x44 = cast(u32, (x42 & cast(u64, 0x3ffffff)));
    const x45 = ((cast(u64, x40) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[4])) * cast(u64, (arg2[0]))))))) + (cast(u64, x38) << 10))) + (cast(u64, x44) * cast(u64, 0x3d10)));
    const x46 = cast(u32, (x45 >> 26));
    const x47 = cast(u32, (x45 & cast(u64, 0x3ffffff)));
    const x48 = (cast(u64, x43) + ((cast(u64, (arg1[6])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[8]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[7]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[6])))))));
    const x49 = cast(u32, (x48 >> 26));
    const x50 = cast(u32, (x48 & cast(u64, 0x3ffffff)));
    const x51 = ((cast(u64, x46) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[5])) * cast(u64, (arg2[0])))))))) + (cast(u64, x44) << 10))) + (cast(u64, x50) * cast(u64, 0x3d10)));
    const x52 = cast(u32, (x51 >> 26));
    const x53 = cast(u32, (x51 & cast(u64, 0x3ffffff)));
    const x54 = (cast(u64, x49) + ((cast(u64, (arg1[7])) * cast(u64, (arg2[9]))) + ((cast(u64, (arg1[8])) * cast(u64, (arg2[8]))) + (cast(u64, (arg1[9])) * cast(u64, (arg2[7]))))));
    const x55 = cast(u32, (x54 >> 32));
    const x56 = cast(u32, (x54 & cast(u64, 0xffffffff)));
    const x57 = ((cast(u64, x52) + (((cast(u64, (arg1[0])) * cast(u64, (arg2[6]))) + ((cast(u64, (arg1[1])) * cast(u64, (arg2[5]))) + ((cast(u64, (arg1[2])) * cast(u64, (arg2[4]))) + ((cast(u64, (arg1[3])) * cast(u64, (arg2[3]))) + ((cast(u64, (arg1[4])) * cast(u64, (arg2[2]))) + ((cast(u64, (arg1[5])) * cast(u64, (arg2[1]))) + (cast(u64, (arg1[6])) * cast(u64, (arg2[0]))))))))) + (cast(u64, x50) << 10))) + (cast(u64, x56) * cast(u64, 0x3d10)));
    const x58 = cast(u32, (x57 >> 26));
    const x59 = cast(u32, (x57 & cast(u64, 0x3ffffff)));
    const x60 = ((cast(u64, x58) + (cast(u64, x6) + (cast(u64, x56) << 10))) + (cast(u64, x55) * cast(u64, 0xf4400)));
    const x61 = cast(u32, (x60 >> 26));
    const x62 = cast(u32, (x60 & cast(u64, 0x3ffffff)));
    const x63 = (cast(u64, x61) + (cast(u64, x12) + (cast(u64, x55) << 16)));
    const x64 = cast(u32, (x63 >> 26));
    const x65 = cast(u32, (x63 & cast(u64, 0x3ffffff)));
    const x66 = (x64 + x17);
    out1[0] = x23;
    out1[1] = x29;
    out1[2] = x35;
    out1[3] = x41;
    out1[4] = x47;
    out1[5] = x53;
    out1[6] = x59;
    out1[7] = x62;
    out1[8] = x65;
    out1[9] = x66;
}

/// The function square squares a field element.
///
/// Postconditions:
///   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg1) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
///
/// Input Bounds:
///   arg1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
/// Output Bounds:
///   out1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x5fffff]]
pub fn square(out1: *[10]u32, arg1: [10]u32) void {
    @setRuntimeSafety(mode == .Debug);

    const x1 = ((arg1[8]) * 0x2);
    const x2 = ((arg1[7]) * 0x2);
    const x3 = ((arg1[6]) * 0x2);
    const x4 = ((arg1[5]) * 0x2);
    const x5 = ((arg1[4]) * 0x2);
    const x6 = ((arg1[3]) * 0x2);
    const x7 = ((arg1[2]) * 0x2);
    const x8 = ((arg1[1]) * 0x2);
    const x9 = ((arg1[0]) * 0x2);
    const x10 = (cast(u64, x1) * cast(u64, (arg1[9])));
    const x11 = cast(u32, (x10 >> 26));
    const x12 = cast(u32, (x10 & cast(u64, 0x3ffffff)));
    const x13 = (((cast(u64, x9) * cast(u64, (arg1[7]))) + ((cast(u64, x8) * cast(u64, (arg1[6]))) + ((cast(u64, x7) * cast(u64, (arg1[5]))) + (cast(u64, x6) * cast(u64, (arg1[4])))))) + (cast(u64, x12) * cast(u64, 0x3d10)));
    const x14 = cast(u32, (x13 >> 26));
    const x15 = cast(u32, (x13 & cast(u64, 0x3ffffff)));
    const x16 = (cast(u64, x11) + (cast(u64, (arg1[9])) * cast(u64, (arg1[9]))));
    const x17 = cast(u32, (x16 >> 32));
    const x18 = cast(u32, (x16 & cast(u64, 0xffffffff)));
    const x19 = ((cast(u64, x14) + (((cast(u64, x9) * cast(u64, (arg1[8]))) + ((cast(u64, x8) * cast(u64, (arg1[7]))) + ((cast(u64, x7) * cast(u64, (arg1[6]))) + ((cast(u64, x6) * cast(u64, (arg1[5]))) + (cast(u64, (arg1[4])) * cast(u64, (arg1[4]))))))) + (cast(u64, x12) << 10))) + (cast(u64, x18) * cast(u64, 0x3d10)));
    const x20 = cast(u32, (x19 >> 26));
    const x21 = cast(u32, (x19 & cast(u64, 0x3ffffff)));
    const x22 = ((cast(u64, x20) + (((cast(u64, x9) * cast(u64, (arg1[9]))) + ((cast(u64, x8) * cast(u64, (arg1[8]))) + ((cast(u64, x7) * cast(u64, (arg1[7]))) + ((cast(u64, x6) * cast(u64, (arg1[6]))) + (cast(u64, x5) * cast(u64, (arg1[5]))))))) + (cast(u64, x18) << 10))) + (cast(u64, x17) * cast(u64, 0xf4400)));
    const x23 = cast(u32, (x22 >> 26));
    const x24 = cast(u32, (x22 & cast(u64, 0x3ffffff)));
    const x25 = (x24 >> 22);
    const x26 = (x24 & 0x3fffff);
    const x27 = (cast(u64, x23) + (((cast(u64, x8) * cast(u64, (arg1[9]))) + ((cast(u64, x7) * cast(u64, (arg1[8]))) + ((cast(u64, x6) * cast(u64, (arg1[7]))) + ((cast(u64, x5) * cast(u64, (arg1[6]))) + (cast(u64, (arg1[5])) * cast(u64, (arg1[5]))))))) + cast(u64, (x17 << 16))));
    const x28 = cast(u32, (x27 >> 26));
    const x29 = cast(u32, (x27 & cast(u64, 0x3ffffff)));
    const x30 = ((cast(u64, (arg1[0])) * cast(u64, (arg1[0]))) + (cast(u64, (x25 + (x29 << 4))) * cast(u64, 0x3d1)));
    const x31 = cast(u32, (x30 >> 26));
    const x32 = cast(u32, (x30 & cast(u64, 0x3ffffff)));
    const x33 = (cast(u64, x28) + ((cast(u64, x7) * cast(u64, (arg1[9]))) + ((cast(u64, x6) * cast(u64, (arg1[8]))) + ((cast(u64, x5) * cast(u64, (arg1[7]))) + (cast(u64, x4) * cast(u64, (arg1[6])))))));
    const x34 = cast(u32, (x33 >> 26));
    const x35 = cast(u32, (x33 & cast(u64, 0x3ffffff)));
    const x36 = ((cast(u64, x31) + ((cast(u64, x9) * cast(u64, (arg1[1]))) + (cast(u64, (x25 + (x29 << 4))) << 6))) + (cast(u64, x35) * cast(u64, 0x3d10)));
    const x37 = cast(u32, (x36 >> 26));
    const x38 = cast(u32, (x36 & cast(u64, 0x3ffffff)));
    const x39 = (cast(u64, x34) + ((cast(u64, x6) * cast(u64, (arg1[9]))) + ((cast(u64, x5) * cast(u64, (arg1[8]))) + ((cast(u64, x4) * cast(u64, (arg1[7]))) + (cast(u64, (arg1[6])) * cast(u64, (arg1[6])))))));
    const x40 = cast(u32, (x39 >> 26));
    const x41 = cast(u32, (x39 & cast(u64, 0x3ffffff)));
    const x42 = ((cast(u64, x37) + (((cast(u64, x9) * cast(u64, (arg1[2]))) + (cast(u64, (arg1[1])) * cast(u64, (arg1[1])))) + (cast(u64, x35) << 10))) + (cast(u64, x41) * cast(u64, 0x3d10)));
    const x43 = cast(u32, (x42 >> 26));
    const x44 = cast(u32, (x42 & cast(u64, 0x3ffffff)));
    const x45 = (cast(u64, x40) + ((cast(u64, x5) * cast(u64, (arg1[9]))) + ((cast(u64, x4) * cast(u64, (arg1[8]))) + (cast(u64, x3) * cast(u64, (arg1[7]))))));
    const x46 = cast(u32, (x45 >> 26));
    const x47 = cast(u32, (x45 & cast(u64, 0x3ffffff)));
    const x48 = ((cast(u64, x43) + (((cast(u64, x9) * cast(u64, (arg1[3]))) + (cast(u64, x8) * cast(u64, (arg1[2])))) + (cast(u64, x41) << 10))) + (cast(u64, x47) * cast(u64, 0x3d10)));
    const x49 = cast(u32, (x48 >> 26));
    const x50 = cast(u32, (x48 & cast(u64, 0x3ffffff)));
    const x51 = (cast(u64, x46) + ((cast(u64, x4) * cast(u64, (arg1[9]))) + ((cast(u64, x3) * cast(u64, (arg1[8]))) + (cast(u64, (arg1[7])) * cast(u64, (arg1[7]))))));
    const x52 = cast(u32, (x51 >> 26));
    const x53 = cast(u32, (x51 & cast(u64, 0x3ffffff)));
    const x54 = ((cast(u64, x49) + (((cast(u64, x9) * cast(u64, (arg1[4]))) + ((cast(u64, x8) * cast(u64, (arg1[3]))) + (cast(u64, (arg1[2])) * cast(u64, (arg1[2]))))) + (cast(u64, x47) << 10))) + (cast(u64, x53) * cast(u64, 0x3d10)));
    const x55 = cast(u32, (x54 >> 26));
    const x56 = cast(u32, (x54 & cast(u64, 0x3ffffff)));
    const x57 = (cast(u64, x52) + ((cast(u64, x3) * cast(u64, (arg1[9]))) + (cast(u64, x2) * cast(u64, (arg1[8])))));
    const x58 = cast(u32, (x57 >> 26));
    const x59 = cast(u32, (x57 & cast(u64, 0x3ffffff)));
    const x60 = ((cast(u64, x55) + (((cast(u64, x9) * cast(u64, (arg1[5]))) + ((cast(u64, x8) * cast(u64, (arg1[4]))) + (cast(u64, x7) * cast(u64, (arg1[3]))))) + (cast(u64, x53) << 10))) + (cast(u64, x59) * cast(u64, 0x3d10)));
    const x61 = cast(u32, (x60 >> 26));
    const x62 = cast(u32, (x60 & cast(u64, 0x3ffffff)));
    const x63 = (cast(u64, x58) + ((cast(u64, x2) * cast(u64, (arg1[9]))) + (cast(u64, (arg1[8])) * cast(u64, (arg1[8])))));
    const x64 = cast(u32, (x63 >> 32));
    const x65 = cast(u32, (x63 & cast(u64, 0xffffffff)));
    const x66 = ((cast(u64, x61) + (((cast(u64, x9) * cast(u64, (arg1[6]))) + ((cast(u64, x8) * cast(u64, (arg1[5]))) + ((cast(u64, x7) * cast(u64, (arg1[4]))) + (cast(u64, (arg1[3])) * cast(u64, (arg1[3])))))) + (cast(u64, x59) << 10))) + (cast(u64, x65) * cast(u64, 0x3d10)));
    const x67 = cast(u32, (x66 >> 26));
    const x68 = cast(u32, (x66 & cast(u64, 0x3ffffff)));
    const x69 = ((cast(u64, x67) + (cast(u64, x15) + (cast(u64, x65) << 10))) + (cast(u64, x64) * cast(u64, 0xf4400)));
    const x70 = cast(u32, (x69 >> 26));
    const x71 = cast(u32, (x69 & cast(u64, 0x3ffffff)));
    const x72 = (cast(u64, x70) + (cast(u64, x21) + (cast(u64, x64) << 16)));
    const x73 = cast(u32, (x72 >> 26));
    const x74 = cast(u32, (x72 & cast(u64, 0x3ffffff)));
    const x75 = (x73 + x26);
    out1[0] = x32;
    out1[1] = x38;
    out1[2] = x44;
    out1[3] = x50;
    out1[4] = x56;
    out1[5] = x62;
    out1[6] = x68;
    out1[7] = x71;
    out1[8] = x74;
    out1[9] = x75;
}