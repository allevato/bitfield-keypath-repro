import c_module

var s = SomeCStruct(notABitField: 1000, bitField: 5)

_ = s[keyPath: \.notABitField]
_ = s[keyPath: \.bitField]

s[keyPath: \.notABitField] = 1001
s[keyPath: \.bitField] = 6
