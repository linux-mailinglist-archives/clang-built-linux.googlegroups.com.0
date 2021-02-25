Return-Path: <clang-built-linux+bncBDOY5FWKT4KRBV7232AQMGQEBY3IQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id B056D3251F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 16:08:08 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id l18sf1866848oic.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 07:08:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614265687; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ynm0irV8qdfDPgzJTwPeRT5WsWdTfw54oTYPbIxhIOvP39qEhDRz5JqlIMTDjYGo49
         ahrAeWsK4fXmPGyN5kypVg3aKvwoOimG6wgQ9wvkzy0q+f2QY6DtIYhYoT4vs6HNgepv
         k4MCMpEuoATfFWH2Bf0w2yDf4Y1dnIh/5W08/2tDt87Oumk0g6Fw9F1Un4vdlg8aKSsZ
         W3YHKivUQlWvN3kUGikwX3cByQeJyEHxzN/fvsx78rdGZtL7NY/S6t5TYLW5mkgPhvta
         Am/I0ivBDDsRl/mqO+q88XH0qRCdp4WtOcFyFBY4o2+gUKRYnpmhs1/XzT1B0/1K9Mc1
         jzqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hTuOst59UWVSvei6NRhR/t1mHEyAkuaRSFde7LO/URc=;
        b=dlQ/mJ1TGC291XggybMM/G7aEI4bvHfd2TPIL7P2hxUOfpdBsxpBjV9xJ1p6vZCE+X
         7yOLPfGPITtlGFXenIFDiyunGJevk+3VwEFhjyEQ0a16dcbhJmtdXkD6ukz3yfxOtq12
         xYCemvjkGAcko6C8FramKCD29WYr+6cnRUpTvK87yf+Rq29iDo8p8HZL8zs8obcgt/lj
         O+15JfkkyOlp2glIQp/rgvJns+Gbft44zh/a3qVQINmeapnj6Z55NXrGtjpBwmKEr4cK
         xx+omy5IkwDsgTYZ9b+S1zv1ycJ2cxcmvr/9zy5Yue3dBiATD411+U0m4oLo0Cw+rA1Y
         iUZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R2TgcnKq;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hTuOst59UWVSvei6NRhR/t1mHEyAkuaRSFde7LO/URc=;
        b=akTuT71uMnF+f3zmKgKspzwvjLIRua5QUv3RZIiBczSY6/F8u8WriO+E44FTTkn1rl
         rXOdTA2WmvTHfhi6lM0b6Ws5xKq64Cp32MA9EcHe4nmVDws5zml+8JYf+T7bngHfU4/q
         ooYZnICxjN68BBJzQ080vH0lHAB7E7sgy9daP08GPLKL1HB/bPawLTlMsC82njcj2duN
         2qY2elby7BBmZ/rT7d1MD7YyLB8rRoaZoMWaKtKVEuChqoFJ6jY2/V9/7v0/Pn2ngeV1
         YWZ/aZdKZmS9K4ZqtTon3XeSvzrGrlKEBfkfHK+Wd9sJNO9Ouf1GBjN8QvnZNvAb7kEn
         2igA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hTuOst59UWVSvei6NRhR/t1mHEyAkuaRSFde7LO/URc=;
        b=Zl0ZkssVBCFTfwFkevJhumTB2IVwZK+8kn9rWmb1oyPGzCMiJIreJ01gQOFOU219tK
         q+dZzsdPnwE46BMzPf/nBiQgGfMzMNTtRfWF3dTD+wSRRH6qkqjrAxyHJ5R0LK+bIoYu
         IRN/dUeb0KmPzZssXU6D0f12+6fobSVXtYPcxCDYeYS/F47G5wmYuO/JTZWcG+r+4tDI
         GRgHvMnfTL3ZHvvNRBxM2jA40tll4xFLrkbp16R1JinKVJv+2/szADxtS90f/8MIqKUa
         y0EP/90QeGt6PP0zp67iahhbKbTYzEIxM3N1o5Ck+AJCTNIJJQyV44gKgyRzVPjfpJbP
         BvSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UBMOnbTbGsSbAKDZ0ypaHsUAeDJFwQu5duLBuLOax7tToli5N
	xY7ePc5ORpFb8yRnXgE/PY8=
X-Google-Smtp-Source: ABdhPJwROvaHctnRepXy0eVK/XxerzaH4P7mirOLJfbaiKGkJQZBG6hrHJ8TZqdSffFXy0fRdKn/ZQ==
X-Received: by 2002:a54:4017:: with SMTP id x23mr2237498oie.3.1614265687673;
        Thu, 25 Feb 2021 07:08:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:478e:: with SMTP id u136ls1522923oia.5.gmail; Thu, 25
 Feb 2021 07:08:07 -0800 (PST)
X-Received: by 2002:a05:6808:1442:: with SMTP id x2mr2193861oiv.74.1614265687309;
        Thu, 25 Feb 2021 07:08:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614265687; cv=none;
        d=google.com; s=arc-20160816;
        b=R46RiMIcv0vpbZ3yq8MeYBTniJB5gwNOHrij/NLqT6RgjgJKxKCky41y/Tb7mBYi+C
         6LJ5mJloIQlMfCD55aQ/HDIqLwTX2xkr3qnK1KecK/wUlFbpTQzh7EhxGL7caKSSAscy
         Ph7Dh0LwZxn9yQOdkzSaPMTUk1qsBhZWskLqzBkYAFGsP156VShV3/zHMQdgDAMBgF+I
         jNcJbeVRV/OeYhsq9HNzbzkLmwzD8+xtO6idBlz4cPf/vumlcb/FMAf+nj14Uad71cjF
         dKZ3gU2MwsPmAbWGIs9f7F00nIjhDSSPMgX9xnE67KloaVEKDQv6h6NBpqyk0lLFF8UP
         pfug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6UrzeK+Q4mNJHajpSxr2M4lP4DY2uGHYO42heAL2zG0=;
        b=yctEWEgwctETdpOGWAIC66xp8kn2Tm3IBCWMpLpMFRpAO8S5elSHgS29mr7Kr2IpB+
         afcHL6UnUTUJq5On+o3fkcOfBj5sEYBWUcbogVaA3BZQL2Rjz9oHeMg1niLN1WXbKoBO
         B9NDyeUmNvt13oPuqCciG72g4DxAk+psV3sunZL0FrcE3ke5pMakmuoJf6+eyz4+zLR6
         SQHt41wva0i2/66iEXUjFJSM/MnewnW3sghviopiGcPWSHj8SiM8CcTyZytl47ynwSvM
         3FcfTnDRQ4qjQkdrPA+skafIfSXQQjn4sLPMXXcnL6ilbiHpRxSDcGLlku9lyLDLVnPy
         FtyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=R2TgcnKq;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o21si432848otk.4.2021.02.25.07.08.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 07:08:07 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C375864F16;
	Thu, 25 Feb 2021 15:08:01 +0000 (UTC)
Date: Thu, 25 Feb 2021 17:07:57 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: David Hildenbrand <david@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Faiyaz Mohammed <faiyazm@codeaurora.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Aslan Bakirov <aslan@fb.com>, Linux-MM <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] memblock: fix section mismatch warning
Message-ID: <20210225150757.GK1447004@kernel.org>
References: <20210225133808.2188581-1-arnd@kernel.org>
 <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
 <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=R2TgcnKq;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 03:06:27PM +0100, Arnd Bergmann wrote:
> On Thu, Feb 25, 2021 at 2:47 PM David Hildenbrand <david@redhat.com> wrote:
> >
> > On 25.02.21 14:38, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > The inlining logic in clang-13 is rewritten to often not inline
> > > some functions that were inlined by all earlier compilers.
> > >
> > > In case of the memblock interfaces, this exposed a harmless bug
> > > of a missing __init annotation:
> > >
> > > WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
> > > The function memblock_bottom_up() references
> > > the variable __meminitdata memblock.
> > > This is often because memblock_bottom_up lacks a __meminitdata
> > > annotation or the annotation of memblock is wrong.
> > >
> > > Interestingly, these annotations were present originally, but got removed
> > > with the explanation that the __init annotation prevents the function
> > > from getting inlined. I checked this again and found that while this
> > > is the case with clang, gcc (version 7 through 10, did not test others)
> > > does inline the functions regardless.
> >
> > Did I understand correctly, that with this change it will not get
> > inlined with any version of clang? Maybe __always_inline is more
> > appropriate then.
> >
> > (I don't see why to not inline that function, but I am obviously not a
> > compiler person :) )
> 
> Looking at the assembler output in the arm64 build that triggered the
> warning, I see this code:

"push %rbp" seems more x86 for me, but that's not really important :)

I wonder what happens with other memblock inline APIs, particularly with
alloc wrappers. Do they still get inlined?

> 0000000000000a40 <memblock_bottom_up>:
>  a40:   55                      push   %rbp
>  a41:   48 89 e5                mov    %rsp,%rbp
>  a44:   41 56                   push   %r14
>  a46:   53                      push   %rbx
>  a47:   e8 00 00 00 00          call   a4c <memblock_bottom_up+0xc>
>                         a48: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>  a4c:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
>                         a4f: R_X86_64_32S       memblock
>  a53:   e8 00 00 00 00          call   a58 <memblock_bottom_up+0x18>
>                         a54: R_X86_64_PLT32     __asan_load1_noabort-0x4
>  a58:   44 0f b6 35 00 00 00    movzbl 0x0(%rip),%r14d        # a60
> <memblock_bottom_up+0x20>
>  a5f:   00
>                         a5c: R_X86_64_PC32      memblock-0x4
>  a60:   bf 02 00 00 00          mov    $0x2,%edi
>  a65:   44 89 f6                mov    %r14d,%esi
>  a68:   e8 00 00 00 00          call   a6d <memblock_bottom_up+0x2d>
>                         a69: R_X86_64_PLT32
> __sanitizer_cov_trace_const_cmp1-0x4
>  a6d:   41 83 fe 01             cmp    $0x1,%r14d
>  a71:   77 20                   ja     a93 <memblock_bottom_up+0x53>
>  a73:   e8 00 00 00 00          call   a78 <memblock_bottom_up+0x38>
>                         a74: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>  a78:   44 89 f3                mov    %r14d,%ebx
>  a7b:   80 e3 01                and    $0x1,%bl
>  a7e:   41 83 e6 01             and    $0x1,%r14d
>  a82:   31 ff                   xor    %edi,%edi
>  a84:   44 89 f6                mov    %r14d,%esi
>  a87:   e8 00 00 00 00          call   a8c <memblock_bottom_up+0x4c>
>                         a88: R_X86_64_PLT32
> __sanitizer_cov_trace_const_cmp1-0x4
>  a8c:   89 d8                   mov    %ebx,%eax
>  a8e:   5b                      pop    %rbx
>  a8f:   41 5e                   pop    %r14
>  a91:   5d                      pop    %rbp
>  a92:   c3                      ret
>  a93:   e8 00 00 00 00          call   a98 <memblock_bottom_up+0x58>
>                         a94: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>  a98:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
>                         a9b: R_X86_64_32S       .data+0x3c0
>  a9f:   4c 89 f6                mov    %r14,%rsi
>  aa2:   e8 00 00 00 00          call   aa7 <memblock_bottom_up+0x67>
>                         aa3: R_X86_64_PLT32
> __ubsan_handle_load_invalid_value-0x4
>  aa7:   eb cf                   jmp    a78 <memblock_bottom_up+0x38>
>  aa9:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
>  ab0:   00 00 00
>  ab3:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
>  aba:   00 00 00
>  abd:   0f 1f 00                nopl   (%rax)
> 
> This means that the sanitiers added a lot of extra checking around what
> would have been a trivial global variable access otherwise. In this case,
> not inlining would be a reasonable decision.
> 
>       Arnd

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225150757.GK1447004%40kernel.org.
