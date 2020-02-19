Return-Path: <clang-built-linux+bncBDV2D5O34IDRB47OWLZAKGQEMEBOSQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id C82F3163BFD
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:20:04 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id y123sf19212070yby.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:20:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582086003; cv=pass;
        d=google.com; s=arc-20160816;
        b=eAVSNpRATFWbqzKDiv6eaJs6SWatuLpYvYXCxjSiqwBWRZPur/yvaGkSNE4dQRTGOP
         R28JM82RJTtTQr+zYqgKg9P4DJ+6O+j0/4ZNbNJnfHyXnoB/XWRLKZRw3qOeljWLxzcO
         nXMJRhKj2h95k5wSbsSrn+IH0CJXOpXZc94Ls2/FNFBLac1HRUdiCLZsWZqW2yOoaD4G
         xHF4DD/jI+rSJwWsVf1QeFMo6j+hwob87sIFlb3pkt37TC+YEngnHtnp24TuKBHsGiqK
         Dic6UVu69M5Puu9VQnisZ6rcCNXyq9+rY0OqOzqPiN6JUaoVBMH9exbgmL0sCBX2+Peo
         qtBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=IdCr30sZ3c1r0xlrvZtYx4FUY0M6gPPaeukLDppGbvk=;
        b=KQWIlZ4Amx2drO2M93TT90Qh1HyQa8XOFpzYQD79GCYn3azG2rtdfo/3G0sdUp1Abv
         EG+NMCciTtRdQ5hPy2cpWClRLk6v6lav1gC3T4+SgONB41KCJOTpp5urGnE/s6ksnrjd
         VuSnxyPO3h2DLHY36mZCHEMV2aWNgD92g60pPmQuLP4FvthnWP8SdGzUftQr2CQPJPzm
         Xv7AOB3IwhUmdKGZ2C6XfmYVkJA4d4G+ITT8ktWicvIqVOeUb+3aJ3O3hGI1nk1XOFHS
         gns1XcC22JWF8Trbi/j2V2BocoCfBvtGoZXYzhMTi+JANE5eVjaomJLV7r8BwcI1K/Jr
         UImA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MTrRstBO;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IdCr30sZ3c1r0xlrvZtYx4FUY0M6gPPaeukLDppGbvk=;
        b=UEs8irQBLv3+yD7/UVrUj+tyE2Ox8do9VST4PFPHiPgI8V+8Abe3h8A28ERPit/K5S
         wPiLW+iezDo5QokL9Fx6lBWW9XP3+FoClj9HDkFzidSATnp+WiZSxJnhw0swqCwI4HbW
         6/IQtPfd3E9pXbpmNghlJ57b7FivHp0CGICSVJQ8euFs9Z/C5TQ2Tyz6kj1RXQG9pyXR
         yflx8YR2rgyZU24UO4y73LtW5SZW2XbyZYrlKsqhs2/e+4y9peZ4e/mkbLNsnNTQ64zq
         YktXu+UysR/gu0kaGLl5U+OrDShlITeSU/pG/9fI6sQ7yWVB9eKubCcML8fZM6kW3UiB
         CQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IdCr30sZ3c1r0xlrvZtYx4FUY0M6gPPaeukLDppGbvk=;
        b=ILQa0k7JwMq3SO5/E/7zRY9jv1+GniQp5b6lXbblkOhOiOO/ht+dlDIRgtjJgyZr2f
         Ee8aZ5CjwNuswGzKF3/AfqbLCmGWv8pzHZoufCtLaqEQbV4VdUDH2wTFQQ1ysVfGZBl5
         Qf6+bUKEBRF1x4StNPcIzg0nHF270v//XzJqyrGp70uA6OB5riWkdHrq2TOnKD8aPo4G
         pdFVgIetx6rRVyUsK6fIjT3v9UWx8GMNhVkrhz0Y4fFwJh27vkR7Y/HlHo5EzhCC+zl4
         oMmBMYpRTVvOKkJEb/C0cKnU5GL/l9C0Bfh0iXS6FcrdzY5C7NQUm4ndACd6zQov+oRm
         qVng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0mfVDnwhSBOrZEOnZMuSzvwKOO05Y3Hg9iDQMidJY35cFLwtK
	EM1WipRdqVa/PVTuiaQYEvg=
X-Google-Smtp-Source: APXvYqzNtQFcXj6kXJZOwbh55FXIW0dJlAk5T34FSnNysGskkHMfx7JdLl/bwKOKWs0SgHIa72Kx5w==
X-Received: by 2002:a25:d4d7:: with SMTP id m206mr22275959ybf.19.1582086003582;
        Tue, 18 Feb 2020 20:20:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f88:: with SMTP id v130ls3826023ybv.2.gmail; Tue, 18
 Feb 2020 20:20:03 -0800 (PST)
X-Received: by 2002:a25:ca8d:: with SMTP id a135mr24608542ybg.143.1582086003223;
        Tue, 18 Feb 2020 20:20:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582086003; cv=none;
        d=google.com; s=arc-20160816;
        b=bWCAGEnAI0uFZtAsL7WYT60DPg38KW5RvMIAHiRPeOIlVC5qzR0dRmuRn2M6s1WGYF
         GAh9ouh52EknBfGVvbz0B+sE5VT8kJouNKQpmb95gnozf4xLwbCVVNQhc8qsdN2mTzsE
         0iox6IL3pwxHy93Xy1dE1PiF+M3cd7EOFjBLVCix/ytm0xH/xG5XOfiqbVWeD3u+2bY/
         4LklHGofVtMJ8LRFL5CX/aW6PvfB4TSQ2lz/tXH9TPHqmJhFdjApOnvwJQDQpVBeK9vC
         Gr5ifbVCRXCkuiZaipL+StCPLCK/Mun9y1KoCGvd9QOy9n221ZdmQ0h0Jsu+NW2bLIVL
         IG6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=w1v42JIbxbTQaj+IwxBJakhg/k+j4nNZQJZ/BeGoer0=;
        b=0X2ABc89o5HlOjh+l/nT9BgNZKJV5fzXeIQKT6ed16VqXMk3KzHeQ0y+PrHUS0rW5x
         oQhXZqW6SQh0ym4/A48z1lC4Ru9MFU8+ZFWTTiRsL2q+oEOTm3hFSbyqOj1ajmf8Cse8
         X8mNo9LsIC4laykb0RKtBofkXM/u66Fx6BBhKLnLhb336h8z5rE7euG0PqVK4Ngwf9H0
         VCLbj3Gy9WqO6GH6NYhw5DEVSWTXyNvWA6hOSX2Nwa1m5Jjcyyx56F9Q66JvK1PMHR6i
         /jWLqu7b2JkR0qVSM/YoTV1jsyDOuez3kEaDPJqOIIvnExTY5lN69mBP8RaMY5r6N/Mj
         zGuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MTrRstBO;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x10si84750ybs.1.2020.02.18.20.20.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:20:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::19c2]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Gq7-0003eb-PE; Wed, 19 Feb 2020 04:19:59 +0000
Subject: Re: [PATCH v8 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-2-samitolvanen@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <60ec3a49-7b71-df31-f231-b48ff135b718@infradead.org>
Date: Tue, 18 Feb 2020 20:19:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200219000817.195049-2-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=MTrRstBO;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Hi Sami,

a couple of minor tweaks:

On 2/18/20 4:08 PM, Sami Tolvanen wrote:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 98de654b79b3..66b34fd0df54 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -526,6 +526,40 @@ config STACKPROTECTOR_STRONG
>  	  about 20% of all kernel functions, which increases the kernel code
>  	  size by about 2%.
>  
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	help
> +	  This option enables Clang's Shadow Call Stack, which uses a
> +	  shadow stack to protect function return addresses from being
> +	  overwritten by an attacker. More information can be found from

	                                                      found in

> +	  Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +	  Note that security guarantees in the kernel differ from the ones
> +	  documented for user space. The kernel must store addresses of shadow
> +	  stacks used by other tasks and interrupt handlers in memory, which
> +	  means an attacker capable reading and writing arbitrary memory may

	                    capable of

> +	  be able to locate them and hijack control flow by modifying shadow
> +	  stacks that are not currently in use.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	bool "Use virtually mapped shadow call stacks"
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.
> +
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>  	bool
>  	help


thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/60ec3a49-7b71-df31-f231-b48ff135b718%40infradead.org.
