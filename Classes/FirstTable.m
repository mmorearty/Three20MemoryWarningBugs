#import "FirstTable.h"

@implementation FirstTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.title = @"First";
    self.variableHeightRows = YES;
    self.dataSource =
      [TTListDataSource dataSourceWithObjects:
       [TTTableStyledTextItem itemWithText:[TTStyledText textWithURLs:@"To reproduce memory problems:\n\n- Run this app in simulator\n- Visit each of the below tabs\n- Return to this tab\n- Hardware > Simulate Memory Warning\n- Check other tabs again\n\nYou will see that the empty view, error view, table banner, and loading view were not properly restored."
                                                           lineBreaks:YES]],
         nil];
  }

  return self;
}

@end

