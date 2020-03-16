#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    int billSum = 0;
    
    for(int i = 0; i<bill.count;i++){
        if(i != index) billSum += [[bill objectAtIndex:i] intValue];
    }
    
    if([sum intValue] == billSum/2) return @"Bon Appetit";
    else return [@([sum intValue] - billSum/2) stringValue];
}

@end
