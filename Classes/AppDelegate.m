#import "AppDelegate.h"
#import "MyTabBarController.h"
#import "FirstTable.h"
#import "EmptyTable.h"
#import "ErrorTable.h"
#import "BannerTable.h"
#import "LoadingTable.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  TTNavigator* navigator = [TTNavigator navigator];
  navigator.persistenceMode = TTNavigatorPersistenceModeNone;

  TTURLMap* map = navigator.URLMap;

  [map from:@"*" toViewController:[TTWebController class]];
  [map from:@"mm://home" toSharedViewController:[MyTabBarController class]];
  [map from:@"mm://firsttable" toSharedViewController:[FirstTable class]];
  [map from:@"mm://emptytable" toSharedViewController:[EmptyTable class]];
  [map from:@"mm://errortable" toSharedViewController:[ErrorTable class]];
  [map from:@"mm://bannertable" toSharedViewController:[BannerTable class]];
  [map from:@"mm://loadingtable" toSharedViewController:[LoadingTable class]];

  if (![navigator restoreViewControllers]) {
    [navigator openURLAction:[TTURLAction actionWithURLPath:@"mm://home"]];
  }
}

- (BOOL)navigator:(TTNavigator*)navigator shouldOpenURL:(NSURL*)URL {
  return YES;
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
  [[TTNavigator navigator] openURLAction:[TTURLAction actionWithURLPath:URL.absoluteString]];
  return YES;
}

@end
