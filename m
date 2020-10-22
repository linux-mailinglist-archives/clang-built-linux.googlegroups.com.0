Return-Path: <clang-built-linux+bncBCSPV64IYUKBBVEMY76AKGQES45XL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-f60.google.com (mail-ej1-f60.google.com [209.85.218.60])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AFC29640C
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:50:13 +0200 (CEST)
Received: by mail-ej1-f60.google.com with SMTP id i21sf998056ejb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:50:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603389012; cv=pass;
        d=google.com; s=arc-20160816;
        b=pL5nCtCRhc/jitPLKBiTHNc/hX972vwhHftIqlCfbT9URFShCxswMU9gM0MFalL+ED
         nrJ3JPtijhbD7JiqyUIZ4tqqqnYvuYThIczdD/sFiSCua8rK0k5k+QfTLN8IiGS4odHF
         5kJqOrjOJFBqutc+TQPNndS/QmVrUJHZOyOzl6GDipCf+6RsGO3f8pWY2FbY1o8VUrTq
         5VXMd1YXohuCYXiG3VCqK4hDWblMaJ3hcCd3psY74bCrcW1MBrXgZwk6YIXNEDFzm2H1
         vx1iREX1X950CNd8ZATjiit+04IYZTBHKcCU7gsZbIbYvtNfsq2wYsv0QC/FmJbuO+QQ
         9siw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=4Vm4yZB/ew9b5Zwnx4w3KubcVdBUVkc4CUI8rA5QqGI=;
        b=dFF2qzoEmksa8br+hPoz4xJCcbjo0yRcCsxu9WGaNnrVA5BnVw6/BlQtu7BaLwkqWK
         9lYGDj0tyaxo2QxoJsJp7G9GeEtkPqFTFzME1P8Pdm1eZIpVzbcFAEm1S4Yyva3vcg5p
         UhQMNOG9ZLGD+WJhG3eKY7f0qFzpGrBFT7hAconJUk+JlvHZy/8SnJjHAirY+g9h/mYH
         r1hR2GpNBsuFNxlOzqVfeRvYB2wLBmpwyPKmoZdYBl9NEehG/akTJYx97BNWF7HdkgAf
         JHZt+4JGH4NsOjTJibRFcAZJpQLFcSIgIGuTaIsZeccraD1rtoCiAiZ+SfmvdXvX6q4h
         Cyug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=KC3UBCOy;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Vm4yZB/ew9b5Zwnx4w3KubcVdBUVkc4CUI8rA5QqGI=;
        b=XsQhPtEOn+DHvllbAHZXIOS1f9u1Vrcrh0KvdICMH5SGR7r0QH264u3SKvandKdZNk
         U8HvTor3EOsU0I53wR5UfT+uHJIakR9bFSlyOM0atknt3XOGaZK6L3bom5awvIWSX1xh
         9F/JiwgVuI0c9H0J6Irm/qMn2TltCilX4LYvPlhBjfoNNZ9PjFi2pMoq/84AucAQ+kD6
         /hvyH6cw3H7bYYqo/f3M1lUJPHwWVcsCLTkCANp58OpXDJUyvQ5MHgeJL4kF4ZU2O0tp
         l6EF7vBeRlfdo9j2TkCAFqxLDgwmsjYmrTU9Ed9Hlmh3YW2fSZSUeEyBr2/W9ZEpcj2t
         zqSg==
X-Gm-Message-State: AOAM530hxfD/leep6zs3a127iyXEsiJ426g+3Dfjlbec0A2FMsrOlMvk
	pIMSTR5psLa71QElk0kxB/g=
X-Google-Smtp-Source: ABdhPJz71ZkW6R10fLYPFgkeb5DMmSLjNBIUJiJ6gCWRFAEl5gSMdVFC+81gPF77zqQ0QFHZVXHwlQ==
X-Received: by 2002:a17:906:4155:: with SMTP id l21mr3568602ejk.204.1603389012619;
        Thu, 22 Oct 2020 10:50:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:160e:: with SMTP id f14ls1153937edv.2.gmail; Thu,
 22 Oct 2020 10:50:11 -0700 (PDT)
X-Received: by 2002:a50:8b62:: with SMTP id l89mr3428526edl.132.1603389011711;
        Thu, 22 Oct 2020 10:50:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603389011; cv=none;
        d=google.com; s=arc-20160816;
        b=lkiQBCiMhio1ViQhH4BJM7pKfb3w3kYs8s4hrkoa3leLI58BeSX+Kw4XI3+oe1IJ05
         HsBxLA7yW1B5gt7wa8EcCulF+ZIAJEEIgqP3UdvwX7UEWHkVAytiyrLt757MfgTClM0l
         ZGwMWyp38gTVVlHD9wMXBYEfueCL6ol1RpgIVjSsxuonGKP6eu358UNUS4yJ0NEwxMck
         bRh6K/vDWA8be8kIO/zmYJijZ+wk8f90D/W/+Yu+lgVImBqvAaD/wYQTcupeQ/BQmoOu
         OULpy8OjOOEUGxBYkkbRA4XLH3fC8DPkm04cBEM0LTi4QjQeAibNvtpIBNSKw5tYhTvA
         pfaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CT7fgpeiiI0z5b0UCLDRGm4nG11wsfBQiflWSqlR3kE=;
        b=F0GHFoU+vpAtUwt2ZYza/wEAfPhxzg/HzmOIf7Om4TbKEXaa4Rasa0tY564WUZ64eh
         yyqYiM8UsXz/jCJwcKYbJvrwf/f41Zrmc8njiO2sFVStYe2QiTL+Mtefs6a5cgfOCUgR
         pQmyb2r3fFUxxPRLBLITo4UWn+U21j6pF8QQtsPYp3Ld2KgeSdyu0P8r+s9SMdCP2Nww
         cEVHBb671R0iYnyLCMQco6i3kxhGx++fGQZ39oYBTvDB+HROTEPKNuE8b+jj6Z0pU6od
         fX2c4UbVk2U64FjeZpVCYtyD1NqmuuhXE59DFk1IwXvQKQiJB8r3CzxJueqSGGy80Pow
         vTxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=KC3UBCOy;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id lf25si89261ejb.0.2020.10.22.10.50.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 10:50:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49606)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kVej4-0002O9-2s; Thu, 22 Oct 2020 18:50:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kVej3-0007bM-Rt; Thu, 22 Oct 2020 18:50:09 +0100
Date: Thu, 22 Oct 2020 18:50:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
Message-ID: <20201022175009.GT1551@shell.armlinux.org.uk>
References: <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
 <20201022173843.GR1551@shell.armlinux.org.uk>
 <CAMj1kXHFVH=_bp1GAae3tfEnyYyVJz7UfZv=+n=F+355ePWS+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXHFVH=_bp1GAae3tfEnyYyVJz7UfZv=+n=F+355ePWS+g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=KC3UBCOy;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Thu, Oct 22, 2020 at 07:47:57PM +0200, Ard Biesheuvel wrote:
> On Thu, 22 Oct 2020 at 19:38, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Thu, Oct 22, 2020 at 07:34:38PM +0300, Dmitry Osipenko wrote:
> > > 22.10.2020 19:23, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=
=D0=B5=D1=82:
> > > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > >> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > >> <linux@armlinux.org.uk> wrote:
> > > >>>
> > > >>> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > >>>> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com>=
 wrote:
> > > >>>>>
> > > >>>>> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82=
:
> > > >>>>>> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org=
> wrote:
> > > >>>>>>>
> > > >>>>>>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wro=
te:
> > > >>>>>>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > >>>>>>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko w=
rote:
> > > >>>>>>>>>> The vfp_kmode_exception() function now is unreachable usin=
g relative
> > > >>>>>>>>>> branching in THUMB2 kernel configuration, resulting in a "=
relocation
> > > >>>>>>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmo=
de_exception'"
> > > >>>>>>>>>> linker error. Let's use long jump in order to fix the issu=
e.
> > > >>>>>>>>>
> > > >>>>>>>>> Eek. Is this with gcc or clang?
> > > >>>>>>>>
> > > >>>>>>>> GCC 9.3.0
> > > >>>>>>>>
> > > >>>>>>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO i=
nput sections")
> > > >>>>>>>>>
> > > >>>>>>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missin=
g sections") ?
> > > >>>>>>>>> That commit may have implicitly moved the location of .vfp1=
1_veneer,
> > > >>>>>>>>> though I thought I had chosen the correct position.
> > > >>>>>>>>
> > > >>>>>>>> I re-checked that the fixes tag is correct.
> > > >>>>>>>>
> > > >>>>>>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > >>>>>>>>>> ---
> > > >>>>>>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > >>>>>>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > >>>>>>>>>>
> > > >>>>>>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > >>>>>>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > >>>>>>>>>> --- a/arch/arm/vfp/vfphw.S
> > > >>>>>>>>>> +++ b/arch/arm/vfp/vfphw.S
> > > >>>>>>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > >>>>>>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore =
nor FP exceptions
> > > >>>>>>>>>>    and     r3, r3, #MODE_MASK      @ are supported in kern=
el mode
> > > >>>>>>>>>>    teq     r3, #USR_MODE
> > > >>>>>>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > >>>>>>>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > >>>>>>>>>> +  bxne    r1                      @ Returns through lr
> > > >>>>>>>>>>
> > > >>>>>>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > >>>>>>>>>>    DBGSTR1 "fpexc %08x", r1
> > > >>>>>>>>>
> > > >>>>>>>>> This seems like a workaround though? I suspect the vfp11_ve=
neer needs
> > > >>>>>>>>> moving?
> > > >>>>>>>>>
> > > >>>>>>>>
> > > >>>>>>>> I don't know where it needs to be moved. Please feel free to=
 make a
> > > >>>>>>>> patch if you have a better idea, I'll be glad to test it.
> > > >>>>>>>
> > > >>>>>>> I might have just been distracted by the common "vfp" prefix.=
 It's
> > > >>>>>>> possible that the text section shuffling just ended up being =
very large,
> > > >>>>>>> so probably this patch is right then!
> > > >>>>>>>
> > > >>>>>>
> > > >>>>>> I already sent a fix for this issue:
> > > >>>>>>
> > > >>>>>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=
=3D9018/1
> > > >>>>>>
> > > >>>>>
> > > >>>>> The offending commit contains stable tag, so I assume that fixe=
s tag is
> > > >>>>> mandatory. Yours patch misses the fixes tag.
> > > >>>>
> > > >>>> Russell, mind adding that? Or would you like me to update the pa=
tch in
> > > >>>> the patch system?
> > > >>>
> > > >>> Rather than adding the IT, I'm suggesting that we solve it a diff=
erent
> > > >>> way - ensuring that the two bits of code are co-located. There's =
no
> > > >>> reason for them to be separated, and the assembly code entry poin=
t is
> > > >>> already called indirectly.
> > > >>>
> > > >>> The problem is the assembly ends up in the .text section which en=
ds up
> > > >>> at the start of the binary, but depending on the compiler, functi=
ons
> > > >>> in .c files end up in their own sections. It would be good if, as
> > > >>> Dmitry has shown that it is indeed possible, to have them co-loca=
ted.
> > > >>
> > > >> Why is that better? I provided a minimal fix which has zero impact=
 on
> > > >> ARM builds, and minimal impact on Thumb2 builds, given that it ret=
ains
> > > >> the exact same semantics as before, but using a different opcode.
> > > >
> > > > I think you just described the reason there. Why should we force
> > > > everything to use a different opcode when a short jump _should_
> > > > suffice?
> > > >
> > > > Your patch may be a single line, but it has a slightly greater
> > > > impact than the alternative two line solution.
> > > >
> > >
> > > But the two line change isn't portable to stable kernels as-is, isn't=
 it?
> >
> > Why not?
> >
>=20
> In any case, I'd prefer not to dump VFP exception handling code into
> the .vfp11_veneer section, which is documented as below, and typically
> empty in our case, given that the only FP code we have in the kernel
> is NEON code.

This is getting out of hand, and really getting beyond a joke. I
didn't say put it in the ".vfp11_veneer" section.

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022175009.GT1551%40shell.armlinux.org.uk.
