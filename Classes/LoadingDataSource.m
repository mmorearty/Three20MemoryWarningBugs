#import "LoadingDataSource.h"
#import "LoadingModel.h"

@implementation LoadingDataSource

- (id) init {
  if (self = [super init]) {
    _model = [[LoadingModel alloc] init];
  }
  return self;
}

- (void) tableViewDidLoadModel:(UITableView *)tableView {
  [super tableViewDidLoadModel:tableView];
}

@end
