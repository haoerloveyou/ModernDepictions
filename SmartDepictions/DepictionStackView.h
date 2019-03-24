#import "DepictionBaseView.h"

@class SubDepictionTableView;

@interface DepictionStackView : DepictionBaseView {
	SubDepictionTableView *tableView;
	NSArray *cells;
}
@property (nonatomic, retain, setter=setViews:) NSArray *views;
- (void)setViews:(NSArray *)views;
- (instancetype)initWithDepictionDelegate:(SmartDepictionDelegate *)delegate reuseIdentifier:(NSString *)reuseIdentifier;
@end