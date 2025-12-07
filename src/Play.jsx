import { useState } from 'react'

function Play() {
  const [file, setFile] = useState(null)
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const [success, setSuccess] = useState('')
  const [results, setResults] = useState(null)
  const [questionsData, setQuestionsData] = useState(null)

  const handleFileChange = (e) => {
    if (e.target.files.length > 0) {
      setFile(e.target.files[0])
      setError('')
      setSuccess('')
      setResults(null)
    }
  }

  const handleDragOver = (e) => {
    e.preventDefault()
    e.currentTarget.classList.add('dragover')
  }

  const handleDragLeave = (e) => {
    e.currentTarget.classList.remove('dragover')
  }

  const handleDrop = (e) => {
    e.preventDefault()
    e.currentTarget.classList.remove('dragover')
    
    if (e.dataTransfer.files.length > 0) {
      setFile(e.dataTransfer.files[0])
      setError('')
      setSuccess('')
      setResults(null)
    }
  }

  const handleUpload = async () => {
    if (!file) return

    const formData = new FormData()
    formData.append('file', file)

    setLoading(true)
    setError('')
    setSuccess('')
    setResults(null)

    try {
      const response = await fetch('/upload', {
        method: 'POST',
        body: formData
      })

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.error || 'Failed to process file')
      }

      setQuestionsData(data.questions)
      setResults({
        totalSections: data.questions.total_sections,
        totalQuestions: data.total_questions
      })
      setSuccess('Questions generated successfully!')
    } catch (err) {
      setError(err.message)
    } finally {
      setLoading(false)
    }
  }

  const handleDownload = () => {
    if (!questionsData) return

    const jsonStr = JSON.stringify(questionsData, null, 2)
    const blob = new Blob([jsonStr], { type: 'application/json' })
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = 'questions.json'
    document.body.appendChild(a)
    a.click()
    document.body.removeChild(a)
    URL.revokeObjectURL(url)
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-[#667eea] to-[#764ba2] flex items-center justify-center p-6">
      <div className="bg-white rounded-3xl shadow-2xl p-10 max-w-2xl w-full">
        <h1 className="text-4xl font-bold text-gray-800 mb-2 text-center">🎮 NoteGame</h1>
        <p className="text-gray-600 text-center mb-8 text-lg">Upload your notes and generate questions for your game!</p>
        
        <div
          className="border-2 border-dashed border-[#667eea] rounded-2xl p-10 text-center cursor-pointer transition-all bg-[#f8f9ff] hover:border-[#764ba2] hover:bg-[#f0f2ff]"
          onDragOver={handleDragOver}
          onDragLeave={handleDragLeave}
          onDrop={handleDrop}
          onClick={() => document.getElementById('fileInput').click()}
        >
          <div className="text-6xl mb-5">📄</div>
          <div className="text-[#667eea] text-xl font-semibold mb-2">
            {file ? `Selected: ${file.name}` : 'Click to upload or drag and drop'}
          </div>
          <div className="text-gray-500 text-sm">PDF or Word documents (DOC, DOCX)</div>
          <input
            type="file"
            id="fileInput"
            accept=".pdf,.doc,.docx"
            onChange={handleFileChange}
            className="hidden"
          />
        </div>

        <button
          onClick={handleUpload}
          disabled={!file || loading}
          className="w-full mt-5 bg-gradient-to-r from-[#667eea] to-[#764ba2] text-white border-none py-4 rounded-xl text-lg cursor-pointer transition-all font-semibold hover:transform hover:-translate-y-0.5 hover:shadow-lg disabled:opacity-60 disabled:cursor-not-allowed disabled:transform-none"
        >
          Generate Questions
        </button>

        {loading && (
          <div className="text-center mt-5">
            <div className="inline-block w-10 h-10 border-4 border-gray-200 border-t-[#667eea] rounded-full animate-spin mb-4"></div>
            <p className="text-gray-700">Processing your document and generating questions...</p>
            <p className="text-gray-500 text-sm mt-2">This may take a minute or two</p>
          </div>
        )}

        {error && (
          <div className="bg-red-100 text-red-700 p-4 rounded-xl mt-5">
            {error}
          </div>
        )}

        {success && (
          <div className="bg-green-100 text-green-700 p-4 rounded-xl mt-5">
            {success}
          </div>
        )}

        {results && (
          <div className="mt-8">
            <h2 className="text-2xl font-bold text-gray-800 mb-4">Questions Generated! 🎉</h2>
            <div className="bg-[#f8f9ff] p-4 rounded-xl mb-5">
              <strong>Success!</strong><br />
              Generated {results.totalSections} section(s) with {results.totalQuestions} total questions.
            </div>
            <button
              onClick={handleDownload}
              className="w-full bg-[#28a745] text-white py-4 rounded-xl text-lg font-semibold cursor-pointer transition-all hover:shadow-lg hover:transform hover:-translate-y-0.5"
            >
              Download Questions JSON
            </button>
          </div>
        )}
      </div>
    </div>
  )
}

export default Play

