require 'calabash-android/calabash_steps'

Dado(/^que estou na home do aplicativo$/) do
  @page= page(NotasScreen).await(timeout:5)
  @page.tela_inicial_carregou?
end

Dado(/^toco no botão de adicionar no canto inferior da tela$/) do
  @page.tocar_botao_adicionar
end

Dado(/^digito o título "([^"]*)"$/) do |titulo|
  @page.digitar_titulo titulo
end

Quando(/^toco no botão create$/) do
  @page.tocar_botao_create
end

Então(/^sou direcionado para a Home e visualizo as nota "([^"]*)"$/) do |titulo|
  @page.nota_visivel? titulo
end

Dado(/^dou um toque longo sobre a nota com título "([^"]*)"$/) do |titulo|
  @page.toque_longo_anotacao titulo
end

Dado(/^toco na opção Rename$/) do
  @page.tocar_opcao_rename
end

Quando(/^toco no botão Rename$/) do
  @page.tocar_botao_rename
end

Então(/^sou direcionado para a Home e visualizo a nota com o novo título "([^"]*)"$/) do |titulo|
  @page.nota_visivel? titulo
end
