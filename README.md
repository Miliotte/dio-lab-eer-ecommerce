# 🏫 Projeto de Universidade – E-commerce

Este projeto foi desenvolvido como parte de um trabalho universitário com o objetivo de criar o modelo lógico e físico de um **sistema de e-commerce**, contemplando clientes (PJ e PF), pedidos, pagamentos, entregas, fornecedores e vendedores terceirizados.

---

## 📘 Objetivo

O sistema visa simular o funcionamento básico de um e-commerce, desde o cadastro de clientes até a entrega do produto.  
Além disso, foram implementadas **regras de negócio reais** para representar situações comuns em sistemas comerciais.

---

## 🧩 Modelagem do Sistema

### 🔹 Entidades Principais

#### **Cliente**
- Um cliente pode ser **Pessoa Física (PF)** ou **Pessoa Jurídica (PJ)**, mas **não ambos**.  
- Cada cliente pode realizar vários pedidos.

**Atributos:**
- `idCliente` (PK)
- `nome`
- `identificacao` (CPF/CNPJ)
- `tipoCliente` (ENUM: 'PF', 'PJ')
- `endereco`

---

#### **Pedido**
- Cada pedido pertence a um cliente.
- Pode ter **várias formas de pagamento** e **uma entrega associada**.

**Atributos:**
- `idPedido` (PK)
- `statusPedido`
- `descricao`
- `idCliente` (FK)

---

#### **Pagamento**
- Um pedido pode possuir mais de uma forma de pagamento.

**Atributos:**
- `idPagamento` (PK)
- `tipoPagamento`
- `idPedido` (FK)

---

#### **Entrega**
- Cada pedido possui uma entrega com **status** e **código de rastreio**.

**Atributos:**
- `idEntrega` (PK)
- `statusEntrega`
- `codigoRastreio`
- `idPedido` (FK)

---

#### **Produto**
- Produto pode estar em estoque, vinculado a um pedido, ou fornecido por terceiros/fornecedores.

**Atributos:**
- `idProduto` (PK)
- `categoria`
- `descricao`
- `valor`

---

#### **Estoque**
- Cada produto pode estar em diferentes locais de estoque.

**Atributos:**
- `idEstoque` (PK)
- `local`

---

#### **Fornecedor**
- Empresas responsáveis por disponibilizar produtos.

**Atributos:**
- `idFornecedor` (PK)
- `razaoSocial`
- `cnpj`
- `local`

---

#### **Terceiro Vendedor**
- Vendedores externos que oferecem produtos na plataforma.

**Atributos:**
- `idTerceiroVendedor` (PK)
- `razaoSocial`
- `local`

---

### 🔹 Tabelas de Relacionamento (N:N)

| Tabela | Descrição |
|--------|------------|
| **Produtos_has_Estoque** | Relaciona produtos com seus estoques e quantidades |
| **Relação de Produto/Pedido** | Relaciona produtos incluídos em cada pedido |
| **Disponibiliza_Produto** | Relaciona fornecedores com produtos que oferecem |
| **Produtos_por_Vendedor_Terceiro** | Relaciona vendedores terceirizados com os produtos vendidos |

---

## 🧠 Regras de Negócio

1. Uma conta pode ser **PJ ou PF**, mas **não pode ter as duas informações**.
2. Um **pedido** pode ter **mais de uma forma de pagamento**.
3. Cada **entrega** possui **status** e **código de rastreio** únicos.
4. Um **produto** pode ser vendido por **fornecedores e/ou terceiros**.
5. Um **estoque** pode armazenar **diversos produtos**.

---

## 🧮 Modelo Entidade-Relacionamento (EER)

O diagrama EER representa todas as entidades e seus relacionamentos de forma visual.

**Principais Relacionamentos:**
| Entidades Relacionadas | Tipo | Descrição |
|-------------------------|------|------------|
| Cliente — Pedido | 1:N | Um cliente faz vários pedidos |
| Pedido — Pagamento | 1:N | Um pedido pode ter várias formas de pagamento |
| Pedido — Entrega | 1:1 | Um pedido possui uma entrega |
| Produto — Estoque | N:N | Produto pode estar em vários estoques |
| Produto — Pedido | N:N | Pedido pode conter vários produtos |
| Produto — Fornecedor | N:N | Produto pode ser disponibilizado por vários fornecedores |
| Produto — Terceiro Vendedor | N:N | Produto pode ser vendido por vários terceiros |

---

## ⚙️ Tecnologias Utilizadas

- **MySQL Workbench** – modelagem EER e criação do banco de dados  
- **MySQL Server** – armazenamento e manipulação de dados  
- **Draw.io / Lucidchart** (opcional) – documentação visual  

---

## 👨‍💻 Autores

Projeto desenvolvido por:
- **Ricardo Miliotte**  
  Pós-graduando em Análise de Dados | Analista de Sistemas Sênior  
  [LinkedIn](https://www.linkedin.com/in/ricardo-miliotte/)

---

## 🧾 Licença

Este projeto é de uso **acadêmico e educacional**, podendo ser reutilizado para fins de estudo e aprendizado.
