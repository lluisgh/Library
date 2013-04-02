#import "Magazine.h"


@interface Magazine ()

// Private interface goes here.

@end


@implementation Magazine

// Custom logic goes here.
- (BOOL)isValidISBN13
{
    NSInteger check = 0;
    
    for (int i = 0; i < 12; i += 2) {
        check += [[[self isbn] substringWithRange:NSMakeRange(i, i + 1)] integerValue];
    }
    
    for (int i = 1; i < 12; i += 2) {
        check += [[[self isbn] substringWithRange:NSMakeRange(i, i + 1)] integerValue] * 3;
    }
    
    check += [[[self isbn] substringFromIndex:12] integerValue];
    
    return check % 10 == 0;
}

@end
