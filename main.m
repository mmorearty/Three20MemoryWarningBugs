//
//  main.m
//  MemoryWarningBug
//
//  Created by Mike Morearty on 5/23/11.
//  Copyright Leverage Software 2011. All rights reserved.
//

int main(int argc, char *argv[]) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
  int retVal = UIApplicationMain(argc, argv, nil, @"AppDelegate");
  [pool release];
  return retVal;
}
