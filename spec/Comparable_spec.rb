require 'spec_helper'
require 'Bibliography'

describe Lista do
  before :each do
      
  end
end

describe Bibliography do
    before :each do
        @b1 = Bibliography.new(['Carlos Ruiz Zafon'],
                               'La Sombra del Viento','','Planeta',9,
                               '10 de Diciembre 2011',
                               [9788408079545]
                               )
                               
        @b2 = Bibliography.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers´ Guide',
                                '(The Facets of Ruby)','Pragmatic Bookshelf',4,'July 7, 2013',[9781937785499,1937785491])
                            
        
         @b3 = Bibliography.new(['Carlos Ruiz Zafon'],
                               'La Sombra del Viento','','Planeta',8,
                               '10 de Diciembre 2011',
                               [9788408079545]
                               )    
        @b3 = Bibliography.new(['Carlos Ruiz Zafon'],
                               'La Sombra del Viento','','Planeta',8,
                               '10 de Diciembre 2011',
                               [9788408079545]
                               )
        @b4 = Bibliography.new(['Carlos Ruiz Zafon'],
                               'La Sombra del Viento','','DeBolsillo',8,
                               '10 de Diciembre 2014',
                               [9788408079545]
                               )
    end
    
    describe "Tiene las propiedades de comparable" do
        it "Los nodos se comparar por autor, el primer autor en caso de varios " do
            expect(@b1<@b2).to be true
        end
        
        it "Dos nodos pueden ser iguales a pesar de ser de distinta edicion" do
            expect(@b1==@b3).to be true
        end
        
        it "Dos libros idénticos pueden haber sido publicados por editoriales diferentes y ser distintos en fecha" do
            expect(@b1==@b4).to be false
        end
        
        it "Un libro solo puede compararse con un libro" do
            expect{ @b1<2 }.to raise_error
        end
    end
end