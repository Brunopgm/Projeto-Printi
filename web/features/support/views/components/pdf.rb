require "prawn"
require "time"

class GeradorPDF
  include Capybara::DSL

  PDF_OPTIONS = {
    :page_size => "A4",
    :page_layout => :landscape,
    :mangin => [40, 75],
    :background => "features/support/views/components/printi.png"
  }

  def gerar_pdf(indice, path_imagens, data)

    Prawn::Document.generate("target/relatorios/#{data}/#{indice}/Relatorio_#{indice}.pdf", PDF_OPTIONS) do
      fill_color "40464e" #alterar a cor do texto
      font "Courier" #alterar a font


      for item in path_imagens
        start_new_page
        text item.split("/")[-1], size: 50, align: :center
        move_down 15
        image item, height: 400, width: 400, position: :center
      end
    end
  end
end

