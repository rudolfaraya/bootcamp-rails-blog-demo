class DoSomethingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "✅: #{Time.current} - Código random #{SecureRandom.hex}"
    Article.create(title: "Título #{SecureRandom.hex}", body: "#{Time.current}", user_id: 1)
  end
end
