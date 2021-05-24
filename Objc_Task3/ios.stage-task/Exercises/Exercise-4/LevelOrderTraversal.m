#import "LevelOrderTraversal.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    
    NSMutableArray *almostFinalArray = [[NSMutableArray alloc] init];
    
    
    for (int i=0; i<tree.count; i++) {
        
        [almostFinalArray addObject:@[tree[i]]];
    }
    
    for (int i=0; i<almostFinalArray.count; i++) {
        
        if ([almostFinalArray[i] isEqual: @[[NSNull null]]]) {
            [almostFinalArray removeObjectAtIndex:i];
        }
        
    }
    
    
    return almostFinalArray;
}
