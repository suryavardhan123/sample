{{!
	© 2016 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}
<script>
function editFun(){
var firstname = document.getElementById("in-modal-firstname").value;
	var lastname = document.getElementById("in-modal-lastname").value;
	document.getElementById("in-modal-firstname").value = firstname+' '+lastname;
}
</script>
<section class="address-edit">
	{{#unless isInModalOrHideHeader}}
		<h2>
			{{#if isAddressNew}}
				{{translate 'Add a new Address'}}
			{{else}}
				{{translate 'Update Address'}}
			{{/if}}
		</h2>

		{{#if isCollectionEmpty}}
			<p>{{translate 'For faster checkouts, please enter an address bellow.'}}</p>
		{{/if}}
	{{/unless}}

	<form class="address-edit-form" action="addressbook.ss" method="POST">
		{{#if isInModal}}
			<div class="address-edit-body">
		{{/if}}

		<fieldset data-view="Address.Edit.Fields"></fieldset>

		{{#if isInModal}}
			</div>
		{{/if}}

		{{#if showFooter}}
			<div class="{{#if isInModal}}address-edit-footer{{else}}form-actions{{/if}}">
				<button type="submit" class="address-edit-form-button-submit" onclick = 'editFun();'>
					{{#if isAddressNew}}
						{{translate 'Save Address'}}
					{{else}}
						{{translate 'Update Address'}}
					{{/if}}
				</button>

				{{#if isInModalOrCollectionNotEmpty}}
					<button class="address-edit-form-button-cancel" data-dismiss="modal" data-action="reset">
						{{translate 'Cancel'}}
					</button>
				{{/if}}
			</div>
		{{/if}}
	</form>
</section>