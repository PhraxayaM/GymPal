import UIKit

var str = "Hello, playground"



class TreeNode<T> {

    var children: [TreeNode] = []
    var data: T
    
    
    
    init(_ data: T) {
        self.data = data
    }
    
    public func add(_ child: TreeNode) {
        children.append(child)
    }
    
}

extension TreeNode {
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}

extension TreeNode where T: Equatable {
    func search(value: T) -> TreeNode?  {
        
        var resultNode: TreeNode?
          
        forEachDepthFirst { (node) in
            if value == node.data {
                resultNode = node
            }
        }
        
        return resultNode
        
    }

}

let animals = TreeNode("Animals")
let vertebrates = TreeNode("Vertebrates")
let invertebrates = TreeNode("Invertebrates")
let fish = TreeNode("Fish")
let reptiles = TreeNode("Reptiles")
let birds = TreeNode("Birds")
let mammals = TreeNode("Mammals")
let amphibians = TreeNode("Amphibians")
let protozoa = TreeNode("Protozoa")
let flatworms = TreeNode("Flatworms")
let annelidWorms = TreeNode("Annelid Worms")
let echinoderms = TreeNode("Echinoderms")
let coelenterates = TreeNode("Coelenterates")
let anthropods = TreeNode("Anthropods")
let arachnids = TreeNode("Arachnids")
let crustaceans = TreeNode( "Crustaceans")
let insects = TreeNode("Insects")
let myriapods = TreeNode("Myriapods")


animals.add(vertebrates)
animals.add(invertebrates)
invertebrates.add(anthropods)


//animals.add(invertebrates)
vertebrates.add(fish)
vertebrates.add(reptiles)
vertebrates.add(birds)
vertebrates.add(mammals)
vertebrates.add(amphibians)

invertebrates.add(protozoa)
invertebrates.add(flatworms)
invertebrates.add(annelidWorms)
invertebrates.add(echinoderms)
invertebrates.add(coelenterates)

anthropods.add(arachnids)
anthropods.add(crustaceans)
anthropods.add(insects)
anthropods.add(myriapods)


animals.forEachDepthFirst{print($0.data)}

if let result = animals.search(value: "Insects") {
    print(result.data)
} else {
    print("Not found")
}





