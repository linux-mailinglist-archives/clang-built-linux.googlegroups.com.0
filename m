Return-Path: <clang-built-linux+bncBCO3JTUR7UBRBJ7IUGBAMGQENUHLKBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4BF33364F
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 08:24:23 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id 74sf6729448ljj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 23:24:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615361063; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnRUjfZR/QzJ7XOEd8ghVRYmTEtZrOYCOHZj+03hSlT1IOuX7pDDnzvZIqyKGp+JE8
         NzQ6Cbr16v0Y6icLfA0ASfJwne42ZlcIYetUAxQXZryHq90V0cEQXlyLgGoD0NjV8OZv
         T0GY7eBPjjvZGnFLMdUQV6uw8vrhmOt2rMiXBUYxRTw/i1PfEYg2003nVqwFs3vwOOow
         yXrya5eWQ1ut6eURTaSoHHhBaLbJAt+BtZdcE0wIrJl0JuPY2PnTzeF6/NPjpbcyeBhy
         vfoRHvs2QpGr5LMLfLhtDhQ8cB02QjXmYv64ImbWT9n+QIvr0OT+AtozAU1e2UB/DIu6
         d/hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1Dk7N/lvo2GuYCh+MPeRqB9uSPNpGSSqOwP7+YLcXAU=;
        b=gEmvNGpFN9TnVDX5PGqKXJm3sucUznHh1nuiBPReGYhecDMzHQVjqbObpe3Lwop/Eu
         8gpI8NmbhW4IYqSW6lJX6HW7+NmEHoK67LF+nC0wn8DTex7hanseUFZaD9nlPQK2Wu39
         mN4RPJPogHrZ74zT/dd070oOl4pMNOX+uB8mOOo5wObvLwgFTTMS2q/m4+ZZZOkbFFU9
         6XXZ6FWjK1gEcDh0uy3mKsHfei+8LE5FepRO5ykdW1Ka1kx5TPpehnOD7nR8U5hEQ201
         Si43kjW71kWKUYkFk16HpcKOWUls/88eBdb3aWJTbLqjfAHKRi7nlBegk7swYq3xbVDZ
         cKJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of osalvador@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=osalvador@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Dk7N/lvo2GuYCh+MPeRqB9uSPNpGSSqOwP7+YLcXAU=;
        b=hEkVyZT6Z3arrW53EB9u9gcdDMYfW6ouIBjaiQKlDorfb5v0VV8SvesfseUXLOGHQ6
         RFlddYTHr0SJVpSiRzQAsQQcOjzt36Lz+x7ozed2W0o/1VsJUUAhtE1iU5Ggh+KYNb5L
         W6HRRDFtxkmBTGMlBE85OCGO8ipZt2pQThaVpKK2zvF0BE1U637qOVT/jV5hFyMb6cuu
         Jwy9NEq73r0/+ufnIby9wmyQbEyJj0meGXgRE1p9Qpx8SexB9xntz7mBYnsO0RRukgC8
         WKVDMrfcrB53L23x+XJOdUtAkTDjezQqCCYmQz/kgt/IEIYVD/5H7X9Nx3TAR5HuwHU3
         8iHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1Dk7N/lvo2GuYCh+MPeRqB9uSPNpGSSqOwP7+YLcXAU=;
        b=oOK9Ji8eoZi8d91UgwlMcZLaPsT5NO2znE5n8+hdj752rR7r6BJPk6FCE/oeXP5zM0
         DVPuYPK/QLYkZs/XpzYu8z5E2E+RXazg0Nj4B4AGX4vIYqOB+N6IyiJ8tiXgLMg3fC2X
         PskUlQzm2D5PYmevm9ndwrY8Fyq+xalhFyz+nOn4j7kPZpcmQCTwuSGIaxzSyKtlz4KQ
         v+ld24Fd0WeRg4tD4awH58mB3T5TKObDKvhyZZldKylPLubYvYULJIwPfamySLQS0hlQ
         j6giiPv6c6V9SV0/UdrHGQcRUn1BWpA7lb7sytTc4fZxs9KtBZhJiU/fSahe9CJaRbv0
         yroA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ke09P0+vZ6LgXG42Gyu1JfLOO4/rDSB4/+2u3VNlTxQ5v5WAW
	Qb46AEaTNMa4PvgVE2KF/J4=
X-Google-Smtp-Source: ABdhPJz0wZGiCryTW0oNE7H3nNeXErYcajk4cSrkGaBWKTY4jCr23TS1q+0nAZ6KJokrcK5SrQ0TUA==
X-Received: by 2002:a19:f107:: with SMTP id p7mr1213361lfh.613.1615361063283;
        Tue, 09 Mar 2021 23:24:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls750619lfc.2.gmail; Tue, 09 Mar
 2021 23:24:22 -0800 (PST)
X-Received: by 2002:a05:6512:1086:: with SMTP id j6mr1244694lfg.96.1615361062248;
        Tue, 09 Mar 2021 23:24:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615361062; cv=none;
        d=google.com; s=arc-20160816;
        b=qSw14GtRbc26eyuGlfODo8Yo5yqUVybTYrzDn+Vk5kWbhfQF9VRbb6efx2bnYq9qc2
         N0/YlXkVY5XkAagfxP0IrjLU1nospPoWLw4bhy7JUNwBc1uecASLnod0mXTvf9Q8Yx4D
         Uhj/Mr6FK942/3dik9/gq2MLY/oOTP/Pcvqr4BAooeg7x5BluMbYsqh/Y6yfR/o6vFMS
         9p4HLPwpYmBQpUKi3IpQxKt1EvZ4Ca+W3YKmJ8MMvMkrA9n5p092fo93jHh7bUl0LAXU
         a/G5/LMdgNrU6FsaIx/flw5sS3KI4jDK6ExC/XER8/YJ5XIOHDu3vOPOCsgAVwBmTT38
         PCgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=gxpbzsHYrhlJh0ZQPguER1PecvQdjaXcqgCFXIcwOeo=;
        b=y90ognyrftrSVlz8JL+j8bjvA+FxwhxPdv/+tQWC3ddp1eCPdybpOJwiMsJw/tU7Vy
         IpJK4FZC2mKzKDAfEpBWYDJ4CbrMeu2YP4D851JzcBcJLkpe7c/yH8RQxYsOnB2hNtuN
         txYikarhvTpcXsgJMlQj7v29JDrgDuMHl2uIZ4bRwxQR9fWhv+cfmORKotm+OUNSkoXV
         8a6mOEz89HQMoXTk7DefLmmo2u6SRtxkVRhYN0u5xuHQmxiVuTueeka8tcpcnndVhW2m
         pGfY4KW5o3w52d/xPHVFo/7IhQ78olxy9sapUc6RBN/VSNHmyhWip1wAYFo0GmwSeHLV
         CvKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of osalvador@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=osalvador@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a66si620070lfd.7.2021.03.09.23.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 23:24:22 -0800 (PST)
Received-SPF: pass (google.com: domain of osalvador@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2BDEBAC1F;
	Wed, 10 Mar 2021 07:24:21 +0000 (UTC)
Date: Wed, 10 Mar 2021 08:24:17 +0100
From: Oscar Salvador <osalvador@suse.de>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	X86 ML <x86@kernel.org>, "H . Peter Anvin" <hpa@zytor.com>,
	Michal Hocko <mhocko@kernel.org>, Zi Yan <ziy@nvidia.com>,
	linux-mm <linux-mm@kvack.org>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v6 3/4] x86/vmemmap: Handle unpopulated sub-pmd ranges
Message-ID: <YEh0IXlWVsgbGK7c@localhost.localdomain>
References: <20210309214050.4674-1-osalvador@suse.de>
 <20210309214050.4674-4-osalvador@suse.de>
 <CA+G9fYuP9t7Giyjmh4-2UspD1hfEF5EQwZ69xKWAaBH99ykxtA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuP9t7Giyjmh4-2UspD1hfEF5EQwZ69xKWAaBH99ykxtA@mail.gmail.com>
X-Original-Sender: osalvador@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of osalvador@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=osalvador@suse.de
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

On Wed, Mar 10, 2021 at 11:37:53AM +0530, Naresh Kamboju wrote:
> Hi Oscar,

Hi Naresh,

> While building the linux next 20210310 tag for x86_64 architecture with clang-12
> and gcc-9 the following warnings / errors were noticed.
> 
> arch/x86/mm/init_64.c:1585:6: error: implicit declaration of function
> 'vmemmap_use_new_sub_pmd' [-Werror,-Wimplicit-function-declaration]
>                                         vmemmap_use_new_sub_pmd(addr, next);
>                                         ^
> arch/x86/mm/init_64.c:1591:4: error: implicit declaration of function
> 'vmemmap_use_sub_pmd' [-Werror,-Wimplicit-function-declaration]
>                         vmemmap_use_sub_pmd(addr, next);
>                         ^
> 2 errors generated.
> make[3]: *** [scripts/Makefile.build:271: arch/x86/mm/init_64.o] Error 1
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Yes, this was also reported by Zi Yan here [1].
Looking into your .config, seems to be the same issue as you have
CONFIG_SPARSE_VMEMMAP but !CONFIG_MEMORY_HOTPLUG.

This version fixes those compilation errors.

Thanks for reporting it anyway!

[1] https://lore.kernel.org/linux-mm/YEfoH8US4YVxak7r@localhost.localdomain/T/#ma566ff437ff4bf8fcc5f80f62cd0cc8761edd12d

> Steps to reproduce:
> -------------------
> # TuxMake is a command line tool and Python library that provides
> # portable and repeatable Linux kernel builds across a variety of
> # architectures, toolchains, kernel configurations, and make targets.
> #
> # TuxMake supports the concept of runtimes.
> # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> # that you install podman or docker on your system.
> #
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
> #
> # See https://docs.tuxmake.org/ for complete documentation.
> 
> 
> tuxmake --runtime podman --target-arch x86_64 --toolchain clang-12
> --kconfig defconfig --kconfig-add
> https://builds.tuxbuild.com/1pYCPt4WlgSfSdv1BULm6ABINeJ/config
> 
> 
> Build pipeline error link,
> https://gitlab.com/Linaro/lkft/mirrors/next/linux-next/-/jobs/1085496613#L428
> 
> -- 
> Linaro LKFT
> https://lkft.linaro.org



-- 
Oscar Salvador
SUSE L3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEh0IXlWVsgbGK7c%40localhost.localdomain.
