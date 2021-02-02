desc 'Executar Rubocop'
task :rubocop do
  executar_rubocop
end

def executar_rubocop
  puts '======================= INICIO ========================'
  puts 'Analisando código fonte com Rubocop...'
  checklist = '-r rubocop/formatter/checkstyle_formatter'
  config = '-c .rubocop.yml'
  formatter = '-f RuboCop::Formatter::CheckstyleFormatter'
  output = '-o code_analyzer/checkstyle-result.xml -f html -o code_analyzer/index.html'
  system "rubocop #{checklist} #{config} #{formatter} #{output} -P"
  puts 'Analise do código concluída!'
  puts '======================== FIM =========================='
end
