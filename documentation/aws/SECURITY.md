
<h3>.</h3>
<h4>No Vulnerabilities found</h4>
<h4>No Misconfigurations found</h4>
<h3>git::https:/github.com/terraform-aws-modules/terraform-aws-vpc?ref=v5.5.1/main.tf</h3>
<h4>No Vulnerabilities found</h4>
<h4>Misconfigurations</h4>
<table>
    <tr>
        <th>Type</th>
        <th>ID</th>
        <th>Check</th>
        <th>Severity</th>
        <th>Message</th>
    </tr>
    <tr>
        <td>Terraform Security Check</td>
        <td>AVD-AWS-0178</td>
        <td>VPC Flow Logs is a feature that enables you to capture information about the IP traffic going to and from network interfaces in your VPC. After you&#39;ve created a flow log, you can view and retrieve its data in Amazon CloudWatch Logs. It is recommended that VPC Flow Logs be enabled for packet &#34;Rejects&#34; for VPCs.</td>
        <td>MEDIUM</td>
        <td>
          VPC Flow Logs is not enabled for VPC
          <br><a href="https://avd.aquasec.com/misconfig/avd-aws-0178">https://avd.aquasec.com/misconfig/avd-aws-0178</a></br>
        </td>
    </tr>
</table>