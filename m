Return-Path: <clang-built-linux+bncBCMIZB7QWENRB54QU35QKGQE3PAAHMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A9913273A17
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 07:15:41 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id c5sf15060806qtd.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 22:15:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600751735; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5SeRfs3LUMVBbk50fqdLRyHGEZiUULcQ65xrLZP+MPtsIp06BKTeGTrV2NhrOjkh7
         alIoJHuS8Bmttm+koEad4+0sSPS4yk6jUa8958Vkk8O57nqM0NHugeinpqG+LSN+wqVO
         4sjk/bJ0h/GLbGSM6X/FmDn1iXBwSY57XJzbOfcQouse8wBamELXkn4f+zFAW9HqkTYE
         WJOMzojVcGZ0foX0DNN2DO0S7KFWF6Ib7dxzS607+O22xwWqIZTse+xoL1eNE/bu2Adj
         IrwpV1Xa1G59Tzt7gPeVlWuog92DvZABwlhYi6iDEh46sE7hsP24iYoEh3kUvTGLAXJP
         1kqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SRv7Vg5QY8iCQjBo2gCVqfM0tOsAWMHQuiA/aKcFodk=;
        b=piDQXxCEFrYo8abz+1h9V18fNe3fRFcski+yjiKy5RaT+XKFZIdnROoaSVV9f9us1S
         YlYmB+/3mWsMCA/79c8Z72RSj32uYkaPTMMH+TlrlWSAqZKADDGkH5qhghL5LBwe12Qq
         I7DYhKRFuLedJDhEOUvpJpVZlghjnRse6sTXPbk4uUMjSdu2UwuV3+S4hObMpLSSWyDQ
         ttukGvpTJJU/Nq703TXXRC8mYh7yX6HFbFLFT/PFw3XF24BykpaL52Raf840FsysKXir
         wfI26drskLhRssimqMkELdINx/bv1ZN4sQ3vO1OzntA3QJp8XVj5Ky7O4ORcn2Q1OXyl
         EXPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAM7c17Y;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRv7Vg5QY8iCQjBo2gCVqfM0tOsAWMHQuiA/aKcFodk=;
        b=XeQ20/1I08SO8sjizQvOKNB5niO9j/q6Pfc9b2lpL03YZ0lkYFBAGbCmAlqYvWvPU+
         jr48lyR/uj01QUKc5z63tzDwsGiqWgn4SjZecG6SwbAwZZgDHOegx0rsv8q3yyLMvNZT
         0rSe0vTaF+j+L/yMhl9OEmVv9qiW0eopiRsuqsBNGklsb3areazvxT/MWLx8cXShFhhU
         2ohVYZjutrcptFJywoUgaa2Ndf0TNRtCAdju5oJlyd2ko8JQiOFRrXqTPPvBlkxnda5m
         82d1FJAWxkq3Gn3KOYdVHJYw6DzWiV+cNa7GepJfubzbm9qdNH2cPbISsMQi7t0KGjvi
         l+4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SRv7Vg5QY8iCQjBo2gCVqfM0tOsAWMHQuiA/aKcFodk=;
        b=nRQUD4CkYrAAPwcPvXDSw5QZL6tIdh1iJekbyMXwqIWP5U/f5XUFI2MbrG/Jq803+8
         IieEF2cuS3WOs3FoyyWnuday1GMHvxmtWYHCADRMjuReVPXbWK/H4hj/DX8nsfg+RyT5
         q4ykfOV1Vp/THU3tOGBNl0rLKZT38sa/c0h2av/nVnaCPPOmx3zqOHzCj957XjUu4+Y0
         LxbZmsmNmoPCsLK1RZI2Lrx2+DkzRDEl6id38uJKauKV9h2Mq04+us1PwQfS9cdc2bj1
         PV41lnbK7C7KFyCDpR44Bp/LMiFzjN5nXvKesmmXPVppRx/OlLxJfiCJupqBxsTeCa4s
         Fiyg==
X-Gm-Message-State: AOAM532ctxabDlgaC2WDf6OT0PE2yG3UgBIy6boRqvmwb8zb/gR3hJPF
	iUu39hac/EL+JV8JrmFpsyU=
X-Google-Smtp-Source: ABdhPJxm+dD2VnbJ0RDAKy8BKTDSqSZf6teu40KJ3KWDHb4rMb3din/RYMzveIGFwDE51Su0+ChZqg==
X-Received: by 2002:a0c:e2c1:: with SMTP id t1mr4203461qvl.35.1600751735493;
        Mon, 21 Sep 2020 22:15:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2489:: with SMTP id i9ls6532796qkn.3.gmail; Mon, 21
 Sep 2020 22:15:35 -0700 (PDT)
X-Received: by 2002:a37:897:: with SMTP id 145mr3347287qki.82.1600751735043;
        Mon, 21 Sep 2020 22:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600751735; cv=none;
        d=google.com; s=arc-20160816;
        b=nlyqlXV+8ixDXGJWx0rGwsuey5B8Ap7MGqEHMtpFOop8JsCbtO9ZHPJEFv+p/BlD/H
         xdefD89R+V3/OcvetpiGKSfgHY7kUzzuYYgUkm1iZz/5UZzt9+phz8xNfH7blTwUVMr0
         NuXoSEzwY9m4nmfps7WUxP8OTFpl5v/N+Sqv1TLclmB9T3sRS5Ll0+7UbmuY+X1pyVEh
         jNifEOkFhOu8V1b3JWHUIQcQX9N9KyB247m3ah/tyHsurYLQ9cciIgEfkyS010mu6b95
         Y/boYwEjAKY/CYhONk5t58p6AwClnixhJX8VeBbcJgXqMpVrCPdsXSBJh5uLrecjxY8A
         TmqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5GEkgC4MisQHmLtToGlXORaPrjFHWcS5S9kF092Mfg4=;
        b=FF34+WYEn2ztPPaoUEv1O2XbEMWEm6NrbgkukDXkupZP/MH7gTtGVemXNRzaVIR+kw
         tJbz0tMip7eDH5EduEGHl68/W136Rb4Wgxpyh3q2lsefKVhddYiIOadc/323kClAJB71
         17j7nY2me4nXYzHNXSKna2Cduo/Kmsk/KJiToNdFkx9npxOmg5EPqwalFw9lK5d48y/i
         LEI13tZ6nPlkIAUX+6xItMhAMEiq/sooFb3Ipp5ulghxr41IW4z2gSr91CmoFlTjpBFy
         1xDqdX9hP6vGHLVxMfc2pf8C2N9XROT9L3SjXetun57HMuUI7HzbYRxmzyaWL2cNSQ1R
         Ugpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fAM7c17Y;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id e1si594051qka.0.2020.09.21.22.15.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 22:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id n10so14653845qtv.3
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 22:15:35 -0700 (PDT)
X-Received: by 2002:ac8:4658:: with SMTP id f24mr3078597qto.158.1600751734348;
 Mon, 21 Sep 2020 22:15:34 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com> <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
In-Reply-To: <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 07:15:22 +0200
Message-ID: <CACT4Y+YqwHk97gF2YaE30rVBq2O9djuuh2ru7yuqOkttGz0Kbw@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=fAM7c17Y;       spf=pass
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
> https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62

Hi Nick,

Yes, it should be this config. Borislav looked at the crash in the
first email in the thread and that's the config provided there. If
syzbot provides a crash and a config, these always match.

And the exact compiler used to produce the build is this:
compiler:       clang version 10.0.0
(https://github.com/llvm/llvm-project/
c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
https://storage.googleapis.com/syzkaller/clang_install_c2443155.tar.gz


> (though I
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
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/CAKwvOdmKcn%3DFNzwtBZ8z0evLz4BXgWtsoz9%2BQTC6GLqtNp1bXg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYqwHk97gF2YaE30rVBq2O9djuuh2ru7yuqOkttGz0Kbw%40mail.gmail.com.
