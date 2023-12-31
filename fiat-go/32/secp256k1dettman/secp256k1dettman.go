// Code generated by Fiat Cryptography. DO NOT EDIT.
//
// Autogenerated: 'src/ExtractionOCaml/dettman_multiplication' --lang Go --relax-primitive-carry-to-bitwidth 32,64 --cmovznz-by-mul --internal-static --package-case flatcase --public-function-case UpperCamelCase --private-function-case camelCase --public-type-case UpperCamelCase --private-type-case camelCase --no-prefix-fiat --doc-newline-in-typedef-bounds --doc-prepend-header 'Code generated by Fiat Cryptography. DO NOT EDIT.' --doc-text-before-function-name '' --doc-text-before-type-name '' --package-name secp256k1dettman '' 32 10 22 6 '2^256 - 4294968273' mul square
//
// curve description (via package name): secp256k1dettman
//
// machine_wordsize = 32 (from "32")
//
// requested operations: mul, square
//
// n = 10 (from "10")
//
// last_limb_width = 22 (from "22")
//
// last_reduction = 6 (from "6")
//
// s-c = 2^256 - [(1, 4294968273)] (from "2^256 - 4294968273")
//
// inbounds_multiplier: None (from "")
//
//
//
// Computed values:
//
//
//
//
package secp256k1dettman

// Mul multiplies two field elements.
//
// Postconditions:
//   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg2) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
//
// Input Bounds:
//   arg1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
//   arg2: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
// Output Bounds:
//   out1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x5fffff]]
func Mul(out1 *[10]uint32, arg1 *[10]uint32, arg2 *[10]uint32) {
	x1 := ((uint64(arg1[8]) * uint64(arg2[9])) + (uint64(arg1[9]) * uint64(arg2[8])))
	x2 := uint32((x1 >> 26))
	x3 := (uint32(x1) & 0x3ffffff)
	x4 := (((uint64(arg1[0]) * uint64(arg2[7])) + ((uint64(arg1[1]) * uint64(arg2[6])) + ((uint64(arg1[2]) * uint64(arg2[5])) + ((uint64(arg1[3]) * uint64(arg2[4])) + ((uint64(arg1[4]) * uint64(arg2[3])) + ((uint64(arg1[5]) * uint64(arg2[2])) + ((uint64(arg1[6]) * uint64(arg2[1])) + (uint64(arg1[7]) * uint64(arg2[0]))))))))) + (uint64(x3) * uint64(0x3d10)))
	x5 := uint32((x4 >> 26))
	x6 := (uint32(x4) & 0x3ffffff)
	x7 := (uint64(x2) + (uint64(arg1[9]) * uint64(arg2[9])))
	x8 := uint32((x7 >> 32))
	x9 := (uint32(x7) & 0xffffffff)
	x10 := ((uint64(x5) + (((uint64(arg1[0]) * uint64(arg2[8])) + ((uint64(arg1[1]) * uint64(arg2[7])) + ((uint64(arg1[2]) * uint64(arg2[6])) + ((uint64(arg1[3]) * uint64(arg2[5])) + ((uint64(arg1[4]) * uint64(arg2[4])) + ((uint64(arg1[5]) * uint64(arg2[3])) + ((uint64(arg1[6]) * uint64(arg2[2])) + ((uint64(arg1[7]) * uint64(arg2[1])) + (uint64(arg1[8]) * uint64(arg2[0])))))))))) + (uint64(x3) << 10))) + (uint64(x9) * uint64(0x3d10)))
	x11 := uint32((x10 >> 26))
	x12 := (uint32(x10) & 0x3ffffff)
	x13 := ((uint64(x11) + (((uint64(arg1[0]) * uint64(arg2[9])) + ((uint64(arg1[1]) * uint64(arg2[8])) + ((uint64(arg1[2]) * uint64(arg2[7])) + ((uint64(arg1[3]) * uint64(arg2[6])) + ((uint64(arg1[4]) * uint64(arg2[5])) + ((uint64(arg1[5]) * uint64(arg2[4])) + ((uint64(arg1[6]) * uint64(arg2[3])) + ((uint64(arg1[7]) * uint64(arg2[2])) + ((uint64(arg1[8]) * uint64(arg2[1])) + (uint64(arg1[9]) * uint64(arg2[0]))))))))))) + (uint64(x9) << 10))) + (uint64(x8) * uint64(0xf4400)))
	x14 := uint32((x13 >> 26))
	x15 := (uint32(x13) & 0x3ffffff)
	x16 := (uint64(x14) + (((uint64(arg1[1]) * uint64(arg2[9])) + ((uint64(arg1[2]) * uint64(arg2[8])) + ((uint64(arg1[3]) * uint64(arg2[7])) + ((uint64(arg1[4]) * uint64(arg2[6])) + ((uint64(arg1[5]) * uint64(arg2[5])) + ((uint64(arg1[6]) * uint64(arg2[4])) + ((uint64(arg1[7]) * uint64(arg2[3])) + ((uint64(arg1[8]) * uint64(arg2[2])) + (uint64(arg1[9]) * uint64(arg2[1])))))))))) + uint64((x8 << 16))))
	x17 := uint32((x16 >> 26))
	x18 := (uint32(x16) & 0x3ffffff)
	x19 := (x15 >> 22)
	x20 := (x15 & 0x3fffff)
	x21 := ((uint64(arg1[0]) * uint64(arg2[0])) + (uint64((x19 + (x18 << 4))) * uint64(0x3d1)))
	x22 := uint32((x21 >> 26))
	x23 := (uint32(x21) & 0x3ffffff)
	x24 := (uint64(x17) + ((uint64(arg1[2]) * uint64(arg2[9])) + ((uint64(arg1[3]) * uint64(arg2[8])) + ((uint64(arg1[4]) * uint64(arg2[7])) + ((uint64(arg1[5]) * uint64(arg2[6])) + ((uint64(arg1[6]) * uint64(arg2[5])) + ((uint64(arg1[7]) * uint64(arg2[4])) + ((uint64(arg1[8]) * uint64(arg2[3])) + (uint64(arg1[9]) * uint64(arg2[2]))))))))))
	x25 := uint32((x24 >> 26))
	x26 := (uint32(x24) & 0x3ffffff)
	x27 := ((uint64(x22) + (((uint64(arg1[0]) * uint64(arg2[1])) + (uint64(arg1[1]) * uint64(arg2[0]))) + (uint64((x19 + (x18 << 4))) << 6))) + (uint64(x26) * uint64(0x3d10)))
	x28 := uint32((x27 >> 26))
	x29 := (uint32(x27) & 0x3ffffff)
	x30 := (uint64(x25) + ((uint64(arg1[3]) * uint64(arg2[9])) + ((uint64(arg1[4]) * uint64(arg2[8])) + ((uint64(arg1[5]) * uint64(arg2[7])) + ((uint64(arg1[6]) * uint64(arg2[6])) + ((uint64(arg1[7]) * uint64(arg2[5])) + ((uint64(arg1[8]) * uint64(arg2[4])) + (uint64(arg1[9]) * uint64(arg2[3])))))))))
	x31 := uint32((x30 >> 26))
	x32 := (uint32(x30) & 0x3ffffff)
	x33 := ((uint64(x28) + (((uint64(arg1[0]) * uint64(arg2[2])) + ((uint64(arg1[1]) * uint64(arg2[1])) + (uint64(arg1[2]) * uint64(arg2[0])))) + (uint64(x26) << 10))) + (uint64(x32) * uint64(0x3d10)))
	x34 := uint32((x33 >> 26))
	x35 := (uint32(x33) & 0x3ffffff)
	x36 := (uint64(x31) + ((uint64(arg1[4]) * uint64(arg2[9])) + ((uint64(arg1[5]) * uint64(arg2[8])) + ((uint64(arg1[6]) * uint64(arg2[7])) + ((uint64(arg1[7]) * uint64(arg2[6])) + ((uint64(arg1[8]) * uint64(arg2[5])) + (uint64(arg1[9]) * uint64(arg2[4]))))))))
	x37 := uint32((x36 >> 26))
	x38 := (uint32(x36) & 0x3ffffff)
	x39 := ((uint64(x34) + (((uint64(arg1[0]) * uint64(arg2[3])) + ((uint64(arg1[1]) * uint64(arg2[2])) + ((uint64(arg1[2]) * uint64(arg2[1])) + (uint64(arg1[3]) * uint64(arg2[0]))))) + (uint64(x32) << 10))) + (uint64(x38) * uint64(0x3d10)))
	x40 := uint32((x39 >> 26))
	x41 := (uint32(x39) & 0x3ffffff)
	x42 := (uint64(x37) + ((uint64(arg1[5]) * uint64(arg2[9])) + ((uint64(arg1[6]) * uint64(arg2[8])) + ((uint64(arg1[7]) * uint64(arg2[7])) + ((uint64(arg1[8]) * uint64(arg2[6])) + (uint64(arg1[9]) * uint64(arg2[5])))))))
	x43 := uint32((x42 >> 26))
	x44 := (uint32(x42) & 0x3ffffff)
	x45 := ((uint64(x40) + (((uint64(arg1[0]) * uint64(arg2[4])) + ((uint64(arg1[1]) * uint64(arg2[3])) + ((uint64(arg1[2]) * uint64(arg2[2])) + ((uint64(arg1[3]) * uint64(arg2[1])) + (uint64(arg1[4]) * uint64(arg2[0])))))) + (uint64(x38) << 10))) + (uint64(x44) * uint64(0x3d10)))
	x46 := uint32((x45 >> 26))
	x47 := (uint32(x45) & 0x3ffffff)
	x48 := (uint64(x43) + ((uint64(arg1[6]) * uint64(arg2[9])) + ((uint64(arg1[7]) * uint64(arg2[8])) + ((uint64(arg1[8]) * uint64(arg2[7])) + (uint64(arg1[9]) * uint64(arg2[6]))))))
	x49 := uint32((x48 >> 26))
	x50 := (uint32(x48) & 0x3ffffff)
	x51 := ((uint64(x46) + (((uint64(arg1[0]) * uint64(arg2[5])) + ((uint64(arg1[1]) * uint64(arg2[4])) + ((uint64(arg1[2]) * uint64(arg2[3])) + ((uint64(arg1[3]) * uint64(arg2[2])) + ((uint64(arg1[4]) * uint64(arg2[1])) + (uint64(arg1[5]) * uint64(arg2[0]))))))) + (uint64(x44) << 10))) + (uint64(x50) * uint64(0x3d10)))
	x52 := uint32((x51 >> 26))
	x53 := (uint32(x51) & 0x3ffffff)
	x54 := (uint64(x49) + ((uint64(arg1[7]) * uint64(arg2[9])) + ((uint64(arg1[8]) * uint64(arg2[8])) + (uint64(arg1[9]) * uint64(arg2[7])))))
	x55 := uint32((x54 >> 32))
	x56 := (uint32(x54) & 0xffffffff)
	x57 := ((uint64(x52) + (((uint64(arg1[0]) * uint64(arg2[6])) + ((uint64(arg1[1]) * uint64(arg2[5])) + ((uint64(arg1[2]) * uint64(arg2[4])) + ((uint64(arg1[3]) * uint64(arg2[3])) + ((uint64(arg1[4]) * uint64(arg2[2])) + ((uint64(arg1[5]) * uint64(arg2[1])) + (uint64(arg1[6]) * uint64(arg2[0])))))))) + (uint64(x50) << 10))) + (uint64(x56) * uint64(0x3d10)))
	x58 := uint32((x57 >> 26))
	x59 := (uint32(x57) & 0x3ffffff)
	x60 := ((uint64(x58) + (uint64(x6) + (uint64(x56) << 10))) + (uint64(x55) * uint64(0xf4400)))
	x61 := uint32((x60 >> 26))
	x62 := (uint32(x60) & 0x3ffffff)
	x63 := (uint64(x61) + (uint64(x12) + (uint64(x55) << 16)))
	x64 := uint32((x63 >> 26))
	x65 := (uint32(x63) & 0x3ffffff)
	x66 := (x64 + x20)
	out1[0] = x23
	out1[1] = x29
	out1[2] = x35
	out1[3] = x41
	out1[4] = x47
	out1[5] = x53
	out1[6] = x59
	out1[7] = x62
	out1[8] = x65
	out1[9] = x66
}

// Square squares a field element.
//
// Postconditions:
//   eval out1 mod 115792089237316195423570985008687907853269984665640564039457584007908834671663 = (eval arg1 * eval arg1) mod 115792089237316195423570985008687907853269984665640564039457584007908834671663
//
// Input Bounds:
//   arg1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7ffffe]]
// Output Bounds:
//   out1: [[0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x7fffffe], [0x0 ~> 0x5fffff]]
func Square(out1 *[10]uint32, arg1 *[10]uint32) {
	x1 := (arg1[8] * 0x2)
	x2 := (arg1[7] * 0x2)
	x3 := (arg1[6] * 0x2)
	x4 := (arg1[5] * 0x2)
	x5 := (arg1[4] * 0x2)
	x6 := (arg1[3] * 0x2)
	x7 := (arg1[2] * 0x2)
	x8 := (arg1[1] * 0x2)
	x9 := (arg1[0] * 0x2)
	x10 := (uint64(x1) * uint64(arg1[9]))
	x11 := uint32((x10 >> 26))
	x12 := (uint32(x10) & 0x3ffffff)
	x13 := (((uint64(x9) * uint64(arg1[7])) + ((uint64(x8) * uint64(arg1[6])) + ((uint64(x7) * uint64(arg1[5])) + (uint64(x6) * uint64(arg1[4]))))) + (uint64(x12) * uint64(0x3d10)))
	x14 := uint32((x13 >> 26))
	x15 := (uint32(x13) & 0x3ffffff)
	x16 := (uint64(x11) + (uint64(arg1[9]) * uint64(arg1[9])))
	x17 := uint32((x16 >> 32))
	x18 := (uint32(x16) & 0xffffffff)
	x19 := ((uint64(x14) + (((uint64(x9) * uint64(arg1[8])) + ((uint64(x8) * uint64(arg1[7])) + ((uint64(x7) * uint64(arg1[6])) + ((uint64(x6) * uint64(arg1[5])) + (uint64(arg1[4]) * uint64(arg1[4])))))) + (uint64(x12) << 10))) + (uint64(x18) * uint64(0x3d10)))
	x20 := uint32((x19 >> 26))
	x21 := (uint32(x19) & 0x3ffffff)
	x22 := ((uint64(x20) + (((uint64(x9) * uint64(arg1[9])) + ((uint64(x8) * uint64(arg1[8])) + ((uint64(x7) * uint64(arg1[7])) + ((uint64(x6) * uint64(arg1[6])) + (uint64(x5) * uint64(arg1[5])))))) + (uint64(x18) << 10))) + (uint64(x17) * uint64(0xf4400)))
	x23 := uint32((x22 >> 26))
	x24 := (uint32(x22) & 0x3ffffff)
	x25 := (uint64(x23) + (((uint64(x8) * uint64(arg1[9])) + ((uint64(x7) * uint64(arg1[8])) + ((uint64(x6) * uint64(arg1[7])) + ((uint64(x5) * uint64(arg1[6])) + (uint64(arg1[5]) * uint64(arg1[5])))))) + uint64((x17 << 16))))
	x26 := uint32((x25 >> 26))
	x27 := (uint32(x25) & 0x3ffffff)
	x28 := (x24 >> 22)
	x29 := (x24 & 0x3fffff)
	x30 := ((uint64(arg1[0]) * uint64(arg1[0])) + (uint64((x28 + (x27 << 4))) * uint64(0x3d1)))
	x31 := uint32((x30 >> 26))
	x32 := (uint32(x30) & 0x3ffffff)
	x33 := (uint64(x26) + ((uint64(x7) * uint64(arg1[9])) + ((uint64(x6) * uint64(arg1[8])) + ((uint64(x5) * uint64(arg1[7])) + (uint64(x4) * uint64(arg1[6]))))))
	x34 := uint32((x33 >> 26))
	x35 := (uint32(x33) & 0x3ffffff)
	x36 := ((uint64(x31) + ((uint64(x9) * uint64(arg1[1])) + (uint64((x28 + (x27 << 4))) << 6))) + (uint64(x35) * uint64(0x3d10)))
	x37 := uint32((x36 >> 26))
	x38 := (uint32(x36) & 0x3ffffff)
	x39 := (uint64(x34) + ((uint64(x6) * uint64(arg1[9])) + ((uint64(x5) * uint64(arg1[8])) + ((uint64(x4) * uint64(arg1[7])) + (uint64(arg1[6]) * uint64(arg1[6]))))))
	x40 := uint32((x39 >> 26))
	x41 := (uint32(x39) & 0x3ffffff)
	x42 := ((uint64(x37) + (((uint64(x9) * uint64(arg1[2])) + (uint64(arg1[1]) * uint64(arg1[1]))) + (uint64(x35) << 10))) + (uint64(x41) * uint64(0x3d10)))
	x43 := uint32((x42 >> 26))
	x44 := (uint32(x42) & 0x3ffffff)
	x45 := (uint64(x40) + ((uint64(x5) * uint64(arg1[9])) + ((uint64(x4) * uint64(arg1[8])) + (uint64(x3) * uint64(arg1[7])))))
	x46 := uint32((x45 >> 26))
	x47 := (uint32(x45) & 0x3ffffff)
	x48 := ((uint64(x43) + (((uint64(x9) * uint64(arg1[3])) + (uint64(x8) * uint64(arg1[2]))) + (uint64(x41) << 10))) + (uint64(x47) * uint64(0x3d10)))
	x49 := uint32((x48 >> 26))
	x50 := (uint32(x48) & 0x3ffffff)
	x51 := (uint64(x46) + ((uint64(x4) * uint64(arg1[9])) + ((uint64(x3) * uint64(arg1[8])) + (uint64(arg1[7]) * uint64(arg1[7])))))
	x52 := uint32((x51 >> 26))
	x53 := (uint32(x51) & 0x3ffffff)
	x54 := ((uint64(x49) + (((uint64(x9) * uint64(arg1[4])) + ((uint64(x8) * uint64(arg1[3])) + (uint64(arg1[2]) * uint64(arg1[2])))) + (uint64(x47) << 10))) + (uint64(x53) * uint64(0x3d10)))
	x55 := uint32((x54 >> 26))
	x56 := (uint32(x54) & 0x3ffffff)
	x57 := (uint64(x52) + ((uint64(x3) * uint64(arg1[9])) + (uint64(x2) * uint64(arg1[8]))))
	x58 := uint32((x57 >> 26))
	x59 := (uint32(x57) & 0x3ffffff)
	x60 := ((uint64(x55) + (((uint64(x9) * uint64(arg1[5])) + ((uint64(x8) * uint64(arg1[4])) + (uint64(x7) * uint64(arg1[3])))) + (uint64(x53) << 10))) + (uint64(x59) * uint64(0x3d10)))
	x61 := uint32((x60 >> 26))
	x62 := (uint32(x60) & 0x3ffffff)
	x63 := (uint64(x58) + ((uint64(x2) * uint64(arg1[9])) + (uint64(arg1[8]) * uint64(arg1[8]))))
	x64 := uint32((x63 >> 32))
	x65 := (uint32(x63) & 0xffffffff)
	x66 := ((uint64(x61) + (((uint64(x9) * uint64(arg1[6])) + ((uint64(x8) * uint64(arg1[5])) + ((uint64(x7) * uint64(arg1[4])) + (uint64(arg1[3]) * uint64(arg1[3]))))) + (uint64(x59) << 10))) + (uint64(x65) * uint64(0x3d10)))
	x67 := uint32((x66 >> 26))
	x68 := (uint32(x66) & 0x3ffffff)
	x69 := ((uint64(x67) + (uint64(x15) + (uint64(x65) << 10))) + (uint64(x64) * uint64(0xf4400)))
	x70 := uint32((x69 >> 26))
	x71 := (uint32(x69) & 0x3ffffff)
	x72 := (uint64(x70) + (uint64(x21) + (uint64(x64) << 16)))
	x73 := uint32((x72 >> 26))
	x74 := (uint32(x72) & 0x3ffffff)
	x75 := (x73 + x29)
	out1[0] = x32
	out1[1] = x38
	out1[2] = x44
	out1[3] = x50
	out1[4] = x56
	out1[5] = x62
	out1[6] = x68
	out1[7] = x71
	out1[8] = x74
	out1[9] = x75
}
