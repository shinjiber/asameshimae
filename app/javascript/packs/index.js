import React from 'react';
import { CarouselProvider, Slider, Slide, ButtonBack, ButtonNext } from 'pure-react-carousel';
import 'pure-react-carousel/dist/react-carousel.es.css';

export default class extends React.Component {
  render() {
    return (
      <CarouselProvider
        naturalSlideWith={100}
        naturalSlideHeight={125}
        totalSlides={5}
      >
        <Slider>
          <Slide index={0}>I am the first Slide</Slide>
          <Slide index={1}>I am the second Slide</Slide>
          <Slide index={2}>I am the third Slide</Slide>
          <Slide index={3}>I am the fourth Slide</Slide>
          <Slide index={4}>I am the fifth Slide</Slide>
        </Slider>
        <ButtonBack>Back</ButtonBack>
        <ButtonNext>Next</ButtonNext>
      </CarouselProvider>
    );
  }
}