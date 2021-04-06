Return-Path: <clang-built-linux+bncBDV37XP3XYDRB5EZWGBQMGQELM257TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AC23552F2
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:58:45 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id k15sf5131099oig.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:58:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617710324; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ul2hQxFFs7PEZupmAXfyt/Gqc/+nG2EyI1GDeVqUlQDmZMUpNF5athlDgX9EqnNb2M
         ai6N2xK84rdUdqZ2htN+N7r9IwOeXMTVGaZd8dwoZofVy/UACLi+L1Kr/FvcapBG/OpX
         8t/J0qU/LWGTmM52h3plwVtQT3xL29mO3SiqNytpcAGR0pizJek4kKj97MzAbOtHygiQ
         j5IojD6JG/9RQWFIiTGUuDmC1kZCYBeyDan8R1OZHl/JKqr1N3QzLldg5SGSbelchLTa
         cKZ47dU/GfC9YggEmQ8XpygMJdMrr1rEvPYkaHQH7Yd+4lrm0aACWHOVvvncmO1FIwhq
         5CcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9fJCbCUgy4rgkHwVqiTlw4pPQB2VZglnHgpbfGS/NC8=;
        b=D4nW9oHLhxM6COLofPid8eSyYFvGVN07FZjk0NnCil1hR4APeyaeGfTRymrmA8cVR+
         uBnoOd6LLI3dvmP5oTCx6vorEUKq76HRw22EG/l4TZhZRqJsqloZl7taj7Il1uJQrWgc
         k0Cxgcnn71h2hQuerSe5BrVCAlQeY4Hss4CQyxk584Rw72b3Soe19vLx+GJHk5plOJYQ
         E+0CUagvBJsErsuhk2VnwbVoDsV0KJNf7VoiT+pO/P0yXl8umk4E9Lzx8fDgEs4K+svh
         Dpn0Asm8FBZOMl777/enjPORyq257pCtoxlZUalSVKaEL2wxt1VNWGpGZbYX4rZS0s2b
         F2Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9fJCbCUgy4rgkHwVqiTlw4pPQB2VZglnHgpbfGS/NC8=;
        b=VaDD13HKi/1O3LvPLtxQ7DsuvPmL99Gqc3C3PbVn7dq+wtBqn7ypRtgpoL2aYK6bVJ
         hWxWPQbXWhGmbXH9XMvMD+Or4KIJ6BgYPW+G3mA2LKJGPOXygKDIeZr9LbsbXR9jmvVv
         KET60I3NHO9N2KIZY7s3MmUvuKpB2naNHh+VvfWFg5yAOXlnEYotzlxB/yGimnz9okFF
         1eFFqGNP/ioJb/Mxd1coWDLccpzqhG12i7F4FrcrWDvTd3tJ6tK+nTFACn0W/wZPBjwb
         BE7PsCHW0wWe0RcM5GgmoY9mg9yyg+UYnouoGZmFI84uQIeQKWuxGb1BCTctFNzMYFN7
         FNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9fJCbCUgy4rgkHwVqiTlw4pPQB2VZglnHgpbfGS/NC8=;
        b=WUNRi86jl2WIYS/k2IHJoWLCf1aMEeJlqtiJLQwIS9VzdcSahItDVuRGNKrbMom83y
         GgUFWt74gADaC88ycyQ21+WerMt9WO6GEg228oxdZEsHzNSncs+kMSJvyN2l1VmleV5r
         Rwn9ZcRwovq8b5XYqkVBXQD1GICQt7NXSGiHUfRYT7k4QTeuQyYPmXsjTM3LQIZW8sLr
         p0Kg7bysdA+/KnUQ9A6yXoi7FrBr0KtOraXaSPHIsNmsJPYngCU44wSO6pvaijE6AHzo
         TjMKB+Nt4aXTMex8NNlniUjcQQzOclIeAwHUkckIvQdHILHIb0HWEJG+2D36IFe7JvLS
         jRbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mktSUONLxMX8sFRgJ4nlSr6piCaZE64biaad8FL8EM3QjRKye
	UrGCAAzHOYagXL9WZjTSz5I=
X-Google-Smtp-Source: ABdhPJzsB15GeoteTaTORd7J+LFad7GwjSVAm5AkjTSNiAp6v+k2V8gx0J9e3PHG+kCwJLyVxzSuBw==
X-Received: by 2002:a9d:7d13:: with SMTP id v19mr27118659otn.370.1617710324621;
        Tue, 06 Apr 2021 04:58:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls3960353oif.6.gmail; Tue, 06 Apr
 2021 04:58:44 -0700 (PDT)
X-Received: by 2002:aca:a951:: with SMTP id s78mr3070515oie.156.1617710324269;
        Tue, 06 Apr 2021 04:58:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617710324; cv=none;
        d=google.com; s=arc-20160816;
        b=q+R+uz7MIlx3CrKdFBZxAHkGlD6VeOY0t8LgjJy+/BlkvTHq8ehP8Iwss+q+wjytA8
         Gqc76bt8O3nxsQhMKgCZp4fGD6J5KCBdpM5gRodpaUT15860eKYeRPV3Q0JwxEh88Z5T
         0RT+gL577g2hXNs8587PfuxT8ulGDdoHke2YeeStCDADCQWI06BBf6CWkLpu6edorwxd
         tjDmT1olPrUsgMo4uQU91CO/+5S20rQjvoFYmpa5GbuZTAuGbZlcsU5srmzXTeCobi9g
         xq3dHuFomLtNc/UzOyhkpnUUpbKYtboeUfjYaU3S7L6NkUvGDCw9dVaTTVnnluTkeaKF
         eDpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=l0NkF7QiUd27cjxrLWO+QXtTfb47ECvj/G/s+4hFAp8=;
        b=Z4oKKKJCf3VUJMsCsU1ghrrmVwroAbiRY1DTtyMUjT77gNjOxp2m5sf69BxIq/SNQT
         YoIj9C1xzd1sWlDQbUs5iR5UtlKi6tTo6Ll+XdAg4ErkvYdnCPpfVTOrLZ8RdjB8Qrxd
         nxxj0DWMuDJpzLyo/N63Noeau7O1LXH9AxRGhrp4RKwCfpv9kUYcJlvmHSVtO/qaOqoK
         7asYy122eLbIWqP2p9kEollsHPwH89VQ8y4yTrgOi9gXrSr+MadtXVZf+OhMZP18PQgH
         XgKh5CKs5YbmfB9vSeO3SWVZRR0W4PL7ScG/Mlxe9P4QNoPZQMxiUvlgMJlkc1qca+6z
         Rynw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f2si2702058oob.2.2021.04.06.04.58.44
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0742012FC;
	Tue,  6 Apr 2021 04:58:44 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DF273F73D;
	Tue,  6 Apr 2021 04:58:38 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:58:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 16/18] arm64: ftrace: use function_nocfi for
 ftrace_call
Message-ID: <20210406115836.GF96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-17-samitolvanen@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 01, 2021 at 04:32:14PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function pointers with
> jump table addresses, which breaks dynamic ftrace as the address of
> ftrace_call is replaced with the address of ftrace_call.cfi_jt. Use
> function_nocfi() to get the address of the actual function instead.
> 
> Suggested-by: Ben Dai <ben.dai@unisoc.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/ftrace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
> index 86a5cf9bc19a..b5d3ddaf69d9 100644
> --- a/arch/arm64/kernel/ftrace.c
> +++ b/arch/arm64/kernel/ftrace.c
> @@ -55,7 +55,7 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
>  	unsigned long pc;
>  	u32 new;
>  
> -	pc = (unsigned long)&ftrace_call;
> +	pc = (unsigned long)function_nocfi(ftrace_call);

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

>  	new = aarch64_insn_gen_branch_imm(pc, (unsigned long)func,
>  					  AARCH64_INSN_BRANCH_LINK);
>  
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406115836.GF96480%40C02TD0UTHF1T.local.
