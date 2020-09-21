Return-Path: <clang-built-linux+bncBCMIZB7QWENRBP4AUH5QKGQEKQISFKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 661F0271A8E
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 07:55:13 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j6sf3474812pjy.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Sep 2020 22:55:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600667711; cv=pass;
        d=google.com; s=arc-20160816;
        b=h2s7udgOOcGOcTdXMEuUf7DEzpJFa8bIVHzM5xTc2sixOpyaC05MKSd1O6G/S/tk1o
         J0NpJRV2CNX+txnFLD3TcrSaSFQI3Bnp8a+eDObjYwm+LZkiEIBs+U9Dqmgk+qtvITqN
         AH3CqHs80Lu0nbiKpwL2yBpEvRKbtoTc/pdy0zf9i4xdQDWeeZ+BDLhPFThIM3WlBxbh
         5n28R2IHX/PqyZsRZyCDs0FKgoMAXLAzIM2UIbv7YJ/ZrHAk2zJsKJfA4le55XjJWmfg
         3NzJalejwd/h/trEGLi0wLXmYdMtqiyNu1c5weyzft0oOrjqny2Zu/z5rfMA+iIaC0Ig
         GA3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+TveosC0d0qo4kuY2JbSRHPJIC8cCmpQfgzq1kl7+ZE=;
        b=JuwhQpiNSEDhdm8Wn9LW5iLUW6vnUOlZMwDm9Jiivsl6JFrR2plJHjYqduLAxkuKUW
         lxAWQo3BgDsyR6NOJlfvxFblASUqiLeCs4iiYeKtGpw/UJDPna5IoU2YZfssMPqrzgK5
         A5YYsh6QUL1QI26OWJqkJYP4CjgsrkL457bzjsIG7G21w2ZTqUIla7GWA3OscYpulp2f
         arnZoTquYFToAY1Vln02KAP3LgZ0b52xaiF89HE7mnAsTdJqDSgPXo87A9aPQp7kDT5Z
         uERdugP3E/e1RqUp0UX28RVbeHvejrtAwbpi3gOlhYaFV9C0w/X6332cIiONH6DIwI+m
         aaTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FT2bqJki;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+TveosC0d0qo4kuY2JbSRHPJIC8cCmpQfgzq1kl7+ZE=;
        b=LTye0oeDT87W/O7sTk7EAMAepuYj99ckzBPXX+KozOOn6k17xlWq8nroUI5WIHcE8V
         PxQt8Fvzq451KIT4rgasa97wWfZl8hsQDK2sgGOmGTX0cpvT4P1KdNl5p9wX4/OaKGDB
         W0nNSa9RSH2FrofepSL+GmS0e4lQO10Yww4nv8iTjqA1Hnxf60Z2ATw3BybPuakVXEmI
         GlvbLPQeOLe/Ilql5IEKhgnpNd2n3Rm/wFX6fm4O4jXnhmzJrDRwcr4IfIenLnv4Utqt
         NoNAbio0Xp73S2xn5d/DiohGxSv1A+UcXbQwuBgoRFMcQ2ZfJa29b/nJD0Do1t4E0aU+
         CHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+TveosC0d0qo4kuY2JbSRHPJIC8cCmpQfgzq1kl7+ZE=;
        b=S5DagCxHtunXUfZ9f1FAwZRHx2OWWHj+nU1KGkMHxrDgMuEGwJLJ/YnAL8/R35mnbP
         fqOceeDpctjKZABw6A4BpFc7Ew1hZU7W7D4dxSNQrnq2ddI+V7dI6LXvy83N/bDVZMVG
         WlTphmfNPqiM/0LBjGsM/Gj5qsAsntz85AnPN05lXPh97S5kULl3DCibiLoMmRwczCb3
         KAQGI3mn1t1YDlxPvHcNx8nGUXja65ucFgs+a4AWBypZR/5TvtOfseT05QnJ9qcaYG1a
         5qf28axecjMEcJS33R6LMPmPgludqwlUP63HlrTYhg9H7i/Eln3Emqnv5iesjdixH0aU
         /lXQ==
X-Gm-Message-State: AOAM530hCKoJ6+j0uO4xU0N8DglstXaKbgggOWQKckdv8kxBDt2XBusE
	aEELdJ9YykI9pxG+vEYUn4Q=
X-Google-Smtp-Source: ABdhPJwsNvrug7Fnz18iJE2J4rffTWyMnPud/qcALvBBEekZ1xoGyQEm7zHenkBGvtIs57kzAYAvjA==
X-Received: by 2002:a63:170d:: with SMTP id x13mr35277845pgl.195.1600667711672;
        Sun, 20 Sep 2020 22:55:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:368a:: with SMTP id d132ls4023285pga.6.gmail; Sun, 20
 Sep 2020 22:55:11 -0700 (PDT)
X-Received: by 2002:a05:6a00:1585:b029:142:2501:39f5 with SMTP id u5-20020a056a001585b0290142250139f5mr26126807pfk.68.1600667711058;
        Sun, 20 Sep 2020 22:55:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600667711; cv=none;
        d=google.com; s=arc-20160816;
        b=GawsQLca/XCMrwnh1om7b6rc4WkDUaWbJ0HEGjLNNTbqdOQLgDUkH8c+0vIEz2nMQs
         uSUoa4itoHdFm7/slx4d9I/qld7x7hlMt3NgZdj4jT8/5pGZam3COrSyVaU5y/kdpv2k
         HG69SHSWC0F+3ZNNPSwNOf71gBaKRbkZGBdrB1oVi0GlzPwnu+BRDNhihjPygx6BWDh3
         f3I3g3+UcGEiYwHadVY8dtRKM2yIWw03wR83sgIx9KyK7J4T+JTznFVnnFKKHDcy7GL+
         zBmEivNggg55pOc9ZWLsAV6HHzkHjpkL2TQqF3cB+kPpwS6Oi5Amu5kC4gAepNos/hE9
         JtKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FxSF9+zeCHDpAXSqQqGtwa+pugcgufUjLdRBQqS5IAA=;
        b=NzdQw5CiPcHjWupYSmr+QiYtz0B9CSfzaiG8U0Dec8OVKjhWBuwd7Qdi4e2hph3HP3
         WV6SQcu4dgqnCYvo0L5Hs7KOmtDVyIQRdBJ8h5UBErbZBc8O9ssSysaHD0em4SiY5xj6
         cN+7jrNscBnjBvFZZZyOvHspaxJ+P/Kpo/ojzq5JjFpC/KGSpDtFFGBiuYLJRbuyvVx9
         GR5kCOSi4ml8w/WI72CU65bs1Wuglugu89kJxAi8IvSOoutTtcYizU8qaMDnumAhdBE9
         C0D0/ZBV6WMULuPXTu6mBsTmjG05IWP65+WrCiVE+FoaEAMO1yf2JRYGZP66sW9YLTc2
         3S8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FT2bqJki;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id c4si64997plz.2.2020.09.20.22.55.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2020 22:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id p65so11314569qtd.2
        for <clang-built-linux@googlegroups.com>; Sun, 20 Sep 2020 22:55:11 -0700 (PDT)
X-Received: by 2002:ac8:bc9:: with SMTP id p9mr32852515qti.50.1600667709839;
 Sun, 20 Sep 2020 22:55:09 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
In-Reply-To: <20200919110831.GD7462@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 07:54:58 +0200
Message-ID: <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=FT2bqJki;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841
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

On Sat, Sep 19, 2020 at 1:08 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> >
> > Unfortunately, I don't have any reproducer for this issue yet.
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com
> >
> > general protection fault, probably for non-canonical address 0xffff518084501e28: 0000 [#1] PREEMPT SMP KASAN
> > KASAN: maybe wild-memory-access in range [0xfffaac042280f140-0xfffaac042280f147]
> > CPU: 0 PID: 17449 Comm: syz-executor.5 Not tainted 5.9.0-rc5-syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > RIP: 0010:perf_misc_flags+0x125/0x150 arch/x86/events/core.c:2638
> > Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
>
> Hmm, so converting this back to opcodes with decodecode gives:
>
> Code: e4 48 83 e6 03 41 0f 94 c4 31 ff e8 95 fa 73 00 bb 02 00 00 00 4c 29 e3 49 81 c6 90 00 00 00 4c 89 f0 48 c1 e8 00 00 00 00 38 <00> 74 08 4c 89 f7 e8 40 c0 b3 00 41 8b 06 83 e0 08 48 c1 e0 0b 48
> All code
> ========
>    0:   e4 48                   in     $0x48,%al
>    2:   83 e6 03                and    $0x3,%esi
>    5:   41 0f 94 c4             sete   %r12b
>    9:   31 ff                   xor    %edi,%edi
>    b:   e8 95 fa 73 00          callq  0x73faa5
>   10:   bb 02 00 00 00          mov    $0x2,%ebx
>   15:   4c 29 e3                sub    %r12,%rbx
>   18:   49 81 c6 90 00 00 00    add    $0x90,%r14
>   1f:   4c 89 f0                mov    %r14,%rax
>   22:   48 c1 e8 00             shr    $0x0,%rax
>   26:   00 00                   add    %al,(%rax)
>   28:   00 38                   add    %bh,(%rax)
>   2a:*  00 74 08 4c             add    %dh,0x4c(%rax,%rcx,1)            <-- trapping instruction
>   2e:   89 f7                   mov    %esi,%edi
>   30:   e8 40 c0 b3 00          callq  0xb3c075
>   35:   41 8b 06                mov    (%r14),%eax
>   38:   83 e0 08                and    $0x8,%eax
>   3b:   48 c1 e0 0b             shl    $0xb,%rax
>   3f:   48                      rex.W
>
> and those ADDs before the rIP look real strange. Just as if something
> wrote 4 bytes of 0s there. And building your config with clang-10 gives
> around that area:
>
> ffffffff8101177c:       48 83 e6 03             and    $0x3,%rsi
> ffffffff81011780:       41 0f 94 c4             sete   %r12b
> ffffffff81011784:       31 ff                   xor    %edi,%edi
> ffffffff81011786:       e8 05 c9 73 00          callq  ffffffff8174e090 <__sanitizer_cov_trace_const_cmp8>
> ffffffff8101178b:       bb 02 00 00 00          mov    $0x2,%ebx
> ffffffff81011790:       4c 29 e3                sub    %r12,%rbx
> ffffffff81011793:       49 81 c6 90 00 00 00    add    $0x90,%r14
> ffffffff8101179a:       4c 89 f0                mov    %r14,%rax
> ffffffff8101179d:       48 c1 e8 03             shr    $0x3,%rax
> ffffffff810117a1:       42 80 3c 38 00          cmpb   $0x0,(%rax,%r15,1)
> ffffffff810117a6:       74 08                   je     ffffffff810117b0 <perf_misc_flags+0x130>
> ffffffff810117a8:       4c 89 f7                mov    %r14,%rdi
> ffffffff810117ab:       e8 20 75 b3 00          callq  ffffffff81b48cd0 <__asan_report_load8_noabort>
> ffffffff810117b0:       41 8b 06                mov    (%r14),%eax
> ffffffff810117b3:       83 e0 08                and    $0x8,%eax
> ffffffff810117b6:       48 c1 e0 0b             shl    $0xb,%rax
>
> and I can pretty much follow it instruction by instruction until I reach
> that SHR. Your SHR is doing a shift by 0 bytes and that already looks
> suspicious.
>
> After it, your output has a bunch of suspicious ADDs and mine has a CMP;
> JE instead. And that looks really strange too.
>
> Could it be that something has scribbled in guest memory and corrupted
> that area, leading to that strange discrepancy in the opcodes?

Hi Boris,

Memory corruption is definitely possible. There are hundreds of known
bugs that can potentially lead to silent memory corruptions, and some
observed to lead to silent memory corruptions.

However, these tend to produce crash signatures with 1-2 crashes.
While this has 6 and they look similar and all happened on the only
instance that uses clang. So my bet would be on
something-clang-related rather than a silent memory corruption.
+clang-built-linux

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZhofJhNjfav22YNVpxtH4_%2B3Qaut6rOiqv4MLNU5mcEg%40mail.gmail.com.
