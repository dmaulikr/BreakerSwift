import SpriteKit

class GameScene: SKScene {
    

    
    
    // 1 - create sprite
    let block = SKSpriteNode(color: UIColor.red, size: CGSize(width: 103, height: 30))
    
    
    override func didMove(to view: SKView) {
        // 2
        backgroundColor = SKColor.black
        
        // say we want the blocks to be 4 across, so we need a 25% width of current screen.
        // and 5% of current screen height
        let blockWidth = size.width * 0.25
        let blockHeight = size.height * 0.05
        block.size.width = blockWidth
        block.size.height = blockHeight
        
        // calc starting block pos
        let firstBlockPosX = blockWidth / 2
        let firstBlockRowPosY = size.height * 0.75
        
        // 3 - position that sprite
        block.position = CGPoint(x: firstBlockPosX, y: firstBlockRowPosY)
        
        // 4 - add that sprite to the scene
        addChild(block)
        
        // just checking for some info:
        print("hello world")
        print(size.width)
        print(size.height)
        // so this spits out "points" not pixels. On retine devices, a point appears to be 2x2 pixels. 1x1 on non-retina devices.
    }
}
