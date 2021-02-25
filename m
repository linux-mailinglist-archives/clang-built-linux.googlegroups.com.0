Return-Path: <clang-built-linux+bncBAABBZUY36AQMGQEXA6KZGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 36642325344
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 17:12:24 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id i10sf4202297pgm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 08:12:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614269543; cv=pass;
        d=google.com; s=arc-20160816;
        b=tHliiqSyeNxrDtGqgAsuJDxJI6sZwF1ww1k7rYddv4vOxcBY5yC8/nMf5/H38rFD7/
         FOA6VwIjOQND3Gl2rr9UIfds/ImMaOjnEWn3Vtg5llH6sT5VLCaDCCPIEypsQfNYU0c/
         NJZvCveRqxoV+2toBpcs4y+eI6Cz3i84eNT6trCTa1SzSS20flAGlfFr1t/kcusMwzH3
         ppCswnIrDeaYJu8x8rLlOROKYlle/sTIR/xqWXdrVFKgICJtbegFDG9JwxcV8Pw/xgf1
         +j65+uy1tJSNaoVLOQikCJGU2+GsXkXQFIcs2mTJBAAl6L7FXZyg5GxfVoR6uGs7NyHz
         IVrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bMhRrwNUov5QhBpF+07tfAhYI+h/eoy87geT3NUJ4jU=;
        b=vkKuhML+9JQptQPpn/+JwYVyEODGcrGZViZ3SADriZChXAVawa3ehI4b6L3tvulUK9
         15tS0zp3r3D8JEiH5rigIugA3HnTO7gCvI4LOObQTqPEZM9i64h+XSm+/sTDIs1F6hda
         pm4Z3rg45Twmk7Ckwz/qRpSGg0lxvaXRnQBPxwEvbIkU7EnZ/YeBnDtPmeqEQpEIrhsS
         u7JeXqo6y4Rmna55dIn7JSNNy7TS2DBienwwd85omr3Z/QkKG0rM+/mHBHfs9nkeDy7L
         pNPeI6rwQuKrXHs/uqKKdWu76Fv61nFpaVNk/Uh8bHoWC5hkZoFclYNaZ+LYlXkACRcJ
         TREA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g2xHbCzS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bMhRrwNUov5QhBpF+07tfAhYI+h/eoy87geT3NUJ4jU=;
        b=mheNNo714FjtAGEl1qjzJZqkcYkTMd6KyE7f5CCxzlusunTHxhn6lid83skrQHOddZ
         v9IiCbdrAm2uJEKNelPuULVAthSY5FLKp1MsUXbFzuA4z2jA4MzW2voW2JsE9YuAzErq
         27xUyodc9l3u/gbv55zgYIJcowVosodft4ZYfbcr+tNwb1Qd72cbd9XNv13e7jf969Pc
         Qn80/hZ6tFhjWIOh5jPtBwyCdi1qR65Cky6YMWdUHWDpX5IKix1IGOTQfBSxqdoDlbGW
         W1Ns/wkX1LIcDC50psEMwk5zFTT4IVbM4UzhORkbiYUkoi8RqHCYM8ZJaYOvKlrYlJVH
         I86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bMhRrwNUov5QhBpF+07tfAhYI+h/eoy87geT3NUJ4jU=;
        b=evWacwGr5RbMx1ris8JiqplL8q1Xg/Sy3qbkx28twjmC1d/CkL8/th0emRAdAPCfGT
         bysH4D/ZC39pXq9M5SRymr9ZP147hJbE4YLY0BKYWapn+J0t16DBlnVJv1Dz8da/2C5z
         +1T8eM6jswNDaD9LWvwQx+JFxXjm81gSoynvP2fFNaxO0PQJ/39qA9qAjfkbIZ9Jjqod
         1OrBh6sYL2TZl4cUI07nWJ3SiPyQYZ/8lFzCZ3ztKjcd7zfAilrJwQMtO7ojaIuKl6T6
         LmOatgwx0Cuzyeu6yMnuDlHthYAxCSNOvMnNZX4fSlexZ3rqE5euxDncEsPcWUQj5Ehi
         sPbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Y14OBIV1NXTumqxya0gNtFP4mOk2+60lAdbPyKnEWc4pQAXnw
	6B1G7LI6/c6l2t8LtMHJz4g=
X-Google-Smtp-Source: ABdhPJzPO7Z5FR1BB8IsDeAkPNo3gAZaMmhodxdJlzJ4NZ26O8ns2/Mo/a9KNkdP6kFZRMJcAE/F1Q==
X-Received: by 2002:a17:902:868a:b029:e3:e605:36d with SMTP id g10-20020a170902868ab02900e3e605036dmr3671201plo.31.1614269542746;
        Thu, 25 Feb 2021 08:12:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:300f:: with SMTP id hg15ls3729020pjb.2.gmail; Thu,
 25 Feb 2021 08:12:22 -0800 (PST)
X-Received: by 2002:a17:90b:1b4f:: with SMTP id nv15mr4019716pjb.105.1614269541903;
        Thu, 25 Feb 2021 08:12:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614269541; cv=none;
        d=google.com; s=arc-20160816;
        b=fyKpA3X66q5cqrXv9mKXgEYGOepxJ9hnLp+9DDWEuU1xLXe+S+9GLC3an9eJXDHId/
         5d2OHnqkJXbC4xa4Yu/NpJ9sB2cQZjJdl82LfuX4aRqPmXyEjDTjEWDPWbR2enpOzY32
         0wDW7QAzUMx6H7szD34QgAqRqOgX0+iwOfZHrkzFw3+UCWC2zIhilF9uAd3MBzqn5D4D
         Kyz0zaPNHBFKm2qM/VFofhRUIZe7MqShsi0QhMeKS0GSZ5vlowjERYJWjHrpgX9cDzYH
         k/KeTYMHxr3hmSh61AEB0JgIP+jrbF6J4LawiHJomHe5cUUJP42FEubYiRuaJOzaK+NW
         cUGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/aylPVc3A8ZEpGrxBxdYwDA8Fwno2pA63CQyDeTqekQ=;
        b=p1LI+XPH5JWnXdo5OKmPFrPsI7uPJKE2DXpvDzS6O2jpp6Fd7w0gO0ud62CF7fwP3J
         r66jPSbKN/sNhYxIZvlVCQt0QqpSQhu121g2jF6OFnZwS4jtUUGHODPFlRPsnx2XYlQX
         1uVW386ilhSp/3kFXuoHsDQsKkyF6ATqmkd5qpw7NS7MOVQkxLbPFBtkbZdlXE21gu3R
         Mbrt1kaMO1yZ5dPUm3x+1WN+wq2wFpoCdNnQ5wTF+sOTGOQSAfRhSbqp10DVMiZ5nkB9
         ubNlxboEGpyWF9s0SEQGP/rkN1f6eFUS6HJrsxpIo/Vij5Vj2+gYy5RpXimE+bmdDVYp
         kU+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g2xHbCzS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si271487plr.3.2021.02.25.08.12.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 08:12:21 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73B6C64F1D
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 16:12:21 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id i21so4275183oii.2
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 08:12:21 -0800 (PST)
X-Received: by 2002:aca:4a47:: with SMTP id x68mr2254102oia.67.1614269540490;
 Thu, 25 Feb 2021 08:12:20 -0800 (PST)
MIME-Version: 1.0
References: <20210225133808.2188581-1-arnd@kernel.org> <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
 <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com> <20210225150757.GK1447004@kernel.org>
In-Reply-To: <20210225150757.GK1447004@kernel.org>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 17:12:04 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1N_YCBcU=-fUBUVvb=Yz=HD9BjHNiDGtjatY00Q1PrLg@mail.gmail.com>
Message-ID: <CAK8P3a1N_YCBcU=-fUBUVvb=Yz=HD9BjHNiDGtjatY00Q1PrLg@mail.gmail.com>
Subject: Re: [PATCH] memblock: fix section mismatch warning
To: Mike Rapoport <rppt@kernel.org>
Cc: David Hildenbrand <david@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Faiyaz Mohammed <faiyazm@codeaurora.org>, 
	Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Aslan Bakirov <aslan@fb.com>, Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=g2xHbCzS;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 4:08 PM Mike Rapoport <rppt@kernel.org> wrote:
> On Thu, Feb 25, 2021 at 03:06:27PM +0100, Arnd Bergmann wrote:
> > On Thu, Feb 25, 2021 at 2:47 PM David Hildenbrand <david@redhat.com> wrote:
> > >
> > > (I don't see why to not inline that function, but I am obviously not a
> > > compiler person :) )
> >
> > Looking at the assembler output in the arm64 build that triggered the
> > warning, I see this code:
>
> "push %rbp" seems more x86 for me, but that's not really important :)

I suppose the relocation names like "R_X86_64_32S" and the command
line I used should could have told me the same ;-)

> I wonder what happens with other memblock inline APIs, particularly with
> alloc wrappers. Do they still get inlined?

Trying the same configuration here, with all the allocation functions
marked __init again, they all get inlined by clang, regardless of the
'__init' and 'inline' and '__always_inline' tags.

With gcc-7 and gcc-10 one instance of the plain 'memblock_alloc' does not
get fully inlined if I revert the __always_inline back to plain inline:

        .type   memblock_alloc.constprop.0, @function
memblock_alloc.constprop.0:
.LASANPC4090:
        pushq   %rbp    #
# include/linux/memblock.h:407: static inline __init void
*memblock_alloc(phys_addr_t size, phys_addr_t align)
        movq    %rdi, %rbp      # tmp84, size
# include/linux/memblock.h:409:    return memblock_alloc_try_nid(size,
align, MEMBLOCK_LOW_LIMIT,
        call    __sanitizer_cov_trace_pc        #
        movq    %rbp, %rdi      # size,
        orl     $-1, %r8d       #,
        xorl    %ecx, %ecx      #
        xorl    %edx, %edx      #
        movl    $4096, %esi     #,
# include/linux/memblock.h:411: }
        popq    %rbp    #
# include/linux/memblock.h:409:    return memblock_alloc_try_nid(size,
align, MEMBLOCK_LOW_LIMIT,
        jmp     memblock_alloc_try_nid  #
        .size   memblock_alloc.constprop.0, .-memblock_alloc.constprop.0

Apparently, this is an optimization for code size, as there are
multiple callers in
kernel/dma/swiotlb.c and it can move the call to __sanitizer_cov_trace_pc into
a single place here.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1N_YCBcU%3D-fUBUVvb%3DYz%3DHD9BjHNiDGtjatY00Q1PrLg%40mail.gmail.com.
