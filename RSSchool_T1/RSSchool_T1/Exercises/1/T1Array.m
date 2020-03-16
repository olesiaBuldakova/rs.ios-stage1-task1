#import "T1Array.h"

@implementation T1Array

- (NSArray *)convertToHappy:(NSArray *)sadArray {
  NSMutableArray * result = [NSMutableArray new];
   [result addObject: [sadArray firstObject]];
   unsigned long count = [sadArray count] - 1;
   for (int i=1; i<count; i++) {
     int sum = [[sadArray objectAtIndex:i - 1] intValue] + [[sadArray objectAtIndex:i + 1] intValue];
      NSLog(@"index = %i", i);
     if ([[sadArray objectAtIndex:i] intValue] < sum) {
       [result addObject: [result objectAtIndex:i]];
     }
   }
   [result addObject: [sadArray lastObject]];
  return result;
}
@end
