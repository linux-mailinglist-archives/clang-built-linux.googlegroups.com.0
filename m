Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNOK2D6QKGQEFGIH7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id D89632B6EA8
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:32:06 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id 198sf14010447qkj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:32:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605641526; cv=pass;
        d=google.com; s=arc-20160816;
        b=r5ycx2xHiDkwgniDdGRuXUEVad5HaTR/IBN3T7FsZsTP1Sb3FzilGRev9o4dN+DgL1
         bi6MWZZ3jFaIoQ9f1d2XIcScv57dvJ9O3rsm34SchWfq/55M3YS99QPTaEpgoKJK3xa5
         etEh6/gCCn24vA3JSs3khvTbzgGI97a2RXo+psu7kPfkwuxqrrP/UCEqCA5cRd+8QtV3
         GnJBjJQOIOzHL4JwPgUa/9VJtp91SfLIYEjHzQS7vToc03xmTt4phpiKRNV1GJs/Xuep
         Oy0cHOEHUxYQczkmqDHKaBQS8P9qaSM4PDtu74xtlRLZQGSxNeU26JN87XJi5HTQgspL
         lyeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=TiR1YC+8IIrVK0i28kiSkf+2FXOFErOBrVI0xdb1wVU=;
        b=gIyM9YyRq308U2m7F80lh6Wq4wJbx7yIL1nRzApYnpTxNSreRXA8Aiq1f8qx7i/Ya2
         20xJJOTBxb4fjXvcHhT6+Bviibec1I+F/qgdzxVGjgcumy5YNZ75szwTg6B+LJnz6aXG
         AGHpM0vfHoUOYEJXZnZnJFVlbN3kkZzRWbwO1ANMg5Ci2znFQ1bvFERkjHTmowNH6Flb
         otA9ZmyvXjPGsrMvr2LGFgnqpkMnIxrqS+uFQ7B7LkOMOR7Qrf5R1cXXL7Ori0aEvtUC
         8Mxt+bt7aRk3N4HfqsHM1lf2VAkttga5ykq+CgXIbl8LlC3eVo4XZ9M/dGhTiMgj+FJw
         Cncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCHl1LKv;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TiR1YC+8IIrVK0i28kiSkf+2FXOFErOBrVI0xdb1wVU=;
        b=Himeu5WpJtqMTnsuDf7q3+/k8w2WLb6w/V3kspIsQqlrkp1E0rT77KB4aHJppP/V9m
         adQ6OqLdp3c/BP0tsWgboKk4OZd+DpdJUb2AyteN5ETZ1Os3DqkabpkX/gGju5AzvLlZ
         /Wbia0embb4+2LHGZrK9Qx3fjyZe9YsDdQCA2bLE6ZadUlHg1q8bTOeX6lqS/IrBWEyE
         qPnns4UOlz8b7+4xqECtfqOroPc7pJuw9Hq2zn3ymqJLFm3qUku15dEGqPs0JlrKnmi/
         P8Jrd5hEQBeu1lprGBDAhFlk8GaohPVVC9Scqth0SndMRxdbtIkMWc8JjhnSzX0VJv6n
         NsYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TiR1YC+8IIrVK0i28kiSkf+2FXOFErOBrVI0xdb1wVU=;
        b=Jqx1tnQKF4EPircaylMHYAqTafQuQQTzkZssV/HF5AXDpkom9P6E103NNPrr6urS4f
         m+Hhz+CryOIQlIv9jvhi4G/2r9MH4CG59H1fOXo/ZT3gedjj5IefLWbTwI5kDPVSyAGq
         LOLqLp0e4k/PSQL3CJAWlZgIRyzeObgzTIpVoyzlYJtfCQKHL2XiA7lhpU7LBG007mWq
         kVILbBhOR5abk7Y8T1CBXX+9ypZhe36/Mb9O5+l2lIEU61l7w/dIgLmdvj4gOCcFzAyQ
         3U0/mKqI8O1AoZTSvH7RphT81adWaEg/sziM93AdOlfjl9a2LKR6d3mESBoFIniF3+1b
         VuAg==
X-Gm-Message-State: AOAM530MTLP+4FIFQkHuWRZyjudKmB5/4FVQguFlC35FYtUWGbsIfD30
	/gXTGnHL1XlCnPzxzXEEv2A=
X-Google-Smtp-Source: ABdhPJy/ZTaI289y2EHZkze5AlNHimjquVWberBfqYseUWYA9/5hnMemfeGpojWel3b3zXPfT4cBog==
X-Received: by 2002:a37:6296:: with SMTP id w144mr1230092qkb.312.1605641525955;
        Tue, 17 Nov 2020 11:32:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b6c4:: with SMTP id g187ls8069229qkf.7.gmail; Tue, 17
 Nov 2020 11:32:05 -0800 (PST)
X-Received: by 2002:a37:8b42:: with SMTP id n63mr1191420qkd.297.1605641525479;
        Tue, 17 Nov 2020 11:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605641525; cv=none;
        d=google.com; s=arc-20160816;
        b=ePAQgrjAhX4vXE4MumIDIs97krxGWmp9hRNlUcnqQLKH63zyxd28fIWzOKu7gIRIz/
         qqtcSZjbST3vZC5WlC6ZyBQmPuiq7zzDxE0A8j9o5Y4mnC3sHWD0oPw5Dxk/Ek9GPzEm
         53xv0ey0bN5emKuGn2WgRLTx3pX3oQW8XWzT3A5PGn2ZulS6ZN3OcULO6si0cCJH7wF3
         fBFNGQJJ6hvhxAw/ogby+6/565FMaSOHZW6rm0VZ5c6sRYPdDYizCpOSmUacK7jGtTGj
         bDWVyQvw/HEF6uaGJKd7XsNTLGfnJaXXTtIt/ySgmjgJro8HQeeI2k0OhotDyEUPzZ7U
         oGPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=C1IZO3TidBvZYKM3gtAuU0FLpKg60Lkm/guLU1OMCbw=;
        b=ck4gHlF1y1dCMHfWCGA+LLp1OpAcgGTbAEvrEqtxPn6oBi3DdsAiXp9Ynx8SipWrlq
         QLnpRpqmZodP8Rmpwb9ArSqjtjUcvP5zq+5MR0ri+JjFRkZQzi2HO7ygQDxbdPsw43dN
         1/c2MZP0O2UhKg56afX6BwuYINJzcb9szMDckGNBMaXKtQ6iXGuvVRL5FLEDd6awDq0h
         tAZvGST/VrAssFS1v0Ge79k5XtRoGz8NFEsgDrgbiwoyBQSInXW+UMhRBDbi4z0vMTJK
         Io+Ds2rlXMgj/ToJPeoLnb2FzNYF+WeKKUjpve3upANdvwbJC7XvM1Zvby8lArmcVEOb
         N0KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCHl1LKv;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id m27si1700414qtg.2.2020.11.17.11.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 11:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id r12so11294349qvq.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 11:32:05 -0800 (PST)
X-Received: by 2002:ad4:5b82:: with SMTP id 2mr925675qvp.28.1605641524963;
        Tue, 17 Nov 2020 11:32:04 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i4sm3331627qti.78.2020.11.17.11.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 11:32:03 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 17 Nov 2020 14:32:02 -0500
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Andreas Schwab <schwab@linux-m68k.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	linux-riscv@lists.infradead.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
Message-ID: <20201117193202.GA1574448@rani.riverdale.lan>
References: <20201117013951.7827-1-rdunlap@infradead.org>
 <CAKwvOdmESwnF14TLjRfzJg8Dau8XW0LgoDvXtdPjPOqdf211SQ@mail.gmail.com>
 <9ab43756-6c48-c5e8-3a5d-e44bba070a97@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9ab43756-6c48-c5e8-3a5d-e44bba070a97@infradead.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QCHl1LKv;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Nov 17, 2020 at 11:22:39AM -0800, Randy Dunlap wrote:
> On 11/17/20 11:00 AM, Nick Desaulniers wrote:
> > On Mon, Nov 16, 2020 at 5:40 PM Randy Dunlap <rdunlap@infradead.org> wrote:
> >>
> >> riscv's <vdso/processor.h> uses barrier() so it should
> >> #include <asm/barrier.h> to prevent build errors.
> >>
> >> Fixes this build error:
> >>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
> >> In file included from ./include/vdso/processor.h:10,
> >>                  from ./arch/riscv/include/asm/processor.h:11,
> >>                  from ./include/linux/prefetch.h:15,
> >>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
> >> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
> >> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
> >>    14 |  barrier();
> >>
> >> This happens with a total of 5 networking drivers -- they all use
> >> <linux/prefetch.h>.
> >>
> >> rv64 allmodconfig now builds cleanly after this patch.
> >>
> >> Fixes fallout from:
> >> 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> >>
> >> Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")
> > 
> > Hi Randy,
> > Thanks for the patch, it looks good to me.  I only had a question on
> > the commit message.
> > 
> > Is this also related to:
> > commit 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")
> 
> Hi Nick,
> Yes, it looks like I tagged the wrong commit in Fixes:
> Thanks for noticing that.
> 

Thanks for the patch!

Acked-by: Arvind Sankar <nivedita@alum.mit.edu>

Generally speaking, should compiler_types.h be considered "internal"?
i.e. everyone should include compiler.h, not compiler_types.h directly?

Eg for another potential case that might bite is that RELOC_HIDE is
defined in compiler_types.h, except for clang, which will only have a
definition if compiler.h is included.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117193202.GA1574448%40rani.riverdale.lan.
