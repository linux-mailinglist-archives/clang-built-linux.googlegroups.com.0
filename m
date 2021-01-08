Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSMY4P7QKGQE53SNPIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4492EFA25
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:19:07 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id v15sf6874757otp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:19:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140746; cv=pass;
        d=google.com; s=arc-20160816;
        b=VsSOzRTqrTb4CBK9UKxvNH+h93GvJP4XZCdFpY0Ps8hL1lSIu1EZhvd7+IlkGsQ2rq
         ItJ3cOAjRJfD3v2Ck9Y0RulUfvyy6jJ5BXYauUUCIxHABYcgddAmtSULhpjVJflEmesO
         6ohcdRqUHRYo70avNlcv9s2IaZRg1MtMEmA+v5l2uGvwCCfaHDHXqjYioUWKXJntgm03
         sQxR9J+p0ormO7XtwII11oQY5HZboQytKmmuqN8lde7+78gEoYQKZoFoD3/ilqEAYQOb
         QQDXpBgPcg7gchjFkrQ9thzL5hojRpJ/LlGyj1NSg4ZObPKRithGKu+15mvj6U1m7CKh
         5fsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ROyzCkHtUnPM5pCcfrSGlhIzPVtGN45NuWHidU4HN1c=;
        b=eUnUjf88vq/8yX0GvE7QMq7kV6Dw5BAIC2eYC2nhTkglKDxyR/S3lN8odbcNRoGigY
         tc6UiBl6PWMrnyAfscDvCqQriu/DCZMyqSRy2ma0ejuBJr4n/Q+zfRAX0lQXOLU7AutY
         3Gw4ndE1MoWUXCqog9ao95k3QQA58GfzpbHKrkFnbYNBe9XCcyMUYBxfQu2wFZEwB0sF
         0h5xp3eu46KS9si6YcpgENj/sDVDGw79FxtXxRY7MmsOZJbYMTxhmNKf+y9H9VhcyUDA
         NWnF6repJh45fui6W+K1A+nFTI2unfbmrl3k+fWU6+zjGpatr6yEyeBGFqTvl9/SB5iT
         WnWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ldFjd7QE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ROyzCkHtUnPM5pCcfrSGlhIzPVtGN45NuWHidU4HN1c=;
        b=H8elYcBC2t4AIfKxFSWMDjgvrSA32fVrqgj/vgEzR2h+JKxhfh6gwyV1m96wvIE1Pc
         oQvcSyXd7mW20tpQfZBUaH0sNKkXyZHS0VIn3fgH4EksF2AhEF8SybBQLRxrYwzyBR4u
         6AYYll6xkciIKTUxaMkeBe+d4DxUuGDcl8gcelNmzJKMR17r5qoo9S3kWsbxQZVUWkY4
         iyXSPrShVvhXqDOaEBqRgkU2GBz7C90DlZVvTTH6AUn6eihUmikizFRbOe0Y4KS+Zbwo
         rEzZIlIlT7d38xPKii7PnH4f5/HuapQK39ryAHZ81NngY2QQLFTyHXeTFXyaBm9jPCvK
         ghcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ROyzCkHtUnPM5pCcfrSGlhIzPVtGN45NuWHidU4HN1c=;
        b=F7VTaXukcOaYAP2SO9pI9Ze0NL4sSS++89IXGyIVkhURKdWnoZ4pObHtCqHPjYuKOa
         dVDkIOQr3Az5KzpVueTTfGIbMbfel4o1LRcrn2vCKHCSiLvMwR4sOQGJa+1kqe0zY6Qj
         OckIN2fXUBJcAYqNnkCdtSKtJGZ2U5nZldg4ImkZBRnCZcum7K+15Yj4GPwn+dxXRTDm
         OG81pby7aooHCIDIWwhMPys9Km0rNtfcHqY50jcULJ2uW6oSnXfEznZm0MvKhjKZkk2x
         uDKjKGKHhV45wSlAJUjjs+ZzIN96AUFipHcxtbzexkxR/XCThZqxh4iOVEerpO7yMhmF
         B1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ROyzCkHtUnPM5pCcfrSGlhIzPVtGN45NuWHidU4HN1c=;
        b=VKw1pCR67W2fS0d+r2mO0bSVCL4sgQhY1mAUOPCyfmPxEJ/MM0yUfiv2vcv7DJveUU
         Q488+suS8m4VQqh6V8/yNvgbIHfeIIIg+PIAlRB3uTjw9D9RymUjQ7NhStioA41azWNW
         VxT9PiFPOE1ZtW4vVmKeKzv/xIYcbXOH7JBuNJrNtglZeXeJji2r3biiaDleKY0Ne74D
         6uwF4RagAow6nqoqXcWhaPVDqIfiBrB4ny2N/98bFxaDdYPhuhA7YqFTMyXFSFlqV8V6
         wdFIn77YojPdWegGq7ZHFDSDLFX7i6llNyf7nc4UQRakPICw1xjn8Aet6IwrbnKypsG3
         znIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WeLRXqAzh9ZUpOiDs7b68XdlpmsG1K+z7IAgsguYDNxN4WSiG
	VOfuHdso8ggc9hvvJcwy2OM=
X-Google-Smtp-Source: ABdhPJzY9N0vhCOAH8gDNJ7aZwHCSPseRJbq/fd+iLDkVbKrG5uyougfczsCc166S7ZDUu3mqXfJBQ==
X-Received: by 2002:a9d:5e6:: with SMTP id 93mr3756304otd.265.1610140746067;
        Fri, 08 Jan 2021 13:19:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls3261019oic.0.gmail; Fri, 08 Jan
 2021 13:19:05 -0800 (PST)
X-Received: by 2002:a54:450a:: with SMTP id l10mr3595041oil.171.1610140745630;
        Fri, 08 Jan 2021 13:19:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140745; cv=none;
        d=google.com; s=arc-20160816;
        b=c1rcx6aFIy9L5bhUaoRmSqtv2wqYzIx4nRPPTiKp0KsrXOWvYtYeJhqAziawBIPzNo
         YUp7DcXxDWR0rUF2x7RsseeZRItzQdK1+56DEmXFSQeBExVjAEpjXPvj6L0MDt8zTgx2
         pI8b7qBqVQuuMNQ1djYAETlJr3Uq/cmNS8IPPf+ddl/iiwtsdnpSngS9pSojtBbCnrR4
         QdW/ECW9i1Xdn6lgFA9q4R9hZ+LMKtQ1lhNB/K1WbxZWrs1MopOvN8l08YAT6Xf4GmVv
         pyCKIm6+mH3iTlT0tnCKrBYRa058AhQpOtqr3ZFvTbduDyjcJTnAdernPmVpUuSyFKyV
         lefA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FT8leUKcQW0PbWbAqTVuy6I1pPu6asWx5VuvUk3OGU0=;
        b=HsA6gFGNNqsN+lTakQPBfrblo7SuxDwHQf/xtEnyMPxepISexfickwUgNCZM5/Rt8v
         S0prOM2c3ndhmi74cm9JiQ7+zsn65xdIKGYzM0RnFWRvpVJCPdqyoZinQ5JX4K2rTh7g
         ank/qEfmeS9lTTTnV3KS/gBp492iMN0/bqQAXo4r5wIcyaO5v3ZI5mNdZYqUexRMMO/M
         axPt/oJeSmm9VfDsCYiyqdh/QzHmGsl+/1FqR2P5FVzubvOCTWXi7mld/E2xNIo6Vsn+
         4hepEltWjoVUhEmeYhYBptoIn6jhqYmBQmrBorWImh032954LEoIr9ZGe3FlgpyFtDN5
         n2yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ldFjd7QE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id x20si1169930oot.1.2021.01.08.13.19.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:19:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id z3so7542196qtw.9
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:19:05 -0800 (PST)
X-Received: by 2002:aed:231d:: with SMTP id h29mr5412755qtc.238.1610140745288;
        Fri, 08 Jan 2021 13:19:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id l204sm5408189qke.56.2021.01.08.13.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:19:04 -0800 (PST)
Date: Fri, 8 Jan 2021 14:19:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 6/7] vmlinux.lds.h: catch compound literals
 into data and BSS
Message-ID: <20210108211903.GF2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
 <20210107132010.463129-3-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-3-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ldFjd7QE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 01:20:55PM +0000, Alexander Lobakin wrote:
> When building kernel with LD_DEAD_CODE_DATA_ELIMINATION, LLVM stack
> generates separate sections for compound literals, just like in case
> with enabled LTO [0]:
> 
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.14) is being placed in
> '.data..compoundliteral.14'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.15) is being placed in
> '.data..compoundliteral.15'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.16) is being placed in
> '.data..compoundliteral.16'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.17) is being placed in
> '.data..compoundliteral.17'
> 
> [...]
> 
> Handle this by adding the related sections to generic definitions
> as suggested by Sami [0].
> 
> [0] https://lore.kernel.org/lkml/20201211184633.3213045-3-samitolvanen@google.com
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  include/asm-generic/vmlinux.lds.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..5f2f5b1db84f 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -95,10 +95,10 @@
>   */
>  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
>  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral*
>  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
> -#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
> -#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
> +#define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
> +#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
>  #define SBSS_MAIN .sbss .sbss.[0-9a-zA-Z_]*
>  #else
>  #define TEXT_MAIN .text
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211903.GF2547542%40ubuntu-m3-large-x86.
