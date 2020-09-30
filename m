Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBEO72L5QKGQE66VFIJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BBD27EEBC
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:17:22 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id q19sf646092ljp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601482641; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcCXMDohUoJt+EXr9HtuEyxy7eYb+hFIS54x01hAcIVXCBzf42SGElY6xygx/gdFAZ
         e1d1tAPnWXogbAFEl+JM3FqIngyo+UhG+iEi9OziRXu4JxknDc41Jn1dxo+BbPSq51Nv
         KcN4OAzgE5pObhJT7QY8cROda7YPK1ngIt75oIlFyz9ckItgVExA7wNqbPD4OVY4n0dx
         qSYitx+b3U3dEgcjUBcU0ZnKdTe8Panp7LmzsHWdN5vA6aJszqfrfRlDiC9x94Y1fomq
         SVw7oF0RkMvogTmMfpxvjHjATQz5TO6NAGvZElg8tf4jQwzpxc3/+aLNe43JDmmyDEid
         cAkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=94oTaf8W8F37Qb74HdsxavrlVPhnO8JH3LtDA2ZQ9Q4=;
        b=E6KQWpgDXCueB9m/qu3rEcD8L9yw8jdi7jhFz0y/4nLUWiIyS4UhpK7uJSw62hM2L5
         d02rHp85i75ytP4RVv/9dmowbrbEshN8Mxe/p3z2aQ8EvEU+mKGO+qY5Og85uG2vpVMA
         WCIWljV0XcAH7vh2hTFqbp2VWBOhNQAfuQByI8sjwhfKz9xq9b2WyDbdaT37e7nRRf7e
         WiCkDi0ppE09cShcLuBBj3jzcFpS1ImkoNsrUvlz3rUX/9MACrG1665/nFiBvUbqhs6H
         cBNKScU2blmJ0v0ANHavP75/plEBmEfW36BA9ytiVBHS5xl8g3gbj1j/A1IPMWUEdQaz
         7v2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=D5Hccgaq;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=94oTaf8W8F37Qb74HdsxavrlVPhnO8JH3LtDA2ZQ9Q4=;
        b=oy8r19LL1+19xDAhotN/Gz1H3kfEBMjp8H8OkgXXYnqmpy9lPtrQpmQPWvhvoN6/F8
         W47QnrZIuxlkRgI9ArkP+2TYCpHwg7+XiWvKMimRLHmlTprO3HGUmFyglCpIQ3qdFL1i
         AFh9fl0vQdOuIUwX6PaYJYWosGyITw+gShTt8fUiKUjedN74E5EciKEPwrbk6V7PJ0gI
         QC6QE0/jhuHqYkgJPVLjcSSDXw1Zm4JgoeF4ykpDDB46UUsibb7PicHRSuK0RTlpvh+v
         F7QdILWJPIOSdb+UaHXS8p1+RrJZuoUwNjZp79FqLBC0jBLGo2wGD+WaxscF160Vws5C
         al2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=94oTaf8W8F37Qb74HdsxavrlVPhnO8JH3LtDA2ZQ9Q4=;
        b=NzD5Gl7fh0J/jFXj6o30JuqzMnWBtQ6fYfYbn+J3Jq7PbGLq6JwQZdbms/UXuqCNbo
         g5E2k323eo3tEyjTWhU4hDPhvh6KhGlrtwFDkAQt1JZKuYU+oZbc7hMv2eJvDPp02lXG
         OJPsYsp5Odlpq6XVjxIliCGzQUn0XkuJ/zMcclfq8yh1cIrOGP2R9KTURABFLhdim6I+
         6kb5Ke52LWlA8QHEWxIugUko4jgWefsrRq6rj535n29uYmjcFQ5elIbQIBsJO8GiLkIt
         oT81dYAcApFDxwfq0UPVyAczgMthk8ovE6/8Y9IfWI7RLizmR6HGstkp94WLdLeILajv
         4Qug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jPdQ26FWqieTgPVbWanUPXufmiKXlSiLTQFl09bNrS7HrgSQF
	a4nVvfcp7VkLXwyxKHV3c28=
X-Google-Smtp-Source: ABdhPJzwuqXk2Ezrmpe9mE7IE+siLI5C7bX0UGhWXx3NwkmJ/7R/Ki33f9k9sCgL7qy3BT2Xqj6wvw==
X-Received: by 2002:a05:651c:84:: with SMTP id 4mr1211110ljq.308.1601482641745;
        Wed, 30 Sep 2020 09:17:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls752535lff.1.gmail; Wed, 30 Sep
 2020 09:17:20 -0700 (PDT)
X-Received: by 2002:ac2:529c:: with SMTP id q28mr1272709lfm.104.1601482640695;
        Wed, 30 Sep 2020 09:17:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601482640; cv=none;
        d=google.com; s=arc-20160816;
        b=QBmZYDFl7sKcPiniWYx45uvKAdNTw2ncVvK3CnjmNt9sRHdi4+75rpOd5izDcessmi
         r+ODvwJAcmEfvrLxug2ia3y7YUfzAQq47fZHreuvsYFNWrZ+uZAPD2GdZIwdyNiAj42E
         rYA6opc8x0geIP9AEpmH1x4R7CekVla3lnCh/hAugji1Acnbt4NqhZe+AO7DdYoRLnO4
         kbeO1UVAEJvxcQGoZSF7Q8JSgeQVQeVfhNJiNGTTlp0yPxs4goiWk41ue0xnH3f+idRx
         HuyhfZopVTISkE6WLn6V3PcpmZy2KLlxfRcxxTOJG5kzbey0PwSSm2dRXsuFGeZ5D0Be
         veRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q/B7AUvp/TsC2+O6Nnel6C03UUi8HMFCMeMJsOJ3dPY=;
        b=t9uNl5Wel1CZK1y4L+Iu0ZJQCEr3j+qRMpzevvmbVp7SOTKsy9BCDlBoK+9vLERmys
         6hKlEx34rOt5IU5WK7P1HfeigaBdMNrwDD3zCfS7ZdXWYQqSfe9FcUXsyAujFrxSEGr+
         4oUAzfm2n910IjwSt5DWwP9koXh8mVlk1hRDinZpwVLcM27UsXI5XFASFY633wMXcpbN
         9C5Z33Rgo565QTdLrfMFj2mrTy+YJD5IgAtOaH4TEZiMl34O0XkaRtxSNiyCaZCSO4Fu
         kS1ShqQjXdKRosGtiA3WSP3fSWYzhaXECSUzas4/7vBGXHbhylBKHNjNx+V+D7uVLpPC
         JZpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=D5Hccgaq;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id y75si55137lfa.3.2020.09.30.09.17.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f092a00869c7b979af15d7f.dip0.t-ipconnect.de [IPv6:2003:ec:2f09:2a00:869c:7b97:9af1:5d7f])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C2CE41EC0434;
	Wed, 30 Sep 2020 18:17:19 +0200 (CEST)
Date: Wed, 30 Sep 2020 18:17:11 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	syzkaller <syzkaller@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200930161711.GH6810@zn.tnic>
References: <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic>
 <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
 <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic>
 <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=D5Hccgaq;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

Hi,

one more thing I just spotted. The default install of syzkaller here
runs the guest with this on the kernel command line:

2020/09/30 17:56:18 running command: qemu-system-x86_64 []string{"-m", "2048",
"-smp", "2", "-display", ... "-append", "earlyprintk=serial oops=panic ...
 nmi_watchdog=panic panic_on_warn=1 panic=1 ftrace_dump_on_oops=orig_cpu rodata=n
									^^^^^^^^^^

which basically leaves guest kernel's memory RW and it gets caught
immediately on vm boot by CONFIG_DEBUG_WX.

This pretty much explains why kernel text can get corrupted with a stray
pointer write or so. So what's the use case for rodata=n?

[    2.478136] Kernel memory protection disabled.
		^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

[    2.478689] x86/mm: Checking user space page tables
[    2.550163] ------------[ cut here ]------------
[    2.550736] x86/mm: Found insecure W+X mapping at address entry_SYSCALL_64+0x0/0x29
[    2.551612] WARNING: CPU: 1 PID: 1 at arch/x86/mm/dump_pagetables.c:246 note_page+0x81f/0x13a0
[    2.552577] Kernel panic - not syncing: panic_on_warn set ...
[    2.553240] CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.9.0-rc7+ #5
[    2.553953] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.14.0-1 04/01/2014
[    2.554922] Call Trace:
[    2.555233]  dump_stack+0x9c/0xcf
[    2.555633]  panic+0x250/0x5a0
[    2.556004]  ? __warn_printk+0xf8/0xf8
[    2.556450]  ? console_trylock+0xb0/0xb0
[    2.556914]  ? __warn.cold+0x5/0x44
[    2.557332]  ? note_page+0x81f/0x13a0
[    2.557768]  __warn.cold+0x20/0x44
[    2.558176]  ? note_page+0x81f/0x13a0
[    2.558641]  report_bug+0x168/0x1b0
[    2.559059]  handle_bug+0x3c/0x60
[    2.559458]  exc_invalid_op+0x14/0x40
[    2.559894]  asm_exc_invalid_op+0x12/0x20
[    2.560368] RIP: 0010:note_page+0x81f/0x13a0
[    2.560870] Code: 26 00 80 3d 9a d0 7f 02 00 0f 85 82 f9 ff ff e8 47 3c 26 00 4c 89 e6 48 c7 c7 40 aff
[    2.562951] RSP: 0000:ffff88800e9f7a90 EFLAGS: 00010282
[    2.563554] RAX: 0000000000000000 RBX: ffff88800e9f7e00 RCX: 0000000000000000
[    2.564361] RDX: ffff88800e9edb80 RSI: 0000000000000004 RDI: ffffed1001d3ef44
[    2.565167] RBP: 0000000000000200 R08: 0000000000000001 R09: 0000000000000003
[    2.565973] R10: ffffed1001d3eefd R11: 0000000000000001 R12: ffffffff96e00000
[    2.566780] R13: 00000000000001e3 R14: 0000000000000000 R15: ffff88800e9f7e58
[    2.567587]  ? __kprobes_text_end+0xb3598/0xb3598
[    2.568122]  ? __entry_text_end+0x1fea85/0x1fea85
[    2.568754]  ? __entry_text_end+0x1fea85/0x1fea85
[    2.569288]  ? __entry_text_end+0x1fea85/0x1fea85
[    2.569821]  ptdump_hole+0x61/0x90
[    2.570212]  ? ptdump_pte_entry+0x100/0x100
[    2.570712]  walk_pgd_range+0xdb8/0x15f0
[    2.571178]  walk_page_range_novma+0xd9/0x140
[    2.571689]  ? walk_page_range+0x2b0/0x2b0
[    2.572171]  ? console_unlock+0x58f/0xb10
[    2.572644]  ptdump_walk_pgd+0xcd/0x180
[    2.573099]  ptdump_walk_pgd_level_core+0x13c/0x1b0
[    2.573663]  ? effective_prot+0xb0/0xb0
[    2.574117]  ? vprintk_emit+0x214/0x380
[    2.574601]  ? ptdump_walk_pgd_level_core+0x1b0/0x1b0
[    2.575186]  ? memtype_copy_nth_element+0x1a0/0x1a0
[    2.575752]  ? __kprobes_text_end+0xb3598/0xb3598
[    2.576300]  ? pti_user_pagetable_walk_pmd+0x130/0x460
[    2.576894]  ? __kprobes_text_end+0xb3598/0xb3598
[    2.577441]  ? __kprobes_text_end+0xb3598/0xb3598
[    2.577988]  ? __kprobes_text_end+0xb3598/0xb3598
[    2.578564]  ? rest_init+0xdd/0xdd
[    2.578972]  ptdump_walk_user_pgd_level_checkwx.cold+0x31/0x36
[    2.579640]  pti_finalize+0x7b/0x170
[    2.580066]  kernel_init+0x5b/0x183
[    2.580484]  ret_from_fork+0x22/0x30
[    2.581010] Dumping ftrace buffer:
[    2.581456]    (ftrace buffer empty)
ffffffffbfffffff)
[    2.583137] Rebooting in 1 seconds..
2020/09/30 17:56:23 failed to create instance: failed to read from qemu: EOF

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930161711.GH6810%40zn.tnic.
