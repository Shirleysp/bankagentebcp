{if $status == 'ok'}
<h2>{l s='Su pedido en %s fue completado.' sprintf=$shop_name mod='bankagentebcp'}</h2>
<br><br>
<p>Dirigase a un agente BCP e indique que realizará un pago a una cuenta recaudadora por el monto de <span style="color:red"> {$total_to_pay}</span> con los siguientes datos:</p>
<ul>
	<li><b>Codigo</b>  {$bankagentebcpOwner} </li>
	<li><b>Nombre de Empresa:</b> {$bankagentebcpDetails} </li>
	<li><b>Importe:</b> {$total_to_pay} </li>
	<li><b>Brindar el numero de su DNI</b></li>
</ul>

		<br /><br />{l s='Si tiene preguntas, comentarios o inquietudes, por favor póngase en contacto con nuestro equipo de atención al cliente experto.' mod='bankagentebcp'} <a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='expert customer support team' mod='bankagentebcp'}</a>.
	</p>
{else}
	<p class="warning">
		{l s='We noticed a problem with your order. If you think this is an error, feel free to contact our' mod='bankagentebcp'} 
		<a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='expert customer support team' mod='bankagentebcp'}</a>.
	</p>
{/if}
