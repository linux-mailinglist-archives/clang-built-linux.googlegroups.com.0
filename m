Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB3N7QLYQKGQEMNFJRTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id F033C13E9BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:39:58 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id u15sf2724251plq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:39:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196397; cv=pass;
        d=google.com; s=arc-20160816;
        b=UinZuVBk/9pzBqOJga5fPdGyaeE0ImZEvWn21K+AkgNiDPSXZDsLqXkgXqPTxOFCuU
         zGCFFUyBjYFwsNVHJmwuqvWa9UT9Q8ut8YK3fmLcwa7RAw/WyEAsKpaPhCucj4wpanEn
         P3gtkgjMtzlOGWnytcWYENP5p4zwwDI5mDMu6rfbyI8jFBIQDxTu5gLSS3T+3rsEOELs
         YANCpCd7APjVJBZOhxLVyjDAT0HLlPfCcp4OEZqYORL7nn/hxj0KYTLRiiNxOca00nGI
         tJASMmKjeGpBqjQqzTMowH+F/FlGURGASSGrwpfRxweMqfpBj0DPsevi4O8nJE8KqwYQ
         IdaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6Gs+DgryLrsP3ipXc3cHaTpNCoik5gaFT+qcYYwNyDQ=;
        b=MBPV7mJRaZx/Gez2hnoM6uyDQTkYqyluTBy5CE83+VYp7+L/OBIDZ2uyLhejehR1h3
         qBd53puZqN202FC+t/PISHr5Eh0jhpgVcY50t2KJdCAmtDVg4TTp0FFQc+Ut+OhuGcSn
         2kHCP19F5Yj9Ekjl8Bi6FCRIeAr5prYZ3TV3SoUUTuGiwDuLLqPoNyuG9bUUcOg4cvBS
         2L8Vrcazs5cHTyuk8c/rwr4K2QsJYDLeDVsgyTaL9O+WS0npq7ytcMpcLogv/xqydF7J
         H6d/8Irl1qbMUyvPSeid5DRyHwbC3+EjPtg1XuGlv4qwGxYJ3PJcGPZC9OY4ntXoAlpm
         AN8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="PjGV/BPs";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Gs+DgryLrsP3ipXc3cHaTpNCoik5gaFT+qcYYwNyDQ=;
        b=SpiKwjYfzoRthQk9e9/ffn1Y7zQqkCUAlxFHoCkOjnt622ldauoPdhRaknLpg+7YKl
         tZ8KuP3qzl7Him3MQlqfhhkjXCVFRFxJ7orex6/UqJqX5QFIRUQ4T1Z+iFX51OVWXOhE
         htxoeYEdMAd31RFeb4QUYbwdqj/MTE8FavZLbG2sNHgwiw3dLxmvFkKGqYBVu6HkKbV0
         huFxtTml8hoMsEmfPOqnz9YEsjfaZVifwYausCr8VINgL6BsMNXbI1bzIfm6n2TqxjbX
         cYvQqZ4WLWUvrUXsVm4dHFTMveN39o3iZpIYKZcE5DfdSWzo8AImdkVr13xWDORCkFA2
         jpkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Gs+DgryLrsP3ipXc3cHaTpNCoik5gaFT+qcYYwNyDQ=;
        b=ZNWD+wS+kldHQKUs8gCAYjqnKUzqKFz23Ul+QENaBHPHccL1g6kuhR2JBRTrUdNVIm
         SRa9NUsjaJorxqd6mXd2ZG0VKR6lPf3JJVrg8guTue9xUzmbiSnOlXQfZ2NVCpgXIRlm
         99mrDVwF/aN3RqqsZXeRVLeL/JR5R4DqXGv4EpSPLvksw3uLRmQijbVyzuwmQU9GfML1
         hG8gqDCG9C79GI9RXySJdtulsYE/bwg6gPCXaTs9X9cXI0sMaYTdKoBRyPUWPE9xnLle
         2brbWcndvrJafaxvk6yD4SAnDweTZGmsLQn2OEqpibwPtWp1N/bO3CA5SC0iWUffnPYU
         gUkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcflc5g0Dmor3G+8WLQMLZxdBLjna6mU1MoIkiff2FJUfGl6P0
	aJr/8i9Kq7VE6p0K70g2FSQ=
X-Google-Smtp-Source: APXvYqx5FE8SGw/N+LkKmdbB9K/XixCHCrqIYNyzyP7cdAYca0EgFF/qNA1cM02e3/6vxfnoHbnbMQ==
X-Received: by 2002:a17:90a:d205:: with SMTP id o5mr293241pju.46.1579196397549;
        Thu, 16 Jan 2020 09:39:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d988:: with SMTP id d8ls1055662pjv.5.gmail; Thu, 16
 Jan 2020 09:39:57 -0800 (PST)
X-Received: by 2002:a17:90b:941:: with SMTP id dw1mr249227pjb.21.1579196397240;
        Thu, 16 Jan 2020 09:39:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196397; cv=none;
        d=google.com; s=arc-20160816;
        b=cIxXfHr9ThhqVauVmXIUN1Gfu9Van/hUTx97vYr9r5olAfI0NIE2mjqYM205cGbH9W
         YczeskXpXSkv2YZZGyISXW8BraiAl+nOY93gAPWoEVXUn0n/fSKvF01c4yNbCEBeMDcP
         2Rkco5k4RnBmtRjD5j1bAd3vTwaXgfQIpB6zsCS9p1qpKPBaYmGHdd+Yy9m2jQw5QH4Z
         ukXKCvKE9zDGe2LEG7fil5Tj9JPs2iO/AiPyiFHbZhgVIiVuazsfMyEZ62W5R7s766s/
         PQnZBAkcko9RLeBdp7bGyArC6ZQwBLAefGwRP4mkJdANkY0Lb2EkLy801+uHtWQF/sHb
         E0aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yU4fNOgiZ9R7oE7CWROuuct5GBR7S7kgRVymO1UcdPo=;
        b=ngaFP9Zj2q/CMrYBGwT2lAAwa37bbsDaTM63k+HGYXjqpectpV3WHGYSwqbsQA24XS
         6dET71avnYEYh+cVKdAXRXBFkkkC6VLqL4YNFjl4tLmRX4N02Hfu2TN3WTncshm3Bul+
         sLCb4F+2FwIqY7PTNBvftPHicG7mLpR28tChC7vfaDr4E/87dAwy2BXd2+P5tm/x+7Fr
         C08Jj7flU2KDoRP1oSL5txRmvHZdwqIp0VM88hGJmbRh0acKDK5WdyMsT2fya6NNc9oT
         e5matclz7z87wZ5djPmw1quXZJe8x2FlN6ICJZcdRtoVXaYlHn50/1B7omrRqcc2eZfj
         Tktg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="PjGV/BPs";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f31si83405pje.2.2020.01.16.09.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:39:57 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3458E24706;
	Thu, 16 Jan 2020 17:39:54 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:39:51 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 08/15] arm64: disable function graph tracing with SCS
Message-ID: <20200116173950.GB21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-9-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="PjGV/BPs";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Dec 06, 2019 at 02:13:44PM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable the graph tracer when SCS is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..49e5f94ff4af 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -149,7 +149,7 @@ config ARM64
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_FUNCTION_ERROR_INJECTION
> -	select HAVE_FUNCTION_GRAPH_TRACER
> +	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
>  	select HAVE_IRQ_TIME_ACCOUNTING

I think this is the wrong way around, as we support the graph tracer
today and so I think SHADOW_CALL_STACK should depend on !GRAPH_TRACER
and possibly even EXPERT until this is resolved.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173950.GB21396%40willie-the-truck.
