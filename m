Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBI5DVL4QKGQEBR47NRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A7D23CA1B
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 13:01:56 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id a5sf2578183wmj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 04:01:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596625316; cv=pass;
        d=google.com; s=arc-20160816;
        b=UhlCw0kwTkRXB2wlCbVm3gQYY/8LZRNdtbmnKXEbD5ym5mGLC/AkHLxFeWEauiaI7E
         zXqnyiMzsQgDMQTgDEs0Nmagl/EAX5CAnWO8duwDoVaBSVsgHSgB/yITJWrrFE5NzVZ9
         hA+FK7xL+xwUwfd5snkZ0GKo34CoCyYnOTGHAEgi2/heuV5uGVQ1mnPKoDlySJ5xRI2n
         JRDgIagFY+DN+UFgM88XsdnISs5TNe6OTUbGic/xByA9sLwjYZwFiX4YQl8hswRd/N3N
         H0r21RW9ogMPds3dAiueGkv/ePhaGbjBd65h6y3u4CYJ8faSh+ereLrzd4z4fOn7cSCn
         Z6cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1RBrgSSiK6AsKMqXga+YGipdhEXKexiN2JPfwkeQna0=;
        b=yxierlRc2OFuRGFwNkPNAfj1E3FMMOxtUQXUxfpYUam7aToP+AkJnv0BXAwWyW+4zf
         56PxTyDbyj707fhorlEmaxTyZTJcLOy00TaWOdNyzztEjaZJnn4Tzlz8c7AcDVzU1r3c
         pgUXx+oeTSa96XRsc975lRwooHBCnbMyCs4Rbu7jkgWky8lCcBLlyXJYNENf7jDWSCRa
         hXzmBr3BfEIfCx/jOyPsU3Ba8eqqlWoccxW4PHcC52YEWZ+rkmQuvi+za+PkH8g14TZj
         ibxspzF9A4jYymHFr6/cnY9nlMYOtwZd0DKWY8vQNpAOm7KZcO2qe9RQpiS0yj9OWTzb
         RsQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1RBrgSSiK6AsKMqXga+YGipdhEXKexiN2JPfwkeQna0=;
        b=MHrhD4SmBTauDT+cvBF4Gr99rCcJFAqjrZmGaQTpBMG9lRMB/JnPM8bbOOoRdtLlZg
         R28MdKkh6EhihvTkFv+gImCd2c/k2xLv+1XH2W1nHNzlt1sb3l6VxrFM/RtI+0GMZu93
         nZ/mvmLXjv/RwoQwX9oC9sTX2siBwXXfB75FGLnD+SSyKqeA2Q1rFufrpQ9WWsLyys65
         Baoc7JJTdZU4rVZmwAiQp9iTuMBkWDqmTBeI489C+Z7oLzG41eJ6C2ph0KvRl4hcMWzz
         fbilQhtTyavP2iscMqI+gPQHAK46pfEuI0Mbg4NmmfXwrCE3/d0r4kxizicw/4RLP55i
         k46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1RBrgSSiK6AsKMqXga+YGipdhEXKexiN2JPfwkeQna0=;
        b=YpiduYLRh57QiSJhQ7wjWrkeeTJq5b2ZaBYYTQHo5I9q6G8CdWYkEZJ+9xBLqHijEM
         HcJpRptuyIzvy6vJEnniY6h2ha2g0aLN5EoXHA+3w0Or57d/PFF+jURWoZWzdrWnB+qw
         9RT4J3gQ0gOSC5xvJl8NTjo9QtcTbJBrkUq5h5sq5bi5HxP5BwsV3W9P/RVKIDioYqP3
         +nTEzT0RHeZXuhKGBRlvrjWT0c8IeB22I2aeDR7l8cBQdfN4SqHO6HslaJKM658wKJmR
         o4c2qmi30RenwwoG40JjSkuskiZzno964W9mGyhnP9L8ypyZKVDZOMi9WftOo3tmrGWb
         gAZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LiSTVWsq2HbsqnI4vlwTdCqSysFuohKgZ2qorkEBNHmGb8SQH
	iqjDbQwBXVF3OrUr3nmFl9A=
X-Google-Smtp-Source: ABdhPJyRjwfi0RWmvZOctbMME4vUvrWGm23Rd0N1tGFecRMNHG0WB/SLdOETW55T+k/bx48AzkI6DQ==
X-Received: by 2002:adf:e704:: with SMTP id c4mr2522848wrm.81.1596625315978;
        Wed, 05 Aug 2020 04:01:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fa8e:: with SMTP id h14ls2074764wrr.0.gmail; Wed, 05 Aug
 2020 04:01:55 -0700 (PDT)
X-Received: by 2002:adf:82f6:: with SMTP id 109mr2519043wrc.25.1596625315511;
        Wed, 05 Aug 2020 04:01:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596625315; cv=none;
        d=google.com; s=arc-20160816;
        b=gTNEw5O0DILXcvmpTAEQaW41DT/HHxzEa1Pp7FiOo7jHHQYzY/CJpG3KhkmTIOjkVk
         rtA2I5DPHgc9FG2m49rg6wBclR7u0fzSkHagiXInBkhZGbdimBXCiw9ec1+wRbMGSIw7
         EPBwQpkasI+C5ob2Bu0/RKdxNIYWVGuRhwunH0Gvq1ChW5FFV1QhdBZUqUL33kXQ1K+A
         cO+04iARJ5BeMMRhXH1VyRcaP8jSG41CfYdKQ52dGei3c/wiGjzl8bH8e2PhZ96w+WDk
         ZLm2oGYqOna7e070VU2Ggh7bPJwtFBFr02TWOmP1v/TftJVRlnc+EVoD+/l2N1CaGLmp
         1i4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=n0BQjDH3EXdybHCU3RGs+eD+Dz14VYUltYBt14vghGk=;
        b=EcU74cNsUpc7YaO0g6ugObdcMsMIutkCLzUhgt6GMjFS/7otRy7s1iAMEwLSwyDgy4
         ieGFdzk3wlIa0uOItScH97+TZCUWmIvjR0VI+CFyFnNlMEyeC/KFGwamtqy2sq5b3h30
         VP+H1r2aepJhhj2WL3yOZlsI2SB1kDQpbAy5ZnDRvu1nyp2dgMnnBTsUHERWJxUDvyT4
         vvVnksrKL4D0kasQ1eWHvrFnbfxgJ4rIzMQ6e2IeBNN4iyNIBWue1AaQhcjA5BhEiuki
         o90QpaSJJJgFblOV5t7EDnovCSN+xVkyBD7yjgYWbcSgcyBhhZK6fEfMLIpgtgzHCOF8
         XVdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id j83si446183wmj.0.2020.08.05.04.01.55
        for <clang-built-linux@googlegroups.com>;
        Wed, 05 Aug 2020 04:01:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1k3HAl-0001HW-00; Wed, 05 Aug 2020 13:01:27 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 27D27C0BF1; Wed,  5 Aug 2020 12:58:44 +0200 (CEST)
Date: Wed, 5 Aug 2020 12:58:44 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 17/17] memblock: use separate iterators for memory and
 reserved regions
Message-ID: <20200805105844.GA11658@alpha.franken.de>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-18-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-18-rppt@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Sun, Aug 02, 2020 at 07:36:01PM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> for_each_memblock() is used to iterate over memblock.memory in
> a few places that use data from memblock_region rather than the memory
> ranges.
> 
> Introduce separate for_each_mem_region() and for_each_reserved_mem_region()
> to improve encapsulation of memblock internals from its users.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/mips/netlogic/xlp/setup.c |  2 +-

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805105844.GA11658%40alpha.franken.de.
