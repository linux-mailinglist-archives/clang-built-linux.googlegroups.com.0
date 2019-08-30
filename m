Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG7YUXVQKGQETKGQVUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E68A3E91
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 21:42:21 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id g1sf2881911pfo.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 12:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567194140; cv=pass;
        d=google.com; s=arc-20160816;
        b=Klhmsn6rjqlWFf/AtTQkPUHf++HxumkqBpEYe1TNnUdQ7WBPJaTqnB38JcwyGsGm2/
         yf30faY5VcpzQmDIzm+twjtjoN9O/ZMAuZl4DvMU12XpAzP9XPdyPpApodMwY2YW2tGg
         YNaB1t/z4BOv8TnS0+E2ckYv+fGbdN1b7/6fxXCo9LUDBbGLv83Zdm99KFYLPETZcPOW
         8C3M0IvIigUIqNlgDbFSAHnX6X4IcDC0eteIjtkP4dLG9WDFN37HtG938R8u3NZRtPBU
         2kQTKAab9YDqeXnrN2yf54a+hUu9q5CvCg1rL0lcJIiXB65bsRhLHSuODtU3oGvA5Fbx
         dBiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3LTuHRnkDydx5ZCtpoSptHxBnfMWRjpNRHYbM8Hnbug=;
        b=IYM5Drth3XYZUAUaExXYYk4evBE0EOPX4oZuEuRr+iIGlgMPwQm71i6waPhaunSpO1
         uGpz0iA2UYjRQ3aiKhznfvhyYaXKo9kwDxmwZjzoewsOD6HLuN4nuPidt2n/QbukC5Nw
         MlAMpjnaPdWZHPZ9rxLNDJcnIKushjGJM8x36srTbTrG306BidGLe7oUimn/UBJFheOH
         sJS54pkZ7wmoZpOMmjDxk/a1sStiKEdCvUDMx9F4JG6uAG5J/cEthk1o9kh2K7mugo6a
         gxTqB6JPDpuxLx7mqXNTERFuS790mF5UOj89gquZlwcIBtfzYwtb1TmmJeGKVbmPmyKY
         bX8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o5WODZ9l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LTuHRnkDydx5ZCtpoSptHxBnfMWRjpNRHYbM8Hnbug=;
        b=mjN3EXqAsp4ocmN8Y5EuDImK4p6/bDwN2/bg64jL5hSWJAicHvu7yVwwjRl8v3YWt6
         wSPhgnZCdriAJA6ZLNml5d2JH2LDsSj5XTgupsHWMNya2uSQMHQw39nGZdW9LDwjS+tk
         ni6A6ZxaS1wP0ers2rpl0GKT3Ko0w90kW+vcIjRXYLIVLxVGsos2L/ZSJbTFR2VqSzmM
         mBFg65NgBDEANIQ+chHj6NLs66B3id/eYXLv5O8S/KTMlHj9xvv/eVpWnpbJGhUkcqoU
         yB0FqWauPPwdlxjEdFqtDM6XUrX4RMX/eG0jOPLsbHzZxx0HhQwSp//D0wOuPcVqGVba
         KQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LTuHRnkDydx5ZCtpoSptHxBnfMWRjpNRHYbM8Hnbug=;
        b=sv8r5GygLdWjNRWYun/HLzpXGlMNENBX8cU91kcEZ5AW/nGkOfTwEtRPZTS3tP9xyA
         dIBGxRwtTQFhrA2+ffJvStjZk/g9Scgan6+fIsie+A33E9FR1DKbDSsvZiP6Ncnfqiwz
         rJJCZh6e95pAbxXBvKDUSoXSVaZ9LB4flfOL9QslEhBytYWs4FnLpRNuudwZ6inch6lo
         jtoGqWv9+GgcxKmCG2GKSZ4Y7Tc2aF0wwPVkPsZj1FT1OdS1VKYZFKcyTuxif9rsdApZ
         A5dajz6NvJH+thU8seMwfgwMeXIMo003eTJglFP48k1oz4uQNm7R3j4FV7dXjephuWfx
         +7Sw==
X-Gm-Message-State: APjAAAVnbF39EyTekhnTmMA3fMjjkC1vKw1feJBYirMgO55fv+SWOGwS
	0+jy0VmWI+GcCIxpPWi+260=
X-Google-Smtp-Source: APXvYqyr2vsVl2kLxaWwe05F2Oz42NpTnc6sD3BZcR9kLy4PVdF7j2l9LksXBrgzUMX5eOJU6lu7yA==
X-Received: by 2002:a63:506:: with SMTP id 6mr14211466pgf.434.1567194139813;
        Fri, 30 Aug 2019 12:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1c24:: with SMTP id c36ls1523218pgc.14.gmail; Fri, 30
 Aug 2019 12:42:19 -0700 (PDT)
X-Received: by 2002:a63:460c:: with SMTP id t12mr14191800pga.69.1567194139410;
        Fri, 30 Aug 2019 12:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567194139; cv=none;
        d=google.com; s=arc-20160816;
        b=gvy3Voyvye6AB2zu8lFusahngJbS4X8lA0HEMroEKW6ixrGvMr8/YhEMkBOe74+9wY
         zdl/EPA5boA9rfS4y9C1ZUHR1zEKswbvN2m6zAwn+eYQGATGvBHxjVJA9L9w3ivh+lAS
         FbDrMentynSxfJB9Pmb6t7sr9rO0IrwqIdFEGBStx9pQu2K2qnUsiwzUXkOFLzUvx6GJ
         l72UNifvg3NRw0+sUE1t2LYZkaxfWvpVQnUHyZrviOrxpgpaYgT1uUl2Qnlwzo96GiSP
         uCkhdkVmxIo8omn8ltjE+7KL+LgkzJt9vimw1WJoSkfSXid3Icch9VkIZ+E8gnEHmZbG
         +IWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6PPz2EbfzStSo4SVWeCERtG/5bFLCDtTc3yiknauZL4=;
        b=XXHP5f1ru1kGwTouZDC2UmMVApeu39jCdFVJMReo5HKMPzCK4kF3aGNL3Nhc4UxmMF
         G+7Ve4Lj82Kk2tnF4SDyW//dzZtdzdiHcJo3lN+Ry5ggtqexpr5IgxIVM7sn3/JxQags
         MN45zTMvvIOC1k3SYIGzeiDeD1RqbDX36xUpj5KdnJsva8Md8/jYtRvkIuTQNUIHN82Q
         IL9osouKzRZxjr0wB65coa7mf3WDYMT6E68c29sdxaHxVauWQiUonD98qxReHDO7q9M3
         GA1daiuKVXwIGcHbEkfCrPgr+Li6l4GB9ZL15Wobq6PobjFxjaKdzOCWcDkpJXw0x0K1
         jquQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o5WODZ9l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x2si328076pfq.3.2019.08.30.12.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 12:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id f19so3813055plr.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 12:42:19 -0700 (PDT)
X-Received: by 2002:a17:902:2bc7:: with SMTP id l65mr16635741plb.119.1567194138425;
 Fri, 30 Aug 2019 12:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006fc70605915ac6ad@google.com>
In-Reply-To: <0000000000006fc70605915ac6ad@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Aug 2019 12:42:07 -0700
Message-ID: <CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q@mail.gmail.com>
Subject: Re: WARNING: ODEBUG bug in ext4_fill_super
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, syzkaller-bugs@googlegroups.com, 
	"Theodore Ts'o" <tytso@mit.edu>, 
	syzbot <syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o5WODZ9l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Dmitry,
Any idea how clang-built-linux got CC'ed on this?  Is syzcaller
running clang builds, yet?  (this looks like a GCC build)

On Fri, Aug 30, 2019 at 12:39 PM syzbot
<syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    ed858b88 Add linux-next specific files for 20190826
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=14209eca600000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ee8373cd9733e305
> dashboard link: https://syzkaller.appspot.com/bug?extid=0bf8ddafbdf2c46eb6f3
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
>
> Unfortunately, I don't have any reproducer for this crash yet.
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+0bf8ddafbdf2c46eb6f3@syzkaller.appspotmail.com
>
> EXT4-fs (loop2): corrupt root inode, run e2fsck
> EXT4-fs (loop2): mount failed
> ------------[ cut here ]------------
> ODEBUG: free active (active state 0) object type: percpu_counter hint: 0x0
> WARNING: CPU: 0 PID: 12342 at lib/debugobjects.c:481
> debug_print_object+0x168/0x250 lib/debugobjects.c:481
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 0 PID: 12342 Comm: syz-executor.2 Not tainted 5.3.0-rc6-next-20190826
> #73
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:77 [inline]
>   dump_stack+0x172/0x1f0 lib/dump_stack.c:113
>   panic+0x2dc/0x755 kernel/panic.c:220
>   __warn.cold+0x2f/0x3c kernel/panic.c:581
>   report_bug+0x289/0x300 lib/bug.c:195
>   fixup_bug arch/x86/kernel/traps.c:179 [inline]
>   fixup_bug arch/x86/kernel/traps.c:174 [inline]
>   do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
>   do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
>   invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
> RIP: 0010:debug_print_object+0x168/0x250 lib/debugobjects.c:481
> Code: dd 60 6c e6 87 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 b5 00 00 00 48
> 8b 14 dd 60 6c e6 87 48 c7 c7 c0 61 e6 87 e8 20 31 01 fe <0f> 0b 83 05 f3
> 67 83 06 01 48 83 c4 20 5b 41 5c 41 5d 41 5e 5d c3
> RSP: 0018:ffff88806c9ff938 EFLAGS: 00010086
> RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
> RDX: 0000000000040000 RSI: ffffffff815bd606 RDI: ffffed100d93ff19
> RBP: ffff88806c9ff978 R08: ffff888067d48140 R09: ffffed1015d04109
> R10: ffffed1015d04108 R11: ffff8880ae820847 R12: 0000000000000001
> R13: ffffffff8935e800 R14: 0000000000000000 R15: ffff88806903c818
>   __debug_check_no_obj_freed lib/debugobjects.c:963 [inline]
>   debug_check_no_obj_freed+0x2d4/0x43f lib/debugobjects.c:994
>   kfree+0xf8/0x2c0 mm/slab.c:3755
>   ext4_fill_super+0x8cb/0xcc80 fs/ext4/super.c:4684
>   mount_bdev+0x304/0x3c0 fs/super.c:1407
>   ext4_mount+0x35/0x40 fs/ext4/super.c:6019
>   legacy_get_tree+0x113/0x220 fs/fs_context.c:651
>   vfs_get_tree+0x8f/0x380 fs/super.c:1482
>   do_new_mount fs/namespace.c:2796 [inline]
>   do_mount+0x13b3/0x1c30 fs/namespace.c:3116
>   ksys_mount+0xdb/0x150 fs/namespace.c:3325
>   __do_sys_mount fs/namespace.c:3339 [inline]
>   __se_sys_mount fs/namespace.c:3336 [inline]
>   __x64_sys_mount+0xbe/0x150 fs/namespace.c:3336
>   do_syscall_64+0xfa/0x760 arch/x86/entry/common.c:290
>   entry_SYSCALL_64_after_hwframe+0x49/0xbe
> RIP: 0033:0x45c2ca
> Code: b8 a6 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 9d 8d fb ff c3 66 2e 0f
> 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff
> ff 0f 83 7a 8d fb ff c3 66 0f 1f 84 00 00 00 00 00
> RSP: 002b:00007fa684517a88 EFLAGS: 00000206 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007fa684517b40 RCX: 000000000045c2ca
> RDX: 00007fa684517ae0 RSI: 0000000020000000 RDI: 00007fa684517b00
> RBP: 0000000000001000 R08: 00007fa684517b40 R09: 00007fa684517ae0
> R10: 0000000000000001 R11: 0000000000000206 R12: 0000000000000003
> R13: 00000000004c89d6 R14: 00000000004df8f8 R15: 00000000ffffffff
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000006fc70605915ac6ad%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAaFKr5gDw31uRzGoEC1JaJGNnrnAX_ysx9kH7dKx19Q%40mail.gmail.com.
