Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKPGU76QKGQEIUMEXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8872ACAC6
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 02:55:54 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id f4sf5954155ote.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 17:55:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604973354; cv=pass;
        d=google.com; s=arc-20160816;
        b=C3SbTWZm96+ROLrUfzZmV15A2KaTxQSxS3rd883L1dr+sow8F9Lo8nbURy/P0Spzq2
         r6JCT9yS3k/JegufUGvbNvVfqW+kyw363HJDrJ2lUqiBL7zQ4uIb4M5UYY5vA0j1SDWe
         OQp7nqVsSz9+WGY9DcoZonu5ygnPSAj7jA2XjGtyWQMPtUlth78JUVOeMNOqbA2wnjh1
         PRnTjfSjQWczIOYkhU5tEDWUl48DoqPKBO0HRdFChxVq21XIKcmtPJxuwhgg7wUOMjMD
         5meoxctLxwL/HTPQrmdDC3LYvRLzTAQBIk68t83gmQcQubDY4JhZlrFUwy6lXMn1xWnB
         w3uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ahG3eQ6rPs/taoiREkzqTJhnw4rQNu6OFp5MfZwpqtE=;
        b=MaYE6eygXw+HhT2h4H65hcP14xLKegDkXXY+Mv5HiYBUSgUpYN90Ns3HXH7oqtjT9W
         bLv93+GPTlveTSIhshfJnxdneBjY2bmlmnCmFhdDd8xxePGTjQNgMzIt1Rr7p0rOb9k7
         v6TguxgNunORv7VPKpngXexfHEq+ThY3zXJMuHDEYWhh/ogStnW3qpR7ZlpwcZNEGqRg
         rT3KAd2bTy+4TRl0a24wInPjCDYpQqVjKlM1ULNVnZFc9Ged/OHeRGVwWXjwejOEkrNW
         sUaskPnEuTOeoxdIuzI2ORG/LMgOTve917+cFoPdHG1BG/n7O2VNIm7/nNO1p3mmlhRc
         YQMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mJgpiuAk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahG3eQ6rPs/taoiREkzqTJhnw4rQNu6OFp5MfZwpqtE=;
        b=jhaDmoWxswC7/U6eJyts+3ikv05q+bAp/k/4pVcpVuIeHF94Jo8T6F4G5vHEONI892
         4NJ9uSmibmq8dRBAzMKbdqtCebrqNl/SFiJ8o4IjbrdRXRgiFzlNV4iXKZcgdn5nnbZb
         vlGFla6+PC4bl7GkBfAGWFPpNL8JVEM3LxmPAE8JT/j/ar0jUzmN/WIZFo3c9r+BEH4k
         9IMkxQzYv3Va5dhP69uWywNre9tM4DmKojVGC3CWbrSbB6+Ipnqh8b15rDZPUTzKo7eD
         BdlwVieu193aL45VW0KKaMUASQHyXkGwclcJV2VAsPauPmU3gVgUz0a8Pq9o3sQgiCPk
         BHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahG3eQ6rPs/taoiREkzqTJhnw4rQNu6OFp5MfZwpqtE=;
        b=U9H2s10CafJNxHMc/uGNDgzU4sylB/ovM8+E1FTCWJccnD6XG+uakfGXeTFTm2juvj
         9Yu/U1wflLBUZ29TWOOCsF5MqtSKz789b6xavCSxYwJBgQxSMOUuNbXj9Eq05TWhxEhN
         nGyTNcE5wHCKX8ZPjeXRB3cB8MfYZQVkOaNwwI4nmmVS0AD1JQlo4IF0LRb4gqylcQaw
         Ms2OMPRllSgHSgAjYa0qYqHY+L6BH9Z5cEvwAaJ8aEoPTnqAHOgtQYqW1QWaCjXdkvZE
         PPST9o2WrQo4auwIdWNf7Dj5PT3sNos1iZwQfK3QLaO/uzOV0RPqer65wDtVtV+sPlMt
         gt7g==
X-Gm-Message-State: AOAM532WIeSjUPy1XRiqKkXbrc4e5tI2BHrpg8crCaDoscxM2dT0RmpO
	5IUuWVuWjo292kxajYCjM6g=
X-Google-Smtp-Source: ABdhPJzGG47SAmr0+obcC/C9o8401hgFUGJ4SfOaeKrPDNXa6z5xFFb2NGXtieOx37q4INxCSuoHRw==
X-Received: by 2002:aca:5d43:: with SMTP id r64mr1404810oib.163.1604973353931;
        Mon, 09 Nov 2020 17:55:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls2637401oib.5.gmail; Mon, 09
 Nov 2020 17:55:53 -0800 (PST)
X-Received: by 2002:aca:7511:: with SMTP id q17mr1472005oic.65.1604973353423;
        Mon, 09 Nov 2020 17:55:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604973353; cv=none;
        d=google.com; s=arc-20160816;
        b=CaoRCh272/ClAz3fLbuO6lLw95iKBd41iQkrUWC+M+XuFJgsuDVkjNchSmhwd8pCMY
         R55LukHQZ+C/kbEtRagk5MlOV5dql5bJh1iuwppilUk5nitnnQUu2mSp3wsWNYXaAz7c
         jcO4MAI8zR4Ho04yOY+8wnKNtRDtNLcw6cYErq+VYuz/AvK3xiWQ/Nc1apVtJyx3G5jv
         ATk/51fjarqhRXmBm++ppkh9Y8LzbPR0tSop/dHnikXpK6h6B4d/2jYG3r+7amSBLyni
         utaQPTcv/TQ5KDfE7K+D4YlnIVcaXONPCmjFxmMsTN2ZIgE4PHOcOZIUtE5P4iYuwLvC
         jQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D1en5VjSPjbMPhawIIcRIlXt+Lt4izcOc7t6s2LqN7Q=;
        b=qM8baGp6oXndemZn3tNoFWDR1WyRiP0x9cSoZRjCFbK5evY9gRbCwYfEmCTk5SVDf2
         EakTuej/ipGSqrBjSfmpmxw7Ia/+doKRzEv8HuKBGWpJ8MMb2CIJlgHtMV9g4qzDAfLh
         eS7KnX7eak9NiYZ7t/pwiD4dGXLMgpMrjenOi1l0Kj5pbGrkFenuP7dPB45KzxAKKsBx
         v34fJJYHXCAuACNLygO346AohJXe3j35Zkk9DH2n3u5/8Cxf0RzXCS4SaM87X8jRGXMd
         AUaCdXb8BfSFDMGwHvS2/z6Qr/iUMp5L/VHdqsHwJG69A5P/P4D6vbj+EEkrUIZ1u+xy
         YBLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mJgpiuAk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f16si1080515otc.0.2020.11.09.17.55.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:55:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id g7so9954578pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 17:55:53 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr2331926pjj.101.1604973352482;
 Mon, 09 Nov 2020 17:55:52 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
In-Reply-To: <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 17:55:41 -0800
Message-ID: <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mJgpiuAk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Sat, Nov 7, 2020 at 12:29 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Sat, 7 Nov 2020 at 01:11, Jian Cai <jiancai@google.com> wrote:
> >
> > This patch replaces 6 IWMMXT instructions Clang's integrated assembler
> > does not support in iwmmxt.S using macros, while making sure GNU
> > assembler still emit the same instructions. This should be easier than
> > providing full IWMMXT support in Clang.
> >
> > "Intel Wireless MMX Technology - Developer Guide - August, 2002" should
> > be referenced for the encoding schemes of these extensions.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/975
> >
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > Signed-off-by: Jian Cai <jiancai@google.com>
>
> Please make sure you test this carefully on BE32, as the instruction
> byte order used by .inst is LE IIRC

Unless that was a recent-ish change in GAS, it looks like I get the
same disassembly/encodings before/after this patch for
CONFIG_BIG_ENDIAN with GNU as.

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71 defconfig
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71 menuconfig
<enable CPU_BIG_ENDIAN>
$ grep BIG_ENDIAN .config
CONFIG_CPU_BIG_ENDIAN=y
CONFIG_ARCH_SUPPORTS_BIG_ENDIAN=y
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71
arch/arm/kernel/iwmmxt.o
$ arm-linux-gnueabi-objdump -dr arch/arm/kernel/iwmmxt.o > gas_before.txt
$ b4 am https://lore.kernel.org/lkml/20201107001056.225807-1-jiancai@google.com/
-o - | git am
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make CC=clang -j71
arch/arm/kernel/iwmmxt.o
$ arm-linux-gnueabi-objdump -dr arch/arm/kernel/iwmmxt.o > gas_after.txt
$ diff -u gas_before.txt gas_after.txt
$ echo $?
0

(Orthogonal, it looks like llvm-objdump has issues decoding
elf32-bigarm that we'll need to fix.)

Either way the patch LGTM for IWMMXT, thanks Jian for the patch and
Ard for the suggestions.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DpHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ%3DNMSFLTG1xAg%40mail.gmail.com.
