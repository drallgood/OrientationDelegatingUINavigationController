//
//  OrientationDelegatingUINavigationController.m
//
//  Created by Patrice Brend'amour on 10/7/14.
//  Copyright (c) 2014 Patrice Brend'amour. All rights reserved.
//

#import "OrientationDelegatingUINavigationController.h"

@implementation OrientationDelegatingUINavigationController

- (BOOL)shouldAutorotate
{
    return [self.topViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 80000
-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    if([self.topViewController respondsToSelector:@selector(viewWillTransitionToSize:withTransitionCoordinator:)]) {
        [self.topViewController viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    }
}
#endif

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    if([self.topViewController respondsToSelector:@selector(willRotateToInterfaceOrientation:duration:)]) {
        [self.topViewController willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    }
}
@end
