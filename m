Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5IUT5QKGQEJSESGCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id EE56B27347A
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 22:59:56 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id t3sf9015297pgc.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 13:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600721995; cv=pass;
        d=google.com; s=arc-20160816;
        b=suocA7YNERXT8BkO30nFW6N8L0vG77kENHfnj1FM3kO+9jsVgZhMOOL2hNGoEI0zjo
         JahpDy3AolZ5NxqTC06msWHzHd2/GZ+9Z8NkMgphfdxDILvna5IUEx4x50LEMRTKp3sT
         szPvCke3TNt0PgNaIvG3AbHjb78Nx1iFSaJugKKoO0tm/HCSzUYaeVlZZ1+tu59aD/GX
         iKvrKQ0E1QTjM9TAOurRMGo6fSo5iHOXPb16HRury0RWQy6Xl4+dWIfkAQ6tSqtNlDiv
         jLSA7Nxn76aHVz0KX5RfIO2w15J7ljaw65xsemYs+KdJrq0hBmlIMGyd68YFQXAurhuf
         8lCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dNYeuB5k/d8PrFEmqW7LRyS3H0OlH2KuXZQNlh8jYRU=;
        b=l3tqMnPqncocfxqrFEKTH/BPbw6Sr3sBVbVMRkX5NxXnVd1dlrAJI9suYokHq8MToc
         yp4O3CLDoA7x3gt0s1JeiamH9bkGKBGOue97yyc7FS/oDDdTHCtjHE6aGulzXMy+1har
         4suFlnO4bOetKtwX+B9Z1suHD0iOk9mPVuu/j+74tqzKGg/HZYV/oIHc0eaXW3c/F0vc
         g86CeA/YuT1Ccznzrru1wKPmdrNDTBdFcADzxb7NGMfxuQj2B0cK1bTEPMQmIzqYgBGZ
         eq2xJUtOXFKAHz90lvYOT2errBfgnnx9yaSFOX/Ytb6rOcc+zUogOObq4rZhCVlggcUI
         Dcwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W3hy2w1m;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNYeuB5k/d8PrFEmqW7LRyS3H0OlH2KuXZQNlh8jYRU=;
        b=T1p0xireZ5+Vp4zFt7HUYrxXl4Ret8QuMcNGN1Xhmel/IDRA0q3vHt4WbHnULyLeXk
         kjr7GwzSwyQjNudDc+h1JBOcCycaYopL7OMEtaPQI4Fnzq3NpfOq1K/BwAONqD5zZ0QL
         kOZN9N4fzBNmygbvVXQNu4oxaOCugzo3wxy3+9S6bKhGGHmdHODOgjkKSKiZQnxqFW71
         qsO3Wf/MS8WcRI+z812lncJn2MBMF3x8XEABlKk2iR91gb2QDnSOClrdDjMCrPQuZJis
         ZZAf5nOH5v32cfsJKBO7MpJPPss5f8rbPaexT4QBDn1d5DvLWhpE9eVOFqGb07xIyTFg
         aP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNYeuB5k/d8PrFEmqW7LRyS3H0OlH2KuXZQNlh8jYRU=;
        b=eIKqJmVA/wCBzYflr0RAL7bmy0ZE1OvnsAsTHFbW6Rxc+sKgS3l7gH2fGacNKfIJTH
         7q1eClIg1TwCCdJ6QaRWryy83TgQys2s+IHLmnEu6lQCj3jrv0SczauH6xV1Oa+i0/Xs
         QvJV6VibE+aLbUsh4snMCo0VLoj7Zjzab+zvkD6RAO56DVD+LSX/e0ht7nwrYnxqxk6M
         nKQkfWnAr/wqs67aSCzkEryI5E3pOySrXR0P51cZmEz6NYK9WsUfCBpDJ/OJ06ZIsZ7N
         0PACfTgJFiJomsiCi/rzxVHgMG1S48tEIQWQfu/giedevcPJdYEEdXnSVVWorROoe2pS
         NDDA==
X-Gm-Message-State: AOAM531bPOyWPmGlxatqZAfmilaLvx0dQFJYQTAmc/fMuiJucjQKUmbA
	yXZNo+CC5YSGyutM9vvGIjU=
X-Google-Smtp-Source: ABdhPJzbeXT0gUgoVkoesaYLDlGhnuxFf6dCVdBV5DOWoq5WnZwFHScnX264Z9/ssEBSNQbNG247dw==
X-Received: by 2002:a17:90a:d90c:: with SMTP id c12mr1002441pjv.94.1600721995669;
        Mon, 21 Sep 2020 13:59:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6883:: with SMTP id d125ls5009108pfc.8.gmail; Mon, 21
 Sep 2020 13:59:55 -0700 (PDT)
X-Received: by 2002:a65:6104:: with SMTP id z4mr1136297pgu.184.1600721995048;
        Mon, 21 Sep 2020 13:59:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600721995; cv=none;
        d=google.com; s=arc-20160816;
        b=iaE1wMlNqXSeUWL5nme+aabq5+FiF9rA078vH5Z1rHBPcoWmeRLAP51NiJoKSS2Yuc
         Xb+zFwYHfepSAb8RunXa/ZzejJ4HtiI+9QsB31BAnvqXNCVMGLyTWiX3SfZS6imK/uIz
         Jsej9AcIKx9oOfy9ekD5KkAC3DaAKisxLdDATI/lemrACwXfV2U+dZsdkaVnyJF3KhSQ
         jwx3dtKgPTP9YIshlC8fyfqSVe+0yeAyJx8AxHkU+hyL1VXpcMg/rmBfqBJCw1VX5mnq
         VckP/g0SnqwzbTCZ2JYlxyAT4M42w2aKZVY2mae8uYfaKH7lMnzfxvPUfQ1Wktf9Lj1J
         qzTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y74p/Flmw0QRczoJAXFG5eIYOFtpY//CJYitfpAut2Y=;
        b=EytQaw6lb0zVVJw7SwxRiZYZMIe+WxHBbOzO6zAFXLr3G/H8FqoBaTXQCO4rhzg+k0
         imWfwnx6xDReKtcNvdSMqCIYgYTfjQaF32l3y691AxwgaB41H4D+a+j5V73yxqiz6kVn
         YZQ7jqJ7u+4OZCvtdwliSrG1l9DfjtnNcx4jVwDusVX2lUW9dSwxkLFE/HF4LnbLngwa
         HE7M8+6jhKblIynV9TjPe6cBJ2lNB1H5bmOSyKQuBWzdXPw1UhME6cs8IYd/0vHU3yc3
         gOqXTe+bHAvT3wvsgwDHsUPGX08A0SZhL3pLLCGgF8PPbl4r977A9XqyvKI5zdihkN95
         9xbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W3hy2w1m;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id bk9si40960pjb.1.2020.09.21.13.59.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 13:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 7so10074313pgm.11
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 13:59:55 -0700 (PDT)
X-Received: by 2002:a63:310a:: with SMTP id x10mr1097510pgx.10.1600721994428;
 Mon, 21 Sep 2020 13:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com> <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
In-Reply-To: <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 13:59:43 -0700
Message-ID: <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Dmitry Vyukov <dvyukov@google.com>, Borislav Petkov <bp@alien8.de>
Cc: syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W3hy2w1m;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Sep 21, 2020 at 1:09 AM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Sep 21, 2020 at 7:54 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Sat, Sep 19, 2020 at 1:08 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > > Hello,
> > > >
> > > > syzbot found the following issue on:
> > > >
> > > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > > git tree:       upstream
> > > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > > >
> > > > Unfortunately, I don't have any reproducer for this issue yet.
> > > >
> > > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > > Reported-by: syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com
> > > >
> > > > general protection fault, probably for non-canonical address 0xffff518084501e28: 0000 [#1] PREEMPT SMP KASAN
> > > > KASAN: maybe wild-memory-access in range [0xfffaac042280f140-0xfffaac042280f147]
> > > > CPU: 0 PID: 17449 Comm: syz-executor.5 Not tainted 5.9.0-rc5-syzkaller #0
> > > > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > > RIP: 0010:perf_misc_flags+0x125/0x150 arch/x86/events/core.c:2638
> > > > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> > >
> > > Hmm, so converting this back to opcodes with decodecode gives:
> > >
> > > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> > > All code
> > > ========
> > >    0:   e4 48                   in     $0x48,%al
> > >    2:   83 e6 03                and    $0x3,%esi
> > >    5:   41 0f 94 c4             sete   %r12b
> > >    9:   31 ff                   xor    %edi,%edi
> > >    b:   e8 95 fa 73 00          callq  0x73faa5
> > >   10:   bb 02 00 00 00          mov    $0x2,%ebx
> > >   15:   4c 29 e3                sub    %r12,%rbx
> > >   18:   49 81 c6 90 00 00 00    add    $0x90,%r14
> > >   1f:   4c 89 f0                mov    %r14,%rax
> > >   22:   48 c1 e8 00             shr    $0x0,%rax
> > >   26:   00 00                   add    %al,(%rax)
> > >   28:   00 38                   add    %bh,(%rax)
> > >   2a:*  00 74 08 4c             add    %dh,0x4c(%rax,%rcx,1)            <-- trapping instruction
> > >   2e:   89 f7                   mov    %esi,%edi
> > >   30:   e8 40 c0 b3 00          callq  0xb3c075
> > >   35:   41 8b 06                mov    (%r14),%eax
> > >   38:   83 e0 08                and    $0x8,%eax
> > >   3b:   48 c1 e0 0b             shl    $0xb,%rax
> > >   3f:   48                      rex.W
> > >
> > > and those ADDs before the rIP look real strange. Just as if something
> > > wrote 4 bytes of 0s there. And building your config with clang-10 gives
> > > around that area:
> > >
> > > ffffffff8101177c:       48 83 e6 03             and    $0x3,%rsi
> > > ffffffff81011780:       41 0f 94 c4             sete   %r12b
> > > ffffffff81011784:       31 ff                   xor    %edi,%edi
> > > ffffffff81011786:       e8 05 c9 73 00          callq  ffffffff8174e090 <__sanitizer_cov_trace_const_cmp8>
> > > ffffffff8101178b:       bb 02 00 00 00          mov    $0x2,%ebx
> > > ffffffff81011790:       4c 29 e3                sub    %r12,%rbx
> > > ffffffff81011793:       49 81 c6 90 00 00 00    add    $0x90,%r14
> > > ffffffff8101179a:       4c 89 f0                mov    %r14,%rax
> > > ffffffff8101179d:       48 c1 e8 03             shr    $0x3,%rax
> > > ffffffff810117a1:       42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
> > > ffffffff810117a6:       74 08                   je     ffffffff810117b0 <perf_misc_flags+0x130>
> > > ffffffff810117a8:       4c 89 f7                mov    %r14,%rdi
> > > ffffffff810117ab:       e8 20 75 b3 00          callq  ffffffff81b48cd0 <__asan_report_load8_noabort>
> > > ffffffff810117b0:       41 8b 06                mov    (%r14),%eax
> > > ffffffff810117b3:       83 e0 08                and    $0x8,%eax
> > > ffffffff810117b6:       48 c1 e0 0b             shl    $0xb,%rax
> > >
> > > and I can pretty much follow it instruction by instruction until I reach
> > > that SHR. Your SHR is doing a shift by 0 bytes and that already looks
> > > suspicious.
> > >
> > > After it, your output has a bunch of suspicious ADDs and mine has a CMP;
> > > JE instead. And that looks really strange too.
> > >
> > > Could it be that something has scribbled in guest memory and corrupted
> > > that area, leading to that strange discrepancy in the opcodes?

Right, the two sequences above look almost the same, except those 4
bytes of zeros (the disassembler gets confused about the rest, but
it's the same byte sequence otherwise).  Are the two disassemblies a
comparison of the code at runtime vs. compile-time?  If so, how did
you disassemble the runtime code?  If runtime and compile time differ,
I suspect some kind of runtime patching.  I wonder if we calculated
the address of a static_key wrong (asm goto).  What function am I
looking at the disassembly of?  perf_misc_flags() in
arch/x86/events/core.c? With this config?
https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62 (though I
don't see _any_ asm goto in the IR for this file built with this
config).  If this is deterministically reproducible, I suppose we
could set a watchpoint on the address being overwritten?

(Un-interestingly, I do get a panic trying to boot that config in
qemu, unless I bump the VMs RAM up.)

> >
> > Hi Boris,
> >
> > Memory corruption is definitely possible. There are hundreds of known
> > bugs that can potentially lead to silent memory corruptions, and some
> > observed to lead to silent memory corruptions.
> >
> > However, these tend to produce crash signatures with 1-2 crashes.
> > While this has 6 and they look similar and all happened on the only
> > instance that uses clang. So my bet would be on
> > something-clang-related rather than a silent memory corruption.
> > +clang-built-linux
>
>
> general protection fault in pvclock_gtod_notify (2) looks somewhat similar:
>  - only clang
>  - gpf in systems code
>  - happened few times
>
> https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c
> https://groups.google.com/g/syzkaller-bugs/c/0eUUkjFKrBg/m/nGfTjIfCBAAJ

Dmitry,
Is there an easy way for me to get from
https://syzkaller.appspot.com/upstream to <list of clang specific
failures>?  ctrl+f, `clang`, returns nothing on that first link; it
seems the compiler version is only included in the email?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmKcn%3DFNzwtBZ8z0evLz4BXgWtsoz9%2BQTC6GLqtNp1bXg%40mail.gmail.com.
