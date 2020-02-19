Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7NSW3ZAKGQESVYHSIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 458B8164FC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:24:30 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id g136sf1388586ybf.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:24:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582143869; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCoLY5kT9LmiwMerceasjyrvMuctkgrRTP300ASTQg3/YCSQmbAkuJgIzys86Q7OsO
         x2LIFNiJBf0J/soUTolHiyj+s7U3MfOm++aWS69MW+0KdSOoDwZ2L7ej3ACyI2Cyr4Pw
         aFkGoSfGS/sMgIhUCCDgHq2gMMz4juJW7DCN3DKARPe2DzMCe3jbvuNEFpOS6LAQpKvA
         x5kiS/dtZHG+AL82hU4YjGH2aVK8wWadnlkIdIYvqYKNJ2CmmtYUQRIXHV9EBhFu8K9V
         twC4j4m3s+twY9HLOoW//TUp382M6VQGt75eEm69EmRfky3soY1jkLZkSZpMDg4typOf
         lQMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=NkpZJx+fdFIeRL7Ufxb3db/L1u5LLotF0pj5u6sz4OI=;
        b=gBtJIdyG3DdOXt/i/h4maBaxrTHXqI/3UkBv7OEx2+MaAQlY/sejL/grhUWmWaeAyv
         NK5Zg8D+JiEj6h4F9D3fzDa3i5siULEXUATy94pT53n9AJZFApiPDMVA3q1EWz9KpH+J
         Iksq71GM5Ez27M3Z/5qCXWtepSAoo3tMPAQ01XEN9QyIZmh3tEK+63/00nDMW9HRMCi4
         xidc61RjqEkBYojy6vyZY8fJ3m9hd5Mvkc/wLUj0p+sojPjnncQGJ15cIFP2gNO4Y6OY
         dE3Lyttx8LsUf+tuBrCYk8m7D79Z7dw1nXbtNIdQyG7kGqCSXBbyiy5FHggZ06L06cwH
         ssuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EqG/2fTW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NkpZJx+fdFIeRL7Ufxb3db/L1u5LLotF0pj5u6sz4OI=;
        b=kf4Lg93KrdZT26uKnroembXvpDA8+sNZVTTQSyZayKwXNpqe8mudAV7Bcbyw2xKYK2
         SGba6DggtpRST80GvC9c67/tKwtDvl/nU3OOU2kpw9A43O/pl27Sb6D7soL6o6mgD8+n
         hjrFYV1krRYqcpz0ngDxa1a7PU/Cwpy5TUp29BxBgnYwFAZnWUVIz1jlAkqrADylS/Q5
         jKoIO8hNFvTwcMYTiQDCgW/8f9nwyugpnNRzCrCjQ5WKP4OiS8JR9pmzfBa9CdXy4Bmr
         V0HDzFTGhDdn92yazfy+giODONtqYCovv7aepqjaVHzDVA2Y6dJZrDLfmqz2WVimu4R0
         JAZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NkpZJx+fdFIeRL7Ufxb3db/L1u5LLotF0pj5u6sz4OI=;
        b=WaDPPvu5z5cIRXVrcL3d4njCSNPegnmT0oyCEsxR+9TDczO8l1tMqENZne6mQ/al5v
         GOvrkz5C05rPRhePXLDoQ8nPqXD5OvPkKU2sLLrVr4nftxaIryOhXLKGfV0nqJlZvg0N
         8IwvQIYqE/vt+12NIpeYttN+w7fPbIumYUk4KA7wUHxZbmT0CcVUO1hD8+pmpTyVgVAa
         JvxBEstH4QX/RBRbTbFvGaGOgJmP3fKEHCVRBI+ovRVSPTDsI46+8O7pJTCxNoxj2AGf
         j/OW/GQ4QjRWtbirhbLLO8gvac3hvOHTps8DRrRfWAydCZV+uK3WAT9jeUYuXpxrcUIf
         JGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NkpZJx+fdFIeRL7Ufxb3db/L1u5LLotF0pj5u6sz4OI=;
        b=VepcijuinuIN8bFnfjgzSxFEsIbDaWXtbCfZdGLD71e8fuHzSeLnNUStRNVOvCwmpy
         eZTXWOD23cYQMl82mKsBTOBEK7zZQwHSwj83rf+VF7Jgg+sawRROuFIcyZt5dpaINfeQ
         TF9yoFl+dKkKDYX852F0osVxttdzgTHs7HzPBGnYGKuCUhXdiHdYNgvMGp0+mwxodAZv
         /z0cbfM0wAA/6OPXYrMOGdYJRqlGe1bsymGVzVAzGKjfVasrhqrGWBDudpadg2NApail
         lwOR8F1E+r1HVAArwVtZNhIHif/ScjeqVQKK/AnhBzXpYQRdNZgoFLezFNeAzg5FkEf3
         xh2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWI5MMoSTZbJDHb8i2kLKiEpYOO2ATJQ0YE+vvPeLVdeS+xilYu
	MzVLF9ZgJwHKunvsH3pE/+o=
X-Google-Smtp-Source: APXvYqw2BgpaVl9tgqU7ASndKUX55m8ls4/WJNSJWfbDgoeQkG6aKSmn4CEIzW2z+UAoTVEc69BYVQ==
X-Received: by 2002:a81:bb54:: with SMTP id a20mr23940127ywl.408.1582143869323;
        Wed, 19 Feb 2020 12:24:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls158856ywe.2.gmail; Wed, 19 Feb
 2020 12:24:28 -0800 (PST)
X-Received: by 2002:a81:5655:: with SMTP id k82mr23844956ywb.363.1582143868957;
        Wed, 19 Feb 2020 12:24:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582143868; cv=none;
        d=google.com; s=arc-20160816;
        b=Jp4th68HPdsvjUw7wcwkkXOZ6fA7H29KdglOcaa64CgoIiviSP/VktTBw3bIRpetNt
         FpWz9YMSxFLvHYvlURM6/rVRPYbLp3DSpJtCu5mexoZavJ588gJhQNVQwBOVY8TFqpX0
         534qsIBtxWwn3Efy1kiaJWHSCCI2Zq+UGC40SLATk3NNgZKY5LafYSP6i+f7dVZOz/pC
         vPeO96GnOXeQSWJTWOJDeB2WcuPJhi+ONfCA+epqUTvRlWj7JCYQoo/QWVH9BE5PSoYT
         ErdFLfDrDD1tNBDL3LbkxWdu6NwhkahOhd9mRcmQWYmYDQJtENzBKbIaGwhruZGcb5JK
         6XJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3jjA5d9l5RFn/2ac3ZJYASA8bJIB/hpXsU0f3AYcaxo=;
        b=PMgBSpvVlSErX0i58+K2hVjINMqYV9fnX8lDzkHni04iVS/Gtv8tW73DrV1TIkGKIs
         b5/BE8qc2B4M70zsjP5EVEO1SLh/jWPdZV28CaY0Djxc2Lvd6Umvu1oE9rYTfO/OfFFg
         UiboHKCqmWED9Bk5yCsMt/7qhbyUSxChr3/SCQV7/GCp+xDAfopwJH1oDrOx+z816gj9
         wD23JH/iCOWqry2EB9WMwgatvCR2VJOLKr4L0XDtOnIlu69C87azLZYIUgu/fdpDo0in
         ZC/5VCbk1z5C+2QW6oRmXLcvQB864vAt03S/Ur8+VzFbZ719brxjNuCh6eYXKR5YbhO5
         O3Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EqG/2fTW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id g27si112169ybe.1.2020.02.19.12.24.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:24:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id p125so25125509oif.10
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:24:28 -0800 (PST)
X-Received: by 2002:aca:120e:: with SMTP id 14mr5482307ois.135.1582143868409;
        Wed, 19 Feb 2020 12:24:28 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q9sm305168oij.38.2020.02.19.12.24.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 12:24:27 -0800 (PST)
Date: Wed, 19 Feb 2020 13:24:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] kernel/extable: Use address-of operator on section
 symbols
Message-ID: <20200219202426.GA32182@ubuntu-m2-xlarge-x86>
References: <20200219202036.45702-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219202036.45702-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="EqG/2fTW";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 19, 2020 at 01:20:37PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../kernel/extable.c:37:52: warning: array comparison always evaluates to
> a constant [-Wtautological-compare]
>         if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
>                                                           ^
> 1 warning generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning and
> does not change the resulting assembly with either clang/ld.lld or
> gcc/ld (tested with diff + objdump -Dr).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/892
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Gah this should have:

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>

I can send a v3 if necessary.

> ---
> 
> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-3-natechancellor@gmail.com/
> 
> * No longer a series because there is no prerequisite patch.
> * Use address-of operator instead of casting to unsigned long.
> 
>  kernel/extable.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/extable.c b/kernel/extable.c
> index a0024f27d3a1..88f3251b05e3 100644
> --- a/kernel/extable.c
> +++ b/kernel/extable.c
> @@ -34,7 +34,8 @@ u32 __initdata __visible main_extable_sort_needed = 1;
>  /* Sort the kernel's built-in exception table */
>  void __init sort_main_extable(void)
>  {
> -	if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
> +	if (main_extable_sort_needed &&
> +	    &__stop___ex_table > &__start___ex_table) {
>  		pr_notice("Sorting __ex_table...\n");
>  		sort_extable(__start___ex_table, __stop___ex_table);
>  	}
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219202426.GA32182%40ubuntu-m2-xlarge-x86.
