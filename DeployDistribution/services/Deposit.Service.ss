/*
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
*/

/*exported service*/
function service (request)
{
	'use strict';

	var Application = require('Application');
	
	try
	{
		//Only can get an order if you are logged in
		if (session.isLoggedIn2())
		{
			var method = request.getMethod()
			,	id = request.getParameter('internalid')
			//  Order model is defined on ssp library Models.js
			,	Deposit = require('Deposit.Model')
			,	data = JSON.parse(request.getBody() || '{}');
			
			switch (method)
			{
				case 'GET':
					Application.sendContent(Deposit.get(id));
					break;

				default: 
					// methodNotAllowedError is defined in ssp library commons.js
					Application.sendError(methodNotAllowedError);
			}
		}
		else
		{
			// unauthorizedError is defined in ssp library commons.js
			Application.sendError(unauthorizedError);
		}
	}
	catch (e)
	{
		Application.sendError(e);
	}
}