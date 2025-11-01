# 🚀 Deployment Guide for Indian News Verifier

## ✅ Recommended: Streamlit Cloud (FREE & EASY)

### Step-by-Step Instructions:

1. **Push your code to GitHub:**

   ```bash
   git add .
   git commit -m "Ready for deployment"
   git push origin main
   ```

2. **Go to Streamlit Cloud:**

   - Visit: https://streamlit.io/cloud
   - Click "Sign up" or "Sign in" with GitHub

3. **Deploy your app:**

   - Click "New app"
   - Select your repository: `Face-News-Detections-`
   - Branch: `main`
   - Main file path: `main_beautiful.py`
   - Click "Deploy!"

4. **Add your API key (IMPORTANT):**

   - In Streamlit Cloud dashboard, go to your app settings
   - Click "Secrets" (🔒)
   - Add your environment variable:
     ```toml
     GEMINI_API_KEY = "your_actual_api_key_here"
     ```
   - Save and reboot the app

5. **Done! Your app will be live at:**
   ```
   https://[your-app-name].streamlit.app
   ```

### ✨ Benefits:

- ✅ FREE forever for public apps
- ✅ Automatic updates when you push to GitHub
- ✅ Built specifically for Streamlit
- ✅ Easy environment variable management
- ✅ No configuration needed

---

## 🔄 Alternative 1: Vercel with Serverless Conversion

⚠️ **Warning:** This requires significant code changes. Not recommended for Streamlit apps.

To deploy to Vercel, you'd need to:

1. Convert your Streamlit app to a Flask/FastAPI backend
2. Create a separate React/Next.js frontend
3. Use Vercel's serverless functions

This defeats the purpose of using Streamlit's simplicity.

---

## 🐳 Alternative 2: Deploy with Docker (Railway, Render, Fly.io)

### Option A: Railway.app (Easy & Free Tier)

1. **Create `Dockerfile`:**

   ```dockerfile
   FROM python:3.11-slim

   WORKDIR /app

   COPY requirements.txt .
   RUN pip install --no-cache-dir -r requirements.txt

   COPY . .

   EXPOSE 8501

   CMD ["streamlit", "run", "main_beautiful.py", "--server.port=8501", "--server.address=0.0.0.0"]
   ```

2. **Deploy to Railway:**
   - Visit: https://railway.app
   - Connect GitHub repository
   - Add environment variable: `GEMINI_API_KEY`
   - Deploy!

### Option B: Render.com (Free Tier Available)

1. **Create `render.yaml`:**

   ```yaml
   services:
     - type: web
       name: indian-news-verifier
       env: python
       buildCommand: pip install -r requirements.txt
       startCommand: streamlit run main_beautiful.py --server.port=$PORT --server.address=0.0.0.0
       envVars:
         - key: GEMINI_API_KEY
           sync: false
   ```

2. **Deploy to Render:**
   - Visit: https://render.com
   - Connect GitHub repository
   - Add environment variable in dashboard
   - Deploy!

---

## 📊 Comparison Table

| Platform            | Cost      | Ease       | Streamlit Native | Speed  |
| ------------------- | --------- | ---------- | ---------------- | ------ |
| **Streamlit Cloud** | FREE      | ⭐⭐⭐⭐⭐ | ✅ YES           | Fast   |
| Railway             | Free tier | ⭐⭐⭐⭐   | ❌ Docker        | Medium |
| Render              | Free tier | ⭐⭐⭐⭐   | ❌ Docker        | Medium |
| Vercel              | FREE\*    | ⭐⭐       | ❌ NO            | N/A    |

\*Vercel doesn't support Streamlit without major refactoring

---

## 🎯 My Recommendation

**Use Streamlit Cloud** - It's:

- Specifically built for Streamlit apps
- Completely free for public apps
- Zero configuration
- Automatic deployments
- Perfect for your use case

---

## 🆘 Need Help?

If you encounter issues:

1. Check that `GEMINI_API_KEY` is set in secrets
2. Ensure `requirements.txt` is up to date
3. Verify your repo is public (for free tier)
4. Check Streamlit Cloud logs for errors

---

**Made with ❤️ for easy deployment**
