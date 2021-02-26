class Document < ApplicationRecord
    belongs_to :user
    
    validates :documentname, presence:   {message:'Enter Document Name'}
    validates :documentid, presence:   {message:'Enter Document Id'}
    validates :documentype, presence:   {message:'Enter Document Type'}
end
