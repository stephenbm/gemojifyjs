module Gemojifyjs
  class Engine < Rails::Engine
      initializer "gemojifyjs.assets.precompile" do |app|
        app.config.assets.precompile += %w(emoji-sprite.png)
      end
  end
end
