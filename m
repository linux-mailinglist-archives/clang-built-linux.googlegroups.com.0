Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHXK76AQMGQEGWUHWOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E4732BA67
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 21:44:15 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id b62sf3512208wmc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 12:44:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614804255; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPK+sFaG+6Mjmr/KlK+6WeJWNK2OdDXhtcq89Prir1C232Un+wTghA1bOHFoJuby2C
         t3qmAxXiddHoOfygXwvL4ymYI6CrjAYPtL7ROkLOuK3F+bNPbElJE8l+RkI2PjMsv96I
         pyG/F/yYi0AJy0KZjJHnd02XvMqLMFM9m5R9xC+PrlK5U4ZuTK//bb752ZFu8uCrOphX
         7yPAn+/7brV89pvz/oQ1TUTyWQMzI6FWSqoppr9DHDDUw/WdeGiRCvmrZZHB+AO57J/M
         9pHZ8Zm5eIAcIhb1GWC0zapE81olcT96MMq7+CCq88nV5cn1eSCDol5XlRwdLoYxyu8E
         N8JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7YC/Fbj0YKyjIOL6ryRYKutMmycu0dZHp7aRYu7mr5s=;
        b=HC2PctKchLGf40UY6LjPqiHDU6q25zm0hH1uSbnE3qs/AAfqWgxSkbv8wT9qb1MtWy
         dlTC++mZK8oqyDJm13QOE8tOpUxLP6UgGSt9aMc+6tOXGXmbsG2cUegKkO0b5FG9PTNq
         D+999IN9cIRoc7/Od9JNRXrsNldRS1QNt1R6854RN4oOhhiRr5kgv0bNTuabGidCB7PS
         GQksm2ntLBzcHyFEymsGYnzyg5rm+q5nAA3/QF5679pmzVCDuUfrMiwtRgXPal48gO2z
         sYdmMKR7rMiXl4gkwKt5NafNwbARMX5IAuJ5diarqJROVprfsUT5Lk77HXsqh0kYRRWV
         vppw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h2CSSdDL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YC/Fbj0YKyjIOL6ryRYKutMmycu0dZHp7aRYu7mr5s=;
        b=fyNFCCIxbsIymTnnvyjRRg9RIeJignVKVX1xbPk1tsITrIaVFYf6QAhEkRRcLvLu0b
         jvIn/9Zw9ss+OJXzMxfAn6e96I5veh7QmpsixClHudco3BETeyL2SvMp5LOdsax2+NSh
         KywW+r6yhrkPLEfYspSkhbjBVSsZq7zuAgIzoU7Z5fSAZUW2i8fksTlEoI7n7xUviwBW
         nl2WknRIvLn+CB6lvzKPk47dqMczjYWd8WwhHwsiqOqu3+Fifd6Y8BtGh6RxgEj2k8jf
         saxagGeB9iWgE/MomCZX/42hDbXoi9IKsGUEoSkVRHbEmSCjPkkQhsAAxgK9Ymkhf8No
         d+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YC/Fbj0YKyjIOL6ryRYKutMmycu0dZHp7aRYu7mr5s=;
        b=hWq2RIbKZu3/2VlsAA+2+PsWAVSKZoXaCHrAUNDD15jWRZj7wPkhvlCeNB2Ub3sG17
         ClLq94smx8Hh+oQ7lwDEV+Gt5BEFJsZ/w/fgZN+SgoW9Hn3v0cXhxa154uKtgnjV9ihY
         r82xHywJbNl/FePBnuEGVBH/rR9lU9edWu0/BSEGOOJEM9qppE4bfH4GGiJMhzoO1Er5
         zJ01jS5IExkfhOiVfPwJttc/FNYkCtmQef5UebOD3WrJhOj5U4dY/rwmK54OoWN5ymYr
         460tpLpsj2+flKQIIYxUvrJuLK/WA9QDOylnnROxoi6L+a3/964vtDxW0h7lX5bBzJiX
         YuCA==
X-Gm-Message-State: AOAM5335YOZCHSTyFuOJZth03yYz0mylWwmcWyrFX/0TJVNkDRq4vWHI
	bjNVLsF3QY8pu47khXyh0wM=
X-Google-Smtp-Source: ABdhPJyBbocTWqPvs39zMExEXgaZ68jl/7jBauJOmhB8W3TAmhWSU6bVFNLxLoMKt3Ht3s25Pu7fkg==
X-Received: by 2002:adf:e74a:: with SMTP id c10mr450849wrn.409.1614804255059;
        Wed, 03 Mar 2021 12:44:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2e44:: with SMTP id u65ls1692682wmu.2.canary-gmail; Wed,
 03 Mar 2021 12:44:14 -0800 (PST)
X-Received: by 2002:a1c:4d09:: with SMTP id o9mr672084wmh.15.1614804254237;
        Wed, 03 Mar 2021 12:44:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614804254; cv=none;
        d=google.com; s=arc-20160816;
        b=wKtaESHlNSI9HmL7cMDtQnjsM4nj5hMIh4kfsjkmsMLmFP8/Pmb3Oa3M7EJHSGX5sy
         nJVOmgsZXy9/ngwcLxLM6Q3gSr+AobkCYFlLOgkMiQcreymhUju+50sw4Eat1wmnmsBX
         OUmEz+JxpUnmmnS1BMagYou46ATwgY7q1UxT1W/jvLKjDAeXti8CzxcG7PIMwbsI1HMP
         t7k12b6UuX0KYwmwwR0P05sGMSittXYYzuW/LX87eh/vXkxE5fr2RXp91waKQdmFjRAu
         G8PMglHYE8m7MUgMiQzhm92hSU52V7xWm19n84eKRIzCQxesDxsxwCwKYcFEjdltVuBS
         jV1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cl+ctiF8TwpQDZm2mYgW/hPoAO7x78R4uvY/MJaEkFA=;
        b=qamfJqSkMxfs3uU1lwdcolVKZVrGaKQgDLRfDzzuBqYL3L4bGDWXxtEDrMNU6K7KVz
         FHQYZ1dDwUdln92OoAXqKJct/PkSj3oTqnspWI0H7lziPhlXJ898zFJcQTR/t3VyWgdr
         Ol8aKtpzJ0AhONMTmF5j5BQHMqWlcUhMFQubwjysLrTC1PJ2szYslZkqBepcQEhuHfYJ
         rbgQ7bR8/AvW5yIQfyZHzJv+XWB+Q9L/IDacgalF/HcNA2dIo72EyJ/Mi4IptRoju8xS
         5Go7hAjYTqYaKUXhchC6QGxNGvlR2W7QQHQ45lK4NoL4vYwsANBnSVeEDWZPcbt9GQsn
         iSHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h2CSSdDL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id g17si326806wmq.1.2021.03.03.12.44.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 12:44:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id y12so17556024ljj.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 12:44:14 -0800 (PST)
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr434582ljc.0.1614804253733;
 Wed, 03 Mar 2021 12:44:13 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <20210303183333.46543-4-masahiroy@kernel.org>
In-Reply-To: <20210303183333.46543-4-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Mar 2021 12:44:02 -0800
Message-ID: <CAKwvOdmNKKpZY38=ayM3NfU5K_27P_CqkKtLx7CbRw6_mFuxPA@mail.gmail.com>
Subject: Re: [PATCH 4/4] kbuild: dwarf: use AS_VERSION instead of test_dwarf5_support.sh
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h2CSSdDL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The test code in scripts/test_dwarf5_support.sh is somewhat difficult
> to understand, but after all, we want to check binutils >= 2.35.2
>
> From the former discussion, the requrement for generating DRAWF v5 from

^typos: s/requrement/requirement, s/DRAWF/DWARF

(in vim you can `:set spell` (`:set nospell` to disable), there's
probably a nice way to auto set this on buffer entry for a commit
message)

> C code is as follows:
>
>  - gcc + binutils as     -> requires gcc 5.0+ (but 7.0+ for full support)
>  - clang + binutils as   -> requires binutils 2.35.2+
>  - clang + integrated as -> OK

Yes. Thanks for the patch.

>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  lib/Kconfig.debug              | 3 +--
>  scripts/test_dwarf5_support.sh | 8 --------
>  2 files changed, 1 insertion(+), 10 deletions(-)
>  delete mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 2779c29d9981..f3337a38925d 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
>
>  config DEBUG_INFO_DWARF5
>         bool "Generate DWARF Version 5 debuginfo"
> -       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> -       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && AS_IS_GNU && AS_VERSION >= 23502) || (CC_IS_CLANG && AS_IS_LLVM)

Would this be more concise as:
+       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && (AS_IS_LLVM
|| (AS_IS_GNU && AS_VERSION >= 23502))

>         depends on !DEBUG_INFO_BTF
>         help
>           Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> deleted file mode 100755
> index c46e2456b47a..000000000000
> --- a/scripts/test_dwarf5_support.sh
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -
> -# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> -# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> -# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> -echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> -  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNKKpZY38%3DayM3NfU5K_27P_CqkKtLx7CbRw6_mFuxPA%40mail.gmail.com.
