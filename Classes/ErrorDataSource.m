#import "ErrorDataSource.h"
#import "ErrorModel.h"

@implementation ErrorDataSource

- (id) init {
  if (self = [super init]) {
    _model = [[ErrorModel alloc] init];
  }
  return self;
}

@end
