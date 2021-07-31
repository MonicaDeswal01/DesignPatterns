//
//  SingleResponsibiltyPrinciplePart2.swift
//  DesignPatterns
//
//  Created by Monica Mishipay on 28/07/21.
//

import Foundation

// Perform multiple function in one class

struct Conversation {

}

class ConvertionInteractor {
    let userId: String
    init(userId: String) {
        self.userId = userId
    }

    func fetchAllConversations() {
       // let jsonData: Any =
    }

    private func fetchRemoteConversationJsonData(for userId: String){
        // send API request to get conversations json data
    }

    private func convertJsonToConversation(jsonData: Any) -> [Conversation] {
        //Parse the data and create array of conversation objects
        return []
    }

    private func saveToDatabase(conversation: [Conversation]) {
      // save conversations to local data store, it can be core data or something similar
    }
}

// Modified version
class ConversationInteractor {
    let userId: String
    let apiService: ConversationAPIService
    let dbHandler: ConversationDBOperation

    init(userId: String,
         apiService: ConversationAPIService = RemoteService(),
         dbHandler: ConversationDBOperation = ConversationRepository() ){
        self.userId = userId
        self.apiService = apiService
        self.dbHandler = dbHandler
    }

    func fetchAllConversations() {
        let conversations = apiService.fetchRemoteConversation(for: userId)
        dbHandler.save(conversations: conversations, for: userId)
    }
}

protocol ConversationAPIService {
    func fetchRemoteConversation(for userId: String) -> [Conversation]
}

class RemoteService: ConversationAPIService{
    func fetchRemoteConversation(for userId: String) -> [Conversation] {
        return [Conversation]()
    }
}

protocol ConversationDBOperation {
    func save(conversations: [Conversation], for userId: String) -> Bool
}

class ConversationRepository: ConversationDBOperation {
    func save(conversations: [Conversation], for userId: String) -> Bool{
        return true
    }
}
