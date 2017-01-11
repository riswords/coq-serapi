(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016-2017 MINES ParisTech                                  *)
(* Written by: Emilio J. Gallego Arias                                  *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Conv

module Names   = Ser_names
module Constr  = Ser_constr

module Rel = struct

  module Declaration = struct

  type t =
    [%import: Context.Rel.Declaration.t]
    [@@deriving sexp]

  end

  type t =
    [%import: Context.Rel.t]
    [@@deriving sexp]

end

module Named = struct

  module Declaration = struct

  type t =
    [%import: Context.Named.Declaration.t]
    [@@deriving sexp]

  end

  type t =
    [%import: Context.Named.t]
    [@@deriving sexp]

end