Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYNFVHWAKGQEJ2DXVDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 828B9BD0A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 19:31:13 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id k9sf401076wmb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 10:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569346273; cv=pass;
        d=google.com; s=arc-20160816;
        b=RixzAgg0+ULgP4nNlHg9MvBmiYiU0B6ZfRI+37K1LJ1zlqsizm3hETX5MTXc3rQmzn
         JekT5O/PgAvIw9pDI+IBlOhGXjgoGuUSViMdW4DSa+bZjAyjxRfEq8fxphqjtwCBqtDf
         goXvUq/wAysxHMLjNjygSZ3zLW8UtLA0C0vwsT86VFEQHAY7NHxPhlKrc1y/1grgKB79
         iMCQAvRzXsXExcQ+y/iL6SnFq5HS8GOLxGyXA6edmsr5eWKS2/iTQz+nlrkcs+nCQeyw
         J9W6Ff5isyuGzqwl/HmE0a2K3wSCLUA3vQagBVRoXE1KHIUhxh4rkK72h6no+JYo372k
         fHmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zPo8kpKb2nlaeTyA+0IpJoP4ScTlWMgr3ZvXiXF2wMk=;
        b=wTy78sHvL7uxsPmuqLtWbUo1O3ZEKFgYSAnwl/0xnznZ+zpjuHw3hjOmHvj6T/ye8C
         FoYHpjCkMlAgpb292n+GDS21LJX+zRFHVHcD9reBiAOV4TGw/zz68gjUit4SL5Hj1hF8
         bdn6uvLrc2RehsptyX5T1uQc0zo/yUVZozcC/siFPwnNK1Zk2FZ1lYJfHUCc6VjzTgot
         jC0WZ4+FjUglJ7IH3jfekYAb+OIl02ljk4ZA/qHhcyok3EpyAGQ2DikyViN/LQcbMvxI
         8d7bKkZ/T7CLong1kaZZGP/YMQVNLSBXAgwWlmr31KItNclwgSdKusyxROjzzHEYgQ6m
         /hdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DvgNB75X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zPo8kpKb2nlaeTyA+0IpJoP4ScTlWMgr3ZvXiXF2wMk=;
        b=nzYa13PeIDFcdthcaLxS5KfN4LFHZYvAKVFPjdj7t6EAKOVZWaQkXnFcBsDpeFzMpR
         DAwTl2EL9/teT189x0zOZQPe7HV61w7zsdZcMPHeOWAgmt54pgTjZzU2o5ZBDGyWIBkD
         aNLvoK/KemfiyjyFqsDpc3tvV6p1mIQ7gMRsLAMloJ1KtMn79lfO+MFQiln301z770ZC
         U76MKOuTpMXHUxTtXIzQ3eTWB6HZVWGrUlgGu1nPvoUZIbiByav/KpYmbQvYuffhWK8i
         47aR/y/BPFxeyAf09400KtrUlGWSr3ZQYnOUYogQyQX40CM92H6Uos6TzsWfJjTtJIwz
         EkEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zPo8kpKb2nlaeTyA+0IpJoP4ScTlWMgr3ZvXiXF2wMk=;
        b=eoGBx8LxyJy4H2E4UOdC4Ew61pbSo7lI3W0nYbbX2XYSAWT0Xy8+SQSJOAnq5R9t3Q
         QwBS33J/rMSifJWvHVXARQjDpeBPUBBhQfOzT2zpcFBkT06iZxEMjb63nQPapoMfpSEP
         eYAm7Xlzx7lCiCGJffQ6B6WKXf4oI0E64671BCx2nRQUCFtW+Y0fKYfJlKDSghfzKl6/
         li/9QQluzvK/SiI8xKQFA+zxVhj6HsyKqhKwz2yYpoGPrDDwppimZfpP0JBA56djoSFj
         TkDIjQbHQtO2AN+1wfDOzKZkASE3+jQDU/f5BTehPFV8trPTBtF8USRX3ceLqbGjvrTV
         d80w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zPo8kpKb2nlaeTyA+0IpJoP4ScTlWMgr3ZvXiXF2wMk=;
        b=J/cHWKu/xf4dqFQA7JHpPjX17Z79ODiu+IyrvunN8ZloLDayGNlAj67EdqQIKqGily
         zYBI2G/e4D5QNNsWk2kxMnSuEIdV9dAw3OdK+AmE6PSVkkFgW5wr6d7lcXIstwy1HlWN
         lhFwE1gVvEi9m6NltQKZWFbky5IWHdGYdpc8Z4xRMPP70YSRzyBpsYFA69uPAEWNd7qS
         gXO9gHZobPvH3fwIt9ziJIR1K0vGsveGka1rnZsR42YYFI3SazS0S/LasiwQ7sfthqEv
         VIDHfWAGhco7h0orSCL3nQtSR2ezOikpt5sDPXL9f4GAv5moNYMK4Hff6TKm0xSrA6xD
         1iSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEWFwYFgiCvxvjNXxpOWf+a0Bpij79LVVLv68DhFR1u5eBGK0T
	yYgnv4Go8yfKq9jCAoEZtYA=
X-Google-Smtp-Source: APXvYqwWEW9J+rrcsSEzii7ORUgKETTHh0IRXfR/0KvmM0u6KG3vRSlxyOGL72frC7NZQZkttnNjew==
X-Received: by 2002:adf:a350:: with SMTP id d16mr3573021wrb.326.1569346273145;
        Tue, 24 Sep 2019 10:31:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1a96:: with SMTP id a144ls396294wma.3.gmail; Tue, 24 Sep
 2019 10:31:11 -0700 (PDT)
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr1335088wmk.49.1569346271497;
        Tue, 24 Sep 2019 10:31:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569346271; cv=none;
        d=google.com; s=arc-20160816;
        b=uDbtCU1H/1M8oNg1PMtsWxiT2FnaPaT//drqAB8A+d8aRwURu3gd4l0rAZNzGDnJEx
         Tv5JqqnndvL1uDOPLd9c7GoBAwhx5ksNEy5FO8tZywKWx9eQzq/eRpGzef7etPFelBWc
         ICsteYvxF5ml7PNkvsPI+1L9m9o9ul3PX8AxsWQ4rLN62KAU+Hctv+9fZaIjLiZr9WDB
         K8Hd9+h1T3clhukM/r7/3xKSADj7qXs3cIOgVWY2bO2L7nBCXnW3XwyzOvVsevjJi2Rn
         SQQ0FGyhr7lY5LiqvlGgGw9OLCH5xBfXry93T11CojBs63pkscl14FUibmRMEoNVmSNx
         sgnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LL8ftQ0d2EQqhK1mSpuOYEUw7ofHsHcjJlXF2qrplCw=;
        b=VjpKjejI56V/+Cv8ME2wCO9KHDptK4g1Ma54Kd4pobq1SI2prwxemeHe6LS9ZSjWzO
         3S5rBBxW/fBhhBIy/XtBr3GPCx1XOILIuifd9LXxXNUTgD68f8GsmhjdSRM7DYOCPTK3
         b/giwKfQTx26Ry6WPRn9v5wwwGhDlmxFqahqTE+cM6DD+Oy3OO9UPRpEVWXn/GQmAo1I
         72M5dtTkvMcNsJy+isBNwLN2NBg/ZNjesASKtuE6DRX6REhZQzcpFa3yiZh2FRIFxpSh
         iGW+eCuiyKIQyk8/GB0a3vu5cClOpHYJknIPW7on/n+Fj9s0wS/p1TWTyiDyWuMmwpge
         QKSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DvgNB75X;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t15si150747wrs.3.2019.09.24.10.31.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 10:31:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id b24so938161wmj.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 10:31:11 -0700 (PDT)
X-Received: by 2002:a1c:3281:: with SMTP id y123mr1297282wmy.118.1569346271157;
 Tue, 24 Sep 2019 10:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190923222403.22956-1-ndesaulniers@google.com>
In-Reply-To: <20190923222403.22956-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 24 Sep 2019 19:30:59 +0200
Message-ID: <CA+icZUX-2W9S1tnRgSmqAWUFqfv=kUqZFxo=+H-M1Kfj0pA6ag@mail.gmail.com>
Subject: Re: [PATCH] x86, realmode: explicitly set ENTRY in linker script
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DvgNB75X;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 24, 2019 at 12:24 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Linking with ld.lld via $ make LD=ld.lld produces the warning:
> ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
>
> Linking with ld.bfd shows the default entry is 0x1000:
> $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
>   Entry point address:               0x1000
>
> While ld.lld is being pedantic, just set the entry point explicitly,
> instead of depending on the implicit default.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/216

Reported-by: Sedat Dilek <sedat.dilek@gmail.com> (seen on my first
steps when linking with LLD on x86-64)

> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/x86/realmode/rm/realmode.lds.S | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> index 3bb980800c58..2034f5f79bff 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -11,6 +11,7 @@
>
>  OUTPUT_FORMAT("elf32-i386")
>  OUTPUT_ARCH(i386)
> +ENTRY(0x1000)
>
>  SECTIONS
>  {
> --
> 2.23.0.351.gc4317032e6-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190923222403.22956-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX-2W9S1tnRgSmqAWUFqfv%3DkUqZFxo%3D%2BH-M1Kfj0pA6ag%40mail.gmail.com.
