import axios from "axios";
import path from "path";
import { spawn } from "child_process";

const createSubdomain = async (req, res) => {
    try {

        const { domainName } = req.body

        if(!domainName){
            return res.status(404).json({
                msg:"Domain name should be required"
            })
        }

        const zoneId = "84626df984235c3051efeaf0729b1b75";      // Your Cloudflare Zone ID
        const apiKey = "a703244ff474855c82a059428f61209d32f57";  // Your Cloudflare Global API Key
        const email = "tdm.katts1@gmail.com";

        let options = {
            method: 'POST',
            url: `https://api.cloudflare.com/client/v4/zones/${zoneId}/dns_records`,
            headers: { 'Content-Type': 'application/json', 'X-Auth-Email': email ,"X-Auth-Key": apiKey  },
            data: {
                comment: 'Domain verification record',
                name: `${domainName}.qrdine-in.com`,
                ttl: 1,
                content: '145.223.18.182',
                type: 'A'
            }
        };

        const response =  await axios.request(options)

        return res.status(200).json({
            response:response.data,
            msg: "Subdomain created successfully"
        })


    } catch (error) {
        return res.status(500).json({
            error,
            msg: "Internal server error"
        })
    }
}


const deployRestaurant = async (req, res) => {
    try {
        const { subdomain } = req.body;

        if (!subdomain) {
            return res.status(400).json({ error: 'Subdomain is required' });
        }

        // Define the script path and command
        const scriptPath = '/var/www/saas-demo/_work/saas_demo/saas_demo/deploy_restaurant.sh';
        const command = scriptPath;
        const args = [subdomain]

        const child = spawn(command, args, { shell: true });

        let stdoutData = '';
        let stderrData = '';

        child.stdout.on('data', (data) => {
            stdoutData += data; // Accumulate stdout data
            console.log(`stdout: ${data}`); // Log stdout data
        });

        child.stderr.on('data', (data) => {
            stderrData += data; // Accumulate stderr data
            console.error(`stderr: ${data}`); // Log stderr data
        });

        // Run the bash script using exec
        child.on('close', (code) => {
            if (code !== 0) {
                console.error(`Process exited with code ${code}`);
                return res.status(500).json({ error: `Deployment failed with code ${code}`, stderr: stderrData });
            }

            // Return success response
            return res.status(200).json({ message: `Restaurant ${subdomain} deployed successfully`, output: stdoutData });
        });
        
    } catch (error) {
        console.log(error)
        return res.status(500).json({
            error,
            msg: "Internal server error"
        })
    }
}


export {
    createSubdomain,
    deployRestaurant
}