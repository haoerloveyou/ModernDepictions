#import <Foundation/Foundation.h>
#import "../Headers/Headers.h"

@class SmartPackageController;
@class Database;
@class Package;
@class Cydia;

@interface SmartDepictionDelegate : NSObject {
	NSString *modificationButtonTitle;
}
@property (nonatomic, readonly) SmartPackageController *packageController;
@property (nonatomic, retain) Cydia *cydiaDelegate;
@property (nonatomic, readonly) NSDictionary *depiction;
@property (nonatomic, readonly) Database *database;
@property (nonatomic, readonly) NSString *packageID;
@property (nonatomic, readonly) Package *package;
@property (nonatomic, readonly) NSDictionary *modificationButtons;
@property (nonatomic, readonly) bool iOS6;
- (NSString *)modificationButtonTitle;
- (void)setModificationButtonTitle:(NSString *)newTitle;
- (void)setPackageWithID:(NSString *)packageID database:(Database *)database;
- (instancetype)initWithPackageController:(SmartPackageController *)packageController
	depiction:(NSDictionary *)depictionDict
	database:(Database *)database
	packageID:(NSString *)packageID;
- (void)reloadData;
- (void)handleModifyButton;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
@end