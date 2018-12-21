puts 'Abrindo conexão com Servidor'

Mail.defaults do
  delivery_method :smtp, { :address              => "smtp.gmail.com",
                           :port                 => 587,
                           :domain               => 'mail.gmail.com',
                           :user_name            => 'seuemail@gmail.com',
                           :password             => 'suasenha',
                           :authentication       => :login,
                           :enable_starttls_auto => true  }
end
