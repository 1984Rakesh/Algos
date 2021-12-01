class Program {
    func arrayOfProducts(_ array: [Int]) -> [Int] {
        var products : [Int] = [Int]()
        for (i_idx, _) in array.enumerated() {
            products.append(1)
            for(j_idx, j) in array.enumerated() {
                if i_idx != j_idx {
                    products[i_idx] = products[i_idx] * j
                }
            }
        }
        return products
    }
}


let prog = Program()
let prods = prog.arrayOfProducts([5, 1, 4, 2])
print(prods)

