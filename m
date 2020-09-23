Return-Path: <clang-built-linux+bncBCMIZB7QWENRBOFGVT5QKGQEKMQOBKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FD5275440
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 11:19:55 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id u6sf18658408qte.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 02:19:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600852794; cv=pass;
        d=google.com; s=arc-20160816;
        b=MF0LeXeuOneoF83pQZbymaF4l/gveJuLczCnK/1qd8fNmdJgOdReHCi9e+tybyDRIa
         +c8xfM3wnViVM8yA0KsumdbMC3sb997fv3jri5zY/MwLRmEnfwlEIC54i9XvN0NnO2Fg
         3Vcn8UqnRVsTXxSvt0Us7F77qbFyJVl7AoiZEw5DkfSL+0A3QEZjeBEdW+eTsLvTFG5i
         QYMhYIwzR5vVvOj4iTH7xLRLRVjDjfLxDukQcUDASUQPuVO6HZlv1Kq0laoBb2zBv0wS
         nGABN1EJufQOcMvResvyXDATFP9xOFFe9xbJbqKRfrCmYsm+poTrHuK1HgRSehRiLhD8
         aQ3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=voqM5/NKR3hYmQwSLApqf5VWw7syjRDNkGkqeyLUH2U=;
        b=V/rAVmDhFvztMt51sK5MZy5DXUMuBhZcyAs7L/4QO5bYWodHrT+9OB7mQEJyqzXmVK
         y5ykD2NFGfjQ/PRpaKF2FbjLPH1l8TdcDexQSF7zfQpgP/oplvpA8Gb3kEnf55bgxjdN
         sU1FyxKfoM4pj5bLNwz1PrauU5oFi+MvA2l3NGL4+qw+xX2lZ2vJh6iKl2DRTGBRn+04
         Syw1IC2kcujhbwjLUEjeMKm2kwl9U0ke4i9IwNbiOJiof+6rd2cLzdj6u2+8TKH3E2ar
         pOVrwBKpAJ7YeaKXUJqxKkwMR/9WBbMLiTqGD5+E+zmNeziCxK3R12386r0eSVsN48u8
         I53Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I5h4NcId;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voqM5/NKR3hYmQwSLApqf5VWw7syjRDNkGkqeyLUH2U=;
        b=F1xsnPqgaQkq7tOj9LycLa3t22r+U47Qi5C2UNbczl/umu5mmnu9blTgtKzrH/lE+w
         B1zz85YGqDXvbnF/USMJoQbQx/V8n15C2vuZRE4+ITONYO27MODEGBiFoQgIOu7Pnha+
         h5wYx2LQQAtdeM9r7YHIwQycnVATnhiLlGxgTzWcL8bhkYwuZZIPh9Hhcgf+UFQsFDuR
         lwcpsBWDjoR2xMOy7MFSIG5Fgz0aPLZESdfZ6SX0AD2B5fkMPpOk7l65w7254A54Gvhi
         LLk8xFGAIEvJWBPlQaf582dmhe1kV/o8qm+V7SIzgisiKAKXKljf+x8oRcCrWObLhwtV
         cW5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voqM5/NKR3hYmQwSLApqf5VWw7syjRDNkGkqeyLUH2U=;
        b=D/cReuXOI/AyRrn/cZlRjzvQ4fjKGquGMAQW1mcFqwvk15JpdicRLyPxN+n8vrxwq3
         VzXKsyqvfZcVNEw/FQX/cVD+89Bnbc9UHRSXIGwwSBrmc3Hw7ZKRfhmIy49DTMVtQjFL
         3KGTnTs1EiPLp3Hss/rO8mGGr0pCT9VNf1oe5FOeIf7tG6Z/ctz89ZDqAH8cmO7ny5ck
         NHoqso3gl+vg+HFWLmelq4pGX+7T3GbhCh9t1zl+qKm+3+NQvWnfTUcZ21GTdkyQT2iw
         138lXtuxyftz+se2FWdODHPUblPnXEUtn23i5+GhoQejuc0oWFNwDkijxL6LyBPQ4di8
         bY2Q==
X-Gm-Message-State: AOAM5335MeivpDR6Mqp7l1ZrR91nHWbMz1WYEJCnnPegqRLVkGl9QJSG
	MQYrH644oAdO6PZfGZJ+zGs=
X-Google-Smtp-Source: ABdhPJziyHOVbPVZ/OjAf6c9FkZ2OjpiF8b2aogYz5f5uwnFoa8X1Es5ZzqWEZZ5PxEo4OE7f+sLdA==
X-Received: by 2002:a05:620a:13e8:: with SMTP id h8mr8856274qkl.322.1600852792280;
        Wed, 23 Sep 2020 02:19:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3405:: with SMTP id u5ls7627552qtb.1.gmail; Wed, 23 Sep
 2020 02:19:51 -0700 (PDT)
X-Received: by 2002:aed:2a17:: with SMTP id c23mr9399548qtd.338.1600852791813;
        Wed, 23 Sep 2020 02:19:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600852791; cv=none;
        d=google.com; s=arc-20160816;
        b=b4IySV0JBO5GHunxt4VP3vTIjBOpkEKSurfmGwCCpIQ1DQSphAGkjRpVtC+xCBxqtN
         RGALRSNj08iv+agG0dL1/F13baXeG4NGnOJ2/M7B6pb78LVEz85S4VL+IbiTmFQeqCcg
         y2ZjiRJ6EuQuXMPs/u6gYUvZ6QI2xMzLN4vh06TxVDjYToO1GBhqJxQMnErIr9OC82hq
         7vPmMxfKCxUrPFa+WxV/hefJ4Xkdpupk8NimB1ueCRc8PUAkVR/ADibjJDAWvTGpHLcS
         C+6L8EEukliNIHa1UHEg1nbnxz4kxLf9s9oie0/mIOkh5wYroMRpyiHxczHd9wkM36sV
         XGrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fwLKEMZq2g3KXgWN/NS+95Zv72nRgO61juiwlvI19SE=;
        b=tQnZcpgAM2Gb7wEH5o4ljDaHm5YqyNrBFv5FxoQXV5898sQI6Zm73lK0YpLa2s5AA7
         Xm6bOHDqRVna66aU7KQImdjgBqd4ZaVmxuC+xpJD9V5TbYLPf4k4d6wnS3tVdYuvyol4
         l0xpYIK/y6G4JGwRMULbCaqb1JvAn2d/ndlQwTp+XIwHgKGsxwiSIqF+mGtxiiZgqE2W
         1hyl3j7jzGlslFjfdjGHQ/9yHf3EqKm5rOWnoPHLt9HGzkB0klqPt4F4eQ7+qIHLKvZA
         qtntEtXbyaqt5PRFKzs5pvM5jaEjZkBFEZb11r/1KFl46v10Syqz/rPO0Tn9PlNdh7na
         nB6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I5h4NcId;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id a27si990713qtw.4.2020.09.23.02.19.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 02:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id t138so22134438qka.0
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 02:19:51 -0700 (PDT)
X-Received: by 2002:a37:9b82:: with SMTP id d124mr9180680qke.8.1600852791197;
 Wed, 23 Sep 2020 02:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000096760d05aff79022@google.com>
In-Reply-To: <00000000000096760d05aff79022@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 11:19:40 +0200
Message-ID: <CACT4Y+YGFtPCi3a-ByZGs1kCFfJOYv_AbkxOG=K_D4xh0r4okA@mail.gmail.com>
Subject: Re: invalid opcode in map_vdso
To: syzbot <syzbot+9cf5373b0e15476f39a2@syzkaller.appspotmail.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I5h4NcId;       spf=pass
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

On Wed, Sep 23, 2020 at 11:18 AM syzbot
<syzbot+9cf5373b0e15476f39a2@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=1553eff1900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> dashboard link: https://syzkaller.appspot.com/bug?extid=9cf5373b0e15476f39a2
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+9cf5373b0e15476f39a2@syzkaller.appspotmail.com
>
> invalid opcode: 0000 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 16405 Comm: modprobe Not tainted 5.9.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:map_vdso+0x1e3/0x270 arch/x86/entry/vdso/vma.c:308
> Code: 16 48 89 ef 48 8b 34 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 77 70 70 <07> 20 05 00 00 49 03 6d 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74
> RSP: 0018:ffffc90006167b98 EFLAGS: 00010246
> RAX: ffff8880a7db8420 RBX: ffff88809d5fd7f8 RCX: ffff8880a811a040
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> RBP: ffff88809d5fd740 R08: ffffffff81912471 R09: fffffbfff131e57c
> R10: fffffbfff131e57c R11: 0000000000000000 R12: 00007ffea1107000
> R13: ffff8880a811a468 R14: 1ffff1101502348d R15: dffffc0000000000
> FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007f33d09f8fc0 CR3: 0000000097210000 CR4: 00000000001506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  load_elf_binary+0x2e90/0x48a0 fs/binfmt_elf.c:1221
>  search_binary_handler fs/exec.c:1819 [inline]
>  exec_binprm fs/exec.c:1860 [inline]
>  bprm_execve+0x919/0x1500 fs/exec.c:1931
>  kernel_execve+0x871/0x970 fs/exec.c:2080
>  call_usermodehelper_exec_async+0x204/0x330 kernel/umh.c:101
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
> Modules linked in:
> ---[ end trace 8d12c4aa58699b40 ]---
> RIP: 0010:map_vdso+0x1e3/0x270 arch/x86/entry/vdso/vma.c:308
> Code: 16 48 89 ef 48 8b 34 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 77 70 70 <07> 20 05 00 00 49 03 6d 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74
> RSP: 0018:ffffc90006167b98 EFLAGS: 00010246
> RAX: ffff8880a7db8420 RBX: ffff88809d5fd7f8 RCX: ffff8880a811a040
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> RBP: ffff88809d5fd740 R08: ffffffff81912471 R09: fffffbfff131e57c
> R10: fffffbfff131e57c R11: 0000000000000000 R12: 00007ffea1107000
> R13: ffff8880a811a468 R14: 1ffff1101502348d R15: dffffc0000000000
> FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007f33d09f8fc0 CR3: 0000000097210000 CR4: 00000000001506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

+clang-built-linux
Looks like another one with kernel code overwrite in clang build.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYGFtPCi3a-ByZGs1kCFfJOYv_AbkxOG%3DK_D4xh0r4okA%40mail.gmail.com.
