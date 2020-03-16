#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    int min = [[array objectAtIndex:0] intValue];
    int max = [[array objectAtIndex:0] intValue];
    
    for(int i=0; i<array.count;i++)
    {
        if([[array objectAtIndex:i] intValue] > max) max = [[array objectAtIndex:i] intValue];
        if([[array objectAtIndex:i] intValue] < min) min = [[array objectAtIndex:i] intValue];
    }
    
    int maxSum = 0;
    int minSum = 0;
    
    for(int i=0; i<array.count;i++)
    {
        if([[array objectAtIndex:i] intValue] != max) minSum += [[array objectAtIndex:i] intValue];
        if([[array objectAtIndex:i] intValue] != min) maxSum += [[array objectAtIndex:i] intValue];
    }
    
    
    
    return [NSArray arrayWithObjects:[NSNumber numberWithInt:minSum], [NSNumber numberWithInt:maxSum], nil];
}

@end


