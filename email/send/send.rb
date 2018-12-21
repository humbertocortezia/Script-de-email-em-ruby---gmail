# coloque aqui o seu email que está configurado no gmail o remetente
from ='emaildeorigem@gmail.com'
require 'mail'  

#Configuração do servidor
require '../config/config'

# Uma forma de utilizar via terminal
puts 'Digite seu email'
email = gets.chomp
puts 'Digite o assunto'
assunto = gets.chomp
puts 'digite o texto'
texto = gets.chomp


# estrutura de envio

puts 'Enviando E-mail'

mail = Mail.new do
  from     "#{from}"
  to        "#{email}"
  subject  "#{assunto}"
  body     "#{texto}"
end

mail.deliver
puts 'E-mail enviado com sucesso.'
