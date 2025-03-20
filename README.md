# OutilinedButton


## 📚 Sobre o projeto

Este repositório contém o componente `OutlinedButton` desenvolvido em **SwiftUI**, com o objetivo de praticar e estudar conceitos de **componentização** e **design system**. O botão possui diferentes variações de tamanhos, orientações, cores e estados, sendo um componente reutilizável para futuras aplicações iOS.

## 🚀 Funcionalidades

- Diferentes tamanhos (pequeno, médio, grande)
- Orientações variadas (horizontal, vertical)
- Suporte a múltiplas cores
- Estados: padrão, hover, ativo, desabilitado
- Implementado de forma desacoplada, seguindo boas práticas de componentização

## ⚙️ Instalação e uso

### Pré-requisitos

- Xcode instalado
- Swift 5+
- iOS 15 ou superior

### Como rodar o projeto localmente

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/OutlinedButton.git
   ```
2. Abra o projeto no Xcode:
   ```bash
   open OutlinedButton.xcodeproj
   ```
3. Execute no simulador ou em um dispositivo físico.

### Como usar o `OutlinedButton` no seu projeto:

```swift
OutlinedButton(
    title: "Clique aqui",
    size: .medium,
    orientation: .horizontal,
    color: .primary,
    state: .normal
)
```

> ⚠️ **Obs**: Personalize os parâmetros conforme a necessidade da sua interface.

## 🤝 Contribuição

Se você deseja contribuir para melhorar a qualidade, organização ou estrutura deste código, sinta-se à vontade para abrir uma issue ou criar um pull request!

### Algumas sugestões de contribuição:
- Refatoração ou melhorias de arquitetura
- Sugestões para melhorar a escalabilidade do design system
- Feedback sobre nomeação, organização e boas práticas em SwiftUI
- Criação de testes unitários ou de snapshot

## 📝 Notas

Este repositório foi criado com foco educacional e experimental.

---
