Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLOT537QKGQEEGEL5BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 991B72F0AC6
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 02:28:14 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id g3sf3914708vso.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 17:28:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610328493; cv=pass;
        d=google.com; s=arc-20160816;
        b=r7W9L5reRc3uUtZ1mUyVrlj+alprfTlflEiAB/W9+KAOGwpJsDf2vLTGmSS+7YgtOA
         LzQxkqWNG1J5janydChj7A3DqsqFOQ6F7J3do4JB2r0H+BOjXOe+WY9PHE+XkMNfxflE
         zR3cFuxtZtLKoY/zT4jaqTJJ0EibD6XUzpQ7cvm9dVSkLkXQs6/jEcKETrhJMwAZo8yd
         TEL70d2yLp4InTkQZdiBhwspiwzDbZNfzih9HblRk66c/zL4wAQwG2tuQItar2qKR0/X
         AqDK+thm5TDZn0Dg5x1iT8OxhrAn8Ih1M1V/ds+6JEKMaXZDqLRTM4Zs66qzxGiJUUDu
         Ba9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=h1ZtCtll5tl6Rzx5GKY21q8D7tdsh6Hr7UsYd04CrB4=;
        b=r9DgW5d+wZI8vGK5Nmqh5JVUZegTCQ3N1RdyfAiTYT8zqvVD/sU48PVpxhQPnOr24h
         1LNF3y5+EsGHwQSzs8qwzCt5xbeN2381IqCyRK7pA64hNVgfFXFnI4A4E08nWEF+pPhR
         l5ygEFdT0rO/0pejKnilhQDVfrf2XdvRatUCgxxBValFKTOc+rPVGfg+f/nYp/pCaftW
         VdbEHkINqw9ed0SdaefvautAfYVWLbK7JWk/RJg3fAvSfC8ZRVlA6Z3/i0FhhSwaxAYJ
         89iD9fiBSbXR6js0FupM/PX/F5/cyAPA8IUGW4kXAvcQU0nE8XkYEWjcj/63rdlSay3I
         JSmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qSv/Xpjf";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h1ZtCtll5tl6Rzx5GKY21q8D7tdsh6Hr7UsYd04CrB4=;
        b=KQYgDyU1xjwztfUhpx6IQbNaf+V8DnSzT5/ZrJuEcL7gH1Oz7yvlINcZ0QtCeA6eah
         cpIRYCvFJf1LWzzDQE+7Ttlalr0IlkQYua8E77lPVthkuPbqo/5zaj3lztzZYvRCf645
         CQIQXUSfR0eE6XxEv0B0E9kouCtRdFXRG99SnzzNREbQKxbLwMoMykWFYieKkfqBY/9O
         Y85U4Pbi5HtPGspTHeLc0MB72n3jmrhWhsjbnoNPpyO3qXqQ0KFlEP68QfPlHnG/FaFg
         sCf+XS21RO8g/W4umW9VGKCOHvlUcnnR28RG49vBEj/KF+8bJysDeGuEMIWIcUtYlpA5
         tnAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h1ZtCtll5tl6Rzx5GKY21q8D7tdsh6Hr7UsYd04CrB4=;
        b=ZRJFxqqfFjwh4fhGJLFbCyYxER01TTW+4vcgonHa0ZW6fGgsKRMVZM1aUTdN294I6h
         621LfhEFxHeC281ebmbdmHRizoKn7J2aSfJJkXHHKDOgmdLuKxcp57K5CetoyGiVWZ6B
         K4IEBJJmylSMqtt1l7663AnkW50jv7Mz1aya+jh+SviWccpQJKrsYwt4WJnllPRMaDt3
         22Vaw7LvuZkNMy8oJnwuGjQmI/OsV27aISXrUZkFSTBK41ndOqVk/3gz3yWw4BL1g4vx
         E3GfAQiJwjKbQv9dEaZjBUMwXq9ZaTnYsCGj072u6kKxQtsuUJaayzVFAR00sIUawliB
         JpCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h1ZtCtll5tl6Rzx5GKY21q8D7tdsh6Hr7UsYd04CrB4=;
        b=HU7XPEPwhFmdQvYJr1E2wi0hiySQP3BnywAVzftNDYa77Cxxkwbf8zKJxXV83xfEnp
         27F+rfJtnRYDviRGS9HTzjUCXrhsi1kOC37a/FYyk+mROB6/QfEV5ksmW/SHyXrb2+iQ
         EoNFD1YSopeUjv3fKS7zuy1cyhjBZKtTNbiyu7I7pAumTAJVD7t5F7kMVAT4P3LIwcrV
         8CUOT7xBk7kJMrQE+l1NgRBJSc3r7YcSBNNffIkAbiHr1mPGohu2pLQAjXOrUoQd5f/I
         nNVFHOq6/ZV9KzH7G9cVyruHUNhHwf4J83z9SnWvLOVuOXZ4R8+G53BqCuARIz0RY/Bu
         MWxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EDzhIZrWSCDLcHIj/eDEEnIvkGG8tL9vvK8g6BIbYfBGQDtVV
	UQQ75VJ56fImMQm7n/wDd7w=
X-Google-Smtp-Source: ABdhPJyBuhWzbU//Qu43IruQHj87GaphbTc1UhEPuCesecumViz/3p84tsW1JQEuvS/CvYKA3okjUA==
X-Received: by 2002:ab0:6b:: with SMTP id 98mr10533078uai.86.1610328493404;
        Sun, 10 Jan 2021 17:28:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls2141999vsf.5.gmail; Sun, 10 Jan
 2021 17:28:13 -0800 (PST)
X-Received: by 2002:a67:d085:: with SMTP id s5mr11459555vsi.10.1610328493033;
        Sun, 10 Jan 2021 17:28:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610328493; cv=none;
        d=google.com; s=arc-20160816;
        b=frtLf0pbmtq18pYxk8Edn++N//e2Dwu64xFCCnJBFqzOrBdmYCRyf8EMqaadCD603d
         MUMbouYATOtQXgkW/YoLMay9z+Df2/VOmzoWWqjuRLh02usXGfG9joRLm3U0KRxN9xIm
         rSkOhGT9brtL4KgV6hefNaEBby6ZiSLC8Zk3fqsR4nFfw738q7S/jd9tMnPO1ozSiQyY
         /WQNbNXmztSV1jO/MJB0fkKKc6vjSSVbbPlq7CkauAL782qlFRQbh1nVaL3TGk/+ZmcC
         uzyCIvkVQ1m7drQbHh3DSrDTuGzFNRsD+6tQsPJ1AYKfKDoXgBwetZdE+CJo9AFmQ2T7
         0qgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RAxSHTZDZlT6yDjj0fm6U/ExdlmA3H8wyIJvn7l+DzI=;
        b=ddukcZPjmqp9i8OBODPEtymmEKx2xYVVr1D7UI+cqPIb0OiKUzS7W3LCILkcYPa5VE
         KjS/akF5njoJEnXb5eLZ8ZisfeaW6oxjt5lkwKnDNLCj221vYYyQOQCNVPqlEmkdTfxX
         dYrfJrzQ5Ap/etlukddCrYeRnSdatLk+TViwYnysab6UKLI3Lvz6XXFt6vkVgTEGH4vR
         uIBxcEvtY15NqzIn4qvJIOAfj6vvnizHDyTxkEPMwzuLtkBGeM9j1mVPSDW6uhlrSZ9A
         Bsa5HMnMpnxDNjW9C7Alhgxpg4OMeLMWaZdgyac7sqXdeENol8zgg9vbWVsC7Ltane2W
         Xi1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qSv/Xpjf";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id g3si670703vkl.1.2021.01.10.17.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jan 2021 17:28:13 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id e7so16761403ile.7
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 17:28:12 -0800 (PST)
X-Received: by 2002:a92:9f0a:: with SMTP id u10mr14002915ili.158.1610328492662;
        Sun, 10 Jan 2021 17:28:12 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b12sm14065824ilc.21.2021.01.10.17.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 17:28:11 -0800 (PST)
Date: Sun, 10 Jan 2021 18:28:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 mips-next 5/9] MIPS: vmlinux.lds.S: explicitly catch
 .rel.dyn symbols
Message-ID: <20210111012809.GA2918900@ubuntu-m3-large-x86>
References: <20210110115245.30762-1-alobakin@pm.me>
 <20210110115546.30970-1-alobakin@pm.me>
 <20210110115546.30970-5-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110115546.30970-5-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qSv/Xpjf";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jan 10, 2021 at 11:56:34AM +0000, Alexander Lobakin wrote:
> According to linker warnings, both GCC and LLVM generate '.rel.dyn'
> symbols:
> 
> mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
> from `init/main.o' being placed in section `.rel.dyn'
> 
> Link-time assertion shows that this section is sometimes empty,
> sometimes not, depending on machine bitness and the compiler [0]:
> 
>   LD      .tmp_vmlinux.kallsyms1
> mips64-linux-gnu-ld: Unexpected run-time relocations (.rel) detected!
> 
> Just use the ARM64 approach and declare it in vmlinux.lds.S closer
> to __init_end.
> 
> [0] https://lore.kernel.org/linux-mips/20210109111259.GA4213@alpha.franken.de
> 
> Reported-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/vmlinux.lds.S | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 10d8f0dcb76b..70bba1ff08da 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -137,6 +137,11 @@ SECTIONS
>  	PERCPU_SECTION(1 << CONFIG_MIPS_L1_CACHE_SHIFT)
>  #endif
>  
> +	.rel.dyn : ALIGN(8) {
> +		*(.rel)
> +		*(.rel*)
> +	}
> +
>  #ifdef CONFIG_MIPS_ELF_APPENDED_DTB
>  	.appended_dtb : AT(ADDR(.appended_dtb) - LOAD_OFFSET) {
>  		*(.appended_dtb)
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111012809.GA2918900%40ubuntu-m3-large-x86.
