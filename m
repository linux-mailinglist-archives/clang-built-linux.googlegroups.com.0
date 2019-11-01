Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO6V53WQKGQEOULU5BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 948A2EBC79
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:47:08 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id g8sf6248684ybc.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580027; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjvW5SIw2AZ1izjLOmV9Aha0SdbLAKhoPYmb1Qv85dtKKc1k8eKfCtbQxMPNLuegJP
         SpxfVimO6Rhmw9MoiOkcsIhTN2RrBYOstQB1dSp+CtZjlmUk5kvwNeN6ptU56Ywq7H+e
         sm9K0sUtsw/FLfZ/G+C71P30NgqVLq6c0GGtVM0XgIwfaqRrsx1i9tsdET6LYncedcMO
         3WbSZVdxZP07mgfZRjpGJ26Q9CqZ1pm+B8i+hQU+w1lgI7rHxL+cF6STiHDTx84iiAzj
         YCfFtRd8ETGjnazpH9bFyF3RwuBdzt0pqshCzYHd0PESJziLdCs8r0bC+l1tor/RFHdx
         ZSFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=acwhpqjqllUyrlm5QQvU4UstLLYncUUUe300JtDQb+A=;
        b=yxCcHxftRNfShBkSJmCPKS/hkbvTO+X7rVuzM7y3/YYLuwdfuSrdnD6qpHn4c+1ulC
         qnXPZeULXy0bhx8zFRWHfGwpoXOV3qbXmtlc7EoSfILWvaVNM8Yvt88RoKOL82Hx1gay
         4k1L7ctQxWxsfz2L23SXfk4+CNkYILL20P0lpU5cnNySQ3fII7VqO9bInM/qBqkxLq3B
         UEG6rggt2n6jVQgKBPrkD8nDPCXUnfQ/yYW2xik9dKZnPe7GX7xH4VvebvTCx0a9j1Ub
         BB0dzSy729KP4aBvWD5OTkbkznjwu2ESB+xQZFdEbnTuVpZjvgkfUBu1akFU6HxwUBlD
         xTaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OUr7ArDi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=acwhpqjqllUyrlm5QQvU4UstLLYncUUUe300JtDQb+A=;
        b=WQTAgKQV8/iukVd3RO3DDk+urKgIxP8+56jnrx9nAq6M4r9e/CG/Ay7xn2yqZzh6Xs
         CQ/nBkQBPFBHLarcbn3SZhSWRZ4TfKSX7ZpT0FwAc4p2R2IsQzvhS5vo4rV9XarLh8b8
         VLtdvumSq1jOpM5H0Zx6jnHeoBQKrg+9UGQ5a+/yjvWmqXtWQESaJoachIqoaxtMKt2I
         MAaOp77jxtUz8pjv3BVg5iR9euM/JGHizAZaEkRqQuF4fgEF1rSI7yz4ZN8ea0ihHMLi
         OK/gVWerErqkcrSj1HmCTpUK92kkPHDpFrZW/TIuDdtjMu6hiQMdqAQTS+nUF1tFJskA
         Yv3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=acwhpqjqllUyrlm5QQvU4UstLLYncUUUe300JtDQb+A=;
        b=DmfAA7Cy7lDv1lmG35IIn9LOeya7Z9aFOWxRZ5ElXDA6OwtbO9AYMs2Jty6HYwEHkn
         xqQ0s2KOZU1pyELLSqy8ndmVlCO+elIot+dOySq/hrUNmj+D3RW+a+Bf+e4nn6/J5O7A
         jr8RWuxyZWTygYfvKHn0OCnD6nhdrS4IV7nFqKG3CZJHz4D2Z0a5x4W3G2UnE8VhEdKa
         yFGs1fX/2o5uVIdKVcdVmPF5jFsshLMQLBNC7j1W68apd/kX20h2l6xPi3un+AKTXoxB
         +AHUi50y1ewUG8ZvlrEC8BmiqDby3+VUPsJhLfxN4CdVxmipp1Wb9GYm3RWFLLJD4c5l
         RgXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWF7BwjbmROZQua0dvfcmxaC85okhRRYZSKBkVTi2fTv8xrRytG
	RjWjqBwuSnHM13P7X5IjMzU=
X-Google-Smtp-Source: APXvYqwxLkJ5D5yRzTe6H7joH7icNFz9mKJPkVDNgrFEpxd4zA9STKc3yfjXBuwTvEIbrZO9npXgWQ==
X-Received: by 2002:a25:5542:: with SMTP id j63mr7461949ybb.76.1572580027334;
        Thu, 31 Oct 2019 20:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2388:: with SMTP id j130ls837290ybj.7.gmail; Thu, 31 Oct
 2019 20:47:06 -0700 (PDT)
X-Received: by 2002:a25:c104:: with SMTP id r4mr7555235ybf.160.1572580026919;
        Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580026; cv=none;
        d=google.com; s=arc-20160816;
        b=n8qE2jeA2TPUZbtHS+ms0Bro0A/zO1GgodmdLsrxMT4H9s57gaNYrcsTGvjQbcdqdp
         x3I5l7BotmRpewg7A/c6O348YdpvvQGoKhiOgbkdeiakokGy1xi1VcdMM8zMcMDbu57B
         5Xb7wAwZ+4/1tSJhkgoipD+Et0RnPe06R2UhThW45f55lVpRLFDqUKppKzXbzjHQcSLz
         q5kYUBLz+f2ZvSTFUpgbRM97np3MrPSIatmcIwoKDjict/nL4zVv10uQW3i0S3V/B3++
         lXYB0Wm76ycFidYKxG1Hg6OxqjlywrAZaVyFTReQ6heW3ZA6VPWKkkg5lYQ/f6KJs0JO
         +LAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u5Q9VGAIWgqBExeYcYbdu3s9udgqDxFzlJQ7eRueT/Q=;
        b=Vycm+PPOdvUlLKiW3cwyxBT5/evad6jjPHHC31e+SgLdkmkf1aFmHHu4Zi5f8zKP9O
         HL61simWSghgmFcFZCN5PuhjLj5olCB7caIO2IpCSszBDgM1sHlBTxxMjgYBR0ERuY2f
         Es3hzv7rPO1qpWu4BCP+nDY3RmC8GpgbYMhyZROKIy03eWQNrbGXWJk8hZuumd8muYsq
         FAhNp18wSD9sLVz55qBVnV9QHNDUGDA4CgjeF2h25aNn9fu7qA8RCkDmxeCUr/Tc3Jpz
         bUK1zBlpuYcBJhkals0xfDTsNUFu/xVacoyUiyl4lnU/ZWQqC3TLH3VrTTog+tZRiQ3g
         Ceaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OUr7ArDi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r185si604427ywe.2.2019.10.31.20.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id e3so1628927plt.7
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr10476445plz.323.1572580026099;
        Thu, 31 Oct 2019 20:47:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z2sm5943741pgo.13.2019.10.31.20.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:47:05 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:47:04 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
Message-ID: <201910312046.53A31D394@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-5-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OUr7ArDi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 09:46:24AM -0700, samitolvanen@google.com wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
> which will shortly be disallowed. So use x8 instead.
> 
> Link: https://patchwork.kernel.org/patch/9836877/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

This one is easy to validate! ;)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/kernel/cpu-reset.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
> index 6ea337d464c4..32c7bf858dd9 100644
> --- a/arch/arm64/kernel/cpu-reset.S
> +++ b/arch/arm64/kernel/cpu-reset.S
> @@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
>  	mov	x0, #HVC_SOFT_RESTART
>  	hvc	#0				// no return
>  
> -1:	mov	x18, x1				// entry
> +1:	mov	x8, x1				// entry
>  	mov	x0, x2				// arg0
>  	mov	x1, x3				// arg1
>  	mov	x2, x4				// arg2
> -	br	x18
> +	br	x8
>  ENDPROC(__cpu_soft_restart)
>  
>  .popsection
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312046.53A31D394%40keescook.
