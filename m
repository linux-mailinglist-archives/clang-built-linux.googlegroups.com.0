Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA66Y32QKGQETZWOKLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3301D1C5FFB
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 20:23:00 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id s206sf1389227vke.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 11:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588702979; cv=pass;
        d=google.com; s=arc-20160816;
        b=IG634w4xkodt0AULhM10FRoHpnI3KtY7mmfQ6FARks45OUJ9WjS14ye5Nmp4uFYzyQ
         4p/wvypDVHuNpw4p78IxHSsYJIWeQK85A84QYK4EbLWK29XgNzUWvT4lyMqEn6DG5shb
         q4VDGWae4CbUoWFfcbGOpB/n/PWbcpp3gmMoEDFUNeUv7grJ38h5C1IJr/eWcZSCB4i4
         nA7oJU6bmoVaqde/OmPRfyxKFmhFV7rXjdDlzbFmucnz6cQ/VqC4e/uUZ3Jo+mwmUV1A
         fTZElM2hH7/9uT6eGGlPFaKhYMl6nkyeM8RsSUDzPtMeoxD0oz963B+i8PMI/v7EMLnN
         wluQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=n1dLN5s7jkch+fUYvJN4+BuiPxOqlQLjdjKWODcPv7U=;
        b=rQvIV3OddcKtZspW6WE/hvYjz96QhBLlsqJ/RjuFof4Lfcaw5R/uMFl2El5fDgOPer
         zSJC0DpDtTkiJjCdXsEPkAX5AZDpOwXPYDnuU173FkbxFXuwnFwZibMXR0vWTtP7wO4U
         bbhBjylj6T4DT7THAAo4yve79O6TUIoQPiQymFbjEe9ZX2VMvbT0izjwAFF4fR5PhM0P
         f7qiHHH+1vdW/ZCQUaT283Gv53iEsGjUg0z+EBJLQTnpRxEDjkka2+ijeX/oc9cuBGgT
         2io7C8XNWvm9DlLeabYV/bWlulINTQgeC0qRfV1aymlBKbbbg+J8GzTYCIg7ffBa8CL2
         lqnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FgWb0Sh5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1dLN5s7jkch+fUYvJN4+BuiPxOqlQLjdjKWODcPv7U=;
        b=OlJxVl1FN8gMNUBydrkFBBO0IOimvIsKxLESE/ByU7/oNQo9WW+9I3a/YqQ+ybB41Y
         P6eLVibiOKTfydWQDY0DPnqt3TC1aEL4IpzEaE7UDeWCMTFMqXlR4fhCCfUt8hZsT9+M
         HkegInzK1kJdttTU29rf6++R77VCg4IuI0IJx6c0vrYSZYvnsa9bnPuKa28bwY0KezJt
         2cTsdS5YcABoT8STGt3mIey2PuluKmvbhlTYopnDQ+Sly3mznxHQuwQLveIGShHgrLei
         9TPel3t+zNxlUpoicHVb/4xQZOBRt+n1P58u4TW24q94ovUasYn5fGUG0QHR7Td1wVry
         0xxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1dLN5s7jkch+fUYvJN4+BuiPxOqlQLjdjKWODcPv7U=;
        b=rxvOw3U1sL7N7oonuzBYryQ+X0JmEDscJbmC/RiLdSxh8jhDAxf14vXxBiTUW5eDKk
         PSeGpxCOsY81dvx61n3XEDgiZ+xW702kjZdVu/nY2yeXM3svbGrnBXUOuZ+N0HWdOQO9
         QER4W82C5SDwNoR3XX7gOsff1kZcLXOvrAPw5aS9SxWGoM4lvIAJj+uIOpmkNnWZHdpH
         6bY+nYw/iSRyqKz4BEUFyAXsCa8XkvL7UsgM7LAAdsIzubKH25beHxlqaXkkiXzqFjyR
         zTQWUOPce8UYW3VGQ6Xhg3kkQTOLAgyTr/ZWNIYBIAG6TMrZ8xG+C+JEcfXBBVu44B38
         iFQA==
X-Gm-Message-State: AGi0PubSpt071FxYi7Mp3d32EjuXJ+G1Vb9iD+8udOvX631PGq6H3m1p
	T4eymJcV3R4p/EyzAbDQ4YA=
X-Google-Smtp-Source: APiQypJvIHOBRwoH/waXIUIaZ51doJyvhXP2j1kq+TuUC2d5aNr1jpqd3UAROgORWO+Kzhn2K8+LqA==
X-Received: by 2002:a67:7d10:: with SMTP id y16mr4522402vsc.23.1588702979232;
        Tue, 05 May 2020 11:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3383:: with SMTP id y3ls365544uap.2.gmail; Tue, 05 May
 2020 11:22:58 -0700 (PDT)
X-Received: by 2002:ab0:6014:: with SMTP id j20mr3805807ual.29.1588702978787;
        Tue, 05 May 2020 11:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588702978; cv=none;
        d=google.com; s=arc-20160816;
        b=kQdg28H77nVzhcHwh7PXt5D+byjKtHZIAPaTImvfAdrlKn+QxmH72g/Fg+UdPd8fOh
         Z2a+WcEVvM9ew3c6wHzqWAAwYYoZ6OwcwA5is1q1MM2vEkFZk3pEFMB6hHV/F0FU1ONk
         eA7e5UWuJEvGAfExgqPXPv67EOYkAkCugm7EPrHCpE7AKh7Nl2nWxFvTMm+bO2doiPMb
         4E5vDLUFBQavn3flbJOL9BWnqcXhEfq2MdsfrVRg44swS6wR7Xws+1WDeFDdp+ZK33H1
         k1jUFoQO6GJYnCfomlb/3PI0XWSfApOyZul2xBx8WSZ4gxDL45JFiTUCZlUl5HyD//kZ
         elwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PToLYAimVAsZtUfzGzNopJPy83pb8+TOtuhkhnpZbnA=;
        b=yhvLCxC3pmb1i2EgGyOcqVp8ssiYG37GSuxL4BTKgDHf3BWQO6eYpXdVYgrfv7+ZwO
         2NOTfZC5aBbWFIkGJF1nrf8Idcx0g4W2RCsOevARv+ONIPKlf1bO56EYOGiUMkLjmE+y
         YQHgYSlaVu7O13QpkLD+7nvyvClUw5MBL1UUUlQr7h3mAhWPWQATwHQHw8O9C/aTogPo
         OZmINTLgAbRHAzTYHXR0/HnlcFoUVn3TY+NQXA0R9xzqjl+/9gm0lVCrAwwX/sl3Nb2G
         ziASBs82sSymW3ZMEVVtat3YnbFLX53wCLL6zi0LlatXyZf1g0CFF6sGKc9jDazPEpvP
         gehQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FgWb0Sh5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l3si259211uap.0.2020.05.05.11.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 11:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s18so1367283pgl.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 11:22:58 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr3795479pgb.10.1588702977435;
 Tue, 05 May 2020 11:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com> <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
In-Reply-To: <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 11:22:47 -0700
Message-ID: <CAKwvOdkcQwwpx5JMJpGg4cO3RLfoLtWvWjgnuXyzas1X3eyvWQ@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FgWb0Sh5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, May 5, 2020 at 11:07 AM <hpa@zytor.com> wrote:
>
> On May 5, 2020 10:44:22 AM PDT, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >From: Sedat Dilek <sedat.dilek@gmail.com>
> >
> >It turns out that if your config tickles __builtin_constant_p via
> >differences in choices to inline or not, this now produces invalid
> >assembly:
> >
> >$ cat foo.c
> >long a(long b, long c) {
> >  asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >  return c;
> >}
> >$ gcc foo.c
> >foo.c: Assembler messages:
> >foo.c:2: Error: `%rax' not allowed with `orb'
> >
> >The "q" constraint only has meanting on -m32 otherwise is treated as
> >"r".
> >
> >This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> >or Clang+allyesconfig.
> >
> >Keep the masking operation to appease sparse (`make C=1`), add back the
> >cast in order to properly select the proper 8b register alias.
> >
> > [Nick: reworded]
> >
> >Cc: stable@vger.kernel.org
> >Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> >Link: https://github.com/ClangBuiltLinux/linux/issues/961
> >Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> >Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> >Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> >Reported-by: kernelci.org bot <bot@kernelci.org>
> >Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> >Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> >Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >---
> > arch/x86/include/asm/bitops.h | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> >diff --git a/arch/x86/include/asm/bitops.h
> >b/arch/x86/include/asm/bitops.h
> >index b392571c1f1d..139122e5b25b 100644
> >--- a/arch/x86/include/asm/bitops.h
> >+++ b/arch/x86/include/asm/bitops.h
> >@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >       if (__builtin_constant_p(nr)) {
> >               asm volatile(LOCK_PREFIX "orb %1,%0"
> >                       : CONST_MASK_ADDR(nr, addr)
> >-                      : "iq" (CONST_MASK(nr) & 0xff)
> >+                      : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >                       : "memory");
> >       } else {
> >               asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> >@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> >       if (__builtin_constant_p(nr)) {
> >               asm volatile(LOCK_PREFIX "andb %1,%0"
> >                       : CONST_MASK_ADDR(nr, addr)
> >-                      : "iq" (CONST_MASK(nr) ^ 0xff));
> >+                      : "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> >       } else {
> >               asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> >                       : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
>
> Drop & 0xff and change ^ 0xff to ~.
>
> The redundancy is confusing.

Thanks for the review.  While I would also like to have less
redundancy, we have ourselves a catch-22 that that won't resolve.

Without the cast to u8, gcc and clang will not select low-8-bit
registers required for the `b` suffix on `orb` and `andb`, which
results in an assembler error.
Without the mask, sparse will warn about the upper bytes of the value
being truncated.
(I guess that would have been a more concise commit message).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcQwwpx5JMJpGg4cO3RLfoLtWvWjgnuXyzas1X3eyvWQ%40mail.gmail.com.
