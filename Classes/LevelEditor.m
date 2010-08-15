#import "LevelEditor.h"
#import "MainMenu.h"


@implementation LevelEditor

+(id) scene
{
	CCScene *scene = [CCScene node];
	LevelEditor *layer = [LevelEditor node];
	layer.anchorPoint = ccp(0.5f	, 0);
	[scene addChild: layer];
	return scene;
	
}

-(id) init
{
	if( (self=[super init] )) {
		
		CCMenuItemFont *itemExit = [CCMenuItemFont itemFromString: @"TEST 1" target:self selector:@selector(onExit:)];
		CCMenuItemFont *itemChooseObj = [CCMenuItemFont itemFromString: @"TEST 2" target:self selector:@selector(onExit:)];
		CCMenuItemFont *itemLoadLevel = [CCMenuItemFont itemFromString: @"TEST 3" target:self selector:@selector(onExit:)];
		CCMenu *menutxt = [CCMenu menuWithItems: itemChooseObj, itemExit, itemLoadLevel, nil];
		[menutxt alignItemsVertically];
		menutxt.position = ccp (160, 420);
		
		[self addChild: menutxt];
		
		
		
	}
	return self;
}


-(void) onExit: (id) sender
{
	
	[[CCDirector sharedDirector] replaceScene:[MainMenu scene]];
	
}


- (void) dealloc
{
	[super dealloc];
}
@end
