Return-Path: <clang-built-linux+bncBCMIZB7QWENRBW4XST3QKGQEMSCF4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D64E1F8469
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 19:24:45 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z187sf6913717pgd.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 10:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592069083; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9k5zXFH3bGjtQTKmhpkwnnEU+J6vMN+dYNn9geaUWSIfrxMQgPgPlk+movWWz33UD
         cnsonKRTg0zHSdGvGbrhPW1DGRVufPP++zHjzlPEJ/S7yLCQA7YRHZKWfUFlI8ECmSeh
         O2W26X9SedPfQ1ZNFnBGkFTu8Qkbb4t+3Iu0fc1vG3xOMIH3H10zrgB6Nx04Umi0FdjU
         CmrGsGhcj0OyTdUvtEyYRR1vr8sJGziOD7R2yQ6LyEKtEtz8AnNAG6pmJhCS4Gyu+X3M
         x35XEtqAlfUy4VioGIh6csCt86CawBVnYjrGEcEWXQdYMeU872T6IIaf9LAkmAjJLcZp
         lPcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=taQsUzv8ioj2esHugMjHYIM41KAeBNDBUlFSv11k8hk=;
        b=ATuPzORFTXZWQj4Hrz4eQf8fsPZFDtUI2T38ZW9Yj8z8Ff4/b2t669JvtYgFHQHQKQ
         yZe/YRUumHcW3oQhnrJ+gOGq583YSyO0y3DZuN9+oKsPhTJjNf+BTPvpxWKeZrcJ+MKj
         P301kclYeliNbsYavmS8bMR3ZWPlWrWzhP4gnjrg4xIekamyFLzpFEYg5dykcLsFuMId
         GYenNDkzDNhRGn74gz0NarSAjdtK4Gia98nj5KAJS4OCiZfBbF2/Vota67lYIDYx1sbL
         Nt9ux1aewkTdypTc7wBC+LgimVhPpD2RTPyvqPisA0XM6Mvk+rtukegovAuS3pbwIq9r
         OWZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=my06dzPh;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taQsUzv8ioj2esHugMjHYIM41KAeBNDBUlFSv11k8hk=;
        b=WG4g9Uv8+wMUIkFvhxPN7VbxTq86J+fNcYA4RMADVyEtKfZqLjcrUiCFcykDBSj5kG
         C9YlqCN1OyY/hfdPuvaf+LIjYTfjroaFQFsTv5Jdywh9SwaWKGa5VEPHUBQFJ4HZvuyG
         vOydtcETtMj7AwyC9Wn93zw7DchODoyOsB7eEvYuP9YLpIsNSkdZGotYaEybe6MrgxFX
         z0ETnWJLgmbDOA1uIazv1WnCvXZVONXSJm7hWlI1V0x4MZn5a9zFn2B73N5f21HMs+Fz
         Xo2vs8sPbzLm5vXvxKUIsy/Vg+NwOFxpxt9bZvN6n/3kek1bVZ6VvkwRLYZ27EItiNbd
         BWxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=taQsUzv8ioj2esHugMjHYIM41KAeBNDBUlFSv11k8hk=;
        b=WsdhgykcjBeaH68fVneuHwr00mcU6bRPER5KCdA9fUXVdECoM+ywKXQa2Y6A3coYxq
         SDdKi4Mxjz78QrPlPOMzQ0dwptUVp6aS1K07OS4Boq2GOGXrWXCyitSDrL18qkeszAm7
         FxspMUp+xC7ZCrF9RPtEKPNOsHWgHDwFK8QgiZSI9YIkSdk5WpAdKbemFXB7DEanbeiX
         IjwkbCQJj2+apnhDNyy7WTEKdJsNj8mjgqnbxDW89P5tOAimHfbmUKIDqR3JicdkS5a4
         61OXw5x9uLn9vf/WW1M9/SHM41nVykK//3YEJYqWCWWrsMWrXRK26MIi4hIpb6cXpN/P
         wcDw==
X-Gm-Message-State: AOAM533VlsobyMwwkRG2uACsYC85NkxiLUlh2WLLwRqeP4TWIqYcGuWG
	t4NvsedQ7W0PWS0DIjPSKco=
X-Google-Smtp-Source: ABdhPJxqDC4DRHklltV+3xmtRGv7IyweSbFEH65W2c2RiAipJ9M0AkX7Dc/VqVHtsMqABofd6SHKgQ==
X-Received: by 2002:a17:90b:4c12:: with SMTP id na18mr1447704pjb.0.1592069083673;
        Sat, 13 Jun 2020 10:24:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c910:: with SMTP id o16ls2302099pgg.4.gmail; Sat, 13 Jun
 2020 10:24:43 -0700 (PDT)
X-Received: by 2002:a63:5307:: with SMTP id h7mr15528877pgb.28.1592069083199;
        Sat, 13 Jun 2020 10:24:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592069083; cv=none;
        d=google.com; s=arc-20160816;
        b=M0lCfrtln+DVJs+mLzn354FrCzYtW6tXhkUxg6X47C2gMTnAZN4kMXcEtEs6FZVl5x
         rEVeIkICEVrxOnla7/Bj4lftbWZDO5BrnE1e8QTMrjS7J1g6TEaQsD2qSf2AbUTYQR+n
         NPbzWF5JbuGaM2VUe3NJAbk/0K0pGHzftiQ8CQIlA7o/P7c6Bwk1Bm/q/y+LTFDdNBCx
         nqn/khajUkDRg4bghNDPDNJYDjmo/SGwXnCXw8tg9lcyUqcVcmpAqesv3/gYdY8Wnf0g
         uiLjAGN+MY2rvBYFqYp4pS9jHtyCil/xNNSQduE400iIgXvX6mrq+ikAe/51s+NBIx9S
         /YXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Cf1LQ5fNlVaS52D8jPent3DcteJDu/0EEO4v1tjBzHI=;
        b=ARg2PNxhGQ/W/0N5f52i2woRklg7aAW9+E6+M3Owf8Jljmwjp2GKJmf2KU8I50OE1K
         5H04j7gHiT+ijpdh1KGjoTDyeJwmaZOVifoM2N4l/gNlqJYGrFMB8/JQb4mET+7jF1+N
         z5azSc1Vn3gispPwNCQQkzaJQlkt8w+vueIiCrV26RwAgz7wi4UJw8EykoQ1LE3A1zG9
         sJ9bT7cwdsdcfLhcBk2MjG8oPtzDq5KI4Kfok8YsK1WD0BV8U4wckPjouP0b9/srcGnx
         bG6AKS2v5+L9Fv8uSw4pOFMWZvw4eWIeb3q0EPf7mLA48M5+7RyjElRvPuUzWhovPX68
         3VFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=my06dzPh;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id a22si1044322pjv.3.2020.06.13.10.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jun 2020 10:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id w3so12034486qkb.6
        for <clang-built-linux@googlegroups.com>; Sat, 13 Jun 2020 10:24:43 -0700 (PDT)
X-Received: by 2002:a05:620a:786:: with SMTP id 6mr7223882qka.407.1592069081942;
 Sat, 13 Jun 2020 10:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com> <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net> <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net> <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com> <20200612114900.GA187027@google.com>
In-Reply-To: <20200612114900.GA187027@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 13 Jun 2020 19:24:29 +0200
Message-ID: <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
To: Marco Elver <elver@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Andrey Konovalov <andreyknvl@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Alexander Potapenko <glider@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=my06dzPh;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Fri, Jun 12, 2020 at 1:49 PM Marco Elver <elver@google.com> wrote:
> On Fri, 12 Jun 2020, Dmitry Vyukov wrote:
>
> > On Thu, Jun 11, 2020 at 11:55 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > > On Mon, Jun 08, 2020 at 01:01:08PM +0200, Peter Zijlstra wrote:
> > > > On Mon, Jun 08, 2020 at 09:57:39AM +0200, Dmitry Vyukov wrote:
> > > >
> > > > > As a crazy idea: is it possible to employ objtool (linker script?) to
> > > > > rewrite all coverage calls to nops in the noinstr section? Or relocate
> > > > > to nop function?
> > > > > What we are trying to do is very static, it _should_ have been done
> > > > > during build. We don't have means in existing _compilers_ to do this,
> > > > > but maybe we could do it elsewhere during build?...
> > > >
> > > > Let me try and figure out how to make objtool actually rewrite code.
> > >
> > > The below is quite horrific but seems to sorta work.
> > >
> > > It turns this:
> > >
> > >   12:   e8 00 00 00 00          callq  17 <lockdep_hardirqs_on+0x17>
> > >                         13: R_X86_64_PLT32      __sanitizer_cov_trace_pc-0x4
> > >
> > > Into this:
> > >
> > >   12:   90                      nop
> > >   13:   90                      nop
> > >                         13: R_X86_64_NONE       __sanitizer_cov_trace_pc-0x4
> > >   14:   90                      nop
> > >   15:   90                      nop
> > >   16:   90                      nop
> > >
> > >
> > > I'll have to dig around a little more to see if I can't get rid of the
> > > relocation entirely. Also, I need to steal better arch_nop_insn() from
> > > the kernel :-)
> >
> > Wow! Cool!
> > Thanks for resolving this. I guess this can be used to wipe more
> > unwanted things in future :)
> >
> > Marco double checked and his patch did not actually fix the existing
> > crash under KCSAN. The call itself was the problem or something,
> > returning early did not really help. This should hopefully fix it.
> > Marco, please double check.
> >
> > Re better nop insn, I don't know how much work it is (or how much you
> > are striving for perfection :)). But from KCOV point of view, I think
> > we can live with more or less any nop insn. The main thing was
> > removing overhead from all other (not noinstr) cases, I would assume
> > the noinstr cases where we use nops are very rare. I mean don't spend
> > too much time on it, if it's not needed for something else.
> >
> > Thanks again!
>
> This is great, thanks! To make noinstr not call into KCOV, this
> definitely seems to do the job.
>
> Though sadly it doesn't fix the problem I'm seeing. The problem occurs
> when I compile using Clang, and enable either KASAN or KCSAN together
> with KCOV. Actually, turning off KCOV also shows this... a stacktrace is
> below.

I can't reproduce this after tuning off KCOV. Just KASAN works for me.
Also the following helps (at least for my config):

diff --git a/lib/Makefile b/lib/Makefile
index b1c42c10073b9..8514519bc5bcb 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -17,6 +17,7 @@ KCOV_INSTRUMENT_list_debug.o := n
 KCOV_INSTRUMENT_debugobjects.o := n
 KCOV_INSTRUMENT_dynamic_debug.o := n
 KCOV_INSTRUMENT_fault-inject.o := n
+KCOV_INSTRUMENT_smp_processor_id.o := n


Btw, do you use inline instrumentation for KASAN or outline?
I use inline KASAN, so maybe it's a function call that's the problem.
KCOV uses calls and KCSAN also uses calls.

And it's not that we are getting that "BUG:", right? Otherwise we
would see it in non-KCOV builds as well. So it must be something in
the very beginning of the function...




> The repro is this one: https://syzkaller.appspot.com/x/repro.c?x=1017ef06100000
>
> I don't quite understand what's going on here. Maybe the inserted
> instrumentation causes the compiler to spill more things onto the stack
> and somehow blow that? The nops obviously won't help with that. :-/
>
> I'll try to debug and understand this some more. Also this is of course
> on top of:
> https://lore.kernel.org/lkml/20200604102241.466509982@infradead.org/
>
> But, again, for disabling KCOV instrumentation in noinstr, I believe
> your patch does what we want. In future, when we get compiler support
> for __no_sanitize_coverage, the logic you're adding to objtool can
> probably stay but shouldn't be invoked if the compiler is doing its job.
>
> Thanks,
> -- Marco
>
> ------ >8 ------
>
> traps: PANIC: double fault, error_code: 0x0
> double fault: 0000 [#1] PREEMPT SMP PTI
> CPU: 3 PID: 513 Comm: a.out Not tainted 5.7.0+ #1
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1 04/01/2014
> RIP: 0010:native_save_fl arch/x86/include/asm/irqflags.h:29 [inline]
> RIP: 0010:arch_local_save_flags arch/x86/include/asm/irqflags.h:79 [inline]
> RIP: 0010:check_preemption_disabled+0x60/0x120 lib/smp_processor_id.c:19
> Code: 7f 74 27 90 90 90 90 90 65 48 8b 04 25 28 00 00 00 48 3b 44 24 08 0f 85 c6 00 00 00 89 d8 48 83 c4 10 5b 41 5c 41 5e 41 5f c3 <9c> 8f 04 24 f7 04 24 00 02 00 00 75 07 90 90 90 90 90 eb ca 65 4c
> RSP: 0018:fffffe0000094ff8 EFLAGS: 00010046
> RAX: 0000000080000000 RBX: 0000000000000003 RCX: ffffffffacc00ef7
> RDX: 0000000000000000 RSI: ffffffffad29c4f2 RDI: ffffffffad21fe08
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> R13: 0000000000000000 R14: ffffffffad29c4f2 R15: ffffffffad21fe08
> FS:  0000000001d26880(0000) GS:ffffa16e5fcc0000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: fffffe0000094fe8 CR3: 00000008147bc002 CR4: 0000000000760ee0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> PKRU: 55555554
> Call Trace:
>  <ENTRY_TRAMPOLINE>
>  __this_cpu_preempt_check+0x18/0x1a lib/smp_processor_id.c:65
>  fixup_bad_iret+0x2e/0xe0 arch/x86/kernel/traps.c:678
>  error_entry+0xd5/0xe0 arch/x86/entry/entry_64.S:937
> RIP: 0010:native_irq_return_iret+0x0/0x2
> Code: 5d 41 5c 5d 5b 41 5b 41 5a 41 59 41 58 58 59 5a 5e 5f 48 83 c4 08 eb 0b 66 66 2e 0f 1f 84 00 00 00 00 00 f6 44 24 20 04 75 02 <48> cf 57 0f 01 f8 66 90 0f 20 df 48 0f ba ef 3f 48 81 e7 ff e7 ff
> RSP: 0018:fffffe00000951d8 EFLAGS: 00010046 ORIG_RAX: 0000000000000000
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000100
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> RIP: 0033:0x3bfd19e0df38d197
> Code: Bad RIP value.
> RSP: 002b:00007ffd10c4c948 EFLAGS: 00000313 </ENTRY_TRAMPOLINE>
> Modules linked in:
> ---[ end trace df1b33281490ebc3 ]---
> RIP: 0010:native_save_fl arch/x86/include/asm/irqflags.h:29 [inline]
> RIP: 0010:arch_local_save_flags arch/x86/include/asm/irqflags.h:79 [inline]
> RIP: 0010:check_preemption_disabled+0x60/0x120 lib/smp_processor_id.c:19
> Code: 7f 74 27 90 90 90 90 90 65 48 8b 04 25 28 00 00 00 48 3b 44 24 08 0f 85 c6 00 00 00 89 d8 48 83 c4 10 5b 41 5c 41 5e 41 5f c3 <9c> 8f 04 24 f7 04 24 00 02 00 00 75 07 90 90 90 90 90 eb ca 65 4c
> RSP: 0018:fffffe0000094ff8 EFLAGS: 00010046
> RAX: 0000000080000000 RBX: 0000000000000003 RCX: ffffffffacc00ef7
> RDX: 0000000000000000 RSI: ffffffffad29c4f2 RDI: ffffffffad21fe08
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> R13: 0000000000000000 R14: ffffffffad29c4f2 R15: ffffffffad21fe08
> FS:  0000000001d26880(0000) GS:ffffa16e5fcc0000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: fffffe0000094fe8 CR3: 00000008147bc002 CR4: 0000000000760ee0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> PKRU: 55555554

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g%40mail.gmail.com.
