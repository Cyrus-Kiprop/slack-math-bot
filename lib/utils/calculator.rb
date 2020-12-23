require 'calc'

module Calculator
    class Sum 

        def initialize(slack_user_input)
            @math_expression = slack_user_input
        end

        def evaluate
            add(@math_expression)
        end

      private

        def add(input)
          error_response ="Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3"
          return  format_response(input, Calc.evaluate(input)) if is_valid_math_expression?(input)
          error_response
        end

        def format_response(initial_expression, results)
          "#{initial_expression} = #{results}"
        end

        def is_valid_math_expression?(expression)
          regex = /\s*[0-9]+\s*\+\s*[0-9]+\s*/
          return true if regex.match(expression)

          false
        end
      
    end
end