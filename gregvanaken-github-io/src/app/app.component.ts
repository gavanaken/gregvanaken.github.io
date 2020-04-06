import { Component } from '@angular/core';
import { steelBlue } from './colors';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Development Portfolio';
  toolbarColor = Number(steelBlue);
}
