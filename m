Return-Path: <clang-built-linux+bncBCQPF57GUQHBBK6MQ37QKGQELFXKPYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 993782E06F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 08:54:20 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id g67sf16881341ybb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 23:54:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608623659; cv=pass;
        d=google.com; s=arc-20160816;
        b=xtLnHclZAJefo0dWV9FmSBHkhFL3olbgbcAruAX2PWkpZtU91JGxZvv7jzLSM38Dtw
         u3ylyLoe23oiq8+i/EmrGjoyre6Cfiylp082KwYK7xgHgyRl5NhcIWqeel8cfN1C3D+X
         XpekpcF2DjCCBVxT8uEWeq9C/Q0XOhUxLht3dmI8vLWSeHL+IFWmtcm5hWV4Y0TFxUf4
         mo1iBd5pS0yZK1ep/X2+eAEMVGZkzlLfF+HhSAMlaooDvUs/WAuzg+I9LFfxtIPq3Boy
         itGvfi7fnxKKXa8o8PmJduSs6vNrSWfWqmR1UcYv8n8IZ3TGAah6K9XE82NJxb58umkQ
         XSjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=F9JjxW2cPDlL0Fd217MTbTl1lfI9fEZC/FaUOBaOpVg=;
        b=y/nIQ8lgKFhj966e7w0L5l5Oj9lxiE7V4yHpyd8gNm/yyIunMII4iOh1NjNSqg1I0P
         iVSDiUPtIps9Q7ytSoqVY4X3R+LE/9EiN0Va1zoea8/Dn/iKEUslGD5mv1D8vgVWKfAD
         pReknfNXZa4b9MXJJqc8rsRSjp16BoIIjq2BNe5qD1Su1oSSxddhHlIXeLf1ZhMZiRm3
         DuRSCqAFk1VtUNtI/f+5pBdKwbDqEgJjfqkIUSWmTt7+H+li1Oh8udjscA0TfnF5Rpzh
         te/ufX01ylMKp39pp69yNJ11xvroTCoMPTSpEsE7UQKM216fBNT1UZl8EoqnOyInGvoy
         LawQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3kqbhxwkbaamv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3KqbhXwkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F9JjxW2cPDlL0Fd217MTbTl1lfI9fEZC/FaUOBaOpVg=;
        b=CxOlVVtDTFeaYo5R9k3r+I0TFZKPEwIw1mrbkG9W4DKOKtnMUgiGZX65YC0H5bISIK
         hySeossKmY+ZWvWqVjKV834u01IpuucK93E479wA2dJgzU4kiqNVQy0CuVZsWLR6+2GM
         L5k5LXVuAObjGqcCJDLOSQ2dwabaeLTgB1lPrWikacpgwpFsu/KtBzf+j0ueL8VQ5IE0
         OKS1WPB0y8R7d5Q7Yc3NF1Sr14ygA7uP+4vzKZe9XYAdE3jqGUpz8SUsLcbzafxielqc
         U0SznK6Ov+uiHPm0lH2vFgl13EwEvTVzMrfLn6t7boScU8ysngP/M7oKmilVdKIC8s1Q
         GKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F9JjxW2cPDlL0Fd217MTbTl1lfI9fEZC/FaUOBaOpVg=;
        b=PcmcLkZnEYlJpZqzsx0W/hx4126z6L/KKC4OmAOpUHfbay03uWIX5CCt9CPbk5pC0p
         LE9X+GLzHJeUkaR1uEY57k9iSsbfFyd1ZqV32cF+aF048YmFrZoReFFInrwPCvql2vPx
         8X83+Ul8jyFSp3An9x2SsGwSxTvaor2J3+AIxc8dpCExpT3TTbPopJJh66+rAQdlzs2n
         U7gvFVXoX5EySWW7BRovMRwKgad2zvfM7RB4x3zqfW+4vzdQRIaCHvKuhTktedC+zJcz
         lIMF8XdkXSucgMruKSVxYx/0RG4bvIQ3rtpDHEv9KI/Y89qh9cKeUqfK4JHuiRoNSjTf
         q+Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Gb93z6dgUWlHJpbqWOtsGsvw/ZIpr3ac7Kx1bNMM156BC25sg
	+txK6uLhI/QJU4Mof07pTBg=
X-Google-Smtp-Source: ABdhPJw4jNoZ9RS6BrBuwJkkncIoPmPJBZFmHWxi4VnI4+dk+jQW2nRYyH1dKb5EXDyWiAq03TpSlg==
X-Received: by 2002:a25:7795:: with SMTP id s143mr28052780ybc.53.1608623659605;
        Mon, 21 Dec 2020 23:54:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls20661082yba.10.gmail; Mon, 21
 Dec 2020 23:54:19 -0800 (PST)
X-Received: by 2002:a25:cb88:: with SMTP id b130mr26238597ybg.433.1608623659192;
        Mon, 21 Dec 2020 23:54:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608623659; cv=none;
        d=google.com; s=arc-20160816;
        b=b34KCSB7wSyY8JCItfcLerzDAe6BFHcDpSVDI35vHP9ESKYaD/w6I7b9YUnUaxFygm
         EdQ0uoA2fu8iqNel1jtCW7A7xfFamoukOIw078Ibo4CRwAtEEI7mN5J/goc1nw7z+UOA
         vSdDS2drQ1TKJJNpcMPliEPuhqMQ8inkDztb2N9LXG+CkRXFoLw259Eb7vFD/9Kpjlyt
         pFtW8SVW4yGvxQwEP+Bto0VtqJi0lj3XgFi7a7dl2a7BgsHK5bPGrgSLxCeCQVyhDUox
         spChX86VqBxl+5tKkr4X01wLoHhZwacwX6mrSQqUD4BbiKEZAmapjYFnXPS+KOcbtrOR
         hOow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=+3sNvl7/QSHl39uxlPG0jsZu7BL9zj0pQ6s3H/yv4X8=;
        b=0siDwZUZY0vlVbsgFo4nW6yZq97BRVawwHV/srbooV/lntAjw/fSaRc/aZzoDyWpSi
         mtcDrc6OLy9dKyjiSyo7bFV9nq+Tm5VOk+yDrbDILHkbQa8ZjefLrngvsBppJGqotlIg
         Ldf5v+G9ZVLtpipwYdtbpfXW7xUF/mZ38no61R9alDqJ0dhGQNvF2MWEtVhDOln7mCQ5
         ZdUbpr5MT9G8QqtrfxsPtswi1llWOnJonJdrVDkNnTr0Z+fo+90QzRnFXX41k8kcp2Gb
         QnPOzpmVE+DA03l7S3SlmitE86u5iBfShfY74Yykbg4cxz/CjjFCkFEQhohbdcHNbY39
         cuvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3kqbhxwkbaamv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) smtp.mailfrom=3KqbhXwkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com. [209.85.166.71])
        by gmr-mx.google.com with ESMTPS id 23si1638456ybc.0.2020.12.21.23.54.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 23:54:19 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kqbhxwkbaamv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.71 as permitted sender) client-ip=209.85.166.71;
Received: by mail-io1-f71.google.com with SMTP id j25so6911808iog.22
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 23:54:19 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a92:ae06:: with SMTP id s6mr20668626ilh.282.1608623658795;
 Mon, 21 Dec 2020 23:54:18 -0800 (PST)
Date: Mon, 21 Dec 2020 23:54:18 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000c2877f05b708e1a5@google.com>
Subject: WARNING: ODEBUG bug in ext4_fill_super (2)
From: syzbot <syzbot+3002ac6b4fd242a64228@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, jack@suse.cz, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3kqbhxwkbaamv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.71 as permitted sender) smtp.mailfrom=3KqbhXwkbAAMv12ndoohudsslg.jrrjohxvhufrqwhqw.frp@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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
console output: https://syzkaller.appspot.com/x/log.txt?x=16190613500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5c81cc44aa25b5b3
dashboard link: https://syzkaller.appspot.com/bug?extid=3002ac6b4fd242a64228
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=128f5123500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14f9f30f500000

The issue was bisected to:

commit e810c942a325cf749e859d7aa3a43dc219cea299
Author: Jan Kara <jack@suse.cz>
Date:   Wed Dec 16 10:18:40 2020 +0000

    ext4: save error info to sb through journal if available

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d9df07500000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=11d9df07500000
console output: https://syzkaller.appspot.com/x/log.txt?x=16d9df07500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3002ac6b4fd242a64228@syzkaller.appspotmail.com
Fixes: e810c942a325 ("ext4: save error info to sb through journal if available")

EXT4-fs error (device loop3): ext4_fill_super:4943: inode #2: comm syz-executor723: iget: root inode unallocated
EXT4-fs (loop3): get root inode failed
EXT4-fs (loop3): mount failed
------------[ cut here ]------------
ODEBUG: free active (active state 0) object type: work_struct hint: flush_stashed_error_work+0x0/0x2a0 fs/ext4/ext4.h:2040
WARNING: CPU: 0 PID: 13670 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Modules linked in:
CPU: 0 PID: 13670 Comm: syz-executor723 Not tainted 5.10.0-next-20201218-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd 20 af bf 89 4c 89 ee 48 c7 c7 20 a3 bf 89 e8 30 78 05 05 <0f> 0b 83 05 55 8a b9 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
RSP: 0018:ffffc90001d0f9b8 EFLAGS: 00010282
RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
RDX: ffff888024b63600 RSI: ffffffff815b95f5 RDI: fffff520003a1f29
RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff815b7a4b R11: 0000000000000000 R12: ffffffff896ae040
R13: ffffffff89bfa920 R14: ffffffff814911f0 R15: dffffc0000000000
FS:  000000000163a940(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000043fb60 CR3: 000000001226b000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 __debug_check_no_obj_freed lib/debugobjects.c:987 [inline]
 debug_check_no_obj_freed+0x309/0x430 lib/debugobjects.c:1018
 slab_free_hook mm/slub.c:1540 [inline]
 slab_free_freelist_hook+0x12b/0x1d0 mm/slub.c:1586
 slab_free mm/slub.c:3157 [inline]
 kfree+0xdb/0x3c0 mm/slub.c:4156
 ext4_fill_super+0x86c/0xdf40 fs/ext4/super.c:5174
 mount_bdev+0x34d/0x410 fs/super.c:1366
 legacy_get_tree+0x105/0x220 fs/fs_context.c:592
 vfs_get_tree+0x89/0x2f0 fs/super.c:1496
 do_new_mount fs/namespace.c:2896 [inline]
 path_mount+0x12ae/0x1e70 fs/namespace.c:3227
 do_mount fs/namespace.c:3240 [inline]
 __do_sys_mount fs/namespace.c:3448 [inline]
 __se_sys_mount fs/namespace.c:3425 [inline]
 __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
 do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x44873a
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 cd a2 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 aa a2 fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007fff16496da8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007fff16496e00 RCX: 000000000044873a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fff16496dc0
RBP: 00007fff16496dc0 R08: 00007fff16496e00 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000006
R13: 0000000000000005 R14: 0000000000000004 R15: 0000000000000004


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000c2877f05b708e1a5%40google.com.
