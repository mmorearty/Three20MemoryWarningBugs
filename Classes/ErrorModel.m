#import "ErrorModel.h"

@implementation ErrorModel

- (void) load:(TTURLRequestCachePolicy)cachePolicy more:(BOOL)more {
  [self didStartLoad];
  NSError* error = [NSError errorWithDomain:@"mock" 
                                       code:1 
                                   userInfo:[NSDictionary dictionaryWithObject:@"Fake error" 
                                                                        forKey:NSLocalizedDescriptionKey]];
  [self didFailLoadWithError:error];
}

@end
