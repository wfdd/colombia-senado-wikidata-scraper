#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

ids =
  EveryPolitician::Wikidata.wdq('claim[39:19254253]') |
  WikiData::Category.new('Categoría:Senadores de Colombia 2014-2018', 'es').wikidata_ids
EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: {es: []})
