# Password Reset Email Service using Resend and Vercel

This project demonstrates how to create a noreply email service specifically for resetting passwords using Resend and Vercel. This guide will walk you through the steps to set up and deploy the service.

## 🚀 Steps to Set Up

### 1. Sign Up for Resend

- Visit [Resend.com](https://resend.com)
- Sign up and log in to your account

### 2. Verify Domain (for noreply@yourdomain.com)

- Navigate to the **Domains** section
- Add `nicztin.com`
- Resend will provide DNS Records (SPF, DKIM, DMARC)
- Go to your DNS provider (e.g., Cloudflare, Namecheap, Vercel DNS...)
- Add the provided DNS Records and wait for verification

### 3. API Code in Vercel (Node.js + Next.js API)

Create an API route (`pages/api/reset-password.js`) in your Vercel project:

```javascript name=pages/api/reset-password.js
import { Resend } from "resend";

const resend = new Resend(process.env.RESEND_API_KEY);

export default async function handler(req, res) {
  if (req.method !== "POST") return res.status(405).send("Method Not Allowed");

  const { email, resetLink } = req.body;

  try {
    await resend.emails.send({
      from: "noreply@nicztin.com",
      to: email,
      subject: "Reset Your Password",
      html: `<p>Click <a href="${resetLink}">here</a> to reset your password.</p>`,
    });

    res.status(200).json({ success: true });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
}
```

### 4. Set API Key in Vercel

- Navigate to **Vercel** > **Project** > **Settings** > **Environment Variables**
- Add `RESEND_API_KEY = YOUR_RESEND_API_KEY`

### 5. Test API (Frontend or Postman)

Send a POST request to `/api/reset-password` with the following JSON data:

```json
{
  "email": "user@example.com",
  "resetLink": "https://nicztin.com/reset-password?token=XYZ"
}
```

### ✅ Ready to Use

Now you can send noreply emails for resetting passwords automatically!

### Future Enhancements

Would you like to add features such as OTP or a UI for changing passwords? Feel free to contribute!

## License

This project is licensed under the MIT License.
