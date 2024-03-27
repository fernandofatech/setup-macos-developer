# Mac Development Environment Setup

Welcome to the comprehensive guide for setting up your Mac for a seamless development experience. This repository contains all the necessary steps and scripts to get your environment ready, whether you're setting up a new machine or reconfiguring an existing one.

## Getting Started

This setup guide will walk you through the installation of Homebrew, Oh My Zsh, and a suite of essential developer applications.

### Prerequisites

Ensure that you have admin access to your Mac to perform these installations.

## Installing Homebrew

[Homebrew](https://brew.sh/) is a package manager for macOS that simplifies the installation of software.

To install Homebrew, open your terminal and run:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the on-screen instructions to complete the installation.

## Installing Oh My Zsh

[Oh My Zsh](https://ohmyz.sh/) is an open-source, community-driven framework for managing your Zsh configuration.

Install Oh My Zsh using Homebrew with the following command:

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Installing Applications with Homebrew

With the `apps.txt` file, you can batch install all essential apps for development.

1. Save your apps list in `apps.txt` in the root of this repository.
2. Navigate to the directory containing `apps.txt` in your terminal.
3. Run the command:

```sh
xargs brew install < apps.txt
```

## Automation Script

For convenience, an automation script `setup.sh` is included in this repository. This script will install Homebrew, Oh My Zsh, and all applications listed in your `apps.txt`.

To run the setup script, execute the following commands:

```sh
chmod +x setup.sh
./setup.sh
```

## Customization

Feel free to customize `apps.txt` and `setup.sh` according to your preference.

## Support

If you encounter any issues or have questions, please file an issue in this repository.

Thank you for using this Mac Development Environment Setup guide. Happy coding!

---

## Credits

This setup guide was created by [@fernandofatech]. I've compiled the steps and scripts that I find essential for a smooth and efficient developer workflow on macOS.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make to evolve this setup guide are **greatly appreciated**.

If you have suggestions for improving this guide, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

Happy coding!

@fenandofatech
