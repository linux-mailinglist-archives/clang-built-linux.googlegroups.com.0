Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBUWN4D7QKGQECOTOP3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E862EEFB7
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 10:33:07 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id a206sf15119246ybg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 01:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610098386; cv=pass;
        d=google.com; s=arc-20160816;
        b=JihEmxR2NBGL6FHnaCTpVs4Fj+jz/deEt69oJG/VMkGNENUCA54zP/YC0+uDaQi6vk
         6jYd7a9iK0XUUPrkV5HQqcO+FhWz+LxTlTj/MRzjeZRstM9AazVIQDNiKciOqR86dtZf
         fJzPAd3yAivQLCVP7mpZ9RXj7exfz/C/HnIxp75TXZ/0NSnXzBfUxbqiROujsGWd411N
         THdlD6DtlWNpr6lcshn/ukAvHJz9/ew4YgAjOL9CDqHQLz7BZ1aplBvWOMC0lYtF5SKM
         b3fvwYPmc12eLryFHoehDvD6iRz82m76ywTclyV2I8U7AJoVEDVKKyL5ZvsnZB9bBLxn
         ZEAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OUrfY3YOUx69CJDz03mK9Zl2mILTBjHoZtbbp8mS8Uc=;
        b=WaA6y3kN9Frym2tduErAruXTyH/4DO0Gh864n8sD/GvLPdqna+J64N50T7BMe9X7dx
         uWzH4QDle6CBpas1nNKtJ+WjyVvHVOIQEppIivjUP5fiq1FuXaj2xdNewWQj7qlBl/pp
         i/+memCgAjaYrRypsc6fP2FK1zPs5ka6Wm0Tqvk9KlhZ38pCZ5ZdLwXke8/Hks2XjJG4
         vxieZYtEoFeWP6eWm8lyr4G7Sgoy07Qe2Jo2bnQzfgj+0tEesLpsmry731rI9nbBj4ll
         B1hD6QhMLtvJSFWVuE74L+MJbOQXhr0VORzSQfkg0/voQjToMj5aKiHSiF9Zkt/va3Di
         1duA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XBAh5ke3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OUrfY3YOUx69CJDz03mK9Zl2mILTBjHoZtbbp8mS8Uc=;
        b=mh8VA9ceelaX80lqwOc85BaszVItknEmj/2bKjusaZSBxDJ3Jhj9u2hW+QWJ6uz5QU
         ZOmL8IdDu+1SH/8ei7uXi2voykWuwIycCTpgAXKeO4tsU2i1C9Zy4DdDWDuaUFjgP+Ym
         D+1O3N5QJmyFyoFf1R8Hpa1hNHIf6UhPVGIe0i+cXO8QSHGWYn9V+f00rpEQybgzh3P9
         UjrAFhuwGh6ZT3UYVOjMOz2hV7+fp+yywMEBO9h6cVag9QWNd4I79MJfUXtRydGlPnln
         8OsqzkJao5SrehvlnsYs6DPIAxf5a4SdGGZ2Sm3DojLsasfFmph1WGiw5RZbUwlfYa5G
         61HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OUrfY3YOUx69CJDz03mK9Zl2mILTBjHoZtbbp8mS8Uc=;
        b=udZZJwMP1tFLzVaTw67I0pyfGvFFzwkwH8Y35G5ho/3WGLBwBM373Bq86qCUSCUTfF
         1RZhU5Pbt9et+0lalK5ELKf6WrRlIgJNs+G3+k41rMVPiVPnrflbYKcKn/fZV0PrtrRq
         PJivpPdDazIZJGjqaHzTPVXiBVZ5+Vt4DonwfNe1PHQxk4APanjjBM33UzxI83hjPbDE
         aBWHAi2DnCWVwpJoSDY9+aU3zVL1v/Rah66sumLONmPeKbJXCtxtd7s2MkbkcFeXvmZY
         7LDmQX/54+v2Wa56wUrh3dyoLspMRvapYcvLSZafdueu1ip8PGQrMoNp/12iyN5IJuBx
         OFXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SrVKzWu/R3zbqfGVA6mfG5sjqnJzHcW1Q8BClH28S7qFnyU7D
	hJsvFlrhyQWD7L736EYaaBI=
X-Google-Smtp-Source: ABdhPJyp2FdCze58Jvt0sifv48mXnn6YQsBEW/Xk6hVhf/Ae5E2aksdOHQVk8CDBQzYlnfe+U8U2Vg==
X-Received: by 2002:a25:76c3:: with SMTP id r186mr4849501ybc.226.1610098386348;
        Fri, 08 Jan 2021 01:33:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls5360903ybt.3.gmail; Fri, 08
 Jan 2021 01:33:05 -0800 (PST)
X-Received: by 2002:a25:405:: with SMTP id 5mr4523598ybe.248.1610098385904;
        Fri, 08 Jan 2021 01:33:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610098385; cv=none;
        d=google.com; s=arc-20160816;
        b=di31NVsRGHs3dv439SzkrpEV1G991y5d7bdJoAvnZtjpZ8gvMWp8USmkXuFE4a8bTx
         3BCoyvh5ryqbT5BQaGWVlgUnH4cTp998ZxDN0jd0HhJRie99zlz1pJ9ZtS7+qY9Q+AfR
         3DeCFKoI/b+Mmjs+1rY1BknWzgCwqErY4UfPlVHo7v133lmYkIqHKUbW7IW2sK6uhRjH
         khnEMo5ceK53FfsfS8e0aah6mc53RY9ObB1iqOH5ldKsRn56G2DITrgZ4VP3OVlFc+Vp
         CuUCADQWiY73+YjX4flV3WcZRhKUeBC62AYByiC5xJ2IjvbeRikqSsAAn31diHrUrCnQ
         EjoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WOJj10kQhimmMMQ2t46y5z+br3dhEYaoMAk5p3aLUHs=;
        b=Svqs+qTORI46WbviVJJGNlAMLb9oyd1oM3e2twA8eOgqOXwZb0ggH9GEE7MkVMUZp0
         lGuVzOXuteQ4+VvPZNJU0+IWGW711nbD6Atj1ypeIp0pN1t1GFCo+gyYG9ZzxC0IKv4G
         REXXZOoVcoHYTyCIsrTmLDt5fpd2RTGYI/tOT/iEqB9zznb8t8KTgJ2uUsq4Jn3EZKHh
         9QEx5t1gNmcrWgSXPoY7f0hieKJOeSqqniIyJI4KA8IbgJN56/Cmr57X/FNtntcGqDU8
         XIvR1LMGgTpUVnRfkQ1sE99teRez1tmX29EhslOtL9yBRxR/HEOIz/ZpAmbDdXegfE7+
         QBwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XBAh5ke3;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si1084078ybp.4.2021.01.08.01.33.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:33:05 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 365F822BE8;
	Fri,  8 Jan 2021 09:33:02 +0000 (UTC)
Date: Fri, 8 Jan 2021 09:32:58 +0000
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Message-ID: <20210108093258.GB4031@willie-the-truck>
References: <20210108092024.4034860-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210108092024.4034860-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XBAh5ke3;       spf=pass
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

Hi Arnd,

On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> With UBSAN enabled and building with clang, there are occasionally
> warnings like
> 
> WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> The function arch_atomic64_or() references
> the variable __initdata numa_nodes_parsed.
> This is often because arch_atomic64_or lacks a __initdata
> annotation or the annotation of numa_nodes_parsed is wrong.
> 
> for functions that end up not being inlined as intended but operating
> on __initdata variables. Mark these as __always_inline, along with
> the corresponding asm-generic wrappers.

Hmm, I don't fully grok this. Why does it matter if a non '__init' function
is called with a pointer to some '__initdata'? Or is the reference coming
from somewhere else? (where?).

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108093258.GB4031%40willie-the-truck.
