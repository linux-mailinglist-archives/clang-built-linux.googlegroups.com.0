Return-Path: <clang-built-linux+bncBCMIZB7QWENRB7MDUL5QKGQEMYATABI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDDC272140
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 12:35:42 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id q11sf10635434ilt.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 03:35:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600684541; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+vcBkS4GQETmvZD8Hv7jvza/+5FxIcilm5fgt6ydDYQjqYdGLR46+3yxw62/Ni6jw
         5DLLd0/Zznf1qy8ST7hxBAPhoKEnnX6XBda75pRkW3BhAdWcGYFAO42khQHO4GP4G7Yi
         md+cs7+NmhMb6zf1WQmK8foa92ALuY5k+ElNoYUZuDelQAWhyL7dIZuHsvUNIo0fwty0
         R2Jh0oAU5br8UhURcfE2WEnrj319VKCpvCy7hwAHud2s+jX3S40Ft1KOtV2JxSYSp7ex
         OaIaIl1/k/h+LmMZYGAzdr2ksVS7EU/WUttomQSiAeom409NyD5dNS8XzKAIpaQRh5o4
         3nLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nfJXC1OXx6o2vixoP+r+7K7Gw+3siaFcjiSAXf56IH4=;
        b=0NKG2BFmFRHHXErE4FxFi9CYL+hYpHyeuNGnPBjsLWtn+2USqOtLX53BivsUdrbP9A
         SSYk0IDwirHoSd9bwTEibHii6ZYKAFO1MgRrQlh37qDjp8HcNyVUIRb6q1z79k44Fkdo
         Q9LzxRxW4cAtStzdVc8PkXYd7aPuzg76l7s60De03keKM0dBvBvQPQcxcaDH3rCAFX6N
         oKF3KzaYRvYEcwdcD5gxx/Fuz35X0+S5lkg/JMH2QpCsXAT32DMzS2qKrbHavdhVyx/I
         CnqsqKPmRMwjZbXaDzdfPlX4ZDxPC3y5vuvMSgPMoFyUmfW9fhQ95dr/SyEr5MUW8zpm
         eQWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h87IXZy2;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nfJXC1OXx6o2vixoP+r+7K7Gw+3siaFcjiSAXf56IH4=;
        b=jyIGR+b7UtrGtR5QCmfHqjFksD7bkc9Kgk9xgipAYdBPh8G+1z58XSMU4YBv2Q9YXE
         CeQl4M9pxM/kEMlicc4saxE7bF2z0BPeVNC75N/fSHBuIpsV2bMRaVZyX+UzS5iOxSj8
         ntNLIS6CvF9g6DYRmxuCse5+28Y7EeCi/ENhpQQqM+h9KolJ+fvED/jMt0KlHHYXRMS0
         Xf5fetM/js3gEnRr8716rHY2jPLXblHzBkn0Mc9EAVz0eU2t2elDOGJZjT1e0CvnwcVe
         lpLsklqDR26QWH2naZtjnpGySKA6EOdqKox48gzIwK3CcFdtPsnpYHk22SUml0R6W3gW
         yMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nfJXC1OXx6o2vixoP+r+7K7Gw+3siaFcjiSAXf56IH4=;
        b=LjIqYGwZi8u51sGj1K9nPrC/raZ1V0uSRhAA2X+XctxCHyydG5j2RFo1LiI8vStbeF
         GzS1Ojl/9alEcumyxSwKM2vv0708AVZzKhvwLbPYeGJvmKDpIUMoc1O4QTf6VpFWaXc8
         JybtG0Zx3hEAH9kZkoQuOMzbfTg4azflw+1zKsM8IK47I/N16qqZjL+7TDaYDo3fC9JR
         UkFLUu11acDjZPaKt063L9SxNh0VjqkQVQsQwCbVPTECd774tDjC3Q5MmGGgqV2RmR7J
         zGrKke/q56HsXhmTjUbbMMdg9GqIMzwe1DgM5N6ESzRI7vsg90n9tUAnHyz1iTu0U+E9
         OCsA==
X-Gm-Message-State: AOAM530AYGwlByBMqEdVKYR2ZhhoNbm5Mn8Yq7fEHhJCwRPhjwAWgCnb
	KWJWOnD0mEMrE0+NpU0+jSM=
X-Google-Smtp-Source: ABdhPJw7fLHqKnVSQspFMHeOXHz9Xd6Qls0YDGv5X3U4XTe5JnYLOmH9sJe0pTXFGfdq4BEZNgObLQ==
X-Received: by 2002:a5d:96ce:: with SMTP id r14mr35312045iol.146.1600684541493;
        Mon, 21 Sep 2020 03:35:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls1898599iln.1.gmail; Mon, 21 Sep
 2020 03:35:41 -0700 (PDT)
X-Received: by 2002:a92:dc03:: with SMTP id t3mr31464232iln.245.1600684541004;
        Mon, 21 Sep 2020 03:35:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600684541; cv=none;
        d=google.com; s=arc-20160816;
        b=Fzmy0tkum1tX0RfoFSfTHvxdhYEYE3NepTfEh6Q8eomIIruNDxLQuAc3ePwEyaGuao
         6sCXQK6SibWXmJWsCQ1Eh5AuFd/M1rxaU3GXkVEEgjImpAu4c2dZ5i97LmwSJYqRu4vV
         5TWbS5UgbJbvpfbOXp4KPuwAnfit5XMJjwK7SCaclvOJ/jFXHaQbqsv5DSaLnyvbzp8D
         kWiSi05jbe/K5AFmR9TdIFLS5A+M5DKOFrmhkoHeug52XdLUieEKbuGByWQxR2gMjmVx
         g5VCqwSl82R/25enpy417RNI5XLkgQNVQRNEvNqYJqKJtNPRXSOPKyvHJe6IVFCM2aCl
         Qfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PLztuyb5KZBoqqMXOyncGGUkQM8zZk81TCoj2WHVkLI=;
        b=JUuNH07lPIK+M+pzWEsJ0KLnvjEvmgV52m6U5v70CFbbtICt9EL/+4MSMpir2v5Z8s
         /BFw2pMrqwDjMb5eOZlb0Vm/nG1j4xSWQ03TPPfOXQNUBot02ARoLPTmYd8Jvlg4YHSm
         FYYgMzL3AsWnOxlrs2XdwS0M3YkgyOXOeMuqDbHaQ4S/3kzOZzZaST2mZ0uXjiK4d0qd
         IE/Qe4Ba0/wmiKXUEKlp+vV9N17oLnU+MSrFm9d52zXNX1YwxWmKw8Dn11WSQeAc9qdo
         Z29D1jrCO4Br4v4eH0heZx+B04wYsLdUO3voSjuaYJFNQIm6d36pY5+J7M8q3iZUeI9a
         e5Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h87IXZy2;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id s185si744031ilc.0.2020.09.21.03.35.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 03:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 16so14401103qkf.4
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 03:35:40 -0700 (PDT)
X-Received: by 2002:a37:a785:: with SMTP id q127mr43112403qke.256.1600684540203;
 Mon, 21 Sep 2020 03:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000643b2605afd064d7@google.com>
In-Reply-To: <000000000000643b2605afd064d7@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 12:35:29 +0200
Message-ID: <CACT4Y+aVj9QkKdPHFVAJNvHu+RKX5SxYTV1p=TTND+upJ818aw@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in map_vdso
To: syzbot <syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>, 
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h87IXZy2;       spf=pass
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

On Mon, Sep 21, 2020 at 12:34 PM syzbot
<syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following issue on:
>
> HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=162d70d3900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> dashboard link: https://syzkaller.appspot.com/bug?extid=9d25c706da4558b9f11a
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> Unfortunately, I don't have any reproducer for this issue yet.
>
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+9d25c706da4558b9f11a@syzkaller.appspotmail.com
>
> BUG: kernel NULL pointer dereference, address: 0000000000000000
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page
> PGD 0 P4D 0
> Oops: 0002 [#1] PREEMPT SMP KASAN
> CPU: 0 PID: 5029 Comm: systemd-rfkill Not tainted 5.9.0-rc5-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:map_vdso+0x1ea/0x270 arch/x86/entry/vdso/vma.c:308
> Code: 24 31 c9 e8 88 7c a7 00 eb 7a 4c 8b 74 24 28 43 80 3c 3e 00 48 8b 5c 24 08 74 08 4c 89 ef e8 4d 00 00 00 00 20 05 00 00 49 03 <6d> 00 48 89 e8 48 c1 e8 03 42 80 3c 38 00 74 08 48 89 ef e8 ae 64
> RSP: 0018:ffffc90016bafb98 EFLAGS: 00010282
> RAX: 00000000ab3c6738 RBX: ffff888056ebc538 RCX: ffff888093622440
> RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
> RBP: ffff888056ebc480 R08: ffffffff81912471 R09: fffffbfff131e57c
> R10: fffffbfff131e57c R11: 0000000000000000 R12: 00007fffda9dc000
> R13: ffff888093622868 R14: 1ffff110126c450d R15: dffffc0000000000
> FS:  0000000000000000(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000000 CR3: 000000008fac6000 CR4: 00000000001526f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  load_elf_binary+0x2e90/0x48a0 fs/binfmt_elf.c:1221
>  search_binary_handler fs/exec.c:1819 [inline]
>  exec_binprm fs/exec.c:1860 [inline]
>  bprm_execve+0x919/0x1500 fs/exec.c:1931
>  do_execveat_common+0x487/0x5f0 fs/exec.c:2026
>  do_execve fs/exec.c:2094 [inline]
>  __do_sys_execve fs/exec.c:2170 [inline]
>  __se_sys_execve fs/exec.c:2165 [inline]
>  __x64_sys_execve+0x8e/0xa0 fs/exec.c:2165
>  do_syscall_64+0x31/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x7f8127340647
> Code: Bad RIP value.
> RSP: 002b:00007ffc7b57dbf8 EFLAGS: 00000246 ORIG_RAX: 000000000000003b
> RAX: ffffffffffffffda RBX: 000055a0c9286d40 RCX: 00007f8127340647
> RDX: 000055a0c9307440 RSI: 000055a0c91cd210 RDI: 000055a0c924e9a0
> RBP: 00007ffc7b57dd60 R08: 000000000000fe00 R09: 0000000000000030
> R10: 000055a0c9239740 R11: 0000000000000246 R12: 000055a0c91e1228
> R13: 0000000000000000 R14: 000055a0c91cd210 R15: 00007ffc7b57de40
> Modules linked in:
> CR2: 0000000000000000
>
>
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

Another clang-only crash that may be related to these ones:

https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
https://syzkaller.appspot.com/bug?extid=1dccfcb049726389379c

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BaVj9QkKdPHFVAJNvHu%2BRKX5SxYTV1p%3DTTND%2BupJ818aw%40mail.gmail.com.
