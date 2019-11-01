Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQG353WQKGQERE3AOQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBFEBCA5
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 05:00:02 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 195sf6096156pgc.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:00:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580801; cv=pass;
        d=google.com; s=arc-20160816;
        b=AbpK8MfLSe8Ccvt7jal/eCQwcz/PGqw9Z3CNw5O/GprIYK/kSo2a/rQcnTNKY8FTSV
         MYcgQ6mmO7ZR6Hv2BNZjO+K1Jx0NKaJzO2f0S92lyR8E+8jwt7hyEiCvVb2GRFuG2av/
         qCGIOe8zXh1MHuYTS+71ZD5cGVZGSc83scHdipWP2GRRZBBKZRqxlO2x1PLFinMeC6KU
         dUgkT/XETb89v2TQ4aNZTymcLf35Oum3txGg6h8kg0+TsImlB8nW/CyI2+fk5icgBy88
         io0drY3fP1LYD2sf1Bk2Mq1f7mbEJmKvbliyrdd34iumsd180t6AQ/AuEkzKf6jcro5w
         Albw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mHUbj6LZy1CLPLZsdXbjsUnOUR77wYGCvUFwonex8bU=;
        b=dSSFgENfeVGv+jbz/gOWjyBkSAOe5AOIcxo/E7dMqxVEaDACt0K3+7zTnVKCfTEbwQ
         qGdDLquHMhBCvpyyGo2bt4qFoXJgYhLQJW9jX1Ss45aPobo3NedQ432ELjsA1l20cYER
         s90vUPsE+EZ3vyYST5kYcF7bcqCBuRAPL+U2Qd3ltc7d4jqM3LrrMbjY/m6Zt72asl9o
         O4KrWUunYcevghAElLal/y7hHchbCSkzbe8Fi40wzuCo/51zs9JZGwjOeLtlHhdwP3Bp
         deS7VU4TfeMRRhf3aQmFGI73XaV+9pPx1iIm6viv1efwD6BrPpwuHXJcN0Hq6FQq1jVM
         1l5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="SoIAx/f+";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mHUbj6LZy1CLPLZsdXbjsUnOUR77wYGCvUFwonex8bU=;
        b=qh2Lq8+IARoW/xyTGsuag3UjLR+yjjioPp8mj4aS3b5Fp6z0fMTW6y0bEpQX8dLSGC
         B7Q8u34VOurCX8jTU4sB205cXYI60E4ed7ddF1ajbT8XUnjo7p7OFAUa9T6y8ZbuPHW0
         0+ObibqIEStQVJV/XQUZQwk+jk5zWLINJodAH3n2f1WBjV3gROL8BwLyiO0urBDs4i6r
         G9Oum8hIWHWUf15g34jMJ1N1D0algHu3tw2grje9t4GNXCMU988bSN56LEC+eUXgoICs
         0CF/6p5gJcg7HUpMOCse0iiPYgPATps9AnAnjFpAbUGl5Ah85QkOWrGMloBcSKF4mk04
         x+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mHUbj6LZy1CLPLZsdXbjsUnOUR77wYGCvUFwonex8bU=;
        b=R1FGgV9f0GJ6uVd9wuDJGcAPT0YMcBrRDtpXnMR/e3GCdgXfAhewgQMgO82bfwpGqY
         HOf9qUZBiCJWxUr4vBhrfvRvLY4ohz4+zweFEfCB1xBAg8CGvWRXjux/Ny2vJ02WU0YV
         oi+bsZLGS/Sqe5BaQ8Uk1J0Q/zMLPmr8Lpb2kIKWQ+OEguohM91Bn3dFMOqMZIUmrpJR
         KcljByA4HMBd27cJwVQTLWz9IIpcuMy87zPqx9RVRzjxNNOPptrw59yOJNu8HUX7KwoK
         qqxQU1tThkQdp13FUIqdLC00ZJxzWrbAS2A/4Kaxv03Gj8ZJ+jw9g2oSVrs2sJ6K2PR7
         lQow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5tvv6UYvXMbwQZqcdqeRAetF7nsHtoZCxtoqiu+HGoARupFZv
	iuXJ7RGTAPm1kBbJRgx32sY=
X-Google-Smtp-Source: APXvYqwI0E9MSDmMP3vHNZCdhVasNMliRu+42cdzjRji/MztPb9k7/U9qI+HnTIABZDmyVLMUJenbg==
X-Received: by 2002:a17:902:9b86:: with SMTP id y6mr10462971plp.84.1572580800820;
        Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501a:: with SMTP id e26ls1256155pgb.3.gmail; Thu, 31 Oct
 2019 21:00:00 -0700 (PDT)
X-Received: by 2002:aa7:95ad:: with SMTP id a13mr10957222pfk.216.1572580800365;
        Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580800; cv=none;
        d=google.com; s=arc-20160816;
        b=aq+G9+CbHiYNL39q1EZQDiLnUBp49zgeO+Ua/pEJ4Iwj4rvAfElPDprqycp/71Gp64
         TwXlKJrYG6qNBDXmydy4SY7v0+MMzsoClU+sHJFAeI8lHDHxni97/0QjyV9cxJyen5II
         umCPzDLCus2rFGwXZi0imaSv6hLdPmgnmnjZW+ws8swfztKrL1DZPLGWF0qGCB2PcA4B
         R7HXqfPr6LGQiYdWKPG2vgEX2Yb0Sv7q6uEaXPLKiWWfQPyXuiIGp5vkR+15Yra/DD5m
         xLVBr3/60BsvlJ7Z8sPeNsKRmRwen95W2IVmh1Ojb/oLiLs1iSgHkR2SAVrkzSsjd21K
         JIBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A7vrO+MQB63nPz6FPwTRdUgznbxQobdODcdehGRotvI=;
        b=W2PN9kbAq8f3f54aEtGfbeM6h89UgTogNtCjIJaYw7XHEwdJCUgW/tubck78JLaa/l
         H/SYTfGknxvARUhd7yWGxlN+/0B40EEKl6fHMh/J8//uZC2KsQXRILo5R7epFn8yjlYa
         VcLEgwCv3YT2+qsDE3T3Uhlc+B8EOsSaIQ1W1wPm+0y5ay0HyE50sUYi6qc6KX3b1gpC
         j/mz2JxYDPp50RYII/oVf4XaWrdlD/AoQkrIhwzmKuaPYhpnmOA143BXeLcQBIebhnKQ
         J1TDVL2L4amsynuyrRnwK69l0PCSwecrC/jbW02ryNmlyXupCNFMR6O0gbVSszV4IZMi
         xK3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="SoIAx/f+";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t17si407605pgu.1.2019.10.31.21.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c13so6091850pfp.5
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
X-Received: by 2002:a63:611:: with SMTP id 17mr10933319pgg.191.1572580800014;
        Thu, 31 Oct 2019 21:00:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v19sm833472pgn.84.2019.10.31.20.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:59:59 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:59:58 -0700
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
Subject: Re: [PATCH v3 12/17] arm64: reserve x18 from general allocation with
 SCS
Message-ID: <201910312059.C43A11D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-13-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="SoIAx/f+";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Thu, Oct 31, 2019 at 09:46:32AM -0700, samitolvanen@google.com wrote:
> Reserve the x18 register from general allocation when SCS is enabled,
> because the compiler uses the register to store the current task's
> shadow stack pointer. Note that all external kernel modules must also be
> compiled with -ffixed-x18 if the kernel has SCS enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>  					include/generated/asm-offsets.h))
>  endif
>  
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS	+= -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS	+= -mbig-endian
>  CHECKFLAGS	+= -D__AARCH64EB__
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312059.C43A11D%40keescook.
