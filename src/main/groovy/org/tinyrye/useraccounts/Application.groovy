package org.tinyrye.useraccounts

import ratpack.handling.Handler
import ratpack.launch.HandlerFactory
import ratpack.launch.LaunchConfig
import static ratpack.groovy.Groovy.chain

public class Application implements HandlerFactory
{
	Handler create(LaunchConfig config)
	{
		chain(config) {
			get("contacts") {
				it.response.contentType("application/json").send(new FileInputStream('/Users/rsmall/Documents/profile-data/user-store.json'))
			}
		}
	}
}