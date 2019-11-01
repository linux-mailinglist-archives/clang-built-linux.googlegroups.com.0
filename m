Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHO453WQKGQE5JCEYOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA92EBCAE
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 05:01:34 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id a67sf5315464oii.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:01:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580893; cv=pass;
        d=google.com; s=arc-20160816;
        b=cO3CrHCAsw4UCJjEkDrzr2wtLKSbtAFCXHimuL2wAjNNVwZwHppIRF1JTMvTEEfRac
         ejwvz10VlYrEMquEd7jgENgmiVi35Wo3fImfVudDSeUMAD0M4Ie9M9r21jCzeORz1owe
         29A58VSzMEvmVDo4noULCAB4GtmyYnG8VUKr/d/esFzIv2n2L+riyCvFROrT0xGiu5SA
         xSLYm5dOU8o2Tv27yQOk+L2DCtLLfV3trAi0Lz/0sAkc8ibiDRC/suzDI7arsjd8uWEC
         wCFp945I0pLx2NWhMP9ZsR/T+VQl1nq16TUHt8knaw8yUB7WxynCromJZeciOOxznVNe
         dYUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lrfHH5G0iJP7PWTFIAfzqxqprZzb+/pVwJLpgQnwKcs=;
        b=l/HXi5/vNwH3LxmZQHXIqXGX9GqMa3Hg8PIEMFRzWP5ViDqKOple4EtEuhVWImliZj
         7QUoUKyVFe+FUE+xdlJ+V9X/KLJxxT1tWAD2fVCfk/SRkmDmZadw1Pdz4PlNhKuPHq97
         GHPoSzsJF8hByBEGePer2svcT0EQYQkXDD3lRR8R4ShnKXp243vYFtSKaduyyl2ByWtL
         MtyIudWQrWskdqIt6hR3k2YaJWuupKOvSgFKP0udOB6HVPXBy5gKvVOSq1ED+ys0R5Z7
         maig1t8cGO8yamFpt8fI8dsRlsGp06C6akYFYGc3f5j2m93/7YronN/bKDVacDfahl3+
         dA7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A00p0LVj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lrfHH5G0iJP7PWTFIAfzqxqprZzb+/pVwJLpgQnwKcs=;
        b=Ge8NVMuBLF8b4Pd8l4kjO9fRH2n3SRkc3NCxt3h95bCPI1n0wDVp5jR6cU8YsKwbNQ
         4sORFFvBct1GeXqObJTQRSf79IhzdfdlvZ9rKv0yiWGW+WNlVipRqSewBNwQIYv0c2p1
         Z+GOHPMxGBgZPZZVCn5sEKF3dsYtR+qBjzY/lcKZf0RJbqbyHCoczPV26DRyX0bM4CE+
         15Qkg6Xu0q/t+f5k+bP+oKM2uSll3xiUfbSKYUHnSZvlvfLzId912K30gRyopQ1wNRdk
         o3EeA4yz1p15FVMdes50hG+ATJ+5sphibqL5D4er/r9JGFte7SQlvjJ0xmQhpL+tAroC
         Coww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lrfHH5G0iJP7PWTFIAfzqxqprZzb+/pVwJLpgQnwKcs=;
        b=X8Lclx6zJvz7pbpRxqiBXT/AcosLkHjLcmxjuxwQhjI0JLsUXKEPNI+rAWAXfLFq4d
         KspSFQxkWIrL+iYzzK1ky0R5dKIs3u+14nVeLhOq8KvQW+hla0nDro7vcwetc/3Pm4UB
         EyHwHE43/Fqd77RZoJrfR+H2AN3sCil5NySe5s+3EEnvMKCIA3z4QGYK+cT4WuybaExZ
         LaH0fkgORwcDwG3v/p4yq6ZL1G33Plh28Amrt6D46AMvccIe2wyw7NnPqI/T2mUvBpDP
         y0zMa61O/hvMXJNq3q7i8vyNJlnUaBFXnEh1XYJSl8zHPVgohFVv+DclGioJm8lupjij
         wA9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOZFORokJDL0J0B6kj82TdDypv0KU2iCkprC4jLoLmEqJ4W98y
	2ywSi0qPdIDHw/MhRDTNwB8=
X-Google-Smtp-Source: APXvYqwJQc8Ov6HmerpZDx81FfWg6fmxxwI6kXnea1nXI+Yc7Hb8QTth8H7Vezhu/mpZOTVRfegpRA==
X-Received: by 2002:aca:f18b:: with SMTP id p133mr6677582oih.22.1572580893698;
        Thu, 31 Oct 2019 21:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls1198047oig.8.gmail; Thu, 31
 Oct 2019 21:01:33 -0700 (PDT)
X-Received: by 2002:aca:ad52:: with SMTP id w79mr2351784oie.149.1572580893387;
        Thu, 31 Oct 2019 21:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580893; cv=none;
        d=google.com; s=arc-20160816;
        b=TTy03YAlkoSB2NNo4b5X6d335zFbiBPYeHXC2/KaqcOQ+Vw7rctv+ZyN3RfV8ZxipX
         mk6uXQVPazDwi+/BY9NoVAqQ5gMrBkhg4gBEb0kJbfiIv1jGqRHOodG1tF/PcIcL34yU
         jYLVkHdCh92hZs7uxT2JL9RK9nijtmiyJKrhtNKJZHksbDjnAeVKacqmyhUsdgjvAyXo
         kHjdX/CtfgjtM0wesUghad1NOoLY63NzySdtV+H6aGDptB+FBsstK/Su9SCUxywUqRNC
         ovzBccon12phD1BANEt3ufiVGSfq1pwmXJDWbhBFVP6+x+uYNXMkB3nVggXqMgHdsOcH
         QXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0eLf5qXAn9yR1tTlhAmZ2Kyb0+x5CBMrOVTM9Du04Q8=;
        b=hQ0G/ltijkv4rcf7SOEeR//yq6FgLGEPUKcGTUJNMC2XpmlLyV2JVlLilF0Rkdu2jd
         QN7oH0M6wZxGbMQ3sCBiH3/wasSkGAFkWy3DVPmH6I2IarS6c87z7hUwg8feKxh7/TbI
         FWa079GBXRRr1mWNaP8dkjZU2tJwvAIp+/LtsM38YpRKsxsyZlNJNOIMOQG0VDQ+iq6n
         2vPNOQEXqX4+meSWNo9UNEn2euq3lDP2n2/drY8BNZxd2XZoxzzzuT5FkPlyVcoO5A9/
         kLkO+lccRwsRB1Fjdv3qC/sVK1aWVId+MORnmJL7W1bjYYfBTnkQTfozb3Y/IVxgwyej
         c+ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A00p0LVj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k184si400280oih.0.2019.10.31.21.01.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id r1so5587929pgj.12
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 21:01:33 -0700 (PDT)
X-Received: by 2002:a63:5422:: with SMTP id i34mr11142718pgb.142.1572580892713;
        Thu, 31 Oct 2019 21:01:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j11sm4952818pgk.3.2019.10.31.21.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:01:31 -0700 (PDT)
Date: Thu, 31 Oct 2019 21:01:30 -0700
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
Subject: Re: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
Message-ID: <201910312101.4F2048D9@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-16-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A00p0LVj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Thu, Oct 31, 2019 at 09:46:35AM -0700, samitolvanen@google.com wrote:
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I think Nick already mentioned the missing commit log. With that:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index dd2514bb1511..a87a4f11724e 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
>  
>  VDSO_LDFLAGS := -Bsymbolic
>  
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
>  KBUILD_CFLAGS			+= $(DISABLE_LTO)
>  KASAN_SANITIZE			:= n
>  UBSAN_SANITIZE			:= n
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312101.4F2048D9%40keescook.
