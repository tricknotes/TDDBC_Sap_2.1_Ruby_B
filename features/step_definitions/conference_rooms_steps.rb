# encoding: utf-8
前提 /^ユーザは "([^"]*)" としてログインしている$/ do |user_name|
  # ログイン機能未実装のためskip
end

前提 /^システムの "([^"]*)" が表示されている$/ do |page_name|
  visit path_to(page_name)
end

前提 /^システムに会議室情報として "([^"]*)" が登録されている$/ do |conference_room_name|
  ConferenceRoom.create!(name: conference_room_name)
end

もし /^ユーザは "([^"]*)" のリンクをクリックする$/ do |link|
  click_link link
end

ならば /^システムは "([^"]*)" ページを表示する$/ do |title|
  page.should have_css("h1", text: title)
end

ならば /^ページに "([^"]*)" の会議室情報が表示されている$/ do |conference_room_name|
  page.should have_css("table.conference_rooms tr td", text: conference_room_name)
end

前提 /^システムに会議室情報が登録されていない$/ do
  ConferenceRoom.destroy_all
end

ならば /^ページに "([^"]*)" というメッセージが表示されている$/ do |message|
  page.should have_css("#message", text: message)
end
