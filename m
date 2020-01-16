Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB256QLYQKGQE564K34Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DF313E961
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:37:48 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id l17sf2207148vsa.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:37:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196267; cv=pass;
        d=google.com; s=arc-20160816;
        b=V/+1BFox4xjCmA0Aj0wV/AddAiBjx0hvM2/QIMzN7QiQGuyP0YJ0WH6fbAwRzeSwL9
         yZR1tsggKXoIW9+oso/j8MndcLZYK+z73bsZDeLnccN0NGMVY4XjOiC6jodu9DjZo7rG
         5NOVbnUElz1BQHGZTcARfN1hiMP32q0V8a/QC0CnqaUEhAMxtPbQP5CvnDFDlqDxF+zV
         +BbpuwQaBo65a4XEkbEmclMhW0WtueoqUwU6m4OeDRHTklWFypyTw/RmBezJvDZXIGEO
         DNZKuyP757lfhFhicoCc6/p3MvsM/3BOZGG/4T++ANQ3rw6DIlc0Aj4yljFiszA+V68B
         9Kwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AlDV9fQfXLaulhXVkucvKU0z1/VrkOyXiObajGSS6Hs=;
        b=nJtWlLKgxKkCS0diC8UdZf4IiXyv8G4qeWFV7ZV35hc/43JKMYi8zDj3t190sgSW/H
         ncifUCvfSsyeqnRgLsW+aVJzyBJBktcblMagX1yGr6ZhQYwtuCUZreCovteuN3qIIvYH
         06nbqIW56LIvd5vmtnAOFX+Za8SF0aCkaP6xp6sZvJ+MUGli3tsxGy8YirK24Fj6ZomI
         hTiXUoakrKjcBli95kv9u0NztjeXO74yIWRpdvTbzBVQNuMVFfQlTBqeiCrMl+MGnUmP
         3ouSnQNGizHVJGtBilpb9jKmAGDc4bkAcPFjSVTssdV4bZVXRJRrn4nP/ILgP4QCq/Gy
         ZVXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aoQqHHUe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AlDV9fQfXLaulhXVkucvKU0z1/VrkOyXiObajGSS6Hs=;
        b=RmyXCOVgl9WoWC5PLam39ozWrOz5lCgomHQmZWUFlDShm+8f20ijdGagyxyVbptda2
         mVakRDffnC6MyNQYnQGkmF69MCzdOy64PlWKTOQtwupr6xO1txiM+R8HFAdWZPxliy2T
         M1961HfySiTlEDDwVYBXzL8kbF17d3v26Vpqqq9F9D81temXJe4G63DNj4Igr7TruJXQ
         b0QccK/8LIfuc8W3BRH7n/GKJAiR3tLqRdzsPmGaBKDdMSw5EALkq7Euv6KZduWsi9qP
         snakQuUSc2Sgo5y8YCrXKiYX2otddKXmDnW2KX0hvb12ttejmQzNOGMoMQbUJFDrePjx
         goaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AlDV9fQfXLaulhXVkucvKU0z1/VrkOyXiObajGSS6Hs=;
        b=PCeCzLB+/dBIx/rBlxnGFRTvlrt6G3I7DCkjtTk2SqkUlJcfJrsQwUDg2o9/mSNx7l
         v2Vtij8DwYd7Vk/KXJ5h1CiPxPRUTYIaDj4w14tH1J74Qxl3nR4zh1q32+LUgBD7r4sQ
         x3QgCl63ohrL4ZOHuasGQcSZLWVcK3a+JKrK2EWqPTwNiVWcREOlSpuwPFmzmSL23UHa
         4i7nwbs7X0r3DNqvTp8NZb1KZG6Jo8d2smrnu4GCLpnM3vLQY8s9vnmCZC2JRYrL1hkw
         gx2j0IhiIlRPYsRHCeumDhFI6KIbtTgSeRA3nDRrrk0rflhcnG5lJMnxJzzdevlLAfca
         T+hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUUsGguNHeprFqDq+Zskcl5X/hV1Q6+9MUzAPVWp/kJNihw6AyJ
	59qzvn6oAKIMomLj6Stv0NA=
X-Google-Smtp-Source: APXvYqznNCtHRYkXlcFH5KMQc+WTcpXnGhCQS4BZHZLKZftEZeVTuHd+a610Ur1ngo38CGqA0KXvbg==
X-Received: by 2002:a67:e248:: with SMTP id w8mr2089177vse.74.1579196267753;
        Thu, 16 Jan 2020 09:37:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls1999677vsp.7.gmail; Thu, 16 Jan
 2020 09:37:47 -0800 (PST)
X-Received: by 2002:a05:6102:405:: with SMTP id d5mr2257875vsq.94.1579196267457;
        Thu, 16 Jan 2020 09:37:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196267; cv=none;
        d=google.com; s=arc-20160816;
        b=pF+Hh8TMupgP7TqNYkCHpzbcXe/tXhhx6FhIXrmjDgT41n99AN2Yc3uUbeUvlmlZ4W
         xLDRwtlAaRd910L1fFxqx7hUSK265mbfe5MUKwwPM27LcMCWTYa2spJTnpGkslgMVNbj
         WeesRk0f/0zQ+R2DvAyU2Jq1iwtmiM5gAmH3RhzhNP1sf/yTphqJ0UbwJV920RJDpOvP
         BMeTmdaXt7L5h+13M7J2hAsA054MWW9kQzUWp2uZbOTyTCH79GfoiomUiukgk85cakeC
         5OH17IihUQP2zZLYG8Lvu0UkEJYvS/v/mVVsP3oGx50Toq0Ue00pl2fcbxFSHTD3sZp3
         F0og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cwokpiJQjcV1tIu7jZSNOV9Yfhleq4gMdBn4rHBmfBs=;
        b=ChA7/v0+ifr1+Lco2eVJvsY4peQQ2j/2MfMHtc+yhjtK616yF/BKkJUVCQeAuq6oEk
         guBDFnlZmjUJa9n3VmsxTAuydiyTdi8RgxsFuN5x5uOWYF+IPv0smrLr4az1wbmt071i
         TJg8LCgzA3e8BChm7U4YLwgKlmaO0Dn8vKg+zjEmZqQvO7gplHdAyfjFhLi0mmUrizyR
         ijn8J/zQidUClmv66BfyyZiYj/GZfkuSfthYba4Cesb9BoxHB4/QxKA0KVhvhda1MGta
         G+diMeQlRvpEn0uA+85XeWbYWV+kjZ1A+15kP+FIB69KQsvTV4UbeqkOOz0vNjBoM1TU
         znZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aoQqHHUe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y126si795868vkc.5.2020.01.16.09.37.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:37:47 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9E60A246C6;
	Thu, 16 Jan 2020 17:37:43 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:37:40 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 09/15] arm64: reserve x18 from general allocation with
 SCS
Message-ID: <20200116173739.GA21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-10-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aoQqHHUe;       spf=pass
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

On Fri, Dec 06, 2019 at 02:13:45PM -0800, Sami Tolvanen wrote:
> Reserve the x18 register from general allocation when SCS is enabled,
> because the compiler uses the register to store the current task's
> shadow stack pointer. Note that all external kernel modules must also be
> compiled with -ffixed-x18 if the kernel has SCS enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173739.GA21396%40willie-the-truck.
