Return-Path: <clang-built-linux+bncBDV37XP3XYDRBS5XQHXAKGQELMLFOJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D26EE599
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 18:11:39 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id f2sf6580367wmf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 09:11:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572887499; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmyKmqOu/F27piZcpFUWkKVSKkXeYvTnN3UprzpEkYWEvio1P7eWMUINQitiPsmmwX
         ez+i5QTLohRIkCX/BGDwKbVaiLuwz2TopdYlr3Rlf3LzvocBSVDpy+0p1OagBHllsJYZ
         UE56FZgrqwbxQIZpS0ca9svg6kVvf09T5q2n/JjzOOcu384MtHE9iMby/z2wWuVKJAti
         oiltpyQU0c3+U6UkkbRfA/qxIhmAURAd+yGASyCPwFKlfdWKoQeprcAYdLGptO45LdDj
         sNKPBwkezL9OhM4Hqlvgsgvm042StR2dkSxmW1FMs/fDZNzfI8U3kcbocSzT92L7XlrG
         /iXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vbaySOHSGH9DLn1kGAdflp0eN14irUEdW/FC21fhaE0=;
        b=vg5HqzIEXB+irDKuz9VtWuj6ibIoCFuMQn+NYk2mtk8EZ62b3EqItvX7P9jOBXydEB
         3e5wzLKhRkw+W7N3BdWMI/GF5X6BR542eb4wXlMJ6yllrzeRi028UhXTaGbMYjFTajJm
         kAyo+JmKH65E1Q1rz28Y+t75HET66+vWc3bkxiUb8tXZm1UpHztWk7zlPSSUgn6O+VOO
         dya+Dee8JE14l3rt/q4vfOX1JhJaeF7rDXLYLxSQoIT6uYHoPbBamgCm1Cqx//UOuz1h
         kGr3tfvlzCm3hjz/H09O1lHwbwpVIgw0Ywob+yy25LwBq2QmEetCCiycejB3gmOE+aO9
         rhVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vbaySOHSGH9DLn1kGAdflp0eN14irUEdW/FC21fhaE0=;
        b=njorFeFte+Y/B2TkBswn8j3Q3ue9VPjIN9JVFgAHR6ul3zc3Qn7QMdTqDQtX4FLR/O
         XLQkxgMKxRffHw2ez/lu1YbTMHB5lQh03+6bmhyprDqsH2rwbRLuYuDCQkA3BzQvsk2z
         NN6RbCWAZI7ju973grefiuz874sR2dWmoqgo4sd4tBRgg8k1l/aYz085q7dYmkNtxb/Z
         wvgpRSAVKtobnwCqxyHeF1n2AsgEHOCICmuETkWdR4UcPwzYZPF5MO/Ze9IwNnzUwvRi
         cH0ZMOPwVKYPa0jZiESQPFBldfAsu5jWEWFMIZZ4nxUGD6c+6qg9Y9FUYXrsEHy/QbvP
         +46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vbaySOHSGH9DLn1kGAdflp0eN14irUEdW/FC21fhaE0=;
        b=WBHJDx4jkp58+7+4dY8fGSJm07im5+DA3O5DS23nLtuq++RS3p6+ps1jAzrafLOz5X
         9BiAzCwVGD3JEgzGxYzYNvTuNw1hybRV9SG09pAHUojbBkRdSKllksuKNSegKOlQUlBw
         aOKTKdYvH0F9zg2w5DyXSfVerhkZtfMPL4SqNAXn79e1RAcZ+qI24g50DCOOO60jm2Yx
         37/+YJ2cD5iXetsfmlBjzQr3p+LJ3tCICE/688k1LAHdNleC3Il7hIQBQLYDvHRKNuO5
         7N2Wh0Tp52ufgmZ5V00RzGGp6mapECbVB/svhpLrZ8wYuehS5PGbNFYX5Iv9m594s8CA
         tHKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUt7omsCBYdPL/RKztEdKRgb+U6/np4PNPpAUAAz/lT+HShDO9d
	iGljXghghNe5QmzLG1+VhSA=
X-Google-Smtp-Source: APXvYqwCFlKjpPpqnGjxHgKCrXhBmY/k8plT4y5GRCcqpdr5FiGq4tozZrtCF5GT3JGuJBPl+/aBiA==
X-Received: by 2002:a1c:2d4b:: with SMTP id t72mr151657wmt.112.1572887499239;
        Mon, 04 Nov 2019 09:11:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c941:: with SMTP id i1ls27626wml.0.canary-gmail; Mon, 04
 Nov 2019 09:11:38 -0800 (PST)
X-Received: by 2002:a05:600c:2212:: with SMTP id z18mr141948wml.154.1572887498591;
        Mon, 04 Nov 2019 09:11:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572887498; cv=none;
        d=google.com; s=arc-20160816;
        b=g6g8jQ2Gl6ujhNiF9T8GSPkrgNkBKgBdkN+CwG0Rhcy6+rlzrRzM1LKj+B0K6aWxN+
         VF7I+oX8QWpDVP2Jb0Q2GonkrMc+IDO+dYC/UFI+C6o8+6ZyGyvtkGLoPI3Qzcm0UtCM
         4+JrKeEE+IiCGiQN2oaM4M9D20K/FwQOqlmeKO+ZlhXQ/+mCNDNOZE6zWK9vH/rvR5Bg
         lEjbbEq13qPpyw1JFXT/hNTeArhex+y5p56P19hWTGA4aY5IhjkBb2y2IvJqtY88MQdD
         +OYTmYWDMc2gDMmxNlUuxAHoYhWsdeZNsGJVdhV4fipGEjWmbbanP41M8EELLU+c9LTj
         iNFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=AFCyhfelO3j7MuLAQsQoURpCMb7gOz+8OBk8h5LlIls=;
        b=MntT0lgbE4mPaWH7RNjhQOQpV4ZIYuvEeJnQEL6JGmb1FLx1FP5fbNz+g6m0ljIp7i
         nQOxOKBtJbu3XKSr1lFezq1dnB6Zy7vZV4RhiR6iGFOcBTu1FBfaMiCJQ4qQcspa7KCQ
         Jxc5zXxwGBAmb2uQNaSJoH39r5ag6Sd++4D8NiH1txWcihJDEqelaOPQry2LDQOclxM+
         tLzJG9SP7GELZd55tUcdQH1hqtXRw3K3lYx7GTtwOOpFwrDb/MieTkaRcGBXrYtzjbpC
         PBjph+lh311HWJmKZ1YhpB6oeP8IwqGzQ0RUFU6FpdrRpNXwxEXVdtsUMnIFPoViu1q9
         ogOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t18si989521wrw.0.2019.11.04.09.11.38
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 09:11:38 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D601A1F1;
	Mon,  4 Nov 2019 09:11:37 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94DE93F71A;
	Mon,  4 Nov 2019 09:11:35 -0800 (PST)
Date: Mon, 4 Nov 2019 17:11:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
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
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
Message-ID: <20191104171132.GB2024@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-12-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Fri, Nov 01, 2019 at 03:11:44PM -0700, Sami Tolvanen wrote:
> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> SCS.

Can you please elaborate on _how_ this is incompatible in the commit
message?

For example, it's not clear to me if you mean that's functionally
incompatible, or if you're trying to remove return-altering gadgets.

If there's a functional incompatibility, please spell that out a bit
more clearly. Likewise if this is about minimizing the set of places
that can mess with control-flow outside of usual function conventions.

Thanks,
Mark.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index e7b57a8a5531..42867174920f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -148,7 +148,7 @@ config ARM64
>  	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_FUNCTION_ERROR_INJECTION
> -	select HAVE_FUNCTION_GRAPH_TRACER
> +	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
>  	select HAVE_GCC_PLUGINS
>  	select HAVE_HW_BREAKPOINT if PERF_EVENTS
>  	select HAVE_IRQ_TIME_ACCOUNTING
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104171132.GB2024%40lakrids.cambridge.arm.com.
