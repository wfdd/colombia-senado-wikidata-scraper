#!/usr/bin/env ruby
# encoding: utf-8

require 'csv'
require 'rest-client'
require 'wikidata/fetcher'

ids =
  CSV.parse(RestClient.get(
    'https://query.wikidata.org/sparql', 
    accept: 'text/csv',
    params: {query: 'SELECT ?item WHERE { ?item wdt:P39 wd:Q19254253 . }'}
  ))[1..-1].map { |i| i.first.split('/').last } |
  WikiData::Category.new('Categoría:Senadores de Colombia 2014-2018', 'es').wikidata_ids
EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: {es: []})
