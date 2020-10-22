Return-Path: <clang-built-linux+bncBCSPV64IYUKBBDHEY36AKGQEDBZDRNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-f190.google.com (mail-lj1-f190.google.com [209.85.208.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8682962A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:23:41 +0200 (CEST)
Received: by mail-lj1-f190.google.com with SMTP id a4sf922064ljb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:23:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603383820; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHRfNj1HYBTKkN0+qCsABAlmGSWlEXIxuLoAAB6WeabueStpdeIlSkTYzqL+Pq2Cxh
         KQJTHJ0Go7L6DxOWQOa5b51vhHSk0CpDvwHY8OuDL6PPRvGecV959cl5X8K+QVLVVOrC
         xN6DRhnBexMi1cpdLtXoLejjMwpJmOdNF9vvXvuUoNmy6JEBamHmN9+q6IjCE3Ey/R9B
         r85RqXSIv23hUS05dEliHZN76AjxhDoqkIW0L7K8x8rNEct/+328mxuxwRQSL1Z9xUrh
         EvN4YLbZ/bh6jmAznHVLNqK7A8nPUg4j6cPp9Wi0fVf3PD+C6bTCp/+oCFU47z303aaC
         wkFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=+y3MEYBgoqO6OxEqX7p4zp3Q0udT5+Mj5uIZ17bQRkg=;
        b=0nyqx+krs2lUrtxGVEor2mXp4r0rsVsDoQMNu4CtWhYsW0+cPbptokKrhzG+RPxwQ+
         3j0T5HfLbJlq21U6q8go7dUfwHCGcOFh17fzLGVgrx6k1wQwGRcFKU2L+4kOs5OM/KOu
         bsy91mjMKPfh6SzK6sSVEZxB2EiXLSkooyRPLGuknXw16BgkOwxWaqoR9CojBskgxsCv
         1gx0dtIJu/MtP5Lf8TsJHIcQvmj8yygEUqdWE/KZTCp46biqhkSFMJINurUs1GjStk2F
         vPS6fYamfLhlYa74+phg0K30ApgLXiMAV4N81NdmQdKebv7xTXQpc3BS/IC2W7ZgfPBO
         4uww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oBZuHDgw;
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
        bh=+y3MEYBgoqO6OxEqX7p4zp3Q0udT5+Mj5uIZ17bQRkg=;
        b=ph2uOgrSTtK8UhYmMX9GBF7jSb0kANCs/2oSvQzZb8s+OUcR4d6U+PqfijsNR7xhSj
         TQwAaOtKrDMZ02npQzAUV5hGehkcZggpFzZUbE/Y87Zff8PW2TFw16C9xDvGXVlRpk9A
         B8tWMuiO9QVBOukJEhlB1vHujAfsTHUeb21G9wsql0fHpBY98WTkB7QKh5DVP5t/SjM4
         bhpwLcjcNkgbkg4QGQ1uYp2LUK+6VSgIpKCbq8BmStjWnEjjG1J4fGFrYOsW2u1ieRdN
         uDs5fB74a82gMPHCw4MgVNuz/NT+JgxG36wnOJYTwyb5CEVfoOPWyTqn+neJDPXCMVbw
         Zeaw==
X-Gm-Message-State: AOAM530A51+Nr15uAmaZvCNNQZFPelBf061GhsWpwAI3est6M3nvsUJW
	jrwdlwio1+fhP/0RABYej38=
X-Google-Smtp-Source: ABdhPJyFd562TsMErlqUNYxdB7MF5y8Wt8Q9VhyQYsJPQZIPF2PQuhpsh9rNQlPyaJPAm173dTB8NQ==
X-Received: by 2002:a19:c154:: with SMTP id r81mr1236436lff.154.1603383820753;
        Thu, 22 Oct 2020 09:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1598235lff.1.gmail; Thu, 22 Oct
 2020 09:23:39 -0700 (PDT)
X-Received: by 2002:a19:838e:: with SMTP id f136mr1060226lfd.16.1603383819685;
        Thu, 22 Oct 2020 09:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603383819; cv=none;
        d=google.com; s=arc-20160816;
        b=hl1YWAd7wJpbUYQQ+6TvVxlbPJ6hO/ECUPg4NVMQzh5eXThwZSwB+JxcgeAqHrOcbT
         ZEbhbz1Xc5XeEWD9rfsYMClLvNx9adEyPIcOp5Rb/hIdtszUMqeTpDGCG9NU5OEurnPx
         3kbk+vBQ6b8g8T9nM0UbDYyLbaj4eERT3dy3tUTrWGElo5h86roQJSxq/ABkevWFSCPq
         QO7xmFvUG8lq3bkmeHhYCA2tQbL0PbnYeIGohx5SZAns1/yTarkCK6HH5seCRBvOilKy
         Ar/6qUZKhrzsrIax00QR1YEcmCRUyNSGTbN6qeFkQFdPKmIoK/iZBHwYMc7Ehb6qclNS
         i5bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qx//rllWCp4Aw9Y+j8oLuNI/zBX7cIb9yVaUMv2x7k0=;
        b=ny17b9GkLrDSPYjdiak+SdjLx/DPIy1+PAyXt1veOEWwxqqf2GgQwSiFmqp+eSl4RI
         gXsJNftHTbjYgzOQt2BCcCEcabGxtJ++WRJeBVoVSmd0D3tgYrFeSrpEzsdgB0yKROrC
         8N3U+KQezj0zpcAHYH2clU2Nk4YPu8d+InLjbQODYT9LgIrjPjRgCL0oCWQSExernuI1
         a1OR7WoczN8DGCCTN3FnNd70bre8oa5PKgki1/IFV5r9dHiS1Mhqxc3azneiIx4OOLKS
         dqTCOE6qTgykky1JNyFfL4iBT2oNTLsDBTk1rgDyX4dZbhmbUBjJ75ZF2CBUUIYIMt7j
         eNmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oBZuHDgw;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id o4si97418lfn.12.2020.10.22.09.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 09:23:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49576)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kVdNH-0002I1-1q; Thu, 22 Oct 2020 17:23:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kVdNG-0007Xt-Bf; Thu, 22 Oct 2020 17:23:34 +0100
Date: Thu, 22 Oct 2020 17:23:34 +0100
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
Message-ID: <20201022162334.GQ1551@shell.armlinux.org.uk>
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oBZuHDgw;
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

On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wrot=
e:
> > > >
> > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> w=
rote:
> > > > >>
> > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrot=
e:
> > > > >>>>> The vfp_kmode_exception() function now is unreachable using r=
elative
> > > > >>>>> branching in THUMB2 kernel configuration, resulting in a "rel=
ocation
> > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_=
exception'"
> > > > >>>>> linker error. Let's use long jump in order to fix the issue.
> > > > >>>>
> > > > >>>> Eek. Is this with gcc or clang?
> > > > >>>
> > > > >>> GCC 9.3.0
> > > > >>>
> > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO inpu=
t sections")
> > > > >>>>
> > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing s=
ections") ?
> > > > >>>> That commit may have implicitly moved the location of .vfp11_v=
eneer,
> > > > >>>> though I thought I had chosen the correct position.
> > > > >>>
> > > > >>> I re-checked that the fixes tag is correct.
> > > > >>>
> > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > >>>>> ---
> > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > >>>>>
> > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor=
 FP exceptions
> > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel =
mode
> > > > >>>>>    teq     r3, #USR_MODE
> > > > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > >>>>> +  bxne    r1                      @ Returns through lr
> > > > >>>>>
> > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > >>>>
> > > > >>>> This seems like a workaround though? I suspect the vfp11_venee=
r needs
> > > > >>>> moving?
> > > > >>>>
> > > > >>>
> > > > >>> I don't know where it needs to be moved. Please feel free to ma=
ke a
> > > > >>> patch if you have a better idea, I'll be glad to test it.
> > > > >>
> > > > >> I might have just been distracted by the common "vfp" prefix. It=
's
> > > > >> possible that the text section shuffling just ended up being ver=
y large,
> > > > >> so probably this patch is right then!
> > > > >>
> > > > >
> > > > > I already sent a fix for this issue:
> > > > >
> > > > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D=
9018/1
> > > > >
> > > >
> > > > The offending commit contains stable tag, so I assume that fixes ta=
g is
> > > > mandatory. Yours patch misses the fixes tag.
> > >
> > > Russell, mind adding that? Or would you like me to update the patch i=
n
> > > the patch system?
> >
> > Rather than adding the IT, I'm suggesting that we solve it a different
> > way - ensuring that the two bits of code are co-located. There's no
> > reason for them to be separated, and the assembly code entry point is
> > already called indirectly.
> >
> > The problem is the assembly ends up in the .text section which ends up
> > at the start of the binary, but depending on the compiler, functions
> > in .c files end up in their own sections. It would be good if, as
> > Dmitry has shown that it is indeed possible, to have them co-located.
>=20
> Why is that better? I provided a minimal fix which has zero impact on
> ARM builds, and minimal impact on Thumb2 builds, given that it retains
> the exact same semantics as before, but using a different opcode.

I think you just described the reason there. Why should we force
everything to use a different opcode when a short jump _should_
suffice?

Your patch may be a single line, but it has a slightly greater
impact than the alternative two line solution.

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022162334.GQ1551%40shell.armlinux.org.uk.
