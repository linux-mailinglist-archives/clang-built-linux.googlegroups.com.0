Return-Path: <clang-built-linux+bncBCSPV64IYUKBB3ULY76AKGQEAHCZAEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f61.google.com (mail-wm1-f61.google.com [209.85.128.61])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE2296405
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:48:30 +0200 (CEST)
Received: by mail-wm1-f61.google.com with SMTP id z7sf865494wmi.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:48:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603388910; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxVt7mOT84R+yrvUlgs7+2aiq3MMTo8HqCLyJYhWcfsyMHGqWo55XUkHWyUOoHEw1q
         CmW8MYAO4Jjn7yiz0XWgpD+JuT1nCpLY05QDhjcxtcpoQnVcKNelpy0a8ZZr1Fp54rDu
         P8LAXi9lN9Ny5SBuAWI0a6k+qHYTgswyYJy2pdOTZVVt9y1BktBSP0/XnUK5fHPtR5T2
         PbpMWA/vjaRRvNdJ7v/18Rtsnkl3NktuqC3mzq/vYdMGAPC3GySOtb2awWAhBUvf/WcU
         Zd9n3XczSLYO6DX+xUmcu/l3+Guzf/eGlTF5pjbpu6PDv3BroaCV/jRX/ZeqoV+BL4VH
         9mOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=DUyMME+ey4o3kiY+5QUc7zur8UFNn0PhI/4jIUkig4U=;
        b=TWVv+4BFiDGmhDrxsc766R4Av5rtYvPr3NiaTh0L1lc7FQzyM9/0zhnFZi6QnzH9iF
         gcHi2bKQDKKLzKg0y2cS+9W4cwSXAOpj7p20lUz0xutE62Vbrz70Csv3ew8g008wWib0
         MlPu+hCgJ2ftvW8KhmUNiFyOhA1qT48w36YbdlQv5RlOqhDLDWd2DPDiXihCNIFOv0aW
         6nbFMxq1VkANJaI1KuKHwigmMA25BhAaqjQ82F+eAgytpD0H5p/29IInMsPsumWFpp4b
         VCT8cTVgPBOAKPrrzeT2hmkf7tuTFYE7fR4FO7nuFMoexM4DG9FCU2qjv43Wb3MkD7TX
         20Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Uhc6UUVl;
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
        bh=DUyMME+ey4o3kiY+5QUc7zur8UFNn0PhI/4jIUkig4U=;
        b=E0xobY8GPDt7jj1O0B/MJUt7AgQZXb7Vy/Q4l+AYlBNH3o1shpfE1wcFuWklUWNHYo
         iPAZpzRB5HMQs0urMKiGr9f9v+XCa8Ho/1Eg/2iP6B8rtRC7jCQaPsJA8uaJHtA5b7i0
         51/RobekVh5cP7GXUPBnn7dTVv+Nkl9rsqtamjhdg/THMtOY3fJiZQuF7Uss/1fe4hSS
         XIYhoEHahIe2V9sw3zd/BpGDjAn+msn9j22lRT5UCxOP30S5IXcZgmdkK83zQ60zrufo
         6v0kGjDdx5zH1FFelrnetj/8T3cg7NlxYnQdjQV/tftbUpDTARkUGfJmf+UtVMgIksEa
         cq0A==
X-Gm-Message-State: AOAM530b/gBdd8iVyf73aghwu5QKKQOck+8eJ0Ge/kTvFK4iH3rxpHpC
	a/D1wrekGHl2yZKG9o71D3E=
X-Google-Smtp-Source: ABdhPJyMJTFIO1fSDu7b+LSTYUrDbfUpCIL2aAiVYn8lfGklNV1a0xBAXa79fqep6nCvY2eT41m5vw==
X-Received: by 2002:a1c:a98c:: with SMTP id s134mr3871030wme.159.1603388910633;
        Thu, 22 Oct 2020 10:48:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f318:: with SMTP id q24ls1433213wmq.1.canary-gmail; Thu,
 22 Oct 2020 10:48:29 -0700 (PDT)
X-Received: by 2002:a1c:a1c2:: with SMTP id k185mr3641349wme.39.1603388909756;
        Thu, 22 Oct 2020 10:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603388909; cv=none;
        d=google.com; s=arc-20160816;
        b=JXQbsuITxEm0bNXlMp79qqNJvXhW/tRtay+C95/nPMXelkQfkQSf/1SAmF1pXAq8VU
         HizZ6QM4mYqj1kxEamG1Si2GlP5586WLC0iBhku8854+NerMfo59s0VcI7rKBlTUPOyx
         V7LSknfTkrslqouUVHWHC20+ltkR31Baa87yy8jv/TLI9k/A5eqbIWVgmO1N0mcSUD0Q
         BN6osh8v8ebIwVzS0g+SraEa+sbpBKtfJ8/FKwaxmZLaVhV7ekwjjnk4ka8N3MlTiXbJ
         NJN/EGktXQWC7zysA+cdslAW7bug55FZtWXDMsmG9fsMEmR4BJGapCakpdOcdWbdo/tJ
         1dDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1ZcxKmveMq3q1xnEh7xaia3hz4ZSwMr6bcgK6ANNCh0=;
        b=hgYJKxJLJYu8JlDhkvU4rh+FHYNh6+xZrUlzKgVsy7nnFOhYMOi7WLPMpZpjBNOdZ6
         UdtqafPT53S13rIMW46aGb3R+GOQmhzJczml6ufMcM4Yn/jyJr1IiTNmRL+riLhSLR3I
         bOt3S3+Acb7sTin5O6iMDkkR0+OuRM5lw8E61YWQsbkUGOJqFxraBAD4GGOL72+yD/nq
         dfo2T/WI39LPp2DISyfD91TQH//4xcxTz77sJwtWHB4VS7zIrSYbDZ0DS/n4wp6TQ5id
         JG/XHhXQ978Z56RVjJxsNcYbcpsG7EzEdPhLR3ZiPoPQdWMXR5n83ip5XpBjFylbRQ5J
         qKVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Uhc6UUVl;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id 14si83350wmf.4.2020.10.22.10.48.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 10:48:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49604)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kVehP-0002Na-6m; Thu, 22 Oct 2020 18:48:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kVehO-0007bE-Hr; Thu, 22 Oct 2020 18:48:26 +0100
Date: Thu, 22 Oct 2020 18:48:26 +0100
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
Message-ID: <20201022174826.GS1551@shell.armlinux.org.uk>
References: <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
 <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Uhc6UUVl;
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

On Thu, Oct 22, 2020 at 06:33:17PM +0200, Ard Biesheuvel wrote:
> On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> =
wrote:
> > > > > >
> > > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82=
:
> > > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.or=
g> wrote:
> > > > > > >>
> > > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wr=
ote:
> > > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko =
wrote:
> > > > > > >>>>> The vfp_kmode_exception() function now is unreachable usi=
ng relative
> > > > > > >>>>> branching in THUMB2 kernel configuration, resulting in a =
"relocation
> > > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_km=
ode_exception'"
> > > > > > >>>>> linker error. Let's use long jump in order to fix the iss=
ue.
> > > > > > >>>>
> > > > > > >>>> Eek. Is this with gcc or clang?
> > > > > > >>>
> > > > > > >>> GCC 9.3.0
> > > > > > >>>
> > > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO =
input sections")
> > > > > > >>>>
> > > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missi=
ng sections") ?
> > > > > > >>>> That commit may have implicitly moved the location of .vfp=
11_veneer,
> > > > > > >>>> though I thought I had chosen the correct position.
> > > > > > >>>
> > > > > > >>> I re-checked that the fixes tag is correct.
> > > > > > >>>
> > > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > > >>>>> ---
> > > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > > >>>>>
> > > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore=
 nor FP exceptions
> > > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in ker=
nel mode
> > > > > > >>>>>    teq     r3, #USR_MODE
> > > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > > >>>>> +  bxne    r1                      @ Returns through lr
> > > > > > >>>>>
> > > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > > >>>>
> > > > > > >>>> This seems like a workaround though? I suspect the vfp11_v=
eneer needs
> > > > > > >>>> moving?
> > > > > > >>>>
> > > > > > >>>
> > > > > > >>> I don't know where it needs to be moved. Please feel free t=
o make a
> > > > > > >>> patch if you have a better idea, I'll be glad to test it.
> > > > > > >>
> > > > > > >> I might have just been distracted by the common "vfp" prefix=
. It's
> > > > > > >> possible that the text section shuffling just ended up being=
 very large,
> > > > > > >> so probably this patch is right then!
> > > > > > >>
> > > > > > >
> > > > > > > I already sent a fix for this issue:
> > > > > > >
> > > > > > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?i=
d=3D9018/1
> > > > > > >
> > > > > >
> > > > > > The offending commit contains stable tag, so I assume that fixe=
s tag is
> > > > > > mandatory. Yours patch misses the fixes tag.
> > > > >
> > > > > Russell, mind adding that? Or would you like me to update the pat=
ch in
> > > > > the patch system?
> > > >
> > > > Rather than adding the IT, I'm suggesting that we solve it a differ=
ent
> > > > way - ensuring that the two bits of code are co-located. There's no
> > > > reason for them to be separated, and the assembly code entry point =
is
> > > > already called indirectly.
> > > >
> > > > The problem is the assembly ends up in the .text section which ends=
 up
> > > > at the start of the binary, but depending on the compiler, function=
s
> > > > in .c files end up in their own sections. It would be good if, as
> > > > Dmitry has shown that it is indeed possible, to have them co-locate=
d.
> > >
> > > Why is that better? I provided a minimal fix which has zero impact on
> > > ARM builds, and minimal impact on Thumb2 builds, given that it retain=
s
> > > the exact same semantics as before, but using a different opcode.
> >
> > I think you just described the reason there. Why should we force
> > everything to use a different opcode when a short jump _should_
> > suffice?
> >
>=20
> Why should a short jump suffice? The call is to vfp_kmode_exception(),
> which we only call in exceptional cases. Why would we want to keep
> that in close proximity?

You're thinking about it in terms of what happens when the branch is
taken, rather than also considering that this code path is also
traversed for _every_ single time that we enter the support code
not just for kernel mode.

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022174826.GS1551%40shell.armlinux.org.uk.
