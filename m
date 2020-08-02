Return-Path: <clang-built-linux+bncBCR5PSMFZYORBMPYTL4QKGQEKMWSFXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 40442235704
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 15:14:27 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id w24sf6526553vsk.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 06:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596374066; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVK1k6w0sC8zWf6MhEHHb7WMkmZT+C/PQJVxsxu9yvfXDCaptL/z+W6yVzdPDHQY2e
         FGmmmzD9un1UF4tD/AwpBPm1Pns5CVjO4VuHlcKw4QS8vMSL7WMW5AhzN77MAJ+CPD7v
         ZdZ76icRI+qqXDnGjYuHNUhyzI+owZyx6E9u5BBvZdEhAWsX35kErCt3WMc3m9PLIeUd
         gujlCfTPtYmxdRGrL8gv4tikQ3LjG3kveCMJR8uPZ2XsH8eyyDpAq9qFdrknVlXfA2kS
         H9g3lz0YMwYJIlDCY8LOuLcEoNMlzwLXLxSaOQfkDP8puaBrpLyw+q7Lp9l5RaN9DfJX
         StVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=EoninuN1j1eOhy3RURWvYJBnizVD6EqLx+MasWMiPTo=;
        b=oTb5x6gJnD/lLg4wnH6CoO8ndevoWmcTSIqukvv56ffAFxhTeFRCoeWaoOBK2UgSPh
         aL/8y4gGp7OgkmEUVXmnBtjeE6nLoqPDJPW9s/2BXiAWGEx19A4PQfYfw8xNHKlTP82s
         GaoqkTvonXkBL/3D/bQ0hHL0aU84wfpeD/cMgCjlxA4F7MKmWXmX5mQ7XbkBckCfKAwa
         TXvlHsQctVaDHrtVyx5MwY5HJcX84m++Q91lyJhVOUbEKcTZfENExUqr2UmavWwY8QVn
         b1iJxQNY+N6iU26NehRiMC49AiJAhcU5DJhZs21gbB7F8hKxy5ImGx2zvFROR3X+O865
         oSTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=ZE71Wycl;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EoninuN1j1eOhy3RURWvYJBnizVD6EqLx+MasWMiPTo=;
        b=favTGeJiKTZehS1PUi0gw5nk+P2Vb/36/cJQ+Uo8W6kYeL/9Phk23okEZyGOGnq763
         gH4Q09uJWsr1oEL0awtpOushCMhBPOc6IK6RO/2gU1OjjnfgMrQkCGYcb98sxrUnTXXC
         TqqpASgyRtJV3FmjbnYCrkC6VVygj/ao54JoB3YiNLL5s0mkgoJUzcDyWm07KiBFInY6
         ovtFpf8PTV40PJfA79isLiYi8jt5qaS9VSwWmxFR7Xc3W7At8znTLY1tH2jriplO8C6g
         TpppxKSvdHAlFlQT/WwTLCyTL3P51F0zNB2qW0RMu83vjJjmFff/Xzo5ZmYgR62y4WWO
         6nOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EoninuN1j1eOhy3RURWvYJBnizVD6EqLx+MasWMiPTo=;
        b=ITmKDLhnKs4NkY0CTvzQ/FeGx/lCBNQejA05N0Ogb4qnRJyHLw3EGPI26L08Uoq5Ud
         D9FNS5yyQsBq6ONdypYxPFI/vFLWKG3eiUcGi8hsD8Z7pvr4Tm0z6si115Q/orlNjoiw
         7NQk5q5hrWiZq1HWERYReubd7XqjHkpusD07UFkZR3Yp/XfSq54J69qbxyB9DA77O3eg
         eXN675rYLwBOa9Y1GnXUk9V1xoUUDM8zozqOctoZRZLP0hI/PlbyXZ/vTQG2TBH1+Nro
         WVIFeP+grYSPiCM72Sj9ruta/4KrpK2ouXiC+XJaVtIE2r8ILBEGFy0sDDesVCW3w6hy
         Yuow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532avOvvkecvuyav73b4fDdwfPIjSVYYEw5T+zbVbQqGgLHtPguO
	rIeQ7dWBfbuuMkgeqXTxIyM=
X-Google-Smtp-Source: ABdhPJwgq9xF8U3lJIL1d1btLJwxqTMlnoFlM4cutwjnjmu8995dFAz/wKkTOKpxT7Aot3FDSFMbNA==
X-Received: by 2002:a67:ce12:: with SMTP id s18mr2324538vsl.116.1596374065944;
        Sun, 02 Aug 2020 06:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cbdc:: with SMTP id h28ls669016vkn.2.gmail; Sun, 02 Aug
 2020 06:14:25 -0700 (PDT)
X-Received: by 2002:a1f:3602:: with SMTP id d2mr8561949vka.9.1596374065578;
        Sun, 02 Aug 2020 06:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596374065; cv=none;
        d=google.com; s=arc-20160816;
        b=k5PUUz1b8ZwCR/+v7Rhqt5mxYh48GQvAjeHSZaWbjPIccT11T3COaKeFZZrKgJGkFA
         ZtQI7Ec+WoADHZfIX+sUcyHFkZ2N0uA/2y0fD+6ibtGhmNxc6PjeC6LtGFixiR/OInuX
         s7bLuny1aqgTpH2ZOF2HHpCgp5cQTTdr+/Et1PtMOI4jgPw1TG8i6R9Iy5m0USIo3TvR
         R7LnlpDIQ4cDCk9FsFUGDjuM5zJNe8Otk7WwEDV55icK9NnlLA6OrdI7qCgChQDtX+WX
         I7daQ+50P6u29qAvmwinuPz6eCIQ3Wif4HpjrD/Z3NLKZJV5i8FgZwm/4dUECd0hh+ZS
         muDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=IDoSAUxP9Kcf1ykx5U2P7Z/MSy5zTZhKxdiOs4VeljI=;
        b=fmQB1LkFOlIif5j4fXaHA4NPiIur54NciG10T4zAi1rJBdzEOXwt0wo7hj9LOoSfPj
         PeqhfMoWe0Pwon6o4J2zml2Jtx7gftpmc3PvsRW1bXDoMPLSTbWXSe0Oi2upKvMmNtqL
         6nal0IkSWr5dfeKwx+y+FbiL7UPKES5gWTPcMNsrY28KPiExTzMXDp09hT5JrEYKfkWR
         5fzqNH/ameHpgUBh41kZVVHdzLJ7PQgi3qiOkpxH9Sbe9qoLQam7ljhmACEAFI2YGw6w
         72YQQ/P71/Yxf4eTiUUm+HTGuFtIJnW+fbrHfQy6gLqRUFJ1wr23tuO99Ymx9SBSnMqS
         7Atg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=ZE71Wycl;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id c186si1063863vke.3.2020.08.02.06.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 06:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BKM0z2dLrz9sSG;
	Sun,  2 Aug 2020 23:14:11 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski
 <luto@kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Christoph Hellwig <hch@lst.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Max Filippov <jcmvbkbc@gmail.com>, Michal
 Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>, Palmer
 Dabbelt <palmer@dabbelt.com>, Paul Mackerras <paulus@samba.org>, Paul
 Walmsley <paul.walmsley@sifive.com>, Peter Zijlstra
 <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>, Stafford
 Horne <shorne@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Will
 Deacon <will@kernel.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 clang-built-linux@googlegroups.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
 openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org, Hari Bathini
 <hbathini@in.ibm.com>
Subject: Re: [PATCH 06/15] powerpc: fadamp: simplify fadump_reserve_crash_area()
In-Reply-To: <20200801101854.GD534153@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org> <20200728051153.1590-7-rppt@kernel.org> <87d04d5hda.fsf@mpe.ellerman.id.au> <20200801101854.GD534153@kernel.org>
Date: Sun, 02 Aug 2020 23:14:10 +1000
Message-ID: <87o8nt197h.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=ZE71Wycl;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Mike Rapoport <rppt@kernel.org> writes:
> On Thu, Jul 30, 2020 at 10:15:13PM +1000, Michael Ellerman wrote:
>> Mike Rapoport <rppt@kernel.org> writes:
>> > From: Mike Rapoport <rppt@linux.ibm.com>
>> >
>> > fadump_reserve_crash_area() reserves memory from a specified base address
>> > till the end of the RAM.
>> >
>> > Replace iteration through the memblock.memory with a single call to
>> > memblock_reserve() with appropriate  that will take care of proper memory
>>                                      ^
>>                                      parameters?
>> > reservation.
>> >
>> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
>> > ---
>> >  arch/powerpc/kernel/fadump.c | 20 +-------------------
>> >  1 file changed, 1 insertion(+), 19 deletions(-)
>> 
>> I think this looks OK to me, but I don't have a setup to test it easily.
>> I've added Hari to Cc who might be able to.
>> 
>> But I'll give you an ack in the hope that it works :)
>
> Actually, I did some digging in the git log and the traversal was added
> there on purpose by the commit b71a693d3db3 ("powerpc/fadump: exclude
> memory holes while reserving memory in second kernel")
> Presuming this is still reqruired I'm going to drop this patch and will
> simply replace for_each_memblock() with for_each_mem_range() in v2.

Thanks.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87o8nt197h.fsf%40mpe.ellerman.id.au.
