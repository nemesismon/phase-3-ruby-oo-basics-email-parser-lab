# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    def initialize(emails)
        @emails = emails
        @emails
    end

    def parse
        if @emails.include?(',') && @emails.include?(' ')
            split_emails = @emails.split(/[,\s]+/)
        elsif @emails.include?(',')
            split_emails = @emails.split(', ')
        elsif @emails.include?(' ')
            split_emails = @emails.split(' ')
        end
        split_emails.uniq
    end

end