/*
Exercício III

1) Em relação a sintaxe, quais são as variantes na escrita de uma função? Quais 
são as especificidades e em que caso pode-se utilziar cada uma?
*/

void imprimirRespostaExercicioIII() {
  print('''
Em relação a sintaxe, as variantes possíveis na escrita de uma função são:
1. Tipo de retorno:
  Na qual diz se a função retorna ou não um valor e, se retornarm, qual o tipo 
  de valor retornado. Funções com retorno e sem retorno aparecem e praticamento 
  todos os projetos e sua utilidade vão depender da regra de negócio do projeto.
  

  Ex: 
    ------------------------------------------------------
    int funcaoComRetorno() {
      // corpo da função
      return variavelDoInt;
    }
    ------------------------------------------------------

    Em caso de função sem retorno

    ------------------------------------------------------
    void funcaoSemRetorno() {
      // corpo da função      
    }
    -------------------------------'-----------------------

2. Parametros:
  Na qual diz se a função recebe parâmetros ou não.
  Esse parâmetros serão usados para processar alguma operação dentro da função 
  podendo fazer com que o código seja mais divísivel, legível e reutilizado nos 
  projetos.

  Ex:
    ------------------------------------------------------
    tipoDeRetorno funcaoComParametros(int parametro1, int parametro2) {
      // corpo da função
      return variavelDoTipoDeRetorno;      
    }
    ------------------------------------------------------

  Obs: Geralmente são mais reutilizadas as funções que contenham algum tipo de 
  retorno e parâmetros
    
3. Parametros opcionais:
  São funções a qual contenha parâmetros que não precisam ser passados para a 
  função ser executada com êxito. Podendo ser util e diferentes processamentos 
  na qual alguns parâmetros podem alterar o valor de retorno, sendo que não é 
  obrigatório passar os mesmos.

  Ex:
    ------------------------------------------------------
    void funcaoComParametrosOpcionais(int parametro1, [int parametroOpcional1, int parametroOpcional2]) {
      // corpo da função
      return variavelDoTipoDeRetorno;
    }

    funcaoComParametrosOpcionais(10);
    ------------------------------------------------------

4. Parametros nomeados:
  São funções a qual contenha parâmetros que precisam ser passados explicitando 
  o nome de cada parâmetro. Esse parâmetro pode ser obrigatório caso utilize a 
  palavra reservada required ou não caso só seja passado o parâmetro normalmente

  Ex:
    ------------------------------------------------------
    void funcaoComParametrosNomeados(int parametro1, {required int parametroObrigatório, int? parametroOpcional}) {
      // corpo da função
    }

    funcaoComParametrosNomeados(10, parametroObrigatório: 20);
    ------------------------------------------------------

5. Funções anônimas:
  Que são funções sem nome que podem ser atribuídas a variáveis.

  Ex:
    ------------------------------------------------------
    var variavelFuncao = (int parametro1, int parametro2) {
      // Corpo da função
    }
    ------------------------------------------------------
6. Funções de set/get:
  Dentro de uma classe, é possível criar funções de set/get para controlar acessos
  de atributos dentro de uma classe

  Ex:

    ------------------------------------------------------
    class Pessoa {
      int idadePessoa;
      int anoNacimento;

      int get idade {
        return idadePessoa
      }

      void set idade(int anoAtual) {
        idadePessoa = anoAtual - anoNacimento;
      }
    }
    ------------------------------------------------------
''');
}
