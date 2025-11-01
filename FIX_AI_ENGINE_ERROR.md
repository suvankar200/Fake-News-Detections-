# 🔧 Fix "AI engine not ready" Error

## The Problem

Your app is deployed but shows: **"❌ AI engine not ready"**

This means the **GEMINI_API_KEY** is not being detected.

---

## ✅ Solution: Add API Key to Streamlit Secrets

### Step 1: Go to Your App Settings

1. Open your deployed app on Streamlit Cloud
2. Click the **hamburger menu** (☰) in the top right
3. Click **"Settings"**

### Step 2: Open Secrets Section

1. In Settings, scroll down to **"Secrets"**
2. You'll see a text box for adding secrets in TOML format

### Step 3: Add Your API Key

In the Secrets text box, add this **exact line**:

```toml
GEMINI_API_KEY = "your_actual_api_key_here"
```

**Replace `your_actual_api_key_here` with your real Gemini API key!**

### Step 4: Save and Reboot

1. Click **"Save"** button
2. The app will automatically reboot
3. Wait ~30 seconds for it to restart

---

## 🔑 Don't Have a Gemini API Key?

### Get a FREE API Key:

1. Go to: **https://makersuite.google.com/app/apikey**
2. Sign in with your Google account
3. Click **"Create API Key"**
4. Copy the key (looks like: `AIzaSy...`)
5. Paste it in Streamlit Secrets

---

## 📝 Example

If your API key is `AIzaSyABC123XYZ456`, you would enter in Secrets:

```toml
GEMINI_API_KEY = "AIzaSyABC123XYZ456"
```

**Important:**

- ✅ Use double quotes `""`
- ✅ No spaces around the `=`
- ✅ Exact key name: `GEMINI_API_KEY`

---

## ✅ After Adding the Key

1. **Save** in Streamlit Cloud settings
2. App will **automatically reboot**
3. Refresh your browser
4. Try verifying news again
5. Should now show **"✅ AI Engine Ready!"**

---

## 🆘 Still Not Working?

### Check These:

**1. API Key Format:**

- Should start with `AIzaSy...`
- Must be in double quotes
- No extra spaces

**2. Spelling:**

- Must be exactly: `GEMINI_API_KEY`
- Not: `GEMINI_KEY` or `API_KEY` or anything else

**3. API Key Status:**

- Go to https://makersuite.google.com/app/apikey
- Check if your key is active
- Try creating a new key if needed

**4. App Reboot:**

- After saving secrets, click the ⋮ menu
- Select "Reboot app"
- Wait 30 seconds

---

## 🎯 Quick Checklist

- [ ] Got API key from Google AI Studio
- [ ] Opened app Settings on Streamlit Cloud
- [ ] Added to Secrets: `GEMINI_API_KEY = "your_key"`
- [ ] Saved changes
- [ ] App rebooted automatically
- [ ] Refreshed browser
- [ ] Tested with "Verify News" button

---

**Once fixed, your app will work perfectly! 🚀**
