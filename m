Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRXQQGEAMGQETKYNW7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2903D817E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:19:03 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id o32-20020a0c85a30000b0290328f91ede2bsf557023qva.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:19:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420742; cv=pass;
        d=google.com; s=arc-20160816;
        b=UnyYCdlVAeMAVDZHzM/HZd2rpx3qy5+r0pdcHBiULCzbeOvauzztzuwwChZqGLqYqq
         1pWn9ZRKp2YozHYCS00HwxE22atdQhlQXHQos2MNA3Y+p8cbThBKbf8U3bU4ZpUa3csR
         OGu/R6EysYr7ttMz4AfLJe5R8orFqM6afdrrA9bWIxhnwf4fdeoTQZ1kmhx0TM6tCrvm
         hQ/z6uda/TLHY5PePXlqgph6t7XD18cdJ0AnyqlXCYmINJXMI+xnLgj/c9KQTTreB95n
         usWHMsdpMQi/Xp06BpWfB3JqkUF09uY4GwIzpWdY9E3RMo4YBUypjqQB3tJpVLE8QvHa
         tuUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gc2L7HKHhmqMIJDAXne9T3FEimKhkJkgKjudE2wbHLU=;
        b=ionjwDrmjJX8q0Uy7lklnYFF+FDcCgO5kFi/z9xTeKT6eHR0clC8MUI+zZDvmMCR5v
         VV6PJronn6QY2JOSzzaDqjSisF1XvvP0lTKvHapyx01XDCo85j2xjelACue8QO+RBtxO
         KmJWhC9wiHJghUlpv+RnVnzVRZJR7jWuSDWF1GAwYk4gbWE9h6v54NDbxe8nql8MiMQX
         O7idS72+2H0Skf1vKI0fnHngQGQUp1UxfgwKRPb+PqWhfbFNX89thdB7zjYmqvSxADOe
         ai/trXMA8iyrPgMl7R7irD3X9pzxF+yBW7X/5l6iXa3VyBa6yK5Uzi5l317osxd/7nq2
         80eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yhxrd8TF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gc2L7HKHhmqMIJDAXne9T3FEimKhkJkgKjudE2wbHLU=;
        b=DiWx6Uh0HSBY9NO7w9CMyU5hUeH6VjJEBATCqWT8b3XQNepr7cSLnd8EZVuPRmbmIA
         cJbCg1lbftF2FGwzNtN9aGz7BY9FrIFYooZDTtqLQZHKYU5Cw2Jp5UmXo0UPIU9YuO9J
         AQYJXT4og7uQuWz2eua4O6axlcyMo3GM1Uw4/GnzmzDPHf46kcW4/DLjTcoVlsLN1L7q
         hRO39NBh9oaIewdXkLF9Hf42bT5qloaqB63YojHEBO6sT39J4sgN91/jj1V60v9eYuz2
         hKLTUxZuLN+WNNKH3T5hAEkovPybjILR84Q5N7K6Mkr5FP4K6RCRnqhl3oXqW0jO11TV
         t4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gc2L7HKHhmqMIJDAXne9T3FEimKhkJkgKjudE2wbHLU=;
        b=Np9nc/fAkytJSZYAroshDKjmapvpym1igASlPgJV+N0uMfnBa7vepoxSacROdhR+PF
         QNWPk41b1zXUhDv1f0wzEAw2xAB0SIdAo6gQRPRlcnBw0Vxhi86wp8tRR+d0e83XKEbc
         q+HIiNJ0aoAMXcMdhUzs+89uBxa0D/jMhlSW38TnWkcaL00CgrLmSVP4McylCS824Mqs
         M6Ybv+bPiF+/9Fw4TD0EZNu7R8s5gD/Ma1jluY6xBKko95hR9/s25UopF6787LgvSkoN
         q6UZGU6cxQYWmzC7kMfa0Ge+kohYKswRBxTkdSUOuZhwGmbdDDYPIVxbbQEhIXj80FrA
         WJ0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531v648rNJ2sPh4HWAnLC4efwOIR2RXxLOVOWAoOMz5HJfrdJ9jO
	0UrFQSOImR/DF0P3fB3CmF4=
X-Google-Smtp-Source: ABdhPJx4nutvj73Ib2MaZnXP7WfbaHoNYqEtZUYc9P068zZyXHKrjm7eLm3o7dG01nlwSbwfO1Ne0A==
X-Received: by 2002:ac8:7d44:: with SMTP id h4mr21188515qtb.101.1627420742165;
        Tue, 27 Jul 2021 14:19:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f646:: with SMTP id s6ls75837qvm.10.gmail; Tue, 27 Jul
 2021 14:19:01 -0700 (PDT)
X-Received: by 2002:a05:6214:20ef:: with SMTP id 15mr24675029qvk.54.1627420741721;
        Tue, 27 Jul 2021 14:19:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420741; cv=none;
        d=google.com; s=arc-20160816;
        b=qKmqYEAPX5A5Fxw5IOzBdnyTULJ6p95X9hfq/C7tNYIdyhfysgIZUyYxMNmFPK6kp+
         ZN2F/vCh0IF6suxVw2T7c5yjydITrEPfdkdtnwaDA3NgRNlrvFx0KuV1YYf0ytctYdS7
         4N0Tzs+2cLOMrSd23gEdI+io6CGLnsoWTdz3S/WGwizTjJsFM37alHIR/B5Dsn/BoIZV
         l3DvYvv2wnln+hiCzuV27zVZTzA0VOLhFxlWNydowKZfI6KnewuQVNdTsGh2KVhzIhEv
         X+eI0YcrcbeNVGV4tT4RHWJ6HVicn1El3OZOskFKyn4RmlATCxip1nGlu+JEmy1CJaUe
         WKoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GtpDDehDSn+lirR/aQByXLY6ZwwQ30qwrpGWGeT54Jc=;
        b=p9/5e9zDnAfVhLaf8ud1huPLgiOagMyuGq9fuh4kC2Iq+CcWoIjWXx385aB/T78NYa
         nOyh6yDJzzp427gbbvkrfOtnfthl0ow0zyFqN2gM9Z1HIBAnJ0GG9YigTIr0/UrdVTdM
         1no74hJYpJbpXzrYs+29FZFlWB8nnZTx60uGOn1AopiAMHtV7QnQSlOsK8fagmTw5PA6
         FgigfPO/13sMSntJgg7MVHm1RNZq0FQAqJx1cP3CFfnlzmVylVpDmZMypD5tg1LurtQd
         k85bSp0yrAXt/3WDTAzEjIt30C3SSwUabZPGPIttMshttLcO+IGZ9xLCmvCMGkf7obwd
         CiGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yhxrd8TF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h8si225816qkm.1.2021.07.27.14.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:19:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9C5BA60FA0;
	Tue, 27 Jul 2021 21:18:59 +0000 (UTC)
Subject: Re: [PATCH 31/64] fortify: Explicitly disable Clang support
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-32-keescook@chromium.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <da989ffc-da64-33a2-581e-6920eb7ebd2d@kernel.org>
Date: Tue, 27 Jul 2021 14:18:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-32-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Yhxrd8TF;       spf=pass
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

On 7/27/2021 1:58 PM, Kees Cook wrote:
> Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
> a couple bugs:
> 
> 	Eliding inlines with matching __builtin_* names
> 	https://bugs.llvm.org/show_bug.cgi?id=50322
> 
> 	Incorrect __builtin_constant_p() of some globals
> 	https://bugs.llvm.org/show_bug.cgi?id=41459
> 
> In the process of making improvements to the FORTIFY_SOURCE defenses, the
> first (silent) bug (coincidentally) becomes worked around, but exposes
> the latter which breaks the build. As such, Clang must not be used with
> CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
> and the fortify routines have been rearranged.
> 
> Update the Kconfig to reflect the reality of the current situation.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   security/Kconfig | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/security/Kconfig b/security/Kconfig
> index 0ced7fd33e4d..8f0e675e70a4 100644
> --- a/security/Kconfig
> +++ b/security/Kconfig
> @@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
>   config FORTIFY_SOURCE
>   	bool "Harden common str/mem functions against buffer overflows"
>   	depends on ARCH_HAS_FORTIFY_SOURCE
> +	# https://bugs.llvm.org/show_bug.cgi?id=50322
> +	# https://bugs.llvm.org/show_bug.cgi?id=41459
> +	depends on !CONFIG_CC_IS_CLANG

Should be !CC_IS_CLANG, Kconfig is hard :)

>   	help
>   	  Detect overflows of buffers in common string and memory functions
>   	  where the compiler can determine and validate the buffer sizes.
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/da989ffc-da64-33a2-581e-6920eb7ebd2d%40kernel.org.
