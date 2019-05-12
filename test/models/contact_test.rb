# frozen_string_literal: true

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @contact = Contact.new(name: 'Sogyal', email: 'sogyals429@gmail.com', message: 'Welcome message')
  end

  test 'name should be present' do
    @contact.name = '     '
    assert_not @contact.valid?
  end

  test 'email should be present' do
    @contact.email = '     '
    assert_not @contact.valid?
  end

  test 'message should be present' do
    @contact.message = '    '
    assert_not @contact.valid?
  end

  test 'email should be valid' do
    valid_addresses = %w[test@rmit.edu.au USER@rmit.edu.AU A_US-ER@mail.edu
                         first.last@rmit.edu.au alice+bob@rmit.edu.au]
    valid_addresses.each do |valid_address|
      @contact.email = valid_address
      assert @contact.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @contact.email = invalid_address
      assert_not @contact.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test 'message length should be greater that 5' do
    @contact.message = 'a' * 2
    assert_not @contact.valid?
  end
end
