Return-Path: <clang-built-linux+bncBCT4XGV33UIBBXMW5SEAMGQEC4WTGUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 546163EE1F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:05:35 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf1415670pjv.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:05:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629162334; cv=pass;
        d=google.com; s=arc-20160816;
        b=l/47M/CAe5SNGEyfDrnU7WSXUT4F5rBCZt2KuVfLAeHpoDwSI/vmdG7m9snf7IDnKi
         PBf+eIhwYUAQAIduF8jAutikNGTYjhKQd0UoytnziMWAmg7iCNUUEwXXke/3dyHVlW8M
         Ne0CY+pRFxPGqWpWwnF2vQB8Tezr4eYgiajk5l8lcDmJdEFkb1w6JDvgRdMD/sb6ZG/z
         SW00SyGL20UgiXRMMoRgTXTGsHJe2fOE8ACFbEQE9t/IuxObEzvV2gCwTMCLLtdWZgz0
         9iBfvVC85krJUQ6JqkIHk76bv6YwA32OuqBihvsABvOxQYZpNCfQ/mnrvVQGY4aeXrPs
         YOeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=iLDk4oo48LvQS+dSPXKZZWWo1SJ6IpEjx6kPrcNa/Dw=;
        b=gw4ba0+k7w6erbWd8YK1dUhyp9kYmrkDRt6+JgOdAyHapfFi/ZrlA1yKhIMwpb5Ik6
         jr8SHwaD63/2RpGmksuwTSzvCgLCj7Kw36P5HqD6H5kixJ5JjS62RG0AJM8A/RHwheMk
         li6D9a0XxaedKdXxNXrfgeuaWR7EfDtYFZ1ybjEp8EQcwuRcMODzxlUF85F+mmDv4kxv
         vJXOFApiOlhWVB5h7coaE3VQvozr0EqDd0Rk3li+y7vYI/qMoRjAc8K9wyPWOHKaA8vu
         krbt7RuegtO4FqFmq2HlyiHQCwXj7EbJYOvXuQAwPIDo56iwBvgpOPztGn6Emh5TCXzg
         SlUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=RMntPHMe;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLDk4oo48LvQS+dSPXKZZWWo1SJ6IpEjx6kPrcNa/Dw=;
        b=AUWN2LgLPx88sxO+WdoUUn9X/0q1BZIR3Z9KE4cPQBLKyirrx+digxUM5Mcc1eiWFF
         CfKeUISzzjrfGASYwBjCaIXjVqvEGVKb0c5ryyUBjV+DJoJb8P0ADsTL4VxRqQs0z/so
         NazPaJyO87lB1fZ0fjxnJZVLXvrVEz1JWXJ1wdFjlZ83RSqfqWpkdSG5ZZYDn0hs3p2O
         PKQUTg8+vpRrubvLG1VF94qvEsQo3IZKuY2eNN2TtortXmDuvn9KFw2508LSGHfGpDee
         U88AVMwibzyJmLbizpRf0GGhKWmW9cvrZzO3CX3Pwy2GJE+rkp2K1UyJQ7BW+FKVwNEJ
         95rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iLDk4oo48LvQS+dSPXKZZWWo1SJ6IpEjx6kPrcNa/Dw=;
        b=kbcAKU0n/lptxGrDBAG6nBL5RKzbfQR8JVUloB2WrTv5U5BXxSDbu7fVtac3dh0KI6
         oYLWxPYe6+1Pw04quoNrO6mRp5wScjCIM/QCI+wswxq8Gm7GjWD55lzzuA8+QLgj5bzN
         wCEDdQRyylFiEYmXZQFitkG/jY06PBVM8YrEcbU+AQRZ3tvE/yOCHH4lbRNzeWsB/OF8
         FkRCI/p5QcznL+upuO7gppxwmttoRzMNOoS5MOXo/J9L166beTjJP1hFpn+3llU/X1QR
         6pPM0m80WWDfixAuobIY5oZqw9XEC7rz20G8FDCLD1QwRQF6rVlE/aEYZ67QM+dQ5w05
         WWiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Vs45u8Jkc9PL4cPo43Qac74hi4YDa+BAs7xBVaTdGf2I+NKkX
	j2l49QjHeAcHrOOS5XK1P3g=
X-Google-Smtp-Source: ABdhPJwnr6B7nZ/uu9TizlrWAgVnxOTDFaVDKxiipNKpji8YyBXG+I/f2c8QOnSD2Iv0LoA/H9XaVQ==
X-Received: by 2002:a62:8382:0:b029:3cd:c959:f28c with SMTP id h124-20020a6283820000b02903cdc959f28cmr906380pfe.48.1629162334076;
        Mon, 16 Aug 2021 18:05:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls245993pgg.9.gmail; Mon, 16 Aug
 2021 18:05:33 -0700 (PDT)
X-Received: by 2002:aa7:8757:0:b0:3e0:ff06:aea4 with SMTP id g23-20020aa78757000000b003e0ff06aea4mr817799pfo.38.1629162333481;
        Mon, 16 Aug 2021 18:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629162333; cv=none;
        d=google.com; s=arc-20160816;
        b=CsN+bpfyvIwnsKPu48+hy6iiUAsdMSdL88iXu0rmVlmYiH7hJOPQ0rPIhbkFKUkWOk
         ib8TpexPqrEDDH0tkG0dMrUAQfiGIQ53iairgO5A/8oVuKxCZnRFDik8eMhSPk2C6FaV
         OfcQgVeAxzWiHOoH9YybH6UlG3M+feN5VJZsP1okIfVbUHaGwLpIW4f0eOGIvzl32aKZ
         k5LO2ol1zRvg+rOoSq7ZEYar44K+c/YcVL23argZ+Y9yb6LDVkkUnOZ2NAKBUSzV7kov
         bztn29LpmBTihOpxVJ81KQjnpNUwbYcmCIKWIshSxGCzPATx9gmxaoXuO3BFZ19cj/Yj
         GQBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P9veIQS0bDVXMIxvKUgn9zoFdwIF+2wfdMBMZDMlzfI=;
        b=N1ghzpUbMkOgm3Vhf5atKyABmm5w73fdJS3dy1sUOXVZ8UwW7SYgdtm5YMjwWaYOjn
         XDij7So+OzHadEUXRCajYNR76UTDCXKD8sxABr4Eu0rFkFsvMbcf8TgGgixKc/doM/Ay
         7eQLtixpZZbSQf/C9GUmA9C9Fqp7LH7eUFLN/QEwvQMmOjq6pL33aDKizpRCU255/IQD
         xyndI0rZnD7muIp2lD9mwmXX5VT47YQT3/ZiVvWT53ZBQGkfJVbV6wZ+JjszcGSzUiuA
         tQISLtaFwBvJEr1ROJ5QEeVqGpC86AMPC5yLPZSz9O5IaMWmTGH85bnM9/mozAh0qO/I
         6x9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=RMntPHMe;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nu6si15670pjb.3.2021.08.16.18.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BCB060E52;
	Tue, 17 Aug 2021 01:05:33 +0000 (UTC)
Date: Mon, 16 Aug 2021 18:05:32 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 terrelln@fb.com
Subject: Re: [PATCH] lib/zstd: Fix bitwise vs logical operators
Message-Id: <20210816180532.6e85c93f84d62dc720d21178@linux-foundation.org>
In-Reply-To: <20210815004154.1781834-1-nathan@kernel.org>
References: <20210815004154.1781834-1-nathan@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=RMntPHMe;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Sat, 14 Aug 2021 17:41:54 -0700 Nathan Chancellor <nathan@kernel.org> wrote:

> clang warns several times along the lines of:
> 
> lib/zstd/compress.c:1043:7: warning: bitwise and of boolean expressions; did you mean logical and? [-Wbool-operation-and]
>                 if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                    &&
> 
> Bitwise ANDs do not short circuit, meaning that the ZSTD_read32 calls
> will be evaluated even if the first condition is not true. This is not
> always a problem but it is not a standard way to do conditionals so
> replace the bitwise ANDs with logical ones to fix the warning and make
> the code clearer.
> 
> ...
>
> --- a/lib/zstd/compress.c
> +++ b/lib/zstd/compress.c
> @@ -1040,7 +1040,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
>  		const BYTE *match = base + matchIndex;
>  		hashTable[h] = curr; /* update hash table */
>  
> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {

yeah, this is a late night party trick which is sometimes used to
attempt to speed things up by avoiding a branch.  It is perhaps
beneficial if the LHS is almost always true.  I guess.

I'd prefer that the code not do this - it's silly, looks wrong and I
bet it's unmeasurable.

But I think this code is supposed to be kept in sync with an
out-of-tree upstream version so this change might be problematic.

Dunno, let's see what Nick thinks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816180532.6e85c93f84d62dc720d21178%40linux-foundation.org.
