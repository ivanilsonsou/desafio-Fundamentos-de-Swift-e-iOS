import UIKit

struct Materias {
    let name: String
    let nota: Double
}

class CadastroAlunos {
    let codCad: String
    var cadAluno: String
    var cadNome: [Materias]
    var status: SituacaoStatus

    init(codCad: String, cadAluno: String, cadNome: [Materias]) {
        self.codCad = codCad
        self.cadAluno = cadAluno
        self.cadNome = cadNome
        self.status = .recuperacao
    }

    func calculaNotaFinal() -> Double {
        return cadNome.reduce(0) { $0 + $1.nota }
    }

    func recuperacao(recuperacao: SituacaoStatus) {
        self.status = recuperacao
    }
}

enum SituacaoStatus {
    case aprovado
    case recuperacao
    case reprovado
    case dependencia
}

let materia1 = Materias(name: "Lingua Portuguesa", nota: 98.0)
let materia2 = Materias(name: "Matemática", nota: 100.0)
let materia3 = Materias(name: "Física", nota: 90.0)
let materia4 = Materias(name: "Química", nota: 89.0)
let materia5 = Materias(name: "Biologia", nota: 95.0)

let provas = CadastroAlunos(codCad: "202310", cadAluno: "Lucas Pacheco", cadNome: [materia1, materia2, materia3, materia4, materia5])

func printOrderDetails(provas: CadastroAlunos) {
    print("Cod: \(provas.codCad) | Aluno: \(provas.cadAluno)")
    print("")
    print("Resultados: \(provas.status)")
    for product in provas.cadNome {
        print("- \(product.name): \(product.nota)")
    }
        print("O aluno obteve a nota final de: \(provas.calculaNotaFinal()) pontos")
}
provas.recuperacao(recuperacao: .aprovado)
printOrderDetails(provas: provas)
