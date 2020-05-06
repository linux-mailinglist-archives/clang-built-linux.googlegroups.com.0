Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBFHCZP2QKGQER64FBKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8881C779B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 19:17:08 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id gj7sf1453156ejb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 10:17:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588785428; cv=pass;
        d=google.com; s=arc-20160816;
        b=N6X5IeNTNB9qB0WN2UjCdPtwgT0sb1hqyr0qk2ZIMYQSUPpgV6An1i2cuU36CCioLM
         CBERwMrCPo27G5Ne4H2rEoKjClnSYqhZUomIfkLxnP2Maxnfe1jXevcSRkPCpU9N6OMj
         VYr14v/mVDE4PK827bJzKXRnz7g5P1p1HGVKJ2wImPOOm6QI0MxtYBlFsFQ0wv/+WmVq
         yb0ZVgHzmIzkmKhYq4c2EOJ+boPuGSuSDOR2sOH7oEGDQiga8YGcuOJnksjwmkWe12z5
         2xX/nvrVTqdRPL7xuRAXeAfo31d47zL1cB2EMDGPYLkHhWl68JZcjXF9KERBaLrmuAHE
         lV3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=wZ5t7d859puvdiCCSSR69vOzqIPnPwcueO2JoD93V6E=;
        b=zIL2Z6w4ldPxUQ0buR5DDrTCvrPrDsCCAYLHTS2BBQrv2NekcUAjDiOGnIwNeEP4cL
         rzZVBkYyVFqVABx+fvL6sy3+bPDXhb4rXX+xweS4DAH4wM+LKeES+bN8kPsn4qx/jwzH
         opnTovEcvNLmvu0T7RoI/0VUw+QYvBrpv5nkZTLM7gBIKpCJ1SjgACxCGVkhdDmfuGax
         bVxneELlloPPIQRk68Ix9BUR/wzlbBBDuhvQTgQrUmvoA+t+7tbW8tZ56CQGQEmZcQWx
         wiuctHNEKp5rRtmEwNH873iWilQVEfUJtX+EX9dDMuTYucHblxeqOHWfBiVdas68hsZV
         dSmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="Bv/hOfS/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wZ5t7d859puvdiCCSSR69vOzqIPnPwcueO2JoD93V6E=;
        b=O49ilbeHBz3XQYIsrK3JR2p0T/neQj98UCL/+UDnHcaZ9qsap5In+hotS2fR//Smza
         wWn+LxVi0/ilCASyzDFubyH8hylBWT2Rzpva4fur+BzSiJxfgFgXuU0/kIg0oVFDA6jq
         VjiAr3sY7cR8FBr26v+uStZzKG6LsHg3nvIDvjmgOjK76g3um/9ppYYEhQzbU9F7u+r9
         vLoay61vwngpsNfbQp/mqBgUKuXEYt5yUKlKKVaPdA5bRfUTIekiAyT2pSp6LLuHvpuR
         3JPTy2kKTejvC2wj/QWNV0py/uPkEjToIxouPTJbETTQe8zpmwqrnrQEVRJviIjGoXNf
         S/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wZ5t7d859puvdiCCSSR69vOzqIPnPwcueO2JoD93V6E=;
        b=UCNvTA2nfyupsqlcv/2QgphUZ5bJVqSUMa3vk8kBYz443smefvOMUdLVhE7b1ozCi8
         NFRJJg5GyNmn3oqRimj/DSwdoGj4ghzW9/g13mPchFI04DIaWbqonNjhRFoS8XbbLpPj
         x76+65K/cCivCAPzbokHdoMmWRmOQd9QLoqhQOPF4T7yJLRMfBfDzRxHIwue34P6N79A
         /hedhbqn1lP+Ss7hClb99RWEL5sQk8j9OpKRPCVwHSgRsNeFYpjQwsZZ2o8XtyYlWC4D
         rkg5jiGPSN04OrBLBeLtHR8orm/bPjKxg8EUBmZFZCM04MTkics2QaYe7E0rccved/vU
         WArg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYebOqDHO+IpS/Ga8K5sJEt5nDgssxofFLBdw2NNXL05NuSwgPc
	6F189x8AdCZDt8l0HbfYack=
X-Google-Smtp-Source: APiQypIIBFhJiXY7YWpQ3aZR2G3QjeF84MCCmM4qV20YzYeNxRBcTEe6CXQ3/mKVhoxbiUj7OZWU0Q==
X-Received: by 2002:a05:6402:1841:: with SMTP id v1mr7758386edy.182.1588785428550;
        Wed, 06 May 2020 10:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ee14:: with SMTP id g20ls994204eds.10.gmail; Wed, 06 May
 2020 10:17:07 -0700 (PDT)
X-Received: by 2002:aa7:ce05:: with SMTP id d5mr8082924edv.120.1588785427897;
        Wed, 06 May 2020 10:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588785427; cv=none;
        d=google.com; s=arc-20160816;
        b=A+FE1ougPSP4WmhAMnxDNX55zj5eYJK7Kt44vHzDQeFwz/jOIiFm7wgeq1kw1ILvoR
         BDSfALc9oWWq02yxyI0seU/5C81azZJ4eNt6TQa4igBvwxfsoG3FjLbAzMGaX4K+GjbZ
         FrrjzCIaMLGBQCCtjDog8y8j3zPJeuoNQj7lFTt3Ndp+RTx2NhWvxDnb2P5UsEOsbnqW
         PadskbV+xxvzSYUZqkLyHuS7VAbpmMbhyekmTOKpzIfAPj+qHVZfs3Mb6wKr9ovT120h
         ZsWJUPyIeimf3Ig0aSbuoilqnuLWadg+YRJW1eFN2zeaAf/NSa8Y9td5esSpuOnZktYY
         ET9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=07w3M3fjX49pguIvUyZoChyUZSwRCf3IidBIG7ARz+M=;
        b=XGfI0qHsvUOPpKe4FXgNJAFat1ZvquQstyhliJIDWZtbrOwSeq/sB4mJrXyHQJJ2le
         nPJw/41KT+ihLYZazIUav72NmjapbqMjgrcAXQOUNRP7swr6rGpQMM3Ol6miQ0CGS3dH
         RnOEKrRxmyqN6A9sJx00HTkQrfAElHy8VhNleLL6yQeERKq7ToKObevNYJnKbXM4r9MI
         DjnxgQWtEnhRIBDmV70ZWYfhKz9d0gAiA/gnmYOBpoujQzUV8amKTZQwVRXrFRih3YgO
         MiL0FhCAtdugmF+yvNCo/flVhIXoCOvJLdY/LMPAGkKhKJxsStYGAWkEs6/5CDesi6OF
         oS9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="Bv/hOfS/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id v18si134545eju.1.2020.05.06.10.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 10:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id t11so2006066lfe.4
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 10:17:07 -0700 (PDT)
X-Received: by 2002:a05:6512:31c1:: with SMTP id j1mr6007106lfe.14.1588785425849;
        Wed, 06 May 2020 10:17:05 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id j29sm2267708lfp.90.2020.05.06.10.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 10:17:04 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id f11so3247947ljp.1
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 10:17:04 -0700 (PDT)
X-Received: by 2002:a2e:814e:: with SMTP id t14mr5608093ljg.204.1588785423772;
 Wed, 06 May 2020 10:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200501202849.647891881@infradead.org> <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk> <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk> <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net> <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <20200506135128.GR3762@hirez.programming.kicks-ass.net>
In-Reply-To: <20200506135128.GR3762@hirez.programming.kicks-ass.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 6 May 2020 10:16:47 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjdLY-E3m21_QcHUauakW3qAAOCe2rxzuFEm-Af_oqG0g@mail.gmail.com>
Message-ID: <CAHk-=wjdLY-E3m21_QcHUauakW3qAAOCe2rxzuFEm-Af_oqG0g@mail.gmail.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	"H.J. Lu" <hjl.tools@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="Bv/hOfS/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Wed, May 6, 2020 at 6:51 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> I was hoping for:
>
>         bar:                                    # @bar
>                 movl    %edi, .L_x$local(%rip)
>                 retq
>         ponies:                                 # @ponies
>                 movq    .Lfoo$local(%rip), %rax
>                 testq   %rax, %rax
>                 jz      1f
>                 jmpq    *%rcx                   # TAILCALL
>         1:
>                 retq

If you want to just avoid the 'cmov', the best way to do that is to
insert a barrier() on one side of the if-statement.

That breaks the ability to turn the conditional jump into a cmov.

HOWEVER.

It looks like noth clang and gcc will move the indirect jump to the
conditional sites, but then neither of them is smart enough to just
turn the indirect jump into one direct jump.

Strange. So you still get an indirect call for just the "ret" case.
The code looks actively stupid with

gcc:
  .L7:
        movl    $__static_call_nop, %eax
        jmp     *%rax

clang:
  .LBB1_1:
        mov     eax, offset __static_call_nop
        jmp     rax                     # TAILCALL

despite the barrier not being between those two points. The only
difference is the assembler syntax.

Odd. That's such a trivial and obvious optimization. But presumably
it's a pattern that just doesn't happen normally.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjdLY-E3m21_QcHUauakW3qAAOCe2rxzuFEm-Af_oqG0g%40mail.gmail.com.
