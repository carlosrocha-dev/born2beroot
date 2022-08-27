<div align="center">

![born2berootn](https://user-images.githubusercontent.com/3737837/179367967-89fa58de-79dc-48e9-a4cb-b868258cf368.png)

# Born2beRoot

</div>

## This project consists of having you set up your first server by following specific rules

## Forbiden
 
 - Is forbiden install X.org or other equivalent graphics server
 - Witch OS was choosed?
 	- [ ] VentOS
	- [x] Debian (https://www.debian.org/index.pt.html)

## The project

- [ ] Create at least 2 encrypted partitions using LVM. 
Below is an example of the expected partitioning


-----------  CHECKLIST ------------------------------------

- [ ] escolher entre debian e centos e saber pq		[]
- [ ] criar ao menos 2 partições encriptadas			[ok]
- [ ] saber diferença entre aptitude e apt			[]
- [ ] saber diferença entre AppArmor e SElinux		[]
- [ ] *servico SSH rodando apenas na porta 4242 (sem bonus)	[]
- [ ] saber testar a SSH setando uma nova conta		[]
- [ ] *setar UFW e deixar apenar porta 4242 aberta		[]
- [ ] a firewall tem que estar ativa quando vc abrir a VM	[]
- [x] saber mudar o hostname para logindaintra42		[]
- [ ] instalar sudo						[]
- [x] user com username=login tem que estar presente		[]
- [ ] esse user tem que estar nos groups user42 e sudo	[]
- [ ] saber criar um user novo e botar ele num grupo		[]

implementar strong password policy			[]
  |
  - [ ] password tem q expirar a cada 30 dias			[]
  - [ ] pelo menos 2 dias antes de poder trocar de pswd		[]
  - [ ] avisar user 7 dias antes de pswd expirar			[]
  - [ ] pswd obedece a regex dos infernos				[]
  - [ ] pswd não contem o nome do usuario				[]
  - [ ] pelo menos 7 chars diferente dos do ultimo pswd		[]
  - [ ] pswd do root usr precisa obedecer a policy			[]

aplicar regras rígidas em sudoers			[]
  |
  - [ ] limite de 3 tentativas de acesso com pswd errado		[]
  - [ ] se pswd errado, printa mensagem escolhida			[]
  - [ ] logar cada ação de sudo em um arquivo em var/log/sudo	[]*¹
  - [ ] modo TTY tem que estar ligado pq segurança			[]
  - [ ] restringir paths para sudo					[]

criar monitoring.sh em bash				
  |
  - [ ] rodar no startup e a cada 10 min				[]
  - [ ] arquitetura do OS e versão de Kernel			[]
  - [ ] numero de processadores fisicos				[]
  - [ ] quanto tem de RAM e quantos % estao sendo usados		[]
  - [ ] quanto tem memoria e quantos % estao sendo usados		[]
  - [ ] utilização dos processadores em %gem			[]
  - [ ] data e horário do ultimo reboot				[]
  - [ ] se LVM está ativo ou não					[]
  - [ ] numero de conexões ativas					[]
  - [ ] numero de usuarios usando o servidor			[]
  - [ ] IPv4 e MAC address do servidor				[]
  - [ ] numero de comandos executados com o programa sudo		[]
  - [ ] saber como o script funciona				[]
  - [ ] saber interromper o script sem modifica-lo			[]
  - [ ] saber cron							[]

- [ ] entender como fazer pra sua signature não mudar		[]

*¹ - Essa bosta pode bugar no debian11

====== bonus ======

formatar o disco no esquema do subject			[]

desenrolar um website de wordpress funcional		[]
  |
  - [ ] lighttpd							[]
  - [ ] MariaDB							[]
  - [ ] PHP								[]

- [ ] rodar um outro serviço à sua escolha e saber o pq		[]
