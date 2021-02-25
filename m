Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5OR3OAQMGQEDSIQV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 991003247BA
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 01:02:01 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id t14sf2440411plr.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 16:02:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614211318; cv=pass;
        d=google.com; s=arc-20160816;
        b=Detkw9s06ki5ChAFqX+KV8IBzOIqB6KcnUMplpNRQoBkf2NSY83Llo1gmfGW6/tpwk
         s8yEmxv36q6ZFPbYzWGIa4neWwPPnmB7WJbAbTWNiJfYwza4c4H6zLYT0sOStvtU24Gg
         wmYZ9AUoV2pU0pimyh08iTs2ZQ85cg+FWj4+2oHm/BBGkYlaVkC35sn9Or+SHkjvPQZw
         /oScUPoEjQvMo7tZ/uEF0jRwW7QNSOmsciXWn1Wux6j1xViHxoTQVWFXoWebk8g7JuOU
         25l17uNvz1zEAIZOv11gWdQWzpIJW+lg/i8fKSlDiI2vfJcF8CJPY6p98FBXqlYIYz34
         K+1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MN5Y+w56J4MThFYaxlunQbqRShBMMkTl1JFRWkFSrwU=;
        b=069YQEz7ZapZnD0EjYTuDiESAwNZAhsmXsc8xFRE4c1lOCjrzPjhwQChsZuNTMIA6H
         MW+KsiCxuIqyajTsRj8XUaJ3dcZIoRX9CVDG0ne+IJMPvVcAnWh3tjVwjz7I0M1GiICp
         BUWyEv7U8ilV8NaWQrgwNGBzcL2oHcDI7dEepNELswnuhlo1jwL3gYR4Q0l5LmA1Ztbn
         Jcym7R/R4exRcx3dhmB5um9rDUHVAuaM4z9IEnPJD948djvEqufXNE1RDxcjcU100rr6
         oe4eHlafIy/i8r9aCOwCNWYfPoT6xaiT11LyUt8/2sby09SjBH+MDaMT+3/q34GmqCLi
         OvnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=o9yj+qpJ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MN5Y+w56J4MThFYaxlunQbqRShBMMkTl1JFRWkFSrwU=;
        b=UU0RjPclkQk/tQOtyQbX3BXy6zxCpIFPjmO2MkuSUIl0MyKnyvq1YP+VSBnHBdksPl
         ccDJDV9jyKfqy0LiO4f8pMcgp+eg/y0ez2YZzSHA2r2gjwrSRqXbLzqo/fs7rsqW+qQC
         /PFTCT50CK1XZysZX9gzlwNYH2qIRQgsYFahE+KEF7W1Qr6+ldlvpYmXCbskxEZ2mQd0
         WKQl2pSx2GIl0W3IAqn31zk2fPkGSguJY2hzEd+/8Rlg0W71KeldY2aw25U+W5E/BoBu
         Vkz+549o4O2JR3Pl65GBeBlhqhhQRZEEVm7nZuVlzpOqrCIUKWUHDjwoJLfoScN4Eydg
         +17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MN5Y+w56J4MThFYaxlunQbqRShBMMkTl1JFRWkFSrwU=;
        b=mnUxPXFcQ+NgaFqPe/9l8Yf+4NGNuPxZwlhI2bIf1JSCI0WOL3XfJPrlby3mSZXQQ8
         hRXhnDrRqUjOhHicbCs4xugzEcY9JSxwl4LWosrwwfm8DyLFf42OWcUAF4hYQrHfQRPH
         QWqBnCO3Ni0tdcUlS/uw/F0YrUb8i2chA/I/lKmY/ku2AdX+Pt5hAnl6OpEWh2eB0FkX
         j5tvM8rU0ECWKUWILuQ1pgL0vYUHMuEj7xvqMNjgk5I6/bLlmpe6vzhzFJ2PY6ApAjNt
         DVKWNQA+YQNR8FBLG8QwJNlNzWDAuKRhnRJCIYnjQfMNgzapPJ4tOyVYW6AtO3KfpOyT
         m4OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Q/rYq6Eczim7BLSA+zW6jIaBiYY+h8nkKFXLpYsuthc8xaxPp
	0/r/554+jRHvk9FB9qmH0Uc=
X-Google-Smtp-Source: ABdhPJzfsRv4+G6oaj6BY2pOR2QFS07on7Wy5MoNvDIas+Y0UH7oNPQpAtpXxLNfHryFujtg+3SS0Q==
X-Received: by 2002:a17:90a:ce88:: with SMTP id g8mr366036pju.107.1614211318066;
        Wed, 24 Feb 2021 16:01:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:88b:: with SMTP id v11ls2324673pjc.1.canary-gmail;
 Wed, 24 Feb 2021 16:01:57 -0800 (PST)
X-Received: by 2002:a17:90a:db0f:: with SMTP id g15mr379430pjv.179.1614211317392;
        Wed, 24 Feb 2021 16:01:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614211317; cv=none;
        d=google.com; s=arc-20160816;
        b=mhKsUt3v1kzxwQq7RPqUznR+L0ccF/rEoTzLSPmnqME/XAndSM3EXcmu9bwU6PwN0A
         5NaF3qNKnyq0EnAc1yyzvVVgqqWfCk1NUIIQqtcASX+znYkVlSGBAaOPm976ewgDZb8u
         ZbpvtPZhOKGF1ffZ6BEUfkdZPvkrpNfQLjQ38xS/Zz6dsexQAagpPiagolGqXF3RuCMi
         LMVKCho7ELh6d0NI+Uc0q0X6HWK0xQl4NtvqHTF0vxP3rKlQLgV9AHYxtW99FGiu94fN
         z6ZUWJX1yC5qVRat9GvW4aN7S7uP92+FteCqQSW6LPIPxw7Xk1tHz5umdQvTDeEiJv4p
         Zj0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jn6R+A/Y5vPo3uRUBu7XK/3tJ9ceOB47pDYF085onG4=;
        b=T3psO2Pyr4iLaMnEhfHFXbYVYdfz4acwMoMCGMNfoAnIL+gWXdCBnEmm34TTZ4J9Ut
         xxsE68omPoOpEdnrS0B69uOew5TB6JOjLkQRF67Tw1w1K1F2xm17ZeQ+Sb4Zp4q4+Foq
         kdiiNNnfDtKX1L8lZ0E+x1n5mh9Z85oqTV4zoZB53Wjyzl0CeAwUakISBnPSK0Z/peWa
         XqJ+peWpJblZtfOPQ15bPS9DEpRQQrDG6O65HHdiC0FXhuUxJftBcgQrbqQYS7h2zQvx
         3aSWp2PNdXMH2kvsuhL/7dtxqklGpBs9XP7HdPnqVYMplwP9F8gtESUCb9SOrID78GaR
         1QZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=o9yj+qpJ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si88469pjp.3.2021.02.24.16.01.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 16:01:57 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 545EB64F0A;
	Thu, 25 Feb 2021 00:01:56 +0000 (UTC)
Date: Wed, 24 Feb 2021 17:01:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
	songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
	kpsingh@kernel.org, natechancellor@gmail.com,
	ndesaulniers@google.com, masahiroy@kernel.org,
	akpm@linux-foundation.org, valentin.schneider@arm.com,
	terrelln@fb.com, hannes@cmpxchg.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, rdunlap@infradead.org
Subject: Re: [PATCH V2] init/Kconfig: Fix a typo in CC_VERSION_TEXT help text
Message-ID: <20210225000154.GA7875@24bbad8f3778>
References: <20210224223325.29099-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210224223325.29099-1-unixbhaskar@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=o9yj+qpJ;       spf=pass
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

On Thu, Feb 25, 2021 at 04:03:25AM +0530, Bhaskar Chowdhury wrote:
> 
> s/compier/compiler/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  Changes from V1:
>  Nathan and Randy, suggested  better subject line texts,so incorporated.
> 
>  init/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index ba8bd5256980..2cfed79cc6ec 100644
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
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225000154.GA7875%4024bbad8f3778.
