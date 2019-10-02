Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBWWU2PWAKGQEGWHFI4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C72C90AE
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 20:20:11 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id c15sf2546167vse.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 11:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570040410; cv=pass;
        d=google.com; s=arc-20160816;
        b=POvm8I7EugRtS6JX2pt+NacoDSQ3nhwsaaDTnHUA+GHCfCMbRJ7iMXRWeLzzdSc1s/
         otv8QsKbCuxI9NqNIokz9LhfAli2i5Jt1lbdouoHKbH6wmrkAYRSi0i1tO+UMYcLGc5E
         BooHcv8xSwYeJhdbvP3ZQWCEHbKfb0+3yLfDlo5u0wDWuU1fwj+O323JVyLK37X44FVB
         oPjwzFE5jFQ9WAEpG4GPW/kHyYw/1ZBEv0jiK9GxnGjV3ptZlSGbQY3p+qObfdqs5WSh
         ADak2HEF93VNmJ1whASoY0Uw2MbHXLtICcwshlXd45qnK+NV+zHYqYonmg37K77zOsV1
         Kmxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=B5JEn49FLbj2bK7JD5bzLmdpy1b7YPRLlN0vHfeQ96k=;
        b=d2FwLwfsHfbjhhDI9F4VQLHplKZ/rNazR2IjyQ4VgPxqcd173U4KnMnxZatXmsd0HO
         JL6+xoDTC6aemBRH6vT3Jujm4qUTKFlUol6XVafPJ4rcJLgB6i+b1qP4mB5RfnJP2Xtq
         gDShdeFiqwWO9iVIcp4kf40wLaQmBAciNNvCMCwumttTwOrLzByQSfwtZa1WKYnMK3LI
         KNcFCvJ3jNaM3E3AhuqK9vwpPgNLVs4S7AB14cpVF/bdIZjrpJdAAKpri3DEyxFthPYf
         C1CetKgQJyXWfCvVFNxBVHNKEA/lekYQQdj1I3rWdzrMwGkRW/MgVGQNG7tt71EO3m9m
         FSUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vOaWDf39;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5JEn49FLbj2bK7JD5bzLmdpy1b7YPRLlN0vHfeQ96k=;
        b=Km4nE3JGKZeIKWl1KhAn3ZN4dEfWuFEWt059y96+ABpTeMMtH8sbKQoN5xxs+TjLAy
         7vr8nH3w9Mx8Xdzz/33+HiaXoS5hL088bfy7Tv27DQqzQhY9C5VO1DT5rdCN5pofU2Om
         EF7wAXakCRay7tKg7oZ7tUkIqkSU1P7NDVFqeFLRzJfa50QWgnnffkE/oF0RPfW51OVw
         fxMac72am6grH27zUS0fJcV3wAohOTjoft9fyiqXCuhyxcy4T4tfxvShBHdpK+o79RQ5
         BWsgmcTwUCp8NgUjbOYamck1LAjbHrjWB3urbNcvNe2w/1w0F3FqRikcEfe8luqu/+bA
         akKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5JEn49FLbj2bK7JD5bzLmdpy1b7YPRLlN0vHfeQ96k=;
        b=g28DzJgJPSPtteZqz0rLYRNA8hK6gmdPNUNS0I09P7brenJPjphYJQH9BtQjzs08IP
         OG05+Xan0OBR8g/+cmTzQbFNg6N1kX2RDRvmSEeElJsxkRS81QLP0DB3f1FU40/nSG3/
         JHzPOrq5bySJgylgPmkejdFzY4aEkNM/itb2Jkadi0xlp0EQyfb1tPG5F9EMPadQWDBE
         OAOZYfP4+rafc6kLg4xGOKyk63fP9ZO+Pc2KCPFT25UOugwmiFMiwsFMpT0WNiqrBC6A
         x6zKA7BqpyHjJFN2xE2gpC8i6GdMWd6fqruTolBix/ln7ocqx4e+llzDRo7v1PewiQP0
         HWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5JEn49FLbj2bK7JD5bzLmdpy1b7YPRLlN0vHfeQ96k=;
        b=rpolypi1PgXevFLVSspr18nEGJpCoEDfsuEBRhw+r8V5g2Kb/418qWCYWrWaFG40Hi
         DCbNNwInKCOraJV7jBJz5eI0U6KWonDdZPjTNNqdklGhYY8EnjblUhosbv6O4ekR2dfw
         DC8ql9w179olO2QjldqkNGN9ZhfVVXxrJSDfeoGNgeEeV3PTjUnoRAQR2EKeqAph5fYM
         jqBYO3ek7ERYRlu7SXgxyODQy+u9Th86vyhe0V6sg7ifLr6IoxwQHq55N4JgUVgKpsya
         AZtFbD5wBoDR6CfN0cWzcPfqdkZZSUajBsttl5jSwcaVSYTrKeMmkIYD8js/aztrt2+s
         fO6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWkuHmp0VtZHFPlHSWeTPQOT/mDqAKnzS9Uda4aF/XDsll5qjb9
	LjQkOAsSoCmHpQfpI+wjgI0=
X-Google-Smtp-Source: APXvYqyQJ9P/nmnw0Ll/qTaAOl0mgk27AkNQfZnCXB11iXx2U5kW8m6OcBiyruHqVz2cmRpZIVsS7A==
X-Received: by 2002:a67:d709:: with SMTP id p9mr2771912vsj.115.1570040410546;
        Wed, 02 Oct 2019 11:20:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8f:: with SMTP id t137ls344551vst.10.gmail; Wed, 02
 Oct 2019 11:20:10 -0700 (PDT)
X-Received: by 2002:a67:d304:: with SMTP id a4mr2789648vsj.156.1570040410214;
        Wed, 02 Oct 2019 11:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570040410; cv=none;
        d=google.com; s=arc-20160816;
        b=HolpKrpySaToZ7AGHYQ3RfOEUeiZrOUmTSE1adZC3gDTOIR4O0OBAh7GdL0j1isKLi
         CF8yCYVwpkbUFddr+BtNoi8oRgzlN8+xVU+jpWv5uccznfxDQ2bVXGjSwk4r5+Zmol7I
         9d2HtUNUyH27pjckH9dAasviwPmnU0cVmpspT1h5Bgd6heDzDQQygfAGgEUZQmoczfja
         EIMa/kms5zfaTyy2u/Yp/uBm2NdBiWSQTQ6BU8euVD8jg27YTSbOmt6hwI+RRqpDgngc
         axyiIPOAGSG+E/kw8XDaMsGgHf+hp+23cGZNde3LF3eF0bGN1XqJZniLgpGN/hIU0EJp
         H49w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6yvIj8D/Aq1ezBtZV540k9ZI+7Aq9FyC7D7P3aim7Bw=;
        b=On+WXzwzNatQBY2aXPpW1GcIJ5iDWDAAM/ehRFK9MALoS3oEVaz19S2RDEIpfBaXCy
         SbAkRs6BTaq3AlLKdNTtWfZOxEMPb3vgB55qI8duQXNWxCTGoCkcpTSF/DmTRBqBuDug
         pRSQJiblNPA/q2J9ujGyZE64XSaBcGlFJJWhyIoNUnlQz0jF1SGPVr2h5HKWLs4EhR58
         szOZxi/IV5c+ouGLiH24GJu5kBTK4ZJUpTBY9kF7XsfZE0d2Y7xQ5374adacNjyDRlrM
         ZAzx1yf3Uq2pMTSCaWjaAMCOwgDg16SSlvyqsZmkug/IAjp5rnsXXA6V087OopXXrGjv
         /nXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vOaWDf39;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id r72si4379vke.5.2019.10.02.11.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 11:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id k32so24440otc.4
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 11:20:10 -0700 (PDT)
X-Received: by 2002:a05:6830:1414:: with SMTP id v20mr3744948otp.40.1570040409396;
 Wed, 02 Oct 2019 11:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt-8LAof_O83EdHUuLn=_xMXcyA0yCEu9WrROwJrbebTH9kvw@mail.gmail.com>
 <ACAF51BA-2C97-404E-ABF2-D6446D2A7D22@gmail.com> <CAEt-8LAR_k5a2p8x0_Haed_7zgTtXN=PVWa-CXcvpzayPX_fiA@mail.gmail.com>
 <CAOrgDVOdmbnDdSFXn=HEQin2J3qisJL1sCdquPnoa8OxiFGDTw@mail.gmail.com>
 <CAKwvOdnf_Rm3hM=pQjM3GdO6TanvL36Yi5OZjMDWvOPQCrqRJw@mail.gmail.com> <CAKwvOdnG7jf+pX48n5395Cq4YoD6z4XLtwXY1qkbbJbvUfBeJw@mail.gmail.com>
In-Reply-To: <CAKwvOdnG7jf+pX48n5395Cq4YoD6z4XLtwXY1qkbbJbvUfBeJw@mail.gmail.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Wed, 2 Oct 2019 20:19:58 +0200
Message-ID: <CAOrgDVOMx3bazCCaKq7JrdQXG9e0OWqTNU179h0=Niocc+aGvQ@mail.gmail.com>
Subject: Re: [llvm] r373333 - [InstCombine] sprintf(dest, "%s", str) ->
 memccpy(dest, str, 0, MAX)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Smith <peter.smith@linaro.org>, llvm-commits <llvm-commits@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vOaWDf39;       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi,

can you please post this in D67986? We should discuss it at one place.
Thank you.

st 2. 10. 2019 o 19:28 Nick Desaulniers <ndesaulniers@google.com> nap=C3=AD=
sal(a):
>
> Also, the kernel doesn't want to make use of -ffreestanding (except in
> very specific cases) as it kneecaps other useful compiler transforms.
>
> On Wed, Oct 2, 2019 at 10:26 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Oct 2, 2019 at 8:41 AM D=C3=A1vid Bolvansk=C3=BD
> > <david.bolvansky@gmail.com> wrote:
> > >
> > > Well, memcpy is emitted only on posix/unix like systems. TLI claims
> > > that Windows does not have a memccpy, so transformation XXX -> memccp=
y
> > > is not possible. (They will have to implement it for C20).
> > >
> > > The linux kernel is always special case, so I think the fix should be
> > > on linux kernel side,  -ffreestanding / -fno-builtin-snprintf works
> > > here. Same story as for "bcmp" some time ago (I dont know how that wa=
s
> > > resolved).
> >
> > For bcmp, I added a simple alias to memcmp:
> > https://github.com/ClangBuiltLinux/linux/commit/5f074f3e192f10c9fade898=
b9b3b8812e3d83342
> >
> > The kernel is compiled as -std=3Dgnu89.  Can we not emit calls to
> > memccpy if LangOpt says we're < C20?
> >
> > >
> > > >> May I ask that you copy Nick Desaulniers (on CC:) on the review fo=
r
> > > your next change that introduces memccpy.
> > >
> > > Yeah, I will do inform them.
> > >
> > > st 2. 10. 2019 o 17:16 Peter Smith <peter.smith@linaro.org> nap=C3=AD=
sal(a):
> > > >
> > > > Thanks for the response, apologies for missing the revert earlier.
> > > >
> > > > May I ask that you copy Nick Desaulniers (on CC:) on the review for
> > > > your next change that introduces memccpy. The linux kernel does use
> > > > snprintf and I'm sure they'd want some warning that their clang bui=
lds
> > > > are likely to break.
> > > > My understanding (https://clang.llvm.org/compatibility.html) is tha=
t
> > > > clang defaults to C11, I can understand making the transformation i=
f
> > > > the standard is set to C20, however I'm not sure whether we should =
be
> > > > doing it when the standard is C11. Anyway one for the review.
> > > >
> > > > Peter
> > > >
> > > > On Wed, 2 Oct 2019 at 16:07, D=C3=A1vid Bolvansk=C3=BD <david.bolva=
nsky@gmail.com> wrote:
> > > > >
> > > > > This was reverted a bit later. I mismeasured it and thought it is=
 faster than memcpy and strlen solution.
> > > > > Anyway, snprintf -> memccpy is worth it (30% faster). I have a pa=
tch for it, I will land it later. There are more oportunities to exploit me=
mccpy for efficient string concatenation/copying. (You can find redhat=E2=
=80=99s article somewhere about it).
> > > > >
> > > > > It is a part of C20. The solution for the kernel is either use -f=
no-builtin-memccpy or implement it.
> > > > >
> > > > > The kernel
> > > > >
> > > > > Odoslan=C3=A9 z iPhonu
> > > > >
> > > > > > D=C5=88a 2. 10. 2019 o 15:25 u=C5=BE=C3=ADvate=C4=BE Peter Smit=
h <peter.smith@linaro.org> nap=C3=ADsal:
> > > > > >
> > > > > > =EF=BB=BFThis change has caused a regression in the AArch64 Lin=
ux kernel build
> > > > > > (Linaro CI), I'll forward the details from the CI system of how=
 to
> > > > > > reproduce it directly via email
> > > > > >
> > > > > > The errors look to be from the linux kernel module tool modpost=
. These
> > > > > > are undefined symbols coming from linux kernel modules.
> > > > > > ERROR: "memccpy" [sound/pci/hda/snd-hda-codec-ca0132.ko] undefi=
ned!
> > > > > > ERROR: "memccpy" [drivers/infiniband/hw/mlx4/mlx4_ib.ko] undefi=
ned!
> > > > > > ERROR: "memccpy" [drivers/target/iscsi/iscsi_target_mod.ko] und=
efined!
> > > > > > ERROR: "memccpy" [drivers/nvdimm/libnvdimm.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/staging/rtl8192e/rtllib.ko] undefined=
!
> > > > > > ERROR: "memccpy" [drivers/i2c/busses/i2c-jz4780.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/usb/mtu3/mtu3.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/net/usb/hso.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/net/wireless/ath/ath9k/ath9k_htc.ko] =
undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene-v2/xgene-enet-=
v2.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/apm/xgene/xgene-enet.ko]=
 undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/qlogic/qed/qed.ko] undef=
ined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/mellanox/mlx4/mlx4_core.=
ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio=
_vf.ko]
> > > > > > undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/cavium/liquidio/liquidio=
.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/net/ethernet/brocade/bna/bna.ko] unde=
fined!
> > > > > > ERROR: "memccpy" [drivers/scsi/mpt3sas/mpt3sas.ko] undefined!
> > > > > > ERROR: "memccpy" [drivers/scsi/bfa/bfa.ko] undefined!
> > > > > >
> > > > > > I believe that memccpy is not in the C Standard so it is likely=
 the
> > > > > > Linux kernel does not provide its own definition. Is there a re=
ason to
> > > > > > use a non-standard memccpy in the transformation unless we can
> > > > > > guarantee that the environment will support it?
> > > > > >
> > > > > > Can you take a look?
> > > > > >
> > > > > > Peter
> > > > > >
> > > > > >> On Tue, 1 Oct 2019 at 14:01, David Bolvansky via llvm-commits
> > > > > >> <llvm-commits@lists.llvm.org> wrote:
> > > > > >>
> > > > > >> Author: xbolva00
> > > > > >> Date: Tue Oct  1 06:03:10 2019
> > > > > >> New Revision: 373333
> > > > > >>
> > > > > >> URL: http://llvm.org/viewvc/llvm-project?rev=3D373333&view=3Dr=
ev
> > > > > >> Log:
> > > > > >> [InstCombine] sprintf(dest, "%s", str) -> memccpy(dest, str, 0=
, MAX)
> > > > > >>
> > > > > >> Modified:
> > > > > >>    llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > > > >>    llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-St=
ruct.ll
> > > > > >>    llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > > > >>
> > > > > >> Modified: llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp
> > > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/lib/Transf=
orms/Utils/SimplifyLibCalls.cpp?rev=3D373333&r1=3D373332&r2=3D373333&view=
=3Ddiff
> > > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> > > > > >> --- llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp (orig=
inal)
> > > > > >> +++ llvm/trunk/lib/Transforms/Utils/SimplifyLibCalls.cpp Tue O=
ct  1 06:03:10 2019
> > > > > >> @@ -2415,9 +2415,11 @@ Value *LibCallSimplifier::optimizePrint=
F
> > > > > >> }
> > > > > >>
> > > > > >> Value *LibCallSimplifier::optimizeSPrintFString(CallInst *CI, =
IRBuilder<> &B) {
> > > > > >> +  Value *Dst =3D CI->getArgOperand(0);
> > > > > >> +  Value *FmtStr =3D CI->getArgOperand(1);
> > > > > >>   // Check for a fixed format string.
> > > > > >>   StringRef FormatStr;
> > > > > >> -  if (!getConstantStringInfo(CI->getArgOperand(1), FormatStr)=
)
> > > > > >> +  if (!getConstantStringInfo(FmtStr, FormatStr))
> > > > > >>     return nullptr;
> > > > > >>
> > > > > >>   // If we just have a format string (nothing else crazy) tran=
sform it.
> > > > > >> @@ -2428,9 +2430,10 @@ Value *LibCallSimplifier::optimizeSPrin=
t
> > > > > >>       return nullptr; // we found a format specifier, bail out=
.
> > > > > >>
> > > > > >>     // sprintf(str, fmt) -> llvm.memcpy(align 1 str, align 1 f=
mt, strlen(fmt)+1)
> > > > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand=
(1), 1,
> > > > > >> -                   ConstantInt::get(DL.getIntPtrType(CI->getC=
ontext()),
> > > > > >> -                                    FormatStr.size() + 1)); /=
/ Copy the null byte.
> > > > > >> +    B.CreateMemCpy(
> > > > > >> +        Dst, 1, FmtStr, 1,
> > > > > >> +        ConstantInt::get(DL.getIntPtrType(CI->getContext()),
> > > > > >> +                         FormatStr.size() + 1)); // Copy the =
null byte.
> > > > > >>     return ConstantInt::get(CI->getType(), FormatStr.size());
> > > > > >>   }
> > > > > >>
> > > > > >> @@ -2440,13 +2443,14 @@ Value *LibCallSimplifier::optimizeSPri=
nt
> > > > > >>       CI->getNumArgOperands() < 3)
> > > > > >>     return nullptr;
> > > > > >>
> > > > > >> +  Value *Str =3D CI->getArgOperand(2);
> > > > > >>   // Decode the second character of the format string.
> > > > > >>   if (FormatStr[1] =3D=3D 'c') {
> > > > > >>     // sprintf(dst, "%c", chr) --> *(i8*)dst =3D chr; *((i8*)d=
st+1) =3D 0
> > > > > >> -    if (!CI->getArgOperand(2)->getType()->isIntegerTy())
> > > > > >> +    if (!Str->getType()->isIntegerTy())
> > > > > >>       return nullptr;
> > > > > >> -    Value *V =3D B.CreateTrunc(CI->getArgOperand(2), B.getInt=
8Ty(), "char");
> > > > > >> -    Value *Ptr =3D castToCStr(CI->getArgOperand(0), B);
> > > > > >> +    Value *V =3D B.CreateTrunc(Str, B.getInt8Ty(), "char");
> > > > > >> +    Value *Ptr =3D castToCStr(Dst, B);
> > > > > >>     B.CreateStore(V, Ptr);
> > > > > >>     Ptr =3D B.CreateGEP(B.getInt8Ty(), Ptr, B.getInt32(1), "nu=
l");
> > > > > >>     B.CreateStore(B.getInt8(0), Ptr);
> > > > > >> @@ -2455,17 +2459,30 @@ Value *LibCallSimplifier::optimizeSPri=
nt
> > > > > >>   }
> > > > > >>
> > > > > >>   if (FormatStr[1] =3D=3D 's') {
> > > > > >> -    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, =
align 1 str,
> > > > > >> -    // strlen(str)+1)
> > > > > >> -    if (!CI->getArgOperand(2)->getType()->isPointerTy())
> > > > > >> +    if (!Str->getType()->isPointerTy())
> > > > > >>       return nullptr;
> > > > > >> +
> > > > > >> +    // sprintf(dest, "%s", str) -> memccpy(dest, str, 0, MAX)
> > > > > >> +    if (CI->use_empty()) {
> > > > > >> +      Value *S =3D (Dst->getType() =3D=3D Str->getType())
> > > > > >> +                     ? Str
> > > > > >> +                     : B.CreateBitCast(Str, Dst->getType());
> > > > > >> +      unsigned SizeTyBitwidth =3D
> > > > > >> +          DL.getIntPtrType(CI->getContext())->getPrimitiveSiz=
eInBits();
> > > > > >> +      Value *NewSize =3D ConstantInt::get(B.getIntNTy(SizeTyB=
itwidth),
> > > > > >> +                                        APInt::getMaxValue(Si=
zeTyBitwidth));
> > > > > >> +      emitMemCCpy(Dst, S, B.getInt32('\0'), NewSize, B, TLI);
> > > > > >> +      return Dst;
> > > > > >> +    }
> > > > > >>
> > > > > >> -    Value *Len =3D emitStrLen(CI->getArgOperand(2), B, DL, TL=
I);
> > > > > >> +    // sprintf(dest, "%s", str) -> llvm.memcpy(align 1 dest, =
align 1 str,
> > > > > >> +    // strlen(str)+1)
> > > > > >> +    Value *Len =3D emitStrLen(Str, B, DL, TLI);
> > > > > >>     if (!Len)
> > > > > >>       return nullptr;
> > > > > >>     Value *IncLen =3D
> > > > > >>         B.CreateAdd(Len, ConstantInt::get(Len->getType(), 1), =
"leninc");
> > > > > >> -    B.CreateMemCpy(CI->getArgOperand(0), 1, CI->getArgOperand=
(2), 1, IncLen);
> > > > > >> +    B.CreateMemCpy(Dst, 1, Str, 1, IncLen);
> > > > > >>
> > > > > >>     // The sprintf result is the unincremented number of bytes=
 in the string.
> > > > > >>     return B.CreateIntCast(Len, CI->getType(), false);
> > > > > >>
> > > > > >> Modified: llvm/trunk/test/Transforms/InstCombine/2010-05-30-me=
mcpy-Struct.ll
> > > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Trans=
forms/InstCombine/2010-05-30-memcpy-Struct.ll?rev=3D373333&r1=3D373332&r2=
=3D373333&view=3Ddiff
> > > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> > > > > >> --- llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-S=
truct.ll (original)
> > > > > >> +++ llvm/trunk/test/Transforms/InstCombine/2010-05-30-memcpy-S=
truct.ll Tue Oct  1 06:03:10 2019
> > > > > >> @@ -1,3 +1,4 @@
> > > > > >> +; NOTE: Assertions have been autogenerated by utils/update_te=
st_checks.py
> > > > > >> ; RUN: opt -instcombine -S < %s | FileCheck %s
> > > > > >> ; PR7265
> > > > > >>
> > > > > >> @@ -9,10 +10,14 @@ target triple =3D "x86_64-unknown-linux-gn
> > > > > >> @.str =3D private constant [3 x i8] c"%s\00"
> > > > > >>
> > > > > >> define void @CopyEventArg(%union.anon* %ev) nounwind {
> > > > > >> +; CHECK-LABEL: @CopyEventArg(
> > > > > >> +; CHECK-NEXT:  entry:
> > > > > >> +; CHECK-NEXT:    [[TMP0:%.*]] =3D bitcast %union.anon* [[EV:%=
.*]] to i8*
> > > > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* un=
def, i8* [[TMP0]], i32 0, i64 -1)
> > > > > >> +; CHECK-NEXT:    ret void
> > > > > >> +;
> > > > > >> entry:
> > > > > >>   %call =3D call i32 (i8*, i8*, ...) @sprintf(i8* undef, i8* g=
etelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %union.ano=
n* %ev) nounwind
> > > > > >> -; CHECK: bitcast %union.anon* %ev to i8*
> > > > > >> -; CHECK: call void @llvm.memcpy.p0i8.p0i8.i64
> > > > > >>   ret void
> > > > > >> }
> > > > > >>
> > > > > >>
> > > > > >> Modified: llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll
> > > > > >> URL: http://llvm.org/viewvc/llvm-project/llvm/trunk/test/Trans=
forms/InstCombine/sprintf-1.ll?rev=3D373333&r1=3D373332&r2=3D373333&view=3D=
diff
> > > > > >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> > > > > >> --- llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll (origi=
nal)
> > > > > >> +++ llvm/trunk/test/Transforms/InstCombine/sprintf-1.ll Tue Oc=
t  1 06:03:10 2019
> > > > > >> @@ -85,15 +85,11 @@ define void @test_simplify4(i8* %dst) {
> > > > > >>
> > > > > >> define void @test_simplify5(i8* %dst, i8* %str) {
> > > > > >> ; CHECK-LABEL: @test_simplify5(
> > > > > >> -; CHECK-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(i8* nonn=
ull dereferenceable(1) [[STR:%.*]])
> > > > > >> -; CHECK-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]], 1
> > > > > >> -; CHECK-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32(i8* ali=
gn 1 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > > > >> +; CHECK-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccpy(i8* [[=
DST:%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > > > >> ; CHECK-NEXT:    ret void
> > > > > >> ;
> > > > > >> ; CHECK-IPRINTF-LABEL: @test_simplify5(
> > > > > >> -; CHECK-IPRINTF-NEXT:    [[STRLEN:%.*]] =3D call i32 @strlen(=
i8* nonnull dereferenceable(1) [[STR:%.*]])
> > > > > >> -; CHECK-IPRINTF-NEXT:    [[LENINC:%.*]] =3D add i32 [[STRLEN]=
], 1
> > > > > >> -; CHECK-IPRINTF-NEXT:    call void @llvm.memcpy.p0i8.p0i8.i32=
(i8* align 1 [[DST:%.*]], i8* align 1 [[STR]], i32 [[LENINC]], i1 false)
> > > > > >> +; CHECK-IPRINTF-NEXT:    [[MEMCCPY:%.*]] =3D call i8* @memccp=
y(i8* [[DST:%.*]], i8* [[STR:%.*]], i32 0, i32 -1)
> > > > > >> ; CHECK-IPRINTF-NEXT:    ret void
> > > > > >> ;
> > > > > >>   %fmt =3D getelementptr [3 x i8], [3 x i8]* @percent_s, i32 0=
, i32 0
> > > > > >>
> > > > > >>
> > > > > >> _______________________________________________
> > > > > >> llvm-commits mailing list
> > > > > >> llvm-commits@lists.llvm.org
> > > > > >> https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-commits
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOrgDVOMx3bazCCaKq7JrdQXG9e0OWqTNU179h0%3DNiocc%2BaGvQ%4=
0mail.gmail.com.
