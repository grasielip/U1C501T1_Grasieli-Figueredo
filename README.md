# EduPass Protocol - MVP Web3

## 📝 Descrição do Projeto
O **EduPass Protocol** é um ecossistema descentralizado desenvolvido como projeto final para a **Residência em TIC 29 (Unidade 1 | Capítulo 5)**. Este MVP (Produto Mínimo Viável) demonstra a integração completa de ativos digitais, segurança em contratos inteligentes e governança descentralizada.

O protocolo permite que utilizadores obtenham certificados em NFT, realizem staking de tokens de utilidade para ganhar recompensas e participem ativamente das decisões da plataforma através de uma DAO.

---

## 🏗️ Arquitetura do Protocolo
O ecossistema é formado por cinco pilares técnicos:

1.  **EduToken (ERC-20):** Token de utilidade para transações e recompensas.
2.  **EduNFT (ERC-721):** O "EduPass", um NFT que serve como identidade e comprovativo de acesso.
3.  **Staking Contract:** Contrato de bloqueio de tokens com cálculo de recompensas.
4.  **PriceOracle:** Integração com **Chainlink** para buscar o preço real de ETH/USD na rede Sepolia.
5.  **GovernanceDAO:** Sistema de votação baseado em tokens para propostas da comunidade.

---

## 🚀 Tecnologias e Ferramentas
* **Linguagem:** Solidity ^0.8.20
* **Bibliotecas:** OpenZeppelin (ERC-20, ERC-721, ReentrancyGuard, Ownable)
* **Oráculo:** Chainlink Price Feeds
* **Ambiente de Desenvolvimento:** Remix IDE
* **Rede de Testes:** Ethereum Sepolia
* **Carteira:** MetaMask

---

## 🔒 Segurança e Auditoria
Para garantir a integridade do protocolo e cumprir os requisitos da Etapa 3, foram aplicadas:
* **Proteção contra Reentrância:** Uso do modificador `nonReentrant` da OpenZeppelin em funções de movimentação financeira.
* **Controle de Acesso:** Implementação de `Ownable` para restringir funções administrativas.
* **Auditoria Estática:** Verificação de vulnerabilidades realizada via ferramenta nativa do Remix.

---

## ⚙️ Instruções de Deploy (Etapa 6)

1.  **Ambiente:** Configure o Remix para `Injected Provider - MetaMask` na rede **Sepolia**.
2.  **EduToken:** Realize o deploy e copie o endereço do contrato.
3.  **EduNFT:** Realize o deploy do contrato de certificados.
4.  **Staking:** No deploy, insira o endereço do `EduToken` no parâmetro do construtor.
5.  **Interação:** Realize o `mint` do NFT e o `approve/stake` de tokens para validar o funcionamento.

---

## 📄 Documentação de Entrega
* **Relatório Técnico:** `U1C501T1_Grasieli Figueredo.pdf`
* **Vídeo Demonstrativo:** [Inserir Link do Vídeo]
* **Contratos na Testnet:**
    * EduNFT: `0x44E...405AA` (Exemplo)
    * Endereço do Desenvolvedor: `0xba9...bc79c`

---
**Autora:** Grasieli Priscila de Paula Figueredo
**Data:** Abril de 2026
**Residência em TIC 29**
