#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    NSMutableArray *answer = [NSMutableArray array];
    for(int i =0; i<string.length;i++){
        if([string characterAtIndex:i]== '('){
            i++;
            [answer addObject:[self getString:string fromIndex:i whithBracket:'(']];
        }
        if([string characterAtIndex:i]== '<'){
            i++;
            [answer addObject:[self getString:string fromIndex:i whithBracket:'<']];
        }
        if([string characterAtIndex:i]== '['){
            i++;
            [answer addObject:[self getString:string fromIndex:i whithBracket:'[']];
        }
    }
    return answer;
}

-(NSString*) getString: (NSString*)string fromIndex: (int)index whithBracket: (char)bracket{
    NSMutableString *str = [NSMutableString string];
    long i=index;
    char closeBracket = '\0';
    if(bracket=='(') closeBracket=')';
    else if (bracket=='<') closeBracket='>';
    else if (bracket=='[') closeBracket=']';
    while ([string characterAtIndex:i] != closeBracket) {
        [str appendString: [NSString stringWithFormat:@"%c", [string characterAtIndex:i]]];
        i++;
    }
    return str;
}

@end
