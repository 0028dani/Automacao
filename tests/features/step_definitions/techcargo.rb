Dado("quando entro no site") do
 visit 'https://hm.techcargo.com.br/PortalEmpresario/'
end
  
Entao("clico no cadastrar") do
    find('input[value="Cadastrar"]').click


end
 
  Entao("cadastro com sucesso") do 
    find('#CNPJ').set('24.011.464/0001-61')
    find('#NomeFantasia').set('Arcanjo Tecnologia')
    find('#RazaoSocial').set('Arcanjo')
    find('#Endereco').set('Rua Da minha Casa')
    find('#Numero').set('50')
    find('#Bairro').set('Bairro Olá')
    find('#Complemento').set('Casa')
    find('option[value="BA"]').click
    find('#Telefone').set('21965433300')
    find('#Isento').click
    find('#NumeroApoliceSeguro').set('300')
    find('#RNTRC').set('17212781')
    find('#Administrador').set('Silvo')
    find('#CpfAdministrador').set('474.172.430-10')
    find('#Senha').set('danidani')
    find('#Email').set('dani_dani@hotmail.com')

    find('.btn-enviar-documento').click
    find('option[value="1"]').click
    @arquivo = File.join(Dir.pwd, 'features/A.docx')
    attach_file('file', @arquivo, make_visible: true)
    find('#enviar').click

    find('.btn-enviar-documento').click
    find('option[value="2"]').click
    @arquivo = File.join(Dir.pwd, 'features/A.docx')
    attach_file('file', @arquivo, make_visible: true)
    find('#enviar').click

    find('.btn-enviar-documento').click
    find('option[value="3"]').click
    @arquivo = File.join(Dir.pwd, 'features/A.docx')
    attach_file('file', @arquivo, make_visible: true)
    find('#enviar').click

    find('.btn-enviar-documento').click
    find('option[value="4"]').click
    @arquivo = File.join(Dir.pwd, 'features/A.docx')
    attach_file('file', @arquivo, make_visible: true)
    find('#enviar').click


    find('input[value="Cadastrar"]').click

    sleep(5)

   
  end
