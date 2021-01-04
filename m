Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHGMZ37QKGQEJM5EGNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 768962EA0E3
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 00:34:53 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id l5sf12859089ioj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 15:34:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609803292; cv=pass;
        d=google.com; s=arc-20160816;
        b=zx+YzoLbQKxQlieiTMrdqgESSEl0ov17GQ/l2ek0MFMFkgE9wdngahzKWB53UNx8vN
         8TqoPCeq4XGXtXQkZZW/93ft+kdG42X4sHA3JB6B53lhmcXJe6pD+pQYdCeZJ9G4S4Mr
         3vLi7mYhdGQ24YfHirFIGvRtkM5UQ55+WJjv6ghRUUb4xFrMvVJW3J6di5FGS1EVU00a
         3NnIefxnQaD/FJnB4EwQu6XOh27PnLLcB8FTdmfpaLFsyCc+/pMDUSUQUC0Ig6+px3DT
         s8xY6KfvYTXuGqn/vBf5l3N1S2YGRVk539WTNzrhOndv4n0njItVOpttfU01rQJZ9vyQ
         0sAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SAmSk3gZlZYj5zyReX4QZAliZEDf6A0ctieXcclN8iI=;
        b=dMXReloWv25REvvqiVl5XCcj3Nre5d02CfrLtlk7yfwx6HSGPAcFvbyP7HWQ5P7SHr
         IRc3NswAiWq3V5Lgq3KV5KkDErlFGg4VYnCY5t85ByegWE5OTBz+AOFklPNXggSGE6Nv
         9yYSXJ4guSP6fjIxUKG4TbHrYbQwGrXvJ8xOWgp1ym/rcGzPmEwoKE3DdWS6nfDsnVm5
         8SLydt55AcbVNlRfshRKuLqqOSrBxR21FVUkQLSSo+7DZiTIlG8I/RZfu7+tbW8HwWTk
         J7EIj14uqROwqY/i6fEaPZpJPGCx+YFDQG9ovaeObtcKE/ImfP8cACGEQSO19or4sqm8
         JNOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULBNjuLd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SAmSk3gZlZYj5zyReX4QZAliZEDf6A0ctieXcclN8iI=;
        b=prrSPyJnQO2XcdJ5loWxtCkuJGCCxDYsL/ng3vl+ZrkxX0hNj9XB15bSOgZL1tHFpK
         0RwVg/svY1czjzKZqSVu0yS1v0JzclAc61tUecYB6nmXlUMyw4Pxd3bsl5xutb0xhXI6
         jQ6qGJPCh0hY4nQhdcVYhYp+phI4xjmCJeSFjnpXxC1WvudgCDiyAQ6tRFqdKkurTaiz
         MmMos6mX7Hsa9XK7pXFk6dgyvY167mQWmXP+5IJc1dVUZhmSoV1xS1uXRd7xRP4V73+A
         xIgORpfwMs9xwm1mdACYVG2DVVYDo53XSHh8hnAvZ9ghvm/dPN8mfMCv+esg14Ic+7Uj
         xT+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SAmSk3gZlZYj5zyReX4QZAliZEDf6A0ctieXcclN8iI=;
        b=MmoZ99v++wjBKGyoBF/uPahqL6GVqPGdKWtLuA/NI71vxJVIogxoZGGU/R8uKtvSVq
         CNnLfdbJ+lrXqbZwKTYCQVITtTA0Zgc2fcfmwCd3brgmktl5HFLfvcHke1qoofiFQ3Tb
         ARzHspSTIQlxKWjYKUXCLf0gEw/Tofx3G7fLZnvVJ7X0MSAms1sDLGdvfoYP9wkF8bQg
         yJsDKY4QY4xAlNiU0mzNyesUIk2CugKJ2UFjW1kabP7ZV2/KzkuDBSftNYjfqngtpzPr
         3Ud025dElaEDXKsm6CQ4E8gXzBqgz1GUAsJxD/dG2GHq7rpP9Jkv+ENA1DMGtX/mhdgx
         ubiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SAmSk3gZlZYj5zyReX4QZAliZEDf6A0ctieXcclN8iI=;
        b=BG9xlPy0crSFTzWFdZAHRAYkVW2e1+evtqwL6hJVL73ltIf7S60+ggMku2GaDx+I1q
         4cl5FJfddpKCh0dXDFdKWfu1vvovEvVu5OqpJRGS6LTpuDsHsXWnr6Ujt6n7tssBglkt
         p8U/qrarL5cyZoPDpOFl7Ir5BbWTQM7MqQVuk4ACmaRA3V8qVd0k567c208UN3HFUwCg
         appdeoI45HS6WnheWab0CZA14UFX3NsYG626RspXtxsG05+NIx7/ErTexO6K56/Kc69o
         6zgA2+lJj14NtDbzaAGJ8O7W4gWO/2EOxznjMF/AUNu8HJf6fh8NCKvFRZOBRvB6JeX9
         2dsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OulbsfVVAQs2753wOEtmI3rLJLe9HoF2U0B7074c1HWr8aHcQ
	v/TKpW0k1Ri2WYOJAQRnN/k=
X-Google-Smtp-Source: ABdhPJwmJ/RdcEIsvstC1FZiMvuA4O2n94OU/QW70rWTre/6kbWfj2yYL0AJ/XJ8W55DVuhhx4q0hg==
X-Received: by 2002:a6b:b2cf:: with SMTP id b198mr61459039iof.19.1609803292227;
        Mon, 04 Jan 2021 15:34:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:845d:: with SMTP id l90ls20139997ild.5.gmail; Mon, 04
 Jan 2021 15:34:51 -0800 (PST)
X-Received: by 2002:a92:c104:: with SMTP id p4mr72000922ile.228.1609803291826;
        Mon, 04 Jan 2021 15:34:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609803291; cv=none;
        d=google.com; s=arc-20160816;
        b=wpNw5UYFcnsDQFmE4n39a5+ylh4V0IKwEUKAEnBgdsjxCslnOzV/VpJaRjEBocdco9
         tRaIvVYW982WRtN/JEkWsn8KF30HB9WMxfNGc9KYIDA/KtiPBt4peP4gpqth4B1+uDW4
         rWX2lM/mj/sscqCrn2mfHXj5la8khFnX3MfEKwLvYYq39vC3TA3g7Kt3f0lvKQW5GvJI
         /nkPtMW+AFRBmI76YHbWKR5EAGvM6d2q0Iy8DIvb61AB1x1T7rpn4PB/Zqgi9ychGtOW
         VrEUSBkWksnIOIwmtuAnyMXypOKLiJi4XR0pXJXSru9nNNfjDS4RoEVrE3s3TR4UYw6R
         pNOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X97uCJbbPtgQJjHkz/WOFp2vCTZb6uVs/5ruurICYkw=;
        b=r4di+6V+BXptRJ1hr6qobupNx2oqQrbvTBWOi5cCuzVYRGQDVqAXiOpdd3w7603WS1
         d1PKWAOfM1wKG+fcUNIpmPME6/VAXFfgrUayC5IM6O+FK9G8E53eNLL/ubdFn69Idblm
         nwi02ZXMu57Z+qSgJVKuLWG01PvAzSacYuRgi6W1EWXan2Pv3GrS5c8XjXKc2CBWfg15
         s5UsbumTl7p4fYAsFxbQwzlldhGg6FWRRD43+x/06rtGHzkk+ByWiVIWaWY0gMDhd3Hq
         jiGs5d/gVJIee823tX4fXoqHsqGg9nKWLPQzaSL4ulJUcXP6xJstlynzlbMTaoezxKrk
         wn6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULBNjuLd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id b76si5504706ill.3.2021.01.04.15.34.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 15:34:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id h4so25137167qkk.4
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 15:34:51 -0800 (PST)
X-Received: by 2002:a37:b4b:: with SMTP id 72mr74113122qkl.48.1609803291325;
        Mon, 04 Jan 2021 15:34:51 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a22sm37751757qkl.121.2021.01.04.15.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 15:34:50 -0800 (PST)
Date: Mon, 4 Jan 2021 16:34:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Marco Elver <elver@google.com>, Arnd Bergmann <arnd@kernel.org>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <20210104233449.GA3382424@ubuntu-m3-large-x86>
References: <20201230154749.746641-1-arnd@kernel.org>
 <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86>
 <20210104153333.4b6c7ae49edc4182d53bd17f@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104153333.4b6c7ae49edc4182d53bd17f@linux-foundation.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ULBNjuLd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 04, 2021 at 03:33:33PM -0800, Andrew Morton wrote:
> On Mon, 4 Jan 2021 15:33:36 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> > > > +++ b/lib/Kconfig.ubsan
> > > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > > >
> > > >  config UBSAN_UNSIGNED_OVERFLOW
> > > >         bool "Perform checking for unsigned arithmetic overflow"
> > > > +       # clang hugely expands stack usage with -fsanitize=object-size
> > > 
> > > This is the first time -fsanitize=object-size is mentioned. Typo?
> > 
> > Copy and paste issue from CONFIG_UBSAN_OBJECT_SIZE
> 
> This?

Correct.

> --- a/lib/Kconfig.ubsan~ubsan-disable-unsigned-integer-overflow-sanitizer-with-clang-fix
> +++ a/lib/Kconfig.ubsan
> @@ -122,7 +122,7 @@ config UBSAN_SIGNED_OVERFLOW
>  
>  config UBSAN_UNSIGNED_OVERFLOW
>  	bool "Perform checking for unsigned arithmetic overflow"
> -	# clang hugely expands stack usage with -fsanitize=object-size
> +	# clang hugely expands stack usage with -fsanitize=unsigned-integer-overflow
>  	depends on !CC_IS_CLANG
>  	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
>  	help
> _
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104233449.GA3382424%40ubuntu-m3-large-x86.
