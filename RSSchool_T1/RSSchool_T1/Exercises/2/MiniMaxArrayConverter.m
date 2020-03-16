#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

NSNumber *maxVulue;
NSNumber *minVulue;

NSNumber *maxVulue;
NSNumber *minVulue;
NSNumber *arraySum;

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
  maxVulue = @0;
  minVulue = [array valueForKeyPath: @"@sum.self"];
  NSMutableArray * result = [NSMutableArray new];
  for (int i=0; i<[array count]; i++) {
    NSMutableArray * temporaryArray = [[NSMutableArray alloc] initWithArray:array];
    [temporaryArray removeObjectAtIndex:i];
    arraySum = [temporaryArray valueForKeyPath: @"@sum.self"];
    if (arraySum.intValue > maxVulue.intValue) {
      maxVulue = arraySum;
    }
    if (arraySum.intValue < minVulue.intValue) {
      minVulue = arraySum;
    }
  }
  [result addObject: minVulue];
  [result addObject:maxVulue];
  return result;
}

@end
