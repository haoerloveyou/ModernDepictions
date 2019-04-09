#import <Foundation/Foundation.h>
#import <Headers/Headers.h>
#import <Extensions/UIDevice+isiPad.h>

static UIImage *shadowImage;

int ModernDepictionsGetPreferenceValue(NSString *prefKey, int defaultValue) {
	NSNumber *val = [[NSUserDefaults standardUserDefaults] objectForKey:prefKey inDomain:@"com.pixelomer.moderndepictions.prefs"];
	return val ? val.intValue : defaultValue;
}

UIImage *ModernDepictionsGetShadowImage(void) {
	if (!shadowImage) {
		unsigned char shadowImageBytes[] = {
			0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d,
			0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x56,
			0x08, 0x06, 0x00, 0x00, 0x00, 0x0e, 0x9e, 0xfc, 0xc6, 0x00, 0x00, 0x00,
			0x01, 0x73, 0x52, 0x47, 0x42, 0x00, 0xae, 0xce, 0x1c, 0xe9, 0x00, 0x00,
			0x01, 0x59, 0x69, 0x54, 0x58, 0x74, 0x58, 0x4d, 0x4c, 0x3a, 0x63, 0x6f,
			0x6d, 0x2e, 0x61, 0x64, 0x6f, 0x62, 0x65, 0x2e, 0x78, 0x6d, 0x70, 0x00,
			0x00, 0x00, 0x00, 0x00, 0x3c, 0x78, 0x3a, 0x78, 0x6d, 0x70, 0x6d, 0x65,
			0x74, 0x61, 0x20, 0x78, 0x6d, 0x6c, 0x6e, 0x73, 0x3a, 0x78, 0x3d, 0x22,
			0x61, 0x64, 0x6f, 0x62, 0x65, 0x3a, 0x6e, 0x73, 0x3a, 0x6d, 0x65, 0x74,
			0x61, 0x2f, 0x22, 0x20, 0x78, 0x3a, 0x78, 0x6d, 0x70, 0x74, 0x6b, 0x3d,
			0x22, 0x58, 0x4d, 0x50, 0x20, 0x43, 0x6f, 0x72, 0x65, 0x20, 0x35, 0x2e,
			0x34, 0x2e, 0x30, 0x22, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x3c, 0x72, 0x64,
			0x66, 0x3a, 0x52, 0x44, 0x46, 0x20, 0x78, 0x6d, 0x6c, 0x6e, 0x73, 0x3a,
			0x72, 0x64, 0x66, 0x3d, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3a, 0x2f, 0x2f,
			0x77, 0x77, 0x77, 0x2e, 0x77, 0x33, 0x2e, 0x6f, 0x72, 0x67, 0x2f, 0x31,
			0x39, 0x39, 0x39, 0x2f, 0x30, 0x32, 0x2f, 0x32, 0x32, 0x2d, 0x72, 0x64,
			0x66, 0x2d, 0x73, 0x79, 0x6e, 0x74, 0x61, 0x78, 0x2d, 0x6e, 0x73, 0x23,
			0x22, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x72, 0x64,
			0x66, 0x3a, 0x44, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f,
			0x6e, 0x20, 0x72, 0x64, 0x66, 0x3a, 0x61, 0x62, 0x6f, 0x75, 0x74, 0x3d,
			0x22, 0x22, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
			0x20, 0x20, 0x20, 0x78, 0x6d, 0x6c, 0x6e, 0x73, 0x3a, 0x74, 0x69, 0x66,
			0x66, 0x3d, 0x22, 0x68, 0x74, 0x74, 0x70, 0x3a, 0x2f, 0x2f, 0x6e, 0x73,
			0x2e, 0x61, 0x64, 0x6f, 0x62, 0x65, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x74,
			0x69, 0x66, 0x66, 0x2f, 0x31, 0x2e, 0x30, 0x2f, 0x22, 0x3e, 0x0a, 0x20,
			0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x74, 0x69, 0x66,
			0x66, 0x3a, 0x4f, 0x72, 0x69, 0x65, 0x6e, 0x74, 0x61, 0x74, 0x69, 0x6f,
			0x6e, 0x3e, 0x31, 0x3c, 0x2f, 0x74, 0x69, 0x66, 0x66, 0x3a, 0x4f, 0x72,
			0x69, 0x65, 0x6e, 0x74, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20,
			0x20, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x2f, 0x72, 0x64, 0x66, 0x3a, 0x44,
			0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a,
			0x20, 0x20, 0x20, 0x3c, 0x2f, 0x72, 0x64, 0x66, 0x3a, 0x52, 0x44, 0x46,
			0x3e, 0x0a, 0x3c, 0x2f, 0x78, 0x3a, 0x78, 0x6d, 0x70, 0x6d, 0x65, 0x74,
			0x61, 0x3e, 0x0a, 0x4c, 0xc2, 0x27, 0x59, 0x00, 0x00, 0x00, 0x9e, 0x49,
			0x44, 0x41, 0x54, 0x18, 0x19, 0x65, 0x50, 0x41, 0x0e, 0x03, 0x21, 0x08,
			0x54, 0xd4, 0x35, 0x26, 0xa6, 0xaf, 0xf2, 0x53, 0xfd, 0xb0, 0x5f, 0xe8,
			0xc1, 0x04, 0x0a, 0xb3, 0xb6, 0x34, 0xd6, 0xc3, 0x64, 0x86, 0x61, 0x58,
			0xd8, 0x10, 0x42, 0x78, 0x92, 0xbe, 0x87, 0xc1, 0x8b, 0x54, 0xb2, 0x31,
			0x31, 0x60, 0x4a, 0x29, 0xc9, 0xb7, 0xf6, 0x2b, 0xb5, 0x4f, 0xcc, 0xdd,
			0xcd, 0x2e, 0x9d, 0xc5, 0x18, 0xf9, 0xce, 0x62, 0x0a, 0xa4, 0xb3, 0x4f,
			0x9f, 0x10, 0x0c, 0x85, 0xcd, 0xbc, 0xe5, 0x30, 0x72, 0xce, 0x68, 0xf9,
			0x4b, 0x20, 0x8b, 0x75, 0x01, 0x2e, 0x0f, 0x06, 0x89, 0x9d, 0x9d, 0xb1,
			0x3e, 0x3b, 0x75, 0x1f, 0x03, 0x43, 0x3f, 0xc4, 0xe4, 0x06, 0x5c, 0x00,
			0x6a, 0xa5, 0x14, 0xa6, 0xeb, 0xba, 0x98, 0xd6, 0x5a, 0x72, 0x32, 0xb4,
			0x60, 0x53, 0x3d, 0x30, 0x50, 0x6b, 0x6d, 0x8f, 0xd2, 0x84, 0xdc, 0x43,
			0x45, 0x84, 0xa9, 0xd6, 0x2a, 0x04, 0x86, 0x44, 0xef, 0x7d, 0xff, 0x67,
			0xc4, 0x14, 0x98, 0xe6, 0x9c, 0x42, 0x63, 0x0c, 0xb6, 0x52, 0x34, 0x08,
			0x6f, 0xb1, 0x62, 0x76, 0xa9, 0x94, 0x22, 0x3e, 0x94, 0x00, 0x00, 0x00,
			0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 0x42, 0x60, 0x82
		};
		shadowImage = [UIImage imageWithData:[NSData dataWithBytes:shadowImageBytes length:sizeof(shadowImageBytes)]];
	}
	return shadowImage;
}

NSString *ModernDepictionsGeneratePackageURL(NSString *packageID) {
	return [NSString stringWithFormat:@"https://cydia.saurik.com/ui/ios~%@/1.1/package/#!/%@",
		UIDevice.currentDevice.isiPad ? @"ipad" : @"iphone",
		packageID
	];
}

void ModernDepictionsInitializeSharedFunctions(void) {
	shadowImage = nil;
}