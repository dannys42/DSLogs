//
//  DSLogs.h
//  Pods
//
//  Created by Danny Sung on 05/08/2015.
//
//

#ifndef Pods_DSLogs_h
#define Pods_DSLogs_h

/* When releasing an application to the App Store, you should really disable NSLog.
 See this thread for more details:
 http://stackoverflow.com/questions/2025471/do-i-need-to-disable-nslog-before-release-application
 
 The following methods can be used like NSLog
    DLog(Message)  Output: <FILE:LineNum> Message
    ELog(Message)  Output: <FILE:LineNum> ERROR: Message
    WLog(Message)  Output: <FILE:LineNum> WARNING: Message
 In your build settings, under Custom Compiler Flags, add the following to Other C Flags:
    Debug:      -DENABLE_LOGS=1
    Release:    -DENABLE_LOGS=0
 */

#if ENABLE_LOGS

#define DLog( s, ... ) NSLog( @"<%@:%d> %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
/* The while(0) is important here.  Do not change this.  For a more detailed explanation, see my blog:
 http://www.dannysung.com/wmain/software-development/multi-line-macros-in-c/
 */
#define DLog( s, ... ) do { } while(0)
#endif

#define ELog( s, ... ) NSLog( @"<%@:%d> ERROR: %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#define WLog( s, ... ) NSLog( @"<%@:%d> WARNING: %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )


#endif
