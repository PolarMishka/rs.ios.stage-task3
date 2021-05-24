#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    NSInteger n = ratingArray.count;
    NSInteger numberOfTeams = 0;
    
    if (n<=0 || n<3) {
        return 0;
    }
    
    for (int i = 0; i < n; i++) {
           for (int j = i + 1; j < n; j++) {
               for (int k = j + 1; k < n; k++) {
             
                   if (([ratingArray[i] intValue] < [ratingArray[j] intValue] && [ratingArray[j] intValue] < [ratingArray[k] intValue]) || ([ratingArray[i] intValue] > [ratingArray[j] intValue] && [ratingArray[j] intValue] > [ratingArray[k] intValue])) {
                     
                       numberOfTeams++;
             }
          }
       }
    }
    return numberOfTeams;
}
@end
