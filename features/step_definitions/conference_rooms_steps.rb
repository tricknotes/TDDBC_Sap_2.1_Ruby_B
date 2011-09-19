# encoding: utf-8
前提 /^ユーザは "([^"]*)" としてログインしている$/ do |user_name|
  # ログイン機能未実装のためskip
end

前提 /^システムの "([^"]*)" が表示されている$/ do |page_name|
  visit path_to(page_name)
end

前提 /^システムに会議室情報として "([^"]*)" が登録されている$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

もし /^ユーザは "([^"]*)" のリンクをクリックする$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

ならば /^システムは "([^"]*)" ページを表示する$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

ならば /^ページに "([^"]*)" の会議室情報が表示されている$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

前提 /^システムに会議室情報が登録されていない$/ do
  pending # express the regexp above with the code you wish you had
end

ならば /^ページに "([^"]*)" というメッセージが表示されている$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
