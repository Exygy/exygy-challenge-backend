# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed Documents
[
  {
    name: "List and description of investigators and sites - 234567 - 00000003548",
    title: "16.1.4 List of Investigators",
    modified_by: "Sophia Bishop",
    document_type: :excel,
    status: "final",
    country: "Germany"
    stared: true,
  },
  {
    name: "Clinical Summary - 25399",
    title: "Clinical Summary of Efficacy and Safety for Ibuprofen",
    modified_by: "Lura Brown",
    document_type: :word,
    status: "final",
    country: "United States"
    stared: false,
  },
  {
    name: "Approval Letter",
    title: "NDA 94623",
    modified_by: "Steven Aguilar",
    document_type: :pdf,
    status: "final",
    country: "Germany"
    stared: false,
  },
  {
    name: "Approval Letter",
    title: "NDA 94623",
    modified_by: "Jimmy Townsend",
    document_type: :word,
    status: "final",
    country: "Germany, United States"
    stared: true,
  },
  {
    name: "Approval Letter",
    title: "NDA 94623",
    modified_by: "Sophia Bishop",
    document_type: :excel,
    status: "final",
    country: "Germany"
    stared: false,
  },
  {
    name: "List and description of investigators and sites - 234567 - 00000003548",
    title: "16.1.4 List of Investigators",
    modified_by: "Lura Brown",
    document_type: :excel,
    status: "final",
    country: "United States"
    stared: false,
  },
  {
    name: "Clinical Summary - 25399",
    title: "Clinical Summary of Efficacy and Safety for Ibuprofen",
    modified_by: "Steven Aguilar",
    document_type: :word,
    status: "final",
    country: "Germany"
    stared: false,
  },
  {
    name: "List and description of investigators and sites - 234567 - 00000003548",
    title: "16.1.4 List of Investigators",
    modified_by: "Jimmy Townsend",
    document_type: :excel,
    status: "final",
    country: "Germany, United States"
    stared: true,
  },
  {
    name: "Clinical Summary - 25399",
    title: "Clinical Summary of Efficacy and Safety for Ibuprofen",
    modified_by: "Sophia Bishop",
    document_type: :word,
    status: "final",
    country: "Germany"
    stared: false,
  }
].each do |document|
  Document.create(document)
end
