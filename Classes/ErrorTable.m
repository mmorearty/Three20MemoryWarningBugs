#import "ErrorTable.h"
#import "ErrorDataSource.h"

@implementation ErrorTable

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.title = @"Error";
    self.variableHeightRows = YES;
  }

  return self;
}

- (void) createModel {
  self.dataSource = [[[ErrorDataSource alloc] init] autorelease];
}

@end

