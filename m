Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTWYWP2QKGQEFEWEHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 480861C229A
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 05:43:12 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id r28sf4691871pfl.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 20:43:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588390990; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6T+nrpCw3ul9c6xyta85xExXdlmrFkGQtVTl3Q1VcS6H90RVZtT2x1p5IpVcbvCn7
         4zjUYWVYgd0VJITslgT2ZzdFfbUiCpsTiXbLB9pQKUAleavuaadWmJiCpFtGbvPRSqdW
         ee6gRo8a4cGu4yzNavJqlMQPLSmrdi9aFpz89w6YjOLgw47J7z0BZQ2R6mh2gOB3gJjN
         lGnPA+vZxYPPyHkpT8uXr+ox+MIXpkhJHhGb57JGbLYKLitty11BPCTRQX9A1MgqGF7J
         8Y/LKLJL+bM8k5pKrGIQiLSLA8CPmazkp2r0A6yUHhvwq1iIECm82mJnmLYeVyEArzGZ
         QS4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aZ7AAXQMWFUC3Rbj41sDSdSg0J6Ce2TOEJ3jBjj1yrs=;
        b=O6KT99TbK+ZUO/MaFFcvrdv6INmi9y9KvfOqSgvAUi6VelBNusOQBTVeKWiig+nfPF
         I0JW0Cmh2aB8a/6zNXGHMbMmlAhcTWX/kpddvkGAAo8oKDA1asiqvYJ79zrwUzY/L/HM
         pUtNCSQmLnXE78IIlR8ybHy4nOYotlPbwjzK89g0W3+40TlvFfmqJ5QwatZH1FncoiDf
         eSnXjRFX53Ew0Z4zxE8ibQOo/bY64T4DM38+OS0DZUb4klGxEo7Do3t75efif7FaLr24
         zxl7qXcMoaj8XQchHnJBTr5bkomYMfCdh9v4c9e1m0lzdIG9VefKYLm7/CqyaW/sWMeI
         WbRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T14eaIz6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aZ7AAXQMWFUC3Rbj41sDSdSg0J6Ce2TOEJ3jBjj1yrs=;
        b=GdYlp5VTsnULpLO4R2e0iM7NN4cMwmgnyIoKR93Jf9wVuxNnbi1yPUsJMKkzB1f530
         W8NR/c04GaY2Os8C1rx7NukKfdLDHmSdZDwXli+fx9rUnmi7HbUNT/i9gVp7yB4rccpj
         9+WNaKHcYKqbR+d6LOTD3nq+5AxDmbz/dE4n/1GtiinaPz5n1v02VdvEiDEpVLDFSqH1
         MgBnyVJx6nBw3hX/sc/NH6Vg+O5fXrdz1uB8vew70eVdUFXMhbpRv5S7EZU653+CyvXp
         BptPWr/sVGGg6Ilst2KqzQ4941kp9Zvee/ZxkXld1dHUAwwgldy1oSDf496Mqt3yR9ci
         Rxnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aZ7AAXQMWFUC3Rbj41sDSdSg0J6Ce2TOEJ3jBjj1yrs=;
        b=Tvrw1XwN/QOqYX+zQY/7CEHVa6DoP5Jd+Q6v4NBkklVYYNzlxlDghqxcmQbh+XiESW
         azjx917BltgZZbEB8XwdWoFmdyXO09GhyteGPdNB09iUMtFQ/lOqumFDwDHgP5UQKHeE
         4zScekHk3/PbQRfy5bNY9MkmibIq1QP1L73CbP+4W2yYeKhefDneLCrnalnsSf+dsMG5
         8i6rI/F87cSNQC6WRtw+ws7CX5ve9kkPSgWmVvAyTW5K067r4HFnBrKW+fgjqsjrKDjy
         V8YV5aJcF7anLgZDkJUdv5Kovpi1LH0jrw6N4/fuCZT2GJVvILRBdvqF8u9CaQUkagdw
         nm4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aZ7AAXQMWFUC3Rbj41sDSdSg0J6Ce2TOEJ3jBjj1yrs=;
        b=X9zQ0YTRp2pjaXDGFjjIK53rhN16NxcIgFu6IjPKCNPYMb/o9OVLNXmQbAoRs9XusV
         9IOdyzsdudMt3m47zNVZDaNJPNTqS7jL+sDBC2a0AMltnGaFBS1se6YC3tbS/lPRB6kW
         s5FAqNwpNLHNswbgodfbW0YXlJ4c5UXKJjdmD2YgL37Zz9fyOacUElYxuPfoQaKeKFpM
         ykvQ9tNScY0psmETDdDKdPSF24bjLmYnIAscWNxdDDeVCcKkSBjKmyFmIXbdjoTGkepp
         OLa7O5PnOt5Z4IVAIYKfRJxWJZ3sN9SkSQ+dN+COTs2RB9a2LX10QAX48v/ZwDxwRG1l
         9aDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ+k5fN7CHxE8D9IZL0lao9x5ISEskYIsqP6buW2nH5t4KsV4Kb
	9ydDeocxy/PjJS/pro5sgko=
X-Google-Smtp-Source: APiQypJbys9OZigX8hTXS9TUg+SeMYsMwfifgQxWyAs2/TftwOhLS5i2Z36qIxMbk0E8WZvU6QbmpQ==
X-Received: by 2002:a63:935d:: with SMTP id w29mr3738405pgm.92.1588390990350;
        Fri, 01 May 2020 20:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:191c:: with SMTP id z28ls6571265pgl.11.gmail; Fri, 01
 May 2020 20:43:10 -0700 (PDT)
X-Received: by 2002:a63:40f:: with SMTP id 15mr7050638pge.57.1588390989979;
        Fri, 01 May 2020 20:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588390989; cv=none;
        d=google.com; s=arc-20160816;
        b=hwzVb1GNSNebVSUtH8dqRozRVSQfHQySsoBSyus8qfgtK8sQDXrvWC3rmvXiHsO7V1
         +muQJgemqBuAWqT/XiZDsGlt0//FyA8p0WY4akl+eBk1LVgoLzGlyczsuujLPQj6Bsjq
         3PQUPTtSeetm52zXJrvpM4opJyQu+1zmfSLCK0+hYoFqIIycJpcK5xwldHEWZdi/slK4
         BJxQxk7xsfKWFNCTdvRRbCl1AC76jynvhXnrWwXuBlvGDArBBnqfFpPDtKGcAl5501dJ
         3OWbLJ91EO06/5NEMv/YwqEDYanWky+BAtNcCEWtZxfgDXpJAWt3kHCuScIlP3Y/Y5SB
         /6pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R5gKcAhtGMy8Ketx1mS4p/ONHNY9/H41NnazeLBqjX0=;
        b=FyACu2OSJXWyT4HkmIJeeQNxIJk/tQgT1S3eeotREsBaQYzvzKFIUAeX9snpZjDshl
         l1vv+f0hQUGmhcs7ScRysQT12lH5eed47Ul0DYzUyGGVDb4OL+0SxXy0jkf4rnO6qyGy
         rVKz2lBaj3SiiqehDoGf2p8PGgF7paF1NKtqvHrJOEgsoxqpwtwE2Zs+98BdtpFAhtYS
         OKZtph5pz8Y6Dz6W5Kn8xGSFBrx7sdhQ55qKtD9Jlq4ikC0dGp6RSEMFeK8HMLoPi1N7
         Jm0xlKKelddwTPLNUqu3Pu05UER1wgM3Y3oKCw2tQrcFvgkPtOdtkC7pTns6hx1lNbDn
         2PzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T14eaIz6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c1si365947pgd.4.2020.05.01.20.43.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 May 2020 20:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id m10so1614665oie.6
        for <clang-built-linux@googlegroups.com>; Fri, 01 May 2020 20:43:09 -0700 (PDT)
X-Received: by 2002:aca:f2d5:: with SMTP id q204mr1981188oih.98.1588390989226;
        Fri, 01 May 2020 20:43:09 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e91sm1362262otb.40.2020.05.01.20.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 20:43:08 -0700 (PDT)
Date: Fri, 1 May 2020 20:43:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dmitry Golovin <dima@golovin.in>
Cc: clang-built-linux@googlegroups.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with
 lld
Message-ID: <20200502034307.GA2971661@ubuntu-s3-xlarge-x86>
References: <20200501084215.242-1-dima@golovin.in>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200501084215.242-1-dima@golovin.in>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T14eaIz6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 01, 2020 at 08:42:13AM +0000, Dmitry Golovin wrote:
> LLD by default disallows relocations in read-only segments. For a
> relocatable kernel, we pass -z notext to the linker to explicitly
> allow relocations. This behavior is the default for BFD.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/579
> Signed-off-by: Dmitry Golovin <dima@golovin.in>

I was able to link a Clang built i386_defconfig kernel with ld.lld and
boot it in QEMU 5.0 after this change. A GCC built kernel links still
with ld.bfd and also boots in QEMU successfully. x86_64_defconfig with
both compilers and their respective linkers did not regress.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/x86/boot/compressed/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 5f7c262bcc99..7214751e1671 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -57,6 +57,9 @@ else
>  KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
>  	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
>  endif
> +ifeq ($(CONFIG_RELOCATABLE), y)
> +KBUILD_LDFLAGS += -z notext
> +endif
>  LDFLAGS_vmlinux := -T
>  
>  hostprogs	:= mkpiggy
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200502034307.GA2971661%40ubuntu-s3-xlarge-x86.
