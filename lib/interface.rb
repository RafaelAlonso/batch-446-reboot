# criar variavel de lista
lista = []

# mostrar msg de boas-vindas (puts)
puts 'Bem-Vind@ ao christmas list'

# perguntar qual acao pessoa quer fazer (mostrando as opts)
# puts
puts "O que quer fazer? (list|add|delete|mark|quit)"
# gets.chomp
action = gets.chomp

# Enquanto nao for quit
while action != 'quit'
  case action
  when 'add' # se action for 'add'

    # perguntar qual o nome do item que o usuario quer adicionar
    puts "Qual item você quer adicionar à sua lista?"
    nome_do_item = gets.chomp

    # Montar a hash do item
    # (Escolhemos hash porque queremos guardar mais de uma info
    # sobre um mesmo elemento)
    item_to_add = {
      nome: nome_do_item,
      status: '[ ]'
    }
    # inserir item na lista
    lista << item_to_add
    # avisar para o usuario que o item foi inserido
    puts "#{item_to_add[:nome]} foi adicionado com sucesso!"

  when 'list' # se action for 'list'

    lista.each_with_index do |item_to_list, index|
      puts "#{index + 1} - #{item_to_list[:status]} #{item_to_list[:nome]}"
    end

  when 'delete' # se action for 'delete'

    # perguntar para o usuario qual a posicao do item que ele quer deletar
    puts "Qual a posição do item que você quer deletar da sua lista?"
    pos_item = gets.chomp.to_i - 1
    # deleta item da lista
    deleted_item = lista.delete_at(pos_item)
    # avisar para o usuario que o item foi deletado
    puts "#{deleted_item[:nome]} foi deletado com sucesso!"

  when 'mark' # se action for 'mark'

    # perguntar para o usuario qual a posicao do item que ele quer marcar
    puts "Qual a posição do item que você quer marcar?"
    pos_item_to_mark = gets.chomp.to_i - 1
    # pegar o item a marcar de dentro da lista
    item_to_mark = lista[pos_item_to_mark]
    # marcar item na lista
    item_to_mark[:status] = '[X]'
    # avisar para o usuario que o item foi marcado
    puts "#{item_to_mark[:nome]} foi marcado com sucesso!"

  else # se action nao for nenhuma das anteriores

    # avisar que e um comando invalido
    puts "Comando inválido"

  end

  # perguntar de novo
  puts "O que quer fazer? (list|add|delete|mark|quit)"
  # gets.chomp
  action = gets.chomp
end
# Se for quit
puts 'Até mais'
