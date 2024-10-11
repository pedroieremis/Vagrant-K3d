## Provisionamento de Vagrant com K3d

Neste repositório é possível subir o **K3d** pronto para uso, mediante o script hospeado no projeto.

### Dependências

- [Virtuabox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

Nota 1: O arquivo Vagrantfile provavelmente precisará de modificação, devido as redes internas e a placa da máquina hospedeira.

---

### Mão na Massa - Basta Seguir os Passos Abaixo

Clone o repositório em questão

```shell
https://github.com/pedroieremis/Vagrant-K3d.git
```

Navegue até o diretório do repositório clonado localmente

```shell
cd Vagrant-K3d
```
Subir o projeto

```shell
vagrant up
```

Acesse a VM implementada!

```shell
vagrant ssh
```

Nota 2: Utilize o "sudo" para gerenciar os recursos após acessar a máquina.

---

### Alguns Comandos

Para desligar a máquina
```shell
vagrant halt
```

Para ligar e recarregar a máquina
```shell
vagrant reload
```

Para acabar com tudo, "destruir" a máquina
```shell
vagrant destroy -f
```
