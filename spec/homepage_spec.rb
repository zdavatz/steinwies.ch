#!/usr/bin/env ruby
# encoding: utf-8
require 'spec_helper'

describe "steinwies.ch Homepage" do
 
  before :all do
    waitForSteinwiesToBeReady(browser, SteinwiesUrl)
  end

  before :each do
    browser.goto SteinwiesUrl
  end

  it "should show the homepage" do
    text = browser.text.clone
    expect(text).to match(/Praxisgemeinschaft Steinwies/)
  end

  it "should show contain a link to dissertation" do
    link = browser.links.find{ |x| x.text.eql?('Dissertation')}
    expect(link.name).to eql('dissertation')
  end

end
