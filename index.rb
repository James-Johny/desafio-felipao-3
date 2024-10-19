class Heroi
    TIPOS = {
        'guerreiro' => 'espada',
        'mago' => 'magia',
        'monge' => 'artes marciais',
        'ninja' => 'shuriken'
    }
    
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
        @tipo = TIPOS.keys.sample
        @ataque = TIPOS[@tipo]
    end

    def exibir_dados
        "Nome: #{@nome} \nIdade: #{@idade} \nTipo: #{@tipo}"
    end

    def atacar
        "O #{@tipo} #{@nome} atacou usando #{@ataque}"
    end
end


heroi1 = Heroi.new('James', 3)
puts heroi1.atacar

heroi2 = Heroi.new('Tatu', 3)
puts heroi2.atacar

puts "O #{heroi1.instance_variable_get(:@tipo)} #{heroi1.instance_variable_get(:@nome)} atacou o #{heroi2.instance_variable_get(:@tipo)} #{heroi2.instance_variable_get(:@nome)} usando #{heroi1.instance_variable_get(:@ataque)}"
puts "O #{heroi2.instance_variable_get(:@tipo)} #{heroi2.instance_variable_get(:@nome)} revidou o ataque do #{heroi1.instance_variable_get(:@tipo)} #{heroi1.instance_variable_get(:@nome)} usando #{heroi2.instance_variable_get(:@ataque)}"