#import "Blinker.h"

@implementation Blinker {
}

+ (void)blink {

    UIView *window = [[UIApplication sharedApplication] keyWindow];

    CGSize size = CGSizeMake(20, 20);
    UIView *indicator = [[UIView alloc]
            initWithFrame:CGRectMake(window.frame.size.width - size.width, 20, size.width, size.height)];
    indicator.backgroundColor = [UIColor redColor];

    [window addSubview:indicator];

    [UIView animateWithDuration:0.5 delay:0.2 options:0
                     animations:^{
                         indicator.alpha = 0;
                     } completion:^(BOOL finished) {
        [indicator removeFromSuperview];
    }];

}

@end
