Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7XZ5CDAMGQE5AWXSZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAC93B6A1B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 23:20:00 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id g17-20020a6252110000b029030423e1ef64sf10038066pfb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 14:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624915199; cv=pass;
        d=google.com; s=arc-20160816;
        b=bgMu+ichITnsL+ht65BIqSSb+XU+aNZFjb5+h8TkOeFoFZYOWCMxV4B5aFOXJDivOX
         uZD+EVLUZ+Xm8rRtUpna9vX9mAyudBRvMULyMl5Tk4Cn00BB6x/laVbYxTt0zZ1rh3AZ
         vYDytvyVZQBYKdFQE/jhtTZ48pz6j+zxz5qkccUSXeIuo3zRjdIkL8D3n1m/mO4xAjmD
         yIb4jlASk2Q5KSlwpO6HCUDu2Ry+D80Mn7wB0kxEb7Ju8+kEvTiKIdnS2t9HG1HHTinV
         uuVPZq/Pl2/F/jWFDB5DludXMtG+n/eGH9h4Ky9qvvfNDqU/4z/ZlRm7gNs8IaKewv/4
         HRiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aQNLCDfmMiFxzmWbo98mL/IXl88fC6qX7NWi5jYgM44=;
        b=pU9T38OZlF6RgGQVWls1rHpFxU3GSlLSrxkwQ/nF3MyuOeBUB02Zq4l8sge1S+ADkr
         4YjVBMfgVa4HmwQ8nTxU1Ih/ucx1b9SJ3zlis0dAESiibN3HRv8vYGqmjT7sgiAznCtS
         Z/OgC5zKKcAtSH3+IsXz8VnNqNPzY4e5pqA8Oh1oGzEXfSpAon8qE3txTMA3ikZZ8r0e
         AdueQ3bwc2fOTenEoXh0kgllkbzmJmmAk6WnJBYhpHwWS8t7jb8bQ4MLDNv0/IwkubAc
         PXKooKx5jtcTFV77ufl+YBAqe3FjLFgLY0yBiNereeX60TbIoz82biYqOCo9TDAhI2Y7
         r6EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CwXXvT+2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aQNLCDfmMiFxzmWbo98mL/IXl88fC6qX7NWi5jYgM44=;
        b=Ua8VbfYA0RJRSy9g2HvWSK86ExV8h9JqtRhW6V6bhb6E9PJY6y/imuHELfSZpOdiHY
         anXMYav7jjDKo9MlfzV59mmttbi84ErhhSjtb/deslDqhmvCyzo7jh7yxRZ/vNb2Rpld
         nnSTfFnwUUU7ALnxHxMB3KYe1eg3z5dVbSK5Yjz9Of51CI8ORQwgwkMyS4AwiOn0DuZf
         BkFwMqQ/xE2M8XmZR8ktuByGhc6J8WwiM7io8z1uWK0UHkNkfP+vY5h2KaRSxGJ52cEG
         3RZMVEnePKs9bfd7BFlf3E5d0ogLvAoVjhHoRsJI8ZrppgqgZ0c0NeAKYp4pM69JRD1V
         nW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aQNLCDfmMiFxzmWbo98mL/IXl88fC6qX7NWi5jYgM44=;
        b=V2viwu83EgmrQSJcmn32lihw7028cDYMcFJBQh4uXaVDpJuUbE0BhjnWHxWgkJ9DWu
         smcJflB/zsiQZEiGzu6SjU3OwMQoHWk8isfHs6+E1GUHx+QvDCesUkhXOpi5UEi7UCDK
         ysVXRmx/5iXx0XbGMWo8weRcFxuwbXL4K3MW2yU/Yn9VcSzCvtCexuQF7X4sFCFkI7mj
         2zwJ3vkEhcq+3lFCk0RyTL+8iP3jtI7cJTwG4r/KsIcQSgaki3ER49l/L3EG17p5io7c
         jhrSL2ELaGMPvuZnq0fLDELvAkIt/mVkEfU9bfXk4zhTTCqsmI73CNfhlcaLc/ETgXqJ
         7h2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531e+1MQtiTm9zeeLPPL7GYZr9V8QfrlzNNLnqEeQx05SJH8aCPu
	s2lYd8UJQ06U7L4fsINAGXg=
X-Google-Smtp-Source: ABdhPJyt07nq0HoMo+0esoalzYdf1E9GIaVRimuNRnxFpqA8Nwyz+DXEiL3AHq9yIKbwMxNGtAhlpw==
X-Received: by 2002:aa7:904e:0:b029:305:c072:b643 with SMTP id n14-20020aa7904e0000b0290305c072b643mr26214114pfo.13.1624915198794;
        Mon, 28 Jun 2021 14:19:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:471e:: with SMTP id u30ls3809992pga.3.gmail; Mon, 28 Jun
 2021 14:19:58 -0700 (PDT)
X-Received: by 2002:a63:1d41:: with SMTP id d1mr22800630pgm.199.1624915198196;
        Mon, 28 Jun 2021 14:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624915198; cv=none;
        d=google.com; s=arc-20160816;
        b=iEbqd2p249yq6pr3wDGeC2N/Y9roalYQEgBpRiE/Ohp0JxQDUkZXonrhFC1NBM5O7D
         GO5sM500cori5Wm0sZKgmjThNollwJskluiwklCrrT3fWuSJVlmExn6YWfXHPXRLJVTQ
         6a/mRUHs8ygnQhAH84kGbCKThkVecJ82SFejw8/HVQdQk1PSFR9aXGM6mwmcecVfiTe/
         97wveV/A+Qpm7ccqrITFUIk1Ct++UxW0gaPlZe1Wvw7/L9j/WMAfn/0i5miLCrx29Kff
         dlhWjnQecT4eOk2uNnp0RBywnvBUlmjjJEgZ3QQW/bXnk3CzD39hHTH8hTgTbLZ9vBax
         z5jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2kxEJqv/3hpfOlYO93tb4IUoFbmRRFgIjfQlm0EmzvE=;
        b=taTy3BfHmBN2RepjroOudo5yBcu+gz6MtTkeNuUHmo2go+o62CK0iL05dktNXrGjbK
         IWm+S2Gved6/VkaF0QrhMPmn+DGF3QKDCscphQbMrSdrJ0QLMWexBojyBnGiDmrRQKqE
         cOPJ4oFqrluRp+BeB6xmg7hjUzAf6TNwQEO4IhHWIpWqJdSyQVIHOLSpBqwH3l6/BzOP
         Ebbj/kL8VDoiK3p/cC1DgBRjlYroUpQp8jnHXpneH2kqyGUvqueUIy/m1PuexiivwxjI
         fIj6c4QPhOWPhhlXccMerrw7G+6aRCQ+cY06NxiisCtbKOmAgyqHq45a6Vyyexxbch8Y
         ACEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CwXXvT+2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o20si1628350pgv.1.2021.06.28.14.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 14:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6AF0661CF1;
	Mon, 28 Jun 2021 21:19:55 +0000 (UTC)
Date: Mon, 28 Jun 2021 14:19:52 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
	"KE . LI" <like1@oppo.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Stephen Boyd <swboyd@chromium.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] kallsyms: strip LTO suffixes from static functions
Message-ID: <YNo8+PWPu5ssAcau@archlinux-ax161>
References: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
 <20210628203109.2501792-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210628203109.2501792-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CwXXvT+2;       spf=pass
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

On Mon, Jun 28, 2021 at 01:31:06PM -0700, Nick Desaulniers wrote:
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
> Changes v2 -> V3:
> * Un-nest preprocessor checks, as per Nathan.
> 
> Changes v1 -> v2:
> * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
>   also occur for thinLTO without CFI. Split cleanup_symbol_name() into
>   two function calls.
> * Drop KE.LI's tested by tag.
> * Do not carry Fangrui's Reviewed by tag.
> * Drop the inline keyword; it is meaningless.
>  kernel/kallsyms.c | 32 +++++++++++++++++++++++++++++---
>  1 file changed, 29 insertions(+), 3 deletions(-)
> 
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 4067564ec59f..143c69e7e75d 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -171,6 +171,26 @@ static unsigned long kallsyms_sym_address(int idx)
>  	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>  }
>  
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
> +#else
> +static bool cleanup_symbol_name_thinlto(char *s) { return false; }
> +#endif /* CONFIG_LTO_CLANG_THIN */
> +
>  #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
>  /*
>   * LLVM appends a hash to static function names when ThinLTO and CFI are
> @@ -178,7 +198,7 @@ static unsigned long kallsyms_sym_address(int idx)
>   * This causes confusion and potentially breaks user space tools, so we
>   * strip the suffix from expanded symbol names.
>   */
> -static inline bool cleanup_symbol_name(char *s)
> +static bool cleanup_symbol_name_thinlto_cfi(char *s)
>  {
>  	char *res;
>  
> @@ -189,8 +209,14 @@ static inline bool cleanup_symbol_name(char *s)
>  	return res != NULL;
>  }
>  #else
> -static inline bool cleanup_symbol_name(char *s) { return false; }
> -#endif
> +static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
> +#endif /* CONFIG_CFI_CLANG && CONFIG_LTO_CLANG_THIN */
> +
> +static bool cleanup_symbol_name(char *s)
> +{
> +	return cleanup_symbol_name_thinlto(s) &&
> +		cleanup_symbol_name_thinlto_cfi(s);
> +}
>  
>  /* Lookup the address for this symbol. Returns 0 if not found. */
>  unsigned long kallsyms_lookup_name(const char *name)
> -- 
> 2.32.0.93.g670b81a890-goog
> 

Is there any reason that we cannot eliminate the stubs and combine the
functions, or am I missing something? Completely untested diff.

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index c851ca0ed357..014b59ad68a3 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -161,26 +161,36 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
-#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
-/*
- * LLVM appends a hash to static function names when ThinLTO and CFI are
- * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
- * This causes confusion and potentially breaks user space tools, so we
- * strip the suffix from expanded symbol names.
- */
-static inline bool cleanup_symbol_name(char *s)
+static inline bool cleanup_symbol_name_thinlto(char *s)
 {
 	char *res;
 
-	res = strrchr(s, '$');
+	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
+		return false;
+
+	/*
+	 * LLVM appends a suffix for local variables that must be promoted to global
+	 * scope as part of ThinLTO. foo() becomes foo.llvm.974640843467629774. This
+	 * can break hooking of static functions with kprobes.
+	 */
+	res = strstr(s, ".llvm.");
 	if (res)
 		*res = '\0';
 
+	/*
+	 * LLVM appends a hash to static function names when ThinLTO and CFI are
+	 * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
+	 * This causes confusion and potentially breaks user space tools, so we
+	 * strip the suffix from expanded symbol names.
+	 */
+	if (IS_ENABLED(CONFIG_CFI_CLANG)) {
+		res = strrchr(s, '$');
+		if (res)
+			*res = '\0';
+	}
+
 	return res != NULL;
 }
-#else
-static inline bool cleanup_symbol_name(char *s) { return false; }
-#endif
 
 /* Lookup the address for this symbol. Returns 0 if not found. */
 unsigned long kallsyms_lookup_name(const char *name)
@@ -195,7 +205,7 @@ unsigned long kallsyms_lookup_name(const char *name)
 		if (strcmp(namebuf, name) == 0)
 			return kallsyms_sym_address(i);
 
-		if (cleanup_symbol_name(namebuf) && strcmp(namebuf, name) == 0)
+		if (cleanup_symbol_name_thinlto(namebuf) && strcmp(namebuf, name) == 0)
 			return kallsyms_sym_address(i);
 	}
 	return module_kallsyms_lookup_name(name);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNo8%2BPWPu5ssAcau%40archlinux-ax161.
