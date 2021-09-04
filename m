Return-Path: <clang-built-linux+bncBC5NVH6TWYJRBMHRZKEQMGQE457WWWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 011E6400896
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 02:07:14 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id t1-20020a67d901000000b002c6681409f9sf339949vsj.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 17:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630714033; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhCNxRihJNGKmLi26je7Vpk0apkSZpvRJ2DsCb0d1Em2QBSUonlpOOQRJZFGSwAB3O
         QXUBTDlY+5v21ECSxSOIqRVqvSBOZl7SRE7WFgZWQXMn8E8B9JY1X7DQwKK4/c69iiHj
         Y7jdcgIe4bVASDOcbDvM1GYhV4KDSNkqMTeRdypydjrL1RE2VaREogH/ov9tTPxSFbG7
         ruwBK0z83C1+Wcaxy7ss8Uls2mqQeEUSDXdVAvk800fy9QB6qetJfUt9bk55zB19KJe/
         IVYh7oLOPpn6I9qQOlR5+Tlhc/O0nDjzsDPsoEo+L/2ufsljIR3G2BLLhQbCfbEvT0lV
         Arbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature:dkim-signature;
        bh=ufi5xVr2L3Y3wCcr8TCCBGNqwPqcJznD7wJ4JMArr64=;
        b=RM4n8YwC8muV6jsabpa0nO7SwktsltWmIy1OONw7ww+mRsLfSV6nXCN0Y+ogo9bAlS
         sOkMiKAGlCdcu4VbXVqEvBEEVyYck/gbCXvHwEmq3UwL3dC9JdpIyrjqNkhOoR67nFVW
         ycJtdy02zBzXleXHgDHGGZ1U2nQ6JwhKc0DRc1j3k9Sa6COD4kIZN02Q2PAr4DyEd5nD
         BQlE0edWuoomIMtEkRb386BoTj5VXc7wySyRes092ISRaOFdb9hE922/y+Xl8Zz6G2/c
         R7fdowYNS1Yv7OBPS31Fs8rKyEODBGz6QcKxXx6e7451enpDtnSv7mD34vUms5F8tXq1
         dJEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UbzjLAok;
       spf=pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ufi5xVr2L3Y3wCcr8TCCBGNqwPqcJznD7wJ4JMArr64=;
        b=U9YIXLCogB6zRQ1XLKhnRvqH239k5Xe0X1chWaPhBxDzjEIS4oo4LcgoNkjI88XpkB
         wds+aBJJWoQsUD/6Mj3IAAcF8MX3CKSvkG67sgTwlX/NJNx751aiI/1cSNTht8qwUrdM
         Qh3NSXIEuYuMje3+DRApP3hh4YtUcVaWIXmYlwepnati3uBzd+GNB6VXX9UGPO0Hcocb
         9wAy1Wda4zAHIQDCcTjq7CshUmkpdUY0I9xPLKsmeZP0D4vQbsEIt9IMPf0M39xAtLUA
         LD/BZPov5FIWBnFxEA3o3HWRhYQbIIpFJA7dEHqHlE7lktachKxGoMMP6RX8Yu7Lw0au
         Emeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ufi5xVr2L3Y3wCcr8TCCBGNqwPqcJznD7wJ4JMArr64=;
        b=JPl0LzXJu71g2Xm4hjmGx8XAinh46mUb+qg+uJJjPxL6vqIf2CnX5Y0l99jGP8UooF
         LQlp9Bir41MCCqvmsnyykD470+zUlUdx6dNbjUbMrnjaroBce0nTdFTPoR4864aN1l88
         0NBP2z1vCTIT50rIcrsuDmfjyAPtS+zIYa+af5450lukRWaqHLwx9miGa3XosqlpwDmh
         GusdLjVw9VAmUI3Sg2DBJYhlYfFL1lZM/vu6uqm1FNWMBZhbk5ULB+b8mC/Dz5Lo9G5S
         vWA8BPvzltkL6w/LleqTmp27Q3vUNPpDz5yaq1CWFWr9VCeCZlvHCAh/IaFE8++h1D5A
         UweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ufi5xVr2L3Y3wCcr8TCCBGNqwPqcJznD7wJ4JMArr64=;
        b=JpE05ndzigq72hDeaFBSWQASBo/Dyu1wERnsVDPdByvv6a6OODiP6GiVMnt2Jgg7HC
         5HdhQqaj+r85gnAp9dVAN678BY52EhHZ8KiAUN1hqGR6KHPSVk/FEilL5UMsynBCjt8x
         0/jsDdEoWZBuDfsmQOceiA2e1miqjWkyzXzcqVVphU6RgbdqS779NqJ6zoJuJGPEydZW
         w83+4ETrpql8puoEXQif7T+1TBdD7K6/8N6eUVZyi1LgNvAG5zLPEjKBYMZJXdJUXqb9
         jEy/VPQQzAcphfElUsFENijUCTohKrCiMcXaOY0zLyeyOOZm6NyGztgiqcs15eTkHp5w
         WShQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sHQd0g/MLgFNj6/fSvcsxH4ZPzIhGt5k5fDb+bewJ+UG8ythe
	h3yPtidWWioBwcBLhOJx8vU=
X-Google-Smtp-Source: ABdhPJwpsnaSSdJOUu0It9+ddObPT9Z26c6ldSVirEx4Ea0Eg5DlSGC1TOMlpYLH92peyOr+FTlJiA==
X-Received: by 2002:a67:fb8b:: with SMTP id n11mr1078017vsr.27.1630714032876;
        Fri, 03 Sep 2021 17:07:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls127358vsi.10.gmail; Fri, 03
 Sep 2021 17:07:12 -0700 (PDT)
X-Received: by 2002:a05:6102:222f:: with SMTP id d15mr915674vsb.16.1630714032239;
        Fri, 03 Sep 2021 17:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630714032; cv=none;
        d=google.com; s=arc-20160816;
        b=M3a3XSCDBUdx7Qu3iAyTAleh9zL7bQmLf8M2iX4P4dka4c9RnOv2IT70g1q5gfN/sx
         Zhx4gVH9wD3FBd9jZADmx5aV7iHMlszkpWgz6nDog5FaTko4uxf5Sc0EaGI2eXBBNXBn
         FbdJA1ewpVc4e4COjXdosCtzsYNuCMSg1KV72qDohADtAKG/JSvNaUKae1nsM89lHZ+/
         YnFHF/lE6qFxgNRQEVm7YKoxvWg2UmfgjgIXbDjks1b2Fyibh9Sq9qm3sRjmoPTJc503
         cdaM9zuppN3txdIZq6GCyPn4kv/fLp+mUoTFU4NFSwz0XjdEaO6+YM1yI9E+o5T+Pd64
         Bzvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=ac0NqM/OB6g9iUrCA7LBliwNibjwqAkrbgHRRkfR0qc=;
        b=j0hTobmeLgnCTYMjrIpSohUaVx832J3pwge4U2dE0sQ9oulsABGAfmweFpsOvyTsY9
         oBL9xMWUvmJDE1pqyeim0B92Fb3m1+JI+J2hOcpxeyAgklJjVSA0jHjJd2q5d5TfGQij
         YP+yYyD3BqBESxTufr+BEXriHWzJ4AUsnJgpebfO+sKPVrcFtVS3F3Lsq+x3N1hgfISm
         xMpu4kJfzxXICjnepkrFf5S9J14IuQ60KCUoynDkEXydtJWACrZhG73E25Yfp5rdeD9X
         YO6ahywDffXfuDvu+Pb/dkImPHBSoOhtwgOitmDQk5UmKXbvSOatk1e+pRRueaLdr1cO
         BxlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=UbzjLAok;
       spf=pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id c5si38710vkg.4.2021.09.03.17.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 17:07:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id c5so481636plz.2;
        Fri, 03 Sep 2021 17:07:12 -0700 (PDT)
X-Received: by 2002:a17:902:e811:b0:138:a9a5:bc3a with SMTP id u17-20020a170902e81100b00138a9a5bc3amr1222282plg.18.1630714031311;
        Fri, 03 Sep 2021 17:07:11 -0700 (PDT)
Received: from [192.168.86.235] (c-73-241-150-58.hsd1.ca.comcast.net. [73.241.150.58])
        by smtp.gmail.com with ESMTPSA id o18sm321027pjg.26.2021.09.03.17.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 17:07:11 -0700 (PDT)
Subject: Re: [syzbot] WARNING: kmalloc bug in bpf_check
To: syzbot <syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com>,
 andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, daniel@iogearbox.net,
 davem@davemloft.net, hawk@kernel.org, john.fastabend@gmail.com,
 kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 netdev@vger.kernel.org, songliubraving@fb.com,
 syzkaller-bugs@googlegroups.com, yhs@fb.com
References: <0000000000002c756105cb201ef1@google.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <fa1d99d6-3f83-73bb-0aff-a70d3f1bc9dc@gmail.com>
Date: Fri, 3 Sep 2021 17:07:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <0000000000002c756105cb201ef1@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: eric.dumazet@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=UbzjLAok;       spf=pass
 (google.com: domain of eric.dumazet@gmail.com designates 2607:f8b0:4864:20::630
 as permitted sender) smtp.mailfrom=eric.dumazet@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On 9/3/21 5:01 PM, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    a9c9a6f741cd Merge tag 'scsi-misc' of git://git.kernel.org..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=13fd5915300000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=c84ed2c3f57ace
> dashboard link: https://syzkaller.appspot.com/bug?extid=f3e749d4c662818ae439
> compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11e4cdf5300000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14ef3b33300000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com
> 
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 8408 at mm/util.c:597 kvmalloc_node+0x108/0x110 mm/util.c:597
> Modules linked in:
> CPU: 0 PID: 8408 Comm: syz-executor221 Not tainted 5.14.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:kvmalloc_node+0x108/0x110 mm/util.c:597
> Code: ff 48 89 df 44 89 fe 44 89 f2 e8 a3 6e 17 00 48 89 c5 eb 05 e8 19 28 ce ff 48 89 e8 5b 41 5c 41 5e 41 5f 5d c3 e8 08 28 ce ff <0f> 0b 31 ed eb e9 66 90 41 56 53 49 89 f6 48 89 fb e8 f2 27 ce ff
> RSP: 0018:ffffc900017ff210 EFLAGS: 00010293
> RAX: ffffffff81b2b708 RBX: 0000000200004d00 RCX: ffff888013ded580
> RDX: 0000000000000000 RSI: 0000000200004d00 RDI: 000000007fffffff
> RBP: 0000000000000000 R08: ffffffff81b2b6ac R09: 00000000ffffffff
> R10: fffff520002ffe15 R11: 0000000000000000 R12: 0000000000000000
> R13: dffffc0000000000 R14: 00000000ffffffff R15: 0000000000002dc0
> FS:  0000000001386300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007f3e712d36c0 CR3: 00000000342e8000 CR4: 00000000001506f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  kvmalloc include/linux/mm.h:806 [inline]
>  kvmalloc_array include/linux/mm.h:824 [inline]
>  kvcalloc include/linux/mm.h:829 [inline]
>  check_btf_line kernel/bpf/verifier.c:9925 [inline]
>  check_btf_info kernel/bpf/verifier.c:10049 [inline]
>  bpf_check+0xd634/0x150d0 kernel/bpf/verifier.c:13759
>  bpf_prog_load kernel/bpf/syscall.c:2301 [inline]
>  __sys_bpf+0x11181/0x126e0 kernel/bpf/syscall.c:4587
>  __do_sys_bpf kernel/bpf/syscall.c:4691 [inline]
>  __se_sys_bpf kernel/bpf/syscall.c:4689 [inline]
>  __x64_sys_bpf+0x78/0x90 kernel/bpf/syscall.c:4689
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x43f0a9
> Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffe831a89a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
> RAX: ffffffffffffffda RBX: 0000000000400488 RCX: 000000000043f0a9
> RDX: 0000000000000078 RSI: 0000000020000500 RDI: 0000000000000005
> RBP: 0000000000403090 R08: 0000000000000000 R09: 0000000000400488
> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000403120
> R13: 0000000000000000 R14: 00000000004ac018 R15: 0000000000400488
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches
> 

As mentioned to Linus earlier, this bug comes after recent patch

commit 7661809d493b426e979f39ab512e3adf41fbcc69
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed Jul 14 09:45:49 2021 -0700

    mm: don't allow oversized kvmalloc() calls
    
    'kvmalloc()' is a convenience function for people who want to do a
    kmalloc() but fall back on vmalloc() if there aren't enough physically
    contiguous pages, or if the allocation is larger than what kmalloc()
    supports.
    
    However, let's make sure it doesn't get _too_ easy to do crazy things
    with it.  In particular, don't allow big allocations that could be due
    to integer overflow or underflow.  So make sure the allocation size fits
    in an 'int', to protect against trivial integer conversion issues.
    
    Acked-by: Willy Tarreau <w@1wt.eu>
    Cc: Kees Cook <keescook@chromium.org>
    Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa1d99d6-3f83-73bb-0aff-a70d3f1bc9dc%40gmail.com.
