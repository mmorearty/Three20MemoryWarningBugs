#import "MyTabBarController.h"
#import <Three20UI/Three20UI+Additions.h>

@implementation MyTabBarController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self setTabURLs:[NSArray arrayWithObjects:
                    @"mm://emptytable",
                    @"mm://errortable",
                    @"mm://bannertable",
                    @"mm://loadingtable",
                    nil]];
}

@end
