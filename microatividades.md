# Trabalho Prático | Desenvolvimento de Aplicativos Móveis com Flutter

## Microatividade 1: Preparação do ambiente

### Material necessário para a prática

- Flutter SDK (Pode ser baixado no site oficial do Flutter);
- Android Studio e/ou um editor de texto (Intellij idea community);
- Git para controle de versionamento;
- Emulador Android ou iOS para testar o aplicativo.

### Ambiente Arch Linux

#### Instalação do Flutter SDK

1. Faça a instalação do utilitário "yay" para instalar pacotes do repositório AUR. Para isso, siga os passos do tutorial no link [https://www.edivaldobrito.com.br/aur-helper-yay-no-arch-linux/](https://www.edivaldobrito.com.br/aur-helper-yay-no-arch-linux/)


2. Faça a instalação do Visual Studio Code (vscode) para posterior instalação do flutter sdk de forma mais facilitada.

````
    yay -S visual-studio-code-bin
````

3. Faça a instalação dos pacotes necessários para a instalação do Flutter SDK:

````
    sudo pacman -S --needed curl git unzip xz zip libglu
````

4. Em seguida, abra o Visual Studio Code (vscode) e instale a extensão **Flutter**, do Dart Code.
5. Agora basta seguir os passos listados em "Install and Setup Flutter", no site oficial do Flutter, [https://docs.flutter.dev/install/quick](https://docs.flutter.dev/install/quick).
6. Após instalação do Flutter SDK, verifique a instalação através do comando ````flutter```` no terminal.
7. Em seguida, utilize o comando ````flutter doctor````, para fornecer um diagnóstico completo, apontando quaisquer pendências
   na instalação e sugerindo soluções.

#### Instalação do Android Studio

1. Faça a instalação do Android Studio utilizando o utilitário yay:

````
    yay -S android-studio
````

