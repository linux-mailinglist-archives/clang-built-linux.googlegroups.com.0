Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNGXRX3QKGQEQK7YH5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id D24F71F7778
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 13:49:08 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id i199sf2600457lfi.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 04:49:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591962548; cv=pass;
        d=google.com; s=arc-20160816;
        b=K65PiiY8mAFK0WoCjHpOT7ruh539/cyj5kdK+ifCBareEos8vZVRgNNk1Vrc4ZiEY/
         M898W5wZ1XU8ljZ8rR1PY5NE301woEkT2P7ecOdLRPF/PocOtfCqkdlal0vobjXNREk3
         KHzqqSd6hQ7lklWnN+XwY9x6xXxaoddk3SeCTsQjM4ct5tiCXUia2bvGCGFVjz1DKxRB
         w4yL981kOJILPORFAEaLdbHwAArDZVidt8dsIPkbAWCb9A4+0JvLuAknY2ki1lDpBXKb
         WVOh46o4TG6Eg5epsVZEL4Z6MDv9XafAWGtRoJ0MRUmB8rgCsu2yL+X3MoK2RXBu1Qug
         4ZRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=X+eye1+zoF/XkIiZoJVZTbIz1bXcoaXkRBKqU2+8vfQ=;
        b=Y+ZzpYen/fHXaG3EfeXsnkW57lGGHtgQIlgf6KvXglqpW+YLhkXFbr2MtZitsrR6CY
         VeZsISLhZ8KC/8NoySkhN7mz72cbhOEJFFXN90mvpbkr/ZyeF1k5QWwn9HOrGgBIlIMS
         3G4I1dIrWTx+OYwDsOxEJVIkOCEg3g5TCukS4+Ww11OxzqaRoYZkfdfsC/VA7TnIBgQF
         tJk666+kwzzYrRAniVHPh9A1JTMxjCsl9y/Dsj63s0BB5aPbxGoGTMnnKu00ZNWrFsEk
         /95KLZVH8y9xwKuWcW0dwo4++pKEdovWT3qoQQdAgX1Cr6K1KTljB1qxCR+vRXTHP6yJ
         Gdsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qSkDfGRJ;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=X+eye1+zoF/XkIiZoJVZTbIz1bXcoaXkRBKqU2+8vfQ=;
        b=pInReARB5lLUvm0/SosJPIdmqNm0Cz1LjoChzhUA+UtmqLbNX2MWe3KCc/6Ys7PYHG
         uR4GmYSIsWlFKg9l/DFQW4FuZnHPVPd8Fcn8/UXfxOJdRaFW4iOFXM1OMxcXGziDd8PA
         4C5B3jzJo9sDuNFSMztOFA+ur2s3LCeNnF9h4sbbsFYygEDM9dK6AIVIV6KAY/paHzkM
         1Jw9YTvnh7Z7hD18XFNPHL3lJWVJr2hWXhS6mlRDXgOkQ4hETWa8Ory7g6O8lPd2WBmf
         gZdrrh1fdeTv3T6N7mJRelhw6MpP6OyudcN4zpdlZrXTL6MsJQOK8LLyXJ/i5cCIaQnN
         5s4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X+eye1+zoF/XkIiZoJVZTbIz1bXcoaXkRBKqU2+8vfQ=;
        b=pfKnF3+M1qVsQdNlvqGQrb5h07eoHCqUWTtM6sXWm2vdpn+1obXLPzu82xqledRkpF
         knIm4TWv9FtHAogmmSWGA5yralsvHXeRkqt4LIPq1fgeFjAyUqbA8bcat9BZOoRlv+O0
         W3Z0orBXpaKHhMvFNpIG8rnASyyC2lLTUUdgG0AZ5kEqKWJXw0+pvz5W14bGpknhggYu
         WzOs79LdOAeJ54AJ94/frmR7q1Jaeo9MVtmAkYT8m6iXgCW/Eu1V1Wn8eDXFMauJjo4T
         m3OkKrf3/K5hXJRqLpG95gxCwNQwuwCUkY0xddjc3bLbG+C3aC3YqhKXEgeOzHJPVSv8
         2BtA==
X-Gm-Message-State: AOAM533/pxHyTaaosp+QBtINAQJpTNiGurOXo4pAr1jNXdLP70BAzXms
	dHkNiXwP4M8IfZtUaqP4w+8=
X-Google-Smtp-Source: ABdhPJzi6f5X+W0SIv+XeO9MiRDTWpyD65W4zlTT1i6GAKadKY6xApjRg8OWtvSsCBaf0aivvFZe0g==
X-Received: by 2002:a05:6512:3e7:: with SMTP id n7mr6709649lfq.118.1591962548361;
        Fri, 12 Jun 2020 04:49:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d2:: with SMTP id d18ls1161004ljj.1.gmail; Fri, 12 Jun
 2020 04:49:07 -0700 (PDT)
X-Received: by 2002:a2e:b4b6:: with SMTP id q22mr5431555ljm.53.1591962547442;
        Fri, 12 Jun 2020 04:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591962547; cv=none;
        d=google.com; s=arc-20160816;
        b=YcqPRzDWHPuPtDjz2jDKPx2ECZxiMdQHXQhXVGCVwtJ7y8fDLFJNA9kPfpRlMa66p5
         GmvNLguSWh32/sNTA3xAHhA49RbfTbum4UsHE/y+n8B4U8+6Xp6pRtvZFZ55JMVogYEe
         m8bzOUHHEIhtMyuvpSbSsZm7QvyMo1mKRjivKvvIwYkqgL8JFveouJX83qs9cSDLYQ/n
         osX8tcd99H5FoUPqTE5cfCskRU0JV5EsFpCBdmZsOkiIyKFzPHWy+IKSRc28gC2hJKg3
         0+5rCXKV1NULt+IJCaCZ3wDPNgoMLajLM8VQJolLcnn06REHsI6uFY2jupqhg/42NN6F
         Mrnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pwTj7/MvX3JGzDpMDfm+azC8Rd5H8H49BAN8154oFlU=;
        b=ASwTJAhGSAiV0nm18akdlC+mOBpxh/Zs3xlptGo0G2hsrdDTXr/uUhJEj3DLZmlxQV
         dtBXCmOiHAErJerQXf+/QHY0NCTESsLP3sHNJrm30GJEcd7H2Yt3JaGwUQefiHz+svon
         VO/ZQh35Zvyx5CR6cyQC+NwuCA99o+C8+X+Hd9XSEt7v7ZyxQIkp6biDGxfthKTS2syu
         ZxGWkYevz4WE7hwRtVq4q7ZBkDFvI1l2O1121IPNlN6/BbmrZRcDR19wka1zxXsthtJk
         XHTidiuWwUE0KlBmOrHoqTDzXt4SPTGKeeMPE6AaSIn0gqLxX5oYOjPavvMC6EeVQLUo
         ab3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qSkDfGRJ;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j14si292563lji.8.2020.06.12.04.49.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 04:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r7so9456657wro.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jun 2020 04:49:07 -0700 (PDT)
X-Received: by 2002:a5d:54c3:: with SMTP id x3mr14208973wrv.312.1591962546505;
        Fri, 12 Jun 2020 04:49:06 -0700 (PDT)
Received: from google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id z25sm8451339wmf.10.2020.06.12.04.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 04:49:05 -0700 (PDT)
Date: Fri, 12 Jun 2020 13:49:00 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200612114900.GA187027@google.com>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
 <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qSkDfGRJ;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::441 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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



On Fri, 12 Jun 2020, Dmitry Vyukov wrote:

> On Thu, Jun 11, 2020 at 11:55 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Mon, Jun 08, 2020 at 01:01:08PM +0200, Peter Zijlstra wrote:
> > > On Mon, Jun 08, 2020 at 09:57:39AM +0200, Dmitry Vyukov wrote:
> > >
> > > > As a crazy idea: is it possible to employ objtool (linker script?) to
> > > > rewrite all coverage calls to nops in the noinstr section? Or relocate
> > > > to nop function?
> > > > What we are trying to do is very static, it _should_ have been done
> > > > during build. We don't have means in existing _compilers_ to do this,
> > > > but maybe we could do it elsewhere during build?...
> > >
> > > Let me try and figure out how to make objtool actually rewrite code.
> >
> > The below is quite horrific but seems to sorta work.
> >
> > It turns this:
> >
> >   12:   e8 00 00 00 00          callq  17 <lockdep_hardirqs_on+0x17>
> >                         13: R_X86_64_PLT32      __sanitizer_cov_trace_pc-0x4
> >
> > Into this:
> >
> >   12:   90                      nop
> >   13:   90                      nop
> >                         13: R_X86_64_NONE       __sanitizer_cov_trace_pc-0x4
> >   14:   90                      nop
> >   15:   90                      nop
> >   16:   90                      nop
> >
> >
> > I'll have to dig around a little more to see if I can't get rid of the
> > relocation entirely. Also, I need to steal better arch_nop_insn() from
> > the kernel :-)
> 
> Wow! Cool!
> Thanks for resolving this. I guess this can be used to wipe more
> unwanted things in future :)
> 
> Marco double checked and his patch did not actually fix the existing
> crash under KCSAN. The call itself was the problem or something,
> returning early did not really help. This should hopefully fix it.
> Marco, please double check.
> 
> Re better nop insn, I don't know how much work it is (or how much you
> are striving for perfection :)). But from KCOV point of view, I think
> we can live with more or less any nop insn. The main thing was
> removing overhead from all other (not noinstr) cases, I would assume
> the noinstr cases where we use nops are very rare. I mean don't spend
> too much time on it, if it's not needed for something else.
> 
> Thanks again!

This is great, thanks! To make noinstr not call into KCOV, this
definitely seems to do the job.

Though sadly it doesn't fix the problem I'm seeing. The problem occurs
when I compile using Clang, and enable either KASAN or KCSAN together
with KCOV. Actually, turning off KCOV also shows this... a stacktrace is
below.

The repro is this one: https://syzkaller.appspot.com/x/repro.c?x=1017ef06100000

I don't quite understand what's going on here. Maybe the inserted
instrumentation causes the compiler to spill more things onto the stack
and somehow blow that? The nops obviously won't help with that. :-/

I'll try to debug and understand this some more. Also this is of course
on top of:
https://lore.kernel.org/lkml/20200604102241.466509982@infradead.org/

But, again, for disabling KCOV instrumentation in noinstr, I believe
your patch does what we want. In future, when we get compiler support
for __no_sanitize_coverage, the logic you're adding to objtool can
probably stay but shouldn't be invoked if the compiler is doing its job.

Thanks,
-- Marco

------ >8 ------

traps: PANIC: double fault, error_code: 0x0
double fault: 0000 [#1] PREEMPT SMP PTI
CPU: 3 PID: 513 Comm: a.out Not tainted 5.7.0+ #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1 04/01/2014
RIP: 0010:native_save_fl arch/x86/include/asm/irqflags.h:29 [inline]
RIP: 0010:arch_local_save_flags arch/x86/include/asm/irqflags.h:79 [inline]
RIP: 0010:check_preemption_disabled+0x60/0x120 lib/smp_processor_id.c:19
Code: 7f 74 27 90 90 90 90 90 65 48 8b 04 25 28 00 00 00 48 3b 44 24 08 0f 85 c6 00 00 00 89 d8 48 83 c4 10 5b 41 5c 41 5e 41 5f c3 <9c> 8f 04 24 f7 04 24 00 02 00 00 75 07 90 90 90 90 90 eb ca 65 4c
RSP: 0018:fffffe0000094ff8 EFLAGS: 00010046
RAX: 0000000080000000 RBX: 0000000000000003 RCX: ffffffffacc00ef7
RDX: 0000000000000000 RSI: ffffffffad29c4f2 RDI: ffffffffad21fe08
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: ffffffffad29c4f2 R15: ffffffffad21fe08
FS:  0000000001d26880(0000) GS:ffffa16e5fcc0000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffffe0000094fe8 CR3: 00000008147bc002 CR4: 0000000000760ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <ENTRY_TRAMPOLINE>
 __this_cpu_preempt_check+0x18/0x1a lib/smp_processor_id.c:65
 fixup_bad_iret+0x2e/0xe0 arch/x86/kernel/traps.c:678
 error_entry+0xd5/0xe0 arch/x86/entry/entry_64.S:937
RIP: 0010:native_irq_return_iret+0x0/0x2
Code: 5d 41 5c 5d 5b 41 5b 41 5a 41 59 41 58 58 59 5a 5e 5f 48 83 c4 08 eb 0b 66 66 2e 0f 1f 84 00 00 00 00 00 f6 44 24 20 04 75 02 <48> cf 57 0f 01 f8 66 90 0f 20 df 48 0f ba ef 3f 48 81 e7 ff e7 ff
RSP: 0018:fffffe00000951d8 EFLAGS: 00010046 ORIG_RAX: 0000000000000000
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020000100
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
RIP: 0033:0x3bfd19e0df38d197
Code: Bad RIP value.
RSP: 002b:00007ffd10c4c948 EFLAGS: 00000313 </ENTRY_TRAMPOLINE>
Modules linked in:
---[ end trace df1b33281490ebc3 ]---
RIP: 0010:native_save_fl arch/x86/include/asm/irqflags.h:29 [inline]
RIP: 0010:arch_local_save_flags arch/x86/include/asm/irqflags.h:79 [inline]
RIP: 0010:check_preemption_disabled+0x60/0x120 lib/smp_processor_id.c:19
Code: 7f 74 27 90 90 90 90 90 65 48 8b 04 25 28 00 00 00 48 3b 44 24 08 0f 85 c6 00 00 00 89 d8 48 83 c4 10 5b 41 5c 41 5e 41 5f c3 <9c> 8f 04 24 f7 04 24 00 02 00 00 75 07 90 90 90 90 90 eb ca 65 4c
RSP: 0018:fffffe0000094ff8 EFLAGS: 00010046
RAX: 0000000080000000 RBX: 0000000000000003 RCX: ffffffffacc00ef7
RDX: 0000000000000000 RSI: ffffffffad29c4f2 RDI: ffffffffad21fe08
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: ffffffffad29c4f2 R15: ffffffffad21fe08
FS:  0000000001d26880(0000) GS:ffffa16e5fcc0000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffffe0000094fe8 CR3: 00000008147bc002 CR4: 0000000000760ee0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200612114900.GA187027%40google.com.
