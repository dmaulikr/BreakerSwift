import SpriteKit

class GameScene: SKScene {
    
    // 1 - draw sprite
    let block = SKSpriteNode(color: UIColor.red, size: CGSize(width: 100, height: 30))
    
    override func didMove(to view: SKView) {
        // 2
        backgroundColor = SKColor.black
        
        // 3 - position that sprite
        block.position = CGPoint(x: size.width * 0.5, y: size.height * 0.75)
        
        // 4 - add that sprite to the scene
        addChild(block)
    }
}
