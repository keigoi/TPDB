{-# htermination (numerator :: Ratio MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;

numerator (CnPc x y) = x;
