Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBCXN474AKGQEY6VA76Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id B787722B807
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:43:55 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id cq11sf4246235pjb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:43:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595537034; cv=pass;
        d=google.com; s=arc-20160816;
        b=cd6PJ2lDyg/n6NYc4HCVSEc8vitFV8zFyBte2nr68jvhd48pb1ojoq7agrtSDl60qy
         K4a+AkZO++34zSD3n+fq+noqay8cTy+UPsp814RqTWUuPSOxhc8RXx4Tr0pvVvD6FvQ+
         CkvRSjRbpcoBGzRWGP3lFCWHkzKJQ7yRYstFaPzp2xzfuL0vTCyrZD858iI1rq10xvUP
         lucNhCkcd+40B2TtpZhnwWyqa2NvUdvH5Xbrrlhs1ENIIp6eaFxtK5rOuxihmC/yHRii
         kTzJ+1pUJCuOlMpg1wUe/WPdH3ciLlZNppazpcStqSDmkYQ2zXpOUgpovOFjh9Z5M1vo
         HjqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6oPnQd8XGf+IegudmThJYe0fwo4vDbDInxB/N0icvAg=;
        b=Nigdrua+FOeFaUb4OUKmgeGpUme3+SnD1mCmK82frfXVNeLVzVWtUs/I3HkpkDJl0Q
         Kd3/6IADANVJ7oa8tQkM2mFMWT934SRo5MNPla2s3TYD9dndyc6Z0XSAmzOsMbCVMswZ
         UlVnlVgSHr0WrJEZadspkRQiWFOwhzLKLGaoFrolfso5I88ylpgfu5H1rDJGPg6gQTZV
         gf9vq6tEMFKwVzq2wicu3S+ovIlzdWnZ9yi/H+KFqv4oF11vm40tYbtvQqgaR3llha64
         BrIVJQvd0j/ZTGINC3hIgcQXZhpmu0lyNBr1FUu1PPCC7OGyrumTNZoOI5fIT7dNSDJT
         dT7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6oPnQd8XGf+IegudmThJYe0fwo4vDbDInxB/N0icvAg=;
        b=VETZ5zDBe5rGYgoKsfE28tcMHsfQCrJJzMnGzPH2k7YKgmXEmXRApF/EtBDg6QIEB1
         a9yyt4IJ/AAjKk4KplC4Ve1+3fJ93pqrJOPOxDnZrEdpVn5LVicwK5KsOi7u3qDIClh9
         +qu/7UgK2Xm95mUM/T7v2r4BQ4kd3qHeL90cgpugHB9fK2ZNMrlPgF26qMHH00u9wbSh
         X3Am3ad3Bam6z8pWBj84qrBbytSAp/l5vsxQJnwabKLKHG8kBdNNpCIwkDMhvWuYdgTe
         3xO3Yk+lIcB6iQQdQWz896OlJtqGULFAO8VBXWvdALUczqgOI1Ie3aXpwYJxS97tBelX
         uVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6oPnQd8XGf+IegudmThJYe0fwo4vDbDInxB/N0icvAg=;
        b=MLfCdLgZin+ddVDdZ/UXpmDy2alEaoIPwQUO/0rAA0+3M5UCnIDUfhAlNTxR6+2Zmp
         NRUw4pRNeyuab6F4gq0xkf8QpikA1TGLU3N99XdV+0BJZKJMVaktz8U2s7XaL8pBKpqN
         gSpB9xdfkPLjpGCQxmgliPxZSgl+uD14HZe5N7VVqunI7kBZfXuu776vTAvrbZDFRZj2
         fx1BN6kTgEEeGApQHzJaC30/dlJZjJSgdZrjxxyAbbjycZalLnjNihldlHHk1DCqQ+6s
         PCeAi9irP4HDd3fC1IHoe4AZXNq/lkjbMbrCQxjkX6BtSvWASly8NZU4vOKm4M3maDbo
         xQ3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zAWDxIIbOt4GNWtU1KB5w4IFRx4Vky8Aa7TYf3n8Pb54yNDSb
	JdMtNA3Mlv+EXOYYWkbNw9s=
X-Google-Smtp-Source: ABdhPJxI0tpY7BhY0RmTvSVE2bKTFglqH36zVpl9xasd9a5Nr5/0LM6PZOZg+uuKM+9QIExVXczhIA==
X-Received: by 2002:a17:902:7c0c:: with SMTP id x12mr5374064pll.103.1595537034287;
        Thu, 23 Jul 2020 13:43:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8446:: with SMTP id k67ls2070361pfd.5.gmail; Thu, 23 Jul
 2020 13:43:54 -0700 (PDT)
X-Received: by 2002:a65:5c0b:: with SMTP id u11mr5728809pgr.191.1595537033914;
        Thu, 23 Jul 2020 13:43:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595537033; cv=none;
        d=google.com; s=arc-20160816;
        b=Su8Sc/jeiTcTTsN4knpXHMwQY9NucNKoXjBqNdjnX3ifQKYSkIiFo+Sziur74cBi4/
         OBOE1wQWroTze5cxnYwgUi6QHCGry9I8IZusUp5B3kiEOsqHfTKKGGeQQfCq9a2CxC3h
         i4VnSxhDRWKrsLDdpX70/1hvo15mqVtt9oIpoQ+asz20ZLJponJI2Q7V2+leaaSCDfOY
         QtfgbsYE2uTuikSkLdaMSD2kgowoL+VV4Zu0FeAHf+/WGNJiP0mJkyR2sxQQFA9y0Ak6
         LwZjIeIAsSqKIV0IYmeWn4tK8Jf3M1HtDDfqsWfYZdShgtEbuvM0lrQBMDhKQVpQjV/c
         cV8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=XgEGc07KPJGQXDcT9oiItINBpa38OlMEBrR+JZ6Pw4w=;
        b=RVK36aBkXAhD6RkOMCTA7D2FxmejsrPmSWCrAtRJszjiCtjUooPqMzK4kfMsPvA8Tn
         xiMlOydjx4av0hIYvu2kpuaYviPGqF5lLypvjGU8x9xn537PhGwUh0qse2IMRp71/BIi
         3/GIq6WjT88S+R5LGk11a2bl+ATvhx2OBQBHOGM1Z8FNqKw4s3kLvbyoGfIanAzQoXoU
         lwIxhXulbzOqEL/ADQZFInpvxA2Leys46odRPSJL1zAsigTz3iQVfEhYwTbPCKjGjGHy
         uKo9WRLDytsp8/QHe9JiRI7PS4eBut3x5csbX55bgBlOcXgSUW/bQvcAzlqCzUfAMlqW
         CEVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id n68si142780pgn.1.2020.07.23.13.43.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:43:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id B13782BA;
	Thu, 23 Jul 2020 20:43:52 +0000 (UTC)
Date: Thu, 23 Jul 2020 14:43:51 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Lee Jones <lee.jones@linaro.org>
Cc: linux-kernel@vger.kernel.org, Federico Vaga <federico.vaga@vaga.pv.it>,
 linux-doc@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] doc:it_IT: process: coding-style.rst: Correct
 __maybe_unused compiler label
Message-ID: <20200723144351.333341d2@lwn.net>
In-Reply-To: <20200715122328.3882187-1-lee.jones@linaro.org>
References: <20200715122328.3882187-1-lee.jones@linaro.org>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Wed, 15 Jul 2020 13:23:28 +0100
Lee Jones <lee.jones@linaro.org> wrote:

> Flag is __maybe_unused, not __maybe_used.
> 
> Cc: Federico Vaga <federico.vaga@vaga.pv.it>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  Documentation/translations/it_IT/process/coding-style.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/translations/it_IT/process/coding-style.rst b/Documentation/translations/it_IT/process/coding-style.rst
> index 6f4f85832deea..a346f1f2ce21f 100644
> --- a/Documentation/translations/it_IT/process/coding-style.rst
> +++ b/Documentation/translations/it_IT/process/coding-style.rst
> @@ -1097,7 +1097,7 @@ la direttiva condizionale su di esse.
>  
>  Se avete una variabile o funzione che potrebbe non essere usata in alcune
>  configurazioni, e quindi il compilatore potrebbe avvisarvi circa la definizione
> -inutilizzata, marcate questa definizione come __maybe_used piuttosto che
> +inutilizzata, marcate questa definizione come __maybe_unused piuttosto che
>  racchiuderla in una direttiva condizionale del preprocessore.  (Comunque,

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723144351.333341d2%40lwn.net.
