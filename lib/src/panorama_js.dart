getPanoramaJs({kImageHeight, kImageWidth, kImageUrl}) {
  var panoramaJs = '''<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Flutter App</title>
  <!-- Add your JavaScript here -->
  <style>
    body { margin: 0; }
    canvas { display: block; }
  </style>
</head>
<body>
<!-- Your JavaScript code goes here -->
<div id="webgl-canvas">
<script type="module">
  // Paste your JavaScript code here
  import * as THREE from 'https://cdn.jsdelivr.net/npm/three@0.121.1/src/Three.js';
  import { OrbitControls } from 'https://cdn.jsdelivr.net/npm/three@0.121.1/examples/jsm/controls/OrbitControls.js';

  let scene, camera, renderer, controls;
  let geometry, material, mesh;

  function init(imageUrl) {
    scene = new THREE.Scene();

    camera = new THREE.PerspectiveCamera(75, $kImageWidth / $kImageHeight, 1, 1100);
    camera.position.set(0, 0, 0.1);

    // Create a sphere geometry for the panorama (adjust parameters as needed)
    geometry = new THREE.SphereGeometry(500, 60, 40);
    geometry.scale(-1, 1, 1); // Invert the geometry to correctly map the texture

    // Load the panorama image with correct CORS settings
    var textureLoader = new THREE.TextureLoader();
    textureLoader.crossOrigin = 'anonymous'; // Allow cross-origin requests
    material = new THREE.MeshBasicMaterial({
      map: textureLoader.load('https://cors-anywhere.herokuapp.com/' +imageUrl)
    });

    mesh = new THREE.Mesh(geometry, material);
    scene.add(mesh);

    renderer = new THREE.WebGLRenderer();
    renderer.setPixelRatio(window.devicePixelRatio);
    renderer.setSize($kImageWidth, $kImageHeight);
    document.body.appendChild(renderer.domElement);
                document.getElementById('webgl-canvas').appendChild(renderer.domElement);

    controls = new OrbitControls(camera, renderer.domElement);
    controls.enableDamping = true; // Enable damping for smooth controls
    controls.dampingFactor = 0.25;
    controls.enableZoom = true; // Disable zoom to maintain a fixed view
    controls.rotateSpeed = 0.5;

    window.addEventListener('resize', onWindowResize, false);
  }

  function onWindowResize() {
    camera.aspect = $kImageWidth / $kImageHeight;
    camera.updateProjectionMatrix();
    renderer.setSize($kImageWidth, $kImageHeight);
  }

  function animate() {
    requestAnimationFrame(animate);
    controls.update(); // Update controls in the animation loop
    render();
  }

  function render() {
    renderer.render(scene, camera);
  }
                     window.onload = () => {
              const imageUrl = '$kImageUrl';
              init(imageUrl);
              animate();
            }
  // init(imageUrl);
  // animate();
</script>
</div>
</body>
</html>
''';
  return panoramaJs;
}
