//
//  DSLogsTests.m
//  DSLogsTests
//
//  Created by Danny Sung on 05/08/2015.
//  Copyright (c) 2014 Danny Sung. All rights reserved.
//

#import <DSLogs.h>

SpecBegin(InitialSpecs)

describe(@"these will pass", ^{
    
    it(@"check macros", ^{
#if defined(WLog)
        expect(1).to.equal(1);
#else
        expect(1).to.equal(0);
#endif

#if defined(ELog)
        expect(1).to.equal(1);
#else
        expect(1).to.equal(0);
#endif

#if defined(DLog)
        expect(1).to.equal(1);
#else
        expect(1).to.equal(0);
#endif
    });
    
    it(@"Very macro side-effects", ^{
        int n=0;
        
        DLog(@"n=%d\n", n++);
        expect(n).to.equal(0);
        
        WLog(@"n=%d\n", n++);
        expect(n).to.equal(1);
        
        ELog(@"n=%d\n", n++);
        expect(n).to.equal(2);
        
    });
});

SpecEnd
