#import "LoadingTable.h"
#import "LoadingDataSource.h"

@implementation LoadingTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.variableHeightRows = YES;
    self.title = @"Loading";
  }

  return self;
}

- (void) createModel {
  self.dataSource = [[[LoadingDataSource alloc] init] autorelease];
}

@end
