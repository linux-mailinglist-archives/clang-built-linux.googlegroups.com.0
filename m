Return-Path: <clang-built-linux+bncBC25XUMBOQIK3UGO6UCRUBAUI7NAC@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 427211C825B
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 08:18:23 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id c89sf4897379qva.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 23:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588832302; cv=pass;
        d=google.com; s=arc-20160816;
        b=09wE8sKwMK7VBoNtIRJawbwpZO2gUL9c8RWG+mswuM8ho4K+epxQ/MtzKzepTBmFDe
         8794inif+OZyvxMHuTcyk9zQ1BMwheCf4HuVT/OYCnMZ/dAfFngOfHBOi7z1RLZU6gEQ
         exm8oOkt9Uv5p/wBhUMrLlBF/4k/8ANZ5v/Q+Hrwv7NEBlM6yXhiE4IhYXQsRxn4l4ks
         Ua4dqg/+w2KOdfdZLzFJtgNZm0G5qMuocVj9IxhvFpyVGBJ7vxj8FAhEzWwG5svBYMAa
         OpplRoQJS9llGbDfnZpGl0G4YxZWVCPJX4K8a6j2GyYGhuZxFmwP+qffjoviozxdxeQb
         CiGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=uwmopWQsg39v7SwJjH5f/pdYMS7nzznDuvNeJBbHAjA=;
        b=rbcuznbKMVKb/LIkOTwsKXErskcNGXG9qgG8ZhjgpF11ZfKpkHskOIlLlKlWbOoLh0
         YTw7nt3suwH8hvUMQ4ZWmo+GrjI9mTjdQUoe34Xd2o3pQimuqqtvjw87sKfqX4BcUFx7
         MfAMi5KneV8jUKkADESDXW+GWb997sVgPAZknoEcit/x3FhuGfTFP+GTL+kPbIw5y0CQ
         LQR3Oi8etmDsdB/7i6JJyeJ8ezvEbt6sw0gZhQLr3BpmVDrIRuY3QUkqSay+OA3L22CP
         CvGhCnenavE/q1lWPk6bsL3L28SjdqfAnTYarCxNyQ+btUHkDl+eUDbyVxeemLJlx8Sb
         Z8+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcft2yzL;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwmopWQsg39v7SwJjH5f/pdYMS7nzznDuvNeJBbHAjA=;
        b=hKs1xp3O0EEkyXXELHPP4nQU0b/7WMCnVw8j02eW6U9hjnlqm3BKZKrN8Iitqvz86E
         CbPOQmlSm1IJPGVY7ppYhrSRBXIFXju3OGgmEmGdXoe4+o2WyN5kqLUkK3DH7ODT7vKN
         u14E761QE2/9ESDQ4OZSmAczskOVCyaZFk7JCiXAhyF6enGtkvMjMRummWdGBQ3ARZng
         CsGGEeybp69FH0lk5uMXSLZdzbLWnp7JU4k9sjTTsQQdL1xbLbLMgv1/F20qQ32MwfKF
         oebxhjZd4BsEJw8COs1pOFATfEwa1o354AfjRWFnPf6EuR9jIORTXYSZ3Oxm8byHxcm8
         UCUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwmopWQsg39v7SwJjH5f/pdYMS7nzznDuvNeJBbHAjA=;
        b=p4bZTtIe8LcMJ6d+xiNiiEES/acZoFl66o+6kYamxHgWNVFFIDxQA9r8BDrAtOfr7B
         2oB4zKQgb5MOV5hixfpSgxcSpI90WP8pN0GrPW0bXuOKFk566U5f4xrOE932eMtzV7E2
         t239ZFwaLGlgueLxqH9/9W+rClR8zmyvE3XVImbuc7U1uD5CYPctFEAmyAI3ymIqZ3pZ
         RPmbur6n0/5XM5iSim+Uj8T2MWf6U+mEflVa8U9dy3gtG13OAmBtq21z15O7N5e+r8g6
         aAZZ1fW6hX2TMrY4jULQxNduenS2ubTmseRwN//mUsl3z1K1uEWR0x9QYT/xeTj3NnjO
         ixpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwmopWQsg39v7SwJjH5f/pdYMS7nzznDuvNeJBbHAjA=;
        b=NCh9/C51g8F6d9qduCrvxMATAbyOT7y/F+wXPYuRAUN9PfFrFTzNAaMtu9Zq4AY7zl
         VGXM/qfwdS5nlwYQ9T1MXthLghkYBSaP6/eM51UjuJ2wOqUcDz/TAOSB1NwscJmAUI4o
         JHN7vcUu1Z1m4+fMB4BjhZigoVP93mh3V6LCAQrm5BQ6DSTlKgCURloVpxifIlVLeqiD
         088kKt/Q2BKHzLHxyO1xfKOLmbIyGiB3OHQuZC9GUAAvuDmlgfZeStruXNe9SfrcdAfI
         yPxoo0A5RmemfevwjtYgdiGQ6KYuLQx8/aJ/OBL+IVyOrAxShVum2C++PfTaD3gdA78k
         bh4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZkCHXO+T3dplIWgf6CzawV/tyQd6nlgynlkWct/PPujcTalOcS
	Byhuok2iqR6XYv8b+ajwKNg=
X-Google-Smtp-Source: APiQypIe/zH2KK3mFc6PtD2FmNDmtwg+GNVEM+H6TMY1OrANJcs+PGe0kTwWz1kxTkvSJEkFygTi+A==
X-Received: by 2002:ac8:6695:: with SMTP id d21mr12651570qtp.176.1588832301901;
        Wed, 06 May 2020 23:18:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fccc:: with SMTP id i12ls2509077qvq.3.gmail; Wed, 06 May
 2020 23:18:21 -0700 (PDT)
X-Received: by 2002:a0c:fd8c:: with SMTP id p12mr12092210qvr.163.1588832301599;
        Wed, 06 May 2020 23:18:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588832301; cv=none;
        d=google.com; s=arc-20160816;
        b=mFmUGrDpTojwWiNVoQ180od4l/V5rfdzrSB55PNNDnCMpYNN0XVl6ucd5W1graARJh
         ZlLO0uSj85KuQ2gTF9gjsk0o6u4ippOEpHmK+tKxZ2q/RGbppV/Uaxqo1AA7NH9xmtd4
         mRhGniNxiQlrvCgX0KADqfHdA/bZYYr4DPlsQBueHu+YVDLYWfH7iCmzueZhvPwdv+sk
         9SPsz4G2/UEtH7ngN14AJ9wi8bL6cHoxEjvWvUFglzNrzUrKPM12vfiiAGeUeAFs38tH
         OH1nFsIJCXTqGnK13I8KcHTcfqetCNW+ziw5oEE3LvIgmHhGE5C+O+E821wOChkTgDEg
         bhPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CbbcNQCWKC+HM8LWTSFFFe3Q9kOpsnt6b3jv45wzhig=;
        b=IezBFx9VbpxQ9V2OdimCkVK2XIc2Np4fnLPHU4+C/9L2vomtDMv2kVcATbqP8odGts
         q6YnULV5EbKvX14kHrEiQluRTqZd1suQoHzWwOrcnW5yRiBA6fxrgOOyD5bCQA0fjNlX
         T83Km+cOsAB22naZNaJrFgubwtacHjv5bDleqsPDlacBnnWZ6vB3vIehGM4pyQ53emad
         axQ4bCOAswUl5baH5IvPXlnpZYl5cdbdq7sP4X20ktkGqIBTAStL81XJq4BSZBvHWzTe
         0lMbMkCqrZttDb8ly2l4M4VJ1kmEDw5K7vWUgg0UvG0psDeepZ3D1+DUrVXSBQTbMnOP
         Ai0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcft2yzL;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id 2si237038qtp.1.2020.05.06.23.18.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 23:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id j8so4902178iog.13
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 23:18:21 -0700 (PDT)
X-Received: by 2002:a05:6602:1695:: with SMTP id s21mr12451651iow.40.1588832301009;
 Wed, 06 May 2020 23:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
In-Reply-To: <20200505174423.199985-1-ndesaulniers@google.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Thu, 7 May 2020 02:18:09 -0400
Message-ID: <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jcft2yzL;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d42 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 5, 2020 at 1:47 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> From: Sedat Dilek <sedat.dilek@gmail.com>
>
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, this now produces invalid
> assembly:
>
> $ cat foo.c
> long a(long b, long c) {
>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>   return c;
> }
> $ gcc foo.c
> foo.c: Assembler messages:
> foo.c:2: Error: `%rax' not allowed with `orb'
>
> The "q" constraint only has meanting on -m32 otherwise is treated as
> "r".
>
> This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> or Clang+allyesconfig.
>
> Keep the masking operation to appease sparse (`make C=1`), add back the
> cast in order to properly select the proper 8b register alias.
>
>  [Nick: reworded]
>
> Cc: stable@vger.kernel.org
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/x86/include/asm/bitops.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..139122e5b25b 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
>         if (__builtin_constant_p(nr)) {
>                 asm volatile(LOCK_PREFIX "orb %1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" (CONST_MASK(nr) & 0xff)
> +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))

I think a better fix would be to make CONST_MASK() return a u8 value
rather than have to cast on every use.

Also I question the need for the "q" constraint.  It was added in
commit 437a0a54 as a workaround for GCC 3.4.4.  Now that the minimum
GCC version is 4.6, is this still necessary?

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g%40mail.gmail.com.
