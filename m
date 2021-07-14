Return-Path: <clang-built-linux+bncBD763O5S5UARBQUAXKDQMGQE2YEF2YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 562623C7E63
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 08:12:19 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id m4-20020adffa040000b02901404c442853sf920156wrr.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 23:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626243139; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4pkSM+wKFElPi855BXmwEAo11szoOrDePH9nSyCNQznm1lEUBe8Cl8Umt5MVrwkYY
         ZUx7eHXeq828ybnvELtkIZBswNAAVcYlWTvotdFOnU343b+iE7x07e+FkqLk/EbS3M9b
         0IJsQVLA9SABfYbURSjOg4WlegqylPRVoVAdjNs1tm7G31kLZ8cINTTVHx6p4goa3ll1
         6RfiBYkEKeJaULkgimZRcaYox4H6/E+9tRLZIJO8pGtDMwRRmp6T4ok0FKSArElEgnP8
         DZcLeKUAEC++yFkHgfawO6cK2Uaf7YBDnzb2+Ts5CNNIHoSGDeH4XLIo8qEpypvSbnOU
         pshQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=wUJzokrsqiEWzdET5hk9/2yi1NXRvpjRNN3bmvHpF48=;
        b=FVHtRV+XdHNoFMkFzhIYSXAD0J6MNMxB9N8QRZuFyQ8fYgKdTMQ2rHX8Gv5EQF35Eu
         4GKu2zEmbB2sEkj6Zpgq7z0WkVjHt9oDpF55SwTtVwCMkm2E9bR39Jg6e0hwo150NyJy
         p2mQffAet3fZnUTVPC0nAO/ER/UqYy2r97nQn/pk3HEzcIeOtTqJhEaxhgSWzJZpHHC4
         EE8MGqWDGu68GUY+9R+7F0g/WiRO2gqxrFO6d9gW/RMJ0utmvhKekKkoqOylv4afh323
         G3FZF4NlkyRCnAJqgTMNTCWo9biO2r/bHuoimJmQ3EQrJfX4n9cQWb/AKXshpF+h3AkK
         +chA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=RLhs3LZR;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=nh0LhA2S;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wUJzokrsqiEWzdET5hk9/2yi1NXRvpjRNN3bmvHpF48=;
        b=LCJUMPC8hpsjsUQlgK1BBagmZIaY3h23ClkhGnSfJe2vYlJQdLR4P89/0PzEGgYy6h
         Wfac25j/Rd7pGFhLRX4VAbKzdykpr4kQPJpcoZVMq+c88R4LACyXy4Ow9iEDwdXZtG0i
         HwUScLVSFqMm3U6xhYwxR86xB5c0ftJ3ohIE+R81pao2F7FJzCYLMDo/PrMGRE6akOxn
         Ryr6o+QRFFm4boMx6to4mBWQl5rAyIQqgMNLCxk2Wwnijt5X0aHKkDUG9SorCmwxOIer
         MEbG67AEJ4g1degPAmky8W8X+/vaZYw3RuSz3SryzxrUMEnpLYh7YbH5FRCSMbeNlb9Y
         eERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wUJzokrsqiEWzdET5hk9/2yi1NXRvpjRNN3bmvHpF48=;
        b=PUGTyE8aJXG67R2m9XYx5RFoSIB9j/wScx0F7oMDbarnAtyGkbVGXVZQoUUk8qFOKE
         uNYi1t8b7UmgfbtzkQKLIT9yPzMxS0DpmCl8re+igpTDL8Nx2+V+HjvEEgmIXt/rnc+V
         GBgSqsc6niBJ6afqE2SInoZrk0nvG+7tzFlJPlx1Yd/+6oXHls4VZYCjsB1qZDVPTGOd
         jZWe44grM5ZgSPfLZURXlqnba+B891DqA0qQFkmQa5GQGfRzrr+Zk2calQSsVZrPswPf
         nsPUTn6Jmh9Rk0yztHmVFjFvyMVjlqyzhy6R9UlWSnmAhGoRxG/U7XI18lgNGVe38pFe
         ihSA==
X-Gm-Message-State: AOAM530aLHVBAkMVmWyVLAMevZgOHWCpOzT1WwJxRhq6GaRoEqKy9vLF
	QHLc6xFgS5O9J9mqRQqo96I=
X-Google-Smtp-Source: ABdhPJyiiBOxDfqz489/z2wazOBn/A33QpIflFBomR5Q2ItwDVIvR2BDJrI00fPw1QY2Z4KuiWsc5Q==
X-Received: by 2002:adf:a351:: with SMTP id d17mr10890805wrb.364.1626243139076;
        Tue, 13 Jul 2021 23:12:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1554:: with SMTP id f20ls715689wmg.0.gmail; Tue, 13
 Jul 2021 23:12:18 -0700 (PDT)
X-Received: by 2002:a7b:c00a:: with SMTP id c10mr2172786wmb.100.1626243138154;
        Tue, 13 Jul 2021 23:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626243138; cv=none;
        d=google.com; s=arc-20160816;
        b=CU2+ePLtqTSE1T7l6JcKvcOxr0pWe2H+oOVDXqJBH3kvTXummYX5qRsc4b5SFxth1j
         7oKtPjyIsh0CyptkTgnt3XrE5XP8hJEYYWEsO3dMyXmopBBYpSlKTcoi96UcontzEg/0
         axeeZFOM121oX1R6ycy7Y4Wdi7hUdhkJr01Ti33J9lon+99X4mrQgVlaFAuj0yvdfzn2
         gWBLv88LqqPamHd3g15baWhY3vh/hK3JOf+un2pRM6ym9b5jVy5l7gO9mmcEzpP+Syi2
         hDoQ696zSXlXvzCMLHaYQkxuMfr02BK/MSWaSkkGInkQWRTibTGB1UNrgvblwZZP8pFm
         rN0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=u8TFJMgWKOmcO+28hmJrz0iPOxBa0A3O0wrqY6cmBhI=;
        b=X6zC7mhACTOlI58SSMd6VzN8Ax8vCwws2u2tpSRgY4LCRrs0weNFT48u/IL9YfjRDT
         jnJ6zn3IKr9CjU7V1i05hbKTtWg8TmxuOx1OSFNhHWTYVrZS9userKMoYqwu4bycMiDB
         VIWHQcUMtsM9kjHEvRRnoiXMjdLUTKyKaII7mJyU95CO8bkeH/nr++w8yCLHXPFT26AG
         4v01D/ZATA4E9RyW38vk+NSlC9zEqzaf+qbNaF6lfRpdfYQGtdvgKcb0xi6THwihd+ab
         sas6OQJNiT0X52jzt0stnRb3TbUHZc0Av5V7051OK1dG9517H/y0FM0M+EPS4BDZC07+
         MqfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=RLhs3LZR;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=nh0LhA2S;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org. [80.241.56.161])
        by gmr-mx.google.com with ESMTPS id z14si46971wrs.0.2021.07.13.23.12.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 23:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) client-ip=80.241.56.161;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4GPnGT6q6QzQk3d;
	Wed, 14 Jul 2021 08:12:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de [80.241.56.116]) (amavisd-new, port 10030)
	with ESMTP id 2bGwqixyoJ1K; Wed, 14 Jul 2021 08:12:14 +0200 (CEST)
Subject: Re: [PATCH v2 1/1] Kbuild, clang: add option for choosing a ThinLTO
 cache directory
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <a6eea2c4-6d90-3ddf-33d6-973d1ae917e7@mailbox.org>
 <CAK7LNAT9oMkSthmCJ9sq3PFRcYgZoC6O0o==WQnKOU0znzT6hQ@mail.gmail.com>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <bef18150-3f34-9739-5532-3a3533574fa4@mailbox.org>
Date: Wed, 14 Jul 2021 06:12:07 +0000
MIME-Version: 1.0
In-Reply-To: <CAK7LNAT9oMkSthmCJ9sq3PFRcYgZoC6O0o==WQnKOU0znzT6hQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.54 / 15.00 / 15.00
X-Rspamd-Queue-Id: ABB921847
X-Rspamd-UID: 981490
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=RLhs3LZR;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=nh0LhA2S;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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



On 14.07.21 02:46, Masahiro Yamada wrote:
> On Wed, Jul 14, 2021 at 1:41 AM Tor Vic <torvic9@mailbox.org> wrote:
>>
>> On some distros and configurations, it might be useful to allow for
>> specifying a directory where Clang stores its ThinLTO cache.
>>
>> More specifically, when building the VirtualBox extramodules on Arch with
>> its proper 'makepkg' build system and DKMS, against an already installed
>> ThinLTO kernel, the build fails because it tries to create the ThinLTO
>> cache in a directory that is not user-writable.
> 
> 
> Again, I do not understand.

Example:
1. build and install a kernel+headers with Arch's own makepkg/pacman tools.
2. at the end of the install, dkms is automatically called to rebuild
any out-of-tree modules like e.g. VirtualBox.
3. dkms fails because it tries to store the thinlto cache in a
directory that it not user-writable (very possibly in the installed
kernel headers directory under /usr/lib).
4. By explicitly selecting a place for the cache, e.g. /tmp, the dkms
module rebuild succeeds.

> 
> Is this fixing the root cause?

If only I knew. I have very limited skills, and no IT or coding
background. It's possible that this can be fixed also on dkms but
I'm not sure.
Currently, dkms does not do a compiler check (it only seems to know
gcc) and it will fail unless explicitly told to use clang. e.g.
by specifying 'CC=clang LD=ld.lld" etc.
This has been reported to them.

> 
> To me, it looks like
> "Anyway, this worked for me" patch.

At least one other person reported success by moving the cache to
another place (see link).
Admittedly, it looks the same way to me, I just wanted to get things
to work and it's likely that there are better solutions to this
problem, but AFAIR no one came forward.

> 
> Besides, 'make clean' will never clean up the
> cache directory.

I can have a look at it again.

> 
> 
> 
> 
> 
>> A similar problem has been reported with openSUSE's OBS build system.
>>
>> Add a Kconfig option that allows users to choose a directory in which
>> Clang's ThinLTO can store its cache.
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1104
>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>> ---
>> Changes from v1 to v2: remove unneeded changes in scripts/Makefile
>>
>>  Makefile     |  5 +++--
>>  arch/Kconfig | 10 ++++++++++
>>  2 files changed, 13 insertions(+), 2 deletions(-)
>>
>> diff --git a/Makefile b/Makefile
>> index c3f9bd191b89..472bc8bfff03 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -932,7 +932,8 @@ endif
>>  ifdef CONFIG_LTO_CLANG
>>  ifdef CONFIG_LTO_CLANG_THIN
>>  CC_FLAGS_LTO   := -flto=thin -fsplit-lto-unit
>> -KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
>> +export thinlto-dir = $(if
>> $(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
>> +KBUILD_LDFLAGS +=
>> --thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
>>  else
>>  CC_FLAGS_LTO   := -flto
>>  endif
>> @@ -1728,7 +1729,7 @@ PHONY += compile_commands.json
>>
>>  clean-dirs := $(KBUILD_EXTMOD)
>>  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
>> $(KBUILD_EXTMOD)/modules.nsdeps \
>> -       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
>> +       $(KBUILD_EXTMOD)/compile_commands.json
>> $(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache
>>
>>  PHONY += help
>>  help:
>> diff --git a/arch/Kconfig b/arch/Kconfig
>> index 129df498a8e1..19e4d140e12a 100644
>> --- a/arch/Kconfig
>> +++ b/arch/Kconfig
>> @@ -696,6 +696,16 @@ config LTO_CLANG_THIN
>>             https://clang.llvm.org/docs/ThinLTO.html
>>
>>           If unsure, say Y.
>> +
>> +config LTO_CLANG_THIN_CACHEDIR
>> +       string "Clang ThinLTO cache directory"
>> +       depends on LTO_CLANG_THIN
>> +       default ""
>> +       help
>> +         This option allows users to choose a directory that stores
>> +         Clang's ThinLTO cache.
>> +         Leave empty for default.
>> +
>>  endchoice
>>
>>  config ARCH_SUPPORTS_CFI_CLANG
>> --
>> 2.32.0
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bef18150-3f34-9739-5532-3a3533574fa4%40mailbox.org.
