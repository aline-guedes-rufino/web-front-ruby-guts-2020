Before do 
    @app = |
end

After do |scenario|
    if  scenario.failed?
        page.save_screenshot("screenshots/#{scenario.name}#{time.now}_screenshot.png")
    end
end    