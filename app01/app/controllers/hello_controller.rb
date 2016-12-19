class HelloController < ApplicationController
    def index
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
