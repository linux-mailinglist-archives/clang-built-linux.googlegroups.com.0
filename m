Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNEQWLZAKGQELLV3T4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 583881638C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:58:29 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id c206sf15467311qkg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:58:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582073908; cv=pass;
        d=google.com; s=arc-20160816;
        b=kluYSVWqDjZxJ6anZex6jn2Oce21TLJgbsM+nApMR/4b/zmhCAjLmPm/XkdfjtBKj5
         XUOdN03b7WRUZzy+ySQMSwyF0q6pkeYRcks4I3QlzaK9broBYqu4kmj4oA//6D4thKr6
         q8nCZj2cruRx/tB79cDd8zbCMLs0cvbuwlfdH8LSpK14m2pY5bKQhHc7wBP6ELFqDFB6
         MV69IeYZ8iP0vS6vNTT2YYD8BZOBIMJx0D39QLk66io1LqoAlgwyBCrRYFTzb6ysdb0j
         wLFHMGBRZ9SzGvShvCatUDTaJ6h5aH/m3j5G0r+6GZKI04d/fISMnRdIdXEVAMS+2G37
         ZNFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7zXeAWvcsTlVFdH94x/vj4bzpDDRYE3uZN7XeaDzFxw=;
        b=rlcchoWnnhZ7zDyB9EgFgDf6yJLeuqMKj/4uZbaEgsjfLac+reDu+hnZxnVV4pNAql
         kXFuby4uxr5mGAHm8k36EM+ZdKjCKjxbaESxqtB0epK+CFGzkqw4QiA3ixzeNbwnKgmQ
         OTTDnb5e4xac1lotFdTxssle3K7cchjxu7M4eezgaiqbdODwS1Jhp1qog8o5t4i4O1E1
         txTjhL8KF0bfKRBTDxeHdgI3b6vmcA3Nd6gbHPofTAbaIaRI5hq5O4aHGHjdoceKBKF1
         5P+Vv1j0AcPO7WnFndNSS9hb9bZak9oo5mgKoA39L+b9FoFCOc2QSOWIv2Qo9bmAGMUH
         YIzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ih0TjNY9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7zXeAWvcsTlVFdH94x/vj4bzpDDRYE3uZN7XeaDzFxw=;
        b=r4gARBN2Iwr1DFpqcBaXJCVekz3EWyh6ZhxZtNIPMU4ocFPLUEWhuSCeCrzz/i6qlf
         4XuBmycy8gzHj6/lUW5X8vjWWkQ7mKAHVyy3gaoqSfXynifYudfnBPt1/o5q7u1gI//s
         bi+9+2pLpZ+A8U9YXLVh9kGCnczXO0dWA8BxOOU76K/DZOWbNGXxmwj8hzuyeO6AewxJ
         jyvPAH66ie44B0ChGM6tz8nwFJw4S8x0OMnzZio4x7gaZ9S2gqJRlIfo8pnRiFJkPKEU
         KbmIg6oDYXYBdeUcsXnqkdmHgzm3LDYVvnbRWa0atQhR52UEVJWOG8tto4r59JGFNp1N
         47Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7zXeAWvcsTlVFdH94x/vj4bzpDDRYE3uZN7XeaDzFxw=;
        b=nv0VKdkd+1PmPYEWZ429P5vhPvdrFmwqIeisbSGqlsjbj+yeOZ8sQV4/j0z3TfGsP4
         s7tQUWSBM7VXIYe3zH6HYHpY0/KwPz6R14omqDLRPl7+NSe0vAyOX52kh+GdFw6Y1lwk
         xDdzjWCN5b6aeFvzH4ulAsKgGHVt4BWJ2tmLDviBtPxegA6JvgLnKgGvbT3dIlW2XFy2
         v4+mO3KqzuEe44LsDSBLhMmwvwsbxTbul3Sm5cpdllOiysOPFrzDt3bU7aNfr7MkN48S
         2f8/C8aksTu+HvvGf9choWOxsqIrMKbqRpdpYGbzoTs2+vqduK/GS+HrILILxRMDogAx
         X/cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUP7KnVLPpHSwHFtOOXRc/WK+NBtXh4Qp9wGpGZkzHmGcglQQyT
	YO7BGMTD2vgczsRempxLPOM=
X-Google-Smtp-Source: APXvYqyUzwoNwphtmihrLjkywV3UHqo8sCYhd4g04ZMfQPNrg9Y9aDQmI6dSfGvopSfMkD5bcU5EtA==
X-Received: by 2002:a05:6214:14e3:: with SMTP id k3mr18950601qvw.215.1582073908106;
        Tue, 18 Feb 2020 16:58:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:9c7:: with SMTP id y7ls2542785qky.6.gmail; Tue, 18
 Feb 2020 16:58:27 -0800 (PST)
X-Received: by 2002:a37:9e51:: with SMTP id h78mr20965752qke.323.1582073907810;
        Tue, 18 Feb 2020 16:58:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582073907; cv=none;
        d=google.com; s=arc-20160816;
        b=uvE2QwS/xNPZgHfHBlhhFMIZBDfmqEVineOMgXhIjwEh8NBgrZsXXs7ZZ9GQqnI3GI
         Aa9j2E7iHKKcLDoc+A0Ic2BiaGsYQU4pOfjE2Ma3Y/arqLCHbWf0IycOKScOw6V4GOzv
         NPQ6oeBFWYGXGVFHANQ5HTIzo2n57TykvJPEANcYVmRVPPJ1xcm4KDt2iDCHaGKOOpgL
         hFm7XFpTJlrNwIbHcYMHUFAYrhZwuw6ZHWFfI+7QJ9MW7zyNzNVOiJpUdavzNYJxySPh
         0DMmdfm05O2zOKtlmJEJrFObYxvHoWbehkTcbW8YTAU6QcGcqDrcl0OpRr7rYvZz6Sn4
         7uTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iSZk69ptAiTyf7jpHNkoClrlGQ6cnI+6Xpj9dCGMjN0=;
        b=lWHI6NCff6s5dqg7wpqC967tdnpdexg+VSDwQVQb9AKsiZkZjWoEjnCyQDX2xFqvpy
         PXHZuZ21KP5MwR0fkczG2FESFXOENOqDjgD4f6Ds3wI+vf4nyYAGAq+KMa1MWv3b6YtA
         RuTtc2Xo28q/B3pVzg0EEhKZNRn0PjhluWtXsqRGtDM6e1E9BTAnQ0JCcFnHQbfQbeqh
         aoiga6yNXmqaMh+dBQbdGvw8reP3ywaJmOVkvM5YYhBwszfQBXsdsRGjiXFnsRRqjvud
         IaWDy/fX1GmTDE7NULq8QwkGYrte7OE1CETf+ue2/QxEgNImw3lRtVDUMID7uoTMYFWZ
         keHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ih0TjNY9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e26si24030qka.2.2020.02.18.16.58.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:58:27 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 4so11574454pfz.9
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:58:27 -0800 (PST)
X-Received: by 2002:aa7:9aa5:: with SMTP id x5mr24532698pfi.131.1582073906946;
        Tue, 18 Feb 2020 16:58:26 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 4sm213446pfn.90.2020.02.18.16.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 16:58:25 -0800 (PST)
Date: Tue, 18 Feb 2020 16:58:25 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 09/12] arm64: disable SCS for hypervisor code
Message-ID: <202002181658.41FA7C514E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-10-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ih0TjNY9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Tue, Feb 18, 2020 at 04:08:14PM -0800, Sami Tolvanen wrote:
> Disable SCS for code that runs at a different exception level by
> adding __noscs to __hyp_text.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/include/asm/kvm_hyp.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
> index a3a6a2ba9a63..0f0603f55ea0 100644
> --- a/arch/arm64/include/asm/kvm_hyp.h
> +++ b/arch/arm64/include/asm/kvm_hyp.h
> @@ -13,7 +13,7 @@
>  #include <asm/kvm_mmu.h>
>  #include <asm/sysreg.h>
>  
> -#define __hyp_text __section(.hyp.text) notrace
> +#define __hyp_text __section(.hyp.text) notrace __noscs
>  
>  #define read_sysreg_elx(r,nvh,vh)					\
>  	({								\
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002181658.41FA7C514E%40keescook.
