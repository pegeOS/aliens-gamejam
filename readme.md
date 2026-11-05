# 🛸 Aliens Gamejam

![GitHub repo size](https://img.shields.io/github/repo-size/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub top language](https://img.shields.io/github/languages/top/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub commit activity](https://img.shields.io/github/commit-activity/t/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/pegeOS/aliens-gamejam?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/pegeOS/aliens-gamejam?style=for-the-badge)
![GameMaker](https://img.shields.io/badge/GameMaker-000000?style=for-the-badge&logo=gamemaker&logoColor=white)
![GML](https://img.shields.io/badge/GameMaker_Language-GML-blue?style=for-the-badge)

<h1 align="center">👽 Aliens Gamejam</h1>

<p align="center">
  Um jogo de investigação e gerenciamento de entrada ambientado em uma balada dos anos 1950. Identifique os alienígenas disfarçados de humanos antes que eles invadam a festa.
</p>

---

## 📖 Sobre o Projeto

**Aliens Gamejam** é desenvolvido em GameMaker. O jogador trabalha na segurança de uma balada em 1956 e precisa descobrir quais visitantes são alienígenas disfarçados.

Antes da primeira partida, o agente especial Leftoff apresenta a ameaça em uma introdução cinematográfica. Em cada dia, visitantes aparecem para conversar e apresentar seus documentos. O jogador analisa as pistas e decide quem pode entrar.

Os alienígenas que entram precisam ser identificados e expulsos na pista de dança. A pontuação, os erros e as vidas determinam a progressão da partida.

O objetivo é manter a festa segura, sobreviver aos dias e alcançar 1.000 pontos.

---

## 📑 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Como Jogar](#-como-jogar)
- [Atualizações](#-atualizações)
- [Screenshots](#-screenshots)
- [Equipe](#-equipe-do-projeto)
- [Game Jam](#-game-jam)
- [Licença](#-licença)

---

## 🧰 Tecnologias Utilizadas

### Desenvolvimento

- **GameMaker**
- **GameMaker Language (GML)**

### Ferramentas

- **GameMaker IDE**
- **Git**
- **GitHub**
- **Krita**
- **Libresprite**

---

## ☕ Como Jogar

### Introdução

O agente Leftoff explica a ameaça antes da primeira partida. As falas são apresentadas gradualmente; clique ou toque para completar uma fala e avançar. A introdução também pode ser pulada.

### Cabine de segurança

Observe cada visitante, leia o diálogo e clique nos documentos para examiná-los. Depois, escolha:

- **Admit:** deixa o visitante entrar na festa.
- **Reject:** impede a entrada.

O documento ampliado mostra o retrato, o nome, a idade e o SSN do visitante. Use as conversas e os dados para distinguir alienígenas de humanos.

### Balada

Se alienígenas entrarem, selecione os suspeitos na pista e expulse-os. Cada alienígena que permanecer na festa pode custar uma vida.

### Pontuação e progressão

- Decisões corretas aumentam a pontuação; decisões incorretas podem reduzi-la.
- Expulsar um humano sem convite é uma decisão correta e rende pontos.
- Se nenhum alienígena entrar, o jogador pode avançar diretamente para o próximo dia.
- Se aliens entrarem, é preciso lidar com eles na balada antes de continuar.
- A partida termina se as vidas acabarem. Alcançar 1.000 pontos conclui a campanha com vitória.

Os visitantes são selecionados pelo sistema de distribuição diária. Alguns aparecem a partir de um dia específico e podem voltar a ser sorteados nos dias seguintes, sem serem obrigatórios todos os dias.

Os controles de clique também aceitam toque em dispositivos Android.

---

## 🛠️ Atualizações

- Corrigido o espaçamento das descrições de visitantes para permitir uma ou duas linhas dentro do painel.
- Corrigida a disponibilidade de visitantes com dia de estreia, para que continuem elegíveis em dias posteriores.
- Ajustado o mapeamento de sprites de reação dos NPCs.
- Corrigida a pontuação para expulsar humanos sem convite.
- Adicionada a introdução do agente Leftoff, com diálogo gradual, avanço por clique/toque e opção de pular.
- Organizados o ID ampliado, o retrato e os dados de identificação; aumentada a legibilidade do documento.
- Padronizados os SSNs fictícios no formato visual `###-##-####`, mantendo um número repetido como pista alienígena da Marta.
- Desativada a prancheta da cabine e reposicionados os documentos sobre a mesa.
- Atualizadas as telas de resultado do turno, da balada, de game over e de vitória, mantendo o fluxo entre as etapas.
- Corrigida a sobreposição do relatório do turno sobre a tela de vitória.

---

## 📸 Screenshots

<div align="center">

<figure>
  <img src="prints/introducao.png" width="800" alt="Introdução cinematográfica do agente Leftoff">
  <figcaption>O agente especial Leftoff apresenta a ameaça alienígena.</figcaption>
</figure>

<figure>
  <img src="prints/cabine.png" width="800" alt="Visitante sendo inspecionado na cabine">
  <figcaption>Inspeção de visitantes na cabine de segurança.</figcaption>
</figure>

<figure>
  <img src="prints/bettygoatid.png" width="800" alt="Documento ampliado com retrato e dados do visitante">
  <figcaption>Documento ampliado com retrato e informações de identificação.</figcaption>
</figure>

<figure>
  <img src="prints/convite.png" width="800" alt="Convite e decisões da cabine">
  <figcaption>Convite e decisões de entrada.</figcaption>
</figure>

<figure>
  <img src="prints/detalhebalada.png" width="800" alt="Seleção de visitantes suspeitos na balada">
  <figcaption>Identificação de suspeitos na pista de dança.</figcaption>
</figure>

<figure>
  <img src="prints/balada.png" width="800" alt="Pista de dança e visitantes">
  <figcaption>A balada e seus visitantes.</figcaption>
</figure>

<figure>
  <img src="prints/gameover.png" width="800" alt="Relatório de fim de jogo">
  <figcaption>Relatório de game over.</figcaption>
</figure>

<figure>
  <img src="prints/1000points.png" width="800" alt="Tela de vitória ao alcançar mil pontos">
  <figcaption>Vitória ao alcançar 1.000 pontos.</figcaption>
</figure>
</div>

---
## 👨‍💻 Equipe do Projeto

<table>
<tr>
<td align="center" width="20%">
<a href="https://github.com/pegeOS">
<img src="https://github.com/pegeOS.png" width="100px;" alt="Pedro Gabriel"/><br>
<strong>Pedro Gabriel</strong>
</a>
</td>
<td align="center" width="20%">
<a href="https://github.com/AngeloMatos08">
<img src="https://github.com/AngeloMatos08.png" width="100px;" alt="Ângelo Matos"/><br>
<strong>Ângelo Matos</strong>
</a>
</td>
<td align="center" width="20%">
<a href="https://github.com/torilocode">
<img src="https://github.com/torilocode.png" width="100px;" alt="Henk Narciso"/><br>
<strong>Henk Narciso</strong>
</a>
</td>
<td align="center" width="20%">
<a href="https://github.com/GDevXyslet">
<img src="https://github.com/GDevXyslet.png" width="100px;" alt="Julio"/><br>
<strong>Julio</strong>
</td>
<td align="center" width="20%">
<img src="https://placehold.co/100x100?text=Isabella" width="100px;" alt="Isabella"/><br>
<strong>Isabella</strong>
</td>
</tr>
<tr>
<td align="center" valign="top">
<br>
<sub>🎮 <strong>Game Design e Game Dev</strong></sub>
<br><br>
<sub>Concepção e desenvolvimento das principais mecânicas do jogo.</sub>
</td>
<td align="center" valign="top">
<br>
<sub>💻 <strong>Game Dev</strong></sub>
<br><br>
<sub>Implementação dos sistemas, mecânicas e lógica do jogo.</sub>
</td>
<td align="center" valign="top">
<br>
<sub>♫ <strong>Game Design e Sound Design</strong></sub>
<br><br>
<sub>Desenvolvimento de fases e produção da trilha sonora.</sub>
</td>
<td align="center" valign="top">
<br>
<sub>🎨 <strong>Art & Creative Design</strong></sub>
<br><br>
<sub>Criação das artes e referências visuais da época retratada.</sub>
</td>
<td align="center" valign="top">
<br>
<sub>🎨 <strong>Art & Creative Design</strong></sub>
<br><br>
<sub>Criação das artes e referências visuais da época retratada.</sub>
</td>
</tr>
</table>

---

## 🎮 Game Jam

O **Aliens Gamejam** foi desenvolvido para a [THE HENSJAM](https://itch.io/jam/hensjam), uma Game Jam que propõe aos participantes o desafio de criar um jogo dentro de um período determinado.

A participação proporcionou a oportunidade de desenvolver um projeto do zero, explorar mecânicas de gameplay e aplicar conceitos de programação e desenvolvimento de jogos.

---

## 🎮 Jogue

<p align="center">
  <strong>Em breve no itch.io!</strong>
</p>

<!-- Após publicar, substitua o texto acima pelo link da página do jogo -->

---

## 🎯 Objetivo do Projeto

Durante o desenvolvimento, foram trabalhados conceitos como:

- Lógica de programação e estruturas condicionais.
- Organização e manipulação de dados.
- Programação orientada a objetos por meio de estruturas e construtores.
- Gerenciamento de estados e eventos.
- Criação e controle de instâncias.
- Transições entre salas e sequências.
- Sistemas de pontuação, progressão e condições de vitória e derrota.
- Desenvolvimento de interfaces e interação com o jogador.

---

## 📄 Licença

Projeto desenvolvido com finalidade educacional e de participação em Game Jam.

Consulte as condições de uso e distribuição antes de reutilizar ou redistribuir os arquivos do projeto.

---

<p align="center">
  Desenvolvido com 👽 utilizando GameMaker e GameMaker Language.
</p>
