export const bannerScroll = () => {
  const seeCocktailsBtn = document.querySelector(".see-cocktails");
  seeCocktailsBtn.addEventListener('click', (event) => {
    window.scrollBy({
      top: window.innerHeight,
      left: 0,
      behavior: 'smooth'
    });
  });
}
