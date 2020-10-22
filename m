Return-Path: <clang-built-linux+bncBCSPV64IYUKBBK66Y36AKGQE4PV2TWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f63.google.com (mail-wr1-f63.google.com [209.85.221.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1EC29625F
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:11:23 +0200 (CEST)
Received: by mail-wr1-f63.google.com with SMTP id 31sf804046wrg.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603383083; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7+m6MVh5tLREL+BGKPUsPF/k2h38sLOg52DGk/ABuQHgnzG7nSrKUFFp075E0zN5e
         4COY7Iq5LwfluLteor5N+xtYSNHuekfpQ8RFOaKneoo6JsfW0hdAh2p41K4iG7ZtXD8K
         6nJd8sAsXocd+t/77hN5SFVNAC8Eb6ZwTi/qvF4iPbhiMWLuM51z/k/sIuT4Blyvq1Ki
         kc0bGxeWGO+IJxeEqC3FqjzjXTAUXdf+mAaQe0swjb4SEmL4tlnNZeZuHy0X65O3WhNh
         BBDH2qadVdqBKY+W3N+Ac5hhhrndArlH+ABHxcdJA4cbdAVAMkW/dJPSd+E6evzXjB0w
         kfAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=0rKirFgB//v90Ht8Y7QYOw6ZvcmRRXumvU5q2UQDMa0=;
        b=ilQnd4VrMJ+dFTVXKTL2j7K9rPDSBTXrBtD1ZfFyLcrKDSYU6Tb6d/sNz1/iEwoEoh
         gkJ9/QXhGh1d9TNSNSZcGVyUJNvnql9OoWjUlmMha5PxkMhFYWuNoKA104VNEq97LyQU
         +JqD3N9Yg8MiwrSdKdX32g7fv7eDDOreA8zIZt2sip0t5djwCiQtIbHG3AxyeqcoYZ4h
         nzOJK3TmttRjUB1TyR6doQXM0jgD/J4/Oz6qoVNp7xUsHpznJwRn1uc+Se8ZsZipNoMR
         BEq6RcPfbpA/EPx8bDpcaNXUnQcm3m8XjE+1dxlNUQAwYpOvJXgyVnniZAsPYCvfIHDS
         YESA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b="hA7vjpw/";
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
        bh=0rKirFgB//v90Ht8Y7QYOw6ZvcmRRXumvU5q2UQDMa0=;
        b=pQKa/AuzCOiPPuZ5tz4ZHtfFLfj0yeOilKqccO3EZlroQdXr77LguJosZ/aTZTnUb5
         qMYQTCvK2IQT/KB/gW7sId0FQjqh5oNtSdnKqOtcWAf8AxWGW3jigiF760vuCEs4zCZx
         Pr23g4WUnagdIBqlFZxUgKYAvn2cSv+Z0p2pmYHE3LM4Nxo3wBV9pPQG4utQDVNw8xAE
         Pfl+v/AOOH1o8FSxEfl1IY+OxxLVg8JQYVx6rbwz1wvEBCER9mJ78hOfCjw+OxM28nN2
         uK/ntHUDpjXrspkLCXcY1hcfNtqnCeZRx1BL1v4kqDru0sFGFzaaLsbq7AXYAoZulrx4
         m9QA==
X-Gm-Message-State: AOAM531GV93SLtrkGy97/m+5nW3DWoECfIfG8wS1x6291LhYYkdTuPix
	d4afz/g28Ug1l9QRMfRRfwU=
X-Google-Smtp-Source: ABdhPJxxOzPGtOzNfb9lIAbC6qZopK7CAHeuMG9L9czyplRWUqc44mIO1Lv/cXZxgGEbmpOgCaqCPQ==
X-Received: by 2002:a5d:6642:: with SMTP id f2mr3667711wrw.374.1603383083264;
        Thu, 22 Oct 2020 09:11:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e19:: with SMTP id g25ls1300916wmh.2.gmail; Thu, 22 Oct
 2020 09:11:22 -0700 (PDT)
X-Received: by 2002:a1c:1f89:: with SMTP id f131mr3433494wmf.10.1603383082416;
        Thu, 22 Oct 2020 09:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603383082; cv=none;
        d=google.com; s=arc-20160816;
        b=qfY4sUfPuWaPRnI+VqMSFE1ctweTUcP+s9Du2Yqqf2Q2Xe7fV6bqBtkCII1/FQk5Jt
         gvNP5W+0wh6lbX8ZG2f9bPkPHX5Rfz/wZQFWcSgQ5NUqw2Ja0B20TfiTaRG7IlfJOyE+
         8wzj+PdDwtD0/XRU4F/tNtmjouBUtVTD6Bp++f2WWL2k7V2X6wHMr1T3aqOlu6zWqR27
         7xxym6t7KAuIbsSIktjQBob/LGfx2GhW6nAmUtdCSvU0A4xe7AQjRgvVeR6373/BrkHz
         fhrnmnCW7LAQ/iqhkUeG9FNB3NEA/mVHQk+HRau/rzz+KJoX5r8bLFbOx9DvuKoPWRdL
         Z2PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7dbaiXNZz6VyWN3TkEKY5ylA2arGx7rJcc1WOH9NF+w=;
        b=PflmANqAnkHAtjLYzdAJpZ9GN3qvu3Y8bJeUQNC7Ctf3/PRUBBWcalqUDP/MhN6Ufb
         1xBM22gCPE3n15Ux7XY1sKBb4Ru7NhqXydBj1G7j+jPwfuCvofoNZ41pbQ1jWqj8cXX7
         vdACUL9VyuBCUIOzqjsVpvQBHh5m8YwVFlM2NluwLY3VK13Ep3bX478yS5SM5klXRABX
         qCvWEmzCvbhUBaTccFuwgVyzJKKvlcbnMcf1uIckq8JMlKCalheetqZDwPvJUpsjaOwp
         KP9iMN3zIikTul11Gc7gb62pvjM0/OM+tmLMzCR+vrjQmc6xTcuBqShzLVuLFTcs78Uq
         0xLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b="hA7vjpw/";
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id j5si71414wro.2.2020.10.22.09.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 09:11:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:49574)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kVdBO-0002H0-UV; Thu, 22 Oct 2020 17:11:19 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kVdBO-0007Xh-8L; Thu, 22 Oct 2020 17:11:18 +0100
Date: Thu, 22 Oct 2020 17:11:18 +0100
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
Message-ID: <20201022161118.GP1551@shell.armlinux.org.uk>
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b="hA7vjpw/";
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

On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wrote:
> >
> > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wrote=
:
> > >>
> > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> > >>>>> The vfp_kmode_exception() function now is unreachable using relat=
ive
> > >>>>> branching in THUMB2 kernel configuration, resulting in a "relocat=
ion
> > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exce=
ption'"
> > >>>>> linker error. Let's use long jump in order to fix the issue.
> > >>>>
> > >>>> Eek. Is this with gcc or clang?
> > >>>
> > >>> GCC 9.3.0
> > >>>
> > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input se=
ctions")
> > >>>>
> > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing secti=
ons") ?
> > >>>> That commit may have implicitly moved the location of .vfp11_venee=
r,
> > >>>> though I thought I had chosen the correct position.
> > >>>
> > >>> I re-checked that the fixes tag is correct.
> > >>>
> > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > >>>>> ---
> > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > >>>>>
> > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > >>>>> --- a/arch/arm/vfp/vfphw.S
> > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP =
exceptions
> > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel mode
> > >>>>>    teq     r3, #USR_MODE
> > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > >>>>> +  bxne    r1                      @ Returns through lr
> > >>>>>
> > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > >>>>>    DBGSTR1 "fpexc %08x", r1
> > >>>>
> > >>>> This seems like a workaround though? I suspect the vfp11_veneer ne=
eds
> > >>>> moving?
> > >>>>
> > >>>
> > >>> I don't know where it needs to be moved. Please feel free to make a
> > >>> patch if you have a better idea, I'll be glad to test it.
> > >>
> > >> I might have just been distracted by the common "vfp" prefix. It's
> > >> possible that the text section shuffling just ended up being very la=
rge,
> > >> so probably this patch is right then!
> > >>
> > >
> > > I already sent a fix for this issue:
> > >
> > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9018=
/1
> > >
> >
> > The offending commit contains stable tag, so I assume that fixes tag is
> > mandatory. Yours patch misses the fixes tag.
>=20
> Russell, mind adding that? Or would you like me to update the patch in
> the patch system?

Rather than adding the IT, I'm suggesting that we solve it a different
way - ensuring that the two bits of code are co-located. There's no
reason for them to be separated, and the assembly code entry point is
already called indirectly.

The problem is the assembly ends up in the .text section which ends up
at the start of the binary, but depending on the compiler, functions
in .c files end up in their own sections. It would be good if, as
Dmitry has shown that it is indeed possible, to have them co-located.

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022161118.GP1551%40shell.armlinux.org.uk.
