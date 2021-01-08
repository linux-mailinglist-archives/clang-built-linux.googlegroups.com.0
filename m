Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWUY4P7QKGQED7Q5SHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE8B2EFA34
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:19:23 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id k187sf5979966vka.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:19:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140762; cv=pass;
        d=google.com; s=arc-20160816;
        b=nrnbjwFHR+ZzxtB+0r7OdtnUgzH2SiqlPrgkVM4S2aty3pLF9PAzVNhp/XR/Z4Bks2
         e8uaRY5/OYFZEs8gH5lQFkIOnHv0wStkPEYgSHbEVHs0Z+VlRQ5kncBOWA3UVKkXdXE3
         HRBHqsbP9R9JOD8uaRi9V13JjS4vX/Irs9612BgTB7ubzqwG3QYCg4v5aZ2AEi0p5d0P
         Q4IXsNLvo6Gs4wUNTuLj8P7Fk17JomT88X58mt4O6LZonTfEXF6iZrfofolV/bWiYXOJ
         jTF9ZgboCee9Kl/Wd0jMK9kG9OPA1/UUzlQDdU5XqC4R5nBiE3HARyUE6/1z3S5aPcrY
         2VZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=kcGKyIy2fWsF93bYPRoilmE8kzMmrgzD+TNxHLh7juQ=;
        b=ZRhuAvWnQc5Li1/vcbmPE+0GaIorNA5tr+fyEerFDNX8wm6k19E02qnJERlhOOmYOE
         M1xgEJxZoXBvI7eMkuA+0F9qLhXEelDsB1NJLZ60NF2XZ0VnMjwjsLW23uyEK4H/8Ylf
         bvQqusHvyRVgMfCVJf3C8v3iqUZxhVR7xA26FHrSKpcQ+emIStvr13AveK6WN3noZJbC
         3iMozHXrmg5zsdz6SGvr+23vQq3QGJxWMfvInKa0I/fFPrt/a6EFpBwQ8jqRgL3kTW62
         me3lh33pCmiALMq4/0W6DojEUwnGH5HXDaeiXsYynFj7CyhWdxHQ8gNVgfVQ3pfpuhsJ
         Z5eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unfNElP7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kcGKyIy2fWsF93bYPRoilmE8kzMmrgzD+TNxHLh7juQ=;
        b=BbTLGq/si789TrlA1qQQJctWrXqIgKJ1NIhqIdhpOICqKl1RsY2FZeRhFyjpUkEIux
         OdvwO/mGYyNvTTe9gKU0ez24EqNiJIfOUpAW4YSsaxQX7BYGSv+oVWycBaAi++VEJORq
         vq6Vm8vZzEKL8t0HZyPj5BAVdA7Cg5Hh2JACkGvv3FLgX4PAAOM1mxF1BPVODFR2QtVx
         r0ZAnCmxLHUfetQ10bZSp9RBrW/53wM6jSWJEcIVjDCFBF4PPYoGcV20EtNhp4IjnXgO
         kZ0yUyyDZdJkDMf28vKunSbQ4Sv48eW3BVY/V8ESMfuWpSY6KR6r0IRlkNNR5HtavkFu
         Lq8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kcGKyIy2fWsF93bYPRoilmE8kzMmrgzD+TNxHLh7juQ=;
        b=dMgkoVYpEfiPs0lHReDR3AtNdzBPNs7qqOBdL8rN59Em73PC4BWDdQsFC4hFlIPzlZ
         BxNYCjfB3jx+FdwXNAwK3n8NRapXZTK2nrRqmQd6BeaQyoKAccP93AukCOlJbdULQQf6
         +REP+qJEwxV877hWRU7fukUBbENexRzqfbiAHJJsfsX4KpqpR/ZPYkq2UvlSMyPsVtlg
         +Q3GUPtwvGgNoAcQNOC7kB+Me8mXX8sAT5EhHLqM3hdYyUL60qekRf9doIYwGxnLJONi
         /OMjuvkIRIRdDKKF3DwccrjY2GI3zyvL2l/Dcm+g984wFR7hEdN1sq/iMH40fGH10Nnh
         4bRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kcGKyIy2fWsF93bYPRoilmE8kzMmrgzD+TNxHLh7juQ=;
        b=Z/8t1ag5f1M0CEOwv3dSR1WWB6Y77UlSUOoCyBP4haV+i2EgEZAIdfdKs2/VND/l4H
         tQiYi9n8BzOqx6ThCGU/+z3FUflZMy2VKVk1zHjIpNgeDYkLcE+fCuSOyZDPWJKgU2eW
         DdUrrk0k5naBBZB4rK94FFV9kY4100vNDqkEaqVpL3hC6k4kzMl6a+tzMap1yP7Tn2C0
         jSLYAuRgza42EkZ1xUWxLMSRNVrIrxtEbxSyv7FGJGUs9ULyjJMTzRvMfbvPS7aBylJ1
         kd+2rHLZo/j4EjnoVpbAB9SBhdr8HvSFZh9/2jDH+kDBVkZ5LLbb7ZJoVnR9Kka2cMAw
         JHww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kcPRw0AYCM7fFCPOhyahoav3q3ybBFE+B8SrOEq6ni2ocxbgv
	oA1ihxXDBlSk/tj0UU35i6I=
X-Google-Smtp-Source: ABdhPJxcmHa6enUPxmAGb4THzro71w3VrDA0+RDVbO4/lu5d8gAVqB+pkKJ7vSVJ9xKjgu5c4VNxfQ==
X-Received: by 2002:ab0:2a4d:: with SMTP id p13mr4869570uar.18.1610140762679;
        Fri, 08 Jan 2021 13:19:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e287:: with SMTP id g7ls1680597vsf.5.gmail; Fri, 08 Jan
 2021 13:19:22 -0800 (PST)
X-Received: by 2002:a67:dd95:: with SMTP id i21mr4794240vsk.33.1610140762258;
        Fri, 08 Jan 2021 13:19:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140762; cv=none;
        d=google.com; s=arc-20160816;
        b=Mo7oeiPEqJlcbO8cEdryJ3CI5ZAfQij700CWMWJrXCkfSnMrsaudIY4JMKbRmYwCSu
         QayWmVi7kOU9Cq+wtsNLErGQax8YXorDkw/E7O9zCb5EtKZ36WJoxMurCD2KwB/eWoF6
         RmykAkgKsJt8y35N2QkxU+h+71oHmgtB0w+JHpy3Cohn6SQd9nkmjCkk/L9AdbtOjV6v
         B36Zorhcic7MCvzoCxrjEcxOVbmUDRqbjPhU/5N3kysud+xr2Wi9goUi/1GK0pUhmP8S
         y9AFVDfG1DTcc2Z7xpCHSnwca+NT+rgqipL980VW2oXrtqteFaLOdxB/KtKdM36IWus0
         p1hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hnXLl4sHbKEop6wOqXRNzmI1tuKMV2HMaSYRF/O+288=;
        b=I4Ku8g+DP94wwb+FomzNgWnUdI4z/smbfp+UHUpkzZ1uyE7XCnn++Z4m+ozi8fxF/c
         7nbIEofQ25ieS8OJy/q/6Hbvbsb7rdAic75SevJm9h56qnKiLqBSPAsFU1pLWEN2qmIp
         1KUR/P9IzWIvbSXBAMahwzMNPdY9VgTCp8V3NL+WpLlOCMwqZZIBf29Tosn5UQsXns1B
         nvywRjQjgZ1dvpfqpelaNvxG2nrC9oq///bOITpyp0SFgkRbtCD2tob3+ITWyeW5MMFo
         XMfktRUGQztI3ECyW04lx64iLQoW865I634piYFNRUzM1fZz4plPgvqKFjxbihtmFtK9
         Bvzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unfNElP7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id y127si256747vsc.0.2021.01.08.13.19.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:19:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Received: by mail-qk1-x72b.google.com with SMTP id 143so9739140qke.10
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:19:22 -0800 (PST)
X-Received: by 2002:a05:620a:ec5:: with SMTP id x5mr5797597qkm.143.1610140761875;
        Fri, 08 Jan 2021 13:19:21 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id p128sm5732545qkb.101.2021.01.08.13.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:19:21 -0800 (PST)
Date: Fri, 8 Jan 2021 14:19:19 -0700
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
Subject: Re: [PATCH v4 mips-next 7/7] MIPS: select ARCH_WANT_LD_ORPHAN_WARN
Message-ID: <20210108211919.GG2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
 <20210107132010.463129-4-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-4-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=unfNElP7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 07, 2021 at 01:21:02PM +0000, Alexander Lobakin wrote:
> Now, after that all the sections are explicitly described and
> declared in vmlinux.lds.S, we can enable ld orphan warnings to
> prevent from missing any new sections in future.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index d68df1febd25..d3e64cc0932b 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -18,6 +18,7 @@ config MIPS
>  	select ARCH_USE_QUEUED_SPINLOCKS
>  	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>  	select ARCH_WANT_IPC_PARSE_VERSION
> +	select ARCH_WANT_LD_ORPHAN_WARN
>  	select BUILDTIME_TABLE_SORT
>  	select CLONE_BACKWARDS
>  	select CPU_NO_EFFICIENT_FFS if (TARGET_ISA_REV < 1)
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211919.GG2547542%40ubuntu-m3-large-x86.
