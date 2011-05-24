#import "EmptyTable.h"
#import "EmptyDataSource.h"

@implementation EmptyTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.variableHeightRows = YES;
    self.title = @"Empty";
  }

  return self;
}

- (void) createModel {
  self.dataSource = [[[EmptyDataSource alloc] init] autorelease];
}

@end
