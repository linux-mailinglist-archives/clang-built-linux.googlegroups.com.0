Return-Path: <clang-built-linux+bncBD63HSEZTUIBBGG4Y36AKGQEO3SOWDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BC1296254
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:06:49 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id q75sf961349ooq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:06:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603382808; cv=pass;
        d=google.com; s=arc-20160816;
        b=RG+vKGNwMBgcebzRgK4ihv7feII+7JEsS+W+KSuos81EOEiYTvZlYEMDihFzk+M2gi
         EQAHs9pKtCS2afB4AeYmn+5XsAVq4I3OCJK5egw69kKZZUfWVMcRDk/BAbZgvEffBTRJ
         a1Ir/W7YGSAnCxAEU5O1duRpicSqDGjWHXcrkuhcRrLq2OYHhe2cfA+k6E3fOUOlBmGc
         hWJC94Cj7JCibhldLBxA+Buz9FYMSnNHOc9Lpv3enQJF2gGxOKjnNSZOftSiQDGRndZ8
         DEF/q1KI9iGWQHKVI1Tkmfl8gLSoXDN+WI1j2ec9hZqn/vBH4bLouV98CYYRJKPoLhl8
         KAvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=706ulrXsAvFhmDFFjQnCxHM+LJuSw2R0g5N6GkJ8zpo=;
        b=WHcR8OMfFfdfeOmgNaJFcakIBy48kbEEIS6yiC9WW9QLR+6v8AHSElxM32qy4TlVDr
         A8Ka09nV/kedSAij+u3ajIhfJqsawDbZV9+9AS5ZO9nIjESiiDrPzp5JAaFPbyTZtNN3
         BM0hnRoOX1l8hi6E+WlEZRoz6BzRuvqHHUKQ3So0b53dxygog5EbKwnz/w2oEZvvkOTX
         ZbRK2zNXjStf/jD1NqiBFWjPy16t4ZQ0trPKOZ6NGtso+14Man+P4JCAtSMXirP/hHBW
         texHs80QrzeTtp2Dqp2jCnkcmLqzKtMaDKZhAgFMDyfex4wbXQnS4IpsHpLaF8xBefDB
         eXKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qeXu2VEW;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=706ulrXsAvFhmDFFjQnCxHM+LJuSw2R0g5N6GkJ8zpo=;
        b=Z28iUpFZZbQrQWjCgkjqsTXvcDLIu8hNsXx9MDyjEPQKetvtx3UR+Sh2az9vM0ovcN
         6FgUmHekzi8zouHvJ/F5BMaKD+pZPKlqEs4agnIohH3+Kq1PMtX4RfFe/5stha/sujXk
         SIyN0Gf1axpyJU/Lc09nIsf7PeqQ1zDkuz+BDogSZvswyStZri/q6dlRe4voIszJ/afc
         bOoVK6JhMwwL59JdyERmkH6E2MMl38aLVOCtJFcygdKddPkYaijlhbOqkIu+s3jTAFL3
         ZcH9L7D4bmzlOIriP5/cXwmTeD150jajLjKJrSC5nuMyq6Dr//TZwKAtO+CUKLOrey54
         McfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=706ulrXsAvFhmDFFjQnCxHM+LJuSw2R0g5N6GkJ8zpo=;
        b=WqEEnENQSkP5pBhCVuvU69EmE6NO0aO5usk1X2wYUgGEv9Lf77y2eNQgi7epANW3t8
         7DzT1B1Mp/MvRH6g1VgWk/MguHB1uLpKs/zWwq1ySIxetoT4Di/IOaIlOE9dtHc5O02i
         Y/tfP/X7izJslilAw9qRQE2cpRacQ93nJGxt89m/BnCMOaX9yWekfe3V/6lPCReU5iq3
         QgsdKedimVtZuVKi1fcoEAlxir/5KHMPyXpwc6FziJoHfhOwgeDokG1L4/0rFZrC0Xou
         MR4wIc3v7dJtqki6Ve8VlhyMoiWcv9Oj0PPfyWul3U7kT8AYSR+8HvvZlwLBlWcsdKg0
         kNjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eVgEdipZ08C70XiXfPg1ruZ2H0dIvSgmxlXWZRKEbsw/uverb
	iikvtJ8hF4AYLZ4IHooUa50=
X-Google-Smtp-Source: ABdhPJxR37ln86MQT5bum7t7Igwm8/fo8jSdLprFdbs/Nu3aEydJQLCp8+DgzAxQk750ujAKzSG4OA==
X-Received: by 2002:aca:54c3:: with SMTP id i186mr1922799oib.35.1603382808144;
        Thu, 22 Oct 2020 09:06:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4bc1:: with SMTP id y184ls510544oia.8.gmail; Thu, 22 Oct
 2020 09:06:47 -0700 (PDT)
X-Received: by 2002:aca:6543:: with SMTP id j3mr2129833oiw.81.1603382807755;
        Thu, 22 Oct 2020 09:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603382807; cv=none;
        d=google.com; s=arc-20160816;
        b=vY13s+ESADJsXStLVPDXb41sqlORSBc/4T7zcqPlMyBJNClN2+tBhAkKzIBETPtHut
         hN9R1CsO/UNU5pA+yHWcpyn5xJQoozb57PnUMV4PuJHIgQvJ+IwjtOaVcB1Jc1fr9uvl
         56ieIn8i888vbkwmDg5UeeIc4f/AXAG246yjQkEr8QHbhiMvsJiV0UGgK5xeWEFXTrDR
         WKSvVPk5I1Wqgkki10fWb4891/QV5vf+l5pM/MkUULy85La0YZJv11TztXdUCqAEraPE
         CF68+0CFNFIkbvZRPH+TRCQUkIrzZzLYgL6swSk2GJcimbNeSAXS8sexuFme5W7MjxVq
         OMxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dFqz/hhHa8kQwnayBcyqMVw1mPc11bD2aWAy+REOK9w=;
        b=furL212y9rWTfdlJaluu36KYZ6Oyitz20aE5o/sgO6CHqPYSrvtSBOictdLJn2ne3e
         sVPECxUTbPbqFc4YbxC0+4INIuCunMwR/44iJpc3mH/WAEDEy0ENnAyTEFauMYYtj23E
         /nUNIjSsn4D40J9CKQztjROZB7ovz/FQtBXmimk+fDOiR07SIoqhS+VqP7R3ScdlOJIp
         SEbP/v2KKM81LneV3ZYfL7qIba3Q/Xpjww4+sQ0abWNnBZimWXgQ1m+872uYLqUveVUy
         gLXtlndec+QHDzilHTCB8lcvGggjhTJAuaST98bwRakmR0o3OWAPDFvAJvGTZxe1pqiR
         RtyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qeXu2VEW;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n185si112833oih.3.2020.10.22.09.06.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 09:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5F7824182
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 16:06:46 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id m128so2263056oig.7
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 09:06:46 -0700 (PDT)
X-Received: by 2002:aca:d64f:: with SMTP id n76mr2223077oig.174.1603382805853;
 Thu, 22 Oct 2020 09:06:45 -0700 (PDT)
MIME-Version: 1.0
References: <20201021225737.739-1-digetx@gmail.com> <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com> <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com> <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
In-Reply-To: <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 18:06:32 +0200
X-Gmail-Original-Message-ID: <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
Message-ID: <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Dmitry Osipenko <digetx@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qeXu2VEW;       spf=pass
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

On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wrote:
>
> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wrote:
> >>
> >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
> >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
> >>>>> The vfp_kmode_exception() function now is unreachable using relativ=
e
> >>>>> branching in THUMB2 kernel configuration, resulting in a "relocatio=
n
> >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_except=
ion'"
> >>>>> linker error. Let's use long jump in order to fix the issue.
> >>>>
> >>>> Eek. Is this with gcc or clang?
> >>>
> >>> GCC 9.3.0
> >>>
> >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sect=
ions")
> >>>>
> >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing section=
s") ?
> >>>> That commit may have implicitly moved the location of .vfp11_veneer,
> >>>> though I thought I had chosen the correct position.
> >>>
> >>> I re-checked that the fixes tag is correct.
> >>>
> >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> >>>>> ---
> >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>>>>
> >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> >>>>> --- a/arch/arm/vfp/vfphw.S
> >>>>> +++ b/arch/arm/vfp/vfphw.S
> >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP ex=
ceptions
> >>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel mode
> >>>>>    teq     r3, #USR_MODE
> >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> >>>>> +  bxne    r1                      @ Returns through lr
> >>>>>
> >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> >>>>>    DBGSTR1 "fpexc %08x", r1
> >>>>
> >>>> This seems like a workaround though? I suspect the vfp11_veneer need=
s
> >>>> moving?
> >>>>
> >>>
> >>> I don't know where it needs to be moved. Please feel free to make a
> >>> patch if you have a better idea, I'll be glad to test it.
> >>
> >> I might have just been distracted by the common "vfp" prefix. It's
> >> possible that the text section shuffling just ended up being very larg=
e,
> >> so probably this patch is right then!
> >>
> >
> > I already sent a fix for this issue:
> >
> > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D9018/1
> >
>
> The offending commit contains stable tag, so I assume that fixes tag is
> mandatory. Yours patch misses the fixes tag.

Russell, mind adding that? Or would you like me to update the patch in
the patch system?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ%40mai=
l.gmail.com.
