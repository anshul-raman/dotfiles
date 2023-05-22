# dotfiles


## Installation Instructions

To set up your development environment, follow these steps:

1. Install Homebrew:
   ```shell
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install Visual Studio Code:
   ```shell
   brew install --cask visual-studio-code
   ```

3. Install iTerm2:
   ```shell
   brew install --cask iterm2
   ```

4. Install Neovim:
   ```shell
   brew install neovim
   ```

5. Install Node.js:
   ```shell
   brew install node
   ```

6. Install Python:
   ```shell
   brew install python
   ```

7. Install Ripgrep:
   ```shell
   brew install ripgrep
   ```

8. Install Chafa (for image support in Telescope):
   ```shell
   brew install chafa
   ```

9. Install Oh-My-Zsh:
   ```shell
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

10. Install Powerlevel10k:
    - Clone the repository:
      ```shell
      git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
      ```
    - Set the theme in `~/.zshrc`:
      ```
      ZSH_THEME="powerlevel10k/powerlevel10k"
      ```
    - Restart Zsh:
      ```shell
      exec zsh
      ```

11. Create a symlink:
    ```shell
    ln -s ~/prog/dotfiles/nvim ~/.config/nvim
    ```

