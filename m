Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBBN7RWCQMGQELRRKJLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D653871EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 08:32:38 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id e17-20020a4a55110000b029020eb08e4aedsf499463oob.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 23:32:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621319557; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qw84yO81qPNKVO416sL4Od7AF/NDaa7dIjmTbxL9NN2/waCNWOUzQ50KIJC5DNdbLE
         uJZm80EVjbKCVi85jOf0jnHBTvAbfqAS9XOtM+fUITXCcE3R8mc5f8vk4qKTTuCvDoO8
         AnT2GPanYKNzBgtX4g/VjKeM9fpYi7e9pbOvj8XY6rJdlN+WxcUQySYgeaVe3e8YHq5A
         0ybfLImJp9KL2otEU1E7C/1tFJmCwdAXkNukr2QcevJ1a+Xx4ICY39ABboNSMX60m80h
         EQTG3HcQGk2Dzu7ptBH8iVb3Q9Ad0woTmK1sPWgP3/2YjrZH7ULhV9wbQAn7dDG7N8eT
         mTRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+y+E6dJfcF41SJzShcD1aNme6czi9qz69An1vFOMGLk=;
        b=zBFrchjjP0SJKvxPq+exDRMlXyUL/TjWjptYDxkyszy9gHzswrt0kOq9wdl63+Q+9n
         eNoTDeCJK8KId1F/da+Pd+FEVk2AOrapicMJL4fGL86hXfw5TVUH+prJ2GZZ/PMAuebN
         GsiXXR4IRT3JvFfduYsOgJkQMysdgpZtS21hQ64GIf2UfmESbgyBIO4FuJqncHmSxbBQ
         Mwo1mrubvZfIkSEKMY7YMhhtcr3Z8p5TbZJ1Qc6YyDQDQxAENz7nne3+nPzDLDOPlLPL
         xQJMmfGr01L8lSqJ1fcXBCuKQKunV76bntRpFHbvVj5vr0TWLdmqMzky/1LNQCFHyYYO
         Hn9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+y+E6dJfcF41SJzShcD1aNme6czi9qz69An1vFOMGLk=;
        b=QACX5yw8FtU9CqcS5yZM7rq0PGUDkqlS2uz3LHPNj39GmphjxE6o1ucpBspnwEL9xd
         lQAuzun15JrkTUvEf9CVewyW8MtFGplabN+XzSdqz2NGXxqZ44PbpLkOqPevmnjcrFtI
         brcuk/FD6NgwZMZugDv2RPFNGxactaJ8ZHq38kNOSiTkCxFDeK3Fy+MrhNlr/0fe+XYW
         2LlJtSQVGNTXqt5fChAWIgcj+0NPDQjFIBbfixzL4coNgLqH6NkjxcGC9ZHO/Wafqr6l
         88Ec4bWGWfPxoDL5NUiSWNvfYqf1uTnru1z+gk6PWKxTwqPfU48kqm2UbMAcjQt5uUoG
         swdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+y+E6dJfcF41SJzShcD1aNme6czi9qz69An1vFOMGLk=;
        b=ERAAbnV33w5Ytpq/aYL+5/R99eWt50eJSUpOC63aflwjrul4LY7ZRNhE4CDvWVzcfm
         CEzK4jsk9QfIimW92CCgo/vRfDOWafbsY3GbQeMRrJJyMaL9lJpIdY8qtGV1FbZw1DKe
         0KEByxwntetMsTULV3CP1BTqUA/WGnv6Jk8/V+oCFqtm6hByiDOfsYfp6FevO5KoUDjZ
         3wPFOXzP9tU17irXjGbb+6219Boc0m49E27JHygSNHL3S5q4z/breQfewsRyPm1Tmv0K
         elVafJsiPRbol6pw43Ado3YwcBp8wwEMbwYIZVP3G6ArnlmwckqwtcBf/49XaXhA9ELS
         7EGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338tJc7N8NmwyuHGfF30pn7bb0djRU43paLddi8gGfahH3c1gTg
	7lLcRNpyoB1SVCw/P1Xzu3I=
X-Google-Smtp-Source: ABdhPJxBYpLrPRbf/fPzRLmz2a8lcmYiugsTFDHVZj6f/JoC6qq4Mzq578kFU2wxp9Y45ggogOxpoQ==
X-Received: by 2002:a05:6808:13d5:: with SMTP id d21mr2753691oiw.31.1621319557404;
        Mon, 17 May 2021 23:32:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls3262719oth.1.gmail; Mon, 17 May
 2021 23:32:37 -0700 (PDT)
X-Received: by 2002:a9d:459a:: with SMTP id x26mr2916430ote.337.1621319557070;
        Mon, 17 May 2021 23:32:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621319557; cv=none;
        d=google.com; s=arc-20160816;
        b=JoaR2p0WaH9QU61WqHfD5K30gT/usk4/RlIG6fIyq+Jhz40qrXXpNE3YNkPUenj6KV
         coT25pbpYgt7La5xAM3oAuXWteRdhAC4Qf09M6jKjN5hWbqz1THHkQz6m8AlGK7DOFif
         HH4c8MU9N6+kqDx/WIq6ZZQzU2yCr/BfdxWeyQ8D+OdQIjqKGfiuR5pdeMipE48QS30t
         auPif56wat4tTDEMq7GQF6BVNz1+BImX80q3M/Mahcp6AN3s+IjDEUbxHx5wIqPJfV8C
         pwNo2LAERnb8uCNidErxPVTx2njfHh1osDszF9w1lSpBa8D3/kGrU2l4HNYHQ8WvJ7O8
         Ql3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=9rOkAOS1gITwJj1T1acE/o6zHu9WtCiqYTJWxUeEkII=;
        b=TQNEouQllH1dOXqJ3P4fOlfYAC9gS2XTioyXFIYpvd0tm28yB+D92M0m/bnxYB/1QB
         05N/ikG+R0szp8qZPqFCo5l24NaDvTmpD1BHTZc621hW8Z0E78j7KBcgj3DB3MOfGk6+
         Sj0zAYLSm92uTrDfplw56+P1HXFcWCuQR76pT3bhLz1+CaGcEO5lDZB/3OhhLX+zzQAb
         0bOtYAZUhJW0lFLpj1dvKPUwdlgcwD+JiAhpNFQzbiNxam4ErWzEsISQAwFGAIpOyJjJ
         CBJreWLEtyNVZBi3SNWYcPNQqwWKRHtvByGWtigimCFRbYiSqV4oiMAJnXFiYvPKTaWL
         dr3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id k4si1596026oot.1.2021.05.17.23.32.37
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 May 2021 23:32:37 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 4FFFE80F5;
	Tue, 18 May 2021 06:32:40 +0000 (UTC)
Date: Tue, 18 May 2021 09:32:33 +0300
From: Tony Lindgren <tony@atomide.com>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: khilman@kernel.org, aaro.koskinen@iki.fi, linux@armlinux.org.uk,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: OMAP: Fix use of possibly uninitialized irq variable
Message-ID: <YKNfgRWM9MK1MY9O@atomide.com>
References: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401161127.8942-1-maciej.falkowski9@gmail.com>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Maciej Falkowski <maciej.falkowski9@gmail.com> [210401 19:13]:
> The current control flow of IRQ number assignment to `irq` variable
> allows a request of IRQ of unspecified value,
> generating a warning under Clang compilation with omap1_defconfig on linux-next:
> 
> arch/arm/mach-omap1/pm.c:656:11: warning: variable 'irq' is used uninitialized whenever
> 'if' condition is false [-Wsometimes-uninitialized]
>         else if (cpu_is_omap16xx())
>                  ^~~~~~~~~~~~~~~~~
> ./arch/arm/mach-omap1/include/mach/soc.h:123:30: note: expanded from macro 'cpu_is_omap16xx'
>                                         ^~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:658:18: note: uninitialized use occurs here
>         if (request_irq(irq, omap_wakeup_interrupt, 0, "peripheral wakeup",
>                         ^~~
> arch/arm/mach-omap1/pm.c:656:7: note: remove the 'if' if its condition is always true
>         else if (cpu_is_omap16xx())
>              ^~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-omap1/pm.c:611:9: note: initialize the variable 'irq' to silence this warning
>         int irq;
>                ^
>                 = 0

Thanks applying into fixes.

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKNfgRWM9MK1MY9O%40atomide.com.
