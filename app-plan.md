# Smart Classroom Energy Management System

## Project Name
SCEMS - Smart Classroom Energy Management System

## Purpose
A mobile-controlled smart classroom system that automatically manages
lighting, monitors energy consumption, detects occupancy, and provides
security camera monitoring.

## Administrators
There will be 3 administrators.

All three administrators have equal permissions and full system access.

Each administrator will have:
- Personal login
- Full dashboard access
- Lighting control
- Energy monitoring
- Occupancy monitoring
- Camera access
- Automation settings
- System settings
- Activity history

## Main Features

### 1. Smart Lighting
- Automatic ON when occupancy is detected.
- Automatic OFF after the classroom becomes empty.
- Adjustable delay timer.
- Manual ON/OFF control from the mobile app.

### 2. Occupancy Detection
- PIR/mmWave sensors.
- Real-time classroom occupancy status.
- Number of detected people where supported.

### 3. Energy Monitoring
- Voltage
- Current
- Power
- Energy consumption in kWh
- Daily and historical energy usage

### 4. Security Camera
- Live camera monitoring.
- Camera status.
- Security alerts.

### 5. Mobile Application
- Secure administrator login.
- Dashboard.
- Lighting control.
- Occupancy status.
- Energy monitoring.
- Camera monitoring.
- Automation settings.
- Activity log.

## Future Hardware
- ESP32 controller
- Occupancy sensors
- Relay/contactor
- Digital energy meter
- Power supply
- Wi-Fi communication
- IP camera
- Classroom LED lighting

## System Architecture

Mobile App
    |
Backend / Database
    |
Wi-Fi
    |
ESP32 Controller
    |
Sensors + Lighting + Energy Meter

## Development Plan

Phase 1 - Mobile app interface
Phase 2 - Administrator authentication
Phase 3 - Backend/database
Phase 4 - ESP32 communication
Phase 5 - Sensor integration
Phase 6 - Lighting control
Phase 7 - Energy monitoring
Phase 8 - Camera integration
Phase 9 - Testing
Phase 10 - Final deployment
