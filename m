Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRV32PWAKGQECIBCX6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B263C8FDE
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 19:26:31 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 19sf12096468oii.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 10:26:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570037190; cv=pass;
        d=google.com; s=arc-20160816;
        b=SifgAxl4QhHQhiBAsLpNrhWosziq2The/Cwei0Mn1wXJ5pmzwPSo/iGluP5mqLIo7/
         ItKNDsrfF3/QAfdW4iCB34jAFnNbuYlU7YYE5p8SbZ3OkDcZ+PmMDr6UOQZcgvK6IhbX
         gvU9x/v6TbQgOR5r7uIJMDwDsqtDX02ntAPSV7JrH5HPySHjzp/4vFCXN8bNYa5jkCJt
         3z9wCa8CwCdjjJno9SJnBP9e2O7wfEvnTmQfJn5gyLzVJZVfl8fjgZb6aw7HmMVNqo+r
         mkl/XmQJEaUNxQHdoLxmHZ9gtr6pNfmFGhN51G2qbn7qDl2nZNxRIujhN2uzYwBSTyNK
         m4RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HXrgyYcQhyYa46nBx80hAnZetSo3ywrnUwoz4LRpQFA=;
        b=VGqOZhRTb0ErArFvGUn4Yi7SbIePgt1V2A7gWkxu98csBZR5YH9HpqNrh/cMT7eVPR
         GxWy54l/2JYKL+BFC8vDvBuorJxjhmK52fptVnoghdtxmwQ2iwg9lgdN3rSeB2dghGQ3
         y6RnvcAXCL2zB3jYPj/mlskGskEvWIv9T9FiBUav7Gv5/0UmXGpj+LyUHDclClyIOhur
         POMlkI0/D7MqAkCfphuWHct2vf65u8M+rFODn/G+bepsz/paOt1RRgy99KIb5qxDr8B5
         td3XgcdnYbbYvoC6VwzHzOEwSrDLUi8EydesY1DVT/r5lC/4VT+RZOkpiiEfaz7YOfYA
         UX7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sK76G4es;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HXrgyYcQhyYa46nBx80hAnZetSo3ywrnUwoz4LRpQFA=;
        b=svP0o32qQ0zqLNVhVXaT4YjebMko8VDEEze6BLQxr7fpowiqYtaaHXDOIJBs4HB0ud
         w/mdqNbcV2OaglUPJTYuv3N4vqDeTVTLH6RqW2YdKGegX50vMr+11FLEIgdqKHl/co14
         NPvoY9SyGtMMMei9DyZlAZKpetYJedBA6I2c8Pb94pq9RqfMphYDrqhN1tsd3r8yqWmj
         kwtViAVUID9thlIMlhOUgaaev2Tsm6fakehq1vbslB62akwDmz0ArDaOZ+HvwLgDbtmN
         soblj/KI56Y1Iw04JTaSNYlkRm6ns/6KPeaj/fVM2FFhNLLqjJ87ebXwRN4sSwoWDPdB
         2r4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HXrgyYcQhyYa46nBx80hAnZetSo3ywrnUwoz4LRpQFA=;
        b=a76dphzrZKdyQiwSRXkmZhRqoOffjPta0s0+DMQ3h3fSfUmegp8EfjZBCEXJQWzwu2
         wT4L+4AwOk1RwXK8cxn+3Djzs6szXILa+IrQfNPWqWT5v22v3iEewVw3Yj6sE6uJKskS
         AGtL4hXOnJxdJvEe/MIzgkHlVL8raD3wrXZtRA3+fX9ygC03umBwrh39ie5oVBWKCLwm
         ROP4LlCsMO4S/ET563TsDqfo62aBRD+RMru8lJPxjlObzg9CF2KO7mzOUKJFwC2EYCyb
         Fi7BY8sa1HtlxYGjsc+h+JPZCHM0olKzvnbP2lKQ7zm7IUv11FxrmA8sCPxv6J5QPBNO
         BbHw==
X-Gm-Message-State: APjAAAUl3l3I7aN0kH3msBOnFqNNM/MYGaiLqYO/Q9ENI+a2ssMEro8J
	zTujWSn9zjdIEFgIK+VCb9Q=
X-Google-Smtp-Source: APXvYqyUkuosgVwrbGMZ3vd3g9mdJc7Z4NJ3WngTtLlShIMKKjoBzLEFz44yFAE2ia86JCNR780TUw==
X-Received: by 2002:a9d:6245:: with SMTP id i5mr3357292otk.138.1570037190327;
        Wed, 02 Oct 2019 10:26:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls583436otf.14.gmail; Wed, 02 Oct
 2019 10:26:30 -0700 (PDT)
X-Received: by 2002:a9d:7b54:: with SMTP id f20mr3641881oto.34.1570037189976;
        Wed, 02 Oct 2019 10:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570037189; cv=none;
        d=google.com; s=arc-20160816;
        b=NATAzFX44RjlWsPsZe7FNAmHtAMXxlZPvOu4NuK/E8u4QSa2wWJHvm2MPrgbpVlZye
         axKulA6jWvi0pfaYC6h0hzgAmPZZUT6LlZPZpLtmu2NXJ3qkccUJti2vCzG0ETPkolyt
         YOU+m7J1i/QUIS3sm1UhzR5JwwolQxCDIkph3+6dgDwUO/gBYuhvndToYbt2osxIJCqp
         ueVjII9VqPZYdNB2RXkgY6Ywrf2o+FVCxyU30Sybeq8mDevo/GoLu3XO1r2u2H+stUrv
         A4hk0oeRBtwotKJBS1C+MX0xtxht2IIOWo/WVxpUl2pbvTCMnQsVEclVPvcYzow1VTbs
         lswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MwMF+b8Gs2voaUZl7W7tAgnUYwGS2gy5m8Ett++ifOw=;
        b=RrUKBS/4w5uXHYqzRH7GbDXlMwbEBrQjmVVAZGn2APGrNN3N2yf9FiZWr5OgMsrK1W
         zzbJVrfc/BFRiFFwg3gM6vxIwKkayV3sgyv3PxONqBqE9cDoRSPObQfw2/NaQelNyZPg
         vI2VG9CfiRlSR5FGyY5UKjHKbGcF6fkrQpTibY+fC8YEJO416DsjswBJIBmGE9lSEVxh
         c2nJyC5an+D9SxAuDFv1CZNVs/NVt1vD/4UsSHllon6g0YaDu8AGUTr28jA/MwNF7OpK
         NhuIPAfNeQ71WHBBmXU23NYWi56111+Wy9PEvWLAQJGm+qi41ss/vPwhyl5eFdSZbU7j
         OJMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sK76G4es;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id n63si1065764oib.3.2019.10.02.10.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 10:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id q21so10745563pfn.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 10:26:29 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr4822076pgg.381.1570037188276;
 Wed, 02 Oct 2019 10:26:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt-8LAof_O83EdHUuLn=_xMXcyA0yCEu9WrROwJrbebTH9kvw@mail.gmail.com>
 <ACAF51BA-2C97-404E-ABF2-D6446D2A7D22@gmail.com> <CAEt-8LAR_k5a2p8x0_Haed_7zgTtXN=PVWa-CXcvpzayPX_fiA@mail.gmail.com>
 <CAOrgDVOdmbnDdSFXn=HEQin2J3qisJL1sCdquPnoa8OxiFGDTw@mail.gmail.com>
In-Reply-To: <CAOrgDVOdmbnDdSFXn=HEQin2J3qisJL1sCdquPnoa8OxiFGDTw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 10:26:16 -0700
Message-ID: <CAKwvOdnf_Rm3hM=pQjM3GdO6TanvL36Yi5OZjMDWvOPQCrqRJw@mail.gmail.com>
Subject: Re: [llvm] r373333 - [InstCombine] sprintf(dest, "%s", str) ->
 memccpy(dest, str, 0, MAX)
To: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Cc: Peter Smith <peter.smith@linaro.org>, llvm-commits <llvm-commits@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sK76G4es;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Oct 2, 2019 at 8:41 AM D=C3=A1vid Bolvansk=C3=BD
<david.bolvansky@gmail.com> wrote:
>
> Well, memcpy is emitted only on posix/unix like systems. TLI claims
> that Windows does not have a memccpy, so transformation XXX -> memccpy
> is not possible. (They will have to implement it for C20).
>
> The linux kernel is always special case, so I think the fix should be
> on linux kernel side,  -ffreestanding / -fno-builtin-snprintf works
> here. Same story as for "bcmp" some time ago (I dont know how that was
> resolved).

For bcmp, I added a simple alias to memcmp:
https://github.com/ClangBuiltLinux/linux/commit/5f074f3e192f10c9fade898b9b3=
b8812e3d83342

The kernel is compiled as -std=3Dgnu89.  Can we not emit calls to
memccpy if LangOpt says we're < C20?

>
> >> May I ask that you copy Nick Desaulniers (on CC:) on the review for
> your next change that introduces memccpy.
>
> Yeah, I will do inform them.
>
> st 2. 10. 2019 o 17:16 Peter Smith <peter.smith@linaro.org> nap=C3=ADsal(=
a):
> >
> > Thanks for the response, apologies for missing the revert earlier.
> >
> > May I ask that you copy Nick Desaulniers (on CC:) on the review for
> > your next change that introduces memccpy. The linux kernel does use
> > snprintf and I'm sure they'd want some warning that their clang builds
> > are likely to break.
> > My understanding (https://clang.llvm.org/compatibility.html) is that
> > clang defaults to C11, I can understand making the transformation if
> > the standard is set to C20, however I'm not sure whether we should be
> > doing it when the standard is C11. Anyway one for the review.
> >
> > Peter
> >
> > On Wed, 2 Oct 2019 at 16:07, D=C3=A1vid Bolvansk=C3=BD <david.bolvansky=
@gmail.com> wrote:
> > >
> > > This was reverted a bit later. I mismeasured it and thought it is fas=
ter than memcpy and strlen solution.
> > > Anyway, snprintf -> memccpy is worth it (30% faster). I have a patch =
for it, I will land it later. There are more oportunities to exploit memccp=
y for efficient string concatenation/copying. (You can find redhat=E2=80=99=
s article somewhere about it).
> > >
> > > It is a part of C20. The solution for the kernel is either use -fno-b=
uiltin-memccpy or implement it.
> > >
> > > The kernel
> > >
> > > Odoslan=C3=A9 z iPhonu
> > >
> > > > D=C5=88a 2. 10. 2019 o 15:25 u=C5=BE=C3=ADvate=C4=BE Peter Smith <p=
eter.smith@linaro.org> nap=C3=ADsal:
> > > >
> > > > =EF=BB=BFThis change has caused a regression in the AArch64 Linux k=
ernel build
> > > > (Linaro CI), I'll forward the details from the CI system of how to
> > > > reproduce it directly via email
> > > >
> > > > The errors look to be from the linux kernel module tool modpost. Th=
ese
> > > > are undefined symbols coming from linux kernel modules.
> > > > ERROR: "memccpy" [sound/pci/hda/snd-hda-codec-ca0132.ko] undefined!
> > > > ERROR: "memccpy" [drivers/infiniband/hw/mlx4/mlx4_ib.ko] undefined!
> > > > ERROR: "memccpy" [drivers/target/iscsi/iscsi_target_mod.ko] undefin=
ed!
> > > > ERROR: "memccpy" [drivers/nvdimm/libnvdimm.ko] undefined!
> > > > ERROR: "memccpy" [drivers/staging/rtl8192e/rtllib.ko] undefined!
> > > > ERROR: "memccpy" [drivers/i2c/busses/i2c-jz4780.ko] undefined!
> > > > ERROR: "memccpy" [drivers/usb/mtu3/mtu3.ko] undefined!
> > > > ERROR: "memccpy" [drivers/net/usb/hso.ko] undefined!
> > > > ERROR: "memccpy" [drivers/net/wireless/ath/ath9k/ath9k_htc.ko] unde=
fined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene-v2/xgene-enet-v2.k=
o] undefined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene/xgene-enet.ko] und=
efined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/qlogic/qed/qed.ko] undefined=
!
> > > > ERROR: "memccpy" [drivers/net/ethernet/mellanox/mlx4/mlx4_core.ko] =
undefined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio_vf.=
ko]
> > > > undefined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio.ko]=
 undefined!
> > > > ERROR: "memccpy" [drivers/net/ethernet/brocade/bna/bna.ko] undefine=
d!
> > > > ERROR: "memccpy" [drivers/scsi/mpt3sas/mpt3sas.ko] undefined!
> > > > ERROR: "memccpy" [drivers/scsi/bfa/bfa.ko] undefined!
> > > >
> > > > I believe that memccpy is not in the C Standard so it is likely the
> > > > Linux kernel does not provide its own definition. Is there a reason=
 to
> > > > use a non-standard memccpy in the transformation unless we can
> > > > guarantee that the environment will support it?
> > > >
> > > > Can you take a look?
> > > >
> > > > Peter
> > > >
> > > >> On Tue, 1 Oct 2019 at 14:01, David Bolvansky via llvm-commits
> > > >> <llvm-commits@lists.llvm.org> wrote:
> > > >>
> > > >> Author: xbolva00
> > > >> Date: Tue Oct  1 06:03:10 2019
> > > >> New Revision: 373333
> > > >>
> > > >> URL: http://llvm.org/viewvc/llvm-project?rev=3D373333&view=3Drev
> > > >> Log:
> > > >> [InstCombine] sprintf(dest, "%s", str) -> memccpy(dest, str, 0, MA=
X)
> > > >>
> > > >> Modified:
> > > >>    llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > >>    llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Struct=
.ll
> > > >>    llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > >>
> > > >> Modified: llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/lib/Transforms=
/Utils/SimplifyLibCalls.cpp?rev=3D373333&r1=3D373332&r2=3D373333&view=3Ddif=
f
> > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> > > >> --- llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp (original=
)
> > > >> +++ llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp Tue Oct  =
1 06:03:10 2019
> > > >> @@ -2415,9 +2415,11 @@ Value *LibCallSimplifier::optimizePrintF
> > > >> }
> > > >>
> > > >> Value *LibCallSimplifier::optimizeSPrintFString(CallInst *CI, IRBu=
ilder<> &B) {
> > > >> +  Value *Dst =3D CI->getArgOperand(0);
> > > >> +  Value *FmtStr =3D CI->getArgOperand(1);
> > > >>   // Check for a fixed format string.
> > > >>   StringRef FormatStr;
> > > >> -  if (!getConstantStringInfo(CI->getArgOperand(1), FormatStr))
> > > >> +  if (!getConstantStringInfo(FmtStr, FormatStr))
> > > >>     return nullptr;
> > > >>
> > > >>   // If we just have a format string (nothing else crazy) transfor=
m it.
> > > >> @@ -2428,9 +2430,10 @@ Value *LibCallSimplifier::optimizeSPrint
> > > >>       return nullptr; // we found a format specifier, bail out.
> > > >>
> > > >>     // sprintf(str, fmt) -> llvm.memcpy(align 1 str, align 1 fmt, =
strlen(fmt)+1)
> > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand(1),=
 1,
> > > >> -                   ConstantInt::get(DL.getIntPtrType(CI->getConte=
xt()),
> > > >> -                                    FormatStr.size() + 1)); // Co=
py the null byte.
> > > >> +    B.CreateMemCpy(
> > > >> +        Dst, 1, FmtStr, 1,
> > > >> +        ConstantInt::get(DL.getIntPtrType(CI->getContext()),
> > > >> +                         FormatStr.size() + 1)); // Copy the null=
 byte.
> > > >>     return ConstantInt::get(CI->getType(), FormatStr.size());
> > > >>   }
> > > >>
> > > >> @@ -2440,13 +2443,14 @@ Value *LibCallSimplifier::optimizeSPrint
> > > >>       CI->getNumArgOperands() < 3)
> > > >>     return nullptr;
> > > >>
> > > >> +  Value *Str =3D CI->getArgOperand(2);
> > > >>   // Decode the second character of the format string.
> > > >>   if (FormatStr[1] =3D=3D 'c') {
> > > >>     // sprintf(dst, "%c", chr) --> *(i8*)dst =3D chr; *((i8*)dst+1=
) =3D 0
> > > >> -    if (!CI->getArgOperand(2)->getType()->isIntegerTy())
> > > >> +    if (!Str->getType()->isIntegerTy())
> > > >>       return nullptr;
> > > >> -    Value *V =3D B.CreateTrunc(CI->getArgOperand(2), B.getInt8Ty(=
), "char");
> > > >> -    Value *Ptr =3D castToCStr(CI->getArgOperand(0), B);
> > > >> +    Value *V =3D B.CreateTrunc(Str, B.getInt8Ty(), "char");
> > > >> +    Value *Ptr =3D castToCStr(Dst, B);
> > > >>     B.CreateStore(V, Ptr);
> > > >>     Ptr =3D B.CreateGEP(B.getInt8Ty(), Ptr, B.getInt32(1), "nul");
> > > >>     B.CreateStore(B.getInt8(0), Ptr);
> > > >> @@ -2455,17 +2459,30 @@ Value *LibCallSimplifier::optimizeSPrint
> > > >>   }
> > > >>
> > > >>   if (FormatStr[1] =3D=3D 's') {
> > > >> -    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, alig=
n 1 str,
> > > >> -    // strlen(str)+1)
> > > >> -    if (!CI->getArgOperand(2)->getType()->isPointerTy())
> > > >> +    if (!Str->getType()->isPointerTy())
> > > >>       return nullptr;
> > > >> +
> > > >> +    // sprintf(dest, "%s", str) -> memccpy(dest, str, 0, MAX)
> > > >> +    if (CI->use_empty()) {
> > > >> +      Value *S =3D (Dst->getType() =3D=3D Str->getType())
> > > >> +                     ? Str
> > > >> +                     : B.CreateBitCast(Str, Dst->getType());
> > > >> +      unsigned SizeTyBitwidth =3D
> > > >> +          DL.getIntPtrType(CI->getContext())->getPrimitiveSizeInB=
its();
> > > >> +      Value *NewSize =3D ConstantInt::get(B.getIntNTy(SizeTyBitwi=
dth),
> > > >> +                                        APInt::getMaxValue(SizeTy=
Bitwidth));
> > > >> +      emitMemCCpy(Dst, S, B.getInt32('\0'), NewSize, B, TLI);
> > > >> +      return Dst;
> > > >> +    }
> > > >>
> > > >> -    Value *Len =3D emitStrLen(CI->getArgOperand(2), B, DL, TLI);
> > > >> +    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, alig=
n 1 str,
> > > >> +    // strlen(str)+1)
> > > >> +    Value *Len =3D emitStrLen(Str, B, DL, TLI);
> > > >>     if (!Len)
> > > >>       return nullptr;
> > > >>     Value *IncLen =3D
> > > >>         B.CreateAdd(Len, ConstantInt::get(Len->getType(), 1), "len=
inc");
> > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand(2),=
 1, IncLen);
> > > >> +    B.CreateMemCpy(Dst, 1, Str, 1, IncLen);
> > > >>
> > > >>     // The sprintf result is the unincremented number of bytes in =
the string.
> > > >>     return B.CreateIntCast(Len, CI->getType(), false);
> > > >>
> > > >> Modified: llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy=
-Struct.ll
> > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Transform=
s/InstCombine/2010-05-30-memcpy-Struct.ll?rev=3D373333&r1=3D373332&r2=3D373=
333&view=3Ddiff
> > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> > > >> --- llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Struc=
t.ll (original)
> > > >> +++ llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Struc=
t.ll Tue Oct  1 06:03:10 2019
> > > >> @@ -1,3 +1,4 @@
> > > >> +; NOTE: Assertions have been autogenerated by utils/update_test_c=
hecks.py
> > > >> ; RUN: opt -instcombine -S < %s | FileCheck %s
> > > >> ; PR7265
> > > >>
> > > >> @@ -9,10 +10,14 @@ target triple =3D "x86_64-unknown-linux-gn
> > > >> @.str =3D private constant [3 x i8] c"%s\00"
> > > >>
> > > >> define void @CopyEventArg(%union.anon* %ev) nounwind {
> > > >> +; CHECK-LABEL: @CopyEventArg(
> > > >> +; CHECK-NEXT:  entry:
> > > >> +; CHECK-NEXT:    [[TMP0:%.*]] =3D bitcast %union.anon* [[EV:%.*]]=
 to i8*
> > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* undef,=
 i8* [[TMP0]], i32 0, i64 -1)
> > > >> +; CHECK-NEXT:    ret void
> > > >> +;
> > > >> entry:
> > > >>   %call =3D call i32 (i8*, i8*, ...) @sprintf(i8* undef, i8* getel=
ementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %union.anon* %=
ev) nounwind
> > > >> -; CHECK: bitcast %union.anon* %ev to i8*
> > > >> -; CHECK: call void @llvm.memcpy.p0i8.p0i8.i64
> > > >>   ret void
> > > >> }
> > > >>
> > > >>
> > > >> Modified: llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Transform=
s/InstCombine/sprintf-1.ll?rev=3D373333&r1=3D373332&r2=3D373333&view=3Ddiff
> > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> > > >> --- llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll (original)
> > > >> +++ llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll Tue Oct  1=
 06:03:10 2019
> > > >> @@ -85,15 +85,11 @@ define void @test_simplify4(i8* %dst) {
> > > >>
> > > >> define void @test_simplify5(i8* %dst, i8* %str) {
> > > >> ; CHECK-LABEL: @test_simplify5(
> > > >> -; CHECK-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(i8* nonnull =
dereferenceable(1) [[STR:%.*]])
> > > >> -; CHECK-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]], 1
> > > >> -; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1=
 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* [[DST:=
%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > >> ; CHECK-NEXT:    ret void
> > > >> ;
> > > >> ; CHECK-IPRINTF-LABEL: @test_simplify5(
> > > >> -; CHECK-IPRINTF-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(i8* =
nonnull dereferenceable(1) [[STR:%.*]])
> > > >> -; CHECK-IPRINTF-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]], 1
> > > >> -; CHECK-IPRINTF-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8*=
 align 1 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > >> +; CHECK-IPRINTF-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8=
* [[DST:%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > >> ; CHECK-IPRINTF-NEXT:    ret void
> > > >> ;
> > > >>   %fmt =3D getelementptr [3 x i8], [3 x i8]* @percent_s, i32 0, i3=
2 0
> > > >>
> > > >>
> > > >> _______________________________________________
> > > >> llvm-commits mailing list
> > > >> llvm-commits@lists.llvm.org
> > > >> https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-commits



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnf_Rm3hM%3DpQjM3GdO6TanvL36Yi5OZjMDWvOPQCrqRJw%40m=
ail.gmail.com.
