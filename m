Return-Path: <clang-built-linux+bncBAABB5W532AQMGQEUB2GU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBEB325132
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:06:47 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id a19sf2078794uak.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:06:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614262007; cv=pass;
        d=google.com; s=arc-20160816;
        b=hy+vRcVSGOJ/EODjJxoQHT3cRA4x/O7idQqg3d0Iu/RXLK4/sEfCSFgAt24QpGLDZ+
         vynDBGFxWVY5QfPGsi1aBmhyoT7gdMtyCoipRfOm9tQDI/MBnDuLIDGrJJAk/aapWLO0
         Zfrn6V2PNI/LMEgj28IAxKqnCE+8Iia0p3U655Dh6kfHMruG7jiXDICVggPujh1rIghF
         tcNtgZ4fLPBU17+vQWFRmVAPpsfu8fn4LKQuTLC0gTjqcABklkyoM/VYF5ayQxBzC/M1
         DpOT3er/4SB9K2m0XMqc1HFYf/mdCJA1LsaIJflBfJQaKcs9+CKcMDZp852gf4NhGE1O
         p4bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TTmOBghVQ3dlJsfQQKUtiprBgFq8ESUR2Ti90sCCx48=;
        b=PcrHY/Oalho7pU+MM/fyC6rTGmZ+No9JjT4k1A5NTmeLUAe8lGK6EHpeAdSxR+S7d/
         scJEUTO+FA8wlg8kOVYi8zcDXRW4UHDAx5jfCs727LPkjjw8J+Ayk8XWUYWL6nvrLmzF
         yyNHyTfAWNN8X2V00gUHSq1fgPC0CGWcbHTHRsrlkzQiWt5XzdH5MNtGZ+QtBSqP21mY
         nomxZnmk7T1Zz/CmAYh+XexUOS67uoFCbuFphM+YHTW0HXpvVSs45H60vZLoLJuaQmbM
         VxLRp+k0W+rZatBsxqwhxMbYdgPFSqCinU1CQlc9BymB6BoB676P9GbHKwjV26I8w7Tu
         +ccg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PGJl+jt4;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTmOBghVQ3dlJsfQQKUtiprBgFq8ESUR2Ti90sCCx48=;
        b=tgzS1frC/C8TOo5zDoVVJEnMJiG6jI7cOvchlpXoeSrHJxUQNHlCM38YC+4tUTzYB2
         LyPvKHhQjNtJknBbeFHbbR/XOSZ49b8VwRYz7jrq8PHvkMGt8ct1vFF3fEqXbaS7hat/
         /LJ8qaVSbpLDGGHCaHIM9aPp/GMiEFju/2HD6dFI8MsgyCx5R4KUOd/15XzGG2rt8vO2
         pDOTdHQWLZcHdKENo9xK7Ny+vKOIklSUkBddkowgVdZFlL5gGwZn0HxxLp17RD3ByfjC
         LschV9IGw7sA2D7WVzV8TBgeuuuQT++1dyxvD9sRFDOE2tnHeyfDZP7DYJ5aZC78woTH
         C3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTmOBghVQ3dlJsfQQKUtiprBgFq8ESUR2Ti90sCCx48=;
        b=l2XWuw5qlxTRYMN/iFmKE5icqcxOSXKhbEPrvy9vM9l8towMFMO1znWrKjlQH/cZHX
         HeO+oHFCnHDgd4Bjp0rgf9TlDwt0zobNSNB+umT1qJRzMkK7lqJ0Gy3qQfmV8VpOz+Uj
         xLWZlk4JhylsUOkeTqP/P3IlhGdv26SkmoTTefnNKeZD+xJuqbvm3iTs469ptpHdczVT
         q9VoasfNpd/mCIyeitIQK8dVIQotaZ5dLX1CjTWAmQB1SI5ePI56wa/rOGOkOgt2qvYt
         BYX0M8DQgwOb5GVd7SCcuPx9c3FCtczWBWCo/BcKYnHeX32IJ0z9Wp10jnOEqDIjwchC
         OhZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cKFv+nJ97015oi8jVNmG3y+4xJCqxFGpXXxedHsTo7S3DVWdO
	x+NK122J7W+ZVXQiDQlDgME=
X-Google-Smtp-Source: ABdhPJyRFSyRwdzeX3DQlwrXb6npzZOnpXIpf8S/8/5I0HjVvbeQmoNcwJNSuMKOU9pp1FAlPQ8Etg==
X-Received: by 2002:a05:6102:3110:: with SMTP id e16mr1472074vsh.12.1614262007045;
        Thu, 25 Feb 2021 06:06:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6c44:: with SMTP id q4ls423572uas.7.gmail; Thu, 25 Feb
 2021 06:06:46 -0800 (PST)
X-Received: by 2002:a9f:35a1:: with SMTP id t30mr1635928uad.106.1614262006468;
        Thu, 25 Feb 2021 06:06:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614262006; cv=none;
        d=google.com; s=arc-20160816;
        b=mohKRDujfe78J8r9e57ivFpEOQmX55BI4qV7kqDM55YhcJaXej4SSbTJp/JTn2A96B
         7g1gC7njF4/e8ZAYG3tOjK9GZgBcb6C6uCBnfiIjbd+Hj07uOXKOyRn+iIceRMZN3EXF
         mtRLPefS/LnhDb6qDV5qcWygbf+zf2hdwDFk2PY6ZXXK/nGLQqWevD4gF2SDb8Mmq6UF
         T1CRaf7kYb8l+u9Cp25DUcfNAgEnqxsAT3fojuARqzdFIo3YXUC5A5y9G8Zf+MvzqmSg
         TVXib6C9KlKq4FmQmRgLdtm5+Ip4uR+w2JljD8WMxMrKhYO4bcGI0d7I/QNDGVWp6HRY
         njNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YEHSNlDWYrGpw7P2M8YRAI0iFHHIdHOvmnen7XY1N20=;
        b=uv7b6du8+yDRhGs/06jRkfjemi7MXcfFqLv5u6XtEt3cjyAdd+UN8uDqiWduqI+SJ2
         DZTZdLyTPHfnA1SHH/E7F9U8YuvaZd3jqi8gaSWDjPnGX2G5VoDAfuYSDEYyJD9bXY0X
         N0z6v8mfC5OhZZFI7QpV6vlKLmJXnznmtihHPoa9UIBlUKXFf8VqEuh4Q4FllsKA1XO7
         RsCol86axxZFGPWvGnNiFSIBMGvkLpSYnNVvJ2pXRRyvhLa73iI2HxumOVygBc6Zynnd
         gVNoMF0M8aW3DRCt+CEljB2fG7lIIoPhMVxKQ6BIX+x0/pZAycbLTDWsQWtSY6BHt+Am
         bSeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PGJl+jt4;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si264874vsc.0.2021.02.25.06.06.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:06:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1DF5464F17
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 14:06:45 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id g8so2108679otk.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 06:06:45 -0800 (PST)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr2415875otq.210.1614262004172;
 Thu, 25 Feb 2021 06:06:44 -0800 (PST)
MIME-Version: 1.0
References: <20210225133808.2188581-1-arnd@kernel.org> <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
In-Reply-To: <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 15:06:27 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
Message-ID: <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
Subject: Re: [PATCH] memblock: fix section mismatch warning
To: David Hildenbrand <david@redhat.com>
Cc: Mike Rapoport <rppt@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Faiyaz Mohammed <faiyazm@codeaurora.org>, 
	Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Aslan Bakirov <aslan@fb.com>, Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PGJl+jt4;       spf=pass
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

On Thu, Feb 25, 2021 at 2:47 PM David Hildenbrand <david@redhat.com> wrote:
>
> On 25.02.21 14:38, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > The inlining logic in clang-13 is rewritten to often not inline
> > some functions that were inlined by all earlier compilers.
> >
> > In case of the memblock interfaces, this exposed a harmless bug
> > of a missing __init annotation:
> >
> > WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
> > The function memblock_bottom_up() references
> > the variable __meminitdata memblock.
> > This is often because memblock_bottom_up lacks a __meminitdata
> > annotation or the annotation of memblock is wrong.
> >
> > Interestingly, these annotations were present originally, but got removed
> > with the explanation that the __init annotation prevents the function
> > from getting inlined. I checked this again and found that while this
> > is the case with clang, gcc (version 7 through 10, did not test others)
> > does inline the functions regardless.
>
> Did I understand correctly, that with this change it will not get
> inlined with any version of clang? Maybe __always_inline is more
> appropriate then.
>
> (I don't see why to not inline that function, but I am obviously not a
> compiler person :) )

Looking at the assembler output in the arm64 build that triggered the
warning, I see this code:

0000000000000a40 <memblock_bottom_up>:
 a40:   55                      push   %rbp
 a41:   48 89 e5                mov    %rsp,%rbp
 a44:   41 56                   push   %r14
 a46:   53                      push   %rbx
 a47:   e8 00 00 00 00          call   a4c <memblock_bottom_up+0xc>
                        a48: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
 a4c:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
                        a4f: R_X86_64_32S       memblock
 a53:   e8 00 00 00 00          call   a58 <memblock_bottom_up+0x18>
                        a54: R_X86_64_PLT32     __asan_load1_noabort-0x4
 a58:   44 0f b6 35 00 00 00    movzbl 0x0(%rip),%r14d        # a60
<memblock_bottom_up+0x20>
 a5f:   00
                        a5c: R_X86_64_PC32      memblock-0x4
 a60:   bf 02 00 00 00          mov    $0x2,%edi
 a65:   44 89 f6                mov    %r14d,%esi
 a68:   e8 00 00 00 00          call   a6d <memblock_bottom_up+0x2d>
                        a69: R_X86_64_PLT32
__sanitizer_cov_trace_const_cmp1-0x4
 a6d:   41 83 fe 01             cmp    $0x1,%r14d
 a71:   77 20                   ja     a93 <memblock_bottom_up+0x53>
 a73:   e8 00 00 00 00          call   a78 <memblock_bottom_up+0x38>
                        a74: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
 a78:   44 89 f3                mov    %r14d,%ebx
 a7b:   80 e3 01                and    $0x1,%bl
 a7e:   41 83 e6 01             and    $0x1,%r14d
 a82:   31 ff                   xor    %edi,%edi
 a84:   44 89 f6                mov    %r14d,%esi
 a87:   e8 00 00 00 00          call   a8c <memblock_bottom_up+0x4c>
                        a88: R_X86_64_PLT32
__sanitizer_cov_trace_const_cmp1-0x4
 a8c:   89 d8                   mov    %ebx,%eax
 a8e:   5b                      pop    %rbx
 a8f:   41 5e                   pop    %r14
 a91:   5d                      pop    %rbp
 a92:   c3                      ret
 a93:   e8 00 00 00 00          call   a98 <memblock_bottom_up+0x58>
                        a94: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
 a98:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
                        a9b: R_X86_64_32S       .data+0x3c0
 a9f:   4c 89 f6                mov    %r14,%rsi
 aa2:   e8 00 00 00 00          call   aa7 <memblock_bottom_up+0x67>
                        aa3: R_X86_64_PLT32
__ubsan_handle_load_invalid_value-0x4
 aa7:   eb cf                   jmp    a78 <memblock_bottom_up+0x38>
 aa9:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
 ab0:   00 00 00
 ab3:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
 aba:   00 00 00
 abd:   0f 1f 00                nopl   (%rax)

This means that the sanitiers added a lot of extra checking around what
would have been a trivial global variable access otherwise. In this case,
not inlining would be a reasonable decision.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0W5F14uW%2B0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA%40mail.gmail.com.
