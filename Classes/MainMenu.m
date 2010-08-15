#import "MainMenu.h"
#import "LevelEditor.h"

@implementation MainMenu

+(id) scene
{
	CCScene *scene = [CCScene node];
	MainMenu *layer = [MainMenu node];
	[scene addChild: layer];
	return scene;
}

-(id) init
{
	if( (self=[super init] )) {
		
		CCMenuItemFont *item1 = [CCMenuItemFont itemFromString: @"PLAY GAME" target:self selector:@selector(onLevelEditor:)];
		CCMenuItemFont *item2 = [CCMenuItemFont itemFromString: @"LEVEL EDITOR" target:self selector:@selector(onLevelEditor:)];
		
		CCMenu *menu = [CCMenu menuWithItems: item1, item2, nil];
		[menu alignItemsVertically];
		
		[self addChild: menu];
		
	}
	return self;
}


-(void) onLevelEditor: (id) sender
{
	[[CCDirector sharedDirector] replaceScene: [CCFadeTRTransition transitionWithDuration:1.0f scene:[LevelEditor scene]]];
}

- (void) dealloc
{
	
	[super dealloc];
}
@end
