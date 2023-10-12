// Criar um projeto no playground usando o Xcode

import UIKit
print("Desafio de projeto: Fundamentos de Swift e iOS ")

// Definir uma constante com o valor incial "Steve"

let firstName = "Steve"

// Definir uma variável do tipos String opcional e com valor inicial "Jobs"

var lastName: String? = "Jobs"

// Escrever um print fazendo interpolação com a constante e variável, definindo um valor default para a variável opcinal como "Wozniak"

print("\(firstName) \(lastName ?? "Wozniak")")

// Fazer um Optional Binding na variável e dentro da condição fazer outro print com interpolação entre a constante e variável que foi desembrulhada.

if let name = lastName {
    print(firstName, name)
}
