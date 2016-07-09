#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

ids = EveryPolitician::Wikidata.wdq('claim[39:19254253]')
EveryPolitician::Wikidata.scrape_wikidata(ids: ids)
