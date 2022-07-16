//
//  ViewController.swift
//  PlayWithSceneKit
//
//  Created by 김보영 on 2022/07/15.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    static var selectedColor = UIColor.white
    
    @IBOutlet weak var sceneView: SCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LoadSceneWithCube(at: sceneView)
        
    }
    
    func onTapButton(buttonIndex: Int) {
        // selectedColor의 값을 변경한다
        switch buttonIndex {
        case 1: ViewController.selectedColor = UIColor.systemRed
            break
        case 2: ViewController.selectedColor = UIColor.systemBlue
            break
        case 3: ViewController.selectedColor = UIColor.systemGreen
        default: ViewController.selectedColor = UIColor.white
        }
    }


}

func LoadSceneWithCube(at: SCNView) {
    
    // 1. Load .obj file
    let scene = SCNScene(named: "blue_cube.obj")
    
    // Cube Geometry 생성
    var cube: SCNGeometry? = SCNBox(width: 2.0, height: 2.0, length: 2.0, chamferRadius: 0)
    var cubeNode = SCNNode(geometry: cube)
    
    // Material 생성
    var cubeMaterial = SCNMaterial()
    cubeMaterial.isDoubleSided = false
    cubeMaterial.diffuse.contents = ViewController.selectedColor
    
    // 생성한 Geometry와 Material 붙여주기
    cubeNode.geometry?.materials = [cubeMaterial]
    
    scene?.rootNode.addChildNode(cubeNode)
    
    cubeNode.position = SCNVector3(x: 2, y: 0, z: 0)
    
    /*
    var imageMaterial = SCNMaterial()
    imageMaterial.isDoubleSided = false
    imageMaterial.diffuse.contents = UIImage(named: "myImage")
    var cube: SCNGeometry? = SCNBox(width: 1.0, height: 1.0, length: 1, chamferRadius: 0)
    var node = SCNNode(geometry: cube)
    node.geometry?.materials = [imageMaterial]
    */
    
    // 2. Add camera node
    let cameraNode = SCNNode()
    cameraNode.camera = SCNCamera()
    cameraNode.camera?.fieldOfView = 60.0
    
    // 3. Place camera
    cameraNode.position = SCNVector3(x: 0, y: 0, z: 14)
    
    // 4. Set camera on scene
    scene?.rootNode.addChildNode(cameraNode)
    
    // 5. Add light
    let lightNode = SCNNode()
    lightNode.light = SCNLight()
    lightNode.light?.type = .omni
    lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
    scene?.rootNode.addChildNode(lightNode)
    
    // 6. Add ambient light
    let ambientLightNode = SCNNode()
    ambientLightNode.light = SCNLight()
    ambientLightNode.light?.type = .ambient
    ambientLightNode.light?.color = UIColor.darkGray
    scene?.rootNode.addChildNode(ambientLightNode)

    // 7. Allow user to manipulate camera
    at.allowsCameraControl = true
    
    // 8. Show statistics
    at.showsStatistics = true
    
    // 배경색 지정
    at.backgroundColor = UIColor.white
    
    // Set scene settings
    at.scene = scene
}

