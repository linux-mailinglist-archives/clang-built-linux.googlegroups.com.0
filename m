Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJXV4PZQKGQEPVUSMWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CB218FC46
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 19:06:31 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id z18sf1957174vsz.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:06:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584986790; cv=pass;
        d=google.com; s=arc-20160816;
        b=uYFoaQg93id0Bjtf44lN0oUKNk3NMhG0pK/hdOB+Eh94oyhhNsAOtQl3l/KK7s1RBH
         xeLZRBWD3m+My3iWHglnwOOKIO3wR7u4qJ90a6+5csL9MWsiulrJPgVXvxpBvzOFMvuj
         rgZ8Vio7yL62wyplsGaMYN2EXjEylmffQ/cSJHN5C+K32fI50NZJTX0YvIVrRX6KFFpB
         rVhXT1VTnIOQWPnXDskGdoszl2jUi10wpdvy8SEzsz9a4TJDy3JYGoUpOTuMF6Evwqmc
         umIbHQ8xE4JpjXyP5QeH+30eunrHR9nBFk66qtPtoVKOh4kRVqFCgWUXkX7G6U5bgfBr
         DkRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4NhOIivdJHGKd08M5gqbC3vcbA5SLW+3Gn9d8/ZlN9g=;
        b=TBA+qAwHa3K+/TE+zJMaXKDhk9yyOluqidJJS2cEAeWZTH2UUAznh9mphydjWlTdo7
         N1e6OzxRtgoV9xnJjau9jkTIkpX1X3orh9ZlALLH9FAGKmZKexjl/bm2ybjvENVXglpu
         DMbAlK9kAmrqRZbADWAGwTx2Q/aMe30qg4cYd/oPpGUycBMaTR8lUeGE5G0m+yM2OJHO
         ELvgxkGp3TV0QfBfRSI8zXKeVWFDYQbBF7vnsdo424C2hvxjHPf6w9uaV00B3Gd/0taT
         TbJI7LlCeXmWNwz1XiiR7XCTGfn74Cfb6pY94i8tyi3FoCOMhy/EYJIAY95gQ5vih+OK
         C/ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="agTtoD7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NhOIivdJHGKd08M5gqbC3vcbA5SLW+3Gn9d8/ZlN9g=;
        b=sqm0WriNg4i7e80QQuFBiNiDozm+Nr2mrg4FOjo5i4eb28ZViDpDVdMF6+zMs+n9zM
         aGzx9IiVrmhgeuzFreLM+3+/t8ihaWtUtIHh3xGx4SgDra8XNann/MTXQCc3yYhfyOjH
         WUtG2S15hCOaUZnFbFPXxvHprd1Oi2LRLLkp0SbaF5CdV1dJqdJPspr3SkzAah9tHsDi
         J4I+K3PvWCAMbCgNn3J6XRsQi2uopU0oeTwZi+vSOHHGjAEzyGq7nT7VP11zIQlGCP2o
         frsBEydVqZX8sVjmsh/1KBQGv7Z6vMO+YPK/YBUVguYIrvFef9rsupfYXnRfNZQH96nV
         McpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NhOIivdJHGKd08M5gqbC3vcbA5SLW+3Gn9d8/ZlN9g=;
        b=fbV763mC6GFAJctmwb9adsGLDX6Ewgu0AEviyH5GbKyQIEqxq6xfMf/MtYxtFBEVds
         qF6Jzh5/me3qFKWilV8CxiuDe5iA1BHAWRfVwWbYL4WnGbiOh99tq+smY8gGczGfX2A/
         4PRBryPpA7o2GhjeQ5x8F2xuwkxSip81d9AEme13aQejvDtRKynn9EZ68lMeryMuPXXc
         ab5UY6LngJ51PmGYWCoZJ/Y8h/95Hm7NyvVsyTxYafUt6cyk36X41jGMLEJzQDNG2sAq
         Z8QA2bOJ7+NFWFgG2rUB08OwHppcFYJMTzJ4u4ushIwNGoJUB8Qp06qQvnd6EUJWgB+C
         vbBg==
X-Gm-Message-State: ANhLgQ224fp5MDPqQ+CmNYzXRAK1uzqHy85hsXWqXjzvOeRlzUP5UbbK
	Qweo8rBQ0U2M0kSviOxGXuw=
X-Google-Smtp-Source: ADFU+vt8Xubk8LhaxZtHtqdE4U0e9PAQvoG6vVZWWluJezLHpLSBC8y5esSgFAxwwHXGrhm6ipie/A==
X-Received: by 2002:a67:8a88:: with SMTP id m130mr11391579vsd.70.1584986790568;
        Mon, 23 Mar 2020 11:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls1896483vsi.6.gmail; Mon, 23 Mar
 2020 11:06:30 -0700 (PDT)
X-Received: by 2002:a67:c01e:: with SMTP id v30mr17376513vsi.71.1584986790027;
        Mon, 23 Mar 2020 11:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584986790; cv=none;
        d=google.com; s=arc-20160816;
        b=UD4XUPHIwFU+l5pIK5XCp15GHfZhaoms3dOzM3HeULZRd4OVY5ZX7105sqvIZ23/6E
         aG8xgwsMF2atwR7jRhywAft62I/X0YuMGB/u3iUUf4U7AIvf2gEXhM8bbIyGgEE+XT4i
         qbgn/TQ58l23q58bTdv+ajpvDhZzhbF9cE/jzOyqdxu1pxZ3ImpJPkLQoHkqFV6PTzZd
         w5G8+McXuv79LWgJUqAmsgUoxojGRmH+/fCH3S5JTeHQK1ml5jjbPb9QL3XCNdc29CKg
         vYpAFFOVrN2H7guq+sUtIet153dXZniDWmScKVKkLM2jUrCLAdrF5R9DSm1qgZs/Oxtw
         ysrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KXLJ6VFfxrFZrwSfkhbx8s/k+sv6GEa0mybadcnXPi4=;
        b=FPxIgnTcs2h78iLA5bb1Q4BGvQnfk+sllDRcuqEsMaKRduvrC5bkYBZ4eh3lJcyzpe
         xMrkYoP/75/H37YeHkFvdVdO47lXrVdWbW3Ga/66JD9pVNnqrjyAyagU55QRpXXazH/I
         XMIaSuoYysRRESpStZ2lQefaQHUwseVWmV9F0MWII7JIafcpAqTQBOFdfIpW+Pe6w7Iw
         xl4TACm6P07XKvYo8sLf1hqVk2iw+pKsooQR5PFJ8uWm53hm3N5c73Ldwxlj8yQHA6Dk
         UkOzK5p8LARS5W1rWRiDa2k7hHE1jDkw24qh79DTDWt+qvdUxqu7FLNljACJ9zyfRoXL
         vM/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="agTtoD7/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id t191si766376vkt.0.2020.03.23.11.06.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 11:06:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id d25so7846121pfn.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 11:06:29 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr23785364pgb.263.1584986788735;
 Mon, 23 Mar 2020 11:06:28 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com> <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
In-Reply-To: <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 11:06:16 -0700
Message-ID: <CAKwvOdkfaSeXV5zd2unGAtPdzmS9N1Z7kSUB0g13aGHDg9fc8w@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, 
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Sean Christopherson <sean.j.christopherson@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="agTtoD7/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Mar 23, 2020 at 10:55 AM Alexander Potapenko <glider@google.com> wrote:
>
> I've reduced the faulty test case to the following code:
>
> =================================
> a;
> long b;
> register unsigned long current_stack_pointer asm("rsp");
> handle_external_interrupt_irqoff() {
>   asm("and $0xfffffffffffffff0, %%rsp\n\tpush $%c[ss]\n\tpush "
>       "%[sp]\n\tpushf\n\tpushq $%c[cs]\n\tcall *%[thunk_target]\n"
>       : [ sp ] "=&r"(b), "+r" (current_stack_pointer)
>       : [ thunk_target ] "rm"(a), [ ss ] "i"(3 * 8), [ cs ] "i"(2 * 8) );
> }
> =================================
> (in fact creduce even throws away current_stack_pointer, but we
> probably want to keep it to prove the point).
>
> Clang generates the following code for it:
>
> $ clang vmx.i -O2 -c -w -o vmx.o
> $ objdump -d vmx.o
> ...
> 0000000000000000 <handle_external_interrupt_irqoff>:
>    0: 8b 05 00 00 00 00    mov    0x0(%rip),%eax        # 6
> <handle_external_interrupt_irqoff+0x6>
>    6: 89 44 24 fc          mov    %eax,-0x4(%rsp)
>    a: 48 83 e4 f0          and    $0xfffffffffffffff0,%rsp
>    e: 6a 18                pushq  $0x18
>   10: 50                    push   %rax
>   11: 9c                    pushfq
>   12: 6a 10                pushq  $0x10
>   14: ff 54 24 fc          callq  *-0x4(%rsp)
>   18: 48 89 05 00 00 00 00 mov    %rax,0x0(%rip)        # 1f
> <handle_external_interrupt_irqoff+0x1f>
>   1f: c3                    retq
>
> The question is whether using current_stack_pointer as an output is
> actually a valid way to tell the compiler it should not clobber RSP.
> Intuitively it is, but explicitly adding RSP to the clobber list
> sounds a bit more bulletproof.

Ok, I think this reproducer demonstrates the issue:
https://godbolt.org/z/jAafjz
I *think* what's happening is that we're not specifying correctly that
the stack is being modified by inline asm, so using variable
references against the stack pointer is not correct.

commit f5caf621ee357 ("x86/asm: Fix inline asm call constraints for Clang")
has more context about ASM_CALL_CONSTRAINT.

It seems that specifying "rsp" in the clobber list is a -Wdeprecated
warning in GCC, and an error in Clang (unless you remove
current_stack_pointer as an output, but will get Clang to produce the
correct code).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkfaSeXV5zd2unGAtPdzmS9N1Z7kSUB0g13aGHDg9fc8w%40mail.gmail.com.
