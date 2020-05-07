Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBR6D2H2QKGQEHWX3X5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE991C9B19
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:30:16 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id w9sf6729041qvs.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:30:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588879815; cv=pass;
        d=google.com; s=arc-20160816;
        b=x63n6WUA4RpYIWBzoSopM7V90mVgkalxu+l6SyEImCSrrnyzP7K3eoaVmZ4N2lc7Pk
         LaddPYvDhwFrmtMjn5P9Dtz6XglSL2evrEu2mbm/0yIy+Xn24B/2VJuXoFIqf+kgxz0b
         XwHzeMame/Hg1HgGHm94nZpF5RyJ1alRX/Cscik4QRFSYV6rkj7GOpBHSNTn56i8uWO+
         GsyirK3A/qelTncgMuyAA7vOA6sps5u4Wl63N0RZE/7SG/ZTqvuiNskb2k5MAV8Vha0p
         k7fuKJ9z0bK7aCOcR+nIOcyOBCXZGXdNGVgbJ0xeTVvTmE4bd4CFsPD0IiqcMmYa9sN5
         ZCtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=18jzZ+IcKh7t6DXqBSaihuci1836AG/0kJEXYw2+ofU=;
        b=0HMa/5rRzA0pKJWvYKKxHaLRX4NGcKovKaTjOM2sHy1IGqjj8yo0L8j2i8S2ux+z0N
         O65YcHEoEFz0WGxHZDbyoeohoZiqCFIlIC6WZlv1IFlvIzOj8xRlMKaa0Dga+dV8guxU
         JyJKm5YAKlENebozApsvtyFCyE5CjmEqP0YeIBLsZUouO7HHWzsjMbp0VPeOlkP5WaN5
         NUGcXA9GmBLUAMZu4A2X/+rb8KN2YPeiyrRULjoAqwyaHE2zlvmnQV2jDrKpRA77WRHO
         s0K7tq/GRuga8EQLsEtd2jyEHLoTEAkxdbc+FCDHOtsj6+JzSEkyQC0wVFj51HyGq44X
         oLbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=Og3DqPf6;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=18jzZ+IcKh7t6DXqBSaihuci1836AG/0kJEXYw2+ofU=;
        b=ZEpOj4XUX6vLgkgkL8TpBbAKy0oAo/6TrZgyHJDKOpRklv1z/gwCNbU9ip59kXJEav
         a/KsAbMSPB3mJIkMzawC5UHisGA+qc5m9kSoCWkByybAuRPZVzNMEmaYAkzz+KhGx5No
         nNFodKerjQM3NYWDZ7DGgnglAQZfdt62vU0fLhvLlNLS9h2gqBtImcdTAhB5x1Uewbs7
         AKs9euCW8lGfkQSHcsX7zUogN0T81yGVSY+qNAn+Kq3ATSbPC4MVcDWIX1rlwEDusS1f
         J/Uwoo25J64zsa9DGg8j1ksR8hTKkRZybc8kcY5kPDG2LHLDosc9L9i7Hu8gdWdZfu16
         oEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=18jzZ+IcKh7t6DXqBSaihuci1836AG/0kJEXYw2+ofU=;
        b=pG8I6mM93BeRy4UBNEUB9h4ujU/ppPA7DhERSzDB4+b4pyBA5vfX4DpglQs8VfufZN
         fCYHd/fUGSHu3Rdyp1qhhlXxpnza892imcELYx3P+GMyyQ9fx+/CWtpkg9bONT4z0gQ5
         WVnWHc8WkZZ4/MeHRfcoPExtx2WgH9MLC+Psz6RmrV2WIp9QU0yH5ANC77KrKvBS+O4D
         RJz03FhN+89Aw3DjzoTC/OgVgkIwKB9rWKqix9jEp9ESP9q1pbhJelOWNq+p09RbVwT2
         5maoCwTCG97tDgFSqCl816YW1GWIggdrktRrJGPn2LT+VAxRnj3ECpExDp7JR5MIpO/F
         3wwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZk8DKRsP3wqX3ZWHgCjbnPA0PiOyOu8E2iUcpaSSzni7tUWLyX
	TYTtHpnVXxwSYCVOa2aSmto=
X-Google-Smtp-Source: APiQypJxyTEIB8O1Mhv02V4XMWVwMJZm/WuwVJyDWp9LI0Hlp8iK2x3kXHMst69npum1+PR14S63KA==
X-Received: by 2002:a37:a193:: with SMTP id k141mr9347204qke.147.1588879815526;
        Thu, 07 May 2020 12:30:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2205:: with SMTP id m5ls6570384qkh.1.gmail; Thu, 07
 May 2020 12:30:15 -0700 (PDT)
X-Received: by 2002:a05:620a:1395:: with SMTP id k21mr16164902qki.120.1588879815182;
        Thu, 07 May 2020 12:30:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588879815; cv=none;
        d=google.com; s=arc-20160816;
        b=fJF5ky6bxkGLTMFCORR/aqJL6+kR1T3KlI+CFB7tQ1URdgZtMRfDtGzBFS8sjXEOQT
         nnVNq9ehsUhSW3dPkUWOMz7n8+Yhd1wJZ+7kznzTBcWdJIjDk/G/8pUpyuBVO8hbA1ty
         9GkNN2YQHg5PNFB/3z9FBq4DFB4b6H1gagHSXLkqSrFDIo2vIXoMGD4tAAipOGqHe6u5
         QRtd8PfX8iUF4r5Ju9RmnSz3VWqXSja1qDEnXS30xf+MTH7jsNxmuDZ65BoNDJFHb+k2
         M4Bbx9Z1Tvd90+aH/GgIVMLMKVgPKOAhJsVeVZ3n3/SuCqW0JW4RiDssvX6kNIp6Bfyq
         0Ocg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=m0lAyOHoGx1k4YzTje4D7KhG9i4zH9a+UIO21JynQkA=;
        b=xAbIIy3qJG5WiAI3jcHDap7GnSWl8m5HurPxREpJbDXVWBCfQpEv6RpeyH/RuIsPHH
         anVmLLhiTxeS8sqqD55w0wXyVOcef2GxF8DdwbWuj8XR0xvCVL5shLccLsllqpiP5xrq
         /9CDshBMCHSPEku/mFvxgmx5clExFWgRkyN1rSNTUZI33INLjcl/tarLZKN0dBLKFkXn
         4aNuxA7H8RPHhjwLS74EZc4Tw5r9MTPwnGJLpQHXDDrtlbqsxl6YPw93w4AXKHOkLGOA
         dA7Iy4BoWgfKLHKmmae0u+BFFDO3GsOAcsUYBq5xhYTS2rbcewO4qu47z1aUZy/4BYce
         uzSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=Og3DqPf6;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id m128si523764qke.3.2020.05.07.12.30.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 12:30:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:6547:66ee:1a90:d675] ([IPv6:2601:646:8600:3281:6547:66ee:1a90:d675])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 047JU6CB3526329
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 12:30:06 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 047JU6CB3526329
Date: Thu, 07 May 2020 12:29:59 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com> <CAMzpN2iCgr0rb=MCYPGMx8tcfLq2qdzv0h7YnX5hkzBB+O7JJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Brian Gerst <brgerst@gmail.com>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux@googlegroups.com
From: hpa@zytor.com
Message-ID: <4AC5875F-4CCD-44D0-9DF6-76A975EC480B@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=Og3DqPf6;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 7, 2020 6:32:24 AM PDT, Brian Gerst <brgerst@gmail.com> wrote:
>On Thu, May 7, 2020 at 3:02 AM <hpa@zytor.com> wrote:
>>
>> On May 6, 2020 11:18:09 PM PDT, Brian Gerst <brgerst@gmail.com>
>wrote:
>> >On Tue, May 5, 2020 at 1:47 PM Nick Desaulniers
>> ><ndesaulniers@google.com> wrote:
>> >>
>> >> From: Sedat Dilek <sedat.dilek@gmail.com>
>> >>
>> >> It turns out that if your config tickles __builtin_constant_p via
>> >> differences in choices to inline or not, this now produces invalid
>> >> assembly:
>> >>
>> >> $ cat foo.c
>> >> long a(long b, long c) {
>> >>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>> >>   return c;
>> >> }
>> >> $ gcc foo.c
>> >> foo.c: Assembler messages:
>> >> foo.c:2: Error: `%rax' not allowed with `orb'
>> >>
>> >> The "q" constraint only has meanting on -m32 otherwise is treated
>as
>> >> "r".
>> >>
>> >> This is easily reproducible via
>> >Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
>> >> or Clang+allyesconfig.
>> >>
>> >> Keep the masking operation to appease sparse (`make C=1`), add
>back
>> >the
>> >> cast in order to properly select the proper 8b register alias.
>> >>
>> >>  [Nick: reworded]
>> >>
>> >> Cc: stable@vger.kernel.org
>> >> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/961
>> >> Link:
>> >https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
>> >> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved
>cast")
>> >> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>> >> Reported-by: kernelci.org bot <bot@kernelci.org>
>> >> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
>> >> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
>> >> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>> >> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>> >> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> ---
>> >>  arch/x86/include/asm/bitops.h | 4 ++--
>> >>  1 file changed, 2 insertions(+), 2 deletions(-)
>> >>
>> >> diff --git a/arch/x86/include/asm/bitops.h
>> >b/arch/x86/include/asm/bitops.h
>> >> index b392571c1f1d..139122e5b25b 100644
>> >> --- a/arch/x86/include/asm/bitops.h
>> >> +++ b/arch/x86/include/asm/bitops.h
>> >> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long
>*addr)
>> >>         if (__builtin_constant_p(nr)) {
>> >>                 asm volatile(LOCK_PREFIX "orb %1,%0"
>> >>                         : CONST_MASK_ADDR(nr, addr)
>> >> -                       : "iq" (CONST_MASK(nr) & 0xff)
>> >> +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
>> >
>> >I think a better fix would be to make CONST_MASK() return a u8 value
>> >rather than have to cast on every use.
>> >
>> >Also I question the need for the "q" constraint.  It was added in
>> >commit 437a0a54 as a workaround for GCC 3.4.4.  Now that the minimum
>> >GCC version is 4.6, is this still necessary?
>> >
>> >--
>> >Brian Gerst
>>
>> Yes, "q" is needed on i386.
>
>I think the bug this worked around was that the compiler didn't detect
>that CONST_MASK(nr) was also constant and doesn't need to be put into
>a register.  The question is does that bug still exist on compiler
>versions we care about?
>
>--
>Brian Gerst

The compiler is free to do that, including for legit reasons (common subexpression elimination, especially.) So yes.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4AC5875F-4CCD-44D0-9DF6-76A975EC480B%40zytor.com.
