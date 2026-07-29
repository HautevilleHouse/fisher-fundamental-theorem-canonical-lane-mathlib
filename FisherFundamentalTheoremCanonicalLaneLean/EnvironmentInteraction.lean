import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FisherFundamentalTheoremCanonicalLaneLean

structure EnvironmentInteractionPackage {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} {F : FisherEquationPackage P A} where
  environmentEffect : ℝ
  interactionTerm : ℝ
  correctedRateChange : ℝ
  interactionModeled : Prop
  evidence : interactionModeled

def EnvironmentInteractionClosed {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} {F : FisherEquationPackage P A}
    (E : EnvironmentInteractionPackage P A F) : Prop :=
  E.interactionModeled

theorem environment_interaction_from_evidence {P : PopulationGeneticsPackage}
    {A : AdditiveGeneticVariancePackage P} {F : FisherEquationPackage P A}
    (E : EnvironmentInteractionPackage P A F) : EnvironmentInteractionClosed E :=
  E.evidence

end FisherFundamentalTheoremCanonicalLaneLean
end HautevilleHouse