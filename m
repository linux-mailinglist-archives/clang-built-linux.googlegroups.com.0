Return-Path: <clang-built-linux+bncBCMIZB7QWENRBNF7W75QKGQEBFK6SFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD422786D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:16:54 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id hr13sf1818471pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 05:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601036212; cv=pass;
        d=google.com; s=arc-20160816;
        b=lVnBxsO8wdtnVm2YvuRDS26vPHUghq/2HUIAx3qmpdZfSQiwewMOq3uNSAQMZEJ5Uq
         FVTmAI3hhwQWag9AjFs7uFdugdcfqJkJx18jVPmUylTtRVJ54tatwob3/bWlrAMBSV0n
         HRAPx2B7dhPUdEHk0mJpRnphinZhx+Ydpogo8zhSUoQAsJsCFFDpqla9HwRROuU37psT
         JwRypKqeZMaeYuWYhbtneF/EYHeq0izM6ZmSkEz25bEMpP6Pr2RbdKR1GCgJvXcgQEHl
         ujwj1VLGNoBruGa8UiwwlZDLnUHHyBXVNjHVq2jMzuhECOcrsmGykahkxTm673nJBuh8
         w4nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5/QSxeQwMzSoDKEh2R7AEhHqdCIO+8obOvVn5rF0Y2Q=;
        b=jurAWUNIYbjEyAqoSGruFN/r1d0c0mJacq2b9vxmg2wY5kcIYhRXYJbvXE0bLLsawv
         aO4tluQ0Au47CiC5cdVEFKhO+f8XPeVFNMdsEZO1eeIWkOtmiRevybRuae8Nz9+LJW7T
         bWmnNITVRv4N+jJZoUxNNNhzF+35JYu/QDYCEzD9La/86zd9Xu7hjxExbFIpVfkr8B0W
         FppCwkFoZ+oixX4OLkgq1yD/Kg77mzjzh2iQHFqCzHmxrdLGgJLlfky007tdmDGWrOoK
         a4JjTLmdAs9ilbsvPUXehkt4MqJj6UFh4o03jKbw67AGz1/BUneK4BhppBfY9CM3UzH2
         uNRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csEiWKAc;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5/QSxeQwMzSoDKEh2R7AEhHqdCIO+8obOvVn5rF0Y2Q=;
        b=IwObaNWwhWqGM0K16lTv5XjAHrdxejqT2+dk2S38tsIGqKK8BRzCJGZSUq+xtJ65WV
         3Vtc2ki2Z85Y++KCu0xThnGfRqGdc144F3Km0PgMFdHByJ+ouKm9otHi+VqwQayFL4k5
         FKYctSZ/HRP3RbtcpJmm1fmE0ec7sxbOwn3es0mfXo0JJyCfz86nCT+CWRwAVeGwjqoO
         JOgNgxK284XB/iNi/UDMnHy001+miftFVVnTvUkOsuhpC5QKv3iXIAMRzJY1gnMMzlZR
         TUm3ZujA7bWgcwZ97RntXHnMu6/0590fp/k2W67o+YmDToCLWcZoQlPHCrbzqzRj5sv+
         /M5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5/QSxeQwMzSoDKEh2R7AEhHqdCIO+8obOvVn5rF0Y2Q=;
        b=NqUgxmapoj6gXfUxDFcddpfaseL1bi6nQJX1jeuAphciv9/i0E6K0EO+ex9nd0wb61
         OEcSJ/AzJJd75rfHpKAbq7u4VisdnY1bBXefp8YXtE5mIA3JXMXQ6yrkWFkdSNQERd+B
         ni9yGIzyDtubYs/fqPt343tQHCIDyrziaYPHORP0ShO7fRLx7QuU5ExHSHj+t8/xHKs6
         IRYRtSCLqLPl7+Mnlh+OTxWMqLtTuSHhZZI3smHo+L7b2l1UEUkiX+S7FduDE+qx95DB
         Cmi0UW35P1GoUx6SfaqxVdzVz6IZkGRi71xnkUj6z+02feZYwEw8L0V603UPIUlZftLB
         plhw==
X-Gm-Message-State: AOAM5302KEq0XE3eQftQCLKFiwxqBv/xn8GSBYy6zV5FEBqSDW0w9T1F
	vy9PRxSf/oB07lv6GUIKUCI=
X-Google-Smtp-Source: ABdhPJyNBL696+I0ufsm/lWlShFVllDAVYHJRettsJnEdzmeuwIkWOqpCenKndMBEHAaONlAsk8Ekw==
X-Received: by 2002:a65:580c:: with SMTP id g12mr3313623pgr.257.1601036212678;
        Fri, 25 Sep 2020 05:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls1024598pfa.1.gmail; Fri, 25 Sep
 2020 05:16:52 -0700 (PDT)
X-Received: by 2002:a63:ca48:: with SMTP id o8mr3417434pgi.210.1601036212127;
        Fri, 25 Sep 2020 05:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601036212; cv=none;
        d=google.com; s=arc-20160816;
        b=FRAX+qOaSXhuA8guwA3IF5IRui6qaSgrMv9080ppCv/zbLA91s1/znsEPw6YKNj9IN
         CQUlE037WChbZrkJFeoTUPVwRL10aOiU1/55HC8NnA6BfDr50UxRXqPZQBeAUPd7/J5I
         10DA+FownMagZtxVBhC40WS76lQgZMryTjbjpuKyqf4YvhWGrN5e4aILZzmpZ8GBs18A
         fEXnZ1gz9/JfOP3EsVHS2J3ge4hknyeGxyl6ht6f/KxKujRMrV0eVtIErCM6sN1LFjCe
         WWAn8of4MDz0dcIhENwT64zR+CNJxByqd3jDAMxBdwjRB4Sz6F++zxPlZHXzxN58f7zP
         TAQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Hj8q/FmKHez+RTbwD6ILhswoO9AT2WUVK36Z22rgM2w=;
        b=Nb0qtSdHJdDZEnHhK0k6uLJ9TTaC7/eeb2jyUvvqJpoLoF4tPNgZbTdsBtUH4GfF2Y
         aUkBIbZa/fAp++zjNmkt8vfZQ4qPt/jJEkvaOHPeUXc9ki02YrjFEYWHjTL+8kOc55BW
         ookstgSJmFr8mNWi8flTlr9oxEZEsBZSjj6ScfqUl1RWr64/i5e3nyvW3F5u2sQSwcDU
         I13CNDofwkqZxrNd3LU68paoTyjh5kFo6fehreEfwVR0xW0oGZVE6bLbaJvd+KpFGrGx
         doCkKkQ1D+jSOjHx9AJcb5BoNKYRsFZtCIv/w37yrXSLp8Nzn6G2GmpEybrABW2M1c2x
         /k4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csEiWKAc;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id g11si157542plp.3.2020.09.25.05.16.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id r8so1588154qtp.13
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 05:16:52 -0700 (PDT)
X-Received: by 2002:ac8:4658:: with SMTP id f24mr4027042qto.158.1601036211095;
 Fri, 25 Sep 2020 05:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000643b2605afd064d7@google.com> <CACT4Y+aVj9QkKdPHFVAJNvHu+RKX5SxYTV1p=TTND+upJ818aw@mail.gmail.com>
In-Reply-To: <CACT4Y+aVj9QkKdPHFVAJNvHu+RKX5SxYTV1p=TTND+upJ818aw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Sep 2020 14:16:40 +0200
Message-ID: <CACT4Y+bTZVpLDQJtZmyzCDL_deyXixmvcf=6rO6Xm-h4b5zC_w@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in map_vdso
To: syzbot <syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=csEiWKAc;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
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

On Mon, Sep 21, 2020 at 12:35 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Mon, Sep 21, 2020 at 12:34 PM syzbot
> <syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com> wrote:
> >
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=162d70d3900000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > dashboard link: https://syzkaller.appspot.com/bug?extid=9d25c706da4558b9f11a
> > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> >
> > Unfortunately, I don't have any reproducer for this issue yet.
> >
> > IMPORTANT: if you fix the issue, please add the following tag to the commit:
> > Reported-by: syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com
> >
> > BUG: kernel NULL pointer dereference, address: 0000000000000000
> > #PF: supervisor write access in kernel mode
> > #PF: error_code(0x0002) - not-present page
> > PGD 0 P4D 0
> > Oops: 0002 [#1] PREEMPT SMP KASAN
> > CPU: 0 PID: 5029 Comm: systemd-rfkill Not tainted 5.9.0-rc5-syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > RIP: 0010:map_vdso+0x1ea/0x270 arch/x86/entry/vdso/vma.c:308
> > Code: 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 00 00 00 00 20 05 00 00 49 03 <6d> 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 ef e8 ae 64
> > RSP: 0018:ffffc90016bafb98 EFLAGS: 00010282
> > RAX: 00000000ab3c6738 RBX: ffff888056ebc538 RCX: ffff888093622440
> > RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> > RBP: ffff888056ebc480 R08: ffffffff81912471 R09: fffffbfff131e57c
> > R10: fffffbfff131e57c R11: 0000000000000000 R12: 00007fffda9dc000
> > R13: ffff888093622868 R14: 1ffff110126c450d R15: dffffc0000000000
> > FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > CR2: 0000000000000000 CR3: 000000008fac6000 CR4: 00000000001526f0
> > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > Call Trace:
> >  load_elf_binary+0x2e90/0x48a0 fs/binfmt_elf.c:1221
> >  search_binary_handler fs/exec.c:1819 [inline]
> >  exec_binprm fs/exec.c:1860 [inline]
> >  bprm_execve+0x919/0x1500 fs/exec.c:1931
> >  do_execveat_common+0x487/0x5f0 fs/exec.c:2026
> >  do_execve fs/exec.c:2094 [inline]
> >  __do_sys_execve fs/exec.c:2170 [inline]
> >  __se_sys_execve fs/exec.c:2165 [inline]
> >  __x64_sys_execve+0x8e/0xa0 fs/exec.c:2165
> >  do_syscall_64+0x31/0x70 arch/x86/entry/common.c:46
> >  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > RIP: 0033:0x7f8127340647
> > Code: Bad RIP value.
> > RSP: 002b:00007ffc7b57dbf8 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
> > RAX: ffffffffffffffda RBX: 000055a0c9286d40 RCX: 00007f8127340647
> > RDX: 000055a0c9307440 RSI: 000055a0c91cd210 RDI: 000055a0c924e9a0
> > RBP: 00007ffc7b57dd60 R08: 000000000000fe00 R09: 0000000000000030
> > R10: 000055a0c9239740 R11: 0000000000000246 R12: 000055a0c91e1228
> > R13: 0000000000000000 R14: 000055a0c91cd210 R15: 00007ffc7b57de40
> > Modules linked in:
> > CR2: 0000000000000000
> >
> >
> > ---
> > This report is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this issue. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> Another clang-only crash that may be related to these ones:
>
> https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c

There is strong indication that this is a manifestation of the same
problem we see in other crashes.
Let's make one canonical bug for this:

#syz dup: general protection fault in perf_misc_flags

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbTZVpLDQJtZmyzCDL_deyXixmvcf%3D6rO6Xm-h4b5zC_w%40mail.gmail.com.
