## Documentação Simplificada do Modelo Relacional

*Projeto:* Abandono Zero

*Data:* 2024-05-11

*Autor:* Aluno Tainá Cortez

*Objetivo:* Descrever o modelo relacional do projeto de forma resumida e simplificada.

    Um modelo relacional é uma técnica usada para organizar dados em um banco de dados. Ele usa tabelas para representar entidades e atributos, relacionando essas tabelas com chaves estrangeiras. Assim, a estrutura relacional no projeto "Abandono Zero" ajuda a organizar informações dos usuários e formulários, permitindo uma consulta e manipulação de dados de maneira prática e eficiente.

## Entidades

**Tabela: users**: Armazena todas as informações essenciais do usuário.
- **Atributos:**
  - id: Identificador único do usuário associado.
  - name: Nome do usuário.
  - social_name: Nome social.
  - password: Senha.
  - age: Idade.
  - gender: Gênero.
  - education: Escolaridade.
  - housing_type: Tipo de moradia.
  - family_structure: Constituição familiar.
  - income: Renda.
  - people_in_house: Quantidade de pessoas que vivem na casa.
  - address: Endereço.

**Tabela: check_box**: Armazena informações do usuário para contatos posteriores.
- **Atributos:**
  - id: Identificador único da tabela check box.
  - users_id: Identificador do usuário associado.
  - full_name: Nome completo.
  - email: E-mail do usuário.
  - cellphone: Telefone para contato.

**Tabela: does_not_want_dog**: Armazena as perguntas do formulário de quem não quer ter/conviver com cães e nunca conviveu com eles.
- **Atributos:**
  - id: Identificador único do formulário “Não tenho e não quero ter cão”.
  - users_id: Identificador do usuário associado.
  - reason_why_not: Razão de não querer cachorro.

**Tabela: already_had**: Armazena as perguntas do formulário de quem teve ou conviveu com cães.
- **Atributos:**
  - id: Identificador único do formulário “Já tive cachorro”.
  - users_id: Identificador do usuário associado.
  - dog_name: Nome do cachorro.
  - belongs_to: A quem o cachorro pertence.
  - dog_personality: Personalidade do cachorro.
  - time_spent: Quanto tempo esteve com o cachorro.
  - first_dog: É o primeiro cachorro?
  - had_other_pets: Já teve outros animais de estimação.
  - age_on_arrival: Idade na chegada do cachorro.
  - was_neutered: Indica se o cachorro foi castrado.
  - breed: Raça do cachorro.
  - origin: Origem do cachorro.
  - pet_value: Valor do cachorro.
  - dog_reason_id: Motivo para ter um cachorro.
  - dog_characteristics: Características do cão.
  - who_decided_name: Quem decidiu o nome do cachorro.
  - liked_most: O que mais gostou no cachorro.
  - liked_least: O que menos gostou no cachorro.
  - vet_visit: Visita ao veterinário.
  - stopped_living_together: Quando deixou de conviver.
  - would_have_another_dog: Teria outro cachorro?
  - reason_to_have_or_not_have: Motivo para ter ou não ter um cachorro.

**Tabela: has_dog**: Armazena as perguntas do formulário de quem tem cão.
- **Atributos:**
  - id: Identificador único para o formulário “Tenho cachorro”.
  - users_id: Identificador do usuário associado.
  - checkbox_id: Identificador do checkbox.
  - dog_name: Nome do cachorro.
  - neutered: É castrado?
  - time_with_dog: Tempo que está com você.
  - first_dog: É o primeiro cão?
  - has_other_pets: Quantos outros pets existem na casa?
  - dog_age: Idade do cão.
  - breed: Raça do cão.
  - acquired_from: Onde conseguiu?
  - paid_to_acquire: Pagou para adquirir?
  - age_when_arrived: Idade que ele chegou na casa.
  - personality: Personalidade.
  - dog_reason_id: Razão de ter um cachorro.
  - characteristics: Características que agradam.
  - who_decided: Pessoas envolvidas na decisão.
  - cannot_keep_dog: Cão que não pode manter em casa.
  - veterinarian: Idas ao veterinário.
  - dog_description: Descrição do cachorro.

**Tabela: wants_dog**: Armazena as perguntas do formulário de quem nunca teve/não conviveu, mas quer ter cães.
- **Atributos:**
  - id: Identificador único do formulário “Quero ter um cachorro”.
  - users_id: Identificador do usuário associado.
  - check_box_id: Identificador do checkbox.
  - physical_characteristics: Características físicas.
  - dog_reason_id: Motivo para ter um cachorro.
  - dog_name: Nome do cachorro desejado.
  - buy_or_adopt: Comprar ou adotar.
  - when_to_include: Já sabe quando vai incluí-lo na casa?
  - dog_personality: Personalidade do cachorro desejado.
  - pet_expenses: Despesas com o cachorro.

**Tabela: dog_reason**: Armazena as opções relacionadas às razões para ter tido, ter ou querer ter cães. Criada para permitir a seleção de múltiplas alternativas em questões desse tipo.
  - **Atributos:**
  - id: Identificador único do motivo para ter um cachorro.
  - company_of_children: Companhia para crianças.
  - adult_supervision: Acompanhamento para adulto(s).
  - appearance: Por sua aparência.
  - company_of_another_dog: Companhia para um cachorro que já mora na casa.
  - children_responsibility: Ensinar responsabilidade às crianças.
  - friends_had: Porque amigos já tinham.
  - residence_protection: Para proteção da residência.
  - help_friend: Para ajudar um amigo/conhecido que não conseguiu ficar com o cachorro.
  - save_life: Para salvar sua vida.
  - immediate_charm: Ele/ela era fofo e estava disponível ou foi um encantamento imediato.
  - he_chose_me: Ele me escolheu.
  - present: Ele/ela foi um presente.
  - others: Outros, descreva os motivos/circunstâncias.


## Relacionamentos

   Os relacionamentos entre tabelas em um banco de dados são essenciais porque definem como os dados estão relacionados e interagem entre si. Eles garantem que os dados estejam corretos e otimizam as consultas, permitindo uma melhor análise.

- Cada usuário pode ter apenas um registro na tabela "users" (1:1).
- Um usuário pode não ter respondido a algum formulário.
- Após um determinado período, um usuário pode responder ao mesmo formulário novamente (1:N).
- Todos os quatro formulários (presente, passado, futuro e nulo) estão relacionados à tabela "users" através da chave estrangeira "id_users".
- O formulário "check_box" também se relaciona com a tabela "users" através da chave estrangeira "id_users".

- Os formulários "Tenho Cão" e "Quero Ter Cão" estão relacionados à tabela "check_box" através da chave estrangeira "id_check_box".

-  Os formulários "Já Tive Cão", "Tenho Cão" e "Quero Ter Cão" estão relacionados à tabela "dog_reason" através da chave estrangeira "id_dog_reason".

## Regras de Negócio

- Todos os campos obrigatórios devem ser preenchidos.
- As informações devem ser consistentes entre os formulários.
- As informações dos usuários são confidenciais.
- Existem campos não obrigatórios.
- O usuário  não pode responder mais de um dos 4 formulários principais em um mesmo período.
- O usuário não tem acesso aos dados armazenados.
- Os usuários devem atualizar suas respostas de tempos em tempos. 


## Considerações Finais:

   A estruturação do modelo relacional é muito importante para organizar e gerenciar as relações entre as entidades, atributos, informações dos usuários e suas respostas nos formulários do projeto Abandono Zero. E vale lembrar, que o modelo relacional está sujeito a alterações até sua versão final.



