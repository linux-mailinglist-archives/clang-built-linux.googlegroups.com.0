Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYO353WQKGQEOYHWTLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D32FEBCAA
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 05:00:35 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id t28sf6080311pgl.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:00:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580833; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2U06c9lz3s+7LTOluHwIJaXtAxWoozp9ZrqF4gQMsFdthhL2cE0E++bqDJq2HKJqy
         FzVUWZYRATKjYUAx6BkHsginSTHGV+G64iPCW1uw1PT1RHdKbqg/WLs5Zpzz8c9HTiQd
         8RXDDtkIPajOqJ6lVbrRIfG6tZf7TgllRpcWk5CrEPz7gmHzUbzha4NuYJK+WxO6CEvf
         fBA305pW4ccLWtJ8c3DSHJKYGoNMnlXxtxkLvxG6HhSiouzwozU+VJPtrbX5F290i6Zi
         fIH2bC/VPzEVxcUglwbdbp/VvTzifUr1L6HkFWnozOUMwyynom9MSyou09XBLOfq1cjI
         f2sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5wFdX9Ka5NcPRqvouprZmhlwsoeLEVWZbpO36fFyDOA=;
        b=MdElj5SICeeGT6tXQ2UPca2fqsd9IvriQ7eFXcvxyAjj0geOtpxUouhAucHJyDuCnW
         uNJFsYrJC0EKJexHMMFStyG4Eam/yDw6QhG8aSChv+wPxLAsYx1xDeMTiGTW2XmnkibO
         lCF2+17FDLGHmecZEfG4ROL3MszWNn/vMcmY+dgOd6ynnYF/otrGkYXOLL+pRgTZVKuc
         203Yn/MoPe1lVDN2x3XPGbMawQ8vPZZ/u/DomzGwo0gTPl3j4BI6aqlQQBTtmW/XfSSX
         dQIyhyCUkxVQGcrpL8xxJ/FU0gDZ/x0lmD0xjbJ86RLEvU2nSrS1vClg3cumTr5bVB3Q
         KOnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gAic49MA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5wFdX9Ka5NcPRqvouprZmhlwsoeLEVWZbpO36fFyDOA=;
        b=Bb7/BvIJuIPc6G2Un5vm3xVt5DjX4p7KoQyMJHEtrlPLE4+j5hm31wfRgOL4a1Pf4J
         lbGbhUZYbgNw/gDtEM1VUFOM/XD4XeMoHN9yLT0wvKURa3JULfWcAeuOMhRzWQgkRRnY
         5ll4zeQuKCmxXUK7ctprjZU1PGr7V+agRk8Maiv28+Hk5PFd1KGDlijnFTaQslq143m9
         ERmD+TIDfKdxFi5hOhAGGBYEev4ZUrPjaghv/u2kfdriGvy9WHrkxsEJIPpXmT4+hTN6
         GFdjjPrDhWRh+z5rB1Ut73txWBSxkesWhWXqT1pe3OoPpEj/92fX5bUOk6Zr2iqeWBXZ
         sXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5wFdX9Ka5NcPRqvouprZmhlwsoeLEVWZbpO36fFyDOA=;
        b=sYS1IaF9SUca8GbBF/81mNhPAjgbi293wD94XR3pewiFpUu+3ffuDI0ifIBmW5qEFk
         L0shA6+09suKyoXmW0l6KZF0CTrp02uDDEj9Rn0xmDNmTuLmYZKjoq3+6H/+aMOW2dyM
         yif+lntBVZPGSdh90Kcp8uQ6gcUFusFwJ9R0rpIQZRLlA2EwOSaSk8NJZfvbeRD5pW3i
         IwPbowXVwDo31VrjxYuP+jYAdbwst1GuS+ALJOfuSL72ZYETfqXiemjJqBsRMHWHmRN9
         1awMKLyAo8YlIQ6sN1Sw9ydGn4mNM3UQAB+yz2RS+aFAZIjAE4oEVs7V98Z7+AFZWJ1m
         uGOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWby96MIyYzrnG0F+5A3JBm5z1DhUHR6/ceFcVnbn2p7qL4mBe6
	ltT1cIgj2ZMPHEWVzEj8Nh4=
X-Google-Smtp-Source: APXvYqy/g+FRszHR+omhNnRIjarS96OhYbzaXEk8ye/Pz2xv6teyT1TD1sQMg6Yxisejq+ffltNH7Q==
X-Received: by 2002:a17:902:47:: with SMTP id 65mr10003627pla.94.1572580833676;
        Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac93:: with SMTP id h19ls1260443plr.6.gmail; Thu, 31
 Oct 2019 21:00:33 -0700 (PDT)
X-Received: by 2002:a17:902:1:: with SMTP id 1mr10009192pla.338.1572580833239;
        Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580833; cv=none;
        d=google.com; s=arc-20160816;
        b=F8nlLOdPoV9bioVb0L50pu16ELn2r+RGWw5dUhqhqX4wNXPUODLyEkaRQUrZh0XhqJ
         HakHCkPwTrOiiMV9YsAKoiJEBcKgbJqqqKVvLgwLEewjeSfm1ObvLM+hRaNQASqKuc+w
         /SxAV6sBEJ690oZ6QGWfnTdxHo9v6RMBBQChqgQQmV1gB77IimTdkZiNRKI+Z+QI/klq
         roaczCd5jzrVkdCOc4SEzik+v33DTBCk21BlPSWUTR1b/jEi4egJllUVxWDrik/Ayw6p
         xis2K/1l1RKlhH0RNsPy8yPSpK/13qhJsR03hwOO1JQpUrZlY2j4utHYKY6wkl/dZ1gi
         MM3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DqG2K0fvYUAA4E302d2Wr4MEutud0mjKuHdZBEE6NhQ=;
        b=026SqanVsdhU/3X5n8XJ7BAcdD8lI/tCon7X2Te+aomTls9O/XLSeGXguvOGcvqYCz
         kNMRNN5HN9Gp0AikPcUYEi/R/TkWWt4Dkraq9nU6I0Mh8ZY3f+qetJiqLscywIcM7LSV
         1uftZJCuSw+mlpdh0KKCB7xLaBzC9vx9pH9eqQVVeRc4bjATZuiyrScF/UsTFNkBf0l0
         7FNAEhX0ZnbBHEBFZCLWEiGambKaC6eA8PZ80loBx62t5gepyw/A9RxJDgTX9pbqx0ex
         28dXYIKoX1bZ/6deXigEUfCA5T9vj9MDiluQ0dXDBLLJ3wAnjpXIsriLHdmkyvTcMr+j
         /PGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gAic49MA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s26si184288pgn.5.2019.10.31.21.00.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e4so5625356pgs.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
X-Received: by 2002:aa7:90da:: with SMTP id k26mr1506175pfk.162.1572580833083;
        Thu, 31 Oct 2019 21:00:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s15sm6603181pjq.19.2019.10.31.21.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:00:32 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:00:31 -0700
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
Subject: Re: [PATCH v3 14/17] arm64: efi: restore x18 if it was corrupted
Message-ID: <201910312100.E35C214206@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-15-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gAic49MA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Thu, Oct 31, 2019 at 09:46:34AM -0700, samitolvanen@google.com wrote:
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code. This is safe, because the
> wrapper is called with preemption disabled and a separate shadow stack
> is used for interrupt handling.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..945744f16086 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
>  	ldp	x29, x30, [sp], #32
>  	b.ne	0f
>  	ret
> -0:	b	efi_handle_corrupted_x18	// tail call
> +0:
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* Restore x18 before returning to instrumented code. */
> +	mov	x18, x2
> +#endif
> +	b	efi_handle_corrupted_x18	// tail call
>  ENDPROC(__efi_rt_asm_wrapper)
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312100.E35C214206%40keescook.
