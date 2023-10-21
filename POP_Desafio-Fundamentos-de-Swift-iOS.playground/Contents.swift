import UIKit

enum Materia: String {
    case matematica = "Matemática"
    case portugues = "Português"
    case fisica = "Física"
    case quimica = "Química"
    case biologia = "Biologia"
}
let notasPorMateria: [Materia: [Double]] = [
    .matematica: [20.0, 20.0, 30.0, 30.0],
    .portugues: [18.0, 19.0, 25.0, 30.0],
    .fisica: [17.0, 20.0, 26.0, 24.0],
    .quimica: [15.0, 19.0, 21.0, 29.0],
    .biologia: [19.0, 17.0, 30.0, 30.0]
]

func calcularSomaNotas(materia: [Double]) -> Double {
    return materia.reduce(0, +)
}

func calcularMediaNotas(materia: [Double]) -> Double {
    let totalPontos = Double(materia.reduce(0, +))
    let numeroDeNotas = Double(materia.count)
    return totalPontos / numeroDeNotas
}


class Aluno {
    var nome: String
    var sobrenome: String
    var idade: Int

    init(nome: String, idade: Int, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
    }

    func exibirInformacoes() {
        print("Nome do aluno: \(nome) \(sobrenome)")
        print("Idade: \(idade)")
        print("")
    }
}

class AlunoComMedias: Aluno {
    var notasPorMateria: [Materia: [Double]]

    init(nome: String, idade: Int, notas: [Materia: [Double]], sobrenome: String) {
        self.notasPorMateria = notas
        super.init(nome: nome, idade: idade, sobrenome: sobrenome)
    }

    func exibirNotas() {
        for (materia, notas) in notasPorMateria {
            let soma = calcularSomaNotas(materia: notas)
            let media = calcularMediaNotas(materia: notas)

            print("Matéria: \(materia.rawValue)")
            print("Soma das notas: \(soma)")
            print("Media das notas\(media)")
            print("---")
        }
    }

}

let notasDoAluno: [Materia: [Double]] = [
    .matematica: [20.0, 20.0, 30.0, 30.0],
    .portugues: [18.0, 19.0, 25.0, 30.0],
    .fisica: [17.0, 20.0, 26.0, 24.0],
    .quimica: [15.0, 19.0, 21.0, 29.0],
    .biologia: [19.0, 17.0, 30.0, 30.0]
]

let alunoComMedias = AlunoComMedias(nome: "Lucas", idade: 22, notas: notasDoAluno, sobrenome: "de Jesus")
alunoComMedias.exibirInformacoes()
alunoComMedias.exibirNotas()

