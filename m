Return-Path: <clang-built-linux+bncBD4LX4523YGBBEWOSD3QKGQEK6SNJBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D421F801B
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 03:08:35 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id y5sf9073547qto.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 18:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592010514; cv=pass;
        d=google.com; s=arc-20160816;
        b=f3gx9cPRc8e54WUxd+jfhF5/t20mytKCvpXyPtjKWjZ0UlKOotpBMtO4HoCRtPALfM
         NFulVTbQNH8+m33Qsd7mqcOgjWWyoT6iJ/gXukgnbsxM2dkiNnX9+NSfdLogRzj0sfZu
         1Lk0ExOFzxuZQXL753MoFRA+kvGL2z+7Ws1cs0FY7pdDR2zU5fl4FlX1603HoYEcAz1U
         QZD9xgbFH64vRtJGu6QmNnMHiQAx/T5nAvcEz3DlGQ/tSdPd1Jo7Cg6AlcJGBK+XORpF
         iU2Xa+PwFYQdVu2n/l1SlnxqrYEQ8lARsIn6wspfk3xUGhFpWPsolz4SAItDJ6cl/QWE
         qsdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=E5pMMG3C/g6zxjosurezZaSFsv3pKXtCCqXMd190cP8=;
        b=RK6bVAUxAK41DyI4F3exhuxaPIpK9mEqIbqQO8QPzsvFjtxG9CLfFF7ar7dk5FrGOp
         ds6OP6KeEGEgPxHmeCJMN6Tf8ti9M336TAvmdmHXtPljqK6Z1XlZ9AFfG9pC+LFyAUA1
         zJctiJu8uLjtPHP0D2UdriuKjS5qCnk0Qke93dvI/y+xsDb0/PBnAl1l7nPFVwI/Bgik
         jdbhMLcLvqP2i9DNut0lhKnIcijss/o4a6HzxMu7Zwna48z9j0iD95cnDCwlp25XHVlI
         DbUBlhy52gUt2tzl2PwuQDyYtsdAgxa99QcpPMJC9zeEuXV7Su7EmOMvYMpohXrWTvPp
         9//A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5pMMG3C/g6zxjosurezZaSFsv3pKXtCCqXMd190cP8=;
        b=Lgdvc+Xth4Ngpm6VPM0VQmSgA4cFJHKSeJR458bOhT9anFhK9ViGDdRjsgWLdG4kxm
         To24xGYgObqR+jKnVvRFbj8kxmiJn43PRIgIIt+N3IszG/7dkOO2g9YOWHQahRryYGu3
         X/haYk3FFNhQEw19CRNCgps8qsldXnLIiS4JnMNBzJpmTSbzreQ11+i+6aZ/gadb/puN
         IA5Ta/EcCyfYavJj8/niM5AZEAP4Gjvg6jgUjN1+c4P0wuPNVQHQBzR+FMAEut8sDzlm
         hekqyl8OW75trdl5FhGRq2yITvD/1+vbeiTFhRANcyAzYHATOe0YlIoSUJ8gyg31vq+p
         rqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5pMMG3C/g6zxjosurezZaSFsv3pKXtCCqXMd190cP8=;
        b=qyjYkwgwwamj7h9DL7UFCr/xVBMR8GxwY+6FR2IdtPHumJieALEHr/URpSgBnJtJka
         0WNwb8F7IsooWMvjVmcWhbvdaVP931dnGLlidCwNe36wg8aayNqvPjDqkmmcrKqUCRQZ
         ZyA7Zg2wY3ifla0lwy9Q/nSlLU06/J36xMD4BiqsERfhiQSMkOmpz308DzS/uqTD3Xjz
         RbgDxzivSl5+Ieg2a6gYhSRq2VBoZSGBtpZwwrqtNat74mIcepMtlov5ELifOoPRHPpy
         IDN7fjmzKHb9VGPGTLiHs/bWcqgMQB9z3O2OiZ1lNcD1oYK26qOdE4fvCPc3nI5AN24x
         2Lmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HjogEfuIG3aaPYskgFV3VwJonMbnoCiG8cF6mPhjzBykdHUM9
	O3r25BZCnErOpSouJISs798=
X-Google-Smtp-Source: ABdhPJytxrTLzejUDApqTyvfguFpn2YdxF3nXqOHWmFev6rqW4wD3l+7ltOMXsRwXlD1J5I2Cg/I+w==
X-Received: by 2002:aed:3b34:: with SMTP id p49mr5935169qte.283.1592010514244;
        Fri, 12 Jun 2020 18:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2756:: with SMTP id n83ls3798605qkn.1.gmail; Fri, 12 Jun
 2020 18:08:33 -0700 (PDT)
X-Received: by 2002:a37:a89:: with SMTP id 131mr5675745qkk.92.1592010513806;
        Fri, 12 Jun 2020 18:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592010513; cv=none;
        d=google.com; s=arc-20160816;
        b=ehK0uiXb0ce2zK9et27sjYYld+pIEEIXzgbctkTN29hIwu4n5+CQYUSDMisU7Qxcfx
         ycqMqOxxJntk/G+93rZpXRqjUshfE/Z+MvjEvvHEQO2jb2s+Z8e9LRPoKimpirryMv/Y
         686mmAIEh4NJMXugye+W+ES0ljAYOvqzJYalXNoLBNXxXfOaGUmihQU0YM1tQ1GfR/Ma
         smAogGRSt8RLM3wwX3ITjCINCK/+4DiSqypNmw+B5KyRjQHc2deQMMkAd49U20pEx2Z2
         mCBuZeeMJlDvoGn8VdXW0LUC9RK7pHmWo3f8WaIYLPEGWvP78FScKXsWbO9ROehJOw6F
         XhjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=Fn0OU2BeoA1fmbYWSDF7Up9QgShdQWB0V552IueVpbs=;
        b=MKa+ptysvVCaIAxHdFnHYWwskHEKosLEjY1iEvAlcQwOOiMzyLeLvdwy4GU+oWSM6v
         buIcta69xkxU5fEB3ImlaTEMPxPaPVwXKZkoLKBb031nRmZI8eWbmreN0QTzZXGnirSo
         ADl2I+5meI5gNt2F7BUoIPpWPaBBk7TLaus6TURu2Y2WmFhzop2RgHXqXv6rPOJdFS1L
         UuKZRd00phQo1p78jz3s0V/OhtbaSWw1FVwPKnNNL+FE/fFXzEvJCW8Oo88IwwyGVnT6
         T6sNcD39LhhPOzlq9C6+Xrph7+ogeUQB9JonRo6GDJdGvSbCBwmvK8qo0VwpgOB0swAN
         guCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id b1si406598qte.1.2020.06.12.18.08.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 12 Jun 2020 18:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 05D18GAQ009853;
	Fri, 12 Jun 2020 20:08:16 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 05D18FdZ009852;
	Fri, 12 Jun 2020 20:08:15 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 12 Jun 2020 20:08:15 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <patch-notifications@ellerman.id.au>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Nicholas Piggin <npiggin@gmail.com>, Paul Mackerras <paulus@samba.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using 'asm goto'
Message-ID: <20200613010815.GR31009@gate.crashing.org>
References: <49YBKY13Szz9sT4@ozlabs.org> <20200611224355.71174-1-ndesaulniers@google.com> <20200611235256.GL31009@gate.crashing.org> <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi!

On Fri, Jun 12, 2020 at 02:33:09PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 11, 2020 at 4:53 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > The PowerPC part of
> > https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Con=
straints
> > (sorry, no anchor) documents %U.
>=20
> I thought those were constraints, not output templates?  Oh,
>     The asm statement must also use %U<opno> as a placeholder for the
>     =E2=80=9Cupdate=E2=80=9D flag in the corresponding load or store inst=
ruction.
> got it.

Traditionally, *all* constraints were documented here, including the
ones that are only meant for GCC's internal use.  And the output
modifiers were largely not documented at all.

For GCC 10, for Power, I changed it to only document the constraints
that should be public in gcc.info (and everything in gccint.info).  The
output modifiers can neatly be documented here as well, since it such a
short section now.  We're not quite there yet, but getting there.

> > Traditionally the source code is the documentation for this.  The code
> > here starts with the comment
> >       /* Write second word of DImode or DFmode reference.  Works on reg=
ister
> >          or non-indexed memory only.  */
> > (which is very out-of-date itself, it works fine for e.g. TImode as wel=
l,
> > but alas).
> >
> > Unit tests are completely unsuitable for most compiler things like this=
.
>=20
> What? No, surely one may write tests for output operands.  Grepping
> for `%L` in gcc/ was less fun than I was hoping.

You should look for 'L' instead (incl. those quotes) ;-)

Unit tests are 100x as much work, and gets <5% of the problems, compared
to regression tests.  Unit tests only test the stuff you should have
written *anyway*.  It is much more useful to test that much higher level
things work, IMNSHO.

> > HtH,
>=20
> Yes, perfect, thank you so much!  So it looks like LLVM does not yet
> handle %L properly for memory operands.
> https://bugs.llvm.org/show_bug.cgi?id=3D46186#c4
> It's neat to see how this is implemented in GCC (and how many aren't
> implemented in LLVM, yikes :( ).  For reference, this is implemented
> in PPCAsmPrinter::PrintAsmOperand() and
> PPCAsmPrinter::PrintAsmMemoryOperand() in
> llvm/lib/Target/PowerPC/PPCAsmPrinter.cpp.  GCC switches first on the
> modifier characters, then the operand type.

That is what the rs6000 backend currently does, yeah.  The print_operand
function just gets passed the modifier character (as "int code", or 0 if
there is no modifier).  Since there are so many modifiers there aren't
really any better options than just doing a "switch (code)" around
everything else (well, things can be factored, some helper functions,
etc., but this is mostly very old code, and it has grown organically).

> LLVM dispatches on operand type, then modifier.

That is neater, certainly for REG operands.

> When I was looking into LLVM's AsmPrinter class,
> I was surprised to see it's basically an assembler that just has
> complex logic to just do a bunch of prints, so it makes sense to see
> that pattern in GCC literally calling printf.

GCC always outputs assembler code.  This is usually a big advantage, for
things like output_operand.

> Some things I don't understand from PPC parlance is the "mode"
> (preinc, predec, premodify) and small data operands?

"mode" is "machine mode" -- SImode and the like.  PRE_DEC etc. are
*codes* (rtx codes), like,  (mem:DF (pre_dec:SI (reg:SI 39)))  (straight
from the manual).

> IIUC the bug report correctly, it looks like LLVM is failing for the
> __put_user_asm2_goto case for -m32.  A simple reproducer:
> https://godbolt.org/z/jBBF9b
>=20
> void foo(long long in, long long* out) {
> asm volatile(
>   "stw%X1 %0, %1\n\t"
>   "stw%X1 %L0, %L1"
>   ::"r"(in), "m"(*out));
> }

This is wrong if operands[0] is a register, btw.  So it should use 'o'
as constraint (not 'm'), and then the 'X' output modifier has become
useless.

> prints (in GCC):
> foo:
>   stw 3, 0(5)
>   stw 4, 4(5)
>   blr
> (first time looking at ppc assembler, seems constants and registers
> are not as easy to distinguish,

The instruction mnemonic always tells you what types all arguments are.
Traditionally we don't write spaces after commas, either.  That is
actually easier to read -- well, if you are used to it, anyway! :-)

> https://developer.ibm.com/technologies/linux/articles/l-ppc/ say "Get
> used to it." LOL, ok).

Since quite a while you can write your assembler using register names as
well.  Not using the dangerous macros the Linux kernel had/has(with
which you can write "rN" in place of any "N", and it doesn't force you
to use the register name either, so you could write "li r3,r4" and
"mr r3,0" and even "addi r3,r0,1234", all very misleading).

> so that's "store word from register 3 into dereference of register 5
> plus 0, then store word from register 4 into dereference of register 5
> plus 4?"

Yup.

> Guessing the ppc32 abi is ILP32 putting long long's into two
> separate registers?

Yes, and the order is the same as it would be in memory (on BE, high
half goes into the lower-numbered register; on LE, the wr^Wother way
around).

> Seems easy to implement in LLVM (short of those modes/small data operands=
).

I don't know what SDATA variants LLVM does support?

> https://reviews.llvm.org/D81767

Output modifiers are not just for use by the calling convention (as your
examples already show :-) )

%Ln is the second word of a multi-word reference, not the "upper word"
(%Yn is third, %Zn is fourth, and for BE it isn't the high half even
for 2-word things).

The code looks like it will work (I don't know most LLVM specifics of
course).

Cheers,


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200613010815.GR31009%40gate.crashing.org.
