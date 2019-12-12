# frozen_string_literal: true

require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"

  git_source(:github) { |repo| "https://github.com/#{repo}.git" }

  # Activate the gem you are reporting the issue against.
  gem "activesupport", "6.0.0"
end

require "active_support"
require "active_support/core_ext/object/blank"
require "active_support/testing/assertions"
require "minitest/autorun"

class BugTest < Minitest::Test
  include ActiveSupport::Testing::Assertions

  def test_stuff
    assert "zomg".present?
    assert_not "".present?
  end
end
