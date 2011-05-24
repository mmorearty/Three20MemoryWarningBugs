#import "LoadingModel.h"

@implementation LoadingModel

- (void) load:(TTURLRequestCachePolicy)cachePolicy more:(BOOL)more {
  TTURLRequest* request = [TTURLRequest requestWithURL:@"http://www.google.com" delegate:self];
  _request = [request retain];

  // pretend that we started the request, so the spinner shows up,
  // but don't actually start it; it will never finish
  [self requestDidStartLoad:request];
}

@end
