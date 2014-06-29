#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

//          this didnt work bcuz i frgt to put in the dash (-)
//          (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
//this will get called every time the player touches the screen
//}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // this will get called every time the player touches the screen
    [character flap];
}

@end
