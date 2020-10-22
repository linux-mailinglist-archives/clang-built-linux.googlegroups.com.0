Return-Path: <clang-built-linux+bncBD63HSEZTUIBBWULY76AKGQE2D5PCOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E300296403
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:48:12 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id c67sf1623574pfb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:48:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603388891; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIZa4sz4VJKWRtaJNM9tYtBiqbUWbTjAKQkU7ZjH9EDPBN9q7DhVucFrnlfqwV/qlh
         tvkR5ldV82eyz6pM53ejNebTJxz9N8YzWKvkyXtDedItQOmRGvcM5KxduoOiak0/vQkd
         LRg/3tBiaJxqbiFWl7bKAhGOuVuDHOsqWY5PU8IwxyWrwrmzgpldZzpm3okVfsgF2MHi
         /dd9P2R4DlIh5nY6XVJmLKINP5dL5Ly+XIrDpGTdTrWPR/FLxS+gSbMHcQ4iavGJhV2E
         qUz6igbmSqL5DMa8czvEcZ+w506gZHI41N72JGWSt2i+jIfA/hd7IKiFUEcV5vB70hLo
         4BCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=9Jatxsywrqqey9YKMnBopBPy3L5SD7BEgquk361DP4I=;
        b=CH1jjyQehq2OE2pt6gobirr1esTqYzA7SwnF5fQiEYSS1k+dWCCHgwtAUbgUMx2V90
         qOW4ggwSlWL1Y4ipG0CUb3U4z2likTAv3vVAxFTxbisrrRABVY+d4p7a09/v8DN2kUe/
         M29pXTk5DoUTTwKynumcnDtPr1i/Mwqqr663QfAYXD7sEgYKxKor8AXjkZuxJbsCy3zM
         MJNXOqXlkiVlsozXXWEJSkOqo7yJ/PsMuPgjbYxIEUYeSfpFp9QUGSsqkgAWqdtlJAwn
         YOpkeotACuHhZS2M1w5EvvsGGgxJWpgDZ0hdjRhYX4Wxsu0GnamsGbwMA+2QWLxjKd2F
         Y6sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rQcvKP5A;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Jatxsywrqqey9YKMnBopBPy3L5SD7BEgquk361DP4I=;
        b=HlM1aSq1OKkMVm4dXRo5rV6N707GzeDJxkUW3ci0Gz96q0G6Nfqv2VgG3vWxJoTi+f
         s08qOWOzoo4vc1EYRkJD2OBl8utFZIDdn9CSjzngw0eIeUUBP73n5/cfnjbKNi3YeLaz
         P7LuGSimjMXf3yoTE2OiBlkJ4la53cDZSd3CfE1jW4QWW6eECLXDFRNui3Yv2mxcX01t
         gFXsOxGJIuXuyKddCFC031DE4fOhG9hjmUsrVhVSf9cpE7pJ2B+4GeioNiZrTRBIGLHZ
         YUl8wa8sOKJugLYR3eBAZon5xXR1Ai6Jd9pTvEKSknobMLCw25xVbGa9klyXZzsvRkRG
         P0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Jatxsywrqqey9YKMnBopBPy3L5SD7BEgquk361DP4I=;
        b=KjRPq/EvzaS6BUMH4SKPA8gtV2L9f4lxjySwmpf3LZ2MDW4xkibQ+ZphjV/8+3Xvgx
         CpOQs0gPaRo/FUw9WrGlI5inU8eUePxYSAe4QniDR07D7DbxXS0l+7DkLbMtVTUShzHj
         WL8tIaK9uRpXj49WOCyl1nO1v0r5IxbtvZM86p64Gp4fZSE2nrmRg3SpwYDq2tZMuiHN
         AB40Z0dcLIeWhibkjYrHFgQzvha7UBD+ke7goXsMU72zDbehA+fAIVL6lix7EFbd8V51
         SzlfRcRmbHbiie5rmMtsIlm6GVYfZB8JxvbfxSo8x6UCROXvQIeW7X2mCBzmb/crlBjm
         Yxog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IjT/KK2uA1VY7uLRLuE4+YwqtIwW9AWKjW4ZyRtJMHoVZIbor
	O+OaDIxQst9Ld4JtDmNxTns=
X-Google-Smtp-Source: ABdhPJz365J3iyoUiV8plAzLrpmlESw9jtqVMBiekv7WH61EFrh7BZzpoSmEG5GPyWIJOYVdT32MrQ==
X-Received: by 2002:a17:902:8541:b029:d5:b4f3:314e with SMTP id d1-20020a1709028541b02900d5b4f3314emr3580182plo.31.1603388890799;
        Thu, 22 Oct 2020 10:48:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls1308146plf.4.gmail; Thu, 22
 Oct 2020 10:48:10 -0700 (PDT)
X-Received: by 2002:a17:90a:193:: with SMTP id 19mr3508950pjc.71.1603388890215;
        Thu, 22 Oct 2020 10:48:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603388890; cv=none;
        d=google.com; s=arc-20160816;
        b=YU7NDStAD2Bow49fHnYTNBp6PP4WuqNIT9D5wievBfo3Hd5d6NqbHmTooWSlMgf5jA
         Od6xKnYZa08cnCWnv3gwHdeDcUHMpX/jdhX4L5fuVoVuqoRxRJeKVf5tWG7c9GCuxiJr
         DsbXW7ECX/C5pB69gR7NLsFgsmzYW6r1dJ9Q9X8aDbXFhdFcpCWpozuJXojtuIPfByqy
         epqaFY6fc5bC8N9qeGlCB7+jIl6czU2kFc18T1toPdho674L8dsxGRXr/qokkPa9XOUj
         NhX+sIkxxtzleMZ1r1pO7vm4Ec2kYGVUn+zAQeTb9pfbX7dyd/gGLIE8mADE+XYVu/ED
         EP4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cj2SY4zBKFhltq0jL3dHS1EyHjxAJS8JgLceiDWyAHQ=;
        b=RUM1hDW2DFBczqnEn3p+RFtkO1OgqzdvEcxBQdwrL10ItfC+IXvRmxm/Y4hh4qe5zd
         ClgpV0knHRuVB9IfbDubDKEqLm0pzc1oe0uRBlGZM/KEM4XIwLiZtvkWLtMcg3U7CYT4
         8jjUf+D2C0ENw7+so+jLA6s1Msz74J/mLL/X9Hb5IUikJkbAB/HvEfcRNwGglChLfe8q
         7uWmwo3ZHZx/5sLU729Dj+2tpvK1/4g7VwiqMMES7oeqSKtCkRFiD2cgEnu/0EnZSAAf
         HyhRnsXJSak5592xE44yNJxFQar0ReQGDUlljHTcZl0Hwt2/8VgqXfxtBH7wsjfIsSUQ
         A7OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rQcvKP5A;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id np11si111690pjb.1.2020.10.22.10.48.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:48:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9428F2463F
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 17:48:09 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id k27so2605303oij.11
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 10:48:09 -0700 (PDT)
X-Received: by 2002:aca:5a56:: with SMTP id o83mr2194769oib.47.1603388888675;
 Thu, 22 Oct 2020 10:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
 <20201022173843.GR1551@shell.armlinux.org.uk>
In-Reply-To: <20201022173843.GR1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 19:47:57 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHFVH=_bp1GAae3tfEnyYyVJz7UfZv=+n=F+355ePWS+g@mail.gmail.com>
Message-ID: <CAMj1kXHFVH=_bp1GAae3tfEnyYyVJz7UfZv=+n=F+355ePWS+g@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=rQcvKP5A;       spf=pass
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

On Thu, 22 Oct 2020 at 19:38, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 22, 2020 at 07:34:38PM +0300, Dmitry Osipenko wrote:
> > 22.10.2020 19:23, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=D0=
=B5=D1=82:
> > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > >> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > >> <linux@armlinux.org.uk> wrote:
> > >>>
> > >>> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > >>>> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> w=
rote:
> > >>>>>
> > >>>>> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > >>>>>> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> =
wrote:
> > >>>>>>>
> > >>>>>>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote=
:
> > >>>>>>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > >>>>>>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wro=
te:
> > >>>>>>>>>> The vfp_kmode_exception() function now is unreachable using =
relative
> > >>>>>>>>>> branching in THUMB2 kernel configuration, resulting in a "re=
location
> > >>>>>>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode=
_exception'"
> > >>>>>>>>>> linker error. Let's use long jump in order to fix the issue.
> > >>>>>>>>>
> > >>>>>>>>> Eek. Is this with gcc or clang?
> > >>>>>>>>
> > >>>>>>>> GCC 9.3.0
> > >>>>>>>>
> > >>>>>>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO inp=
ut sections")
> > >>>>>>>>>
> > >>>>>>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing =
sections") ?
> > >>>>>>>>> That commit may have implicitly moved the location of .vfp11_=
veneer,
> > >>>>>>>>> though I thought I had chosen the correct position.
> > >>>>>>>>
> > >>>>>>>> I re-checked that the fixes tag is correct.
> > >>>>>>>>
> > >>>>>>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > >>>>>>>>>> ---
> > >>>>>>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > >>>>>>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > >>>>>>>>>>
> > >>>>>>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > >>>>>>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > >>>>>>>>>> --- a/arch/arm/vfp/vfphw.S
> > >>>>>>>>>> +++ b/arch/arm/vfp/vfphw.S
> > >>>>>>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > >>>>>>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore no=
r FP exceptions
> > >>>>>>>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel=
 mode
> > >>>>>>>>>>    teq     r3, #USR_MODE
> > >>>>>>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > >>>>>>>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > >>>>>>>>>> +  bxne    r1                      @ Returns through lr
> > >>>>>>>>>>
> > >>>>>>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > >>>>>>>>>>    DBGSTR1 "fpexc %08x", r1
> > >>>>>>>>>
> > >>>>>>>>> This seems like a workaround though? I suspect the vfp11_vene=
er needs
> > >>>>>>>>> moving?
> > >>>>>>>>>
> > >>>>>>>>
> > >>>>>>>> I don't know where it needs to be moved. Please feel free to m=
ake a
> > >>>>>>>> patch if you have a better idea, I'll be glad to test it.
> > >>>>>>>
> > >>>>>>> I might have just been distracted by the common "vfp" prefix. I=
t's
> > >>>>>>> possible that the text section shuffling just ended up being ve=
ry large,
> > >>>>>>> so probably this patch is right then!
> > >>>>>>>
> > >>>>>>
> > >>>>>> I already sent a fix for this issue:
> > >>>>>>
> > >>>>>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=
=3D9018/1
> > >>>>>>
> > >>>>>
> > >>>>> The offending commit contains stable tag, so I assume that fixes =
tag is
> > >>>>> mandatory. Yours patch misses the fixes tag.
> > >>>>
> > >>>> Russell, mind adding that? Or would you like me to update the patc=
h in
> > >>>> the patch system?
> > >>>
> > >>> Rather than adding the IT, I'm suggesting that we solve it a differ=
ent
> > >>> way - ensuring that the two bits of code are co-located. There's no
> > >>> reason for them to be separated, and the assembly code entry point =
is
> > >>> already called indirectly.
> > >>>
> > >>> The problem is the assembly ends up in the .text section which ends=
 up
> > >>> at the start of the binary, but depending on the compiler, function=
s
> > >>> in .c files end up in their own sections. It would be good if, as
> > >>> Dmitry has shown that it is indeed possible, to have them co-locate=
d.
> > >>
> > >> Why is that better? I provided a minimal fix which has zero impact o=
n
> > >> ARM builds, and minimal impact on Thumb2 builds, given that it retai=
ns
> > >> the exact same semantics as before, but using a different opcode.
> > >
> > > I think you just described the reason there. Why should we force
> > > everything to use a different opcode when a short jump _should_
> > > suffice?
> > >
> > > Your patch may be a single line, but it has a slightly greater
> > > impact than the alternative two line solution.
> > >
> >
> > But the two line change isn't portable to stable kernels as-is, isn't i=
t?
>
> Why not?
>

In any case, I'd prefer not to dump VFP exception handling code into
the .vfp11_veneer section, which is documented as below, and typically
empty in our case, given that the only FP code we have in the kernel
is NEON code.



"""
   The '--vfp11-denorm-fix' switch enables a link-time workaround for a
bug in certain VFP11 coprocessor hardware, which sometimes allows
instructions with denorm operands (which must be handled by support
code) to have those operands overwritten by subsequent instructions
before the support code can read the intended values.

   The bug may be avoided in scalar mode if you allow at least one
intervening instruction between a VFP11 instruction which uses a
register and another instruction which writes to the same register, or
at least two intervening instructions if vector mode is in use.  The bug
only affects full-compliance floating-point mode: you do not need this
workaround if you are using "runfast" mode.  Please contact ARM for
further details.

   If you know you are using buggy VFP11 hardware, you can enable this
workaround by specifying the linker option '--vfp-denorm-fix=3Dscalar' if
you are using the VFP11 scalar mode only, or '--vfp-denorm-fix=3Dvector'
if you are using vector mode (the latter also works for scalar code).
The default is '--vfp-denorm-fix=3Dnone'.

   If the workaround is enabled, instructions are scanned for
potentially-troublesome sequences, and a veneer is created for each such
sequence which may trigger the erratum.  The veneer consists of the
first instruction of the sequence and a branch back to the subsequent
instruction.  The original instruction is then replaced with a branch to
the veneer.  The extra cycles required to call and return from the
veneer are sufficient to avoid the erratum in both the scalar and vector
cases.
"""

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHFVH%3D_bp1GAae3tfEnyYyVJz7UfZv%3D%2Bn%3DF%2B355eP=
WS%2Bg%40mail.gmail.com.
