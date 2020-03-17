#import "PalindromeSolver.h"

@implementation PalindromeSolver

- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    int lo = 0;
    int hi = [n intValue] - 1;
    int operation = [k intValue];
    NSMutableArray *string = [NSMutableArray array];
    int diff = 0;
        for (int i = 0; i < [n intValue]; i++) {
            NSString *character = [s substringWithRange:NSMakeRange(i, 1)];
            [string addObject:character];
        }
    for (int i = 0; i < [n intValue] /2; i++) {
        int j = [n intValue] - 1;
        if (string[i] != string[j]){
            diff++;
        }
        j--;
    }

    if (diff > operation){
        return @"-1";
    }

    while(hi >= lo){
        if (operation <= 0){
            break;
        }

        if (string[lo] == string[hi]){
            if (operation > 1 && (operation - 2) >= diff && [string[lo] intValue] != 9){
                string[lo] = @"9";
                string[hi] = @"9";
                operation -= 2;
            }
        }
        else {
            if (operation > 1 && (operation - 2) >= diff - 1){
                if ([string[lo] intValue] != 9){
                    string[lo] =  @"9";
                    operation--;
                }
                if ([string[hi] intValue] != 9){
                    string[hi] = @"9";
                    operation--;
                }
            } else {
                if ([string[lo] intValue] > [string[hi] intValue]){
                    string[hi] = string[lo];
                } else {
                    string[lo] = string[hi];
                }
                operation--;
            }
            diff--;
        }
        if (lo == hi && operation > 0){
            string[lo] = @"9";
            operation--;
        }
        lo++;
        hi--;
    }
    NSString *resultArray = [string componentsJoinedByString:@""];
    NSString * result;
    if ([self isPalindrome:resultArray]) {
        result = resultArray;
    } else {
        result = @"-1";
    }
       return result;
    }

-(BOOL) isPalindrome: (NSString *)s {
        int i = 0;
        unsigned long n = [s length] - 1;
    NSMutableArray *string = [NSMutableArray array];
        for (int i = 0; i < [s length]; i++) {
            NSString *character = [s substringWithRange:NSMakeRange(i, 1)];
            [string addObject:character];
        }

        while(n > i){
            if (string[i] == string[n]){
                i++; n--;
            } else {
                return NO;
            }
        }
        return YES;
}
@end
