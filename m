Return-Path: <clang-built-linux+bncBD63HSEZTUIBBL4LQT6QKGQEQUNXMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E632A3D97
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 08:24:33 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id 2sf9514993qtb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 23:24:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604388272; cv=pass;
        d=google.com; s=arc-20160816;
        b=EV91pnLwewe4QReUho0u01UoClp9qS1Px/PK+tuyd8uBgfTCe/A2d18iWNmH3VrXB4
         1i2QcqrBlVwgCZiCLTWtk7bneaKk7HgholZQItEjOvc7na6f4ibmDZJ6H3IvzU/ucJ8M
         UbhA0Rv8t0S++GEpwFeJLQivEH56USL9g0WacQraPEPBOB5JG8H2SWHPBbmCFmKZBAF+
         h72mYTZLx/YANRe7FvNJtZjQLWMSZSgtv9nNAEApZxPINSB+Ue+FQCscD5jsen7AUlVH
         8VjQ6P8SE9GatuUsZupeibjqhzRgjOFEGFV2BajWjBiSH8+DpIoHg8MVvgCX6Oy1gRS0
         WhxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=m9A00QpcUCvCOoarNYN946AI5v11xxp0NWj3fvJN7YA=;
        b=Ol2yA458E5zn1ITRrm8Ce6iY22SH1xnphpWqOmAvwo4ZIHBhm1g6lcN4sMauvGBt2v
         1mhjUhvJeoxTz1uPrqDtKos+eYgKVnZwhNQ0lx16LX/+MfjCQE1650cFlgKVF65su0oz
         8QiLxOpaJ7f91XphQBTIdvFawjWzBbZX/KQ6zRVsvXZzlj6lMx0PeGsqctXqH1/6dwzF
         rtWFxAL/vJajGFbSAJ8iIDwyb40oyUErIend5u4Rgxw4IoqiSSZYRcem8pISrEejIx1n
         Kk14DJjyHWZgBVVME5R018Obfmi/5VogletqvhudT6V2SAAn8qDjiIoRkYlJSotX6uUF
         93Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SHGOUY6n;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m9A00QpcUCvCOoarNYN946AI5v11xxp0NWj3fvJN7YA=;
        b=hVoHgfxOxVUVoJa6bK7DfyGoAR5HX+hjOeqwkJM49304ruTXFtZqCWPjpcNGKEhQRy
         1rQ0rwJ5lqBbNoj5Ol2J4lMuZI83W8dZVNeYTK8LLybavrrLBHo5TW9G1ZgWTxxuFaT6
         VnAZgKfP0O7gCr8jE6phJtQAnKCxIkawxjv43R4eDUbwpXV0mCRqYMWG9vkfjdAcD3kU
         q5vZ7geLN+wCxPUVfNNHCArK9yLQXBFlF1Do0dCDN+kQjnm2Kk48tW/mpPNIummFphg3
         UtUruO3gKj9pO6moltrXLOj1/MkcbS33ijP2DpDen/iVWVDQd98oUDcHjosNLzp37T40
         RBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m9A00QpcUCvCOoarNYN946AI5v11xxp0NWj3fvJN7YA=;
        b=dciXIl2hWp5+KBZ9BczcQHJcX9GlsWWKF0MRKFlVXs6DRL5Y9gqBfeWTosHdM9Rn0i
         BQkWdpGlcXASnIf7PV1wBOMmAriWeIhx3eqpAFjIvWeP6IH7pKqUvitWY5adcePMwm/D
         aCd5KuhqN0z1kZmaZLGIuzSqmFNo8CYpAWx2puTi9O+LYhqDAUFI53NIgVDZB7KGG0Dq
         by2Os1tpay+1WET++MKHC8m+qNmFihPXzh4mHFrKFJJME9qAazK4X83HpBb1HiGt2buv
         xfPnBtq9FZnqwpfS5nVEcTmZ1FIR7GOsZMIDza7UPX3tqN3/pToRtHHDyMl5kYkK9v6T
         kUqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jsvndH87vzwmFCXSuNO+EaViuIdMZuJcTliE8h6dAW/fi87Lp
	5QL/F0YBPOttjBOBE8ISp5o=
X-Google-Smtp-Source: ABdhPJzBa3g2tNz265Lhltl4GlAUDM8ticQCxM0idL7YqD0tImAFgH62e0GUZB2Fxr1asJVmW8WHFg==
X-Received: by 2002:aed:2685:: with SMTP id q5mr2681295qtd.151.1604388271835;
        Mon, 02 Nov 2020 23:24:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f48:: with SMTP id i69ls478350qke.8.gmail; Mon, 02 Nov
 2020 23:24:31 -0800 (PST)
X-Received: by 2002:a05:620a:103c:: with SMTP id a28mr18208714qkk.21.1604388271243;
        Mon, 02 Nov 2020 23:24:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604388271; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlkdGP43+v39OQjqXA4PurqcMbxMCxCi1rNGH2rjoJAH4GhivCpOgWSTLM05ucRffJ
         3KozzofTvUkf+J0M2irDclUiu6qc/TRHLpMk5sPZdjGqIbhUnzC2bl5FonC3W5g3f+z7
         ZZPuBWIXhP4ZlCFwdMBnd1PDuJnBToq1CovlBixtg8u0LnYSJy3lFkvMZVOm6IoyndxK
         E90XfUt3EQvecoA9kqUBSpXOMNKFTCDyr0z9cKQ/hHUx3PVebqvEP3UsmNzTXY9pXwZB
         FR+HFXVnKZuYkZHqUDMfkah9Uv9gAjmSSoX6FC6UJY4Qg1ePhqm9MZzUi/1843Gy4E0d
         AcuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kNxwhPteDbtBOauR0PQZXy0fPZLQtlIMVDVVJsfU3Tk=;
        b=h7au/SkHsnjem24aWeYPFr3l3B81J9NpOH5FkXEYf13TF6O3ls3n/m8NbfnOyjuu+N
         aG+cdeduaGrlEhmedhJ7o4ncu9khLLQTmaCyxMyZnGmqTzCKkWgYENuEYh0kW8KtpvmF
         jb+K5u7jnNXj8zmoc8W0Bqg5FbaOk/wqLnA32XghqdfnIe4K95cUQgc9JD38dAWVB5ZG
         kNCXl+1ngws32yoILT3nLNZkbL5vUC5CuRDWJFYOLsoLpWSi+vZmhTfoRMrKMze3bBYx
         dMCoSmqYDR15kWMZavXQkOJcoOOfyXnRKILZCxk+jzhj8zgIoDPYWZWl/Lj1aTqL+Mgl
         E9UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SHGOUY6n;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si1147858qkh.5.2020.11.02.23.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 23:24:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0C3C422277
	for <clang-built-linux@googlegroups.com>; Tue,  3 Nov 2020 07:24:30 +0000 (UTC)
Received: by mail-oo1-f54.google.com with SMTP id l26so3970148oop.9
        for <clang-built-linux@googlegroups.com>; Mon, 02 Nov 2020 23:24:30 -0800 (PST)
X-Received: by 2002:a4a:9806:: with SMTP id y6mr14608231ooi.45.1604388269247;
 Mon, 02 Nov 2020 23:24:29 -0800 (PST)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk> <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com> <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
In-Reply-To: <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 3 Nov 2020 08:24:17 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
Message-ID: <CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SHGOUY6n;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 29 Oct 2020 at 10:56, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Mon, 26 Oct 2020 at 09:58, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 22 Oct 2020 at 19:59, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 22 Oct 2020 at 19:48, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Thu, Oct 22, 2020 at 06:33:17PM +0200, Ard Biesheuvel wrote:
> > > > > On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > > > > > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > > >
> > > > > > > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wr=
ote:
> > > > > > > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gma=
il.com> wrote:
> > > > > > > > > >
> > > > > > > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=
=B5=D1=82:
> > > > > > > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chr=
omium.org> wrote:
> > > > > > > > > > >>
> > > > > > > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osi=
penko wrote:
> > > > > > > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=
=B5=D1=82:
> > > > > > > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry O=
sipenko wrote:
> > > > > > > > > > >>>>> The vfp_kmode_exception() function now is unreach=
able using relative
> > > > > > > > > > >>>>> branching in THUMB2 kernel configuration, resulti=
ng in a "relocation
> > > > > > > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol=
 `vfp_kmode_exception'"
> > > > > > > > > > >>>>> linker error. Let's use long jump in order to fix=
 the issue.
> > > > > > > > > > >>>>
> > > > > > > > > > >>>> Eek. Is this with gcc or clang?
> > > > > > > > > > >>>
> > > > > > > > > > >>> GCC 9.3.0
> > > > > > > > > > >>>
> > > > > > > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and =
AutoFDO input sections")
> > > > > > > > > > >>>>
> > > > > > > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: A=
dd missing sections") ?
> > > > > > > > > > >>>> That commit may have implicitly moved the location=
 of .vfp11_veneer,
> > > > > > > > > > >>>> though I thought I had chosen the correct position=
.
> > > > > > > > > > >>>
> > > > > > > > > > >>> I re-checked that the fixes tag is correct.
> > > > > > > > > > >>>
> > > > > > > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > > > > > > >>>>> ---
> > > > > > > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > > > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > > > > > > >>>>>
> > > > > > > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/=
vfphw.S
> > > > > > > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > > > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > > > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > > > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > > > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy=
 restore nor FP exceptions
> > > > > > > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supporte=
d in kernel mode
> > > > > > > > > > >>>>>    teq     r3, #USR_MODE
> > > > > > > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns thro=
ugh lr
> > > > > > > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > > > > > > >>>>> +  bxne    r1                      @ Returns thro=
ugh lr
> > > > > > > > > > >>>>>
> > > > > > > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP e=
nabled?
> > > > > > > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > > > > > > >>>>
> > > > > > > > > > >>>> This seems like a workaround though? I suspect the=
 vfp11_veneer needs
> > > > > > > > > > >>>> moving?
> > > > > > > > > > >>>>
> > > > > > > > > > >>>
> > > > > > > > > > >>> I don't know where it needs to be moved. Please fee=
l free to make a
> > > > > > > > > > >>> patch if you have a better idea, I'll be glad to te=
st it.
> > > > > > > > > > >>
> > > > > > > > > > >> I might have just been distracted by the common "vfp=
" prefix. It's
> > > > > > > > > > >> possible that the text section shuffling just ended =
up being very large,
> > > > > > > > > > >> so probably this patch is right then!
> > > > > > > > > > >>
> > > > > > > > > > >
> > > > > > > > > > > I already sent a fix for this issue:
> > > > > > > > > > >
> > > > > > > > > > > https://www.armlinux.org.uk/developer/patches/viewpat=
ch.php?id=3D9018/1
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > The offending commit contains stable tag, so I assume t=
hat fixes tag is
> > > > > > > > > > mandatory. Yours patch misses the fixes tag.
> > > > > > > > >
> > > > > > > > > Russell, mind adding that? Or would you like me to update=
 the patch in
> > > > > > > > > the patch system?
> > > > > > > >
> > > > > > > > Rather than adding the IT, I'm suggesting that we solve it =
a different
> > > > > > > > way - ensuring that the two bits of code are co-located. Th=
ere's no
> > > > > > > > reason for them to be separated, and the assembly code entr=
y point is
> > > > > > > > already called indirectly.
> > > > > > > >
> > > > > > > > The problem is the assembly ends up in the .text section wh=
ich ends up
> > > > > > > > at the start of the binary, but depending on the compiler, =
functions
> > > > > > > > in .c files end up in their own sections. It would be good =
if, as
> > > > > > > > Dmitry has shown that it is indeed possible, to have them c=
o-located.
> > > > > > >
> > > > > > > Why is that better? I provided a minimal fix which has zero i=
mpact on
> > > > > > > ARM builds, and minimal impact on Thumb2 builds, given that i=
t retains
> > > > > > > the exact same semantics as before, but using a different opc=
ode.
> > > > > >
> > > > > > I think you just described the reason there. Why should we forc=
e
> > > > > > everything to use a different opcode when a short jump _should_
> > > > > > suffice?
> > > > > >
> > > > >
> > > > > Why should a short jump suffice? The call is to vfp_kmode_excepti=
on(),
> > > > > which we only call in exceptional cases. Why would we want to kee=
p
> > > > > that in close proximity?
> > > >
> > > > You're thinking about it in terms of what happens when the branch i=
s
> > > > taken, rather than also considering that this code path is also
> > > > traversed for _every_ single time that we enter the support code
> > > > not just for kernel mode.
> > > >
> > >
> > > True. If 2 bytes of additional opcode are the concern here, we can
> > > change the current sequence
> > >
> > >    6:   f093 0f10       teq     r3, #16
> > >    a:   f47f affe       bne.w   0 <vfp_kmode_exception>
> > >
> > > to
> > >
> > >    6:   2b10            cmp     r3, #16
> > >    8:   bf18            it      ne
> > >    a:   f7ff bffe       bne.w   0 <vfp_kmode_exception>
> > >
> > > which takes up the exact same space.
> >
> > BTW this code path looks slightly broken for Thumb-2 in any case: if a
> > FP exception is taken in kernel mode on a Thumb2 kernel, we enter the
> > emulation sequence via call_fpe, which will use the wrong set of
> > value/mask pairs to match the opcode. The minimal fix is to move the
> > call_fpe label to the right place, but I think it might be better to
> > move the check for a FP exception in kernel mode to the handling of
> > __und_svc.
>
> Do we have a resolution here? This is causing breakage in kernelci
>
> https://kernelci.org/build/id/5f9a834c5ed3c05dd538101b/

Still broken today

https://kernelci.org/build/id/5fa0c1a74bdb1ea4063fe7e4/

So the options are

a) merge my patch that adds 2 bytes of opcode to the Thumb2 build
b) merge Dmitry's patch that adds an unconditional literal load to all buil=
ds
c) remove kernel mode handling from vfp_support_entry() [my other patch]
d) move sections around so that vfp_kmode_exception is guaranteed to
be in range.
e) do nothing

Given the lack of reports about this issue, it is pretty clear that
few people use the Thumb2 build (which I find odd, tbh, since it
really is much smaller). However, that means that a) is a reasonable
fix, since nobody will notice the potential performance hit either,
and it can easily be backported to wherever the breakage was
introduced. (Note that eff8728fe698, which created the problem is
marked cc:stable itself).

Going forward, I can refine d) so that we can get rid of the kernel
mode path entirely.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXFMiTSakUGnopb8eWRHTM9-0XM0kDaJvTXWDhRPJ3Vsow%40mai=
l.gmail.com.
