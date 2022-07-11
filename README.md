# Самоконтроль выполненения задания

1. Где расположен файл с `some_fact` из второго пункта задания?  
```
group_vars/all/examp.yml
```
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
```
ansible-playbook site.yml -i inventory/test.yml
```
3. Какой командой можно зашифровать файл?
```
ansible-vault encrypt somefile
```
4. Какой командой можно расшифровать файл?
```
ansible-vault decrypt somefile
```
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
```
ansible-vault view somefile
```
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?
```
ansible-playbook site.yml -i inventory/prod.yml --vault-password-file pass_file - запуск с использованием файла с паролем
ansible-playbook site.yml -i inventory/prod.yml --ask-vault-password - запуск с вводом пароля
```
7. Как называется модуль подключения к host на windows?
```
psrp                           Run tasks over Microsoft PowerShell Remoting Protocol
ssh                            connect via SSH client binary
winrm                          Run tasks over Microsoft's WinRM
```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
```
ansible-doc -t connection ssh
```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?
```
 cli:
  - name: user
    option: --user
  env:
  - name: ANSIBLE_REMOTE_USER
  ini:
  - key: remote_user
    section: defaults
  keyword:
  - name: remote_user
  vars:
  - name: ansible_user
  - name: ansible_ssh_user
```
