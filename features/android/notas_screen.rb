require 'calabash-android/abase'
require 'pry'

class NotasScreen < Calabash::ABase

  def trait
      "* id:'list'"
  end

  def tela_inicial_carregou?
    touch "* id:'button1' {text LIKE[c] 'ok'}" if element_exists "* id:'parentPanel'"
    pan_left
    wait_for_element_exists "* id:'decor_content_parent'", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

  def tocar_botao_adicionar
    tap_when_element_exists "* id:'fab'", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

  def digitar_titulo(titulo)
    enter_text "* id:'dialog_input'", titulo
    hide_soft_keyboard
  end

  def tocar_botao_create
    tap_when_element_exists "* id:'button1' {text LIKE[c] 'create'}", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

  def nota_visivel?(titulo)
    wait_for_element_exists "* id:'item_book_title' {text LIKE[c] '#{titulo}'}", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

  def toque_longo_anotacao(titulo)
    long_press "* id:'item_book_title' {text LIKE[c] '#{titulo}'}", {:time=>3}
  end

  def tocar_opcao_rename
    tap_when_element_exists "* id:'title'", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

  def tocar_botao_rename
    tap_when_element_exists "* id:'button1' {text LIKE[c] 'Rename'}", timeout:5, timeout_message:"Tempo de carregamento excedido"
  end

end
