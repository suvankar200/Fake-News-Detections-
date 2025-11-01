# 🇮🇳 Indian News Verifier

A beautiful, AI-powered fake news detection system designed specifically for Indian news verification.

**Made with ❤️ by Suva X Suva**

## 🚀 Quick Start

### Prerequisites
- Python 3.8 or higher
- Internet connection
- Gemini API key (free from Google)

### Installation & Setup

1. **Clone the repository:**
```bash
git clone [your-repo-url]
cd "Fake News"
```

2. **Install dependencies:**
```bash
pip install -r requirements.txt
```

3. **Setup API key (IMPORTANT):**
```bash
# Copy the template file
cp .env.example .env

# Edit .env file and add your API key:
# GEMINI_API_KEY=your_actual_api_key_here
```

**Get your free Gemini API key:** https://makersuite.google.com/app/apikey

4. **Run the application:**
```bash
streamlit run main_beautiful.py
```

5. **Open in browser:**
- Local: http://localhost:8501
- Network: http://[your-ip]:8501

## ✨ Features

- **🔍 Real-time verification** of Indian news claims
- **🤖 AI-powered analysis** with confidence scoring
- **🔗 URL extraction** from news websites
- **📱 Mobile-friendly** responsive design
- **🇮🇳 Indian context** awareness
- **📊 Professional results** display
- **📥 Downloadable reports**

## 🎯 Perfect for:

- Political news verification
- WhatsApp forwards checking
- Social media claims validation
- Breaking news confirmation
- Academic presentations
- Journalism fact-checking

## 📖 How to Use

1. **Choose input method**: Text/Paste or News URL
2. **Enter your news claim** or paste a news URL
3. **Click "Verify News"** to start AI analysis
4. **Review results** with confidence scores
5. **Cross-check** with recommended sources
6. **Download report** for documentation

## 🛡️ Important Notes

- This tool provides AI-assisted analysis
- Always cross-reference with multiple reliable sources
- Higher confidence scores indicate more reliable results
- Perfect for presentations and demonstrations

## 🔧 Technical Details

- Built with Streamlit for beautiful UI
- Advanced AI for intelligent analysis
- Real-time web scraping capabilities
- Indian news sources integration
- Professional confidence scoring system

## � Security & Deployment

### For GitHub:
- ✅ The `.env` file is automatically ignored by git
- ✅ Your API key will NOT be pushed to GitHub
- ✅ Use `.env.example` as a template for others

### For Vercel Deployment:
1. **Push to GitHub** (API key stays secure)
2. **In Vercel dashboard:**
   - Go to Project Settings → Environment Variables
   - Add: `GEMINI_API_KEY` = `your_actual_api_key`
3. **Deploy** - your API key is now secure in Vercel

### Environment Variables:
- `GEMINI_API_KEY` - Your Gemini API key (required)

## �📞 Support

For issues or questions, please check:
1. Internet connection for AI analysis
2. Valid news URLs for extraction
3. Clear, specific news claims for best results

---

**🇮🇳 Fighting misinformation with AI technology • Built for India • Made with ❤️ by Suva X Suva**
