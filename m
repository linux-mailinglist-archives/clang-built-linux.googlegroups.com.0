Return-Path: <clang-built-linux+bncBAABBQ7X6L7QKGQEDZNXSWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 574F92F2133
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:57:40 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id n10sf190214ljj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:57:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610398660; cv=pass;
        d=google.com; s=arc-20160816;
        b=c827FNv5gQyNakZkoxayC1QT7Dohw8Li2ZEr5T+/kMW8h3q66oMOUAL+kdm5IejlSZ
         leZNxTP9HZBzMHDbXE+JOGhypYF+G8iUt1Ti+BN4Ana1jo4C32oMDa4VT9hRPMPUmVCQ
         TeVTf7k7wZUKnshIVzQWk63GGk7yPCtjlzLjReUGUZ9Kk9TdN2GMtdeWJ+PyXn9/WUd+
         ToxPVAvOWz84WRTf3OgkEMqYZFB+qAWqcks/N8dy6W6eCOxVsS1y3rmX3oOG+gQEI+5t
         FnWPPguHZxMT6xlsuHHVo3FBQiKL+8lZyKAim957vMa7GJVIhSzMyhswEp3aYiCdeWO1
         +g7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=vqn7baC8Jr8pacgL7kOWYi9sjDbTENSs/mc0oUY22xQ=;
        b=UoRV7HlHIgL2Wa4mH9/GXjwrFtKPqP71J1s228cvysVz5BE0axX/Hih5jj1zw3B/ky
         JIcqrwk36az8JXWObSitkFfHbOpuSYeyxLbJS2wcSnzLBCya3OfLza0an0SWnslKz7pl
         t3YgMyj8aLd6dKHHlYfM7id0Jpiv98af7Q/B7Ye8ZBE3o8jTKpxyvHdkcALlj0HvhV1M
         1O+2JwqAOrumdVDH4AtYg0R2sbUWp9pNGf4/2/bkf8zGu5oKXNA6sBJjjcjP/lVJzfF/
         D0qghVURV8RwIc2bOk0oTKNlMXx21VOboCQooWvSjMpqvPkuja/2CC23+7D6H7UAjm5l
         x8yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=dKDO7F+t;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vqn7baC8Jr8pacgL7kOWYi9sjDbTENSs/mc0oUY22xQ=;
        b=flFf43D/Of8dvEGipVtg1ZWAyJcVqy9Q7q7hrzGHZZfuoRjOEDBRQBZYWsQEWpYr4N
         btqVAJ0x5SGImLXri4fvfStHHx2agq1ZNqrKF8YcboWzvFLk5rEC+m03XQ2pSPPKWJF5
         rPlKO1ZQWGPABShbPJVarEXHtoNsZDzkSB7Mx9Fanmrk6EAL8dlkF6Q4HHjOAUURDHHG
         j9I2s292km6K8t0IdmJ+16LvIoeljNOPurkom8oHTf9OPiAHB9WLS683N+OLNR2sX1p0
         bhaKyYejXAoUANlRncrBFk7HIjtO4YfuqM3jtFLjLFU9+RMAS4g5ZM7EJvYREQ844OjB
         JY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vqn7baC8Jr8pacgL7kOWYi9sjDbTENSs/mc0oUY22xQ=;
        b=HXiypfrppbhtFVtwLTrkbELMtWdHFBdpbi2Bue0PXnp7GF8aGm6doLlffW7/BbQLzz
         QY/eEGbhjxX5H34LjhUWbcWpUW9V8/NZtXxGxj1L1BFaI1D0V2qRJEZzkLiejEGxKNto
         QP2e4mYPr9J3e+16fybNrejSCe8iFBHnfTSMborgmFBiXtnnIoEXDMEMV3dDWEJ5JJp6
         S9DBcw+xmOfa3POjhHe15d5ojSrTIsWrowgLRlM1n/+dhfRrYeLFHu3bkAVdHMOORg/a
         X1iW7mGtqdO3sD3dBGx67Gl4mQQsw0Smjr1OIdD4AWLpOYDfA9vncEchmtF2WXSsx6t0
         CiDQ==
X-Gm-Message-State: AOAM530AOnYOyPCSeQL/8mxjB1zb8670YqCN13hRgS79O7f7n9eXTCns
	p+zn53QoWscnWlKG7JPUCNs=
X-Google-Smtp-Source: ABdhPJyayOtseMj9h1T4cDeqD2aIVZ/VHKVCQ+bnZybsGfwS061eTXVwi3OS7bJPBGd6Bo31VTos4g==
X-Received: by 2002:a05:6512:3253:: with SMTP id c19mr569886lfr.631.1610398659908;
        Mon, 11 Jan 2021 12:57:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls156661ljg.11.gmail; Mon, 11 Jan
 2021 12:57:39 -0800 (PST)
X-Received: by 2002:a05:651c:1356:: with SMTP id j22mr557985ljb.237.1610398659105;
        Mon, 11 Jan 2021 12:57:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610398659; cv=none;
        d=google.com; s=arc-20160816;
        b=EO7V+M4ybVAfeSsKRW9dqyA4TGxV7gYH1fkueURYEpP5rD4JaEtKclK2/SrnYPCedD
         FrNEdfB5P9u1BC/sioGM/yKnLNcWS7vdLD3pN4Os9pRls/aPx68Jp5pCasfHN41c6FBh
         Hf5SSHSvkTONxoNxYzlWcEVgf9QhQ8riPcv0tTjbdTpXJ3WuP3MWazZg9nUT8sCtV/6g
         LvMKcjNuXx5zaFzTzOr2usYB3MHeJyH88zzv5687QFEQGuObCOu9ziw66+Y8fNMtPIsC
         EZ9kPA10k9Ots9oK0wJKjmvW2NAOvqrve3CN7r00QIuYgz5aahLZT36mp9GQD7S1d38C
         AkuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=423czqlXYO6cyt2pvAdEvcmUk4C4FxO/GExpCv7aBhM=;
        b=FnUU/LTLXKzn5P2baLrLnie3OL1Dqsty+mpIS3b9sjIgZ5kIH9scMt+4ewUYefJZj5
         S8TcmwwJ8Sg2vBsA72UZ2DD8lOpDgZ1dtYiquwy2aTRw5B+9kq//35RAAkGcc2zSFBi4
         91DtAJSdGNV5mtasE2YOGLq2OyTSYz/3KPRErM1hQJg8tAHpH2KWjmVw+ggA/MeS3Fpo
         +mXsvN+QK5QOMbl82mEkcohj2ShBhvh8GKaYcG6LfDcxrFYbZzsU3imTVEd9QNZlHJjR
         gDq+fl/D4Q2w1bkD7ealKmOj/aXsekgOPUw1cwdXgoAoUP//JjfKOeTRRq0ACkUbh0JZ
         IZjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=dKDO7F+t;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id 70si28788lfo.4.2021.01.11.12.57.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:57:39 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Mon, 11 Jan 2021 20:57:25 +0000
To: Kees Cook <keescook@chromium.org>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Fangrui Song <maskray@google.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210111205649.18263-1-alobakin@pm.me>
In-Reply-To: <202101111153.AE5123B6@keescook>
References: <20210110115245.30762-1-alobakin@pm.me> <202101111153.AE5123B6@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=dKDO7F+t;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Kees Cook <keescook@chromium.org>
Date: Mon, 11 Jan 2021 11:53:39 -0800

> On Sun, Jan 10, 2021 at 11:53:50AM +0000, Alexander Lobakin wrote:
>> This series hunts the problems discovered after manual enabling of
>> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>>    placement (marked for stable);
>>  - stops blind catching of orphan text sections with .text.*
>>    directive;
>>  - properly stops .eh_frame section generation.
>>
>> Compile and runtime tested on MIPS32R2 CPS board with no issues
>> using two different toolkits:
>>  - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
>>  - LLVM stack: 11.0.0 and from latest Git snapshot.
>>
>> Since v4 [3]:
>>  - new: drop redundant .text.cps-vec creation and blind inclusion
>>    of orphan text sections via .text.* directive in vmlinux.lds.S;
>>  - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
>>    empty on certain machines and compilers (Thomas);
>>  - align GOT table like it's done for ARM64;
>>  - new: catch UBSAN's "unnamed data" sections in generic definitions
>>    when building with LD_DEAD_CODE_DATA_ELIMINATION;
>>  - collect Reviewed-bys (Kees, Nathan).
>
> Looks good; which tree will this land through?

linux-mips/mips-next I guess, since 7 of 9 patches are related only
to this architecture.
This might need Arnd's Acked-bys or Reviewed-by for the two that
refer include/asm-generic, let's see what Thomas think.

> -Kees
>
>>
>> Since v3 [2]:
>>  - fix the third patch as GNU stack emits .rel.dyn into VDSO for
>>    some reason if .cfi_sections is specified.
>>
>> Since v2 [1]:
>>  - stop discarding .eh_frame and just prevent it from generating
>>    (Kees);
>>  - drop redundant sections assertions (Fangrui);
>>  - place GOT table in .text instead of asserting as it's not empty
>>    when building with LLVM (Nathan);
>>  - catch compound literals in generic definitions when building with
>>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>>  - collect two Reviewed-bys (Kees).
>>
>> Since v1 [0]:
>>  - catch .got entries too as LLD may produce it (Nathan);
>>  - check for unwanted sections to be zero-sized instead of
>>    discarding (Fangrui).
>>
>> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
>> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
>> [2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
>> [3] https://lore.kernel.org/linux-mips/20210107123331.354075-1-alobakin@pm.me
>>
>> Alexander Lobakin (9):
>>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>>   MIPS: CPS: don't create redundant .text.cps-vec section
>>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>>   MIPS: properly stop .eh_frame generation
>>   MIPS: vmlinux.lds.S: explicitly catch .rel.dyn symbols
>>   MIPS: vmlinux.lds.S: explicitly declare .got table
>>   vmlinux.lds.h: catch compound literals into data and BSS
>>   vmlinux.lds.h: catch UBSAN's "unnamed data" into data
>>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
>>
>>  arch/mips/Kconfig                 |  1 +
>>  arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
>>  arch/mips/kernel/cps-vec.S        |  1 -
>>  arch/mips/kernel/vmlinux.lds.S    | 11 +++++++++--
>>  include/asm-generic/vmlinux.lds.h |  6 +++---
>>  5 files changed, 31 insertions(+), 6 deletions(-)
>>
>> --
>> 2.30.0
>>
>>
>
> --
> Kees Cook

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111205649.18263-1-alobakin%40pm.me.
