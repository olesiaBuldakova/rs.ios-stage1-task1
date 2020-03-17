#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray * result = [NSMutableArray new];

    NSString * firstSet = [self findSubstring:string character:@"<>"];
    NSString * secondSet = [self findSubstring:string character:@"[]"];
    NSString * thirdSet = [self findSubstring:string character:@"()"];
    
    [result addObject:firstSet];
    [result addObject:secondSet];
    [result addObject:thirdSet];
    return result;
}

-(NSString *)findSubstring: (NSString *)string character: (NSString *)value {
  NSCharacterSet *delimiters = [NSCharacterSet characterSetWithCharactersInString:value];
  NSArray *splitString = [string componentsSeparatedByCharactersInSet:delimiters];
  NSString *substring = [splitString objectAtIndex:1];
  return substring;
}
@end
