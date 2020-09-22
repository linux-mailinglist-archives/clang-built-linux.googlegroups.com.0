Return-Path: <clang-built-linux+bncBCMIZB7QWENRBMERU35QKGQELFMC7MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B51273A1B
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 07:16:33 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id g5sf4480548vsg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 22:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600751792; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAc2eWR4kl8w2qiKz5+7C3GJaxpHtL0uAuoWkng5naM5JRIUBVV8YXzuQb9ZVLBw0f
         8x4zKvApe/T6f1fNaPo+xfPsPytycU7uL289cXdCdHtRKmAiS7FpkmQcVNJTHv0hRVol
         AXSgd4O8hEZFcR36c6NzJubhqDBsOvzRDFx2yFAF6SGJy7YWtAjGwjc6zAzzhQ+XoAMf
         /pyv0L6RgFPU6ldm2kqJMvU//81hKxjyaZKNJk0BmmdHkyMrlyowASj6YzgkWEVODnwN
         URikJu/fnePjrHn8Xm+oHYMTDrmzTc0qhcKmoYhREKvOXHobt73dd8jae+uYpyoUTnfl
         wESw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zqxss8c32Um2QU8NHIv7zda1MAuVvmw0DOfafTxrsPE=;
        b=SIi8gQK9aTIVm16JguVCD2zBIRx4Dfo2fiXcl7JCo+bY1CW6RQrMDnHUWhmApOOJOb
         opIzgJ03ESSxJgw8IELMkpMfnw5c9ktKorgtWqEsuUpgMVAmkhcKjpAFR3oQZmMZ7+fi
         ubSjbboiXWIkSxZzTFFgldzODs/uNp9jS6Ax9/mlG6EaY4bXKXEBMNhCFnUhGUOqjj9g
         NSk00Cq20Oz3rYgdAL6Bat5gQM97y5Nb0Vbt8hMmLYSNAk8tU5uDYG608oVRDvcwR2Ux
         bII62egJAnAErjUO/sE8ttn0hA4XmRXChTFEVi7kyMTFOddYCdbHn9xBi12kIZDmAU61
         Uu9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L16G+vs0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqxss8c32Um2QU8NHIv7zda1MAuVvmw0DOfafTxrsPE=;
        b=ARjqeYxbT7QmpzW/cBV6yxQalgRkxQdTKbDofulovvLBZy5+rFH2jsfPEBn9IIyo0I
         dVR4RyKk6ENwCCVO98Vg4jOWMTseSl8HBmO+yX+WWUM81fs+hnyHfs9vJ8mxI+5014gB
         9s3W2IopTBCMDJqlCln7WIEmYSY1/Gu/n7oT3phf8H7SkhoeGICtlA4T5thua16GSK4p
         C/jSb5C/XYTpUkaXB3FXQUM8SLjrHpfk7je1kxD7MKoQKnxXsoZg+9MhVG+VStQnYTQn
         GgWpFKhPiIENRddxrXP+4iUMwwUwmVTsXJ9YEx57wFj1mb5bBCWTEBOeGJlmjwL6fkcb
         mZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqxss8c32Um2QU8NHIv7zda1MAuVvmw0DOfafTxrsPE=;
        b=aQiCT+dgXmvMrGDEIUttRICnYSnE9SZktMi4GNnwLke8ZuwTqjW7LxMHBE/E4T1eOh
         jRhZF/0zN+6iF47OvgtjQkexQHpyCH7Fb7K5KgDkL04wHY82Sm131ktAKTkSRIsGIJ7F
         fBvorhMI9D+tlP4PF7eoU5iN5IYKF89WWIQHdRLmVCsFcRiyGreOyX+NfxCM7u+ZtfhN
         7ZX19h5827XDurSlVYvhNJY2MPepj7rRpg3vUPtPMS4iIwriB2X4bXQ63vsKeapP3/Z6
         OHcyWY1CbwX+ucF1Rvp+Z93/7lJcorErIjO0ct+/5/ttgsiMsrHzc84YM8Vuln1BZX0s
         VZig==
X-Gm-Message-State: AOAM533OAHUkFXbbOrPhvH0sMj5WkD7Cawy8kgCo1/3bIKrmw4X1VKtR
	FK/bkr8E61Df93HrdEGuAog=
X-Google-Smtp-Source: ABdhPJxah7vXCfdoyFnFZrWe4s02rsd1bbSjaxy1N8PWKPWubd++NJjhrPM2twqbDz9kpfsdIt1WYg==
X-Received: by 2002:ab0:2985:: with SMTP id u5mr1993441uap.128.1600751792175;
        Mon, 21 Sep 2020 22:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4754:: with SMTP id i20ls989299uac.0.gmail; Mon, 21 Sep
 2020 22:16:31 -0700 (PDT)
X-Received: by 2002:ab0:3312:: with SMTP id r18mr2060571uao.35.1600751791642;
        Mon, 21 Sep 2020 22:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600751791; cv=none;
        d=google.com; s=arc-20160816;
        b=JburDZi6O0WsUJDNKzQhM/WPPOWllwom2K/O0/iIsFf4uT57t8njmeW6cX0LQEF4eP
         bce87u0kipxRmdZhKtcgRCFJy4km+LyliDGEf5oqZB196DJcwYiqpTJ91hTv8WuONMes
         YJEgy2MurDpeyM/UYsNeERrSpujRrVCjcOoPBD7325UN/NYWJ7sorhThdihNiUnSonV3
         qsXIvJiFnMEasX+ZtedhQMXMgijlbIFhVijba1pCt362tI0rsnsn+YU+luywKgo1Vt+4
         +g4Fugl346qbtCw9WKfQ3Bi5u+tOdkW+asaCPW/kl4IviI4HlduHa5rk/Cd/D/6pelmD
         7HiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gZMcJJ9PqMH5tsDHJIkE81FReWpqu52Z2S8UrrGBm9o=;
        b=iRBX3nhbLKsbVc1Q4JLLCBX3P9JDwMtjWQ2gGKh6rMiDHKBMPfJFs2yso6khvaB0zu
         /L5Ch/wZO/fDQRwIgni2ZpmassKBS3Zb4ZVbGEtTJo4SPkn6EpEb9w0FZHsXkkx16/N9
         RzpiST04aB0mOg+9ptPKjM2AjxQlIXYwYS6xYpDhN0EnA6VpExwBXFtDX+ngmV5HZ0u2
         AquUOBYArpq3jm6+US+uwxqQPKJtIx3A6YoQyUCCyghvepAibINPN453QeI5z3kcmbWF
         an/zF2SJXHi676smiERtO/xpQg0W37HTmfPLXRSQtmdm5Ywgxl7GcaiDQjzVBUymHyCz
         nanA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L16G+vs0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u19si851268vsl.0.2020.09.21.22.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 22:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id y11so14624077qtn.9
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 22:16:31 -0700 (PDT)
X-Received: by 2002:ac8:4806:: with SMTP id g6mr3105387qtq.380.1600751790989;
 Mon, 21 Sep 2020 22:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com> <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
In-Reply-To: <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 07:16:19 +0200
Message-ID: <CACT4Y+Y1j7ihri4JrmbW4R1YLFiBiDLF1g7PyPfhx+kEJhaxSg@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L16G+vs0;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843
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

On Mon, Sep 21, 2020 at 10:59 PM 'Nick Desaulniers' via syzkaller-bugs
<syzkaller-bugs@googlegroups.com> wrote:
>
> On Mon, Sep 21, 2020 at 1:09 AM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Sep 21, 2020 at 7:54 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > On Sat, Sep 19, 2020 at 1:08 PM Borislav Petkov <bp@alien8.de> wrote:
> > > >
> > > > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > > > Hello,
> > > > >
> > > > > syzbot found the following issue on:
> > > > >
> > > > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > > > git tree:       upstream
> > > > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > > > >
> > > > > Unfortunately, I don't have any reproducer for this issue yet.
> > > > >
> > > > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > > > Reported-by: syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com
> > > > >
> > > > > general protection fault, probably for non-canonical address 0xffff518084501e28: 0000 [#1] PREEMPT SMP KASAN
> > > > > KASAN: maybe wild-memory-access in range [0xfffaac042280f140-0xfffaac042280f147]
> > > > > CPU: 0 PID: 17449 Comm: syz-executor.5 Not tainted 5.9.0-rc5-syzkaller #0
> > > > > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > > > RIP: 0010:perf_misc_flags+0x125/0x150 arch/x86/events/core.c:2638
> > > > > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> > > >
> > > > Hmm, so converting this back to opcodes with decodecode gives:
> > > >
> > > > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> > > > All code
> > > > ========
> > > >    0:   e4 48                   in     $0x48,%al
> > > >    2:   83 e6 03                and    $0x3,%esi
> > > >    5:   41 0f 94 c4             sete   %r12b
> > > >    9:   31 ff                   xor    %edi,%edi
> > > >    b:   e8 95 fa 73 00          callq  0x73faa5
> > > >   10:   bb 02 00 00 00          mov    $0x2,%ebx
> > > >   15:   4c 29 e3                sub    %r12,%rbx
> > > >   18:   49 81 c6 90 00 00 00    add    $0x90,%r14
> > > >   1f:   4c 89 f0                mov    %r14,%rax
> > > >   22:   48 c1 e8 00             shr    $0x0,%rax
> > > >   26:   00 00                   add    %al,(%rax)
> > > >   28:   00 38                   add    %bh,(%rax)
> > > >   2a:*  00 74 08 4c             add    %dh,0x4c(%rax,%rcx,1)            <-- trapping instruction
> > > >   2e:   89 f7                   mov    %esi,%edi
> > > >   30:   e8 40 c0 b3 00          callq  0xb3c075
> > > >   35:   41 8b 06                mov    (%r14),%eax
> > > >   38:   83 e0 08                and    $0x8,%eax
> > > >   3b:   48 c1 e0 0b             shl    $0xb,%rax
> > > >   3f:   48                      rex.W
> > > >
> > > > and those ADDs before the rIP look real strange. Just as if something
> > > > wrote 4 bytes of 0s there. And building your config with clang-10 gives
> > > > around that area:
> > > >
> > > > ffffffff8101177c:       48 83 e6 03             and    $0x3,%rsi
> > > > ffffffff81011780:       41 0f 94 c4             sete   %r12b
> > > > ffffffff81011784:       31 ff                   xor    %edi,%edi
> > > > ffffffff81011786:       e8 05 c9 73 00          callq  ffffffff8174e090 <__sanitizer_cov_trace_const_cmp8>
> > > > ffffffff8101178b:       bb 02 00 00 00          mov    $0x2,%ebx
> > > > ffffffff81011790:       4c 29 e3                sub    %r12,%rbx
> > > > ffffffff81011793:       49 81 c6 90 00 00 00    add    $0x90,%r14
> > > > ffffffff8101179a:       4c 89 f0                mov    %r14,%rax
> > > > ffffffff8101179d:       48 c1 e8 03             shr    $0x3,%rax
> > > > ffffffff810117a1:       42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
> > > > ffffffff810117a6:       74 08                   je     ffffffff810117b0 <perf_misc_flags+0x130>
> > > > ffffffff810117a8:       4c 89 f7                mov    %r14,%rdi
> > > > ffffffff810117ab:       e8 20 75 b3 00          callq  ffffffff81b48cd0 <__asan_report_load8_noabort>
> > > > ffffffff810117b0:       41 8b 06                mov    (%r14),%eax
> > > > ffffffff810117b3:       83 e0 08                and    $0x8,%eax
> > > > ffffffff810117b6:       48 c1 e0 0b             shl    $0xb,%rax
> > > >
> > > > and I can pretty much follow it instruction by instruction until I reach
> > > > that SHR. Your SHR is doing a shift by 0 bytes and that already looks
> > > > suspicious.
> > > >
> > > > After it, your output has a bunch of suspicious ADDs and mine has a CMP;
> > > > JE instead. And that looks really strange too.
> > > >
> > > > Could it be that something has scribbled in guest memory and corrupted
> > > > that area, leading to that strange discrepancy in the opcodes?
>
> Right, the two sequences above look almost the same, except those 4
> bytes of zeros (the disassembler gets confused about the rest, but
> it's the same byte sequence otherwise).  Are the two disassemblies a
> comparison of the code at runtime vs. compile-time?  If so, how did
> you disassemble the runtime code?  If runtime and compile time differ,
> I suspect some kind of runtime patching.  I wonder if we calculated
> the address of a static_key wrong (asm goto).  What function am I
> looking at the disassembly of?  perf_misc_flags() in
> arch/x86/events/core.c? With this config?
> https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62 (though I
> don't see _any_ asm goto in the IR for this file built with this
> config).  If this is deterministically reproducible, I suppose we
> could set a watchpoint on the address being overwritten?
>
> (Un-interestingly, I do get a panic trying to boot that config in
> qemu, unless I bump the VMs RAM up.)
>
> > >
> > > Hi Boris,
> > >
> > > Memory corruption is definitely possible. There are hundreds of known
> > > bugs that can potentially lead to silent memory corruptions, and some
> > > observed to lead to silent memory corruptions.
> > >
> > > However, these tend to produce crash signatures with 1-2 crashes.
> > > While this has 6 and they look similar and all happened on the only
> > > instance that uses clang. So my bet would be on
> > > something-clang-related rather than a silent memory corruption.
> > > +clang-built-linux
> >
> >
> > general protection fault in pvclock_gtod_notify (2) looks somewhat similar:
> >  - only clang
> >  - gpf in systems code
> >  - happened few times
> >
> > https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c
> > https://groups.google.com/g/syzkaller-bugs/c/0eUUkjFKrBg/m/nGfTjIfCBAAJ
>
> Dmitry,
> Is there an easy way for me to get from
> https://syzkaller.appspot.com/upstream to <list of clang specific
> failures>?  ctrl+f, `clang`, returns nothing on that first link; it
> seems the compiler version is only included in the email?

No such search exists.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BY1j7ihri4JrmbW4R1YLFiBiDLF1g7PyPfhx%2BkEJhaxSg%40mail.gmail.com.
