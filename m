Return-Path: <clang-built-linux+bncBCQPF57GUQHBBUF5RD4AKGQERQBIQCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id E57D1214E92
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Jul 2020 20:41:21 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id 101sf9551707uaf.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Jul 2020 11:41:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593974480; cv=pass;
        d=google.com; s=arc-20160816;
        b=blK8qpdlAB8OI3FNVcvTQOZQrRaNR9h5xNiKQT8RZuOb5JlqEFZYAMkKyDK9aeLh7S
         kP0rospVaYNSlNz24CZ7tdYt/W3XSU2Tyi6Svx9s6WsxclImjpZCD6yX3Di5UiGqe0NZ
         S1XWqeiOvopwlTVPC40EOVcV+zGJTBnT9ZdgT3eGi5TFhXeV2/+i/LYQrkrdVkrlpVxh
         F5qm4qreSI8tBbTplZlO4K2Lk3Vz/ECbmEI6bHrol3xE8KTpTKuS1GT7NdBsYfc3E8a7
         RPb/98m07RrSTpuILL/SuVoMDVMNWCog17MLURt3eVqjwLdZ0q4CExNUiPUgxB9+RGBm
         1C5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=yTk76QBmMVlTORoGXV5o8ith7Fu6RD2aowQlPoeHZqQ=;
        b=iCC/HteNbp2q0fgBQxlq8JvzDtcUIQfQbCHdewKZMedt9EFAkFJa0AaL6V5j1u0iGo
         ffVWHDq+3HPAr0Bu/ktTauIxlLcAZBX0t+rDs4apXhjXH9gkojF2GQbJevTpeWgbPMNn
         oGXXaussUSxdd2nKlks8Pj7f61uVFpjSAETtZCIS+cQyrVmWkEOfnE5Stz81k2xK/Pzw
         9HXhzq9SrP7UdbLX8gttostmSMrS3mA49tLwJkXnEC6jtcseEcDDJHMvmSs6peCujkcL
         4AA2/r4cpnAI0M6r3Sf3IGod0eKKIwpWvQQuAVG3TlOWRdTLxPDTr7YAPpQmme++ybOs
         kq9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3zx4cxwkbabqcij4u55ybu992x.08805yecybw87dy7d.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3zx4CXwkbABQCIJ4u55yBu992x.08805yECyBw87Dy7D.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yTk76QBmMVlTORoGXV5o8ith7Fu6RD2aowQlPoeHZqQ=;
        b=c8JI+dVJuU7ZKS2CsKKmlDnh1OR5Sua+O9VXJfDk8Kk1P7HjeL7PXNoEY1ceYEQ09m
         e0LnxnpgXXrsBrYpPADf1n3R+kVdB/PyzQ5FbXg2fL2+2SStY9OtNuMUexpIBgLC5lzf
         qugJfUKx9sovMHd20siXlElzWNYbgvRTAG0+vw2fb53LfSRkFynkdVI8cIDWwDG1cKs9
         Ed1a0Mp07n73uihWYpHIuc581CJd87SjleGOBB13CgkGa1Vx3akPRPGXFjWvvfNIBLFY
         YNWP9LCXysSdoH+gC5nafaUd1F7gV9Cf7HD2HlIiqxnReJqkzt0jVy4MnMpWOtDk9psc
         usVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yTk76QBmMVlTORoGXV5o8ith7Fu6RD2aowQlPoeHZqQ=;
        b=MRWEy2+207MZ7lIyBQR9v7B6J+nCw3QRlcQkIUcE/oafGuNNKRg8Qm+/ZjgUQOV9x1
         jqlfgIaDLgTvya+J/kqh9U61GMJt4ej0C0/Fxp5yqQpUQG05pvHZOH/KzIwEtVc+ujQj
         urFfACpIjD0vagtE9NLoaf1xd+C81emunsbhReSgdQDYM9XHWeyr9vRHO+7I3BE7DLls
         E0xVq5EoK+WSYlzA5ozpPdqz8UHyWguAZBdKPlNXax0OA+XmgTMiLpOzangIfg58WGE0
         YqjNEo4zYFhJyVG3iJxuS5LamihQaNGrsUvxUormUMTjRfl+FfipqOZgmLIJNuOpuDFe
         FCZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gRtEdSDW3A7fFgcFmen7fyRofbXnldClTeeZeyQ709rit8gm8
	Hz65pJb9cEScNj3hjjpW2Hc=
X-Google-Smtp-Source: ABdhPJzWNQLCrDvcPs/V6mexKSwHwygEDso42m8F2JVXuIqr1IQcREJlCYemEL/AmMGUCimFHB39HQ==
X-Received: by 2002:a67:69c1:: with SMTP id e184mr1813724vsc.119.1593974480646;
        Sun, 05 Jul 2020 11:41:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b6cf:: with SMTP id g198ls700357vkf.5.gmail; Sun, 05 Jul
 2020 11:41:20 -0700 (PDT)
X-Received: by 2002:ac5:c183:: with SMTP id z3mr15133520vkb.74.1593974480112;
        Sun, 05 Jul 2020 11:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593974480; cv=none;
        d=google.com; s=arc-20160816;
        b=0fag9JXfs/r+1S6cE9Ju0jIrJZp++VR+89MNLWdaDRjGCeBpDDa6ls02CqtRltzs5a
         cDM25GueGMct+m9wyp5f5hrumDoAi5i6yX81ZsKIGa0xK2Gz/zK7vnAjpw3/U/1qeKfu
         jEBVkhX1DreCgOdvyeNW1XVD/HRisJmaGD6MSbl57YwLjimy+reGKlkkpjLYlO08SQSO
         QBKwGpNr25QNFrME/3PemikW4x991a3lWlFvuUV53kKL9dhscCpPPFgp4Z5BI0xBIa42
         HG41862FELJx/cjgjqyw5T1NCf+fl5apX5Bf43ERSnU8SGIe/ieuldcHGQrgU/xN2IVv
         K+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=wwEam32TmxH45e9sLjA3XeLOu5dFb4Fi6bFCRKi5JYw=;
        b=VwwQgV11l4Aem3bo5IMZ9WSfRlsMgZkXw7YKysu0Zwbm+tqtv33ztFl0tvJXu536xE
         7KLCjAHSaEVrjeWjNRqiL0ARbr590uuV42Atc/D7f3khsy03o69ZLghvQ+VsvAkIKCql
         jSMhYXM4QNxcN55pnhkI2fckgbl6MRME8b7RHHVvI2DNiuK9Rj4do3AEmB1eM038kCtF
         WLO/Q3C60ybyYShqaYeVIBWvidr+rIzvk+cfgs4U6qJgdjGwC5wM7P/LP0Fg56qDYEA8
         xvG4RLZ7gfwx9leQuPgT4mCWe7FspALuwoKUzYPS6lO7VyVVOYzBXlPQxcMov/8qgDcl
         LAiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3zx4cxwkbabqcij4u55ybu992x.08805yecybw87dy7d.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) smtp.mailfrom=3zx4CXwkbABQCIJ4u55yBu992x.08805yECyBw87Dy7D.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com. [209.85.166.200])
        by gmr-mx.google.com with ESMTPS id y197si965231vky.3.2020.07.05.11.41.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jul 2020 11:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zx4cxwkbabqcij4u55ybu992x.08805yecybw87dy7d.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.200 as permitted sender) client-ip=209.85.166.200;
Received: by mail-il1-f200.google.com with SMTP id o2so26251938ilg.14
        for <clang-built-linux@googlegroups.com>; Sun, 05 Jul 2020 11:41:20 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a5d:8f0b:: with SMTP id f11mr22021918iof.200.1593974479552;
 Sun, 05 Jul 2020 11:41:19 -0700 (PDT)
Date: Sun, 05 Jul 2020 11:41:19 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000a2851c05a9b61ad8@google.com>
Subject: general protection fault in __btf_resolve_helper_id
From: syzbot <syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com>
To: andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, 
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@chromium.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3zx4cxwkbabqcij4u55ybu992x.08805yecybw87dy7d.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.200 as permitted sender) smtp.mailfrom=3zx4CXwkbABQCIJ4u55yBu992x.08805yECyBw87Dy7D.w86@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    9e50b94b Add linux-next specific files for 20200703
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10327e6d100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f99cc0faa1476ed6
dashboard link: https://syzkaller.appspot.com/bug?extid=ee09bda7017345f1fbe6
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15d9e39b100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15b597d3100000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com

general protection fault, probably for non-canonical address 0xdffffc0000000009: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000048-0x000000000000004f]
CPU: 0 PID: 6799 Comm: syz-executor682 Not tainted 5.8.0-rc3-next-20200703-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:__btf_resolve_helper_id+0x149/0xb10 kernel/bpf/btf.c:4102
Code: 80 3c 03 00 0f 85 dd 08 00 00 48 8b 05 70 46 0a 0b 48 8d 78 48 48 89 04 24 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 08 3c 03 0f 8e 50 09 00 00 48 8b 04 24 31 ff
RSP: 0018:ffffc90001637378 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: 1ffffffff1926068 RCX: ffffffff816aa4b6
RDX: 0000000000000009 RSI: ffffffff8188bcb1 RDI: 0000000000000048
RBP: ffffffff818ba3d0 R08: ffffc900016373e4 R09: ffffc90001637670
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: ffff888096648260 R15: ffff888096648000
FS:  0000000000cc2880(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000282 CR3: 00000000a6dbe000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 btf_resolve_helper_id+0x10c/0x1c0 kernel/bpf/btf.c:4164
 check_helper_call+0x1641/0x5650 kernel/bpf/verifier.c:4721
 do_check kernel/bpf/verifier.c:8938 [inline]
 do_check_common+0x7253/0xc2d0 kernel/bpf/verifier.c:10574
 do_check_main kernel/bpf/verifier.c:10640 [inline]
 bpf_check+0x857f/0xce51 kernel/bpf/verifier.c:11093
 bpf_prog_load+0xdaf/0x1b50 kernel/bpf/syscall.c:2194
 __do_sys_bpf+0x1edf/0x4b10 kernel/bpf/syscall.c:4112
 do_syscall_64+0x60/0xe0 arch/x86/entry/common.c:367
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x440379
Code: Bad RIP value.
RSP: 002b:00007ffee37aa6d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 0000000000440379
RDX: 0000000000000048 RSI: 0000000020000080 RDI: 0000000000000005
RBP: 00000000006ca018 R08: 0000000000000000 R09: 0000000000000000
R10: 00000000ffffffff R11: 0000000000000246 R12: 0000000000401c00
R13: 0000000000401c90 R14: 0000000000000000 R15: 0000000000000000
Modules linked in:
---[ end trace d5a7c4fec6f343c9 ]---
RIP: 0010:__btf_resolve_helper_id+0x149/0xb10 kernel/bpf/btf.c:4102
Code: 80 3c 03 00 0f 85 dd 08 00 00 48 8b 05 70 46 0a 0b 48 8d 78 48 48 89 04 24 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 08 3c 03 0f 8e 50 09 00 00 48 8b 04 24 31 ff
RSP: 0018:ffffc90001637378 EFLAGS: 00010206
RAX: dffffc0000000000 RBX: 1ffffffff1926068 RCX: ffffffff816aa4b6
RDX: 0000000000000009 RSI: ffffffff8188bcb1 RDI: 0000000000000048
RBP: ffffffff818ba3d0 R08: ffffc900016373e4 R09: ffffc90001637670
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: ffff888096648260 R15: ffff888096648000
FS:  0000000000cc2880(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000020000282 CR3: 00000000a6dbe000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000a2851c05a9b61ad8%40google.com.
