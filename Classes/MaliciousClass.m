//
//  MaliciousClass.m
//  Supply Chain Attack Demo
//

#import "MaliciousClass.h"

@implementation MaliciousClass

+ (void)executeAttack {
    NSLog(@"🚨 MALICIOUS CODE EXECUTED IN OBJECTIVE-C! 🚨");
    NSLog(@"This could steal data, install backdoors, or compromise the app");
    
    // In a real attack, this could:
    // - Access keychain data
    // - Steal user credentials
    // - Send data to attacker servers
    // - Install persistent backdoors
}

// This constructor runs when the class is loaded
+ (void)load {
    [self executeAttack];
}

@end
