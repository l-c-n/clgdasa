#language: pt

Funcionalidade: Dasa Jornada Paciente
    Sendo um paciente
    Quero consultar o laboratório Delboni Auriemo
    
    Cenário: Acessar site Dasa

        Dado que acesso a página inicial da Dasa
            E paro mouse em Somos Dasa
            E clico em Nossas Marcas
        Quando seleciono a regiao SP
            E o laboratorio DelboniAuriemo
        Então sou direcionado para o site Delboni Auriemo 
