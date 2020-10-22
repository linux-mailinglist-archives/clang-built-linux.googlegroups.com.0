Return-Path: <clang-built-linux+bncBCSPV64IYUKBBJ4HY76AKGQEAFK44PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f64.google.com (mail-wm1-f64.google.com [209.85.128.64])
	by mail.lfdr.de (Postfix) with ESMTPS id 195F12963D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:38:48 +0200 (CEST)
Received: by mail-wm1-f64.google.com with SMTP id c204sf848495wmd.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603388327; cv=pass;
        d=google.com; s=arc-20160816;
        b=s5xodgwDwdBI/AA7tsiqAp8jJ6OasjcMCRWjwtLJ6QBOCePwHKxPK4Pu20Zk29AxSw
         DtwMa1sspTMhQ+dYeiQDDHeHOu9iA43z3qbMSafpET8xi57LdnkJ+3YVjEyIyCAxs30j
         +H8alrZ2U2duP1QkIrpSkoJPRwRno/m0W76u7VpmVkq9ELNDts228uWmuQ+oK9skKDQv
         K2Iggk2uESTGfS/PW4fLvi9Dxxvnv1SgBB9Ls+3okDQ596TXiwF4uREtbbcjtoA68NYP
         3zbgW/kY+USHFtJ7MXhUxa+DrqRseciP8m7Lng/81WH4sgUBjLpTZTdOGpndZdaZMCiX
         EaSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=+msnGDJcwt3zXvjI0Dmiim44e1TAAt6Py8jHB6V81TE=;
        b=eTAVUZzRG3qD8s0AI0SN3hLuHoghkf6Qzz47f1KuGI0CTBPH7lhEj5jZfufqr8c9U2
         EwrONl4UiSYYJwIGAvtp3vTGTINFgQkW9n9aspX5mplRr6UKedLxId9Qr3rWSPTwa/p4
         jvNi+tRbAQ3Pbex+1t6B6bK0xCCW3Y1wzB9fDuwp5r6GDhtMonakX9wEmZWCxJtH0rFO
         rUMMjkD6eDgj3BSlFuduMxKyajpZgSw5tIWFKym2E7e/2InbqNkgi72pbTxhHam4h7v2
         9kFjcAScvWqsz3GhRsCQlrZQ7iHv1RPPGDQrowpmjDFCjPEz3Ztg9WfllY4i04tPz+PU
         GLeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=An6mTWAu;
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
        bh=+msnGDJcwt3zXvjI0Dmiim44e1TAAt6Py8jHB6V81TE=;
        b=Isuer5iUqlKXjkk7s32UJ4Q7rFLCuQr1GkXtphOi5Ho2zQUCZnNkTnHR/Wv5yVOyI5
         jBMOKJIyE/2VMtZdf6rSTC2WmWHUkZ3QrX0wwo0uyTHI+v6dJAr1oJYrodON0bV0zg5s
         yw0H8WWw7S4sAPL7kj1p677F0iFB1QEMJku2Kyhhjj3ac2bKlFmyX7mV0KfcLDwrKbdV
         owxZpNBQcgc1NWs/OtnHZkkw8J4DX6ry5jHfyYBhmAyL/XR/aCKdpgOowDtTxpwfydTG
         BJ4mS+TEkLMUpomCjR0XfwPggsS9O1PMJP3HRoTx+Iz3qFeSjAuMffVqmfCm4NpLsjCj
         NfYg==
X-Gm-Message-State: AOAM532blpGZ/StQaZyqk8pL13mtP2BBnh2GNNkHL2cpMxC6CzIAbN+k
	tKLYGENi9pdE+Tbafs6rRUc=
X-Google-Smtp-Source: ABdhPJzz0UaS+jyBga0rQyIrDkKMQ+EvXQ9u590tiE/HahqljdRUTDZ2WBiOW7uxcRaP22C2oSsXCQ==
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr4209374wrw.39.1603388327729;
        Thu, 22 Oct 2020 10:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls424295wrc.1.gmail; Thu, 22 Oct
 2020 10:38:46 -0700 (PDT)
X-Received: by 2002:adf:e741:: with SMTP id c1mr4129171wrn.16.1603388326834;
        Thu, 22 Oct 2020 10:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603388326; cv=none;
        d=google.com; s=arc-20160816;
        b=07w6b3yrJKqhGDK7QzoZN1p4u1Gi+6b818nFZs3JdJ73isZAcv1JUQVLV2MqW+0mzK
         CztHm0Hi0rFZ5T2WT2ToZXpZtjyqNTlt2YsN81uvcS/kKtqFKJ+Sy2PF31InoCk2Yt20
         G2pjWeWVGRIlm4yzwSR90y0zt5rwkGaLM8djdlpcqolMn/4g6aBoOAmdudOS0++ZNNtT
         Tz1rAGgAta4fxI56c+A/PSbfHkOLGayfnzZZtouaw0seY1LAImM421gfKYJ7Ghwj4BkT
         n89dHOSjE0LWQBV3efSsO0ju88ie5JqGVI+9p9Ix7GWfpaDM8JaQoXjeRfngtCwKwtU3
         tH0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Av8z1OAoWP6TUwqZe/u8+x2MuYIFI5KUabnqBXID5Xo=;
        b=vlZz5aSPJt+kVtpEX7cBCxE9uOrLXiMOOswz/18oPkZ4wTfmmQIB/a7Ho6PwjYwU5+
         ZatDic2UUHidRnh0o7fO4Bo+UZUP/ejfmpRS4pa3TMxu80VCnfItpcl0XMji1VBTT8kI
         nqkLeQXu4DvMVNcilgiW+m5CPOqwWx43M0PezKuWeHWySHnMX/L1WME8hROOQV+JnChE
         0IS/0qOT6xKSVysxTu3hntQsZ1wTJy7nlcsacgehhyG7GkXU5vPgAGAXWXJczhsXTev/
         thgj5zaTH20oqwac9lEVLF3K6xn4E7BH0Hzfnwy3vSBTeE3Q9/m8/107c3NUBWYW8t37
         9HTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=An6mTWAu;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id w6si114157wmk.2.2020.10.22.10.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 10:38:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49602)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kVeY0-0002Mj-Tf; Thu, 22 Oct 2020 18:38:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kVeY0-0007aF-2A; Thu, 22 Oct 2020 18:38:44 +0100
Date: Thu, 22 Oct 2020 18:38:44 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
Message-ID: <20201022173843.GR1551@shell.armlinux.org.uk>
References: <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=An6mTWAu;
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

On Thu, Oct 22, 2020 at 07:34:38PM +0300, Dmitry Osipenko wrote:
> 22.10.2020 19:23, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
> > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> >> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> >> <linux@armlinux.org.uk> wrote:
> >>>
> >>> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> >>>> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wro=
te:
> >>>>>
> >>>>> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >>>>>> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wr=
ote:
> >>>>>>>
> >>>>>>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> >>>>>>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >>>>>>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote=
:
> >>>>>>>>>> The vfp_kmode_exception() function now is unreachable using re=
lative
> >>>>>>>>>> branching in THUMB2 kernel configuration, resulting in a "relo=
cation
> >>>>>>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_e=
xception'"
> >>>>>>>>>> linker error. Let's use long jump in order to fix the issue.
> >>>>>>>>>
> >>>>>>>>> Eek. Is this with gcc or clang?
> >>>>>>>>
> >>>>>>>> GCC 9.3.0
> >>>>>>>>
> >>>>>>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input=
 sections")
> >>>>>>>>>
> >>>>>>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing se=
ctions") ?
> >>>>>>>>> That commit may have implicitly moved the location of .vfp11_ve=
neer,
> >>>>>>>>> though I thought I had chosen the correct position.
> >>>>>>>>
> >>>>>>>> I re-checked that the fixes tag is correct.
> >>>>>>>>
> >>>>>>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> >>>>>>>>>> ---
> >>>>>>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> >>>>>>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>>>>>>>>>
> >>>>>>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> >>>>>>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> >>>>>>>>>> --- a/arch/arm/vfp/vfphw.S
> >>>>>>>>>> +++ b/arch/arm/vfp/vfphw.S
> >>>>>>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> >>>>>>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor =
FP exceptions
> >>>>>>>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel m=
ode
> >>>>>>>>>>    teq     r3, #USR_MODE
> >>>>>>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> >>>>>>>>>> +  ldr     r1, =3Dvfp_kmode_exception
> >>>>>>>>>> +  bxne    r1                      @ Returns through lr
> >>>>>>>>>>
> >>>>>>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> >>>>>>>>>>    DBGSTR1 "fpexc %08x", r1
> >>>>>>>>>
> >>>>>>>>> This seems like a workaround though? I suspect the vfp11_veneer=
 needs
> >>>>>>>>> moving?
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>> I don't know where it needs to be moved. Please feel free to mak=
e a
> >>>>>>>> patch if you have a better idea, I'll be glad to test it.
> >>>>>>>
> >>>>>>> I might have just been distracted by the common "vfp" prefix. It'=
s
> >>>>>>> possible that the text section shuffling just ended up being very=
 large,
> >>>>>>> so probably this patch is right then!
> >>>>>>>
> >>>>>>
> >>>>>> I already sent a fix for this issue:
> >>>>>>
> >>>>>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9=
018/1
> >>>>>>
> >>>>>
> >>>>> The offending commit contains stable tag, so I assume that fixes ta=
g is
> >>>>> mandatory. Yours patch misses the fixes tag.
> >>>>
> >>>> Russell, mind adding that? Or would you like me to update the patch =
in
> >>>> the patch system?
> >>>
> >>> Rather than adding the IT, I'm suggesting that we solve it a differen=
t
> >>> way - ensuring that the two bits of code are co-located. There's no
> >>> reason for them to be separated, and the assembly code entry point is
> >>> already called indirectly.
> >>>
> >>> The problem is the assembly ends up in the .text section which ends u=
p
> >>> at the start of the binary, but depending on the compiler, functions
> >>> in .c files end up in their own sections. It would be good if, as
> >>> Dmitry has shown that it is indeed possible, to have them co-located.
> >>
> >> Why is that better? I provided a minimal fix which has zero impact on
> >> ARM builds, and minimal impact on Thumb2 builds, given that it retains
> >> the exact same semantics as before, but using a different opcode.
> >=20
> > I think you just described the reason there. Why should we force
> > everything to use a different opcode when a short jump _should_
> > suffice?
> >=20
> > Your patch may be a single line, but it has a slightly greater
> > impact than the alternative two line solution.
> >=20
>=20
> But the two line change isn't portable to stable kernels as-is, isn't it?

Why not?

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022173843.GR1551%40shell.armlinux.org.uk.
