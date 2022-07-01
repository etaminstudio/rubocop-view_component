# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/view_component'
require_relative 'rubocop/view_component/version'
require_relative 'rubocop/view_component/inject'

RuboCop::ViewComponent::Inject.defaults!

require_relative 'rubocop/cop/view_component_cops'
