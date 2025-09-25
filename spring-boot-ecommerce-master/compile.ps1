# PowerShell script to compile the Spring Boot project
Write-Host "Compiling Spring Boot E-commerce project..."

# Set execution policy for current process
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

# Run Maven wrapper
try {
    & ".\mvnw.cmd" clean compile
    Write-Host "Compilation completed successfully!" -ForegroundColor Green
} catch {
    Write-Host "Compilation failed: $($_.Exception.Message)" -ForegroundColor Red
}