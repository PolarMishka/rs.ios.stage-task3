#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *mutableString1 = [string1 mutableCopy];
    NSMutableString *mutableString2 = [string2 mutableCopy];
    NSMutableString *finalString = [[NSMutableString alloc] init];
  
    while (mutableString1.length > 0 || mutableString2.length > 0) {
        
        NSComparisonResult compareString = [mutableString1 compare: mutableString2];
    
        if ((compareString < 0 && mutableString1.length != 0) || (compareString > 0 && mutableString2.length == 0)) {
            [finalString appendString:[mutableString1 substringToIndex:1]];
            [mutableString1 deleteCharactersInRange:NSMakeRange(0, 1)];
            
        } else {
            [finalString appendString:[mutableString2 substringToIndex:1]];
            [mutableString2 deleteCharactersInRange:NSMakeRange(0, 1)];
            
        }
    }
    return finalString;
}

@end
