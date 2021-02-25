Return-Path: <clang-built-linux+bncBC32535MUICBBLPW32AQMGQET7PBWVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE7D3251CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:58:54 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id g17sf6399326ybh.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:58:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614265133; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBgZkvliDQGeTmR+rhM1kOxYRh4/NHFSzt9pJLBQhWkgBhcz//axYcJQ8+yUXZgFR1
         WQM8KwOvPEINg2d5/mjRPVaEfhP36Y+czkeopeNN2Q/K+Bnv60cY7Y7WovS0MgCKKpwW
         bEbcXRmoMJ5dWo8Kon+k8SfGrnwgwtZOKfza1zYLQM0q4rB8LWS5+R+3KXtSBf804FkD
         fmMlfyjOx83KkVtmNLHMaNjvtpzsMRw7KBnU/xAwyEYxZn758BBihg9UuA0NfRgH/4o7
         /xPm6ySKz7m8eJpP/4rYqCjJeP2zUiUX8M2uIkiDVeNY/sLhu9plt0PO5t83JU4urYwb
         ZnTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=v7tUGFKf3Ddiwz2QWlqiOskw/D4dCEVgAgKpEZSEOSs=;
        b=ob4jRuBlILInmOmT9HqplsxsmYXMJpOhbKi1tDll+lBnGM1VsDpmRgVlwRmZppO/G/
         speRJeyaTyqNrbzQZj7r4DtoTNRxm4bgxGClwJ0DVRemjysXqlJ7U4zEwbWSd0rOb2+R
         ghc5+NJFkgv8pgWxLteVtjWeThgDbWHksxm3LakOHGr8B3QR8CGF8QAGpWHiug/Cw/T1
         7Aw2ab4XZRhboUVSgtjuXrSiv3k5zkHmTMB/9FSDMwD+05E+gjw6V7zNAGlQYiE2JULf
         /Ztt6dP39m/5kaTl52xMKs9oBv6iVeLSLoHGWcKsyovP6IwBOMx2iK+3J1b8BoNfQsz1
         dp9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FizIyTj2;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7tUGFKf3Ddiwz2QWlqiOskw/D4dCEVgAgKpEZSEOSs=;
        b=ShpZRrjLhMYiOvlgLmJQgkT+Qq4isOWXj76FUun6AGkg8kZIRk4PI6HmA95jL337I4
         LscMc7GdoesNh1sIKblUZFv4gHwdmR66HQZDalHZkYLG9voFTexuYA24J+PMByaVbtO4
         pFSt1oRIaxnr/6UpYizfWriQVsPqET3ZeSj6955Ns+MJ2LBIBBONrcOzcbdLTHuY9Qcx
         Vi7hjXTSzh6m+fCfb/K1kBLpzgTqBpoC/yTP+K5T/7Ssk+UCiwgwup0ePwu0rSVZOAad
         QG75WVobwnakNl7xUtdlWYOSAVOIZlGOav+vujXzZZjXBeWt18G43j8QcSioWaoCQ1Li
         4dVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v7tUGFKf3Ddiwz2QWlqiOskw/D4dCEVgAgKpEZSEOSs=;
        b=T3/5X7JBEiDZAknLj9ObBATWBf4sYBPO1WMIbJcF2Xtl2KfZ6OYfpoAoK2utQOkLZi
         hnuGJwDsqaKNfOexg2ao7W4xgZ8YoMT6U4ifNYjgfJhl/q1WrZ06znLuDME3r4npV5eK
         sQEDgA1UPf4/2TzfYFDbuTa3h5fQMrT2sppDPE1MMYuJQibnW7m5kfHDGadMtR315UT6
         3b8jTzv2DuxG1iC2zIJwvdSr1y3/DnAmcUz50sFywhrTCYzUhtw1evPdikDAJmCleNVF
         rz/5j7laroDpYhaqMk5v+tcjaritH9996M9vM8wUfplc6MsH95zzybp3mwPjp6+8dzP8
         mVbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QkLGXYPxxTKtBMfncWlp7RoXuo0LihvkbAShKiyGROjnnJnso
	zE0yUS3t2GLuTw0jooT3AHc=
X-Google-Smtp-Source: ABdhPJyLL9olAKlDai33wFLS+tJbvqDClbGdnYx+N925LZfeIHqqPUrtkee+E9HBpTIOUa2nAUFsjQ==
X-Received: by 2002:a25:2b88:: with SMTP id r130mr4508737ybr.460.1614265133694;
        Thu, 25 Feb 2021 06:58:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls2729361ybg.3.gmail; Thu, 25 Feb
 2021 06:58:53 -0800 (PST)
X-Received: by 2002:a25:d251:: with SMTP id j78mr4202487ybg.480.1614265133239;
        Thu, 25 Feb 2021 06:58:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614265133; cv=none;
        d=google.com; s=arc-20160816;
        b=Qg/7inak/PZCZfMcsoJQgvKgNIa180r8mtgmGLy4dSVJJpTP8PzCK211cHFFnEIfhf
         DGj384k34ywvkOOPnQIspZx2dQ/sGT2CuZrM5TGuBXFg2rFjgBMzHm6gf96gkq4uWlgD
         8yj0oiVpp/HPDEgG03LDMuHcU6TfPQFxDwhCeJw1Awx3p3LKasf1yfcn/mcpGmP0NiiV
         5/pZOGGj1aVCcYMyO3c/1S3W7VQVJF1FjVmvEBJW/y9zWUlu1NDeLfxV8Iaxi6OuYcRl
         4Wk0bTiKwU2rsQbolrdsFeF87KK+uuabALBQ9gmJ+FuZqgD8VZ+Vnwpy308LQj34hSa7
         VCkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=8bvA3joDxtGwPdmhV+qc0G7SWpdH/9IEUumaO+ZmZvA=;
        b=mbzPQsQANyBMV7IB/LplQEwZm4b0TIg1v5v/XqoMZFqTg5K18A145Ih9hoAGt/D6RG
         TLiWZLFvBmfHfuldETpkxt3e/Smb9UL9sCCnzKd5xrfrdWk5ZJzYO1lLXC7dtkrtbY2V
         xf9GOLGzJVKdS2kPLY+7WgmBdAu4AESRt5NRlZCOLNxMQ6UXHa3NEnfDZorjGHnqQof3
         tiR3xBmh8CE5jxjwvReDZNnrT1n0QqOjzHa+rjHKZcgoHC+bEvrIIKi3JMVyyjDvf5xK
         lxr5w3IBd4s4LJVW+z9NUUcbpTreodJaXBp9fxeQMhBJP4GOQ+Fn1Z7esURY3eSGYY3o
         Mi8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FizIyTj2;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id c10si406436ybf.1.2021.02.25.06.58.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:58:53 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-lb9ELSTvP6yQZUv6UXS15w-1; Thu, 25 Feb 2021 09:58:48 -0500
X-MC-Unique: lb9ELSTvP6yQZUv6UXS15w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AE33107ACF3;
	Thu, 25 Feb 2021 14:58:46 +0000 (UTC)
Received: from [10.36.114.58] (ovpn-114-58.ams2.redhat.com [10.36.114.58])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E14DE1346D;
	Thu, 25 Feb 2021 14:58:43 +0000 (UTC)
Subject: Re: [PATCH] memblock: fix section mismatch warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mike Rapoport <rppt@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Faiyaz Mohammed <faiyazm@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Baoquan He <bhe@redhat.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Aslan Bakirov
 <aslan@fb.com>, Linux-MM <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210225133808.2188581-1-arnd@kernel.org>
 <60989b76-1ae6-6be3-0277-df9f0cc8dc3e@redhat.com>
 <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <269fdc41-3ac8-8919-1330-d87b32689e89@redhat.com>
Date: Thu, 25 Feb 2021 15:58:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0W5F14uW+0jqkNAxcXfODhK9_1L-DXnC_h2yrev13aAA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FizIyTj2;
       spf=pass (google.com: domain of david@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 25.02.21 15:06, Arnd Bergmann wrote:
> On Thu, Feb 25, 2021 at 2:47 PM David Hildenbrand <david@redhat.com> wrote:
>>
>> On 25.02.21 14:38, Arnd Bergmann wrote:
>>> From: Arnd Bergmann <arnd@arndb.de>
>>>
>>> The inlining logic in clang-13 is rewritten to often not inline
>>> some functions that were inlined by all earlier compilers.
>>>
>>> In case of the memblock interfaces, this exposed a harmless bug
>>> of a missing __init annotation:
>>>
>>> WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
>>> The function memblock_bottom_up() references
>>> the variable __meminitdata memblock.
>>> This is often because memblock_bottom_up lacks a __meminitdata
>>> annotation or the annotation of memblock is wrong.
>>>
>>> Interestingly, these annotations were present originally, but got removed
>>> with the explanation that the __init annotation prevents the function
>>> from getting inlined. I checked this again and found that while this
>>> is the case with clang, gcc (version 7 through 10, did not test others)
>>> does inline the functions regardless.
>>
>> Did I understand correctly, that with this change it will not get
>> inlined with any version of clang? Maybe __always_inline is more
>> appropriate then.
>>
>> (I don't see why to not inline that function, but I am obviously not a
>> compiler person :) )
> 
> Looking at the assembler output in the arm64 build that triggered the
> warning, I see this code:
> 
> 0000000000000a40 <memblock_bottom_up>:
>   a40:   55                      push   %rbp
>   a41:   48 89 e5                mov    %rsp,%rbp
>   a44:   41 56                   push   %r14
>   a46:   53                      push   %rbx
>   a47:   e8 00 00 00 00          call   a4c <memblock_bottom_up+0xc>
>                          a48: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>   a4c:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
>                          a4f: R_X86_64_32S       memblock
>   a53:   e8 00 00 00 00          call   a58 <memblock_bottom_up+0x18>
>                          a54: R_X86_64_PLT32     __asan_load1_noabort-0x4
>   a58:   44 0f b6 35 00 00 00    movzbl 0x0(%rip),%r14d        # a60
> <memblock_bottom_up+0x20>
>   a5f:   00
>                          a5c: R_X86_64_PC32      memblock-0x4
>   a60:   bf 02 00 00 00          mov    $0x2,%edi
>   a65:   44 89 f6                mov    %r14d,%esi
>   a68:   e8 00 00 00 00          call   a6d <memblock_bottom_up+0x2d>
>                          a69: R_X86_64_PLT32
> __sanitizer_cov_trace_const_cmp1-0x4
>   a6d:   41 83 fe 01             cmp    $0x1,%r14d
>   a71:   77 20                   ja     a93 <memblock_bottom_up+0x53>
>   a73:   e8 00 00 00 00          call   a78 <memblock_bottom_up+0x38>
>                          a74: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>   a78:   44 89 f3                mov    %r14d,%ebx
>   a7b:   80 e3 01                and    $0x1,%bl
>   a7e:   41 83 e6 01             and    $0x1,%r14d
>   a82:   31 ff                   xor    %edi,%edi
>   a84:   44 89 f6                mov    %r14d,%esi
>   a87:   e8 00 00 00 00          call   a8c <memblock_bottom_up+0x4c>
>                          a88: R_X86_64_PLT32
> __sanitizer_cov_trace_const_cmp1-0x4
>   a8c:   89 d8                   mov    %ebx,%eax
>   a8e:   5b                      pop    %rbx
>   a8f:   41 5e                   pop    %r14
>   a91:   5d                      pop    %rbp
>   a92:   c3                      ret
>   a93:   e8 00 00 00 00          call   a98 <memblock_bottom_up+0x58>
>                          a94: R_X86_64_PLT32     __sanitizer_cov_trace_pc-0x4
>   a98:   48 c7 c7 00 00 00 00    mov    $0x0,%rdi
>                          a9b: R_X86_64_32S       .data+0x3c0
>   a9f:   4c 89 f6                mov    %r14,%rsi
>   aa2:   e8 00 00 00 00          call   aa7 <memblock_bottom_up+0x67>
>                          aa3: R_X86_64_PLT32
> __ubsan_handle_load_invalid_value-0x4
>   aa7:   eb cf                   jmp    a78 <memblock_bottom_up+0x38>
>   aa9:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
>   ab0:   00 00 00
>   ab3:   66 2e 0f 1f 84 00 00    cs nopw 0x0(%rax,%rax,1)
>   aba:   00 00 00
>   abd:   0f 1f 00                nopl   (%rax)
> 
> This means that the sanitiers added a lot of extra checking around what
> would have been a trivial global variable access otherwise. In this case,
> not inlining would be a reasonable decision.

It's not like if there are a lot of call sites:

  $ git grep memblock_bottom_up
arch/x86/mm/init.c:     if (memblock_bottom_up()) {
include/linux/memblock.h:static inline bool memblock_bottom_up(void)
mm/cma.c:               if (!memblock_bottom_up() && memblock_end >= SZ_4G + size) {
mm/memblock.c:  if (memblock_bottom_up())


Similarly for memblock_set_bottom_up() within a kernel image.

But it's not like this is performance-sensitive code :)

Thanks!

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/269fdc41-3ac8-8919-1330-d87b32689e89%40redhat.com.
