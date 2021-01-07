Return-Path: <clang-built-linux+bncBAABBVH53P7QKGQEYODWC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 634992ECFA3
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 13:30:13 +0100 (CET)
Received: by mail-ej1-x638.google.com with SMTP id y14sf2354560ejf.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 04:30:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610022613; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnJzWfU5pYzWNcA9CRCnnYdOKA751BICoD/UzERJDvOiw0B88YwDydJgplyPkNzUy5
         xsZA+/sxApk6pBR5yCMJeR9uSlx1g73mirw+x52UFRxNhHSD/jRJzek61980OvzXXrmd
         E/zqOvuVytRBcidplX+ejwZNLFbb5CL6c5LcyuGp3Djg7AbtJ9A8az42J+xPnd5CYDpN
         wp8zIMiycDqVEz6DYtMq9XKEMJxS+yXNYalDBKY4jhbmYKAsY28u11zXY8K1omOsNMJz
         WYc2C+zbQeSnzkf0HqJJVpfDFQvnuLG8zJjoqp0xcJJvhvQ2pNWzN4fKNFD7drPKd+1n
         +EPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=TGj7OLxpX6XXBQY/6OtnSfis65D4nFVSxpwxjBBhWaQ=;
        b=FCP1szhUBLZfl8kJPCqd1tiMiRzQvm1P2OwaLjbkBdkezQGEJczk4m1SPN37//XlXJ
         1BxOp5FnI5L9eHmGOKlVuGU6p/EbOLAd4cau3MOciczXQbWh8yJ0PBrLvEgnJ5b1H7jH
         Goka0omrEc9hJzN314BMH+Wj68MelHZEMQqT9LkEzvdTTzTbqyifleLVkodR32VdDTJ2
         I9I62OckodSxUPTvkEnAZM8c53KK3e6gNejfg5YfZPznkTYGoA9mNtbMzbTTHeOp+3it
         2IJGJjMJhmBlLApiJ5l8LcQ9bxe/FPXDqMiooKg4OrX/0A1sB4+jKwQY7f/3vrpXOy4q
         HNXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=XCLeYds6;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGj7OLxpX6XXBQY/6OtnSfis65D4nFVSxpwxjBBhWaQ=;
        b=jyvtRwVnAjyr5JtHegJAV8v3Uqwl5OfbpjueGW/0WP73OOMbUFCw1F666S1EA1AeE8
         U39rqjErq7aDLsg52w2du3anjqx05lOB9jHr1UwSae40KsMaxBVaDpiMPUhuha1SfngF
         X9CiQdDo8DftIc7dzy+5yUnSa11hl9kmGYHToYcNvz8BVyb595CBrCh5e2YiV435Eouh
         5ur56DsGHLwMxPOHATOIKwO30UST50o2ClZh8HrvJfvu0uzHtojwobAzHMfRtNGxgZr9
         iqxfPQ0EIBkCYGyjhEjRKGTl5h6njmJr1tXpCdHQE+DPu8x6TlIZ/dmtI/8yrj2YTTgM
         aTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TGj7OLxpX6XXBQY/6OtnSfis65D4nFVSxpwxjBBhWaQ=;
        b=dNu4prNLDrlfzJkWvktnXAIwsjGtX6pjaDppPgNrHc+BOCI1PJH4CNnszi7sjXPnpk
         16xr4g2foqXIWACnn1feZtja4WakR/uXhbR7JZRBWjWHLK/utX2OTa96TLW6BAYs6c3q
         zOtpcoJQ7jbpJ8n8u3UrzRvxX0sX/SqsX3LLDAfVhLtl2ja4LflFMxL8B3/E8vY1SJqN
         QKp8bfR9D1a5Zp2HHwsX1j5HLPDE8I0rcoOkfy1YExIwZ2cQ1KWGj20RWpoCcqFt01x1
         WaVeKgz9MeiAFqYQyvovPvrn0l5Hgl55ZReS3W+bomV92U/8YV199elESkn15UkRn6eN
         4f5Q==
X-Gm-Message-State: AOAM530+u9DNK1G9pu3DkgN/HP9uTbB+QXhLENbpe+j+rX4AWd84TbVK
	xjsIE+7zMFXvUE8ZtjsUU2o=
X-Google-Smtp-Source: ABdhPJwoLXfi0raiIksqo3FOZowxDFXi6ocvPYR3TKRxZIgDUKHFYiRjQleBoQMNFm0GPehMzBZT6w==
X-Received: by 2002:a17:906:94d4:: with SMTP id d20mr6092679ejy.475.1610022613117;
        Thu, 07 Jan 2021 04:30:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4890:: with SMTP id v16ls2760827ejq.9.gmail; Thu, 07
 Jan 2021 04:30:12 -0800 (PST)
X-Received: by 2002:a17:906:2798:: with SMTP id j24mr6216270ejc.328.1610022612578;
        Thu, 07 Jan 2021 04:30:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610022612; cv=none;
        d=google.com; s=arc-20160816;
        b=Kx9zOOZu0Zzh5LMXtxVp8+AnvdMN4l9ce0Z5GGzQLy44LBhDdtSHQqEds5TV/F3smn
         FCTVRyti+AuflXgL8rfn0r1ytTxpRNB5wvHF23kNoTMldkFJg/0BCUfObtcTerNWUd/1
         MmZ1nQnK7Z+EOxgGS3HM/+uxo/D3Wht48Zy5NoNE9+P+Q+GN1SybG2PLCEd3lKkfDRKQ
         DwFGBzl7LjVf4M0I6hik8YbgZG92Tz/eRr2u+wV8Wn0KMUV7ALQYgPkqOlAwTk9f4moy
         BC1ZvFjLXbFiVYaSCC3FgONiCSkTJY0WzYMSBCTDhKtf/ohm+8TWdmocOLGcE05C+wok
         jjPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=e3bnSwSnCE4VZ3KFWoriT36YdZpDmKtvitn1N44EPZE=;
        b=oy0rZ+1zg7u8EcIDaGMrHQ9yP4AUS7GB33Ykw0MWPnpW+oOZ8uvDD2GKw/D3/lMk5L
         dK1d8vveZ6DqsB96I7GaaUXSmEyNIBA86ts5k7wPwjMyqq1QtG+HemN+LXPG2omfkv+T
         ZtAP4nA4BKaxLdioiEkeRLmiTAHmtwHh+XrUMg2d6qUJo28RI+3Og5j2dQTazH1bQpKS
         A9O1mIsxRQs6qmekRAOZdgMG34QymtVHLL5xK+1lvLsAygD1n3TJIexogQVKijRobCql
         hB3exgUNBF+BTozI9fUV3PQyyqgoTu3UoX2aet+4/ckNGr4X/jpzjl0cILdPZ6aaai3u
         McOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=XCLeYds6;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id f26si262785ejx.0.2021.01.07.04.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 04:30:12 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Thu, 07 Jan 2021 12:30:08 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH v3 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210107122944.353565-1-alobakin@pm.me>
In-Reply-To: <20210107115120.281008-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=XCLeYds6;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
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

> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>    placement (marked for stable);
>  - properly stops .eh_frame section generation.
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues
> using two different toolkits:
>  - Binutils 2.35.1, GCC 10.2.0;
>  - LLVM stack 11.0.0.
> 
> Since v2 [1]:
>  - stop discarding .eh_frame and just prevent it from generating
>    (Kees);
>  - drop redundant sections assertions (Fangrui);
>  - place GOT table in .text instead of asserting as it's not empty
>    when building with LLVM (Nathan);
>  - catch compound literals in generic definitions when building with
>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>  - collect two Reviewed-bys (Kees).
> 
> Since v1 [0]:
>  - catch .got entries too as LLD may produce it (Nathan);
>  - check for unwanted sections to be zero-sized instead of
>    discarding (Fangrui).
> 
> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
> 
> Alexander Lobakin (7):
>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>   MIPS: properly stop .eh_frame generation

Well, GNU fails to build VDSO with this patch... Sorry, sending
v4 now.

>   MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
>   MIPS: vmlinux.lds.S: explicitly declare .got table
>   vmlinux.lds.h: catch compound literals into data and BSS
>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
> 
>  arch/mips/Kconfig                 |  1 +
>  arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
>  arch/mips/kernel/vmlinux.lds.S    | 15 ++++++++++++++-
>  include/asm-generic/vmlinux.lds.h |  6 +++---
>  4 files changed, 36 insertions(+), 4 deletions(-)
> 
> --
> 2.30.0

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107122944.353565-1-alobakin%40pm.me.
