Redmine::Plugin.register :form_builder do
  name 'Form Builder Plugin'
  author 'Vaibhav Petkar'
  description 'This is a plugin for creating custom forms'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  # Define the routes for the plugin
  permission :manage_forms, { forms: [:index, :show, :new, :create, :edit, :update, :destroy] }, public: true

  menu :project_menu, :form_builder, { controller: 'forms', action: 'index' }, caption: 'Form Builder'
end
