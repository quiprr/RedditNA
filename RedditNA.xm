#import <Foundation/Foundation.h>
@interface Post: NSObject
@end
%hook Post
- (BOOL)isHidden {
    return [self isKindOfClass:[%c(AdPost) class]] ? YES : %orig;
}
%end
