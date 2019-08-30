Return-Path: <clang-built-linux+bncBCMIZB7QWENRBG72UXVQKGQEMN6WUYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E86A3E96
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 21:46:36 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id a9sf4509661pga.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 12:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567194395; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSI6m6xdt5f3oDZdBZhXMCqnKMUtwx2i4bQIWTbtIiaeHIhWmmP8wRjdrDWbxJgejX
         Edl+hisSI8XJ3f+svdEpUtSWaDePQ1Iog1ZpX4SV4wQCeeMdHkWA+dEAcptH8Wm7GoXt
         dAWYn342yPEDrkzWCQ9nvm2bVvDCjMv/hcRnWjZrc59UXdaVxquHRSme98gcoF0EpEmW
         27Teh4CU5y0sGxDXqlS1nIp3TJdKSrTr6nQP4sDrKjkklXrWwNAYEZBZeDg31tsgXknJ
         NlhpAnwOP/or7Ledpkqm8Z+ESlRinK2TZx/8D6Fv7KRU30EkBqjMKpwARQIuK3pgIBT2
         R3Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xAW9G3QruMxdCSAJ3uaouxU6ZMcL83UM86xhxzkQFXA=;
        b=ze+ZPYlLSXaZ2FzJm6QRxHd/eteAw08IP7m9uXG0RdsgmXp6ykJrbyPsyLRyGnjkTH
         GSy3ZdU/tF2cS32YMzP/Xeb088Iiun1LMST7uIn/JSQExg08cGS/31NI6OZhwEdJoYQV
         9qdlnoyZxjjsykZ/ObBdYMCmN7i2TKiByY4YxQvLGw22op7z2VRtp9HOwjcz5IBihupo
         bVUXR2/5dz1XkqigsLu5wWMG03MkF+gYLhEV73dNTeTvGL8C9xW7Q1YJlXxvdWYeJmcb
         MKuKMuoFMy6+C6c27p5gHh7pCxLV9UBJoa/N4vHYRlNstZqarwn+JXYePYiOfCWb2VJW
         cOTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B6kEGyu0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAW9G3QruMxdCSAJ3uaouxU6ZMcL83UM86xhxzkQFXA=;
        b=LrX1jddrjPx0LaUoXcHQ/hDbDgPHD5ZZ2+PYTOdTR1Q/aJ1cYPERg6+sqQ7ogMONGA
         bac9xXxA17WfVp+saXdKs6GcPIQszjEIFA+PzS7Dc+GkKxG0SrY+QmAckKLoUhh+BEJu
         CQuDUk0trgtQPgic/jPkNn+obCj62t0tRt/1mC4/Ts6fbzPhh/Jt+M8l9sVpqKqiJ0YH
         L/kt1gmdtWxgv0bteS5khcaHF4zv7D8B35xoBKtdhUTD95imZXyDExQqrrOUrpfrhmoP
         sMqJKPDkOTYqnHk1NgM+/Q3DlGiUbhhT2qESuAFNgexWGdQhcxG5HDCFUChKN7071eWz
         6FsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAW9G3QruMxdCSAJ3uaouxU6ZMcL83UM86xhxzkQFXA=;
        b=klG8+zHx+pgigFnhOGFCZqtWbivnlqVFCMIhQO4z9Nu4bqswisfw+77+FEqCW1A+F/
         LpP2aRrhzKjheVvB98dh/3YcHU0WUHowQ+pt3pK4QqYF5fUsxFVnG7FmsE31Q22b08zA
         5v2fQbmNt85YWG6JRpF+Cm4d0lyHmMBvv6TLyh+0XQ0T7kCPkdHErMV+07DrNmrg/oCE
         MH/salUe9zLoJaN5CJyzGmiKeQxyrdwJShW/rr2X0x97q2X14HXZG9Py1umrrGZiTkF+
         rOuUJUfsevDqXjA0KsP7wfVEyUcwrdpq40HyyjJjc5R3WAr6LF66QQgwEdQl7eMLRccs
         NSvQ==
X-Gm-Message-State: APjAAAU0d9i7w2arGLx+I6pqfIXxiOlgxn0wl3J0JQKkyov8cPvnhk43
	jlPl/ydzjAmvyMHmn77nMQ8=
X-Google-Smtp-Source: APXvYqw8m4ZQivmJ/pRFN4tXkUvYWLcXhmQt1zyY3c+sQmzV//bATmfJUKNVX7vuu7YHzg3CPJDxiQ==
X-Received: by 2002:a17:902:6687:: with SMTP id e7mr17774566plk.211.1567194395559;
        Fri, 30 Aug 2019 12:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6203:: with SMTP id d3ls1528765pgv.16.gmail; Fri, 30 Aug
 2019 12:46:35 -0700 (PDT)
X-Received: by 2002:aa7:8498:: with SMTP id u24mr20389974pfn.61.1567194395206;
        Fri, 30 Aug 2019 12:46:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567194395; cv=none;
        d=google.com; s=arc-20160816;
        b=HSkTxcux2EunoHFAThAz3FtUvmRKnsYlG0eSrDDwu7d0ZmXm4F+4aLLBIJefQq2MqZ
         fDHk3y3kKP29snsvkt/Y3jeN3A2J/tkRWlKoZ6l+KYSEO47FdhKHZHETApojQfII1yYi
         Yk6wWCPpD2/H+tEMlgoOIeDCWinFjuTX2yNi8MObBHvL5la/wsA0Y0xzyFEGTpwccrKL
         dTvsDZHvRAF2l4gyzko9wfr1CGwAFTR9E0/h9+MtpphtTWp2zaydxVkHRxTNRLaBdMZl
         gudybARUpVNmt7FNaH6DuZ9Hgz2bm0Ckz04p9jus30d+SY6dAsWKXhsRu875ZaH5ADd7
         BFAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=prUuXHya4Y/DomAW4iXoguJVfhofWITQRPrJf210z+4=;
        b=jYbs5JAfJz1G0iqXefwyuluuHg1QWrNXo2tBKIozhwqhjQBC6BwJIoLV01R2bBJK5g
         1+Icp1lvWCTO31oImAeDYrNOOCFmULfGLPgybjENb/EVO6mauVC/G3V3s9tqoo2we70b
         tHOXzD6TGaWcG6hEwZF+/zXEWgPSBY/fqdNnkMqNcNnLZjYASBY4LGnYzCc13rjnf+62
         cCgKxU1zDVwELqD+mpM6zTQ5bQ8Qna01Y/H/PbXkDugHMJPZV9OaFEimdfwsm2nT7GzZ
         Q0YgNVCEHufrTDnsJzOflsOTZATANUYp2jaBM0X13fJJ1Gq1fzS5YrTOZ+wTni+wagbJ
         fy4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B6kEGyu0;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id q2si334794pgq.3.2019.08.30.12.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 12:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id b2so5406275qtq.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 12:46:35 -0700 (PDT)
X-Received: by 2002:ac8:45d6:: with SMTP id e22mr12364511qto.380.1567194394198;
 Fri, 30 Aug 2019 12:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006fc70605915ac6ad@google.com> <CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Aug 2019 12:46:21 -0700
Message-ID: <CACT4Y+aiSbZr=m0E1c2eHe6JvyNeKUDxEb2NTLxk77LsBXGVVg@mail.gmail.com>
Subject: Re: WARNING: ODEBUG bug in ext4_fill_super
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, "Theodore Ts'o" <tytso@mit.edu>, 
	syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B6kEGyu0;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
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

On Fri, Aug 30, 2019 at 12:42 PM 'Nick Desaulniers' via syzkaller-bugs
<syzkaller-bugs@googlegroups.com> wrote:
>
> Dmitry,
> Any idea how clang-built-linux got CC'ed on this?  Is syzcaller
> running clang builds, yet?  (this looks like a GCC build)

syzbot always uses get_maintainers:

$ ./scripts/get_maintainer.pl -f fs/ext4/super.c
"Theodore Ts'o" <tytso@mit.edu> (maintainer:EXT4 FILE SYSTEM)
Andreas Dilger <adilger.kernel@dilger.ca> (maintainer:EXT4 FILE SYSTEM)
linux-ext4@vger.kernel.org (open list:EXT4 FILE SYSTEM)
linux-kernel@vger.kernel.org (open list)
clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)


> On Fri, Aug 30, 2019 at 12:39 PM syzbot
> <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com> wrote:
> >
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    ed858b88 Add linux-next specific files for 20190826
> > git tree:       linux-next
> > console output: https://syzkaller.appspot.com/x/log.txt?x=14209eca600000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=ee8373cd9733e305
> > dashboard link: https://syzkaller.appspot.com/bug?extid=0bf8ddafbdf2c46eb6f3
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> >
> > Unfortunately, I don't have any reproducer for this crash yet.
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com
> >
> > EXT4-fs (loop2): corrupt root inode, run e2fsck
> > EXT4-fs (loop2): mount failed
> > ------------[ cut here ]------------
> > ODEBUG: free active (active state 0) object type: percpu_counter hint: 0x0
> > WARNING: CPU: 0 PID: 12342 at lib/debugobjects.c:481
> > debug_print_object+0x168/0x250 lib/debugobjects.c:481
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 12342 Comm: syz-executor.2 Not tainted 5.3.0-rc6-next-20190826
> > #73
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x172/0x1f0 lib/dump_stack.c:113
> >   panic+0x2dc/0x755 kernel/panic.c:220
> >   __warn.cold+0x2f/0x3c kernel/panic.c:581
> >   report_bug+0x289/0x300 lib/bug.c:195
> >   fixup_bug arch/x86/kernel/traps.c:179 [inline]
> >   fixup_bug arch/x86/kernel/traps.c:174 [inline]
> >   do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
> >   do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
> >   invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
> > RIP: 0010:debug_print_object+0x168/0x250 lib/debugobjects.c:481
> > Code: dd 60 6c e6 87 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 b5 00 00 00 48
> > 8b 14 dd 60 6c e6 87 48 c7 c7 c0 61 e6 87 e8 20 31 01 fe <0f> 0b 83 05 f3
> > 67 83 06 01 48 83 c4 20 5b 41 5c 41 5d 41 5e 5d c3
> > RSP: 0018:ffff88806c9ff938 EFLAGS: 00010086
> > RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
> > RDX: 0000000000040000 RSI: ffffffff815bd606 RDI: ffffed100d93ff19
> > RBP: ffff88806c9ff978 R08: ffff888067d48140 R09: ffffed1015d04109
> > R10: ffffed1015d04108 R11: ffff8880ae820847 R12: 0000000000000001
> > R13: ffffffff8935e800 R14: 0000000000000000 R15: ffff88806903c818
> >   __debug_check_no_obj_freed lib/debugobjects.c:963 [inline]
> >   debug_check_no_obj_freed+0x2d4/0x43f lib/debugobjects.c:994
> >   kfree+0xf8/0x2c0 mm/slab.c:3755
> >   ext4_fill_super+0x8cb/0xcc80 fs/ext4/super.c:4684
> >   mount_bdev+0x304/0x3c0 fs/super.c:1407
> >   ext4_mount+0x35/0x40 fs/ext4/super.c:6019
> >   legacy_get_tree+0x113/0x220 fs/fs_context.c:651
> >   vfs_get_tree+0x8f/0x380 fs/super.c:1482
> >   do_new_mount fs/namespace.c:2796 [inline]
> >   do_mount+0x13b3/0x1c30 fs/namespace.c:3116
> >   ksys_mount+0xdb/0x150 fs/namespace.c:3325
> >   __do_sys_mount fs/namespace.c:3339 [inline]
> >   __se_sys_mount fs/namespace.c:3336 [inline]
> >   __x64_sys_mount+0xbe/0x150 fs/namespace.c:3336
> >   do_syscall_64+0xfa/0x760 arch/x86/entry/common.c:290
> >   entry_SYSCALL_64_after_hwframe+0x49/0xbe
> > RIP: 0033:0x45c2ca
> > Code: b8 a6 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 9d 8d fb ff c3 66 2e 0f
> > 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff
> > ff 0f 83 7a 8d fb ff c3 66 0f 1f 84 00 00 00 00 00
> > RSP: 002b:00007fa684517a88 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
> > RAX: ffffffffffffffda RBX: 00007fa684517b40 RCX: 000000000045c2ca
> > RDX: 00007fa684517ae0 RSI: 0000000020000000 RDI: 00007fa684517b00
> > RBP: 0000000000001000 R08: 00007fa684517b40 R09: 00007fa684517ae0
> > R10: 0000000000000001 R11: 0000000000000206 R12: 0000000000000003
> > R13: 00000000004c89d6 R14: 00000000004df8f8 R15: 00000000ffffffff
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
> >
> > ---
> > This bug is generated by a bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for more information about syzbot.
> > syzbot engineers can be reached at syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report. See:
> > https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006fc70605915ac6ad%40google.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BaiSbZr%3Dm0E1c2eHe6JvyNeKUDxEb2NTLxk77LsBXGVVg%40mail.gmail.com.
