Return-Path: <clang-built-linux+bncBCMIZB7QWENRBJF7UH5QKGQE5IJPQUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FF3271D61
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 10:09:09 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id j20sf6151218oig.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 01:09:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600675748; cv=pass;
        d=google.com; s=arc-20160816;
        b=ehBrIW2zjKt1mIRBBHsUyvOamdPwAYraBmUKmw7x+X/5K5V029Y3bSvr80kSmtVwg4
         lLSts/rCfizioxoLAmRM6ACPQHPpvblPl6iHB1Dpt4HOsMuvMOA/q7l+HXYdQQWlz/XT
         44DUsFAJj4ZS34/5P1lUgE2YUzBQDPqRScZ0NEKTd02ClRBJD1UZeSEuVkqcOF7TxI8Z
         PH+RA3Lq6Ls3MvS3BmWxDYgHJ1kwtvMmeFFg4OV2PfOvZSwfX2eBkdeNcKroM8yzCO3N
         DP764CvE8jcvS9wqHwwoTDI6WLYpbMGWJyf+FkVWQZUx/E+20VFdvENH73ZhBej0TM/2
         VH1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6tKeanCjSuUsS9L+I9f5wiigXJi7i3GgvZHv7esTkz4=;
        b=fkBtmZVAeZm+c71fuk+9l0FuGLigwrP46y49hIqSmQ+F/9NDDBFGZvGRiwCDzXPXwV
         6UBcYP0YnNI2otXiw3yULVXdePjWLwMRuKDe0iKOrq4LwRXt1KbD58yifnZfnXFRqunE
         2eFf2N4L/CNNLjnx/v/JmB68Umjw60FP4FHOviSmxlLb+inHYgDVBPxXq1yp9CyYb51r
         oIqvAnw9StQaZJPLci1YWFqj57yXxD7SstR91nuAmYgR+Trq8Ugri7waPHeVuTMcSoHW
         O1zwiqlb5A2e/aSJlK/QgpOMdlL4a2Y5d5VeYcvGvyrPbx/oWE7KXMRulKet7tu3F1MM
         mAPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qgyHfuXW;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tKeanCjSuUsS9L+I9f5wiigXJi7i3GgvZHv7esTkz4=;
        b=DaBrs6PAIjYbp7ybe2wETzpne5payxnWo7o+TfFqLIJmNnVJl7vbekjR27EbbspQ1s
         hRHaWmz5N6Ziv5zLjd8y37Csl5guUDPlQ+7fPXiIvCsBRQn5gXt9yh/djbFd08Nqp0I/
         sYtH5tzEEIHHumq+4IxkM78lPhHj9Ri1svRErN6AwX6wK5RFUx9Od4ea4YpC7wVk++OB
         Hj/YgzNgYfod+9/Z7EJqs5hHtD2M44BUivXwHvYtdIc6wtqC5Kzdu9Fg5of/itpx7mZR
         J6kfNfR+f1jM+Q2w++JTOLXTZ94MSL/ibKkidxlWvrP77CXk6lAGJ3nccwlkZw3iJY2D
         Tj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tKeanCjSuUsS9L+I9f5wiigXJi7i3GgvZHv7esTkz4=;
        b=VlugVv+EHd5RL5Q8caUaf8QpCfBPT/q6vXtBm7UNmQ2U2IMFQhK2L8fDpB8YUqX1fM
         OWnvhjdfOZIasX9H812a/98auA6gNIibtSzjSbrDJQ7MbvKv/7nOe5RSan2nv6JVcTl5
         XjWWSFglJwQk4v355pAWZx0ORzq4881A1JCFc3SrYFsCJXur2V/ehTd/CA6yqtbUru5l
         h7gqiSNo8ODTWJA+dXegSeSn5J/GuQx2IcBrz3/rEB774/mX1z4SZ0JQUJDTdcNXaVzc
         FIBjFdQ5E2lufC2rD2yhVxetc/KJ4Djh5XcHAoRWMPp168lVodFfrwnXPTEp1jF6eOL9
         uTcA==
X-Gm-Message-State: AOAM530rwXG/O+c7WEnV4Bc0M8rGBG/Mp4ZQVMAeLvKtmHkEdafCfZPj
	Vw1bSFE2YnpB1+D+SEp+sjI=
X-Google-Smtp-Source: ABdhPJzPResxKIJh1k6YCPTBs2CWHPggBnXi7R4Sy3YCky2GZXlv2Oqsjhhu/cH+lJEGFlqg1jaKqQ==
X-Received: by 2002:aca:4b85:: with SMTP id y127mr16270382oia.52.1600675748495;
        Mon, 21 Sep 2020 01:09:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:308b:: with SMTP id f11ls2686327ots.9.gmail; Mon,
 21 Sep 2020 01:09:08 -0700 (PDT)
X-Received: by 2002:a9d:6250:: with SMTP id i16mr32621205otk.77.1600675748051;
        Mon, 21 Sep 2020 01:09:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600675748; cv=none;
        d=google.com; s=arc-20160816;
        b=Ar2c6IobOEkUqXjqWo7aHJ7k4vR+fmQaZRu6Q2htzYL3pdVx3J8uRne1JrxUrbELyG
         BtXbdcg+Vln11bl4jJW8zU9RH4FmPEBIKmSuYDJSWvh8BQyItK3gg6Tw5qMyrhkYa0da
         DD41I3kqeToPp5VsiGWOo/hyayZb3ic+2qMhABxqvTJx+VKGh1k07f36wWaAbIM1dhXH
         mBluEWwc0668JVJenQtB/dgJ+a+UYCTBYsJp0TLH+KbA4RhJpp1Mu6b8SkDisCC2hwmc
         m2qlNbTr+D6BvVVNtP4N9xDoBF3VKcl4IZGf49YEY3vvWXfBwZTrFlA6JHT9x1kHDLK/
         Un4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=751B0duT2aa7kQ5C3a9NeovLOKlazEvmqsAH7hxrGLw=;
        b=J6uEnaecp48h+wpy7ABNPpbJIIAWM50M+9WwWF2EfaKiIyuM4uzDAcPTleIELKD8IQ
         XY7qW72vL4IOb7Apem8iFEn0tpfKJwCDOInSKLRAn34gk3h7oKARjVfhL0u2KTXV+9OF
         GDrPmmJSdDn9g5mUvHS0DO5ExcZEzwVTWr+rohSSTPL7vJqOgCqXB/JcSwPhgZyDh/sQ
         Rg7fY68rjWol1Vg5LLjJtpaFebYt1v4+vcYZkoC1e8Sh4Fganir93til9c+zlEYY6+Mn
         5ByNZRECwC+TwmF5EJOqwF9ZGZ7WHHW0QbHl9/FtaVEm2kEdC/DAoSzaEozethMmHzg8
         aY0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qgyHfuXW;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id q10si812561oov.2.2020.09.21.01.09.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 01:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 16so14062241qkf.4
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 01:09:08 -0700 (PDT)
X-Received: by 2002:a37:9c4f:: with SMTP id f76mr44698120qke.250.1600675747164;
 Mon, 21 Sep 2020 01:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
In-Reply-To: <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 10:08:55 +0200
Message-ID: <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, jolsa@redhat.com, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qgyHfuXW;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743
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

On Mon, Sep 21, 2020 at 7:54 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Sat, Sep 19, 2020 at 1:08 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > >
> > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > >
> > > Unfortunately, I don't have any reproducer for this issue yet.
> > >
> > > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > > Reported-by: syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com
> > >
> > > general protection fault, probably for non-canonical address 0xffff518084501e28: 0000 [#1] PREEMPT SMP KASAN
> > > KASAN: maybe wild-memory-access in range [0xfffaac042280f140-0xfffaac042280f147]
> > > CPU: 0 PID: 17449 Comm: syz-executor.5 Not tainted 5.9.0-rc5-syzkaller #0
> > > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > RIP: 0010:perf_misc_flags+0x125/0x150 arch/x86/events/core.c:2638
> > > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> >
> > Hmm, so converting this back to opcodes with decodecode gives:
> >
> > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> > All code
> > ========
> >    0:   e4 48                   in     $0x48,%al
> >    2:   83 e6 03                and    $0x3,%esi
> >    5:   41 0f 94 c4             sete   %r12b
> >    9:   31 ff                   xor    %edi,%edi
> >    b:   e8 95 fa 73 00          callq  0x73faa5
> >   10:   bb 02 00 00 00          mov    $0x2,%ebx
> >   15:   4c 29 e3                sub    %r12,%rbx
> >   18:   49 81 c6 90 00 00 00    add    $0x90,%r14
> >   1f:   4c 89 f0                mov    %r14,%rax
> >   22:   48 c1 e8 00             shr    $0x0,%rax
> >   26:   00 00                   add    %al,(%rax)
> >   28:   00 38                   add    %bh,(%rax)
> >   2a:*  00 74 08 4c             add    %dh,0x4c(%rax,%rcx,1)            <-- trapping instruction
> >   2e:   89 f7                   mov    %esi,%edi
> >   30:   e8 40 c0 b3 00          callq  0xb3c075
> >   35:   41 8b 06                mov    (%r14),%eax
> >   38:   83 e0 08                and    $0x8,%eax
> >   3b:   48 c1 e0 0b             shl    $0xb,%rax
> >   3f:   48                      rex.W
> >
> > and those ADDs before the rIP look real strange. Just as if something
> > wrote 4 bytes of 0s there. And building your config with clang-10 gives
> > around that area:
> >
> > ffffffff8101177c:       48 83 e6 03             and    $0x3,%rsi
> > ffffffff81011780:       41 0f 94 c4             sete   %r12b
> > ffffffff81011784:       31 ff                   xor    %edi,%edi
> > ffffffff81011786:       e8 05 c9 73 00          callq  ffffffff8174e090 <__sanitizer_cov_trace_const_cmp8>
> > ffffffff8101178b:       bb 02 00 00 00          mov    $0x2,%ebx
> > ffffffff81011790:       4c 29 e3                sub    %r12,%rbx
> > ffffffff81011793:       49 81 c6 90 00 00 00    add    $0x90,%r14
> > ffffffff8101179a:       4c 89 f0                mov    %r14,%rax
> > ffffffff8101179d:       48 c1 e8 03             shr    $0x3,%rax
> > ffffffff810117a1:       42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
> > ffffffff810117a6:       74 08                   je     ffffffff810117b0 <perf_misc_flags+0x130>
> > ffffffff810117a8:       4c 89 f7                mov    %r14,%rdi
> > ffffffff810117ab:       e8 20 75 b3 00          callq  ffffffff81b48cd0 <__asan_report_load8_noabort>
> > ffffffff810117b0:       41 8b 06                mov    (%r14),%eax
> > ffffffff810117b3:       83 e0 08                and    $0x8,%eax
> > ffffffff810117b6:       48 c1 e0 0b             shl    $0xb,%rax
> >
> > and I can pretty much follow it instruction by instruction until I reach
> > that SHR. Your SHR is doing a shift by 0 bytes and that already looks
> > suspicious.
> >
> > After it, your output has a bunch of suspicious ADDs and mine has a CMP;
> > JE instead. And that looks really strange too.
> >
> > Could it be that something has scribbled in guest memory and corrupted
> > that area, leading to that strange discrepancy in the opcodes?
>
> Hi Boris,
>
> Memory corruption is definitely possible. There are hundreds of known
> bugs that can potentially lead to silent memory corruptions, and some
> observed to lead to silent memory corruptions.
>
> However, these tend to produce crash signatures with 1-2 crashes.
> While this has 6 and they look similar and all happened on the only
> instance that uses clang. So my bet would be on
> something-clang-related rather than a silent memory corruption.
> +clang-built-linux


general protection fault in pvclock_gtod_notify (2) looks somewhat similar:
 - only clang
 - gpf in systems code
 - happened few times

https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c
https://groups.google.com/g/syzkaller-bugs/c/0eUUkjFKrBg/m/nGfTjIfCBAAJ

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bb9ZCKJkOmwbEC6sZxEQ-9g2g%3D-v4%2BX0aWv7AsrZo7utA%40mail.gmail.com.
