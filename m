Return-Path: <clang-built-linux+bncBCQPF57GUQHBBN7IQ37QKGQEOFXR2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D7C2E0777
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 09:54:17 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id w2sf6328847ote.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 00:54:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608627256; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vo/Dgq3NWRzWz7okuZOUp62GIxbqhBXpa7ZSDInCBv5ySwzxd7dQNvL78b1gbZ9AlB
         CWwsUDPiqdBZBR1cVTZ8ESBymYQPE1AROA7i5VjbKQNcfm5VevBrHPRhvEkYTf3K5xdX
         EaLcJcx0naUwmX52vIbySTNiOx37OMLMHgwmCzeUl0qvR8z/OxXjQPDQRNrDaUcMzIf8
         COxI4OpW6wdYpAYyqIaMLQ68hGRVD1xIpjAIsnt8YmABPGAPogxN5pQerscg+Dw+bdue
         ydj72+PH2lO96VpmjAgHLj22CrAmUf6+Tm45XEGTkbsq9dEh53uP5mvXPIz5xi+/Grhg
         tpQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=4BnMhW2VoW+F4P1xEEYnYJG+1+UNjbWVSHmKQkZHd7E=;
        b=IvhMlTzUk9G4zeaRtdAls4OfxCCniGuAZOVr/VjqrEcppL8t+xG6TVHaLQxPdcTv9S
         MVwDfP8mn5C1KMy6asIKDgU2MStpTwGmEyRxlQaV9WG/Felwfj1L6t+wpRJC+wxvSNVF
         AMklL7Y1L/x7Oj5KxuJdINZgK/DpdFaZ8vZUNEtUhrXsERmIY9FY7FCwXaUPxdT9Gm6N
         mIxv50A1BVcdBx3PB5LLsgn18d062jS3mGuDwUJ5i1gSjTE+x29rjq2+SQXhSuOjdfQ2
         zhePxhCRtePY/CsL/5uwGYlUyuyqWdefowxi5Y30kSXZl5WxXPM7jLEEJIKtycyJ5Z3a
         6MTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3n7thxwkbacwaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3N7ThXwkbACwaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4BnMhW2VoW+F4P1xEEYnYJG+1+UNjbWVSHmKQkZHd7E=;
        b=SALtGb+22bnkfLPAVvnIJkl2BbEsXzuKVRmsEk1gIG0f+luDxEbT1uqM0PDvdEBP04
         FxZh5yU8pEB/ehlB7/V+1y6K4jDF4zf2zXKvIYq1B1QEO5o6yaZ0XREiPMiUBvudwEz3
         l63hvv4oXUbGsNJ08m++fIU6L5RgszOs+pPB9wBFfuX9DsH4H84QayYOV2ZotwPzxHyU
         lPNeGXoJapJXlHDWY6zV2PEcczKzw86K83H9TeH2DrRdFGizGvgJwRuXxFwR5u3hKwaQ
         xMcUoB5Di29O7JKkJqepBb6T5Xpp9Fiyg/kKFYkcT9lWdPoe8TMp7bVx//Bj4S/UufbZ
         giXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4BnMhW2VoW+F4P1xEEYnYJG+1+UNjbWVSHmKQkZHd7E=;
        b=thEBrHPpanz+yIIq7PdY+V/FgAUd3t6pUrEsr4v7bV+7c19rDEg7GJxV59Mhz7vv+k
         84T3OMNvBYuouqdKkXA1By99D4znYvJMHiDDC3nf3ZRSYMwastRKpXuIZyjDZLTjYZZZ
         wbgneqINK0qNHVv3fAN2caFdjeatoyEtil4kSnAAA4qjY7LHwJeJPa4VTzkTs6gJRAnW
         mtARUQvP+C3EW1LPgiACBxZCQQj0hoMclVoMJ9joXuBirn5sVgAfLn72zJIwZyP8x/eS
         4c5UNUCozKA6e/LgYHLMwSgS8q+fTyPY6tynwwXU+wPMz7G/+Ouoor6ewk/OrIgjw45V
         XvdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301j30m3PQou7B++hltcQePN1dVOLnH0ox8WIw8k2fxIsUs1yTW
	6IfsNrH/CdlFwR4VMoafdDY=
X-Google-Smtp-Source: ABdhPJzz8qudUbshupS2IiIUChpazMmUuo/LebLiucag3mY24q2G+d/toCZFzu0bK39nZFY4fsEk5Q==
X-Received: by 2002:aca:b145:: with SMTP id a66mr13879174oif.92.1608627255974;
        Tue, 22 Dec 2020 00:54:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls10366224oig.10.gmail; Tue, 22
 Dec 2020 00:54:15 -0800 (PST)
X-Received: by 2002:a54:400f:: with SMTP id x15mr13552253oie.38.1608627255509;
        Tue, 22 Dec 2020 00:54:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608627255; cv=none;
        d=google.com; s=arc-20160816;
        b=I2sO1RNppWCfHk5xiVxhvZpytINHFcdY+7IoJKltVweqAZBe++a7O73Xol2xDZcEff
         cRF4tx7jtHueZSGWhqvUFYT+pDMs6XyAjVXmqcSoma39lcLHE2o7OXXSGkX7ZYcx7QtH
         i6jPy2nUu1cSJnNV4fZfCWuKC802Cr+FIzqlhFLkKI2licfNfs1jw9XaCzFRak6SJiod
         KfbPs+SqqGU4GfT35h3aGYuRlk0vtJvFGlQa/EbdQwQQnQS4hGHShdT0TfJl0ZLbp3bx
         l5qXrswdVh+xAZMnp2KV7ISHZE0g3PJ3bj70B2DVk2303ywwpUfJN9pY2lDt0dMx7CMO
         pOdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=0rhtpZGCeqTji2dyuV97MK4dbm12jQx4Z2+0a5I3EOM=;
        b=oahTSJSTxhN7PayzQzGFcO5XyDyMCoTaz18W93tYJ+9xGK8/XorwD8qsYKzk5NR2DJ
         TQoP7ApuuWvS3kNLLt0WqmLtFntNpgsCkmITz9XxLIzm/eVI1qg8m7jp29azSvac1Uuv
         /W8NTJM5A5DnO5estCBLZ+80iUb0fYOXEsLtj6xbarNqe/YUp25htXiDSJw7ttjflgp+
         +TsI+/3mH5OH2fs2QjoXgOfFFtRJNDbd49wBEPM/VKX1e5oquVXjW07aJp/oOQpiLaY8
         qfcp7OXAy1SxqZOkpG/A30agmHSMQi+GzsAUmQjVP1h45gGeJvTaoQ5NOYJo9vY1AbZv
         h5PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3n7thxwkbacwaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3N7ThXwkbACwaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com. [209.85.166.72])
        by gmr-mx.google.com with ESMTPS id c18si1232477oib.5.2020.12.22.00.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 00:54:15 -0800 (PST)
Received-SPF: pass (google.com: domain of 3n7thxwkbacwaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) client-ip=209.85.166.72;
Received: by mail-io1-f72.google.com with SMTP id c7so6998684iob.10
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 00:54:15 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:cc03:: with SMTP id s3mr20709296ilp.146.1608627255224;
 Tue, 22 Dec 2020 00:54:15 -0800 (PST)
Date: Tue, 22 Dec 2020 00:54:15 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000001faff305b709b8ad@google.com>
Subject: general protection fault in ext4_commit_super
From: syzbot <syzbot+9043030c040ce1849a60@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, jack@suse.cz, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3n7thxwkbacwaghsittmzixxql.owwotmcamzkwvbmvb.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender) smtp.mailfrom=3N7ThXwkbACwaghSITTMZIXXQL.OWWOTMcaMZKWVbMVb.KWU@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot found the following issue on:

HEAD commit:    0d52778b Add linux-next specific files for 20201218
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=15b4aecb500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5c81cc44aa25b5b3
dashboard link: https://syzkaller.appspot.com/bug?extid=9043030c040ce1849a60
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17983487500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10c02937500000

The issue was bisected to:

commit e810c942a325cf749e859d7aa3a43dc219cea299
Author: Jan Kara <jack@suse.cz>
Date:   Wed Dec 16 10:18:40 2020 +0000

    ext4: save error info to sb through journal if available

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1282f137500000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1182f137500000
console output: https://syzkaller.appspot.com/x/log.txt?x=1682f137500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9043030c040ce1849a60@syzkaller.appspotmail.com
Fixes: e810c942a325 ("ext4: save error info to sb through journal if available")

general protection fault, probably for non-canonical address 0xdffffc000000000c: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000060-0x0000000000000067]
CPU: 0 PID: 7 Comm: kworker/0:1 Not tainted 5.10.0-next-20201218-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: events flush_stashed_error_work
RIP: 0010:ext4_commit_super+0x52/0x510 fs/ext4/super.c:5548
Code: 48 c1 ea 03 80 3c 02 00 0f 85 21 04 00 00 48 8b 9d 78 06 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d 7b 60 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 f1 03 00 00 48 8b 5b 60 48 85 db 0f 84 13 01 00
RSP: 0018:ffffc90000cc7cb8 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 000000000000000c RSI: ffffffff8217a0db RDI: 0000000000000060
RBP: ffff88802441c000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff8217a7fa R11: 0000000000000000 R12: ffff88802441c000
R13: ffff88802441c678 R14: ffff8880109a5a00 R15: ffff8880b9c34440
FS:  0000000000000000(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000400200 CR3: 0000000014038000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 flush_stashed_error_work+0x1c9/0x2a0 fs/ext4/super.c:727
 process_one_work+0x98d/0x1630 kernel/workqueue.c:2275
 worker_thread+0x64c/0x1120 kernel/workqueue.c:2421
 kthread+0x3b1/0x4a0 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296
Modules linked in:
---[ end trace dca7dc492b64f0a6 ]---
RIP: 0010:ext4_commit_super+0x52/0x510 fs/ext4/super.c:5548
Code: 48 c1 ea 03 80 3c 02 00 0f 85 21 04 00 00 48 8b 9d 78 06 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d 7b 60 48 89 fa 48 c1 ea 03 <80> 3c 02 00 0f 85 f1 03 00 00 48 8b 5b 60 48 85 db 0f 84 13 01 00
RSP: 0018:ffffc90000cc7cb8 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 000000000000000c RSI: ffffffff8217a0db RDI: 0000000000000060
RBP: ffff88802441c000 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff8217a7fa R11: 0000000000000000 R12: ffff88802441c000
R13: ffff88802441c678 R14: ffff8880109a5a00 R15: ffff8880b9c34440
FS:  0000000000000000(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000400200 CR3: 0000000025563000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000001faff305b709b8ad%40google.com.
