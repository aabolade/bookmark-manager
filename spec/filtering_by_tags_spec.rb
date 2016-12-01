RSpec.feature "bubbles" do


  scenario "bubbles" do
    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Facebook')
    fill_in('url', :with => 'www.facebook.com')
    fill_in('tag', :with => 'social')
    click_button('submit')

    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Bubble News')
    fill_in('url', :with => 'www.bubbles.co.uk')
    fill_in('tag', :with => 'bubbles')
    click_button('submit')

    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Sports')
    fill_in('url', :with => 'www.sports.co.uk')
    fill_in('tag', :with => 'sports')
    click_button('submit')

    visit '/links'
    click_button('add_link')
    fill_in('title', :with => 'Gossip')
    fill_in('url', :with => 'www.gossip.co.uk')
    fill_in('tag', :with => 'gossip')
    click_button('submit')


    visit "/tags/bubbles"

    expect(page).not_to have_content('Facebook')
    expect(page).not_to have_content('Sports')
    expect(page).not_to have_content('Gossip')
    expect(page).to have_content('Bubble News')

  end


end
