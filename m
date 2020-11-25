Return-Path: <clang-built-linux+bncBCQPF57GUQHBB4P4636QKGQETLMSOJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 4693D2C3697
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 03:16:19 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id u26sf607257pgl.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 18:16:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606270578; cv=pass;
        d=google.com; s=arc-20160816;
        b=jWZKg1RYakAcsRhEfeS6m8sJg++pSIaphOaLeHsooTP5qI0pP/2pY4iKJaf36ammpJ
         wU4yp8T2q4ZoMFCxLAQNxCMAgNXYEZ7z9MuaJVZTkPsCkRX5V5+SajzQYDddV3U+8ooF
         VnR3CtmB0MlzoPI+eFr55WVy1gFxY/4NyihPZrq1UrH5gBKJDUsqzzQuTIF2YCL8sp9c
         YM4qHjNAO6EfdK8KbpqztcWqXKawwZAZnR4aykfWnryerImXzxZUY9RPDsCY3lE/TKMe
         ANWC7qJQd3ciJsAwGPKkH6Yam3UQo98LNDJ74NYRl44wD7VmX3Ufet6UYcSdDGD1DACa
         +Cmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=BwF95pd8MgS2aGgPt7pk+3TCLfzX8BI5rzCdbYPUy2c=;
        b=p8JQbKer/wG0tgPf692YxP88ndS+4RVztlFKJ9c2aDia92rIvudcPTWIarYOFuWeug
         aodULE+PLHGM6me2VShQY9/frpSHmPdZjPL2GuG4oJlN/uhrPydoAxZbH58rl0jYXJiC
         EnBc8bhoI0fR7sr9OzbC8/HFXJCUq2malGNNhGbcnNWqVXzD+Ug7LpDPdqg6PdfFTgmv
         vkPEd8ke/1QwRKudbgsSrOnPA58w22E9NFQyh4eAcSivspro66fElo+nYuyrlXVtO216
         VaFKopABbmD/zYA2AMfBwhivxqfmY4GMGeJY8I+ijItVCQeqhPpTnfmbz1LJsNo0j3iq
         uNbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3cl69xwkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3cL69XwkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BwF95pd8MgS2aGgPt7pk+3TCLfzX8BI5rzCdbYPUy2c=;
        b=TvONBjuOHX0uOraOxNxTlFea87CRQT78gAwczJbUH7K1ZElSmxL6yiHncvpRNLfPoR
         idN+qkAJWzV6b2AhGDKSw7PF1rgmjTf0M5ua5cM2dwXLsKGBakpr6yl9qhiQ+RR9tKrg
         GjwPZ7XMy5O+c3Fvjpovbgqasex6j9nen7PbzdwKMKYa9Lb6UNBQg2EitBSUjfxJBGfp
         oIjSJ40LWzQIO7BwAN9cu/GAsKsC+L+1NEd4nTOBzTB/glbfhlknjg9jazKZcwnGYiIj
         OC8zTA5Wz7UGV2Qm1gSIvGpV6NOIpBg2nQPlBg1/QKDMMUBATY3sN4I1gfx9nyOp79eF
         pk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BwF95pd8MgS2aGgPt7pk+3TCLfzX8BI5rzCdbYPUy2c=;
        b=CMaXcK4QccPqaq3utyg5UDo6mb9pDJhkUbtnPSV8p5NPV+3ge3aPS3UjXfpPIAXDh7
         DPr50rMuiLi4grbgQSJaSR72NBYWmKBQ1oUpKHTZpxyFhxnBGPuqg5qfw1s1gt3FBT26
         OnvBGeuA//K+WpTjgbvbTg85k9QZ+T48qlJ6pald3Xt8FnoRIxMwBLsOG/+trH5XlYhJ
         vfm7LUKyK7VDidnIETNLkIjVE2F5bUZyPO6vOrl7D6sZ1I/5skGMMj2p9kkoxd4GTZ+9
         GHKq6IJE4HA05iRq+f2LqAnvm27DUdrI+4aPSavnMecrVY7ht+qbkeavxZpazJ61QTvE
         8qlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bmtts6ANdKqMvNyTGQC3pIv1q914w7/OsWoP1UCxUhCLUnLPy
	1cDFXnJ+wJQ4VyXWN4+b0Xw=
X-Google-Smtp-Source: ABdhPJxP5fuXY6s7TzVP9OZJb20N0by06wL3WwbBkhke/Cv9fK4yJeRJqKfIwELMnN6yOoYwYKq/KA==
X-Received: by 2002:a62:f901:0:b029:160:b5d:fc40 with SMTP id o1-20020a62f9010000b02901600b5dfc40mr1150755pfh.55.1606270578017;
        Tue, 24 Nov 2020 18:16:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls230309pgl.11.gmail; Tue, 24 Nov
 2020 18:16:17 -0800 (PST)
X-Received: by 2002:a05:6a00:22c9:b029:198:15b2:bbd3 with SMTP id f9-20020a056a0022c9b029019815b2bbd3mr322251pfj.64.1606270577204;
        Tue, 24 Nov 2020 18:16:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606270577; cv=none;
        d=google.com; s=arc-20160816;
        b=o6tp9ike5nTBnukd7LspuuHdSFliOjSJ91DuqL49eciV+Fhvz0vh3qsVik4vP9URxD
         OsJY0Jot6vxbeV38faLWgrSqC7+tOaFyqlL//ZM2xISa/PZ6zUgtn2oeKFpGTqecmFuo
         5LSD13UR+ecTXvg1s39vqECTgr8pPxj3P93IeENQO/buhn+BEzYN/0uAd2+4o1Qesjyg
         dgmerRbeCw+B6/0wZZJJ0c5HxFSdeGH6kh0MMPIwOP/M9jHTpAdashT7IUIeN0mglbiI
         0c5FUDWQwSSseMBopgzEshLfjfRVcjSSE1e8IvOkdRWw+7CvfIt4H5o1Gu3kE9mCwiCF
         Z6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=6VIJ5IwnX0ZeqUGt6VG60v0fau25OfzFdCcAMNNzl6M=;
        b=gFhKnjZLqy4yo+4RK1LfVhWVbAEBBaQtpEZzX+Q2JHNeCEFvruAmZDTm+dAOD5HOb2
         1Lknoaq+nb0vm/dBNMcA5Y1DLefQwB6HfoHTwPX+MEJH1pYKRn2qjy1fDgSTyN+BFdUb
         eBIC7FPJtHT4Nuj2VYelsXkzRnNtVtMWSefqZrBmBsac1EE3D6D1zgkmyNPZmbAhSvF8
         F4qU+dgRLVNEw7l+3Am+XKyJZtYd4I3SQoNCbKB2WYhahp5nt6LZh1IjgvXQpQL+HU+J
         3GJUaRUMF8mM3WB93HJfhATQkoSu3Ri6M6+lGAOh/nVcrnmh7XNs9DWIZCghiQ6fJeRO
         JOsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3cl69xwkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3cL69XwkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com. [209.85.166.72])
        by gmr-mx.google.com with ESMTPS id x24si42489pll.5.2020.11.24.18.16.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 18:16:17 -0800 (PST)
Received-SPF: pass (google.com: domain of 3cl69xwkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) client-ip=209.85.166.72;
Received: by mail-io1-f72.google.com with SMTP id q8so508708ioh.10
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 18:16:17 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:6403:: with SMTP id y3mr1290488ilb.72.1606270576956;
 Tue, 24 Nov 2020 18:16:16 -0800 (PST)
Date: Tue, 24 Nov 2020 18:16:16 -0800
In-Reply-To: <00000000000064f6cd05b1a04a2c@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000271c8805b4e5036b@google.com>
Subject: Re: WARNING in __rate_control_send_low
From: syzbot <syzbot+fdc5123366fb9c3fdc6d@syzkaller.appspotmail.com>
To: clang-built-linux@googlegroups.com, davem@davemloft.net, 
	johannes@sipsolutions.net, kuba@kernel.org, linux-kernel@vger.kernel.org, 
	linux-wireless@vger.kernel.org, natechancellor@gmail.com, 
	ndesaulniers@google.com, netdev@vger.kernel.org, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3cl69xwkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender) smtp.mailfrom=3cL69XwkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    80145ac2 Merge tag 's390-5.10-5' of git://git.kernel.org/p..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=130e5a79500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b81aff78c272da44
dashboard link: https://syzkaller.appspot.com/bug?extid=fdc5123366fb9c3fdc6d
compiler:       gcc (GCC) 10.1.0-syz 20200507
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12bf662d500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11671c8b500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+fdc5123366fb9c3fdc6d@syzkaller.appspotmail.com

------------[ cut here ]------------
no supported rates for sta (null) (0xffffffff, band 0) in rate_mask 0x0 with flags 0x0
WARNING: CPU: 1 PID: 8503 at net/mac80211/rate.c:375 __rate_control_send_low+0x4d0/0x6d0 net/mac80211/rate.c:375
Modules linked in:
CPU: 1 PID: 8503 Comm: systemd-sysctl Not tainted 5.10.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__rate_control_send_low+0x4d0/0x6d0 net/mac80211/rate.c:375
Code: 14 48 89 44 24 08 e8 7f dd 25 f9 44 8b 44 24 24 45 89 e9 44 89 e1 48 8b 74 24 08 44 89 f2 48 c7 c7 a0 f7 61 8a e8 fc 5b 62 00 <0f> 0b e9 1c fe ff ff e8 54 dd 25 f9 48 8b 44 24 10 48 8d 78 7f 48
RSP: 0018:ffffc90000d90a40 EFLAGS: 00010282
RAX: 0000000000000000 RBX: ffff888026ce8de8 RCX: 0000000000000000
RDX: ffff88801e450000 RSI: ffffffff8158d875 RDI: fffff520001b213a
RBP: ffff888144343148 R08: 0000000000000001 R09: ffff8880b9f30627
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000000
R13: 0000000000000000 R14: 00000000ffffffff R15: 0000000000000090
FS:  0000000000000000(0000) GS:ffff8880b9f00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fde93cedab4 CR3: 0000000012e10000 CR4: 00000000001506e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <IRQ>
 rate_control_send_low+0x265/0x730 net/mac80211/rate.c:400
 rate_control_get_rate+0x1b9/0x5a0 net/mac80211/rate.c:913
 __ieee80211_beacon_get+0xb06/0x1aa0 net/mac80211/tx.c:4924
 ieee80211_beacon_get_tim+0x88/0x910 net/mac80211/tx.c:4951
 ieee80211_beacon_get include/net/mac80211.h:4912 [inline]
 mac80211_hwsim_beacon_tx+0x111/0x910 drivers/net/wireless/mac80211_hwsim.c:1729
 __iterate_interfaces+0x1e5/0x520 net/mac80211/util.c:792
 ieee80211_iterate_active_interfaces_atomic+0x8d/0x170 net/mac80211/util.c:828
 mac80211_hwsim_beacon+0xd5/0x1a0 drivers/net/wireless/mac80211_hwsim.c:1782
 __run_hrtimer kernel/time/hrtimer.c:1519 [inline]
 __hrtimer_run_queues+0x693/0xea0 kernel/time/hrtimer.c:1583
 hrtimer_run_softirq+0x17b/0x360 kernel/time/hrtimer.c:1600
 __do_softirq+0x2a0/0x9f6 kernel/softirq.c:298
 asm_call_irq_on_stack+0xf/0x20
 </IRQ>
 __run_on_irqstack arch/x86/include/asm/irq_stack.h:26 [inline]
 run_on_irqstack_cond arch/x86/include/asm/irq_stack.h:77 [inline]
 do_softirq_own_stack+0xaa/0xd0 arch/x86/kernel/irq_64.c:77
 invoke_softirq kernel/softirq.c:393 [inline]
 __irq_exit_rcu kernel/softirq.c:423 [inline]
 irq_exit_rcu+0x132/0x200 kernel/softirq.c:435
 sysvec_apic_timer_interrupt+0x4d/0x100 arch/x86/kernel/apic/apic.c:1091
 asm_sysvec_apic_timer_interrupt+0x12/0x20 arch/x86/include/asm/idtentry.h:631
RIP: 0010:__this_cpu_preempt_check+0xd/0x20 lib/smp_processor_id.c:65
Code: 00 00 48 c7 c6 c0 90 9d 89 48 c7 c7 00 91 9d 89 e9 b8 fe ff ff 0f 1f 84 00 00 00 00 00 55 48 89 fd 0f 1f 44 00 00 48 89 ee 5d <48> c7 c7 40 91 9d 89 e9 97 fe ff ff cc cc cc cc cc cc cc eb 1e 0f
RSP: 0018:ffffc900016ff918 EFLAGS: 00000283
RAX: 0000000000000003 RBX: ffff8880101ad800 RCX: ffffffffffffffff
RDX: fffffffffffffffd RSI: ffffffff8956fa40 RDI: ffffffff8956fa40
RBP: 0000000000000088 R08: 0000000000000001 R09: ffffea0000c3d9b3
R10: ffffffffffffffff R11: 0000000000000000 R12: ffff8880101ad890
R13: fffffffffffffffd R14: 0000000000000020 R15: 0000000000000011
 __mod_memcg_lruvec_state+0x10e/0x350 mm/memcontrol.c:837
 __mod_lruvec_page_state include/linux/memcontrol.h:847 [inline]
 __dec_lruvec_page_state include/linux/memcontrol.h:1346 [inline]
 page_remove_rmap+0x289/0x1c00 mm/rmap.c:1349
 zap_pte_range mm/memory.c:1253 [inline]
 zap_pmd_range mm/memory.c:1357 [inline]
 zap_pud_range mm/memory.c:1386 [inline]
 zap_p4d_range mm/memory.c:1407 [inline]
 unmap_page_range+0xe30/0x2640 mm/memory.c:1428
 unmap_single_vma+0x198/0x300 mm/memory.c:1473
 unmap_vmas+0x168/0x2e0 mm/memory.c:1505
 exit_mmap+0x2b1/0x530 mm/mmap.c:3222
 __mmput+0x122/0x470 kernel/fork.c:1079
 mmput+0x53/0x60 kernel/fork.c:1100
 exit_mm kernel/exit.c:486 [inline]
 do_exit+0xa72/0x29b0 kernel/exit.c:796
 do_group_exit+0x125/0x310 kernel/exit.c:906
 __do_sys_exit_group kernel/exit.c:917 [inline]
 __se_sys_exit_group kernel/exit.c:915 [inline]
 __x64_sys_exit_group+0x3a/0x50 kernel/exit.c:915
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x7fde953c6618
Code: Unable to access opcode bytes at RIP 0x7fde953c65ee.
RSP: 002b:00007ffdb9f65758 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fde953c6618
RDX: 0000000000000000 RSI: 000000000000003c RDI: 0000000000000000
RBP: 00007fde956a38e0 R08: 00000000000000e7 R09: fffffffffffffee8
R10: 00007fde93881158 R11: 0000000000000246 R12: 00007fde956a38e0
R13: 00007fde956a8c20 R14: 0000000000000000 R15: 0000000000000000

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000271c8805b4e5036b%40google.com.
