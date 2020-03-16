#import "BillCounter.h"

@implementation BillCounter
NSString *result;

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
  NSNumber *k = [bill objectAtIndex: index];
  NSMutableArray * mutableBill = [NSMutableArray arrayWithArray:bill];
  if (k != nil) {
    [mutableBill removeObjectAtIndex:index];
    int actual = [[mutableBill valueForKeyPath: @"@sum.self"] intValue] / 2;
    if ([sum intValue] > actual) {
      int dif = [sum intValue] - actual;
      result = [NSString stringWithFormat:@"%d",dif];
    } else {
      result = @"Bon Appetit";
    }
  } else {
      result = @"Bon Appetit";
  }
  return result;
}

@end
