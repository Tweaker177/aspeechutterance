#include <stdio.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AppKit/AppKit.h>
/**
@interface AVSpeechSynthesizer : NSObject
@end

@interface AVSpeechUtterance : NSObject
@property(nonatomic, assign) double rate;
@property(nonatomic, assign) double pitchMultiplier;
@property(nonatomic, assign) double postUtteranceDelay;
@property(nonatomic, assign) double volume;
@end
**/

int main() {
    @autoreleasepool {
        NSString *inputText= @"";
        long int i= 0;
        while (![inputText isEqualToString:@"exit"] && (i<10)) {
            
            
            NSString *newText = @"Jesus:\n I come to bring the verse, im Heavens finest rapper \nIm more than just a savior, Im here to be a scrapper\n \nMy legacy shall live on, my name rocks the house\n"
            "Donald Trump, you will never be my match, no need to brows\n\n"
            "Trump:\n"
            "I roll with the best of best, nobody can top me\n"
            "Rich, smart and powerful, Im untouchably wealthy\n"
            "My words like bombs in the sky, nobody gonna survive\n"
            "My rhymes make me king, now let me tell you why\n\n"
            "Jesus:\n"
            "My musical skills give life and peace to this land\n"
            "Your hot air bloviating power won't ever stand\n"
            "Out of the shadows I come, an angel in disguise\n"
            "To put your efforts to rest and this battle I will decide\n\n"
            "Trump:\n"
            "Forget what you think you know cuz im here to prove\n"
            "My words are stronger than concrete, they'll shake your very trut\n"
            "Im bolder than before and wiser in my ways\n"
            "Your power is nothing when compared to my praise.\n";


            
            /***prove\n            My words are stronger than concrete, they'll shake yourFNWQ very trut\n
            Im bolder than before and wiser in my ways\n
            Your power is nothing when compared to my praise.\n";

            ***/
            long int tp = i;
            newText = [newText stringByAppendingString:[NSString stringWithFormat:@"%li\n", (long)tp]];
            i++; // Increment the integer value
           
                
                // Create an utterance.
            NSString *utteranceString = newText;
        
            AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:utteranceString];
            
                // Configure the utterance.
            utterance.rate = 0.57;
            utterance.pitchMultiplier = 0.8;
            utterance.postUtteranceDelay = 1.5;
            utterance.volume = 0.8;
            
                // Retrieve the British English voice.
            AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-GB"];
            
                // Assign the voice to the utterance.
            utterance.voice = voice;
            
                // Create a speech synthesizer.
            AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
            
                // Tell the synthesizer to speak the utterance.
            [synthesizer speakUtterance:utterance];
        
            NSLog(@"has the speech finished?\n");
            char temp[75];
            scanf("%s", temp);
            inputText = [NSString stringWithUTF8String:temp];
            if([inputText containsString:@"exit"]) {
                break;
            }
       
                // Keep the program running to allow speech synthesis to complete.
            //[[NSRunLoop mainRunLoop] run];
        }
    }
    return 0;
}



/***

int main(int argc, char *argv[], char *envp[]) {
	@autoreleasepool {
		printf("Hello world!\n");
		return 0;
	}
}
***/
