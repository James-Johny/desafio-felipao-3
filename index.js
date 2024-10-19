class Heroi {
    static TIPOS = {
        'guerreiro': 'espada',
        'mago': 'magia',
        'monge': 'artes marciais',
        'ninja': 'shuriken'
    };

    constructor(nome, idade) {
        this.nome = nome;
        this.idade = idade;
        this.tipo = Object.keys(Heroi.TIPOS)[Math.floor(Math.random() * Object.keys(Heroi.TIPOS).length)];
        this.ataque = Heroi.TIPOS[this.tipo];
    }

    exibirDados() {
        return `Nome: ${this.nome}\nIdade: ${this.idade}\nTipo: ${this.tipo}`;
    }

    atacar() {
        console.log(`O ${this.tipo} ${this.nome} atacou usando ${this.ataque}`);
    }
}

const heroi1 = new Heroi('James', 33);
console.log(heroi1.exibirDados());
heroi1.atacar();

const heroi2 = new Heroi('Tatu', 5);
console.log(heroi2.exibirDados());
heroi2.atacar();
