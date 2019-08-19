Return-Path: <clang-built-linux+bncBDQ27FVWWUFRBAM65HVAKGQE7KP33FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F68791DC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:25:55 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id e83sf495365oif.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 00:25:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566199554; cv=pass;
        d=google.com; s=arc-20160816;
        b=ih9YYz+ltlwGtLuzBH/bVF1MwwONW0suKSSqevXGhjCwZegydTXmUGTK39bFFSN3DT
         s2BS+kUwv4QdWkQnLgXTSRsHc0v9ySyZWuHmLOd9K11VYgwEfBWvK0MDeXTwyPI91Ko4
         K7AXrGNd4USxVL4EBNCfFCjhfKesT2IlSlHAzCEv5XWxppS24l/aVeJHXHJTnRYw3Yd5
         ziedxP9ffYwadASs0uFoGLgXDYqmzX2Dw2GKqJiIXihqJU9mFMKfo8l2eyMpr7PB5WFw
         6Btmx8ta015WmQLxdkY76iBh87tsKNHryum0X9ODauRGY48V1yg3yue0PHzy46Wr/TUk
         +jAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=BOE9FHYWXl4TNm37mSHx2sX/MYs+KxeLFDiOjJFwNco=;
        b=j+eG5W5JI1/7V8N3GnmdB5BPJmFGjMfehl7DlsaH83usFGPk+h8qiJVNwAyeSmSq63
         cepX0OJNC/m7JFJ0nyfRVPUiob9puuM2CaqMXC75/Q9lrIXctZ6uuQECQ3CPt1G7L725
         MEaTeu4rGnlfC7BXR8b3etRDL9vyKwH/1VV+Bhu6gRv7MFbjdMTbNKQw30NOuuxmLBfk
         stbg1nE0pzgqrbidO8xCaDFgsPDHinCXxx3UVuIWNq/FoXoBEm2Maq2cgpB9JXsLDMn8
         ek/a3Hp6Go5g9+U3Rz6rDLxAEldMfeannNY3flR8m/V0nCacA9zeYaevktq4zcxDRqWv
         +svQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=OW+OUXy8;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOE9FHYWXl4TNm37mSHx2sX/MYs+KxeLFDiOjJFwNco=;
        b=n8Ml9om1asdUVQOaPjiKsPQwdfXFbDbu18iGQsrionrLMBkAmttj3CcGQBXFIZC35r
         CNDfaT8TpMpXQzXL72kDc6lY1bgHuY5TzZ8wl7KOJ6r1Gj9oEIYeN6n/c7/VDEhrfjpr
         BaQpJWeaCtQaymOIPzuJesne1TkupF6MagY4Kr0vnF0ZeVxTEPP/nIeJvxSyc47ovOhC
         kfCXun7jlEMr55UsCFIIxF8Xq0uygBChpMarl86UrFnh+r87HOESTXjBCCpYRJu1A3Iz
         2lMIaE4sLw6MrEkBn/cw4CUT7YT/nN9/p/Ep9hgjalZoQerqNpkwQIfh5pq/AitUAN02
         iNzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOE9FHYWXl4TNm37mSHx2sX/MYs+KxeLFDiOjJFwNco=;
        b=nuZVTE02qyxncuAQqyI6PtKl7S39MhMGQxEodr5HsbEusCoiaeUfu1H3mBvNIPA5/3
         yR5t8klD/ONuWvuGYnyrepnP2qmctp4gFitaDrPDp644N7Hw7FXzXn1GJLaizu0AAaFl
         stgtXbBLZ+LAV6BYeU4kSe8hOccs/NH2cyGNsxtQ36P/KFoBBf8II5rMN3eQNJIfuSX2
         ipKy7I2M/ejq1oRQDWvForew4SoIkCWeVGhKHKK0hSh6iqtbvfMH8Dus3WvTLvoiMiGQ
         sdN4Cr5BF6ckYyM5gsQyFJSI8vl4NrUMYkeMHE0bUbb6vGqM/u4Ww1HCyfu1brcssw+O
         eBGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsgRfF6O8Qk0jtUvfWwwvRuxpapx0RjZczs8QrdGb+eynry1ZF
	0Heu5GPPknZ2E9z9yMS3ZoQ=
X-Google-Smtp-Source: APXvYqyCMws6uwu4L3cThXvAKIb0w8LCx5jWBz+VgRbQpNTPqRdfYRZrLhvlb2HYx+YJ/5nY/LsXaA==
X-Received: by 2002:a05:6808:5cf:: with SMTP id d15mr9093819oij.140.1566199553834;
        Mon, 19 Aug 2019 00:25:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c488:: with SMTP id u130ls1609715oif.5.gmail; Mon, 19
 Aug 2019 00:25:53 -0700 (PDT)
X-Received: by 2002:aca:cc56:: with SMTP id c83mr12819812oig.75.1566199553503;
        Mon, 19 Aug 2019 00:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566199553; cv=none;
        d=google.com; s=arc-20160816;
        b=VbbgAHAqDfzlKbHIrY5zsORAV8oW5y9jYYn13NZxBbWqyji/eDIJvzoev4SQqpSMhw
         F2fgZKt9iqJ/LkVQ+CidcqtkDj2MEj8I1C424E5YSLxYYoN/n0e5SCcKLfZ9T+JtWbaq
         5btaVItJ1YHOWU2xpt/RYedzPMne8JnP6/d6psvn164x6HM5Fd7zYxDOjvGZAZmxc/ad
         xIK14qZDLvRG/0cN/tgSVkl/ptDnQFcy0WXdM4/9PNXmeHiiZiPOKDJy8Q51GSZXfJAr
         qjVra9fMUJbjq7huRVjPSqJK7wLug/Cxlso/E/N80SeVKkYUfyrRGtfvxFoyOTjNRbWA
         jBXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=tBCDDckHGkeN1/u6Pg4KXWwPQu/0aeVQyazu3cqADzM=;
        b=jeCmq6oGMxhsL+oGqzRDNJ0J2nlqNBwEVohbr4ug6aCs/6MEp4Q04WaZRcXDyl7nXp
         MMKlShYY3AR+C1XBh5YvmqbIXmV3+r2t27nQcjOEpZlLe4PqiWTgJJlys7wMz81pFhXf
         E/HO7vHA8isBmxGjc2sWZ9Q5UVEGAY+K2XA2mGK9RreJL4q5UlrKjvspbpYY8iITkMOA
         d22p2L2FUELOLd7Xr1VRPzMH6thpMtPpppg77RRTVPWMcr6nKFE2FPRRvrmbOHmvOy8f
         tTiBpOB76Dh2AWPn15UCEOgMtFMyr2LF+hHvBLVDSxQgBeAzi1QbnBkboFzxcBACWzVB
         U6aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=OW+OUXy8;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w3si881676otl.3.2019.08.19.00.25.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 00:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id v12so645709pfn.10
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 00:25:53 -0700 (PDT)
X-Received: by 2002:aa7:9191:: with SMTP id x17mr22772954pfa.23.1566199552574;
        Mon, 19 Aug 2019 00:25:52 -0700 (PDT)
Received: from localhost (ppp167-251-205.static.internode.on.net. [59.167.251.205])
        by smtp.gmail.com with ESMTPSA id c199sm17606492pfb.28.2019.08.19.00.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 00:25:51 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
In-Reply-To: <20190818191321.58185-1-natechancellor@gmail.com>
References: <20190818191321.58185-1-natechancellor@gmail.com>
Date: Mon, 19 Aug 2019 17:25:47 +1000
Message-ID: <87ftlxty4k.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=OW+OUXy8;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as
 permitted sender) smtp.mailfrom=dja@axtens.net
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

Hi Nathan,

> When building pseries_defconfig, building vdso32 errors out:
>
>   error: unknown target ABI 'elfv1'
>
> Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> powerpc64le toolchain") added these flags to fix building GCC but
> clang is multitargeted and does not need these flags. The ABI is
> properly set based on the target triple, which is derived from
> CROSS_COMPILE.
>
> https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Driver/ToolChains/Clang.cpp#L1782-L1804
>
> -mcall-aixdesc is not an implemented flag in clang so it can be
> safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
> use gcc specific options on clang").
>

This all looks good to me, thanks for picking it up, and sorry I hadn't
got around to it!

The makefile is a bit messy and there are a few ways it could probably
be reorganised to reduce ifdefs. But I don't think this is the right
place to do that. With that in mind,

Reviewed-by: Daniel Axtens <dja@axtens.net>

Regards,
Daniel

> pseries_defconfig successfully builds after this patch and
> powernv_defconfig and ppc44x_defconfig don't regress.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/240
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index c345b79414a9..971b04bc753d 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -93,11 +93,13 @@ MULTIPLEWORD	:= -mmultiple
>  endif
>  
>  ifdef CONFIG_PPC64
> +ifndef CONFIG_CC_IS_CLANG
>  cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
>  cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mcall-aixdesc)
>  aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
>  aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mabi=elfv2
>  endif
> +endif
>  
>  ifndef CONFIG_CC_IS_CLANG
>    cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mno-strict-align
> @@ -144,6 +146,7 @@ endif
>  endif
>  
>  CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
> +ifndef CONFIG_CC_IS_CLANG
>  ifdef CONFIG_CPU_LITTLE_ENDIAN
>  CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
>  AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
> @@ -152,6 +155,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
>  CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
>  AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
>  endif
> +endif
>  CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
>  CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
>  
> -- 
> 2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ftlxty4k.fsf%40dja-thinkpad.axtens.net.
