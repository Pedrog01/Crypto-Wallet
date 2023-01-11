namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do 
  if Rails.env.development?
    spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
    spinner.auto_spin 
    %x(rails db:drop)
    spinner.success("(Comcluído com sucesso!)") 

    spinner = TTY::Spinner.new("[:spinner] Criando BD...")
    spinner.auto_spin 
    %x(rails db:create) 
    spinner.success("(Comcluído com sucesso!)") 
    
    spinner = TTY::Spinner.new("[:spinner] Migrando o BD...")
    spinner.auto_spin 
    %x(rails db:migrate)
    spinner.success("(Comcluído com sucesso!)") 

    spinner = TTY::Spinner.new("[:spinner] Populando BD...")
    spinner.auto_spin
    %x(rails db:seed)
    spinner.success("(Comcluído com sucesso!)") 

  else 
    puts "Você não está em ambiente de desenvolvimento"
  end
end
  def show_spinner(msg_start, msg_end)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin 
    %x(rails db:drop)
    spinner.success("(#{msg_end})")
  end

end
