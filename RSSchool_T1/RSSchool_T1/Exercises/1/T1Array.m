#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    if(sadArray.count == 0) return @[];
    NSMutableArray *happyArray = [NSMutableArray array];
    [happyArray addObjectsFromArray:sadArray];
    for(int j = 0; j < sadArray.count-2; j++){
        for (int i = 1;i < happyArray.count-1; i++){
            if([[happyArray objectAtIndex:i] intValue] > [[happyArray objectAtIndex:i-1] intValue] + [[happyArray objectAtIndex:i+1] intValue]){
                NSLog (@"sad number [%d]", [[happyArray objectAtIndex:i] intValue]);
                [happyArray removeObjectAtIndex:i];
            }
        }
    }
    return happyArray;
}
@end
