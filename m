Return-Path: <clang-built-linux+bncBCQPF57GUQHBBOEFVGDAMGQE4MP5DXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CC63AA327
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 20:28:09 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id w206-20020a1fadd70000b02901fb33a39f7asf855229vke.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 11:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623868088; cv=pass;
        d=google.com; s=arc-20160816;
        b=FB+DopTpsRoy3fD9PF5RuDwXm3ZwzLF95F+bMgqNh1cpX72zewSSB/k4QHQWS2Z92/
         Rv6QewgbMzl9904wMz2F7EJamiNzKsWWtU/81MUeNEHhSqAV/Ea+KiRfpNMdfac8bDJV
         6LbskxcHmSJR6+6WDoqqTRxRMoNAoxI88nj/bMFvlQA2EMOMX5beYY+zcbbhvBsYzrNf
         Fcv7OGkgsGffkmegPpqLjeSOx+l2BKc1CAQO2N56xCEluyPjTE2YcqbcOpMuLHb85pz1
         i4VuXogNURtZYlNdmq/w2ScPBK0m31151M68hiETTmSA3pUlaXT90VCTj+oo/xp/C8Z8
         YT2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=44czuuWiivN2RvBZj8GO7wSfE2EOj3XH/ZgNicY+aBI=;
        b=ioiiWnEvH1c22oSkBJcMgsLXcJ8L+X/GI79GSGBvyTkC561uoPIErI9+zL4aADiTV4
         qN6Nr6IyQ6VvFZd/POn51+Csz4/x8wWejtRO7kglPTJ0+1jLRATmTtYzn28VHKH8E+Gv
         gFeqd4avY96d4Z63gxGQ5GHPuaX/Wz2Trs9O9y2pDn/+5NPwlK0IzUvLx/CNTJmj7D3e
         TqEm9qniEzDokoY5aAOyEjNDXlijp9YgZZWBZiOHYS0j2RAU7FDJAk6Vrb/BlsfkQs93
         W49J+MCkJW7pkiRrQTIWvka7sjJtOGByDXFB3BHrO6bwpJFM4KhChRtn6kCw17q+NAlF
         WA2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3t0lkyakbahiiopaqbbuhqffyt.weewbukiuhsedjudj.sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3t0LKYAkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44czuuWiivN2RvBZj8GO7wSfE2EOj3XH/ZgNicY+aBI=;
        b=MMwnrjdiBSoopgNlA7B6l9vJlI2Pi+MX7Q4y41wwWcOBRPSds5NjWgkIWVq1keL9sy
         PX3srHkf/nqjcde5NMNMOPZPCLOq2WQmnZWku6ZrCL3zhs2ZtqqkYSPIQY0OdiwqC/X9
         DSQZhDfAsbRTiGPz66QjGhsmiXg2XMUzUn0Uu+av7VVPbwiR0YbDclUETUPQnwlXN/VN
         qTi55wnxkoixV2BAWBo3dZqJNjN15jED5I40cqD1SCgp1ZhEnDFdgAn6WBaRE541gWQV
         KK7r4n13IxQt3rx2VPDkaMTLf9l7PHesdOC1aKRhMdLc8f5ICR+jVR0AlF2QODbrOsd9
         ZArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=44czuuWiivN2RvBZj8GO7wSfE2EOj3XH/ZgNicY+aBI=;
        b=Kd0/h6cWwbVwQbH6HTQXJcsWKOuFL/vOUFRqLNjt5fmBShJ5OnTNbHdoFChgUGKs9W
         QOYUv/Bg2wvNul8RPKLn4Xa5cy2W3syyVCS6nUs9eF/ApTJwHr8VpBloDRytlYsnlHBh
         Sn5kLTKHQZLWhrhz3PfO6rEBbSFS6LLFcNFgYBBgJVRuD/Z7cY0SjC3cjTApuFAnY2v+
         1gMptahHRXMBn+oRDu6tD4h3tWmH5GiGkkDkBRCqyK/xQLIYPEUNeZQI6S7WdScQ/Soy
         GBRxdku5YrMXQB1VmAwDQ3iTZrEsgLxxs+rmWWKE7krxhJYuMmbQQnXhEnFzKKxf2d/K
         GngQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kIfuGL8jGQTiugYxg5MnskE2bkYXc2cmzM6JAeXR8fcF8eWwM
	GZ5mQ7fQ/ekulQ+FUbugNAQ=
X-Google-Smtp-Source: ABdhPJwLFueTObu8KbSD1o7vv9DpNzdPOxVQkzcOfqhI4f0IfCPF2nAhQbMQ4ZZsnSwUHm741Io1jg==
X-Received: by 2002:a05:6122:7d2:: with SMTP id l18mr419574vkr.20.1623868088628;
        Wed, 16 Jun 2021 11:28:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:32ce:: with SMTP id y197ls298936vky.7.gmail; Wed, 16 Jun
 2021 11:28:08 -0700 (PDT)
X-Received: by 2002:a05:6122:1069:: with SMTP id k9mr425479vko.18.1623868087992;
        Wed, 16 Jun 2021 11:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623868087; cv=none;
        d=google.com; s=arc-20160816;
        b=ohR/b/7ydeOIDotUSIeyMkdLSWBTyumiD9jrThC8YVQsRXAK/cqx1ZN1y70JRcW7KF
         HECriIjfCIibxlRymom14NBLUJaVVL2Ee2duGRgrOpcEZpcpvLjwg4fAGyybh8Sz2S4v
         WhootRJWEzNEQr3eNQVLjbIO7OEyqp/Ns+SgaPDJJFWiNiyesMq8cIh5zMabkKtv2kKk
         XReSr7Zf6oHken4DVFEpBp9Qs6L/d/8t75dxlGUxwHmxXi+8MPQ2B9IVwNp6s/Zbj7f4
         YH8gQ5jIpA7ad5Ag1Iz1996wk+5xbay6SJYCaWHxaEtXKDYFQT2q9yIbeQ6l0dlCx8uq
         h3DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=U2koXaMbJ/hC+FxImJK2eMDjd+s3HAXLCBhecZ9Nls4=;
        b=K2jT/7deGhOT8MCVjC5nkK/+uCQh9Sr08z0ZRL5ds+mmOkzhg3DH00IfMBp1hzQIH3
         eMLbWJcmC8qtK2CPOgMujCLXvW1Nwy8C6FFqIf/3qLC2kGpMwFWY+RjeWLMRDA5rCU+y
         pUdtseFGAR1P8Dkg4cXwllXcUu/i8hyg2D4e1I6ly8dHK23NtQtvFl71uSy2xHCW5ra7
         0M+etg3WDS9I2+KAuhVcFsrfP9Z6I15bWPhV3rQo7qheM1vDYwUbECUtp8SvH5Q4b4UI
         YACT8A/FsgYSap6aVxweptpgV1JC5xlpG27VzWvkMI55BQBjA2smml5wVpuU8IzNWzuO
         RzPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3t0lkyakbahiiopaqbbuhqffyt.weewbukiuhsedjudj.sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) smtp.mailfrom=3t0LKYAkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com. [209.85.166.197])
        by gmr-mx.google.com with ESMTPS id x11si330581vsj.0.2021.06.16.11.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 11:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t0lkyakbahiiopaqbbuhqffyt.weewbukiuhsedjudj.sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.197 as permitted sender) client-ip=209.85.166.197;
Received: by mail-il1-f197.google.com with SMTP id p17-20020a9274110000b02901edf6e94688so2336780ilc.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Jun 2021 11:28:07 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a92:d24c:: with SMTP id v12mr695097ilg.306.1623868087483;
 Wed, 16 Jun 2021 11:28:07 -0700 (PDT)
Date: Wed, 16 Jun 2021 11:28:07 -0700
In-Reply-To: <20210616192213.1d75d8e2@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000008445ee05c4e6407c@google.com>
Subject: Re: [syzbot] INFO: task hung in ext4_fill_super
From: syzbot <syzbot+c9ff4822a62eee994ea3@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, paskripkin@gmail.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3t0lkyakbahiiopaqbbuhqffyt.weewbukiuhsedjudj.sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.197 as permitted sender) smtp.mailfrom=3t0LKYAkbAHIiopaQbbUhQffYT.WeeWbUkiUhSedjUdj.Sec@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
INFO: task hung in ext4_stop_mmpd

INFO: task syz-executor.3:10377 blocked for more than 143 seconds.
      Not tainted 5.12.0-rc6-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor.3  state:D stack:27568 pid:10377 ppid:  8772 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4322 [inline]
 __schedule+0x911/0x21b0 kernel/sched/core.c:5073
 schedule+0xcf/0x270 kernel/sched/core.c:5152
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:621
 ext4_stop_mmpd+0x47/0xd0 fs/ext4/mmp.c:255
 ext4_fill_super+0x86b5/0xdef0 fs/ext4/super.c:5159
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x132a/0x1f90 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount fs/namespace.c:3431 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x467afa
RSP: 002b:00007f311de49fa8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000380 RCX: 0000000000467afa
RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007f311de4a000
RBP: 00007f311de4a040 R08: 00007f311de4a040 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000020000000
R13: 00000000200000c0 R14: 00007f311de4a000 R15: 0000000020000200
INFO: task syz-executor.5:10410 blocked for more than 143 seconds.
      Not tainted 5.12.0-rc6-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor.5  state:D stack:27568 pid:10410 ppid:  8771 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4322 [inline]
 __schedule+0x911/0x21b0 kernel/sched/core.c:5073
 schedule+0xcf/0x270 kernel/sched/core.c:5152
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:621
 ext4_stop_mmpd+0x47/0xd0 fs/ext4/mmp.c:255
 ext4_fill_super+0x86b5/0xdef0 fs/ext4/super.c:5159
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x132a/0x1f90 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount fs/namespace.c:3431 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x467afa
RSP: 002b:00007fe6fceb8fa8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000380 RCX: 0000000000467afa
RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007fe6fceb9000
RBP: 00007fe6fceb9040 R08: 00007fe6fceb9040 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000020000000
R13: 00000000200000c0 R14: 00007fe6fceb9000 R15: 0000000020000200
INFO: task syz-executor.2:10429 blocked for more than 143 seconds.
      Not tainted 5.12.0-rc6-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor.2  state:D stack:27568 pid:10429 ppid:  8769 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4322 [inline]
 __schedule+0x911/0x21b0 kernel/sched/core.c:5073
 schedule+0xcf/0x270 kernel/sched/core.c:5152
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:621
 ext4_stop_mmpd+0x47/0xd0 fs/ext4/mmp.c:255
 ext4_fill_super+0x86b5/0xdef0 fs/ext4/super.c:5159
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x132a/0x1f90 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount fs/namespace.c:3431 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x467afa
RSP: 002b:00007f92454eafa8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000380 RCX: 0000000000467afa
RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007f92454eb000
RBP: 00007f92454eb040 R08: 00007f92454eb040 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000020000000
R13: 00000000200000c0 R14: 00007f92454eb000 R15: 0000000020000200
INFO: task syz-executor.4:10440 blocked for more than 144 seconds.
      Not tainted 5.12.0-rc6-syzkaller #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:syz-executor.4  state:D stack:27464 pid:10440 ppid:  8774 flags:0x00004004
Call Trace:
 context_switch kernel/sched/core.c:4322 [inline]
 __schedule+0x911/0x21b0 kernel/sched/core.c:5073
 schedule+0xcf/0x270 kernel/sched/core.c:5152
 schedule_timeout+0x1db/0x250 kernel/time/timer.c:1868
 do_wait_for_common kernel/sched/completion.c:85 [inline]
 __wait_for_common kernel/sched/completion.c:106 [inline]
 wait_for_common kernel/sched/completion.c:117 [inline]
 wait_for_completion+0x168/0x270 kernel/sched/completion.c:138
 kthread_stop+0x17a/0x720 kernel/kthread.c:621
 ext4_stop_mmpd+0x47/0xd0 fs/ext4/mmp.c:255
 ext4_fill_super+0x86b5/0xdef0 fs/ext4/super.c:5159
 mount_bdev+0x34d/0x410 fs/super.c:1367
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1497
 do_new_mount fs/namespace.c:2903 [inline]
 path_mount+0x132a/0x1f90 fs/namespace.c:3233
 do_mount fs/namespace.c:3246 [inline]
 __do_sys_mount fs/namespace.c:3454 [inline]
 __se_sys_mount fs/namespace.c:3431 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3431
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x467afa
RSP: 002b:00007f2fce3c2fa8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 0000000020000380 RCX: 0000000000467afa
RDX: 0000000020000000 RSI: 00000000200000c0 RDI: 00007f2fce3c3000
RBP: 00007f2fce3c3040 R08: 00007f2fce3c3040 R09: 0000000020000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000020000000
R13: 00000000200000c0 R14: 00007f2fce3c3000 R15: 0000000020000200

Showing all locks held in the system:
2 locks held by kworker/u4:4/217:
 #0: ffff8880b9f35198 (&rq->lock){-.-.}-{2:2}, at: newidle_balance+0x789/0xe50 kernel/sched/fair.c:10633
 #1: ffffffff8b774320 (rcu_read_lock){....}-{1:2}, at: cpu_of kernel/sched/sched.h:1086 [inline]
 #1: ffffffff8b774320 (rcu_read_lock){....}-{1:2}, at: __update_idle_core+0x39/0x430 kernel/sched/fair.c:6045
1 lock held by khungtaskd/1574:
 #0: ffffffff8b774320 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x53/0x260 kernel/locking/lockdep.c:6327
1 lock held by in:imklog/8073:
 #0: ffff8880111a74f0 (&f->f_pos_lock){+.+.}-{3:3}, at: __fdget_pos+0xe9/0x100 fs/file.c:974
1 lock held by syz-executor.3/10377:
 #0: ffff8880441a20e0 (&type->s_umount_key#27/1){+.+.}-{3:3}, at: alloc_super+0x1dd/0xab0 fs/super.c:229
1 lock held by syz-executor.5/10410:
 #0: ffff88802ad4e0e0 (&type->s_umount_key#27/1){+.+.}-{3:3}, at: alloc_super+0x1dd/0xab0 fs/super.c:229
1 lock held by syz-executor.2/10429:
 #0: ffff8880446860e0 (&type->s_umount_key#27/1){+.+.}-{3:3}, at: alloc_super+0x1dd/0xab0 fs/super.c:229
1 lock held by syz-executor.4/10440:
 #0: ffff8880446920e0 (&type->s_umount_key#27/1){+.+.}-{3:3}, at: alloc_super+0x1dd/0xab0 fs/super.c:229

=============================================

NMI backtrace for cpu 0
CPU: 0 PID: 1574 Comm: khungtaskd Not tainted 5.12.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x141/0x1d7 lib/dump_stack.c:120
 nmi_cpu_backtrace.cold+0x44/0xd7 lib/nmi_backtrace.c:105
 nmi_trigger_cpumask_backtrace+0x1b3/0x230 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:146 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:209 [inline]
 watchdog+0xd48/0xfb0 kernel/hung_task.c:294
 kthread+0x3b1/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
Sending NMI from CPU 0 to CPUs 1:
NMI backtrace for cpu 1
CPU: 1 PID: 217 Comm: kworker/u4:4 Not tainted 5.12.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: bat_events batadv_nc_worker
RIP: 0010:__lock_is_held kernel/locking/lockdep.c:5253 [inline]
RIP: 0010:lock_is_held_type+0xa7/0x140 kernel/locking/lockdep.c:5549
Code: 12 e9 88 00 00 00 83 c3 01 41 3b 9c 24 e8 09 00 00 7d 7b 48 63 c3 48 89 ee 48 8d 04 80 4d 8d 7c c5 00 4c 89 ff e8 09 fe ff ff <85> c0 74 d8 41 83 fe ff 41 bd 01 00 00 00 74 12 41 0f b6 47 22 45
RSP: 0018:ffffc900018afaf8 EFLAGS: 00000046
RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000001
RDX: 0000000000000000 RSI: ffffffff8b774260 RDI: ffff888013df0a18
RBP: ffffffff8b774260 R08: 0000000000000000 R09: ffffffff8d45978f
R10: fffffbfff1a8b2f1 R11: 0000000000000000 R12: ffff888013df0000
R13: ffff888013df09f0 R14: 00000000ffffffff R15: ffff888013df0a18
FS:  0000000000000000(0000) GS:ffff8880b9f00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f205c60e020 CR3: 00000000158c4000 CR4: 0000000000350ee0
Call Trace:
 lock_is_held include/linux/lockdep.h:278 [inline]
 rcu_read_lock_sched_held+0x3a/0x70 kernel/rcu/update.c:125
 trace_lock_release include/trace/events/lock.h:58 [inline]
 lock_release+0x5d3/0x720 kernel/locking/lockdep.c:5521
 __raw_spin_unlock_bh include/linux/spinlock_api_smp.h:174 [inline]
 _raw_spin_unlock_bh+0x12/0x30 kernel/locking/spinlock.c:207
 spin_unlock_bh include/linux/spinlock.h:399 [inline]
 batadv_nc_purge_paths+0x2a5/0x3a0 net/batman-adv/network-coding.c:467
 batadv_nc_worker+0x831/0xe50 net/batman-adv/network-coding.c:716
 process_one_work+0x98d/0x1600 kernel/workqueue.c:2275
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2421
 kthread+0x3b1/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294


Tested on:

commit:         760537ca ext4: fix memory leak in ext4_fill_super
git tree:       https://linux.googlesource.com/linux/kernel/git/torvalds/linux refs/changes/76/10176/6
console output: https://syzkaller.appspot.com/x/log.txt?x=14589b50300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c9e6832b73135046
dashboard link: https://syzkaller.appspot.com/bug?extid=c9ff4822a62eee994ea3
compiler:       

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000008445ee05c4e6407c%40google.com.
