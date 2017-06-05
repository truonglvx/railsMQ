class Publisher

    def self.publish(exchange, message = {})

        ex = channel.fanout("blog.#{exchange}")
        ex.publish(message.to_json)
    end

    def self.channel
        @channel ||= connection.create_channel
    end


    def self.connection
        @connection ||= Bunny.new.tap do |c|
            c.start
        end
    end

end