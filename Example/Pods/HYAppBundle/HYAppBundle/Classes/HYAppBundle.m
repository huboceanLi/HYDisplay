#import "HYAppBundle.h"

NSBundle * _Nonnull getAppBundle() {
    NSBundle *bundle = [NSBundle mainBundle];
    if ([[bundle.bundleURL pathExtension] isEqualToString:@"appex"]) {
        bundle = [NSBundle bundleWithURL:[[bundle.bundleURL URLByDeletingLastPathComponent] URLByDeletingLastPathComponent]];
    } else if ([[bundle.bundleURL pathExtension] isEqualToString:@"framework"]) {
        bundle = [NSBundle bundleWithURL:[[bundle.bundleURL URLByDeletingLastPathComponent] URLByDeletingLastPathComponent]];
    } else if ([[bundle.bundleURL pathExtension] isEqualToString:@"Frameworks"]) {
        bundle = [NSBundle bundleWithURL:[bundle.bundleURL URLByDeletingLastPathComponent]];
    } else {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"DrawingUIBundle" ofType:@"bundle"];
        bundle = [NSBundle bundleWithPath:bundlePath];
    }

    return bundle;
}

UIImage * _Nullable HYBundleImageName(NSString * _Nullable name) {
    
    UIImage *image = [UIImage imageNamed:name inBundle:getAppBundle() compatibleWithTraitCollection:nil];
    if (image == nil) {
        return nil;
    }
    return image;
}

@implementation UIImage (HYAppBundle)

- (instancetype _Nullable)initWithBundleImageName:(NSString * _Nonnull)bundleImageName {
    return [UIImage imageNamed:bundleImageName inBundle:getAppBundle() compatibleWithTraitCollection:nil];
}

@end
