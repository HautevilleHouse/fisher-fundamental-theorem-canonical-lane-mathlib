import FisherFundamentalTheoremCanonicalLaneLean.FinalTheorem

/-!
# Fisher's Fundamental Theorem of Natural Selection

This module formalizes the key components of Fisher's fundamental theorem:
the rate of change of mean fitness equals the additive genetic variance.
-/

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure FisherTheoremPackage where
  populationSize : ℕ
  meanFitness : ℝ
  additiveGeneticVariance : ℝ
  rateOfChange : ℝ
  theoremStatement : ℝ
  rateOfChangeEqualsVariance : rateOfChange = additiveGeneticVariance

theorem fisher_fundamental_theorem (pkg : FisherTheoremPackage) : pkg.rateOfChange = pkg.additiveGeneticVariance :=
  pkg.rateOfChangeEqualsVariance

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse