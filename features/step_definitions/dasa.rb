
Dado('que acesso a página inicial da Dasa') do
    visit "https://dasa.com.br/"
end
  
Dado('paro mouse em Somos Dasa') do
    find("#cG9zdDoyMTg=-1-75")
end
  
Dado('clico em Nossas Marcas') do
    find(:xpath, "//*[@id='cG9zdDo0ODQ5']", visible: false).click
    expect(page).to have_css "//*[@id='main']/div[9]/div/div/div[1]/div/div[2]/section/div/h2"
    
end
  
Quando('seleciono a regiao SP') do
    find("#locations-1-89").find('option', text: 'São Paulo').select_option
end
  
Quando('o laboratorio DelboniAuriemo') do
    find("a[href="https://delboniauriemo.com.br/"]").click

    
end
  
Então('sou direcionado para o site Delboni Auriemo') do
    expect(page).to have_css "#cologo"
end
