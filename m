Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBOP2Z3ZQKGQE2LVY25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9418318BF87
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:43:06 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id i22sf2312485oii.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:43:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584643385; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBKiBq1l1oHwudydik+xMonhlQ9HX8pe3caoiJEv6g3wdT5hK9J7jwho3r2AoIK0FT
         6D+CwnnQZDYkqZfHHIuxpdTUFhbfATFz/BXRCN2LIsZKdWnuXPvsGjbjgOt6RPOfxktn
         wuMPN++iGAkqcP75xFFtljZigcUL7/PI27LADILwtan348+za6aLo2I8DyPA23OeDNZc
         Ai1rkQfg8Wr+oH+xbhs6X9ACltfUNBgsOfH6tfAzWNXc7CBjrOBpRZUGEFzZDcFD15Bv
         PRwq5X4oT1T+s6lNfUmjImG3dTiTEugbNMxMlgswiK+WLApyquXjimg6JE902si8MB+F
         gcxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QJrt0nyU6OeRZdS5rY7hEJFG+NGWOPXf4OdS4rS6/lQ=;
        b=mekkbPQ4/mgM/9yI2DNh4F7Wwwv0bE0xkoHjjqHUaaN6VyJB0kBIH6GO8scG9br9sf
         i3KO58tIisvBDugUflgb9fJAoo/RFJE527gA+9FcybW1fqCGsm7odkDV4NRZh970BUGA
         VqqGzddytx29CNtqlRzswIBPodJ4k3fJrXpCQFC6Sa/D0d5Ehawb0jt2Ri6xPOBff9+Q
         4W6lLrl4LggyU4KdRbOHCUMlKlPIyB4lzpN3oj6xjeU9Ein3HLRIt946hwQA447Y1ybZ
         NVJJR7yJ76fENndhBYLsAZ7tptsMAtwKKM3VquOEuJrC2pS3uPmmqFu5ztHp1Mpq+UrZ
         8B6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sUxpqcgD;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QJrt0nyU6OeRZdS5rY7hEJFG+NGWOPXf4OdS4rS6/lQ=;
        b=MHOZMtNB3IIAfBitmYbyxKRuJIcpKENS851fhhY9IHsRy3UQqfta0X9GtdKe19d3qM
         0AJ2Je3/hrrODNMfCLwn4wZPAHmoTNu7zq6zFHVWUn7xDYU5V38JiE+wUa4TOnoM5rIg
         CHktHHA7bKaaMFNbb+IJuUXdSfPHpKD8XX7f+1I2Q3ndqLcfWsppfFt2ocvB6nPn/Txr
         9Qv0zDBF8evag0Q+1bC2TZTnRqrg0cynb3jTA4OcuX85/4sPG1ldRFGtBq0zu5duiAHX
         qAemDzb4Zs2eBELEnB9IzWoZkuDN6aZeUV6w20SnWBNOQxsKW2bmhMJAEVsp5fIc9xtf
         hqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QJrt0nyU6OeRZdS5rY7hEJFG+NGWOPXf4OdS4rS6/lQ=;
        b=O1d5eZPAd8brGQdD5vjOxDlN5bd3n2NGYI7jXU15TFLnNY/OovrkjOH44ILtkTMPe1
         XeJNCLBmSZRQhOX+XcBvE+XxR7auVi5V1xmE5hxnASBnEUVACRPDG0vAiuzK6l1QU2qo
         STI0iXmTRD/Gobqj1BZxjSq6jENsg1WPaXM10FMM9mUUvdraiN6RQDqXobBS7ahTeZs9
         z3xK9ioNN3p50d0iiaoYVHG1q3EAvT9IaSKaHlqOKE8o7HtJsMPd6k8h7wpLqgOEWi4h
         aiHHAi6DebeOXT3oEiYKNGI3Fmk/OuG1Dcl4P48c+SH3EP8U7J6WuA2yjpNDLZC9iOpB
         U0uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2/UpnVHm4sFxqE0I7dl61SuP12YqGh9CIqaBmCulCe6uGhYx6M
	7EXNj8HD1kqjl9afk44QyfU=
X-Google-Smtp-Source: ADFU+vtOaht69XqeOwsQ9pAFWDSc5RoQpj24WUJySgvYHSAq1vd84t9BuFzYOW0A9XIBIkpzPeJp6w==
X-Received: by 2002:aca:fcd6:: with SMTP id a205mr3523276oii.28.1584643385504;
        Thu, 19 Mar 2020 11:43:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69cb:: with SMTP id v11ls1519763oto.5.gmail; Thu, 19 Mar
 2020 11:43:05 -0700 (PDT)
X-Received: by 2002:a9d:64ca:: with SMTP id n10mr3575925otl.325.1584643385195;
        Thu, 19 Mar 2020 11:43:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584643385; cv=none;
        d=google.com; s=arc-20160816;
        b=rmnKKH2Fpk2/8Pe4nsF404Owr8uz6AhTCD+uSQNgYQ4mbbf7EmCAUvThLBS7aHiO9Y
         M16bktzxLxUupcrl6ru/N1vHjIo9pd1tulnVn5trY1E+NyJtXRlQRx4XNCay0JYOTcvj
         mN+DRajYT5i5DJb2x4Z3cUZLdyuQcNNMr3rxnyifNraqsHDf49wUmlIDqMUWR9Vw9jUf
         WMY1ibfSeshHnApw8ZpKoJwo0jwKrL+pLTrOlFGC7Sfvp2fwizH4+3XPxdVdZAonteA5
         U8EGN6/dF0RIvTqfYfvwZ7dC2IcxVouvErLaAEWqIWsBXEumOqCusDkH2/b6VJ1QeaEY
         CR/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PspoOXrkybl9Qoi5xq99YkurlDUEiC61+3QNXcWjbXw=;
        b=BMbktvN9H5PBUn/rcjLnVC6ffzu4D0NgK0h++7hy6OEnBPQWt+pO8C3PqzZaS9/n3E
         0PGNb8J0CNEg1kOaLGqkkXUGAKfzPreReRD43GySxFGKrL6iDDhQFzK2wJ+SOIVbiqp+
         CFR1vzI5vgtT54Z0lTqoo8X+phKKQZM/fETd7uyvfxmx2/BEBpqEQ68npBwHFLaVG1q5
         18SSStfuPb6ZavW4eQ8laiwb3+H4DKfNiediU5Nb5VcZQKhW9SvvkV7nGGcXj/TUP0pH
         8Z2OfnbN7683dj+QnTn7/AIlalW3XOGFrB/JFUp+dFeIPlz8eDAmjxu6VpQyy3LoWp9J
         1JWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sUxpqcgD;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x23si117672oif.2.2020.03.19.11.43.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:43:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A3D820787;
	Thu, 19 Mar 2020 18:43:02 +0000 (UTC)
Date: Thu, 19 Mar 2020 18:42:59 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Message-ID: <20200319184258.GC27141@willie-the-truck>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319141138.19343-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sUxpqcgD;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
> The syscall number of compat_clock_getres was erroneously set to 247
> instead of 264. This causes the vDSO fallback of clock_getres to land
> on the wrong syscall.
> 
> Address the issue fixing the syscall number of compat_clock_getres.
> 
> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/unistd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
> index 1dd22da1c3a9..803039d504de 100644
> --- a/arch/arm64/include/asm/unistd.h
> +++ b/arch/arm64/include/asm/unistd.h
> @@ -25,8 +25,8 @@
>  #define __NR_compat_gettimeofday	78
>  #define __NR_compat_sigreturn		119
>  #define __NR_compat_rt_sigreturn	173
> -#define __NR_compat_clock_getres	247
>  #define __NR_compat_clock_gettime	263
> +#define __NR_compat_clock_getres	264
>  #define __NR_compat_clock_gettime64	403
>  #define __NR_compat_clock_getres_time64	406

Ha, what a howler. I'll queue this one as a fix.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319184258.GC27141%40willie-the-truck.
