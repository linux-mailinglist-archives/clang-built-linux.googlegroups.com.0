Return-Path: <clang-built-linux+bncBCQPF57GUQHBBWXOZKEQMGQESYSBZYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B11400889
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 02:01:32 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id 41-20020a17090a0fac00b00195a5a61ab8sf505192pjz.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 17:01:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630713690; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3P6CF+fF+ntGW4zqlg+0QoFWqPNq/kquYBiLm5cjkCwB2rU/WUPJhUBAPDFXPTm7V
         /EHT1s0JJLrydf2ka3qtwIC0KV3Fg7B49Y1GDbnrc1kgr9caH4J5R6LannVoOltgb4NI
         BBDXlHi4GMjye04yVQyfb/Me8LBzaNLntH/ROo2A1Abh9ZCxuhqpN6lc4Xiq5B/P6tB+
         yGVrc1WP5l+/r71yADndIinF6mdVA6STeFeNoRJ7+RvQ5QsASAdwbpj05bbtGoGc6+nK
         PqXUWoAvPEY/O9AkW3ALtv0E+OTsgtIHwZUVHRIb1rG4GpPIRFXtS3hjmT5xAFwgg1K8
         JFQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=8Jhy6pqWh/6NdUIQ/lHsaVwUBnlQpy/RiwrJoov9j9k=;
        b=MZgpLmtySUKUL29/V6FjKnmRccjf0qGM1AjuVxLVqXfbaAiAuz46C++AsdxV3DYfEP
         AudTGY5ktJEmSZRwVT2BxWH9/kltsc9zAXcgFRQDAZJJhyORyDUJvvT3XqHiKSEwzpjU
         yKY/ozDWIxnFaynVRv4AXilrjNOZZeBpVSItpfLMMcoLmE7Naf8IyuurZ0fh3AzV0kEC
         wbgDxPz23OEcbDDKihjsQPMIXei9SpU/YBkJiMiL1lP2Kgd2ge9OpvOob6Fd19/Sqsdk
         +NBk6hZwMhFhbBNLQ93J/FKTy+GmKzQuVGN1IQDHUmH0HDYOEWugCuK2aAbM1LmWdZzR
         AveA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3wbcyyqkbakiuabmcnngtcrrkf.iqqingwugteqpvgpv.eqo@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3WbcyYQkbAKIUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Jhy6pqWh/6NdUIQ/lHsaVwUBnlQpy/RiwrJoov9j9k=;
        b=VkJvygMMz+rIJzGM8XJMwslo1rEgEAEHZ78VUEfdGrw4mqGex4T7it2X+fq2xko7OS
         ttaW7C2wLDjfEp/6whE8fZpmR8V/WqKWZGB3n7dXY7m4kFGW717EQrVBL2A95ksij03G
         Ltk/iO0vkUaqA/cl0MO8e4HbLGCZaQpPadFXN7oGnsaBnE7Mfn1nRlbEzSR9Xg3p1r+E
         o+ntQ2C/p89bZWlKgFbhSRJ+jfRyIkqgmWA0Fq2GX14PSWbG5a1AJk2m9w9csDNBW47p
         +rmzUz6VLwwHPCpuHDWFyhpWyoekI8GdPU9Nh9TIn7uLeM1+X4csmIc5vqYosN2ZMexN
         7psQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8Jhy6pqWh/6NdUIQ/lHsaVwUBnlQpy/RiwrJoov9j9k=;
        b=cainE2KX+aVhj6Cl/31hg4tpdkzFbe/2JD3UjdWoymoqs2Xc+snq89/zbbac+cx5ux
         F4vvjQm87nT2qfS9IJuDSwP4wEXQLkdwUT1fyOOYh5l3ksL+clN61y/ysaBS6FEYw688
         HVQ50rQ0bum5N8JIAGQawSDd3wVcS6EQQj9/YUIPqrcTqIrWfpE+1d36kS2e5GUmFozr
         CpXoC2d7etCvCZsvT+pXN/VfyshnekHjyQYJCg7KF+L54wZdanyF4225GOnkdGwfD2P3
         JdIqANnAnFfKn/Sr4v3LJhEAXtRx8evIIeGJF6i5/yAN40azmAkch1Pj4+bBc6hmcgOl
         nkqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZzLr32SKguN/N5aGkwO+VKuGdTbf4MBilPwPzrHfHVd/7pv1l
	P63Jra1nZiZNVDJVxL6PTlI=
X-Google-Smtp-Source: ABdhPJznz18uRU+tkcI722kMZ26ZjINaBbkrNXA9rxBMcpzZ96ZNr001Hf6rZUTHD89mKc35MivpFQ==
X-Received: by 2002:a63:f4b:: with SMTP id 11mr1340644pgp.189.1630713690396;
        Fri, 03 Sep 2021 17:01:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:430a:: with SMTP id q10ls424115pjg.1.canary-gmail;
 Fri, 03 Sep 2021 17:01:29 -0700 (PDT)
X-Received: by 2002:a17:90b:4a8a:: with SMTP id lp10mr1366204pjb.216.1630713689682;
        Fri, 03 Sep 2021 17:01:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630713689; cv=none;
        d=google.com; s=arc-20160816;
        b=Ps6bYuXATu39w4dIkZkMGlfiKb3/BfvSb8lJvLi5a8A9DYdvPGGMnmjcHnpU2UVM4X
         C1pns7TZP6wpTJW+/xDIfHcNXbk3CK5mfjdGywFX5Tq8V97Jxc79gfq73wz3j8wDrgQ7
         txDtymd7SorX5OwuqK6fnVvFL5oRMGMQPi1OzUYGX/zsb+PWlmKNjAGgw3NrT+9Na8S/
         OZ/EuuIhTqsJkCp7eCoRqQpQ7jeOQ70IBn8nH6IRPcE5yB6ttEJotrHqdCK7p54Jh2/x
         cPTeKrTxLv9XRqqCNYrbjUxZDs9TUkwaD8/2XyleUjQk5HNOmSwhp3HKZopWKfyEp4nZ
         0d0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=qUjGhZoJ/aJXF8DVrM/Q4JDPPaGvWUbD1ODKWCbMoJ8=;
        b=ijTsiKrrPzVNIavcHa8ELGTLkt+NZV0ftXg5bCA3FWp/QMxSPttJ3cXlP/PLV41K9F
         hWbCqDecKNkldJzp88Y9z6dBoL3aFQM4zPLbFZmxs8VDKxTW6cTFPsZXywdDymhGbpMg
         2aHKd/9FFbyARv+O2B/12HrF/TKlydN6gzbIdwFW2bGpzYHBNcwrteRz2bLrtBB4cxWt
         gjaLgcYSo5Y27mNFtUGXoV5iJQrF2luPm7rHTPOAUEdNz5GD8fnEpxsBgxENLRxkzcu6
         TfgWux4HVB1l5tdcoIfJaM92nk4ium3ibO+ltWeMjFvv7c1tuFnAGcBeSPLVGF9VF1Y6
         TBiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3wbcyyqkbakiuabmcnngtcrrkf.iqqingwugteqpvgpv.eqo@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) smtp.mailfrom=3WbcyYQkbAKIUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com. [209.85.166.199])
        by gmr-mx.google.com with ESMTPS id o2si42480pjj.1.2021.09.03.17.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 17:01:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wbcyyqkbakiuabmcnngtcrrkf.iqqingwugteqpvgpv.eqo@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.199 as permitted sender) client-ip=209.85.166.199;
Received: by mail-il1-f199.google.com with SMTP id l4-20020a92d8c40000b02902242b6ea4b3so532157ilo.8
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 17:01:29 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6638:2182:: with SMTP id s2mr1336891jaj.26.1630713689173;
 Fri, 03 Sep 2021 17:01:29 -0700 (PDT)
Date: Fri, 03 Sep 2021 17:01:29 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000002c756105cb201ef1@google.com>
Subject: [syzbot] WARNING: kmalloc bug in bpf_check
From: syzbot <syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com>
To: andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	hawk@kernel.org, john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, 
	kuba@kernel.org, linux-kernel@vger.kernel.org, nathan@kernel.org, 
	ndesaulniers@google.com, netdev@vger.kernel.org, songliubraving@fb.com, 
	syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3wbcyyqkbakiuabmcnngtcrrkf.iqqingwugteqpvgpv.eqo@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.199 as permitted sender) smtp.mailfrom=3WbcyYQkbAKIUabMCNNGTCRRKF.IQQINGWUGTEQPVGPV.EQO@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

HEAD commit:    a9c9a6f741cd Merge tag 'scsi-misc' of git://git.kernel.org..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=13fd5915300000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c84ed2c3f57ace
dashboard link: https://syzkaller.appspot.com/bug?extid=f3e749d4c662818ae439
compiler:       Debian clang version 11.0.1-2, GNU ld (GNU Binutils for Debian) 2.35.1
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11e4cdf5300000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14ef3b33300000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+f3e749d4c662818ae439@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 0 PID: 8408 at mm/util.c:597 kvmalloc_node+0x108/0x110 mm/util.c:597
Modules linked in:
CPU: 0 PID: 8408 Comm: syz-executor221 Not tainted 5.14.0-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:kvmalloc_node+0x108/0x110 mm/util.c:597
Code: ff 48 89 df 44 89 fe 44 89 f2 e8 a3 6e 17 00 48 89 c5 eb 05 e8 19 28 ce ff 48 89 e8 5b 41 5c 41 5e 41 5f 5d c3 e8 08 28 ce ff <0f> 0b 31 ed eb e9 66 90 41 56 53 49 89 f6 48 89 fb e8 f2 27 ce ff
RSP: 0018:ffffc900017ff210 EFLAGS: 00010293
RAX: ffffffff81b2b708 RBX: 0000000200004d00 RCX: ffff888013ded580
RDX: 0000000000000000 RSI: 0000000200004d00 RDI: 000000007fffffff
RBP: 0000000000000000 R08: ffffffff81b2b6ac R09: 00000000ffffffff
R10: fffff520002ffe15 R11: 0000000000000000 R12: 0000000000000000
R13: dffffc0000000000 R14: 00000000ffffffff R15: 0000000000002dc0
FS:  0000000001386300(0000) GS:ffff8880b9c00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f3e712d36c0 CR3: 00000000342e8000 CR4: 00000000001506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 kvmalloc include/linux/mm.h:806 [inline]
 kvmalloc_array include/linux/mm.h:824 [inline]
 kvcalloc include/linux/mm.h:829 [inline]
 check_btf_line kernel/bpf/verifier.c:9925 [inline]
 check_btf_info kernel/bpf/verifier.c:10049 [inline]
 bpf_check+0xd634/0x150d0 kernel/bpf/verifier.c:13759
 bpf_prog_load kernel/bpf/syscall.c:2301 [inline]
 __sys_bpf+0x11181/0x126e0 kernel/bpf/syscall.c:4587
 __do_sys_bpf kernel/bpf/syscall.c:4691 [inline]
 __se_sys_bpf kernel/bpf/syscall.c:4689 [inline]
 __x64_sys_bpf+0x78/0x90 kernel/bpf/syscall.c:4689
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x44/0xae
RIP: 0033:0x43f0a9
Code: 28 c3 e8 2a 14 00 00 66 2e 0f 1f 84 00 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe831a89a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 0000000000400488 RCX: 000000000043f0a9
RDX: 0000000000000078 RSI: 0000000020000500 RDI: 0000000000000005
RBP: 0000000000403090 R08: 0000000000000000 R09: 0000000000400488
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000403120
R13: 0000000000000000 R14: 00000000004ac018 R15: 0000000000400488


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0000000000002c756105cb201ef1%40google.com.
