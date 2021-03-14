Return-Path: <clang-built-linux+bncBCQPF57GUQHBBL4YW2BAMGQEXQCIZJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0376433A28F
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 05:08:16 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id i11sf21645362qkn.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 20:08:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615694896; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zx29WTk5ypjrh7dsSwdMKD5aAGDits1FgfHVmWSQ4veQ2SKkaJhq9fIQpsRs96IYGR
         10nnkn0rBKIfi0NRgyAWF/o6+Wye58lXkpDvi+aaypRj7haV3l9+9G/VomNMkIZULYol
         3xh51pjH7mxe77NB+utXeUcfDuo7TEq+hHOv3Yq+HbSrda8TQuEBn8DB5yKZsZVGDjzb
         5Fz82p833UDjyu7yWLp63Qau1EmolK8xK+7ebS/ceTQgv4+gXDakxWkvz2vUaDS4VzjT
         QtXlvWSQ4B9CNmmjHkBHQCH5hIxmeVfcIss7Pv4Txd6Kj1+9ZLQc9hphqaFnSoqE0YKO
         sJWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=y6y26D7ViT1lZQnHfxTKy//iJO7MhQH5M1EWHDfPqtY=;
        b=E9TnlJZeuTbWp6DwZ4RcmG1CzoFuUnTvVKVnZmtswKyva5UvK440jmbSSpPl7jbBjM
         W0T+Du+0F2r7aZSl+GxJYUFBKZ8Hs5yC6OTZ6ezAtzK+mqePJhsfzc0ETj23W3omzBwS
         RTfOaIxii5KgmZboFJVqkSj/7LWI/0S4xNdWgJxBAWJNMDzeChkN9EBAMz/25eiOqz0z
         NHil7F1HiJFs/WfL3rCjDI7ex63lkxpYL90ygRqR+6UH+vbTOETMPTKVSzr99du5Y1St
         6upDMJR1+Xdx3qWipNe+JoezrM2HvRksGSv8pCvkD8GOtrmWERwK8n/nQr5fasBiosTc
         /bpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3loxnyakbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3LoxNYAkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y6y26D7ViT1lZQnHfxTKy//iJO7MhQH5M1EWHDfPqtY=;
        b=cCOJbp35kptN3akHUwa3XONyTNBX0jypRXBvuFviWuxNldlc+6hggqVQlRrsX0WYdA
         /68zxXmAXKhV0GW/EcRGiNmfel3MptrxfGggqemkkp794z79NL7kKafe9ENhNRDZEBN3
         MMnRbXREnBzDuaqpXjN6Gth3N4Tnrxm2hkx3QHUtOq2tOBZp1vI0hS1l7Fp7qRMIFCnS
         KcEGZv4kJNHP3I0mflHkajpv6zjQNaqtPBoxssKrmHjCvoMfgyvSECOSJp5HOfOGeXWk
         UAFfNJqCgfTZIoh7BLzpX34eSAgfkoqqE3pXqmNJL4gPyckwNs60HVqgm7e2P/njJDsQ
         P71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y6y26D7ViT1lZQnHfxTKy//iJO7MhQH5M1EWHDfPqtY=;
        b=XiglSPLWd42aDbhZNkYBFMj+VcxPkojTSnDUU2FlpH58n4evDhi2AIcHZfg1uDStDx
         KfYS9Sa4Ou/6oF+tLTjqWehZrhah46cO11OEGc6BY7/WdrldTYRIvxM0DnJ5zC/OHMOj
         cyO1VGwXhF38/usdnRHYJxT+09mkrb9FBHDqfdAEwL3KdbNxx40la2v1COA1tW7yrOSE
         dyUkDK1or8daI2YahxfFzyB1x89+cdMo9KV8I4Zoq1vZbik8AyzpMl3rxKmEDZP+UYED
         2df9Bk8iAeiwZzQs4tFqB9s5Du4xI6hl+ldH/BCdKfrkoL/Tc1X+f3b/pHU79aYX9MVv
         HZlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TnZ9qPeUhWaLxFbjd7Rs7ZpsqRiICzT2VyAbn91PTuum0hQKh
	9Ybf9PWcdRdfKWzS4RdcbXM=
X-Google-Smtp-Source: ABdhPJyO35tJWzI1AWGqJGD41sX6X3uGORwWOAzKk3CRqfbswFh4J6Q48a/IJvHZcMMoiWPWIHO5Qw==
X-Received: by 2002:a0c:f890:: with SMTP id u16mr5099315qvn.21.1615694895885;
        Sat, 13 Mar 2021 20:08:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls6133183qkc.3.gmail; Sat, 13
 Mar 2021 20:08:15 -0800 (PST)
X-Received: by 2002:a05:620a:11ad:: with SMTP id c13mr19581206qkk.282.1615694895373;
        Sat, 13 Mar 2021 20:08:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615694895; cv=none;
        d=google.com; s=arc-20160816;
        b=NaUdtDkZYFv1dAhbBW/PJUFCZsVeiwzxFClmNqeHO4bZ4jKB7HjuIkMg/j3lJRCxD3
         R3/EyWJgQCvLZogbs2Dpo0+4H9+deNW0VDUNNqfWBNksA32JzyoQTAk7/XgDfzIgjJnd
         Reyu02PTOzVueAULjoIcjpE2Br6ClvIM8IN/e9LsEBZxI+oS/QdMHgHzC3Uvzs1z+hlh
         TgpButBZZl+FTEFgOjDyNYWStZPdKlXvxG9oQ+UwujBl1VD607p2AVnDwHricyvXvGq8
         oXKuAhy/wgLgbvULeJ9sTSWqh+BRnT1D8zw4MZQ5ZWxDp9aTtLfs0m2+W1tJ5/9YvhzU
         k86Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=TtkRA0Hu3Y+KLac0tFf6DWHs07p+A8tIMF93ZOTvvy0=;
        b=Jtiz0sLqDrm4xmsoFmgSQrUbpbR0l3f433Uiiiu6ZJRIz846+3szzLjaIX1yLUgRge
         /x1B7haKji8IkXEVb+zNKVvlEDIcaK9+5WP1J6OYPu+TVlG0XPGHzXmlYIEg65xCcFS7
         3q48Mlo1TIGwZMfHGeKHYFmDaelrnQGJqDnM0ARSS1xjwRjPghJHbkCGyAam85oQ8IkB
         P8O3E2BcQZnmKQp+4sb3fNJRQs339JXZfdCOSZq1oOIo3vmJgTDFxdyevxFvqtUrxO2t
         xQ4DORqhaLrwM7Euz/kOCvW6mPTFfb3EFk2EP9FGg6OnouBbfjAVsWe4mrdxWHwcHnQc
         +BRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3loxnyakbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) smtp.mailfrom=3LoxNYAkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com. [209.85.166.198])
        by gmr-mx.google.com with ESMTPS id j36si461585qtb.2.2021.03.13.20.08.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Mar 2021 20:08:15 -0800 (PST)
Received-SPF: pass (google.com: domain of 3loxnyakbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.198 as permitted sender) client-ip=209.85.166.198;
Received: by mail-il1-f198.google.com with SMTP id g11so19141003ilc.8
        for <clang-built-linux@googlegroups.com>; Sat, 13 Mar 2021 20:08:15 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a6b:610d:: with SMTP id v13mr3921173iob.132.1615694894955;
 Sat, 13 Mar 2021 20:08:14 -0800 (PST)
Date: Sat, 13 Mar 2021 20:08:14 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000477fa305bd774858@google.com>
Subject: [syzbot] WARNING: ODEBUG bug in ext4_fill_super (3)
From: syzbot <syzbot+628472a2aac693ab0fcd@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, jack@suse.cz, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, nathan@kernel.org, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3loxnyakbaiu178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.198 as permitted sender) smtp.mailfrom=3LoxNYAkbAIU178tjuun0jyyrm.pxxpun31n0lxw2nw2.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    28806e4d Merge tag 'media/v5.12-2' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=136d1bbcd00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6bcf96204c1b8e77
dashboard link: https://syzkaller.appspot.com/bug?extid=628472a2aac693ab0fcd
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1133abfad00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1191aab2d00000

The issue was bisected to:

commit 2d01ddc86606564fb08c56e3bc93a0693895f710
Author: Jan Kara <jack@suse.cz>
Date:   Wed Dec 16 10:18:40 2020 +0000

    ext4: save error info to sb through journal if available

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=152b9d56d00000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=172b9d56d00000
console output: https://syzkaller.appspot.com/x/log.txt?x=132b9d56d00000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+628472a2aac693ab0fcd@syzkaller.appspotmail.com
Fixes: 2d01ddc86606 ("ext4: save error info to sb through journal if available")

ODEBUG: free active (active state 0) object type: timer_list hint: print_daily_error_info+0x0/0x1f0 fs/ext4/super.c:1334
WARNING: CPU: 1 PID: 12723 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Modules linked in:
CPU: 0 PID: 12723 Comm: syz-executor932 Not tainted 5.12.0-rc2-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd a0 06 c2 89 4c 89 ee 48 c7 c7 a0 fa c1 89 e8 fc 41 f8 04 <0f> 0b 83 05 05 7e fb 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
RSP: 0018:ffffc9000e6ef980 EFLAGS: 00010286

RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
RDX: ffff88801d5e9bc0 RSI: ffffffff815c0d25 RDI: fffff52001cddf22
RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
R10: ffffffff815b9abe R11: 0000000000000000 R12: ffffffff896d7da0
R13: ffffffff89c200e0 R14: ffffffff81629d00 R15: dffffc0000000000
FS:  0000000000f93300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fcda3ec0000 CR3: 00000000155a1000 CR4: 0000000000350ef0
Call Trace:
 __debug_check_no_obj_freed lib/debugobjects.c:987 [inline]
 debug_check_no_obj_freed+0x301/0x420 lib/debugobjects.c:1018
 slab_free_hook mm/slub.c:1554 [inline]
 slab_free_freelist_hook+0x147/0x210 mm/slub.c:1600
 slab_free mm/slub.c:3161 [inline]
 kfree+0xe5/0x7f0 mm/slub.c:4213
 ext4_fill_super+0x84f/0xded0 fs/ext4/super.c:5182
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
RIP: 0033:0x445c0a
Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe8bf4c3b8 EFLAGS: 00000202
 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffe8bf4c410 RCX: 0000000000445c0a
RDX: 0000000020000040 RSI: 0000000020000100 RDI: 00007ffe8bf4c3d0
RBP: 00007ffe8bf4c3d0 R08: 00007ffe8bf4c410 R09: 0000000000000000


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000477fa305bd774858%40google.com.
