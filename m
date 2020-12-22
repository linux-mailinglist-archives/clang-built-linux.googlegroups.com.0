Return-Path: <clang-built-linux+bncBD5LDHXSYUMRB6FSQ77QKGQESQY5HYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 037FF2E09B7
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 12:33:13 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id i23sf15749493lfl.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 03:33:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608636792; cv=pass;
        d=google.com; s=arc-20160816;
        b=xtLjDgqf7v6okDG7+RHP3f2TWBQrUx51UjYUS8+EBRTYF7GcJUw7+xcviVsdDgzm/1
         cQcyiisWhSGlsgO28GECCnZyObwLfTT5MSK3BH5h5VEPx/hmrUjpzb3/DsaYQM441Nto
         vH+iMQF5wG+sUW24TYrcosO4N0nX5gulTF/rMjJsssPxP5I+v1bB9t54HKx0PxBYoOaZ
         6vIwzNjd/J4jCSRDMsMgubXY/CfF/wUbaP4IAxXFAVMZEAq9m4H/R/PWHI5OORpk9oxF
         fiGEd5SlE1m+tQK6bIYmgWTVSxUcnWhnP+2rbdpTxW2uGN4ECtR0hPkgMuGF3kdDXpgC
         CD8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=I9z0uQNHFk2aMWQZtrgiVfXiNpmAZt2W7xz0VuoAsCI=;
        b=VdrjMwB6G7Pd43oivU9SHJn16cHESNyDd7aQvdaTxEXs5y7fZzOfLil0wA2PeGHsQH
         rLHaAf+ByWvNOkqNjhlR0dAUWWfK2sbG4prNWumJv2AMoKv13VEnI8ebLboL42Z9vcul
         l92RF5CHXKjaVtvAfrhv7DUpKWGkZftqR44C5rULF4y/g097FGUv2PmooH5AZbxHOXZV
         woQsGlQwcfk67Nww0XsBuoAvnSm7tMdBTYh+hkIUfciq+rkap5Uvl2Nr6y9Uo7a7urcc
         aRxLDhypDQ+w22Nx0biC2Ly9YfitfCDutboyCbCvVcQdv0dYnKnOPOlf0LtwBChjCiX+
         vAMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I9z0uQNHFk2aMWQZtrgiVfXiNpmAZt2W7xz0VuoAsCI=;
        b=LTPsHYdY1lEeEVSko3O1ujBVmm4TatZTi8N0Ncbv35/nwSVmouA+31WmJkFB+IRloL
         1CyGiS+NG+RxGzHbB131A5TJsmITFLR3SbYSHzlUIbSvqTLjeB0sfei2vwOIpnC30cZ3
         K6OxnA2miAQN2KA2Ka7jt2XB+H6Xlhiab6lWT0yfs9fm2TRdQLB/Fz4abONFwLqbPliw
         I8Qi9Z73fqDct+UYU2vme/gUARfeXeYTy+JUn45MoLN/PDDhkaKYry0lialfrYe1233w
         U/A+oRrsuwVvgJs0xfvX1QNWRWnX2JTkZA8rUnPAvojunew2PH9XNFWDr6nlGeqyShmD
         KgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I9z0uQNHFk2aMWQZtrgiVfXiNpmAZt2W7xz0VuoAsCI=;
        b=s1P7SaosUMDCdgZ9Gx1Qje+1sK27YcTfWZ7+3DKaI2HXvi6lEzqZQHusP+nHD9ZfHS
         1/dFXBfJIX2gLLd6tKb2BQAWefmoL6G0bzS0BH8h4Lg0+32rtt5v262BgLJj6mfY+jDc
         tKOZsPTCL0yMkqhw60KlVPZTpHukLZdS2vX906T1O6hNMpnOlfrQ9kvBgjGrpGmMDUPl
         sV3DfyKvrHcsRJ+RsQJEqUoyg9e/RdYHXIaQDW0/ARJNzLJL5iZNu67Wb/ryjg1QbO8+
         PFZDcSnbbvPehRT3bD5ScUZKUvYl3A+t3t8DUxNcsMANInnlPlKkW97JOxrrnugNQmGR
         JCMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hoKOTJko0LjAzoaAUrzswoBQcP6jDCnscBhtWHAodXwveZUF5
	JPpeE1//2pxN5ralzecXHWI=
X-Google-Smtp-Source: ABdhPJyjOpZDwOH0V+Qc/ns2bxGyY6lOpRt3Cx4Nelr0F/KDZDMvziE4TtS62hmBfWDBTNgGcDCj5A==
X-Received: by 2002:a2e:9b4f:: with SMTP id o15mr8947996ljj.393.1608636792583;
        Tue, 22 Dec 2020 03:33:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3001:: with SMTP id w1ls5890265ljw.3.gmail; Tue, 22 Dec
 2020 03:33:11 -0800 (PST)
X-Received: by 2002:a2e:918a:: with SMTP id f10mr8978838ljg.302.1608636791558;
        Tue, 22 Dec 2020 03:33:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608636791; cv=none;
        d=google.com; s=arc-20160816;
        b=PERmXOII1BdW0pNSCAzjdy+wgKslA6RT9/V5n7xLn8B1J2OGyq8mO0IvnndB7Ja2Ql
         wbkdpHHIbdrP6Q7xV0Jb1E75+gt3kYHwu3liI9c+LmhzM1O4QOzxUplJ79F0hI5lJsbX
         BojiVO3wDECSgncANAfp6NPnS9omRkuBaEtl1qP6+MVRu+a4iB5B5DcXWVRdtqPNfo+k
         7VKwJSRnvL2mQj/32yBK1vj48ybckRb+H2PaDyR0Pl7ENSUT/6Yth/rLBma6+GU7ZrkG
         c/KxzvaFCD2TyhxQEfHfBlQDMMqsFRDxxN8IdJW0k1y56EyizJJGVdXiGSY3/baxePZq
         mtEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pPgCYKkVcEZ277/69J3U/bwMLZBBWeoIfZ/NE2Jp6bo=;
        b=MOR34nE4uNagyNXfVg0fqC/CkhBEsjSxS/VZta6s1uRxTc6IwX7IDAFHCV5hq24Bqc
         jjyUl/Uf6kSoQRr1P37QEBB/6ogAWGYeQiMwcnA8v0z73NmyG2AcBGoaHxbr44neaYKR
         NDj+GlUbiKI6pgvRWK63INQCkuAf011aRRprtrtCck1vDQgPqFD0OWTwPSwvcRaCyEFj
         mTi4R05wBO8yzr7yvDhVX1+NTp2hdlsi1YNxlWSBsSq2DHTDcFeK9fRBA1eFYb3jdXA+
         x+jZHfay3Ck7aEFRxxOvWhTrev03FsOvzYsx+OXZUgkxFAuRyodYYhZ94dJ8fHezBkYo
         A6NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t65si335198lff.3.2020.12.22.03.33.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 03:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B624CACF5;
	Tue, 22 Dec 2020 11:33:10 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 31BEB1E1370; Tue, 22 Dec 2020 12:33:10 +0100 (CET)
Date: Tue, 22 Dec 2020 12:33:10 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+3002ac6b4fd242a64228@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
	jack@suse.cz, linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org, natechancellor@gmail.com,
	ndesaulniers@google.com, syzkaller-bugs@googlegroups.com,
	tytso@mit.edu
Subject: Re: WARNING: ODEBUG bug in ext4_fill_super (2)
Message-ID: <20201222113310.GG13601@quack2.suse.cz>
References: <000000000000c2877f05b708e1a5@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <000000000000c2877f05b708e1a5@google.com>
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

#syz dup: general protection fault in ext4_commit_super

On Mon 21-12-20 23:54:18, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    0d52778b Add linux-next specific files for 20201218
> git tree:       linux-next
> console output: https://syzkaller.appspot.com/x/log.txt?x=16190613500000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5c81cc44aa25b5b3
> dashboard link: https://syzkaller.appspot.com/bug?extid=3002ac6b4fd242a64228
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=128f5123500000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14f9f30f500000
> 
> The issue was bisected to:
> 
> commit e810c942a325cf749e859d7aa3a43dc219cea299
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Dec 16 10:18:40 2020 +0000
> 
>     ext4: save error info to sb through journal if available
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12d9df07500000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=11d9df07500000
> console output: https://syzkaller.appspot.com/x/log.txt?x=16d9df07500000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+3002ac6b4fd242a64228@syzkaller.appspotmail.com
> Fixes: e810c942a325 ("ext4: save error info to sb through journal if available")
> 
> EXT4-fs error (device loop3): ext4_fill_super:4943: inode #2: comm syz-executor723: iget: root inode unallocated
> EXT4-fs (loop3): get root inode failed
> EXT4-fs (loop3): mount failed
> ------------[ cut here ]------------
> ODEBUG: free active (active state 0) object type: work_struct hint: flush_stashed_error_work+0x0/0x2a0 fs/ext4/ext4.h:2040
> WARNING: CPU: 0 PID: 13670 at lib/debugobjects.c:505 debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Modules linked in:
> CPU: 0 PID: 13670 Comm: syz-executor723 Not tainted 5.10.0-next-20201218-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:debug_print_object+0x16e/0x250 lib/debugobjects.c:505
> Code: ff df 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 af 00 00 00 48 8b 14 dd 20 af bf 89 4c 89 ee 48 c7 c7 20 a3 bf 89 e8 30 78 05 05 <0f> 0b 83 05 55 8a b9 09 01 48 83 c4 18 5b 5d 41 5c 41 5d 41 5e c3
> RSP: 0018:ffffc90001d0f9b8 EFLAGS: 00010282
> RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
> RDX: ffff888024b63600 RSI: ffffffff815b95f5 RDI: fffff520003a1f29
> RBP: 0000000000000001 R08: 0000000000000000 R09: 0000000000000000
> R10: ffffffff815b7a4b R11: 0000000000000000 R12: ffffffff896ae040
> R13: ffffffff89bfa920 R14: ffffffff814911f0 R15: dffffc0000000000
> FS:  000000000163a940(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000043fb60 CR3: 000000001226b000 CR4: 00000000001506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  __debug_check_no_obj_freed lib/debugobjects.c:987 [inline]
>  debug_check_no_obj_freed+0x309/0x430 lib/debugobjects.c:1018
>  slab_free_hook mm/slub.c:1540 [inline]
>  slab_free_freelist_hook+0x12b/0x1d0 mm/slub.c:1586
>  slab_free mm/slub.c:3157 [inline]
>  kfree+0xdb/0x3c0 mm/slub.c:4156
>  ext4_fill_super+0x86c/0xdf40 fs/ext4/super.c:5174
>  mount_bdev+0x34d/0x410 fs/super.c:1366
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1496
>  do_new_mount fs/namespace.c:2896 [inline]
>  path_mount+0x12ae/0x1e70 fs/namespace.c:3227
>  do_mount fs/namespace.c:3240 [inline]
>  __do_sys_mount fs/namespace.c:3448 [inline]
>  __se_sys_mount fs/namespace.c:3425 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3425
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x44873a
> Code: b8 08 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 cd a2 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 aa a2 fb ff c3 66 0f 1f 84 00 00 00 00 00
> RSP: 002b:00007fff16496da8 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007fff16496e00 RCX: 000000000044873a
> RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007fff16496dc0
> RBP: 00007fff16496dc0 R08: 00007fff16496e00 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000202 R12: 0000000000000006
> R13: 0000000000000005 R14: 0000000000000004 R15: 0000000000000004
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201222113310.GG13601%40quack2.suse.cz.
