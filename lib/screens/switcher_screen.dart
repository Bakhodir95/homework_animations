import 'package:flutter/material.dart';

class SwitcherScreen extends StatefulWidget {
  const SwitcherScreen({super.key});

  @override
  State<SwitcherScreen> createState() => _SwitcherScreenState();
}

class _SwitcherScreenState extends State<SwitcherScreen> {
  bool _isMoved = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            "Switcher",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              _isMoved = !_isMoved;

              setState(() {});
            },
            child: AnimatedContainer(
              width: 140,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  shape: BoxShape.rectangle,
                  color: _isMoved ? Colors.blue : Colors.white),
              duration: const Duration(seconds: 1),
              child: AnimatedAlign(
                curve: _isMoved ? Curves.easeIn : Curves.easeOut,
                alignment:
                    _isMoved ? Alignment.centerLeft : Alignment.centerRight,
                duration: const Duration(milliseconds: 400),
                child: AnimatedContainer(
                  clipBehavior: Clip.hardEdge,
                  width: 80,
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  duration: const Duration(seconds: 1),
                  child: _isMoved
                      ? Image.network(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAclBMVEX///8AAADx8fGxsbH39/e+vr6KioopKSkoKCj7+/vg4OBAQECNjY0JCQkNDQ1aWlpfX19LS0tGRkbp6enQ0NCDg4OhoaEjIyPb29urq6vm5uaamprDw8MwMDBubm4dHR02NjaVlZVUVFR3d3dmZmYVFRV4y9GXAAAC9klEQVR4nO3dC3LaMBRGYTAmwUB4Q3iEJqFk/1tshnZSaKfgK1+k3+45C2D0zYAsGyFarbQVeb+7GU6mg/3rqP3V00WjU7P3IvFY7WWL3bfXdvl689QjNtVfTUe3UZcdUw+6fPPVm1V3Kks98JItxkG8z15SD71MRWcW6mu3u6lHX6LuY7ivDsL+tIpPX5gvq/nkhet9VaC4cFXZpy3MJw5AZWE28AAKC+fPLkBdYd/Hpyt0A6oKs17ThT6TjLDw6AfUFO4cgZLCtSdQUhh2L18jYeW7CXWh73tUUXhouvDFGagn9J1mBIUdb6Cc0G89Kip0/xTKCYOfbNdFuPUHigkfGi90v1SoCb0XbHrC98YLHZ9daArvMZNqCf1XbGpC51vfX61Ts85yeoz/R3lq1ll3Aa5Sq85a3AM4TK06L3yieR4cjsuHvxtu+qlRF4VNNOPOQumTdrWQO6el0kx5s4Bldy32O31VmC8WH9vUY7ZlX7MprVbKZL51mqQesTWzsF4fwlbABT/1gM1Zhd9TD9icVbhLPWBzXaOwbjOpfVmqteQsk1VYlx3qv0OIUD+ECPVDiFA/hAj1Q4hQP4QI9UOIUD+EdRDm2ZXyjVG4vfZqP4t8OM38+GE0VO4t6ncbfj97tXSIKKxwOkmV4m2JmqcBtqfRhHf4IUWp9tFmG+u3g171om2YQogQ4f8rfESIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIsHbC5u9UyBIJI24Zqvh/OKFt4gnT7PoaxwN+vk89D8sv1yj6MVhF/u8K6+7L+bVXOxWbd6sm7KC9HkKE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoH0KE+iFEqB9ChPohRKgfQoT6IUSoX/OF1nN46ydc24Cz1OMNaGASRj+a1CHTKbVRD5d1K1vuy/GeZnc+HvgHllpO87YiSVIAAAAASUVORK5CYII=",
                          fit: BoxFit.contain,
                        )
                      : Image.network(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVIWpb///9dbaFEV5Tu7/U2S49pd6dTZJw9UpL6+/04TZDR1eNCVZNBVJM5TpAzSY7d4Opue6n09fmDjbTAxdjX2uanrsmdpcOvts5OX5laaZ9seajo6vF5ha+YocG6wNWJk7jKzt58iLGSm70cOofr585FAAAEWklEQVR4nO3da5OaMBiG4UCMIkJEPCuuS9v//xvrrrXt9KAPhxDezHPPzuyXLXIVRTGJquhHi7fVTIXSbLVfPGDq/uugbK5971eP6Tw9Xn8TVifre5f6T6fT8iEsksz37jgpU9VdWCUh3T9/T6vyU3gK8wh+lJ8/hIcAH4M/M5ub0PdOOE2fIrUI+RDeDmKh3nLfO+G0ZKdWoZ5I72VrFc5LtX+mp773wHmx7x1wHoXyo1B+FMqPQvlRKD8K5Ueh/CiUH4Xyo9BjOkusNUuTZJ8lNl0ujUnT1Ca3sgx8F3SkwixJ7Wm922yrMvrVvJxURbGor4fd23oVq9sfvd7UGIW5Tc+77Tx62bwskpdbG51QW3upAd2PxAm1PR7K165fR1GYUNu4bsCTJ7Rq08wnTKjNvqlPljCZFc2BkoTmvYVPknB5aAWUI0zrdkAxQrttCZQiNIvXFNFC0/hZUJgw3bUHihDmlw5AEUKNX0fIFJq6C1CAMOt0H5UgTCeBC5MWlxOyhLbJ9bxEYedDOHph10fh6IXZl67AsQttHbpQdwaOXJh/DV1o218WChEmnV5zCxBm5+7AcY9bJM2ufOdVsfi7+vWSLX/CBg/DyXU9s2l6+/mzUY8fGvQFzXZlEnTA9x95PNOAwLXptnjQm1BjJ5py9vpc8jxvwhwbqIg7rzvzJsROpfvuSwf9Ca8AcJJ2vyFvQujCYt/1Qah8CpHRmGMPayO9CU31Glgte7ghf0LgCb/uY4nyqIW7Hh6G4xZ+7WMR9qiFl+CFqz4+zmLUwmkfC+kpdBaFFMJR6CwKKYSj0FkUUghHobMopBCOQmdRSCGcU6F+0hIRZs+2cMu7cPYkjbybeHy2hY/8CnX82tCxwu9cjAGEm+CFyNCNbOE7MLAhW4g8ncgWIqPgooXA3EvhwgqZjCJauAheeA3+XgpNKBItXCOj4KKFMXJxIVoITWSQLCxN6MIieCE27U2yEPv6GMlC7LtHJAu/BC88+X6vzbkQezdVsHCCzSAWLCywpQqCheAscMHCAzYLXLAQnAUuWHjB5kgLFoILagQLweUmcoUT6NpJsnAb/DFERtacC8vJ/wOWrkVP/vmk3IMLalyOcmvzpG/AKHe8fLIBdMUQ52I4i0IK4Sh0FoUUwlHoLAophKPQWRRSCEehsyikEI5CZ1FIIRyFzqKQQjgKnUUhhXAUOotCCuEodBaFFMJR6CwKKYSj0FkUUghHobMopBCOQmdRSCEchc6ikEI4Cp1FIYVwFDqLQgrhKHQWhRTCUeisAYXI9ws4aCihPqtVH/9RzRtKmL8r9DNCem4oYXJQ0Idi999QQlOpXr6ivcUtDyPUcaSiq5eDOJDQ1DdhNO3jy6Eb3/QgwvwSfQhL5eF+Oogwm80/hVGlhj+fDiHMZ2V0F0bl2Qx9GN0LtbnMo4cwijYnk2RDKiFh6xOEzhMT1/etqMfmit16Gg/XERBeTm23Pn0/FI+tfAcuNE9TFPJ9KwAAAABJRU5ErkJggg==",
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          ),
        ));
  }
}
