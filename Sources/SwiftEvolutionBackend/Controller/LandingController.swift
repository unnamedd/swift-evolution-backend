import Foundation
import Kitura
import LoggerAPI
import KituraStencil

extension Controller {
    func getLandingPage(request: RouterRequest, response: RouterResponse, next: @escaping () -> Void) throws {
        Log.debug("GET - / route handler...")

        try response.render(Config.shared.templateLanding,
                            context: [:]).end()
        next()
    }
}
