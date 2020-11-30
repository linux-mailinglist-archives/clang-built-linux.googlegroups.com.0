Return-Path: <clang-built-linux+bncBD63HSEZTUIBBIUYSP7AKGQE7FWD4GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E57FE2C8254
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:40:35 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id z2sf8386333pgb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 02:40:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606732834; cv=pass;
        d=google.com; s=arc-20160816;
        b=ykKVTihYOacFJyMB/TiueCWBH3/yOKkGLBkubsCeaMcOnW6BplpI8qsN+gSCm3lmlz
         oO9+SrHQq5y0fKLgzA+qTncM/voCCMl1o5pAtRCESXG2OGBM4MV9L6z4ealJWEXxYVSb
         /sS69IO7DO7p8Iw/wXR50SFnAgMkTu9suIiubHRQbxBcxVw9mG4KHqAJwEVjMrVioL42
         f3bACF6JPkQDL0GIy5bzUpUmanoZSKEjJL+tmeqCGukYyOpaxwwvsql5j/BRcidZuc5p
         Cmjwq6I4kU2Ug9SqXzNQukOTFcPxRTHOcozXOF0NEtBgcVGoC8WTm302rgSMXvrEW5fG
         /1ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kK32RiQOx9KJtP4W54nhwfWV+vPK0vRIQcbcJNQ/CP4=;
        b=QTuZN4oQJ2vYR66L4kR71sZG34U5zOFIzVv8Uw6faZmuVF7sjHJUGgiaYl8b67S4wt
         VQFWu5XCgk5A98tGfyAoNTZO8vLIgC1gRTW0prCUB0gpW9xSFDX+zdzx6r4CrglH7Kos
         AvhZzvi2T/KE47/VZPwI5eVtHhF5jPP6HU68lvZt4dXkeHilRCb1tpyS8qPJkBOFl4Fj
         KeX63/kCE/UnQprYPIjp/waaZDk+ZExbWgn+bdNEnba/Lj44p0f4oMI2IgF7H+/7nuhy
         w3EwM0hb9Gix9poympLFm5rGo77ma/ULYp8/hGIK/zO35mvgDR6c3IUQZfTGK+X4jrQF
         YEBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KDWJW6fV;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kK32RiQOx9KJtP4W54nhwfWV+vPK0vRIQcbcJNQ/CP4=;
        b=jM+L+WJ39hk5gJNf1GJlaY0rctqLI908Vh1hLwoLniYGtzB+a191fpHgqU4cGVdQLp
         uBJ1keXExNEm6FC7ehr+NJHVLnX/J1LlOlO4ymyWIrqdYpbMUs17Qdc4f+ukEpeEw3q1
         +pTYQYgfHUdZdd5IrzJnwcBztQnwbEtGSMzfaScwq5pN9drVBfbo1IM8AtkKgP9GokaQ
         T3Iib+EAEdyFiG8lDN0dhBxcQxD0Oel0zjLGnCLccEWjoQttDcCpiFn0ckPMdurHnobj
         jKlUxD4Y+zOQjvajUCqgb0nUMoWTVj6xmPOpggqdSJImTT/zltXGRjG+rcGI28QVWqWy
         ZCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kK32RiQOx9KJtP4W54nhwfWV+vPK0vRIQcbcJNQ/CP4=;
        b=J25c97NqG+FMW/BRmnGhW7jHyIh337nBbVnNG1esgfei304xNv2tZhSL0+CzQ9mY9x
         9rdNj7gdT+6Cx25tC/mcM37J4axMLuP1nxenuLqk3TwIcWbZXC0y/e03ahA14yr0lbRs
         nmQbgHFvr3+1LN4PDzWklslj2u948PUiGMKkM1eggTMmPz7lVnngUekvkUgQjy7bslJC
         e4VkgMlFFf+1RZTTOw4+3jDLQ+0DDrUBoeDoIO+6vjDHXuUEzfbl6I9S9TJpfUL5vsqW
         6E0iDbHNxIvHoB0CmGyf0uQxaTkQ27qA297dIfI5fzUWhqI6dGQijjaCxn7LV4iwFvtr
         paHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VnF4n81jlYMGEDeb7clMyMMPSfxnkJjBQ5UqZ+G3sGcssH+lf
	nCOXuxdiV4ohPpGAEVLsaXc=
X-Google-Smtp-Source: ABdhPJyDlXSjWKXpgiklJLzVd1zhlH/LMQOW9ZzYfkF6wZr5eupdPYckMz0GCRtIRrVX1NGVAMSp8A==
X-Received: by 2002:a17:902:7c91:b029:da:53e:80e1 with SMTP id y17-20020a1709027c91b02900da053e80e1mr18382426pll.42.1606732834244;
        Mon, 30 Nov 2020 02:40:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:989e:: with SMTP id r30ls4653889pfl.2.gmail; Mon, 30 Nov
 2020 02:40:33 -0800 (PST)
X-Received: by 2002:a63:1c21:: with SMTP id c33mr17300775pgc.161.1606732833520;
        Mon, 30 Nov 2020 02:40:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606732833; cv=none;
        d=google.com; s=arc-20160816;
        b=jHYZGttVt+rxR4Whzei9UwJF+exHR8HODXTh0ypDMFn6GH01XY7knZiyrV8V+JmllV
         fYNpaCn9eRqEp2psHeC9q6pwY75/KI55cAOWYhedgtJL6TihJud/nbB5jUkD9YA5UK+t
         XD/gXvpjpfq/S/3Y0q/1gMIAQuMR6uWz1WPlGaHzndXNo7p4D1x5O9xeyr5bLEivtGfj
         DCpW61rIEPwWfFdGIMP4FmcpFI4GqMPClaiXAGOgz//3586XH6yGXqIEh9Spl9j5SV/S
         +ra3ge7b8RLnqNiZzMbk8+BKVTkZAplMy+6xVy/vVx8RrA5nEIQHCnQTZGXQc+Mgkk1Y
         X6Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vu/o1oir4Of12NVuSNCPxwg2M75sacGTQ52ZyBproZc=;
        b=V76iB3OZ7UCeW5PpXFKZezNLA8Oe9msLcWto4o/6RurtPONTsjgS524n0wdIuSa7lj
         kvNLYacqEgCoQg0etJiQGFLiZK1HurKgQPDRyanfMLO4SzOHiawSkFpyh0rdnJe5y/qr
         2uRvXznttiueUxnuR38AvUR5GcJf3Ogcih/N+jEgHWH2M7dE86K1q5M6xZhmz7Crvo7l
         w+O0bSDzq6fAqZdfUNx+XR1WtNd7OsjUF5tNeSgPcW+CvhbRv88W7HnbGKJkzYvbP9PX
         jT4cUftzOgoyasrq1LBhReVxIuobFRcOVIjazAhYs03TS1xgSfp89QPMAmZGrkQ1uZiK
         dN2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KDWJW6fV;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t126si893455pgc.0.2020.11.30.02.40.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 02:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D7938207BC
	for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:40:32 +0000 (UTC)
Received: by mail-oo1-f51.google.com with SMTP id y3so2572380ooq.2
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 02:40:32 -0800 (PST)
X-Received: by 2002:a4a:45c3:: with SMTP id y186mr14718768ooa.13.1606732832043;
 Mon, 30 Nov 2020 02:40:32 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com> <20201130102122.GT1551@shell.armlinux.org.uk>
In-Reply-To: <20201130102122.GT1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Nov 2020 11:40:20 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK=A2H0D4-_cBXbOmcw@mail.gmail.com>
Message-ID: <CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK=A2H0D4-_cBXbOmcw@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Antony Yu <swpenim@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KDWJW6fV;       spf=pass
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

On Mon, 30 Nov 2020 at 11:21, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Nov 30, 2020 at 11:12:33AM +0100, Ard Biesheuvel wrote:
> > (+ Nico)
> >
> > On Mon, 30 Nov 2020 at 11:11, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
> > > >
> > > > __do_div64 clobbers the input register r0 in little endian system.
> > > > According to the inline assembly document, if an input operand is
> > > > modified, it should be tied to a output operand. This patch can
> > > > prevent compilers from reusing r0 register after asm statements.
> > > >
> > > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > > ---
> > > >  arch/arm/include/asm/div64.h | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > > > index 898e9c78a7e7..809efc51e90f 100644
> > > > --- a/arch/arm/include/asm/div64.h
> > > > +++ b/arch/arm/include/asm/div64.h
> > > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> > > >         asm(    __asmeq("%0", __xh)
> > > >                 __asmeq("%1", "r2")
> > > >                 __asmeq("%2", "r0")
> > > > -               __asmeq("%3", "r4")
> > > > +               __asmeq("%3", "r0")
> > > > +               __asmeq("%4", "r4")
> > > >                 "bl     __do_div64"
> > > > -               : "=r" (__rem), "=r" (__res)
> > > > +               : "=r" (__rem), "=r" (__res), "=r" (__n)
> > > >                 : "r" (__n), "r" (__base)
> > > >                 : "ip", "lr", "cc");
> > > >         *n = __res;
> > > > --
> > > > 2.23.0
> > > >
> > >
> > > Agree that using r0 as an input operand only is incorrect, and not
> > > only on Clang. The compiler might assume that r0 will retain its value
> > > across the asm() block, which is obviously not the case.
>
> However, you can _not_ have an asm block that names two outputs using
> the same physical register - that's why both the original patch and
> the posted v2 will fail.
>
> You also can't mark r0 as clobbered because it's used as an operand
> and that is not allowed by gcc.
>
> The fact is, we have two register variables occupying the same register,
> which are __n and __rem. It doesn't matter which endian-ness __rem is,
> r0 will be used for both __n (input) and __rem (output).
>

__rem is a 32-bit variable, so in LE mode, only r1 is used for __rem,
not r0. So r0/r1 are used as an input operand pair, and r1 is used as
an output operand.

So I don't think the compiler has to be buggy in order for it to
assume that r0 will still contain the low word of the dividend
afterwards.

And actually, the same applies on BE, but the other way around. So we
should mark __xl as an output register as well, as __xl will assume
the right value depending on the endianness.

I suggest something like the below,

diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
index 898e9c78a7e7..85ff9109595e 100644
--- a/arch/arm/include/asm/div64.h
+++ b/arch/arm/include/asm/div64.h
@@ -36,12 +36,14 @@ static inline uint32_t __div64_32(uint64_t *n,
uint32_t base)
        register unsigned long long __n   asm("r0") = *n;
        register unsigned long long __res asm("r2");
        register unsigned int __rem       asm(__xh);
+       register unsigned int __dummy     asm(__xl);
        asm(    __asmeq("%0", __xh)
                __asmeq("%1", "r2")
-               __asmeq("%2", "r0")
-               __asmeq("%3", "r4")
+               __asmeq("%2", __xl)
+               __asmeq("%3", "r0")
+               __asmeq("%4", "r4")
                "bl     __do_div64"
-               : "=r" (__rem), "=r" (__res)
+               : "=r" (__rem), "=r" (__res), "=r"(__dummy)
                : "r" (__n), "r" (__base)
                : "ip", "lr", "cc");
        *n = __res;



> If the compiler can't work out that if a physical register used as an
> output operand will be written by the assembler, then the compiler is
> quite simply buggy.
>
> The code is correct as it stands; Clang is buggy.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK%3DA2H0D4-_cBXbOmcw%40mail.gmail.com.
