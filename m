Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB66N5CDAMGQEZPTGBJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id AD52B3B6946
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 21:46:04 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id d28-20020a634f1c0000b02902238495b6a7sf12669244pgb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 12:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624909563; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tn/4y7zOVu2ga04mInfncYziY5ZFlpDndIamu4qXuziLaDM6mkvQVOkOkJtZ+ORznp
         BGqLXhilg0keJOx84qPHgffqD7NxkeA+KxDOSz2LKhYt0gYw0+MEIrdgqmQjz/Tcp+UI
         2c/zcyp/EnAuys3abf15QUIapJTXNe8m3Uy6GBEY9BcHZmf2X0tie6eaq5QlU8HuzKMf
         sdEIremAYfDnhcURhKi6zAFJ73pW7KQRh1MJ5DaHhHj0XrzNp5/EjVn+zxHw1Xh63HcB
         iVaVaa5MusfVGhEvp39+06Cn0hx3+6T9ADMYNp8PewBvk0PitNLU5eyVRfF8+gorp8Vs
         fDDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DBiXPmE/BNAhnnNw+G+z7Dskf9WlW4a6lFRKdxzQV5Y=;
        b=Iw3tVx2LLX9vUovqOZLD5lerZxn1h/bc+jCRrLB+ST3dW/VYlJW6nbHyFcYXbdmE5X
         xmZEYokKvqRn7BfSBqSXHKVav043xbXMmkiK8fWSPfLgGaJtdUdry4mZ7TC7Zr45JsNb
         zvzyQQEgKPk7GXOdh37x6U0+fG5V7jVBk/vVz/CUOmOzVJ/jmpWvpkS5jv3vhFD42Ru+
         jUuB1vsJmBREyYT623UhTuQ4k39XB8aFgg46+oPxJvGc0bZlNlSvSs7qKLj3tApzkT76
         i9cDEagd+v1Of+EdPjmz5oUdzLcLIEZnAsUcDfWrKKT3iH/srUN2jpaq/hsuyXKviY/u
         VWiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jwf8DgqE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DBiXPmE/BNAhnnNw+G+z7Dskf9WlW4a6lFRKdxzQV5Y=;
        b=juqvGKrhI1Fpobz6Zf46t8HyUxPqoHeMeBm3pi2vGVpO2U0be6/uaeGkPGprrjnwoh
         O2ZMXPjjJjI1UmLWhL00AkQPG1OWawl1R+PqY3Jl6ISviTTOVDXilZ/rI9GsyGC5ZAaa
         /xdMTdnbY6Q4zn5tMrpx2hJ0J+U1cq7mIq/rqITGpkCWImMaibMX8F/LQyKfM1B7EHsv
         9vLWgS4cw+Ya3WbGucnZCVMBxHCo4zHYsmqjU435NdS88Ff3CH8xJuORo3kgHl8pFgPH
         WxLn5xCnOEqxOrKxGNp+DpLBUs5NV4V5r4Xsx5Le9ZS56cj8+t9p8iiPLhF2WhXTp8d6
         22OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DBiXPmE/BNAhnnNw+G+z7Dskf9WlW4a6lFRKdxzQV5Y=;
        b=Mg8j0YakrHDmXEqK5OmuIzcx9D12989KCkofeMSRnSNVXuHVdvGFwKSPvz+9OK7Be3
         aZ/8hts88R8d5EV44S0ah93kvVrakH1uCwrXom+zARwxp7AOnMhl76IakXEJ0LSYzKBL
         Xyo3KW3cCm2cSpCm/5mApf8juMLz/Jz27fb82fRUaJFHvLgHwIwTi+z+YCs9A26utQ5s
         WGFp/HiP2IrigP+axDt3CVpCbAmspxAHJNZWo4//JaK6BToej1SOA0+hul2DBqm524bW
         ISrE4DZnzdjtIyfeLdnzBO94cFj6XelyWmuF9wI5ieq11K5As90fp4b9/K37PIQY7F50
         rTDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GO2nHlEA+dV4nJMxKnq8davMG8fnh3WacRK5Oev5zkUDBTO4T
	HDpqC+6iyvLh7Pbh/AdUIHs=
X-Google-Smtp-Source: ABdhPJzsS6yJ33U/vQe6MRAzPq9iM6rc/ouAU9RCNT54mW2/fH5GhBtPHdogra/C0e2lIbFP3ux/qA==
X-Received: by 2002:a63:348e:: with SMTP id b136mr24785759pga.382.1624909563173;
        Mon, 28 Jun 2021 12:46:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:18d2:: with SMTP id 201ls8422718pfy.7.gmail; Mon, 28 Jun
 2021 12:46:02 -0700 (PDT)
X-Received: by 2002:a63:4041:: with SMTP id n62mr24144809pga.204.1624909562320;
        Mon, 28 Jun 2021 12:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624909562; cv=none;
        d=google.com; s=arc-20160816;
        b=MzZ9kkl2K5aIKn4iikQDQcoim0WQLx5Afd6CVu+e7QhXaK6VLn+n5oxJsycM96USAI
         +t5eKLEaO/TjVbnWIHlLL7RukkB17o/ANH+8nhC75OUHk3k0oE5n4XI+Ght6QdyrDZg0
         aw0x9+VdiTSrlJpPWf5EbQk4z1qudzi0fD65SoBu8584cbnuixOsAeHlJxSrDXkup728
         BUnOIUHR72jIkm4AtHCVSLiAzKkIx9GZAgf7R1k02I4qcNCtm7s2UJvI9+Z8vbh+BmKP
         2lZT3bidiJ7KAj642g9Z1EkseK0t0O4hkZtDB+tN+o1fwNMPIWyyaLkDGQPIKF0U06Vc
         +yYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TSgUW3NSAExO2JigvT+8kT4R0cd21qdm9pPrHX3fbKM=;
        b=FFQj/h3uNWKYOAZsUzUGIEaA7tEl7/9X6b8EqF3urDvBfz44dx//qC6/0/NSNtAHa8
         E1jl5WXbDfTNGh5t7+XVdIaMXx6bLaLpDlSr0a3vv3iKmT0Rit2/K5VkbOSkK4F3jMk3
         JUAGb3ruHn+D/evus5zFlZSfvBg1lMUWXjBZ3UhF2h8hmJIlWf5YzToe6p7Yjn3zfNY6
         l6ACjwacwc90yv53EHBqgI0yLWTxmQmLvXuHBoa4tyxMxIniLkC6DemdvFCW8mCLCv2y
         CTopzAKaZo/+SMmgtr+/ALn9FPsdX9Iymis0dMnBIlsth02E9poHNHNJyeQQmcDPXngl
         1n2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jwf8DgqE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si43213pjq.1.2021.06.28.12.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 12:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA4B061CA1;
	Mon, 28 Jun 2021 19:46:00 +0000 (UTC)
Subject: Re: [PATCH v2] kallsyms: strip LTO suffixes from static functions
To: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, "KE . LI" <like1@oppo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Miroslav Benes <mbenes@suse.cz>,
 Jessica Yu <jeyu@kernel.org>, Joe Perches <joe@perches.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Randy Dunlap
 <rdunlap@infradead.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210622201822.ayavok3d2fw3u2pl@google.com>
 <20210628190509.2486992-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
Date: Mon, 28 Jun 2021 12:45:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628190509.2486992-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jwf8DgqE;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/28/2021 12:05 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> Similar to:
> commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
> functions")
> 
> It's very common for compilers to modify the symbol name for static
> functions as part of optimizing transformations. That makes hooking
> static functions (that weren't inlined or DCE'd) with kprobes difficult.
> 
> LLVM has yet another name mangling scheme used by thin LTO.  Strip off
> these suffixes so that we can continue to hook such static functions.
> 
> Reported-by: KE.LI(Lieke) <like1@oppo.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v1 -> v2:
> * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
>    also occur for thinLTO without CFI. Split cleanup_symbol_name() into
>    two function calls.
> * Drop KE.LI's tested by tag.
> * Do not carry Fangrui's Reviewed by tag.
> * Drop the inline keyword; it is meaningless.
> 
>   kernel/kallsyms.c | 33 +++++++++++++++++++++++++++++----
>   1 file changed, 29 insertions(+), 4 deletions(-)
> 
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 4067564ec59f..fbce4a1ec700 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -171,14 +171,30 @@ static unsigned long kallsyms_sym_address(int idx)
>   	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>   }
>   
> -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> +#ifdef CONFIG_LTO_CLANG_THIN
> +/*
> + * LLVM appends a suffix for local variables that must be promoted to global
> + * scope as part of thin LTO. foo() becomes foo.llvm.974640843467629774. This
> + * can break hooking of static functions with kprobes.
> + */
> +static bool cleanup_symbol_name_thinlto(char *s)
> +{
> +	char *res;
> +
> +	res = strstr(s, ".llvm.");
> +	if (res)
> +		*res = '\0';
> +
> +	return res != NULL;
> +}
> +#ifdef CONFIG_CFI_CLANG
>   /*
>    * LLVM appends a hash to static function names when ThinLTO and CFI are
>    * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
>    * This causes confusion and potentially breaks user space tools, so we
>    * strip the suffix from expanded symbol names.
>    */
> -static inline bool cleanup_symbol_name(char *s)
> +static bool cleanup_symbol_name_thinlto_cfi(char *s)
>   {
>   	char *res;
>   
> @@ -189,8 +205,17 @@ static inline bool cleanup_symbol_name(char *s)
>   	return res != NULL;
>   }
>   #else
> -static inline bool cleanup_symbol_name(char *s) { return false; }
> -#endif
> +static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
> +#endif /* CONFIG_CFI_CLANG */
> +#else
> +static bool cleanup_symbol_name_thinlto(char *s) { return false; }
> +#endif /* CONFIG_LTO_CLANG_THIN */
> +
> +static bool cleanup_symbol_name(char *s)
> +{
> +	return cleanup_symbol_name_thinlto(s) &&
> +		cleanup_symbol_name_thinlto_cfi(s);

Won't this be a build error when CONFIG_LTO_CLANG_THIN=n and 
CONFIG_CFI_CLANG=n because cleanup_symbol_name_thinlto_cfi() will not be 
defined? Should the cleanup_symbol_name_thinlto_cfi() stub be in the 
last else block?

Cheers,
Nathan

> +}
>   
>   /* Lookup the address for this symbol. Returns 0 if not found. */
>   unsigned long kallsyms_lookup_name(const char *name)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a970613b-014f-be76-e342-4a51e792b56d%40kernel.org.
