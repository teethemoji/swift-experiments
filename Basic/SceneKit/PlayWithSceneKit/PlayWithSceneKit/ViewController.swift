//
//  ViewController.swift
//  PlayWithSceneKit
//
//  Created by 김보영 on 2022/07/15.
//

import UIKit
import SceneKit

var selectedColor = UIColor.systemBlue

class ViewController: UIViewController {
    
    var leftCubeNode = createCubeNode()
    var rightCubeNode = createCubeNode()
    
    @IBOutlet weak var sceneView: SCNView!
    
    @IBAction func redButton(_ sender: UIButton) {
        onTapButton(buttonIndex: 1)
        DebugCheckIfButtonWorks()
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        onTapButton(buttonIndex: 2)
        DebugCheckIfButtonWorks()
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        onTapButton(buttonIndex: 3)
        DebugCheckIfButtonWorks()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        LoadSceneWithCube(at: sceneView)
        
        // MARK: - Load Scene
        // 1. Load .obj file
        let scene = SCNScene()
        
        scene.rootNode.addChildNode(self.leftCubeNode)
        
        scene.rootNode.addChildNode(self.rightCubeNode)
        
        self.leftCubeNode.position = SCNVector3(x: -2, y: 0, z: 0)
        self.rightCubeNode.position = SCNVector3(x: 2, y: 0, z: 0)
        
        // 2. Add camera node
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.camera?.fieldOfView = 60.0
        
        // 3. Place camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 14)
        
        // 4. Set camera on scene
        scene.rootNode.addChildNode(cameraNode)
        
        // MARK: - Set Environment
        
        // 5. Add light
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene.rootNode.addChildNode(lightNode)
        
        // 6. Add ambient light
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.darkGray
        scene.rootNode.addChildNode(ambientLightNode)
        
        // 배경색 지정
        sceneView.backgroundColor = UIColor.white
        
        // 7. Allow user to manipulate camera
        sceneView.allowsCameraControl = true
        
        // 8. Show statistics
        sceneView.showsStatistics = true
                
        // Set scene settings
        sceneView.scene = scene
        
    }
    
    func onTapButton(buttonIndex: Int) {
        switch buttonIndex {
        case 1: self.leftCubeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.systemRed
            break
        case 2: self.leftCubeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.systemBlue
            break
        case 3: self.leftCubeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.systemGreen
            break
        default: self.leftCubeNode.geometry?.firstMaterial?.diffuse.contents = UIColor.white
            break
        }
    }
    
    // 굳이 함수로 만들 필요가 없는 듯
    func LoadSceneWithCube(at: SCNView) {
        
        // 1. Load .obj file
        let scene = SCNScene(named: "blue_cube.obj")
        // 이름은 블루 큐브인데 막상 material은 적용이 되어 있지 않아서 그레이 큐브인 블루 큐브
        
        let leftCubeNode = createCubeNode()
        scene?.rootNode.addChildNode(leftCubeNode)
        
        let rightCubeNode = createCubeNode()
        scene?.rootNode.addChildNode(rightCubeNode)
        
        leftCubeNode.position = SCNVector3(x: -2, y: 0, z: 0)
        rightCubeNode.position = SCNVector3(x: 2, y: 0, z: 0)
        
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
        
        at.backgroundColor = UIColor.white
        
        // Set scene settings
        at.scene = scene
    }
    
    func DebugCheckIfButtonWorks() {
        print("Button has been clicked")
    }
}

func createCubeNode() -> SCNNode {
    
    let cube: SCNGeometry? = SCNBox(width: 2.0, height: 2.0, length: 2.0, chamferRadius: 0)
    
    // Material 생성
    let cubeMaterial = SCNMaterial()
    cubeMaterial.isDoubleSided = false
    cubeMaterial.diffuse.contents = selectedColor
    
    let cubeNode = SCNNode(geometry: cube)
    
    // 생성한 Geometry와 Material 붙여주기
    cubeNode.geometry?.materials = [cubeMaterial]
    
    return cubeNode
}
