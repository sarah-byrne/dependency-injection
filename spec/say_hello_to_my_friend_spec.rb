require 'exercise_4'

describe SayHelloToMyLittleFriend do
  it "sends an email via email client" do
    message_double = double :message
    allow(message_double).to receive(:send) do |email_addr, message| 
      message
    end

    email_client_double = double :email_client, message: message_double
    email_client_class_double = double :email_client_class, new: email_client_double

    hello_sender = SayHelloToMyLittleFriend.new(email_client_class_double)
    expect(hello_sender.run).to eq("HELLO!")
  end
end
