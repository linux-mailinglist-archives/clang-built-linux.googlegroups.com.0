Return-Path: <clang-built-linux+bncBCMIZB7QWENRBHPC2L5QKGQEUPDYLQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id E054127EF08
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:23:58 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id r1sf49484pjp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:23:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601483037; cv=pass;
        d=google.com; s=arc-20160816;
        b=mjyasAwxMGz6KGdlqfXbOODtRitILqazuOozCl71a3Px0SXpXG1bTUOeA/Fp8tEesu
         IhRYZBSsSZ1gWLnbJkVv7S8Q9J7OdTSXmtEtCmCgkooS8sFjZZL/3WEmryhW8SOJOaMV
         1yLJDZxrwVWdeWVc6FKwFdcuWW1AuorWZh9w0rN64VC+OlcisOjP+/LS/7wtv+YW+mRg
         lpaRYTkyA7AIYtvBm27O7lDPgvZAVsLv8b2LfUDPbKnQcB1xZ6wU5xY7/Z1vtSXKC4dJ
         URH47Z01qL4g2VUDA90s9gb94W0MG2+umKRiCwyVyYQrj0tX99fd88bI0Lt+TvRcOSCU
         pZCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GWSWUkrmOOBpm8ISTqjGtwK9OJ18ARgnE2nhZkkUDa0=;
        b=NBmRWd3Twb/VzRuJv8q2AJPvUndPuVjiUE6GxCLZMW5x8ytxFCR8y8k2j2YIoBmtXG
         Sd1xkKrlEiTPHMyVWSkb4ZFsp8GK+m6085hP3E/CJur7H+0CTLAsYVemf/VliVeROYGq
         N3rec50ee3VctbDGk/7ypd4Tb7qjpfXhfC46YfXPR3H0/iM9QeQ0udS58SoNUbsQJ19M
         xFHGzWXa46Sd5dypO2g91VSedlOZ2vx6VHXAI+Rt2alme/Pzf4EXiWg7JEx+H4o9buYv
         IBp1IsSqoxMYq+6z+CHH1gii3gskrcsI99kkroYJ8yUOik5oqwMiaW0zL61wy1FHshJL
         1A9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="wQ/TGV8c";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWSWUkrmOOBpm8ISTqjGtwK9OJ18ARgnE2nhZkkUDa0=;
        b=oRtmJnwlyMschSsPj5g9qjQgzN5H8Ngxe2JAzHHNsLIX6g/lMKYElUYr//n13rBctS
         14/kKz05LlacBRTtviiOqzgGEa22cfqL3Z+LWpdemy4ZiZvtoLl9jiE8khZT7OGpDL+c
         lIKe8z5vZh4Yy6PT58GsShud9FrEVSEoVfneV0gegLQHAP2H/ECDvnnqQIQ/rxmy2WxT
         izAPigKDDrr/1LKaBUqVxYVFbBJ0VYO00Vej79mXryd/uaIMSqYJX7EdldfUT4WfiK5a
         7sF/mHzibvSrRJcRK5cMwo1qYbBVFOLNRgU5hY2rEOaRv1pQa+2US/hgycnVTjAXoLgS
         panQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GWSWUkrmOOBpm8ISTqjGtwK9OJ18ARgnE2nhZkkUDa0=;
        b=topOA8ybCk8rOTEXcHNQYflpKkVm2IOAD8hWZNg0+7nbNtGoxRiPhPkN8I0n+eIMhp
         Svx6Z48qAUIVTy4Z869cn3cm6vL+7ifBOxxXm40rzRWJBYsP7jQW64+rkyCR0GPnLf4m
         Mk2x9TzXEOiObsT74Qpnr6Oy6w7OyZ98OCDvZxl44ltgi++MOTcgtMknM8SOmi4qYQEW
         2PfmFI+Ccb+h1FGChVfQjQosyGWSXuksgunSMPL9rKA9bt8M5I3GxQ61p65kjeIOTQRd
         1rtwHdbsT50HUGvkeVOYMUTFkEVQrTTvBixCQ0MFNaqI04SlGOmWY1V8DD9zncYnOHr6
         xu9A==
X-Gm-Message-State: AOAM531To3uykypJkASXW8ik83gur5qtQHFQSjdzKrnc2/djHL/lEdPA
	SMPNdo2CIl4g5PPEfTiTyJo=
X-Google-Smtp-Source: ABdhPJw1KPOjcIdDQXX6o1imkqsn7AuXzgt80QBqCZNuk+4ZYpJvuFPSVPxbjvNv5GgC5E+9Mzdvtg==
X-Received: by 2002:a65:45c5:: with SMTP id m5mr2849557pgr.252.1601483037616;
        Wed, 30 Sep 2020 09:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls830092pgc.3.gmail; Wed, 30 Sep
 2020 09:23:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:844:b029:13f:dd99:d1a4 with SMTP id q4-20020a056a000844b029013fdd99d1a4mr3459891pfk.31.1601483037015;
        Wed, 30 Sep 2020 09:23:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601483037; cv=none;
        d=google.com; s=arc-20160816;
        b=wPS6cmUrPrhdN3Lg53BHw8njQhTXdYCt3g+D02TM4cVF7Cjqz3i/x5ARo/oBtG1Zdh
         1Ds80VJ3dXBpOqt2s6dvNFUcHpTjwj9j7sHBkxtqnoJ+f9bfg+pXbpqGC9qU8/We3+xU
         HqadDsZtmC4Z3VfA/f9remzyB5Lms5EfpHKrNDSS9nKfaPc/5Vvsx9Cis4aa5eXxyS96
         Fn24b4XtYC2TFE2Lld0Osj3GoJ9naoKbF0Eu/WCrsKIADeBSUNp1XdOsrS1Ky/6VNdt3
         dT/gL25qtMnf2dJZYR4hgQGxg6hffnuquH6CGcipIuElxBkfxOFnOiTa7SutFKc+SJVp
         4Iyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ooUSvbCCQ9/XhBGfI5xDVoSXEnZoggM8/6CQ7IOBuLU=;
        b=YupcKPBlKJtmYmTQ6RSyNRtim6p1ssSyH16Np/dijZEAbYH8kZGFWepasBZBKhDen2
         EJCQM2z6pGglKaWpwzk6TN6xJM/uGyOgacJNQLp3Qm7rtr7omYlJW6syxwzDHIkohjww
         inUF1Is+XHDlGEZ5K+zFdIl78YtG3eCeBddBtuTIY6b1ssu0vVKLVQ/U3DCULcAEiBs+
         A7Q8MFI/m/BIgNjCY4nLje+01/Ac2mwjHmr23e+XvcZUSJVyE8XujDQYzHrNVRMQWO6z
         AQXS7AwqCvAzGBKdslUEhm5b5zhnNGx/r7grwPQjwAL30QncKG2ZPmCncIi8eJXgPdpT
         A27w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="wQ/TGV8c";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id oc11si9349pjb.1.2020.09.30.09.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:23:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q63so2004486qkf.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:23:56 -0700 (PDT)
X-Received: by 2002:a37:a4c5:: with SMTP id n188mr3467803qke.8.1601483035866;
 Wed, 30 Sep 2020 09:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200927145737.GA4746@zn.tnic> <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic> <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic> <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com> <20200930161711.GH6810@zn.tnic>
In-Reply-To: <20200930161711.GH6810@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 18:23:44 +0200
Message-ID: <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="wQ/TGV8c";       spf=pass
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

On Wed, Sep 30, 2020 at 6:17 PM Borislav Petkov <bp@alien8.de> wrote:
>
> Hi,
>
> one more thing I just spotted. The default install of syzkaller here
> runs the guest with this on the kernel command line:
>
> 2020/09/30 17:56:18 running command: qemu-system-x86_64 []string{"-m", "2048",
> "-smp", "2", "-display", ... "-append", "earlyprintk=serial oops=panic ...
>  nmi_watchdog=panic panic_on_warn=1 panic=1 ftrace_dump_on_oops=orig_cpu rodata=n
>                                                                         ^^^^^^^^^^
>
> which basically leaves guest kernel's memory RW and it gets caught
> immediately on vm boot by CONFIG_DEBUG_WX.
>
> This pretty much explains why kernel text can get corrupted with a stray
> pointer write or so. So what's the use case for rodata=n?
>
> [    2.478136] Kernel memory protection disabled.
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


Ha!

Here is the answer:
https://github.com/google/syzkaller/blob/master/tools/create-gce-image.sh#L189

# rodata=n: mark_rodata_ro becomes very slow with KASAN (lots of PGDs)

I have some vague memory that there was some debug double checking
that pages are indeed read-only and that debug check was slow, but it
was always executed without rodata=n.

> [    2.478689] x86/mm: Checking user space page tables
> [    2.550163] ------------[ cut here ]------------
> [    2.550736] x86/mm: Found insecure W+X mapping at address entry_SYSCALL_64+0x0/0x29
> [    2.551612] WARNING: CPU: 1 PID: 1 at arch/x86/mm/dump_pagetables.c:246 note_page+0x81f/0x13a0
> [    2.552577] Kernel panic - not syncing: panic_on_warn set ...
> [    2.553240] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.9.0-rc7+ #5
> [    2.553953] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.14.0-1 04/01/2014
> [    2.554922] Call Trace:
> [    2.555233]  dump_stack+0x9c/0xcf
> [    2.555633]  panic+0x250/0x5a0
> [    2.556004]  ? __warn_printk+0xf8/0xf8
> [    2.556450]  ? console_trylock+0xb0/0xb0
> [    2.556914]  ? __warn.cold+0x5/0x44
> [    2.557332]  ? note_page+0x81f/0x13a0
> [    2.557768]  __warn.cold+0x20/0x44
> [    2.558176]  ? note_page+0x81f/0x13a0
> [    2.558641]  report_bug+0x168/0x1b0
> [    2.559059]  handle_bug+0x3c/0x60
> [    2.559458]  exc_invalid_op+0x14/0x40
> [    2.559894]  asm_exc_invalid_op+0x12/0x20
> [    2.560368] RIP: 0010:note_page+0x81f/0x13a0
> [    2.560870] Code: 26 00 80 3d 9a d0 7f 02 00 0f 85 82 f9 ff ff e8 47 3c 26 00 4c 89 e6 48 c7 c7 40 aff
> [    2.562951] RSP: 0000:ffff88800e9f7a90 EFLAGS: 00010282
> [    2.563554] RAX: 0000000000000000 RBX: ffff88800e9f7e00 RCX: 0000000000000000
> [    2.564361] RDX: ffff88800e9edb80 RSI: 0000000000000004 RDI: ffffed1001d3ef44
> [    2.565167] RBP: 0000000000000200 R08: 0000000000000001 R09: 0000000000000003
> [    2.565973] R10: ffffed1001d3eefd R11: 0000000000000001 R12: ffffffff96e00000
> [    2.566780] R13: 00000000000001e3 R14: 0000000000000000 R15: ffff88800e9f7e58
> [    2.567587]  ? __kprobes_text_end+0xb3598/0xb3598
> [    2.568122]  ? __entry_text_end+0x1fea85/0x1fea85
> [    2.568754]  ? __entry_text_end+0x1fea85/0x1fea85
> [    2.569288]  ? __entry_text_end+0x1fea85/0x1fea85
> [    2.569821]  ptdump_hole+0x61/0x90
> [    2.570212]  ? ptdump_pte_entry+0x100/0x100
> [    2.570712]  walk_pgd_range+0xdb8/0x15f0
> [    2.571178]  walk_page_range_novma+0xd9/0x140
> [    2.571689]  ? walk_page_range+0x2b0/0x2b0
> [    2.572171]  ? console_unlock+0x58f/0xb10
> [    2.572644]  ptdump_walk_pgd+0xcd/0x180
> [    2.573099]  ptdump_walk_pgd_level_core+0x13c/0x1b0
> [    2.573663]  ? effective_prot+0xb0/0xb0
> [    2.574117]  ? vprintk_emit+0x214/0x380
> [    2.574601]  ? ptdump_walk_pgd_level_core+0x1b0/0x1b0
> [    2.575186]  ? memtype_copy_nth_element+0x1a0/0x1a0
> [    2.575752]  ? __kprobes_text_end+0xb3598/0xb3598
> [    2.576300]  ? pti_user_pagetable_walk_pmd+0x130/0x460
> [    2.576894]  ? __kprobes_text_end+0xb3598/0xb3598
> [    2.577441]  ? __kprobes_text_end+0xb3598/0xb3598
> [    2.577988]  ? __kprobes_text_end+0xb3598/0xb3598
> [    2.578564]  ? rest_init+0xdd/0xdd
> [    2.578972]  ptdump_walk_user_pgd_level_checkwx.cold+0x31/0x36
> [    2.579640]  pti_finalize+0x7b/0x170
> [    2.580066]  kernel_init+0x5b/0x183
> [    2.580484]  ret_from_fork+0x22/0x30
> [    2.581010] Dumping ftrace buffer:
> [    2.581456]    (ftrace buffer empty)
> ffffffffbfffffff)
> [    2.583137] Rebooting in 1 seconds..
> 2020/09/30 17:56:23 failed to create instance: failed to read from qemu: EOF
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w%40mail.gmail.com.
