export const bannerScroll = () => {
  const seeCocktailsBtn = document.querySelector(".see-cocktails");
  seeCocktailsBtn.addEventListener('click', scroll);
}

export const scroll = () => {
  window.scrollBy({
    top: window.innerHeight - 70,
    left: 0,
    behavior: 'smooth'
  }
)};
