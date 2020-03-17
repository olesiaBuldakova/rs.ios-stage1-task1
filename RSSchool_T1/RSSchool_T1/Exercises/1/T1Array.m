#import "T1Array.h"

@implementation T1Array

-(NSArray *)convertToHappy:(NSArray *)sadArray {
    NSArray * newArray = [NSMutableArray new];
    newArray = [self checkArray:sadArray];
    NSArray * array1 = [NSMutableArray new];
    array1 = [self checkArray:newArray];
    NSArray * resultArray = [NSMutableArray new];
    resultArray = [self checkArray:array1];
    return resultArray;
}

-(NSArray *)checkArray:(NSArray *)sadArray {
    NSMutableArray * temporaryArray = [[NSMutableArray alloc] initWithArray:sadArray];
    for (int i = 0; i < [temporaryArray count]; i++) {
        if (i > 0 &&  i < [temporaryArray count] - 2) {
            int sum = [[temporaryArray objectAtIndex:i - 1] intValue] + [[temporaryArray objectAtIndex:i + 1] intValue];
            if ([[temporaryArray objectAtIndex:i] intValue] > sum) {
                [temporaryArray removeObjectAtIndex:i];
            }
        }
        if ([temporaryArray count] == 3 && [temporaryArray count] != 0) {
            int sum = [[temporaryArray objectAtIndex:0] intValue] + [[temporaryArray objectAtIndex:2] intValue];
         if ([[temporaryArray objectAtIndex:1] intValue] > sum) {
                [temporaryArray removeObjectAtIndex:1];
            }
        }
    }
    return temporaryArray;
}

@end
