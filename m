Return-Path: <clang-built-linux+bncBD5LDHXSYUMRB65HX2BAMGQEGAQJAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2013C33C349
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:06:04 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id z6sf15332118wrh.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:06:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615827964; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPeuBN3S6ck28Xn1Mh2r0udv6P3DVnfbuO4LDBI2SOiemmN5WbiYyc5hnxvqNJsqU7
         +VtBpcDnkojzpmcZRbFPfgSLkD6+ZFrHHTGKIn4n7uFzLZXy5Jc5mGGGyRmZRFixfMxC
         SycsAQ+D5jU/nUEFyktDhUddsOLUe534UmuNr4ukgvtyGQ018WTLx5CaNfwec3REXTIG
         gaNwhzd2bGlszOXoWfVhBTgZoQQcOT9E2pa5HEMejJR+1kmRVum7xaYR5gRALOkf7R+7
         WIVYadYwe1I7uJGFEDoxJYHP6M9nQQsMuRq+Fomc0qIVBwKZM7UwiZpjAmvGpC6WYaiG
         fUkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5cOz1HEgcHvvMPQX/b6dMIdb31myksIFr9FtMhaoHJs=;
        b=zM4GOQFbdttp3e6/UnltIGPjSbJxt3Dc/qDUe35JSu5qw9iGQQLbxfdQQ0ew89l+2R
         VRxyEjyBQFE+V5S8HLe+35hxE3TUKJWkXMON70lDOHOtUVXcvmMfUPEDoNoPuKx9N79z
         Vuf1IJuXnukka8ZARfDB+wqnGz8XbHyx0g/8EHi52Q21ip/v1u/DiDZxX3sfMKZtdOHc
         6IGJHVeufCrxBc99QvTu3CK31OqYO0F+qVnQTsVgCEUyyegVGBiWpe4BvBBw3q9FZg7p
         4OzEnakKTUWv1rVHcGvHO19JOiGUQMnNw5uJ72CXNf6JeuG5wGB4mQWwz0kaSw5e78+o
         Z5kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cOz1HEgcHvvMPQX/b6dMIdb31myksIFr9FtMhaoHJs=;
        b=AuF0rucHrBn3hRpZPjvcCTIsXeEykyZKjs4d4uCYW7p6m9mFszMidZ5SLjO53ESkUM
         u/ENuSodnWG6kIz9qXQecZWC7jWIIujmMEHiDWS5oFMKebT4CYf20/EnxhKsypGqeNh9
         /0uaz/VXn/z9oFf8jnH9dmU2+X5A1T03Bqqad/DFDjjfCN/afEAH2H5g5tSCfBlE6TIF
         hoYmd0C/q0uxwvYGmFKtC9c0txN586WGzzdzq2NoDOCHnx5lwhcFDX3HVrHcbf085ZZ6
         V6z+RloKzT7I/pYKvGDHpKzGE2R4fyWypWgdQFh0I8BxjhkAkMXyl7yR7ykLZ0jIM9aK
         90bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5cOz1HEgcHvvMPQX/b6dMIdb31myksIFr9FtMhaoHJs=;
        b=FdtCsrWEneBFUs7sIrEVVUv1ukz+mvyX/SEQdzwb0FKeWIqwCyxGE4tPfIWF7H51vv
         qB7l0Y7jdDlnQrTSTTf5r37OlOW2FlbotReYaHByJQJmkW+VyIRNSTG+QksaIw25gxOc
         8J9IKMgsBt+DcZGXZL0QUf/oUwbKHToW0ZAfYBUISsUbxKCM7G7RnzAER0AwGDlImZLn
         q+c+LTv4hTXS4dxJGyKmDO+O0+XNBWZDap8YaKZl3j+mhyRJC5sDZbr1s+koDHfetQS5
         +Qw+Nb3k4aBCbCOOSsGHMNT+fMcRjajrjVT1AsD5GHFSLwHn9atuaC0HU9OZOSmPvd3j
         f/7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FkcCNacn9V4JCR4B9f+X3CsSyKL3Rf5OmLeDWybv58lXeaEjw
	CzN9JnUmJPaOYFpllXmiObI=
X-Google-Smtp-Source: ABdhPJxOMNADtBVNVThqIUeqcqoJiWMIepXh7vMPeFdyr0DBVNUUo5jpCaBysBIjgsptYN1BO35YFQ==
X-Received: by 2002:adf:eaca:: with SMTP id o10mr676390wrn.170.1615827963877;
        Mon, 15 Mar 2021 10:06:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls522112wrd.0.gmail; Mon, 15 Mar
 2021 10:06:03 -0700 (PDT)
X-Received: by 2002:a5d:4523:: with SMTP id j3mr667247wra.288.1615827963084;
        Mon, 15 Mar 2021 10:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615827963; cv=none;
        d=google.com; s=arc-20160816;
        b=Ep6qGFOD+Un3M14WCl/QizspZd3Kdgq63G0fdUoiPGk2O8GZA2+BGELI3V2LZd40Cp
         rZz/e83YDZ+R7d9yHMAkxLjkAdf+UmcYMFM5ibpKdxSkrJOjD83HHyscEVybeuiT/HHs
         afVYj4Vb4MgLeAshZcYO8BcA+Y4/sy3nlg/yGTSA+aAqkFWqJC6akdPBCX3LqsvueftN
         2zMv8s8+jinxa+6XbX3gWShlrdEwwffI+8AHaDZFQ4q6Q9iiGDyqHqEbuRqPG7jPXM25
         qQUJcWkoOaoBmuj4PDcRF1w3fpfGBLXg88J5AZTfSnNJPiJvn+tw9YGJTU9wCbBg4cuY
         tVFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=VL0e3mAI+gttg49rg7jJm/G1aV/21xA0u8BwwmQizBw=;
        b=bFs498J6lgf7nqXFt0cpi9Msy74w0f4OrrE7LiNS6C/CSh8mGu/tf46RaykpjKwx6c
         S/l5WZIWehItuWJKpTtTKk0een9wmH2eMjS0srIj1mHVt1QaEV656sNgggYHYxIEphGK
         WHIz5yrinsbpYLPObaTTAHcKv5oCxf6xv0CLLJ3ekq/wvjUn4sb0e7NM1c4OZgx1Wo1F
         wzDxazl/R+2aXT6NbO0d/UPmUeZomdHeC9ZPQIcfuiGGZzdmlNjGHN9xQ0ZfrCUzbKAI
         RKpwHHUhrq6A1VqMP5WM1ON2FdP6g+WkC3IMKgLgPjYkqa106LaZovqeosdrJNJJbcBY
         VNDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t124si726371wmb.3.2021.03.15.10.06.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 10:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 88768AED6;
	Mon, 15 Mar 2021 17:06:02 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 433B71F2BC9; Mon, 15 Mar 2021 18:06:01 +0100 (CET)
Date: Mon, 15 Mar 2021 18:06:01 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+628472a2aac693ab0fcd@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
	jack@suse.cz, linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org, natechancellor@gmail.com,
	nathan@kernel.org, ndesaulniers@google.com,
	syzkaller-bugs@googlegroups.com, tytso@mit.edu
Subject: Re: [syzbot] WARNING: ODEBUG bug in ext4_fill_super (3)
Message-ID: <20210315170601.GF3227@quack2.suse.cz>
References: <000000000000477fa305bd774858@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <000000000000477fa305bd774858@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jack@suse.cz
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

On Sat 13-03-21 20:08:14, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    28806e4d Merge tag 'media/v5.12-2' of git://git.kernel.org..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=136d1bbcd00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6bcf96204c1b8e77
> dashboard link: https://syzkaller.appspot.com/bug?extid=628472a2aac693ab0fcd
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1133abfad00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1191aab2d00000
> 
> The issue was bisected to:
> 
> commit 2d01ddc86606564fb08c56e3bc93a0693895f710
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Dec 16 10:18:40 2020 +0000
> 
>     ext4: save error info to sb through journal if available

After some head scratching I think [1] should fix the problem.

[1] https://lore.kernel.org/linux-ext4/20210315165906.2175-1-jack@suse.cz

								Honza

> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=152b9d56d00000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=172b9d56d00000
> console output: https://syzkaller.appspot.com/x/log.txt?x=132b9d56d00000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+628472a2aac693ab0fcd@syzkaller.appspotmail.com
> Fixes: 2d01ddc86606 ("ext4: save error info to sb through journal if available")
> 
> ODEBUG: free active (active state 0) object type: timer_list hint: print_daily_error_info+0x0/0x1f0 fs/ext4/super.c:1334
> WARNING: CPU: 1 PID: 12723 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Modules linked in:
> CPU: 0 PID: 12723 Comm: syz-executor932 Not tainted 5.12.0-rc2-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd a0 06 c2 89 4c 89 ee 48 c7 c7 a0 fa c1 89 e8 fc 41 f8 04 <0f> 0b 83 05 05 7e fb 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> RSP: 0018:ffffc9000e6ef980 EFLAGS: 00010286
> 
> RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
> RDX: ffff88801d5e9bc0 RSI: ffffffff815c0d25 RDI: fffff52001cddf22
> RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
> R10: ffffffff815b9abe R11: 0000000000000000 R12: ffffffff896d7da0
> R13: ffffffff89c200e0 R14: ffffffff81629d00 R15: dffffc0000000000
> FS:  0000000000f93300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007fcda3ec0000 CR3: 00000000155a1000 CR4: 0000000000350ef0
> Call Trace:
>  __debug_check_no_obj_freed lib/debugobjects.c:987 [inline]
>  debug_check_no_obj_freed+0x301/0x420 lib/debugobjects.c:1018
>  slab_free_hook mm/slub.c:1554 [inline]
>  slab_free_freelist_hook+0x147/0x210 mm/slub.c:1600
>  slab_free mm/slub.c:3161 [inline]
>  kfree+0xe5/0x7f0 mm/slub.c:4213
>  ext4_fill_super+0x84f/0xded0 fs/ext4/super.c:5182
>  mount_bdev+0x34d/0x410 fs/super.c:1367
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1497
>  do_new_mount fs/namespace.c:2903 [inline]
>  path_mount+0x132a/0x1f90 fs/namespace.c:3233
>  do_mount fs/namespace.c:3246 [inline]
>  __do_sys_mount fs/namespace.c:3454 [inline]
>  __se_sys_mount fs/namespace.c:3431 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3431
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x445c0a
> Code: 48 c7 c2 c0 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff eb d2 e8 a8 00 00 00 0f 1f 84 00 00 00 00 00 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffe8bf4c3b8 EFLAGS: 00000202
>  ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007ffe8bf4c410 RCX: 0000000000445c0a
> RDX: 0000000020000040 RSI: 0000000020000100 RDI: 00007ffe8bf4c3d0
> RBP: 00007ffe8bf4c3d0 R08: 00007ffe8bf4c410 R09: 0000000000000000
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315170601.GF3227%40quack2.suse.cz.
