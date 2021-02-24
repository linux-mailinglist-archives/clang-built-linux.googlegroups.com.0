Return-Path: <clang-built-linux+bncBDV2D5O34IDRBY743GAQMGQEA36T46Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B26232420B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 17:27:16 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id h21sf2170634qkl.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 08:27:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614184035; cv=pass;
        d=google.com; s=arc-20160816;
        b=tFSsisU+8W3rQuUWWJ0oLSY2fXSvJO2+UfDfGF9IecqfFlW6eVED3HzLSvMQMBjSyh
         Lkzkw25dhz0/Hi0evGM0BEEo2yAieDvUjNU37IqRRhIYCt3zxordNhPHJHwTJyQciDJa
         QB4NNDCb7Ga11MBoy1EO7i9bR2v8VnzTuYGll3WFEMfsETM/u0e2VgXL/e0vaT9d/i6V
         +NdpHr2+f74GZTjxbrzddvdnzYmN/zV4laqm7vQU0666R+fI+C8N7XlqxUm28rTxKcyw
         L7gYgjEH9VzxoOKanVCVjP6CmvI300OFHaT/up/aNEc1PBx8SUZcpSpjEUseos9uY1TZ
         XAiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=O2Ot5upE9JIWMRWkrvUoRO6OgJbzvMWw4YHoW+fGWuk=;
        b=dTtwET8s1Mt8DUvbrPFfROS+dLMXbPiiL1Hj/1HSGWNaG2/gI6nTdbVb4UhujKq+Gb
         3wEQvTRUngIzyZlBNz4lELpZcqpRptlPafbhs+Og7jUFQlVct4ppGjIyeFgBYsphfz6y
         +X1LlLpeEannKti4bZno3pGjHvmGUh1QQesBSlN6eqRofnJs9+cfQ5VNznUTaFXQpG8i
         qcbTyr0G4rAQJT1f93LVJ8Nj0Pv5xt5/6KgNPQh5WwrNWFwVvFO+Z9NSQuyJY6qFvmmk
         sa2Gts+R6GWTXwWivOH8LyOsd2I/bmNVihwvHZojVoV42vFB5YFVqGoPcgSC/eHQaB5i
         8jaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=mRzsInAJ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O2Ot5upE9JIWMRWkrvUoRO6OgJbzvMWw4YHoW+fGWuk=;
        b=BbIqW1bFyWAy3/DYTnWubfHVD9DGPc5rteCX2AEFMFsuCobJJGv55dT0mwTJLDkJSv
         PMI54CwEEletR/4dzYTlT+dQjqc01FHxlnBeb8eJhuoLTIl7yJ7XLW9BF78BSkqvyCBb
         WpgDBj0PdPmlWne7IV0noRQhi7LbgbZmO5AOa0JrQhEWeXMQxaWHJh92K4uRbK8Bg8Ro
         n0ejzzgWoB7nU4ObbxjNJsqnOH1LREodgjMtZyv8qUOz0+72H1CbZPjhdm2xKRicRTlI
         W6OHkEP+t0dyTipJRVN1wsEoS/TEXM7eygZvTtZ1SGU64Ch+66AyGYujYNSk6/HpAmnD
         Y4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O2Ot5upE9JIWMRWkrvUoRO6OgJbzvMWw4YHoW+fGWuk=;
        b=JEiR3w5vQgCnuLUos9bU3gAFroJe/LBtU1kMq6Y9AvR+OHtiIiiXYoPnZ8pesgpang
         FJTNrsXUT/NnjWNExFkc2A1BGb0EmDtNzt1WcitHgccbzykkPISD3+k8FKyNa0YpYxi+
         CMMDHe00QfxaVcUDlUJYrBCtPuLtRm5zWYvTZsyRsljluhafomBdwYDqRpFPLwNCUy39
         Z4MbY7+CEcd72iI0VxYs3l88KNNykrFJl9xbDc+1SJ5B/5zwuPx5pREgUy4eLYiZqAPW
         7ey1TMq4Tj1TE1r4x0aTHBY8ruBSMC1TA82DIB4mFRZSiyLcnAxFDwrSQng1QROWSaIE
         lelg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HfMyBuxZ5rrpEHvdZDTHLeb2CFVWzL43/zztNpBusAmUY6jrs
	rjMubag9xJNpniz3liGq+Uc=
X-Google-Smtp-Source: ABdhPJx1KWF0OHmctGkhXUEG1ks5qNUmy775op6/uBXpdcK70oHq1HMHg4XXWVWQ5WL3ILxgbKreSQ==
X-Received: by 2002:a37:2749:: with SMTP id n70mr1827962qkn.105.1614184035097;
        Wed, 24 Feb 2021 08:27:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:4cc:: with SMTP id q12ls989967qtx.0.gmail; Wed, 24
 Feb 2021 08:27:14 -0800 (PST)
X-Received: by 2002:ac8:3734:: with SMTP id o49mr13620496qtb.376.1614184034301;
        Wed, 24 Feb 2021 08:27:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614184034; cv=none;
        d=google.com; s=arc-20160816;
        b=zywNYgBaj99BlU+la8i9YgZz3SXMUz/jQRl4m/MOwlKitAqInwFIpRd2ty9v3Pe+/X
         I/C/7m+8bjvZmJC5MGKwPyDabjBN2+6giYRZGLMlYs/A3zFwi3fRYKjkJKIQrduQFrNG
         Q0X8ic3PxkYuxr0JJLgvGWP+d+VK65dGCAco3AJMEc1kiLxpI8+i1tlFYN9KkVp/9e+w
         2DInSuVdwNaCALaGmQa2F+dHHhJWGWLLUklRuqTPgbcKV/xy+BWJeLvaxoRMngPfrNQM
         +B3CuUzI1JGrJeH2rjGOmZiAJFWT291DFPPnnuzpMaFknKe+zk8Bsyz4M7e58E0YU61B
         SRqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=oAPR85te3dRyKOTRlbHy17l5x3IzK2Fd4bEuFT+f54M=;
        b=uBMifhKhpg8XcfrZjP2F++FRw+dVdTf3m5XDZ9fK4f8fglZblDgJIF9S4OsUMYLEcZ
         n0h9F5TT25v5ApdfU+jbADGdUHQWqXlhTV19Af8Q8/T3tDh5h2N59EWV3W4c99PzpZFA
         OqjR2KMw3nhO4t23fBAa9HCJvXIHP8KIMqBVcyD+xl4SZCYeYdZJXxl9USHG0IBVifFr
         FGMUAWIEUBXSMcLpw1pYT9p39D1zzi/DMM0AgtXByq/yQ1Qmt0h5amyNiXO3PCxpFGBx
         suOT4LtLeWn0zUF87AogDZxQRMHBPpKPuQkNiEFSb4dP1UzHNkRAydht7ixRE8JnkEbC
         hT8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=mRzsInAJ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id p21si190915qkh.6.2021.02.24.08.27.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 08:27:14 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::d05b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEx0J-0003Gu-JA; Wed, 24 Feb 2021 16:27:11 +0000
Subject: Re: [PATCH] init: Kconfig: Fix a spelling compier to compiler in the
 file init/Kconfig
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, ast@kernel.org,
 daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
 kpsingh@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 masahiroy@kernel.org, akpm@linux-foundation.org, valentin.schneider@arm.com,
 terrelln@fb.com, qperret@google.com, hannes@cmpxchg.org,
 keescook@chromium.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210224081409.824278-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <64923623-633f-12cc-41bb-fd705f2c8aa3@infradead.org>
Date: Wed, 24 Feb 2021 08:27:03 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210224081409.824278-1-unixbhaskar@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=mRzsInAJ;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/21 12:14 AM, Bhaskar Chowdhury wrote:
> 
> s/compier/compiler/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

in Subject:, "Fix a spelling" is whacked. Maybe "Fix a spello" or
"Fix typo".


> ---
>  init/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index b77c60f8b963..739c3425777b 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,7 +19,7 @@ config CC_VERSION_TEXT
>  	    CC_VERSION_TEXT so it is recorded in include/config/auto.conf.cmd.
>  	    When the compiler is updated, Kconfig will be invoked.
> 
> -	  - Ensure full rebuild when the compier is updated
> +	  - Ensure full rebuild when the compiler is updated
>  	    include/linux/kconfig.h contains this option in the comment line so
>  	    fixdep adds include/config/cc/version/text.h into the auto-generated
>  	    dependency. When the compiler is updated, syncconfig will touch it
> --
> 2.30.1
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64923623-633f-12cc-41bb-fd705f2c8aa3%40infradead.org.
