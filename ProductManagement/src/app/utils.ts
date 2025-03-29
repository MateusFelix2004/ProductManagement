// Define e exporta a função previewImage
export function previewImage(event: Event): void {
  const input = event.target as HTMLInputElement;
  
  if (input.files && input.files[0]) {
    const file = input.files[0];
    const reader = new FileReader();

    reader.onload = function(e: ProgressEvent<FileReader>): void {
      const imagePreviewElement = document.getElementById('image-preview') as HTMLElement;
      if (imagePreviewElement && e.target && e.target.result) {
        imagePreviewElement.style.backgroundImage = `url(${e.target.result as string})`;
      }
    };

    reader.readAsDataURL(file);
  }
}
