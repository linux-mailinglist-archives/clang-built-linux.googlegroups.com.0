Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WU53WQKGQEQUHHFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D1058EBC73
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:46:07 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id w22sf1452706vsw.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:46:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572579966; cv=pass;
        d=google.com; s=arc-20160816;
        b=EllUQ193n3mzlL9AwUQjTgIs2sE4Dz6XqrrLksaJ7Q87zzstmeRskSYrdSl4w4YcKj
         9B4SogDx8IZQGGXTi+59GscVpKPgXn21oj7QEFUNUH0sccLDnqMfI3hZJPeiYqMiM+iV
         RZ8nOpwFCErc6pxHnRTraiWQ7Lxfx4d3vR4MPVHHGqTot+ozP6PS5Cf6jrYexZ/Xxkjf
         HhUPJDVDeRx26Uf3dRO6t7KkgiGqY1ZX7X5bMMU2NrUCkS9ea42LvER4E4oUDfy8qzIg
         Wib0uwzPZDWKklJYJaNWjOFFVSzUcbIizwKC3vG1Yq246fspp0aXeWbKWNFE1Ncc7lz4
         sAvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rgTh+KjpsqPLtvBgb2gC2CHZVxMSI1PYaBec0mmabiw=;
        b=FNsYZCDLN/0phc2SApOdy6i5+EbZ8bkkP0LfGJLW27EAuwSnBTXoP+MXoMTH4MZEuM
         wQxblua2QD9BA3WGoE0iQKiK3huI6/J+TT4WERj2VVYaWR0xODhcsv47bmMqjQwu3xDO
         GvvI/Xd4TYu2rgUm2GLf1mRUwVk2fUvn6YN9DAkAi5XPGtG8n6KzujSyZcv1JBN3KCkM
         /nUlAqE3mzgb5d+Rm6qRhbOokaQf2C7VLUneBhuigXKmUymYUUdYCBuV70fYzYNtwdE8
         nQtqwXQ1xZ1cWAk4cwFGIgIEv8CGTd6byDAhXJU7EBagGuOLpLTdhaAnVASy7+5tZ9Ar
         3dmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IJQVm+nH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rgTh+KjpsqPLtvBgb2gC2CHZVxMSI1PYaBec0mmabiw=;
        b=PCof5Zzt8cgfXU4dUMbPZLU8gjN9L2zeGuaeaCFcF9N38ow3RZbq3lgh/xjL1hWtGr
         xSO2MWKbdqMK3f3rbrQKdXoM7alwwgHYrVWDonBMpKVGYj2oRAfGkDEuKwbBgZu14VYL
         jRmdsnonwu8NdK+nfX0zZDssL+V80qyHl80Xerv9mOzfZRxeE8iDvw1jNe4vEr2TWiR2
         iZBd/fsAma9V2afn/vs/IooaOfttpqKw3YFdXs/vPwqL9EjEG/xR0962rCzQppKxyLEB
         R36ZdVGEIlD6rUDT+26h9FdK+8YL0R39xkxz2hVwJTKwZI4qkixDdqHMJsEAgXJ7Hp5I
         JKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rgTh+KjpsqPLtvBgb2gC2CHZVxMSI1PYaBec0mmabiw=;
        b=lFCqr1GfXQPALnSSHacNTcIp+vEezTszYhLavOeQ947P8wId865LlP+zZAljcuYqB7
         55xEmNsu5fAfMUcK+EpATyRsYvpLRdsVCr/5bxFFskMGhw5r5mF5VfbSilswuQE/duAJ
         v75JrL8c2OimqiTsz40holJB3erhDMbA/9v6fplSQQ/pxdlHcPmdOPJOEysCcMbdQ8Gv
         RyhdjyFItIyKII0SGg6TGeTTY89UbV7d4aKpboVlFjzXzgYzbtkicEVV5ukBycQstMok
         S6eKtA4+yCiMyZcphbQpUFK2Vd4ToTZIuLhUIqpe24KJb4RB+U24MPM5z/t2G14uROfl
         SUGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0iiz6zBm5/i9jndrJmlmZBNOP8MfOsI2sGva2xJHGYQfGRbgz
	7SWtROkGn0sSrQRd2aH4jvI=
X-Google-Smtp-Source: APXvYqwXNY5kai9udU+Yt+HfLeSEbAnYdDtDLwSNh2pQiOYnd+ifsO8D2RZ7a3blSUdCCQn1mIbfPw==
X-Received: by 2002:ab0:331a:: with SMTP id r26mr4714114uao.104.1572579966571;
        Thu, 31 Oct 2019 20:46:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls445235vsk.2.gmail; Thu, 31 Oct
 2019 20:46:06 -0700 (PDT)
X-Received: by 2002:a67:fc16:: with SMTP id o22mr4711305vsq.127.1572579966267;
        Thu, 31 Oct 2019 20:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572579966; cv=none;
        d=google.com; s=arc-20160816;
        b=G+IO28BQ9MnjXgwPCHO0USrG0cDG2oldKA7jms61ptHIen2vaJLi04x1XEGTLKbnqK
         Js4Ldts8a03V1HHXoYJps/0y7mL+tgS7/Teyl4eXOjzhMUJGgz2eRJdrGosIDN8w3IZh
         MyzA0PW43xU8d5hYsD/LuO4QGU1jZjHCIww0FRtYOhtsZ1exSPbNJx0KHf2KNAglgtzK
         pccCkC/2O2idHzs3uvkyCulD6uIVyAvUNGOOOZABrzNTAPCDbXl3xOdzApDP+LhWkFco
         FuuCligLzJOeb/BLJoBch/HdEJLYpxaZZNStfry3sGSlHp4IqXZncU4J5n/ywXOudzl4
         9GXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ipB5k5z37+Fd8igQLbmVYrL5E9roHGbRK+wBmA4Y9yU=;
        b=Rpki2ho/PucXXARlA7h607M0JPJ0mDB6av9orRk2Am+ZXahY1IUCcLwBxhbfgS+6gw
         lDukRYHPRgkl0CmD4UXhUSqM/21YGpZAPoKbY2SVnpJOrDaJZ2hMLAq7+BC4Z15Spwab
         eBWVKMPxzDMxOOb+/0rD1lTOQoL9d3kq7zL4TxuDOG3tUYJHBGBT/1h2IMeauDK9Ywwb
         yhr4to8WUO+8fm5I2EqldIuIwcrXrOxxXanois82Icsi1HBrHi+4whWalrldYZQU3Fkh
         i9cYi5FdyNrkQQJNLWzts4sQ7hI+1zGF8k7B9XsiapaxYuH2roeGcEKGetDzM/3/j9qe
         DruQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IJQVm+nH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u206si426060vke.2.2019.10.31.20.46.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x195so2587881pfd.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:46:06 -0700 (PDT)
X-Received: by 2002:a17:90a:2326:: with SMTP id f35mr12315696pje.134.1572579965327;
        Thu, 31 Oct 2019 20:46:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m12sm6209846pjk.13.2019.10.31.20.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:46:04 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:46:03 -0700
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
Subject: Re: [PATCH v3 16/17] arm64: disable SCS for hypervisor code
Message-ID: <201910312046.343E275D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-17-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IJQVm+nH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Thu, Oct 31, 2019 at 09:46:36AM -0700, samitolvanen@google.com wrote:
> Filter out CC_FLAGS_SCS for code that runs at a different exception
> level.
> 
> Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..17ea3da325e9 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312046.343E275D%40keescook.
