Return-Path: <clang-built-linux+bncBCQPF57GUQHBBOH3YH7AKGQEJM5LJIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A8E2D3C4A
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 08:33:13 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id f15sf407292oig.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 23:33:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607499192; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRhdLv5vNBZFYwTPF7Al3dFsHmON0Z3dIux7IrXPeOZLaufw+kvubrA9wiu3AW4Npo
         D7whit78grDU/P4uM1CZiXlNc8jCLAVzLZcgx15mFAIORQF4i2IJCYgPkO47t2jogtZl
         lLhKzKHWgy9rPEx3OjfllwN7hmPLbRrtm323O/TAaJfDIXrqkEHPptXHKOc8jnnjEQcG
         WHO5jaxZg+XDvurDmHQFLEznTduqZToPci6u1h3BiBLGAGVGJkr0NyozuGfNgB7FG/eu
         hX3PZ8uQJ6HVd/sF7ivA6NItgMufb0u2jv+coCoBqeHmdELezqPE6lFf8qI3oWSHyenq
         Mn3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=uhZ582MTIZOB2P4hL5z6Z4jtN95Ecy2Ky+DfDiESoYw=;
        b=tKtuWFfMdXrlatFhhudXR1UsJBojzmjPV5qUgUa2MEaJ9pOFGBekkhWmg6iydjHasd
         5f4wRHTmEv+KhYhQFV36VncKmxEHLaCrIbKdQvmEqPmhd98SxMu082bIGg8nhiVNnDH1
         GD77dnlRfQDQRxJXpgVKCuhHEI85q89MXXNn0E3fvjJ49vj80heh+bGVdeR4hp6MC2Gi
         yi1yueAd+2VnJNwaz6KUmGLcdwgFwsek+hhD4LARM50g9k5Oo7rX7NuMCg83CpmO2kdi
         drX04VejH00AAGqH30eYonuc+XYGBkf//PCilvwZqaIWw7NyNQso55lkMcT/2fk9T7Ny
         nihQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3t33qxwkbapgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3t33QXwkbAPgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uhZ582MTIZOB2P4hL5z6Z4jtN95Ecy2Ky+DfDiESoYw=;
        b=Dof53yAevr5t/jdwLeoudIGOe4pk6ilyatiBm4Y/wVKxXj7+QmjL4fgta9YLgmxkIi
         Lb3rQa1debfz4NgK9Tic8yViQWtS+3d5lCvLIDiMekQ0omNDkOo/kkfKOer2SaVcvTAG
         J5oT37mrQEplOncpF/3TFB9mB6oPRA6i+T9x3vxCeICkf3CLfvYvjIFEoGK7iMfcGTrs
         IJCX5yE/X5XpzLpydQsl/ejlWr86KQIPX+RmgDhgOqr9wBGUb5bSwfNYN75Lu3RLibs5
         HOlcI2kh4V/gd7HWXMT5MZXA0RiXDgze68/jmsDqvYa2Tci66ALw9sacb5lFfhdn6Qya
         9nWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uhZ582MTIZOB2P4hL5z6Z4jtN95Ecy2Ky+DfDiESoYw=;
        b=Bpnxz4+cMCxLJOOsfSXARNVeo7e7gRu1OgiZzadzdU3TSeBmMP3CBZQtH5XOo7jjCv
         nk2q6FnIwMzKBn29yrriCqzH9sTT4q3zL3TYIlHEjPtTGynB5EZ6E1G9xg/TE9VWjgmx
         lm6+2tS0DYaLVY7BgOtaSDT0V5vjHcwfJq7tkt1H0BtVQoXJq5sY/nxO9VYLUnHIwqAq
         EVmCqxcT/0U0j7AvTXtVCxGrVMK7pq4JcewOfEmX+TyWxAFZl554sFvRJglx0QP6TNze
         jx66kalZLGwGs8Zl/ffAIEiL7Gghw3bME8CQV06XhmIXEq7XDlnWDOKuQZZ79wrzUDp3
         kuWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HqwOATfwgbJLtQ7GGR6BS2fGL1bHwWQQz6zl1+vn2EXmSmuTr
	8sp6hiYd9KQ08QKa14w8RSI=
X-Google-Smtp-Source: ABdhPJxp0APCUN21OtNsa/dCJmproQFzGQiq8SBeCJ73YSrVgpDNs3UBvaa5Jko6Rto/caKuCyIzqA==
X-Received: by 2002:a9d:2de9:: with SMTP id g96mr675131otb.209.1607499192308;
        Tue, 08 Dec 2020 23:33:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls208968ots.10.gmail; Tue,
 08 Dec 2020 23:33:11 -0800 (PST)
X-Received: by 2002:a9d:3408:: with SMTP id v8mr655151otb.335.1607499191705;
        Tue, 08 Dec 2020 23:33:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607499191; cv=none;
        d=google.com; s=arc-20160816;
        b=F5oP8dW3HvsAjECKuU4QCCKg0uKHyT7cIOq0brvzybdPiaqK55KE5g9oguYOYgy62r
         ssbNXG0C7UIGBah5yfRLmSeCPO9HWyDtzuZQDd4lqhkCYCrjaC8Wy60S3ET1QOVZtQth
         3LaV+lONyqkz3p8LxRAG67rihGLs6G0IkdcTyfrl7bMZ6xG+JydmgCjjcTiDL2YVfM4V
         sugreS15SLHDwrLP+p5ma9naXMsal1AMbh76a7MrEVnnjizf9S6Gu3pJE74dNTWR9ou+
         1hVUSmkBo8FOkYfj3buJLfjkEYRAeaSr0q+fSbT/dg0AVY2/gqMMc20IkN/zlHUkYOt1
         I1dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=fqgdtXNXsphP7dzwRFVwAVgzQW8ckR3/RpP8iw9eAlU=;
        b=VONttF+9S7nx/FH8ejMrbdJ5P9YCVlzVe3oukGh+S1aW7IbTNJYwbg3xcmW2fP/TWQ
         fBA8B53Dp03vIpb8SlV+lWVhkdfSoQnGxjSq2mGjX6v+Dc0ZN3rhE7/p7pMiHc5DNf5G
         NteLD5B29782G4y8xSU6Emv5tJxRDXSBlLfzS2gDS6mA819IwfBZCbFR1ORqgS9FQkVc
         FyoXXNH+dumuFgI+nfkVrW0LXz7LYfKF9KgF9+W0tjlHiZ5m6VZbPJmKDf767cU+skWE
         1j4Z9TKsi+hBTNyaUbUOTsWO4Ce8ECz5T/dz+s6kBB/pe33WBD4N/k6jtYrKirfag+jl
         I/aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3t33qxwkbapgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) smtp.mailfrom=3t33QXwkbAPgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com. [209.85.166.70])
        by gmr-mx.google.com with ESMTPS id g13si78869ooo.1.2020.12.08.23.33.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of 3t33qxwkbapgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.70 as permitted sender) client-ip=209.85.166.70;
Received: by mail-io1-f70.google.com with SMTP id v21so616318iol.8
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 23:33:11 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a02:37c2:: with SMTP id r185mr1271712jar.107.1607499191461;
 Tue, 08 Dec 2020 23:33:11 -0800 (PST)
Date: Tue, 08 Dec 2020 23:33:11 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000048a9de05b603126a@google.com>
Subject: UBSAN: shift-out-of-bounds in ext4_fill_super
From: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
To: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com, 
	linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org, 
	natechancellor@gmail.com, ndesaulniers@google.com, 
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3t33qxwkbapgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.70 as permitted sender) smtp.mailfrom=3t33QXwkbAPgx34pfqqjwfuuni.lttlqjzxjwhtsyjsy.htr@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    15ac8fdb Add linux-next specific files for 20201207
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=1125c923500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=3696b8138207d24d
dashboard link: https://syzkaller.appspot.com/bug?extid=345b75652b1d24227443
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=151bf86b500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=139212cb500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+345b75652b1d24227443@syzkaller.appspotmail.com

loop0: detected capacity change from 4 to 0
================================================================================
UBSAN: shift-out-of-bounds in fs/ext4/super.c:4190:25
shift exponent 589825 is too large for 32-bit type 'int'
CPU: 1 PID: 8498 Comm: syz-executor023 Not tainted 5.10.0-rc6-next-20201207-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x107/0x163 lib/dump_stack.c:120
 ubsan_epilogue+0xb/0x5a lib/ubsan.c:148
 __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x181 lib/ubsan.c:395
 ext4_fill_super.cold+0x154/0x3ce fs/ext4/super.c:4190
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
RIP: 0033:0x446d6a
Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 fd ad fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 da ad fb ff c3 66 0f 1f 84 00 00 00 00 00
RSP: 002b:00007ffc2d215018 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
RAX: ffffffffffffffda RBX: 00007ffc2d215070 RCX: 0000000000446d6a
RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007ffc2d215030
RBP: 00007ffc2d215030 R08: 00007ffc2d215070 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000206 R12: 0000000000000001
R13: 0000000000000004 R14: 0000000000000003 R15: 0000000000000003
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000048a9de05b603126a%40google.com.
