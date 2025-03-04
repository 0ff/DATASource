#import "AppDelegate.h"
#import "ViewController.h"
#import "DATAStack.h"

@interface AppDelegate ()

@property (nonatomic) DATAStack *dataStack;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    self.dataStack = [[DATAStack alloc] initWithModelName:@"TableObjectiveC"];
    ViewController *mainController = [[ViewController alloc] initWithDataStack:self.dataStack];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainController];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end

