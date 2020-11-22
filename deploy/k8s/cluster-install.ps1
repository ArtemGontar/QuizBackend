# Create a namespace istio-system for Istio components
kubectl create namespace istio-system

# Install the Istio
istioctl install --set profile=demo


