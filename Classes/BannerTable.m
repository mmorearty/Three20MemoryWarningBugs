#import "BannerTable.h"

@implementation BannerTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.variableHeightRows = YES;
    self.title = @"Banner";

    self.dataSource =
      [TTListDataSource dataSourceWithObjects:
        [TTTableTextItem itemWithText:@"Table cell item"],
         nil];

    UILabel* banner = [[[UILabel alloc] init] autorelease];
    banner.text = @"A banner";
    banner.alpha = 0.5;
    banner.backgroundColor = [UIColor blueColor];

    self.tableBannerView = banner;
  }

  return self;
}

@end
