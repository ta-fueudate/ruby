class HelloController < ApplicationController
    protect_from_forgery

    def index
        if request.post? then
          @title = 'Result'
          @msg = 'you typed: ' + params['input1'] + '.'
          @value = params['input1']
        else
          @title = 'Index'
          @msg= 'type text....'
          @value=''
        end
    end
    def param
        if params['msg'] != nil then
            msg = 'hello, ' + params['msg'] + '!'
        else
            msg = 'this is sample page.'
        end

       html = '
       <html>
       <body>
           <h1>sample page</h1>
           <p>' + msg + '</p>
       </body>
       </html>
       '
        render html: html.html_safe
    end
end
