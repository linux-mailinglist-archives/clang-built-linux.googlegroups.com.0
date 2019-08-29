Return-Path: <clang-built-linux+bncBCQPF57GUQHBBSHNT3VQKGQEETW5IIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FECA1870
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:28:09 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 191sf2250602pfy.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 04:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567078088; cv=pass;
        d=google.com; s=arc-20160816;
        b=u9zV5YdLsKhKCqNP1VU0l/Cv0odaOVX3vBOH4YVUQBYGc+0DW7kM5i9rH77lPxaf73
         /DudULN9C4enhOahJL8jp8NmYCHBbD8XqmWtpHcIud/elrHP0z7W1IifybHBflloMWaI
         TVLo7ltlJgJhAnN1NP9P0DOMLwyqxMXWPrX4oib3DzFW0DpmKKqwcMN+fGo4dKsvriqn
         3M4/co8zVEGY4FiVietTqf/COfdYbLvO1k4UwaoWvOh+0EmSYRAwk2+URJQTsGgREhi3
         fRBypgUUSqWpNUMljEoaHrrR/FJt60gkh/5OpRwMYOEO/qZEtKVjbHznqsIzI00MVn1G
         XmzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=0DaC/K0Ylm1jPax6bA3RFCyYnMwE3bIqfjvCtKYrGjc=;
        b=iieYwL8ITGt6ydVPU/x6UeWC6k7HMA/A4IqiofMLfb9OOSHS0VvDiPxWbeUPzyrVh3
         lELRwNcXUz2PbRBaw6tj0odYeEZZ2YPl0lZbO7uSqi9od/bS6ZOr2HKcOOCLhe+zlstD
         OxUsJhT6VoEt+xMtIU4z0DgkMioR39QIRqi5bFEfOTj1kVMHHYkPrh/QqSXKVxNf4Kwx
         XHcY9SIbwAu98NXQWaMxFv4Jcl7fPZQVKqDVD5sBHWhAYBjnzTjdNmyrFaouunLlg61X
         FqDKyEc2j8vsN+Fm9+QY2GXeMxveSrsdmiloDG91zogZK8JSzAs9TTYnQB0GOxHGnuaq
         MeBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3x7znxqkbamq289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3x7ZnXQkbAMQ289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0DaC/K0Ylm1jPax6bA3RFCyYnMwE3bIqfjvCtKYrGjc=;
        b=JNfaa+wDZekTgHBnnn7ZoSK/9vtzvuP7P64E4mCgg+am48Pa8zVpR2VdmwsNkc5y/m
         p62sBKif2iFF83ukB2Ix+KC2RfjufBenJVHEPs6S4sVKbbVryYjsshut9PtrvXvUUhsI
         AbNl6L9PLG9KayjuiUkUehwaf0Y8059xmf4UNKJJ4MtdJ6Js78GE+2elRfj817aJy+7U
         QzoB7PtqtSptI+hpA7oxQ4V7mtTb2f8vOhphaJIcRPoQiotzXTJn2AT/arFu19gulX9R
         bCb4Y/SXdZHKC9JPGLDAMHWfPYncYsbzzlR9IKKjRHhTBmqoxA6GAmtOfRrw4BoIJ+7u
         t8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0DaC/K0Ylm1jPax6bA3RFCyYnMwE3bIqfjvCtKYrGjc=;
        b=aW66xjHfyhoSZErrS2pePcvmPXG5D6Jw7mEaGcTgsGHq4IypTE5ob+aT58suSzB5wN
         uSwErNE6byOV6rDPFsf74Id23wRvNQFImuSU1Mt44UQuXWZhFZuYyZ9fnOU8/tRh5IbJ
         NB+96urNAiB8847P9FDqmiAOLzxIzYOhc23HREDlchQbaSa6+vlVTUGFkCmNKSE28KUw
         lyRJk2S0t7cqhd+fxu6Q+L6ujdc3gnxRYLXLnxirjdl4L1FQ4P5m3ATzisXsUAUMSGSP
         /nEgmjGowqxI2veEAt4h044VUWGkTpulPn2VdRdULqxjtEbDJhpEdoXfi105vS2slfYA
         htMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpEh3HwZmBDLI1vaJLN7VAexND6tcstmatFhD/IBdJmKouPUhC
	ymG2HtTO1GhxY0pwERfzjc8=
X-Google-Smtp-Source: APXvYqxVEX+nbKGSDu0PkTVPA5Fp71SJ0Fbew7t274JfJz5tckMIjCChIN7mhIOzisOuOo+H0xByoA==
X-Received: by 2002:a63:6c02:: with SMTP id h2mr8235307pgc.61.1567078088262;
        Thu, 29 Aug 2019 04:28:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2b4e:: with SMTP id r75ls558055pgr.0.gmail; Thu, 29 Aug
 2019 04:28:07 -0700 (PDT)
X-Received: by 2002:a65:680b:: with SMTP id l11mr7868862pgt.35.1567078087772;
        Thu, 29 Aug 2019 04:28:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567078087; cv=none;
        d=google.com; s=arc-20160816;
        b=nxUQJvmhre7UB9aTH0fCaBdwV+esVXa9OQJkYLFEYUwmOAV8kVUN0j1Dvqg+yfmA5U
         Yl4Yoq9Fcr8I/B5D2Fs2MuXaBCP+Sjvg1mvQ9FIWJYLr/sS5cJbUyV5Ark9AxGsn4cl+
         +TvcBuwtKpud9pV6ZPO7rYcSxKnPUnTchZH7NZhsA+k8qD6L2Sj7hzVhcOhIGjyhEJ+J
         +3dKgHWBbvCWdTK/Q8oPlM3KV4MNEb09h0VGoV+72Y/E6mQOyIsiPr+8z+Rbw2ivFAca
         2blK+oW4B1Bc6gHLI65875O+C80jhlfUTZ8H9MVbvBhOYF6pwMuSGXCsdGW7foV+m6qj
         G+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=Oe6dmT1xS+Z1sWXUd2cdSitlfMCmVkKBQK9rwo6kPAA=;
        b=il1+MFPv5E2YdIVYkLpnY/QkeHPbZgoJmlOuUsBzqggJZfwrG8nrAwmGAKEW8EzMs6
         2+tpnQEQOY74P2CaRf6qg3R0a6igoEY0d2eSgxP1hKOJIV+wgdSfAfg9FL1MiXzVSdkN
         cvXfOesG1amyF3+9hbXjBmXyisOkdmC5QKLd4yjqjwpc5GcTp26yOhuFt3krkvQlfB2x
         HsGaisqL3OAHLWtnZ1rtD+U8BCOHGjMplcXmtpxMjN6CLWu6rDmXaqou0WLNjNR7K+r0
         drHzread3GCb8hVec0FAMB6ADxiS9aP3YAEWBiqX0gEGscnVonT6MoiL1ec32hsrjLIz
         VRyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3x7znxqkbamq289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3x7ZnXQkbAMQ289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com. [209.85.166.71])
        by gmr-mx.google.com with ESMTPS id t35si420637pjb.3.2019.08.29.04.28.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 04:28:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x7znxqkbamq289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) client-ip=209.85.166.71;
Received: by mail-io1-f71.google.com with SMTP id c22so3564604ioi.20
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 04:28:07 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a02:23cc:: with SMTP id u195mr9959468jau.136.1567078087104;
 Thu, 29 Aug 2019 04:28:07 -0700 (PDT)
Date: Thu, 29 Aug 2019 04:28:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000b7a14105913fcca8@google.com>
Subject: WARNING in __mark_chain_precision (2)
From: syzbot <syzbot+c8d66267fd2b5955287e@syzkaller.appspotmail.com>
To: ast@kernel.org, bpf@vger.kernel.org, clang-built-linux@googlegroups.com, 
	daniel@iogearbox.net, davem@davemloft.net, hawk@kernel.org, 
	jakub.kicinski@netronome.com, john.fastabend@gmail.com, kafai@fb.com, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3x7znxqkbamq289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender) smtp.mailfrom=3x7ZnXQkbAMQ289ukvvo1kzzsn.qyyqvo42o1myx3ox3.myw@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot found the following crash on:

HEAD commit:    47ee6e86 selftests/bpf: remove wrong nhoff in flow dissect..
git tree:       bpf-next
console output: https://syzkaller.appspot.com/x/log.txt?x=16227fa6600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d4cf1ffb87d590d7
dashboard link: https://syzkaller.appspot.com/bug?extid=c8d66267fd2b5955287e
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10d26ebc600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=127805ca600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+c8d66267fd2b5955287e@syzkaller.appspotmail.com

------------[ cut here ]------------
verifier backtracking bug
WARNING: CPU: 0 PID: 8795 at kernel/bpf/verifier.c:1782  
__mark_chain_precision+0x197a/0x1ea0 kernel/bpf/verifier.c:1782
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 8795 Comm: syz-executor439 Not tainted 5.3.0-rc3+ #101
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2dc/0x755 kernel/panic.c:219
  __warn.cold+0x20/0x4c kernel/panic.c:576
  report_bug+0x263/0x2b0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
RIP: 0010:__mark_chain_precision+0x197a/0x1ea0 kernel/bpf/verifier.c:1782
Code: 08 31 ff 89 de e8 a6 9e f2 ff 84 db 0f 85 07 ff ff ff e8 59 9d f2 ff  
48 c7 c7 a0 a7 91 87 c6 05 3d c6 21 08 01 e8 1e 10 c4 ff <0f> 0b 41 bc f2  
ff ff ff e9 e8 fe ff ff 48 8b bd d8 fe ff ff e8 cd
RSP: 0018:ffff88808609f380 EFLAGS: 00010286
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff815c3ba6 RDI: ffffed1010c13e62
RBP: ffff88808609f4d0 R08: ffff8880a97940c0 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
R13: ffff8880985b6cc0 R14: ffff88808e538e80 R15: ffff88808609f468
  mark_chain_precision kernel/bpf/verifier.c:1819 [inline]
  check_cond_jmp_op+0xcd8/0x3c30 kernel/bpf/verifier.c:5841
  do_check+0x63cd/0x8a30 kernel/bpf/verifier.c:7783
  bpf_check+0x6fff/0x99b2 kernel/bpf/verifier.c:9297
  bpf_prog_load+0xe68/0x1670 kernel/bpf/syscall.c:1709
  __do_sys_bpf+0xa44/0x3350 kernel/bpf/syscall.c:2860
  __se_sys_bpf kernel/bpf/syscall.c:2819 [inline]
  __x64_sys_bpf+0x73/0xb0 kernel/bpf/syscall.c:2819
  do_syscall_64+0xfd/0x6a0 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x4402a9
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 fb 13 fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffc52f10618 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 00000000004402a9
RDX: 0000000000000048 RSI: 0000000020000200 RDI: 0000000000000005
RBP: 00000000006ca018 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 0000000000401b30
R13: 0000000000401bc0 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000b7a14105913fcca8%40google.com.
