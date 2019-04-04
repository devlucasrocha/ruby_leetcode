emails = [
    "test.email+alex@leetcode.com",
    "test.e.mail+bob.cathy@leetcode.com",
    "testemail+david@lee.tcode.com"
]

def num_unique_emails(emails)
    filtered_emails = []
    emails.each do |email|
        email_tmp = email.partition('@')
        str_tmp_email = ''
        email_tmp[0] = email_tmp[0].split('').map { |e| e if e != '.' }.compact().join('')
        email_tmp.each { |part_of_email| str_tmp_email += part_of_email }
        filtered_emails << str_tmp_email
    end
    filtered_emails.map! { |email| email.partition('@')[0].partition('+').map {|i| i if i != '+'}.compact()[0] + '@' +email.partition('@')[2]}
    cont_diff = []
    cont_diff << filtered_emails[0]
    filtered_emails.each do |filtered_email|
        if !cont_diff.include?(filtered_email)
            cont_diff << filtered_email
        end
    end
    cont_diff.size
end

print num_unique_emails(emails)