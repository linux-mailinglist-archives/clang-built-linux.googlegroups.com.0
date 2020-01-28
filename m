Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG7VYLYQKGQEKZXMDFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E55FF14C325
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 23:50:04 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id u13sf9496018pfl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 14:50:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580251803; cv=pass;
        d=google.com; s=arc-20160816;
        b=ektD5TIOYfbHNqxbcGKfQxamSPcIeX7KDlUiBdcXIZ4b3JG15tW9PBsCwMgGz21/SE
         sST1KP86Ow9ni/SFRo7g4+/G5vYVUcJX7j8d5R1Zr84VVqR8T/bt1Ouk9mCWJMJFoMP8
         gv9hLvq6PWfh/WU8RO3Qs3YR6e+xpSRiJvg5VAVU9PtVIJwjS/fYHkMwcH9WMt42RQFN
         qlFWp1aYbylM95LxyG3+0eAMHkMieS7WjRQzjF0Qg9CfM5pqt3A6sLval2Biky++o6aW
         dXeVY1nFxJx3sCIsoo33Ft//2QzF1+4QaeBmvUs7IrnM/UhAZdPpKOOGJvEtsjmQRW/Y
         7hSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8DT3tdOwE2iAqZ7auGY2Mg1/Uc63jQaWfA3NSDVIUhk=;
        b=IKb1L7s/0SW68yu3AACkq38jb71WJQrodfiZYsmkfE6zoU1F//1Yd3VeXWvuUGvPwN
         bbG/ZuixiAW5YO3TxFZrkXnFfS6NBjvPIZuwftcAfxV3DUIKex1ZaS3agzIcBjZ4jC9O
         zFgSRHzjLpxJ4XQt0PdTT2ACbJOWeBtxdnuAuzp4m+Lho3xPyoJEDP61vCjIBywLguog
         P59XjBuo7ojdXgsS7lBNJhjkzM3LjgnXYL49e4bGFtqco1dkAaVm5QyJ/p9WcWBkgOCW
         rozCqzlYaxLNRHKNiXJ07cTbP1If/5ac3CWoa9Lx8O2SBM3WjkbKQoADT9nUpiGjO0pH
         aYmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T1hFsGEO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8DT3tdOwE2iAqZ7auGY2Mg1/Uc63jQaWfA3NSDVIUhk=;
        b=NTZ+bdGBc4GUnwK9EMxCXuY2g3N6LX9ts61rdRsNty5rmnKYUXszm8pX5bgVCjR+d0
         D9WT6F5glqnTXDK49LiS18+MsTxl1HqtBwyYJi5RirSdeuppDMo5ob5Ec1ZBu+1xlUnU
         fculHz/c5MrnbEF2hQYq1I0hCNb7ZWAiscPw4N7Q5qqlnyexDjg1kSaVxrGXPAIk8XXM
         Ms35LZGDbCGhLamliFcKw/Ypmcso5hKJHATmuFTKo4xNvw5fawfMlxxhm/Fec4hNUDOw
         VIiIRF4My3c1mV4ytI+4mRPzdjvrVAn9BRHMaG8GUZTS+2g/teRGbYsNQKWuMwiQO+9B
         GJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8DT3tdOwE2iAqZ7auGY2Mg1/Uc63jQaWfA3NSDVIUhk=;
        b=OhKjajl/iNZ1wbIoSZlqS1F2/rNCqA2KMCKPwxKm8t8fy5bZB61TgXXbtq2BZDKvca
         tqVjvAJatbsEI3K6Y3FBf/RXN7pnZcIWqOl1CjzuKb/Re/E1ndFGPkSK0H6yBPw1FcVi
         B1i5FPYyyMr3ebCaQDHlxGcGpgvoxTpKZAVTaTBcG/Jk3WCbNuwTDReK5wGm3OrAzoP4
         5/NKzRkwZTaq/jCWKVP32bgvaK7pHYY4fnmmCwTo/AY8uGdGl+owWgRzJPa8sSCv0SNM
         98JMllGlBVxgmS6xOv5/rqmdW/IlsAunXEqODLu8TXHh4B7/ycLOcKxnkiEjELurqlvR
         mG+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv0WEaZNBm6ANaI0u13cauiINgHoRPjq8ZsQdbBPfStSFsnkLJ
	IidGnkLWx5j2QoPzJTMTJYM=
X-Google-Smtp-Source: APXvYqxTBnkmMH0tZjru5owYsxfhSDnCxTvrUO/Nxt7DoWdsNn61qveniJFHY4GIXfAmrjievF2VqA==
X-Received: by 2002:a65:4c8b:: with SMTP id m11mr28199752pgt.208.1580251803507;
        Tue, 28 Jan 2020 14:50:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls6717968pfn.2.gmail; Tue, 28 Jan
 2020 14:50:03 -0800 (PST)
X-Received: by 2002:a65:49ca:: with SMTP id t10mr28361410pgs.37.1580251803032;
        Tue, 28 Jan 2020 14:50:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580251803; cv=none;
        d=google.com; s=arc-20160816;
        b=knUe0n4TYsciPQ7qzdLnebqxYMTHoYWZAusB3du0PdGf3H9/A24/d7IsGn+AURQRjh
         2iY82PeNLWDhH6xh8A2qvIRgnJigxhxTjEgZFA9F9sWWqJLZpxFWZ1VRvMoHd7YNuxRq
         53t0vUIjvUvtWnwWAFRAz9jBZaFTlSduy91PV0bExktbeES7boJMhVVJ4FEwJ66xL7Uu
         mWJfkhXYa4gWSr2RNhNZl0jUszmSZ7KHOqz8UWwPNL4FrqLqhjXIqNz38WztYjiXh5TQ
         Tll5wXfWuo8EV3PGXnoWSkOxUpf2H+5+5beRDBonUUSqz+exLaK65rasVo3ar4Pssni3
         6Xag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eHEMtu7LgfkFmyO7oGGN1Lq9IQ3mukp2v1f/r5o0L0s=;
        b=DkLmOWuoGcC2BGvq5yVYel9mDVOKeJsu8uSgvJohYuzrnjm4I1KEZ6F9YBNe3xfjQc
         PawvLfLiMdsuJ8SfN/zsCKmXOcjzQk8YOdOVcUk5Is8NjziUxRj6hZvWxUU7rv2gOB1C
         di8KiSAwOQt+Y5QflVWkLz/bg11BgxXIUWYDgBrF+dF9xvrzlBSAb3CUFOGRnaUdnmf4
         eqrcIZlB4WYiCBmE+LW0s7GQiqSe0pInCkHuFuaJlMJNCWLBKxFDOJm0adSpu+KxD1NK
         C9URp8DFOGu32bunpxDA/k/35eHCBPP2BWpeDlcb5c4svK2MTzyodzHuRfGldx6J1gru
         C1Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=T1hFsGEO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r18si5014pfc.2.2020.01.28.14.50.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 14:50:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x8so7782178pgk.8
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 14:50:03 -0800 (PST)
X-Received: by 2002:a65:5786:: with SMTP id b6mr27614437pgr.316.1580251802779;
        Tue, 28 Jan 2020 14:50:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s23sm2178658pjq.17.2020.01.28.14.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2020 14:50:02 -0800 (PST)
Date: Tue, 28 Jan 2020 14:50:00 -0800
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
Subject: Re: [PATCH v7 04/11] scs: disable when function graph tracing is
 enabled
Message-ID: <202001281449.FB1671805E@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200128184934.77625-5-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=T1hFsGEO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Tue, Jan 28, 2020 at 10:49:27AM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 1b16aa9a3fe5..0d746373c52e 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -530,6 +530,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on !FUNCTION_GRAPH_TRACER
>  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	help
>  	  This option enables Clang's Shadow Call Stack, which uses a
> -- 
> 2.25.0.341.g760bfbb309-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001281449.FB1671805E%40keescook.
