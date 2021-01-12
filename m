Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYE3677QKGQEWRXHWAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 841462F35AE
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 17:27:14 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id j25sf3809038iog.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 08:27:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610468833; cv=pass;
        d=google.com; s=arc-20160816;
        b=VuDs3CWLuoTmtXZB7zGruwGSbLbLwS14zPH0WVhHIUT0UrS+DcfO0dyq58s1FXv3Al
         twZWjvne/lB500MnddoiZAP0Fe3GwMY2nY/wjmGDy8pjAwpcn/LfgMqRQfhOI5ynPnMX
         HrHKQc6fxtbCTjoEoI2kr04MAbLoL97lZJfjUki3iOPnNv56aPI8Q1HGRtT/KK1ixgtL
         pC1BqgxXPrL6AhDfUacJyGdusVicQ2jhLUE09Q+nXDPUKZfua2/79kpaF5O4cmtNd7z3
         TTNc+i/OVjuSkmESm8paiSppXK0uz2cJrHqlAbgYVGkufE2POtcbW7VP4Z/l/ThP3brJ
         1TDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=L8TSjlnh5G+BgjRwDMGcwnn7QJdyetJPHJmYiuHTJjs=;
        b=xEHQ+soDdTUQIBPLYyZ5GqjpFTj8kk1Q8G4fHX1Tj0+dZrcZuXWY4tYcuJ1Sh1XqTr
         dWa2Q5XK41LnuPZ98x0AvFP0JZu4H/yQEj6m22VqjDjMNshav1WbaQrCYoTfjuUa+lrI
         QeaDGTAVxPRRREKKGZgzqFMEltO2d4OkOkXnJmqfsapDO9py8fgb3x+00UasjXBjaoOQ
         VaKMk/wgIRWlfjkD0qw423+5Jrja0xvqpEIRGab5tP1/OKjGbzdWQKsOW6X3ivtP8e29
         csHBLsbmcjn21vj9O52g025tyaAcPxBw5R9EFLAD3OBxpfKGtgRZ31FEbkYl21Pd3oob
         VuuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvBoBNgr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L8TSjlnh5G+BgjRwDMGcwnn7QJdyetJPHJmYiuHTJjs=;
        b=lS7gPUjJF2RJadbWNLBh5bnSOn2TBuAZQHh9m34VXIM3dl0CSvq40IOOXE0IYQvOqM
         guZhVtfdbOOa7lPND26QqvQQK0pzyGzKP8QHrY939tXqRF8hMBl/vUFB59XER6DmTHRW
         DCBIeCGZL4luryR6y55YtvVGe3gfPRl0WsW57tFRrYVCI3sINZzqHx1ai35gMjGdzr2o
         MPvmHUl1FSe1lPXfdl4PkTWs3viCjaZ/cnhFbINXUB3AejrMTfMM3CZASrrX04BOWE8g
         /aObeoyb6uZ8DEcMcME1q72MA1CHvCcleSTmGV5YGOj7PY/CTJ6P+uvExeBoa7fZvGys
         Q+3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L8TSjlnh5G+BgjRwDMGcwnn7QJdyetJPHJmYiuHTJjs=;
        b=T36cEzMp0cNdPb8aFowXUIgXq8G5WUjdlV3FllIOLXNT7T3+gQtFXVFKFG38T0Pbaw
         QmtEZz5V6x8985LAI8DbAzrwzZzdoPrEEifmegCzctv+tqGjOoemdT0D4y6GtVhoN3Gl
         afwps/wIrma25GOageYLKEfBZNQOYXm7Cuqpzmhe5ux4m0lR/rJNzpeFX2WNNpJCyeOo
         sS460jy/yO0YZcMp9FSXEHAMafe0PjLnsN0QLfozUoFYe3Sr0U/nucvFdJINUoeiU1aR
         igtXjtht5yfT46bow343FkyoMdrk9RDueYfmlmc1wR1cDQITY0WpWT+f0KRm0NGDqYJ9
         8VCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L8TSjlnh5G+BgjRwDMGcwnn7QJdyetJPHJmYiuHTJjs=;
        b=l5xiRHwKma7rFak+aX62n+Jk/IUe6xQ7EvUrj7uidtpAFFT44//cM7Zeh6hJ1R8y4c
         tvf22TbtZcuG1QGFbiw/z8UI+O8bPayWAicM6R/CuWzkjhkBIOnH+jrXWuQYEvEZl6Xh
         mZu4ZKgHRurcWieC3Vp8Oz4gZcGW0/7ZJFWpjhVMEDqmX4LcwvrptcCdqBuTXQ4xFI/L
         1d0YzD2eQdJx6tuP/99rSo1wQph14ViwF5n7JFsjds65MleFyHL48hH4AE6MHmyuXQKQ
         55W2caTka34HIDi7ceKuf4bBWvPnLeSSmx22yjc8sKPstBfnyfrcSk+r43DdII63ks5M
         C1WQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hoCLxRfWpTvSxR1VjHiBEUO5RTjziT73qVCL2IhAuewnKg3JT
	Fze3T9VA/DYspj4PyiojcRc=
X-Google-Smtp-Source: ABdhPJzZ/y+bWUFiLrhGiycvvUMjuoSdixorccsggoqDlfEJErRypf4qlhSMI3Mp8PHVIPWpcztG4g==
X-Received: by 2002:a02:cd2f:: with SMTP id h15mr139639jaq.37.1610468833091;
        Tue, 12 Jan 2021 08:27:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b0e:: with SMTP id b14ls950235ilf.11.gmail; Tue, 12 Jan
 2021 08:27:12 -0800 (PST)
X-Received: by 2002:a92:d4ce:: with SMTP id o14mr4676506ilm.1.1610468832528;
        Tue, 12 Jan 2021 08:27:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610468832; cv=none;
        d=google.com; s=arc-20160816;
        b=BUDu74TZtk9GpjUmcTNax4t48ra5JqHJhqtmuu4f6fFphKG7A3tGTsizZnSYcVh5ha
         GFwH2w7dV36OCHegB3qGgPkncj0n2NAK58qAyy6wDb9nmnM6vmviAOC6MG5XJU9zo3vf
         t1nQpFSlBou9IHg3dZfCAuaO4CB2EUcbvKMbUHxJF78nSSuNb6A5cQaFuZw4rqWs1nLq
         5RBDhK5F9g/NhOKYnhWiNgU9Qk5SDDQTxTXUF0YO1bFv06i4XvYrej/9b4Is3lwtYyAA
         3Wp30VIFQDP/VCK7NN433ILxAmhkI2jxkbmkh9m7F+vE8c6cyjetIY1Eq/jRZM7McHpM
         ZS1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m/xAg8dQShPpmnR3cYTeN6zfiTB1lY9fOhPpNHe9wdA=;
        b=t0Xb9bJhJOnyDFAfCtI4Jhyfe90IpSUNu11YRI2obl7qqPvzh9Nd4GrkFmumvyy6Ru
         T5jlmNBT0pyBXLMTfKXSf7x9iNoYgXrjiv6ZT6eX8iJCt7ZO6XB9/GQLY+TecLN4xNlX
         N3OeclHhPPGv44j18fiufZFpn4U1EAOnBtkUxb9eUz1FupC9mVrtQEGDIAIH/rBx/NHl
         RdQMw1CwOa0ZIeZ1Pz2IWuN01ZWY1tE3CRWtKxhWqB65EdVGQYnC475iYzGCQf6bhouP
         EZNssG4UQfYI3Bbn2z8kCkdxyu1x8lhvq8ecQ/JWpNnv4D5XlvydE+UW695LLdrM8205
         dkBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UvBoBNgr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id y16si376722iln.0.2021.01.12.08.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 08:27:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) client-ip=2607:f8b0:4864:20::834;
Received: by mail-qt1-x834.google.com with SMTP id z20so1917853qtq.3
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 08:27:12 -0800 (PST)
X-Received: by 2002:ac8:4b48:: with SMTP id e8mr5515857qts.254.1610468831920;
        Tue, 12 Jan 2021 08:27:11 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a22sm1508160qkl.121.2021.01.12.08.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 08:27:10 -0800 (PST)
Date: Tue, 12 Jan 2021 09:27:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: fix link warning with XIP + frame-pointer
Message-ID: <20210112162709.GA3373722@ubuntu-m3-large-x86>
References: <20210112154658.850192-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112154658.850192-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UvBoBNgr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 04:46:40PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When frame pointers are used instead of the ARM unwinder,
> and the kernel is built using clang with an external assembler
> and CONFIG_XIP_KERNEL, every file produces two warnings
> like:
> 
> arm-linux-gnueabi-ld: warning: orphan section `.ARM.extab' from `net/mac802154/util.o' being placed in section `.ARM.extab'
> arm-linux-gnueabi-ld: warning: orphan section `.ARM.exidx' from `net/mac802154/util.o' being placed in section `.ARM.exidx'
> 
> The same fix was already merged for the normal (non-XIP)
> linker script, with a longer description.
> 
> Fixes: c39866f268f8 ("arm/build: Always handle .ARM.exidx and .ARM.extab sections")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm/kernel/vmlinux-xip.lds.S | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
> index 4d0b0cd9222e..ddb70c65d525 100644
> --- a/arch/arm/kernel/vmlinux-xip.lds.S
> +++ b/arch/arm/kernel/vmlinux-xip.lds.S
> @@ -43,6 +43,10 @@ SECTIONS
>  		ARM_DISCARD
>  		*(.alt.smp.init)
>  		*(.pv_table)
> +#ifndef CONFIG_ARM_UNWIND
> +		*(.ARM.exidx) *(.ARM.exidx.*)
> +		*(.ARM.extab) *(.ARM.extab.*)
> +#endif
>  	}
>  
>  	. = XIP_VIRT_ADDR(CONFIG_XIP_PHYS_ADDR);
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112162709.GA3373722%40ubuntu-m3-large-x86.
