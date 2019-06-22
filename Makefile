
all: foreword introduction use_cases transport_modules swagger test_cases

foreword:
	cd 0_foreword && $(MAKE)

introduction:
	cd A_introduction && $(MAKE)

use_cases:
	cd B_use_cases && $(MAKE)

transport_modules:
	cd C_transport_modules && $(MAKE)

swagger:
	cd D_swagger && $(MAKE)

test_cases:
	cd E_test_cases && $(MAKE)



pdf: foreword_pdf introduction_pdf use_cases_pdf transport_modules_pdf swagger_pdf swagger_zip test_cases_pdf

foreword_pdf:
	cd 0_foreword && $(MAKE) make_pdf

introduction_pdf:
	cd A_introduction && $(MAKE) make_pdf

use_cases_pdf:
	cd B_use_cases && $(MAKE) make_pdf

transport_modules_pdf:
	cd C_transport_modules && $(MAKE) make_pdf

swagger_pdf:
	cd D_swagger && $(MAKE) make_pdf

swagger_zip:
	cd D_swagger && $(MAKE) zip_swagger

test_cases_pdf:
	cd E_test_cases && $(MAKE) make_pdf


clean:
	rm -R -f generated

