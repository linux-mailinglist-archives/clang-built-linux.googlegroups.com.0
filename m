Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJF42PWAKGQEBMMKEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2DAC8FE4
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 19:28:05 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id d12sf10176322ote.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 10:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570037284; cv=pass;
        d=google.com; s=arc-20160816;
        b=sUSgKXWKcNuaEpOYgUvCRu8xs5lFrUYgZU8F+yqkeuIKidyE47wrdWIEOLoE9LEp4H
         bJZMLLZ1wa8QEfbhun36eXOpohMylw9t1jSYkAOJ1T2R1v5eeW1J44Z+os1mxAvJUnre
         eyoefDfwVp9tbeJPdn/SVQU3kfwL8OqemJEyihROtEeyG3S3Fj+3WUW+qE92Sz1ZP7ae
         5/01Mgx/mnTNfJmym66Og91vzFn/aNYbvdVjRuAWt0WljM4dr7dQn+npWHe4f0jsn87e
         lJsGB07G7YAMTyC5OedNHrQ4Y3aL4gSo3QjzgTzoS0QMVNBrrlTBFyOSMeKwLrSSHjG2
         Kmog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HNOMyNaCmR64s5jm4C1gd3s73IS/Rg8/RFGpVyN763w=;
        b=hrjCrAxUCJSoh/t4sKx35S+AbVpvjFTm5pNgEvPXruYzg+rOk7ak7g3O1fEklYOT8X
         dLmJ2YL7S8TJ+5sQv/9s9Qr40PPW11+ZCoXGDpum19qE49bsT2ULK9IlTpvXJRqeY0Qo
         lWT4vDZxVwRSG3QSqZxTdiggyHbVARrDxoS32tCH0bnNqatpSpBoqByAsmDOoSzUTJNj
         by/fHpnJdvxBtGA8QUO97sf0YIc+DxpNq/2+nzZ3eHfdw9uCI3Wg/kp9RstzgNPOQwRh
         eu0EAO4a7JQJFz7WKwZMVnvSp1pWTYrxwuivJJVD99qgrPw2INQikgB6keH4ild7V71L
         C6ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZqsEMF+E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HNOMyNaCmR64s5jm4C1gd3s73IS/Rg8/RFGpVyN763w=;
        b=Fv6hAJRjQZaSZxHX8YYIpH4CFcaDhuo3hfQ5GWkNzqPet7I7kL/tNaSlRZctctoj4J
         qv0JBWiAgur500xNgwgHIWV2A29cW3DbsqGvguvdJJxE2dw4yGaxi7oAB+N09xju2ajg
         bNt8/jEmi4c/2rv6f533Mh/dHZ3b9pJCJCGaAJIf2xO3T06JNovvfWOHN5y4OI45iAfb
         7gEWtDWtxmu2CMMNzUrnMj94kBsUFdhYnYsozvfKDf17RyCs6GUTUlXITRIeL0PCskXu
         YZuflq3P9S4IxdVrp4ibO6oo78xD7H2MAlz+k4amuPOTxweRiyZkVY4Aktl7tY6oo3T0
         qLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HNOMyNaCmR64s5jm4C1gd3s73IS/Rg8/RFGpVyN763w=;
        b=dCouBQMMcZ59GkDpkZgpwuEiaOzuLkwlqymdJ4qxTb9jxW4wuIIB5kZbmQgYnycpsv
         V0dkkQzMC5/XMWYPYomwXJHqaixWIqIhxba9EXOW6pmAXATdHsaDuTc34WIrW2FMsgeG
         hEgkgDo79GpA5NPQAhECkin17b//QrTTJDFLmESjN73WlzzJZc0YF9U5QZHbK43liZxt
         SOHtexJWPsF6z44w+HYcW3aldJN1uho9HE6192/QTMAen0smEwK85oI/iERIK6GnCP7n
         2yfBwpCtT5FnS21CfbKb0b31I/vK97ws7l5MfMFfAD37ltoCPdAHvLOWOIdQMM1bhO2z
         03tg==
X-Gm-Message-State: APjAAAWm1PS44fYIaK4ibt7txcGmNmHJ7EUD3StXPIvNU3gCv9nJ3QWk
	7e/DZK0GN+/iG0x8FbVp1Go=
X-Google-Smtp-Source: APXvYqyTRtiKIjILaCvG8Q+ZDwcfKzqDdx7KFSBpLL+SvVdlQ1gndT2heKa01EQNV8WRLFdC2riRQQ==
X-Received: by 2002:aca:72d2:: with SMTP id p201mr3826164oic.45.1570037284672;
        Wed, 02 Oct 2019 10:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6acc:: with SMTP id m12ls591512otq.4.gmail; Wed, 02 Oct
 2019 10:28:04 -0700 (PDT)
X-Received: by 2002:a05:6830:609:: with SMTP id w9mr3545890oti.292.1570037284348;
        Wed, 02 Oct 2019 10:28:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570037284; cv=none;
        d=google.com; s=arc-20160816;
        b=krOhqrfeUPoS22fM6xVZbW8OhSry9hShuNuFOt2hoRq6YrU6WSdFtaejXbF3Poc8Ek
         vcyyKZtD3dbuja/NE/Poi4IQtr6UQi0/S3hn/VXnRk+S+XjtPt75SquNbyNxUEmOvJ5f
         674EGhS7avYPafwo6g2tcTjd85JUAWjD90rpg5I1dkN1Z3bn+Te7sdMxPlTAzVu4GpdL
         q8xBMQwZtLYWwi2UBL+era1YobuWDpUmTTOF+Tn70/FbeLLYUwBo5Sg4O220oPtQq4T2
         uHGUVHJsceZj18++w3MGPXahn4OeV+KBzp6e51QGYyCZuDZ1o0Xr8e3kfUaSDaqhKT/o
         hkpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eVOx8aDYRhJTp5efVeiJt0nCGnfe9znt8kKz72h6wH4=;
        b=AZtkIsi09MCu8iyEdvmkI/BCWACkvHHaH9phjTkaT7v23V+fWRpMxpGbaIT01dBzRk
         G7e8ILhfeZPqHU522YKngAwFJW1YdXi+c5j5/Ya3XXTUMVPILj7qJiBoVgbIVu4NR6Ed
         GlMcAgEfK28oTVm1999s81BHmIyHyTIDOqpz+o1Jk9yjegJsYS6Eo/xRgiwoambc2m2s
         8SBYZE0JAS7nuKMmTn2s4xGAtInN478YovZSLpBUrWolIUqV50cEb8lJk5PREf/0M+sq
         oWd6joBcrJoJ4kODWTq0t7CNkf5Kj21i/SH5TZn3mA5KYbRG1YzanOw73BCnlrNv0dtu
         HQ1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZqsEMF+E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id w205si956254oib.2.2019.10.02.10.28.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 10:28:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id e1so6705613pgj.6
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 10:28:04 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr4828512pgg.381.1570037282869;
 Wed, 02 Oct 2019 10:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt-8LAof_O83EdHUuLn=_xMXcyA0yCEu9WrROwJrbebTH9kvw@mail.gmail.com>
 <ACAF51BA-2C97-404E-ABF2-D6446D2A7D22@gmail.com> <CAEt-8LAR_k5a2p8x0_Haed_7zgTtXN=PVWa-CXcvpzayPX_fiA@mail.gmail.com>
 <CAOrgDVOdmbnDdSFXn=HEQin2J3qisJL1sCdquPnoa8OxiFGDTw@mail.gmail.com> <CAKwvOdnf_Rm3hM=pQjM3GdO6TanvL36Yi5OZjMDWvOPQCrqRJw@mail.gmail.com>
In-Reply-To: <CAKwvOdnf_Rm3hM=pQjM3GdO6TanvL36Yi5OZjMDWvOPQCrqRJw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 10:27:51 -0700
Message-ID: <CAKwvOdnG7jf+pX48n5395Cq4YoD6z4XLtwXY1qkbbJbvUfBeJw@mail.gmail.com>
Subject: Re: [llvm] r373333 - [InstCombine] sprintf(dest, "%s", str) ->
 memccpy(dest, str, 0, MAX)
To: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Cc: Peter Smith <peter.smith@linaro.org>, llvm-commits <llvm-commits@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZqsEMF+E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

Also, the kernel doesn't want to make use of -ffreestanding (except in
very specific cases) as it kneecaps other useful compiler transforms.

On Wed, Oct 2, 2019 at 10:26 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Oct 2, 2019 at 8:41 AM D=C3=A1vid Bolvansk=C3=BD
> <david.bolvansky@gmail.com> wrote:
> >
> > Well, memcpy is emitted only on posix/unix like systems. TLI claims
> > that Windows does not have a memccpy, so transformation XXX -> memccpy
> > is not possible. (They will have to implement it for C20).
> >
> > The linux kernel is always special case, so I think the fix should be
> > on linux kernel side,  -ffreestanding / -fno-builtin-snprintf works
> > here. Same story as for "bcmp" some time ago (I dont know how that was
> > resolved).
>
> For bcmp, I added a simple alias to memcmp:
> https://github.com/ClangBuiltLinux/linux/commit/5f074f3e192f10c9fade898b9=
b3b8812e3d83342
>
> The kernel is compiled as -std=3Dgnu89.  Can we not emit calls to
> memccpy if LangOpt says we're < C20?
>
> >
> > >> May I ask that you copy Nick Desaulniers (on CC:) on the review for
> > your next change that introduces memccpy.
> >
> > Yeah, I will do inform them.
> >
> > st 2. 10. 2019 o 17:16 Peter Smith <peter.smith@linaro.org> nap=C3=ADsa=
l(a):
> > >
> > > Thanks for the response, apologies for missing the revert earlier.
> > >
> > > May I ask that you copy Nick Desaulniers (on CC:) on the review for
> > > your next change that introduces memccpy. The linux kernel does use
> > > snprintf and I'm sure they'd want some warning that their clang build=
s
> > > are likely to break.
> > > My understanding (https://clang.llvm.org/compatibility.html) is that
> > > clang defaults to C11, I can understand making the transformation if
> > > the standard is set to C20, however I'm not sure whether we should be
> > > doing it when the standard is C11. Anyway one for the review.
> > >
> > > Peter
> > >
> > > On Wed, 2 Oct 2019 at 16:07, D=C3=A1vid Bolvansk=C3=BD <david.bolvans=
ky@gmail.com> wrote:
> > > >
> > > > This was reverted a bit later. I mismeasured it and thought it is f=
aster than memcpy and strlen solution.
> > > > Anyway, snprintf -> memccpy is worth it (30% faster). I have a patc=
h for it, I will land it later. There are more oportunities to exploit memc=
cpy for efficient string concatenation/copying. (You can find redhat=E2=80=
=99s article somewhere about it).
> > > >
> > > > It is a part of C20. The solution for the kernel is either use -fno=
-builtin-memccpy or implement it.
> > > >
> > > > The kernel
> > > >
> > > > Odoslan=C3=A9 z iPhonu
> > > >
> > > > > D=C5=88a 2. 10. 2019 o 15:25 u=C5=BE=C3=ADvate=C4=BE Peter Smith =
<peter.smith@linaro.org> nap=C3=ADsal:
> > > > >
> > > > > =EF=BB=BFThis change has caused a regression in the AArch64 Linux=
 kernel build
> > > > > (Linaro CI), I'll forward the details from the CI system of how t=
o
> > > > > reproduce it directly via email
> > > > >
> > > > > The errors look to be from the linux kernel module tool modpost. =
These
> > > > > are undefined symbols coming from linux kernel modules.
> > > > > ERROR: "memccpy" [sound/pci/hda/snd-hda-codec-ca0132.ko] undefine=
d!
> > > > > ERROR: "memccpy" [drivers/infiniband/hw/mlx4/mlx4_ib.ko] undefine=
d!
> > > > > ERROR: "memccpy" [drivers/target/iscsi/iscsi_target_mod.ko] undef=
ined!
> > > > > ERROR: "memccpy" [drivers/nvdimm/libnvdimm.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/staging/rtl8192e/rtllib.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/i2c/busses/i2c-jz4780.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/usb/mtu3/mtu3.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/net/usb/hso.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/net/wireless/ath/ath9k/ath9k_htc.ko] un=
defined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene-v2/xgene-enet-v2=
.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene/xgene-enet.ko] u=
ndefined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/qlogic/qed/qed.ko] undefin=
ed!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/mellanox/mlx4/mlx4_core.ko=
] undefined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio_v=
f.ko]
> > > > > undefined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio.k=
o] undefined!
> > > > > ERROR: "memccpy" [drivers/net/ethernet/brocade/bna/bna.ko] undefi=
ned!
> > > > > ERROR: "memccpy" [drivers/scsi/mpt3sas/mpt3sas.ko] undefined!
> > > > > ERROR: "memccpy" [drivers/scsi/bfa/bfa.ko] undefined!
> > > > >
> > > > > I believe that memccpy is not in the C Standard so it is likely t=
he
> > > > > Linux kernel does not provide its own definition. Is there a reas=
on to
> > > > > use a non-standard memccpy in the transformation unless we can
> > > > > guarantee that the environment will support it?
> > > > >
> > > > > Can you take a look?
> > > > >
> > > > > Peter
> > > > >
> > > > >> On Tue, 1 Oct 2019 at 14:01, David Bolvansky via llvm-commits
> > > > >> <llvm-commits@lists.llvm.org> wrote:
> > > > >>
> > > > >> Author: xbolva00
> > > > >> Date: Tue Oct  1 06:03:10 2019
> > > > >> New Revision: 373333
> > > > >>
> > > > >> URL: http://llvm.org/viewvc/llvm-project?rev=3D373333&view=3Drev
> > > > >> Log:
> > > > >> [InstCombine] sprintf(dest, "%s", str) -> memccpy(dest, str, 0, =
MAX)
> > > > >>
> > > > >> Modified:
> > > > >>    llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > > >>    llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Stru=
ct.ll
> > > > >>    llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > > >>
> > > > >> Modified: llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/lib/Transfor=
ms/Utils/SimplifyLibCalls.cpp?rev=3D373333&r1=3D373332&r2=3D373333&view=3Dd=
iff
> > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > > > >> --- llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp (origin=
al)
> > > > >> +++ llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp Tue Oct=
  1 06:03:10 2019
> > > > >> @@ -2415,9 +2415,11 @@ Value *LibCallSimplifier::optimizePrintF
> > > > >> }
> > > > >>
> > > > >> Value *LibCallSimplifier::optimizeSPrintFString(CallInst *CI, IR=
Builder<> &B) {
> > > > >> +  Value *Dst =3D CI->getArgOperand(0);
> > > > >> +  Value *FmtStr =3D CI->getArgOperand(1);
> > > > >>   // Check for a fixed format string.
> > > > >>   StringRef FormatStr;
> > > > >> -  if (!getConstantStringInfo(CI->getArgOperand(1), FormatStr))
> > > > >> +  if (!getConstantStringInfo(FmtStr, FormatStr))
> > > > >>     return nullptr;
> > > > >>
> > > > >>   // If we just have a format string (nothing else crazy) transf=
orm it.
> > > > >> @@ -2428,9 +2430,10 @@ Value *LibCallSimplifier::optimizeSPrint
> > > > >>       return nullptr; // we found a format specifier, bail out.
> > > > >>
> > > > >>     // sprintf(str, fmt) -> llvm.memcpy(align 1 str, align 1 fmt=
, strlen(fmt)+1)
> > > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand(1=
), 1,
> > > > >> -                   ConstantInt::get(DL.getIntPtrType(CI->getCon=
text()),
> > > > >> -                                    FormatStr.size() + 1)); // =
Copy the null byte.
> > > > >> +    B.CreateMemCpy(
> > > > >> +        Dst, 1, FmtStr, 1,
> > > > >> +        ConstantInt::get(DL.getIntPtrType(CI->getContext()),
> > > > >> +                         FormatStr.size() + 1)); // Copy the nu=
ll byte.
> > > > >>     return ConstantInt::get(CI->getType(), FormatStr.size());
> > > > >>   }
> > > > >>
> > > > >> @@ -2440,13 +2443,14 @@ Value *LibCallSimplifier::optimizeSPrint
> > > > >>       CI->getNumArgOperands() < 3)
> > > > >>     return nullptr;
> > > > >>
> > > > >> +  Value *Str =3D CI->getArgOperand(2);
> > > > >>   // Decode the second character of the format string.
> > > > >>   if (FormatStr[1] =3D=3D 'c') {
> > > > >>     // sprintf(dst, "%c", chr) --> *(i8*)dst =3D chr; *((i8*)dst=
+1) =3D 0
> > > > >> -    if (!CI->getArgOperand(2)->getType()->isIntegerTy())
> > > > >> +    if (!Str->getType()->isIntegerTy())
> > > > >>       return nullptr;
> > > > >> -    Value *V =3D B.CreateTrunc(CI->getArgOperand(2), B.getInt8T=
y(), "char");
> > > > >> -    Value *Ptr =3D castToCStr(CI->getArgOperand(0), B);
> > > > >> +    Value *V =3D B.CreateTrunc(Str, B.getInt8Ty(), "char");
> > > > >> +    Value *Ptr =3D castToCStr(Dst, B);
> > > > >>     B.CreateStore(V, Ptr);
> > > > >>     Ptr =3D B.CreateGEP(B.getInt8Ty(), Ptr, B.getInt32(1), "nul"=
);
> > > > >>     B.CreateStore(B.getInt8(0), Ptr);
> > > > >> @@ -2455,17 +2459,30 @@ Value *LibCallSimplifier::optimizeSPrint
> > > > >>   }
> > > > >>
> > > > >>   if (FormatStr[1] =3D=3D 's') {
> > > > >> -    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, al=
ign 1 str,
> > > > >> -    // strlen(str)+1)
> > > > >> -    if (!CI->getArgOperand(2)->getType()->isPointerTy())
> > > > >> +    if (!Str->getType()->isPointerTy())
> > > > >>       return nullptr;
> > > > >> +
> > > > >> +    // sprintf(dest, "%s", str) -> memccpy(dest, str, 0, MAX)
> > > > >> +    if (CI->use_empty()) {
> > > > >> +      Value *S =3D (Dst->getType() =3D=3D Str->getType())
> > > > >> +                     ? Str
> > > > >> +                     : B.CreateBitCast(Str, Dst->getType());
> > > > >> +      unsigned SizeTyBitwidth =3D
> > > > >> +          DL.getIntPtrType(CI->getContext())->getPrimitiveSizeI=
nBits();
> > > > >> +      Value *NewSize =3D ConstantInt::get(B.getIntNTy(SizeTyBit=
width),
> > > > >> +                                        APInt::getMaxValue(Size=
TyBitwidth));
> > > > >> +      emitMemCCpy(Dst, S, B.getInt32('\0'), NewSize, B, TLI);
> > > > >> +      return Dst;
> > > > >> +    }
> > > > >>
> > > > >> -    Value *Len =3D emitStrLen(CI->getArgOperand(2), B, DL, TLI)=
;
> > > > >> +    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, al=
ign 1 str,
> > > > >> +    // strlen(str)+1)
> > > > >> +    Value *Len =3D emitStrLen(Str, B, DL, TLI);
> > > > >>     if (!Len)
> > > > >>       return nullptr;
> > > > >>     Value *IncLen =3D
> > > > >>         B.CreateAdd(Len, ConstantInt::get(Len->getType(), 1), "l=
eninc");
> > > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand(2=
), 1, IncLen);
> > > > >> +    B.CreateMemCpy(Dst, 1, Str, 1, IncLen);
> > > > >>
> > > > >>     // The sprintf result is the unincremented number of bytes i=
n the string.
> > > > >>     return B.CreateIntCast(Len, CI->getType(), false);
> > > > >>
> > > > >> Modified: llvm/trunk/test/Transforms/InstCombine/2010-05-30-memc=
py-Struct.ll
> > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Transfo=
rms/InstCombine/2010-05-30-memcpy-Struct.ll?rev=3D373333&r1=3D373332&r2=3D3=
73333&view=3Ddiff
> > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > > > >> --- llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Str=
uct.ll (original)
> > > > >> +++ llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-Str=
uct.ll Tue Oct  1 06:03:10 2019
> > > > >> @@ -1,3 +1,4 @@
> > > > >> +; NOTE: Assertions have been autogenerated by utils/update_test=
_checks.py
> > > > >> ; RUN: opt -instcombine -S < %s | FileCheck %s
> > > > >> ; PR7265
> > > > >>
> > > > >> @@ -9,10 +10,14 @@ target triple =3D "x86_64-unknown-linux-gn
> > > > >> @.str =3D private constant [3 x i8] c"%s\00"
> > > > >>
> > > > >> define void @CopyEventArg(%union.anon* %ev) nounwind {
> > > > >> +; CHECK-LABEL: @CopyEventArg(
> > > > >> +; CHECK-NEXT:  entry:
> > > > >> +; CHECK-NEXT:    [[TMP0:%.*]] =3D bitcast %union.anon* [[EV:%.*=
]] to i8*
> > > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* unde=
f, i8* [[TMP0]], i32 0, i64 -1)
> > > > >> +; CHECK-NEXT:    ret void
> > > > >> +;
> > > > >> entry:
> > > > >>   %call =3D call i32 (i8*, i8*, ...) @sprintf(i8* undef, i8* get=
elementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %union.anon*=
 %ev) nounwind
> > > > >> -; CHECK: bitcast %union.anon* %ev to i8*
> > > > >> -; CHECK: call void @llvm.memcpy.p0i8.p0i8.i64
> > > > >>   ret void
> > > > >> }
> > > > >>
> > > > >>
> > > > >> Modified: llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Transfo=
rms/InstCombine/sprintf-1.ll?rev=3D373333&r1=3D373332&r2=3D373333&view=3Ddi=
ff
> > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > > > >> --- llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll (origina=
l)
> > > > >> +++ llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll Tue Oct =
 1 06:03:10 2019
> > > > >> @@ -85,15 +85,11 @@ define void @test_simplify4(i8* %dst) {
> > > > >>
> > > > >> define void @test_simplify5(i8* %dst, i8* %str) {
> > > > >> ; CHECK-LABEL: @test_simplify5(
> > > > >> -; CHECK-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(i8* nonnul=
l dereferenceable(1) [[STR:%.*]])
> > > > >> -; CHECK-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]], 1
> > > > >> -; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* align=
 1 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* [[DS=
T:%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > > >> ; CHECK-NEXT:    ret void
> > > > >> ;
> > > > >> ; CHECK-IPRINTF-LABEL: @test_simplify5(
> > > > >> -; CHECK-IPRINTF-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(i8=
* nonnull dereferenceable(1) [[STR:%.*]])
> > > > >> -; CHECK-IPRINTF-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]],=
 1
> > > > >> -; CHECK-IPRINTF-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i=
8* align 1 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > > >> +; CHECK-IPRINTF-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(=
i8* [[DST:%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > > >> ; CHECK-IPRINTF-NEXT:    ret void
> > > > >> ;
> > > > >>   %fmt =3D getelementptr [3 x i8], [3 x i8]* @percent_s, i32 0, =
i32 0
> > > > >>
> > > > >>
> > > > >> _______________________________________________
> > > > >> llvm-commits mailing list
> > > > >> llvm-commits@lists.llvm.org
> > > > >> https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-commits
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnG7jf%2BpX48n5395Cq4YoD6z4XLtwXY1qkbbJbvUfBeJw%40m=
ail.gmail.com.
