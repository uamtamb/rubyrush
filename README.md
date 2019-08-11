# Уроки курса Ruby Rush

## 1. Установка Ruby на Debian 10
### Установка Node js 12.x
[Node js на GitHub](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)
### Using Debian, as root
curl -sL https://deb.nodesource.com/setup_12.x | bash -<br/>
apt install -y nodejs<br/>
apt install gcc g++ make<br/>

## 2. Установка RVM и Ruby
### Добавляем ключ для проверки пакетов
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
### Install RVM:
\curl -sSL https://get.rvm.io | bash -s stable
### Install RVM (development version):
\curl -sSL https://get.rvm.io | bash
### Install RVM stable with ruby:
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# команды RVM
- какие версии ruby установлены: rvm list
- какие версии ruby есть: rvm list known 
- обновить RVM: rvm get stable 
- версия ruby: ruby -v 
- использовать версию руби: rvm use версия_ruby
- использовать версию руби по умолчанию: rvm use версия_ruby --default
- удалить версию руби: rvm remove версия_ruby
- версия менеджера пакетов (gem): gem -v
- обновить менеджер пакетов (gem): gem update --system
- установка rails: gem install rails
- версия rails: rails -v
- список gem: gem list
- список gem которые содержат в названии rails: gem list rails
- установка bundler (gem установки других gem-ов): gem install bundler
- создание rails приложения hello: rails new hello
- создание rails приложения hello без тестов: rails new hello -T
- создание rails (версия rails 4.2.7) приложения hello: rails _4.2.7_ new hello
