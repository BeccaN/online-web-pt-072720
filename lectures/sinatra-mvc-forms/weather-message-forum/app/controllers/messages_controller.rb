class MessagesController < ApplicationController

    # New
    get '/messages/new' do
        erb :'messages/new' # for thursday: why are we getting a path error when we try to render this view?
    end

    # Create
    post '/messages' do
        Message.create(params)
        redirect '/messages'
        # erb :'messages/show'
    end

    # Index
    get '/messages' do
        @messages = Message.all
        erb :'messages/index'
    end

end