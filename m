Return-Path: <clang-built-linux+bncBCQPF57GUQHBBZ4WTXYQKGQE3GFKHBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB361444C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 20:05:12 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id s42sf808187uad.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 11:05:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579633511; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsDqIzCMjnhs81opzmW8Z3YdGTr2lmSqgrOwRRF/gtU+NJlNKIGZ/9AlEQbeMzTc0q
         FN5RYilZJaS9btr1zWxrJTlhtM2WngbLGsJ/64nI56cKwJX7+Id5Do504vn8uCSRBhlT
         WtleDAS8tFvCrwhfE3i+TeOZ8tKRr3+SMimGLqubzwi6TBxMYWPE8o/RmgVzjZJyteea
         DxM93Gh7U4o0pHLxZHK/mjC/bxiqX1GRLIt1O2bIWbyfZRabEyXqmQO2kQtgKpsjaCBp
         cfa8IbivIKmSxvFvYaxuBAcnQ721837wDH0Yo5Y0KqvURyGm1J77RGHdofQILd+KVZkx
         tNwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=cV8pNHsoeydQ6rLnuswZrJ7riCrPVzpApY4B9oaJCA0=;
        b=tkXFQn9Y0pFC5N40SRuaE+yyFGjl3ASAK0eJT7MeL+Qciv6D9d0T5tHkajNJ5Ia5xu
         locBPERmk0aI8F+P6rP9h0pPJD7Maf54k9cSYOv7Nmt3drDm6K8v+d8/HSuRmB+Q781c
         kRN5LCYMpKq+UwnQ2etxbDq9hLaiiIuJFFGH6PrYFSIHL3px/OYgbZul7z66d+S/z7Rr
         zpmY6zoquywtBBFdKO9MVWJgHqYq/up5okF3sILQpanVGggvpWiYryMQqCxCDFxCvjXO
         Sx2uEDd210Stz0x6zJ0bFEkCjhEspq3Y/Kvn7gv2VHVnIpwxu4bOeo/t7RBBiR+rK+Jn
         IjdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of 3zksnxgkbajedjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3ZksnXgkbAJEDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cV8pNHsoeydQ6rLnuswZrJ7riCrPVzpApY4B9oaJCA0=;
        b=F09xP6pssNgDe1NUqRtYu0kheFgOk+Pnz6PLC54l3iE8PpAm8vts+JVnsGKOh+X+qG
         p5r4Lgfy9Wmobs9PqsAEDLlpFrZ4SZ9aF/uDdyJAzV/fS4HecLYDKla+Q29aXst1TXFL
         iXLBGIapJBwWx9/79kh6JBlYU23/YIGB6O+1qfS6QOMkbIamr57AHZCz696ExvxAb5nT
         nI/FZGS4WaY7/n03AIsCq5KndVE0WUtT4XgmlKEh2aUqWM4F700rqARvi6BfPlZBdeNe
         WJ3WezXuuYzqIQd5ASZeEpAmLj8xoMtJnysq0uOGcR4Gf+BgJFB1ulobsczYhTS3gkFM
         VnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cV8pNHsoeydQ6rLnuswZrJ7riCrPVzpApY4B9oaJCA0=;
        b=HEIiWnvBaWaTW4Q5zM3eyrHYfh/YWXtdFd/7dIz3BVcK0tfAbA4irH2V7HPpp0JiIi
         lbrYDbfAHLLCOXa3V0Ag5rXpaY2L5aBDQ9igMJxXlumPYUzo+mnmNVMVPAhKWQRhHirK
         WPqDHMIYbpi4t88EtmQtIt1cSxBkCx/jWzr25L8lJYm8T3ERsWrLgd7m9uY67hKMJiZ2
         LBvjUoYanRtamGvxJLpZ49POXEE0jzLGmtg1KGva/0PLR+65fqNmJ5mlt6qY1Kv8egw4
         Fhu9C7bQCaHoHL7ME2CCCw4T3Ofh2rE4dIhWtwB62QrNV3quqH/wA31cY77sgvmKPKeJ
         6mRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3qk7ViXH+uV1Ejk+m5LqJSAmaqqTBWOmC02LskKL2Fo0XvwkP
	wXbjyU0K786WWVp71foXmQk=
X-Google-Smtp-Source: APXvYqzGfmG/Qh0V+m8icZ1qPlMbquxav5tUdvycy+mmR0Pi8K0euZwBjW4d0nrOvUeCl1q2/JnG5A==
X-Received: by 2002:a1f:4d85:: with SMTP id a127mr3829763vkb.67.1579633511715;
        Tue, 21 Jan 2020 11:05:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cdaf:: with SMTP id l15ls1548602vka.5.gmail; Tue, 21 Jan
 2020 11:05:11 -0800 (PST)
X-Received: by 2002:a1f:5fc7:: with SMTP id t190mr3777709vkb.52.1579633511329;
        Tue, 21 Jan 2020 11:05:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579633511; cv=none;
        d=google.com; s=arc-20160816;
        b=kIo1B2vPvsJSmdrg/hCLX6JCa9YK3erb8PxxLgtbzRc3EHjYGpFhGn9MVOVq3U1Odp
         rs9YFHEzJGGdB3TlH1QSOITmQ5gGm7UwZNHlwdZFzUVsdKP3u1g2BN+dLjNLksolbZD1
         6y1oBCUMmsrfKM8gTZWhyC0xNhc6i5s7PXqcXVNcfyormJAwlA7eK7TNp7Qa1llN1+Wr
         8Lho6llJt6QkXyLSM5oTNoWjop/y+fiJz3gM5MTUQssSZXcSqAeXXB22etSqPHK3wTwX
         LCXwAziSnsuaxapkUIeNAxsCWSsX1zhgV1+fN0J33jqtEFoI5ixFCmo16HCi/F+MQzTN
         YwWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=hh2ESy2i/NiRcbPskm2nSqHQ3QN16smrsuvBjfTZgUM=;
        b=ibX76zAvIqbsPkE1rRC4S0jnkL6JYiUKwKtuU+o9OAzlIaDzyufmsG81CXP2NBnOxk
         sliiNrFsQyN9ClR/2JamIi3P1IVwYlwCCXgwTPhJSlqj0KVTlXNjElEFMVwjHeGI1Z90
         yIKwSvrZvSuRrZM+It5LNxREvTru2/yLokTPmwf+dXtWfF6hzzi+yvR+hoyDkhSL/EpH
         FbXS56HMgAPtPx4g8aVPZhvMQClHKtDVMGC8YKrVP2LTw2rS48aDWCWWJrx9ZQXyGJ8D
         6Aui3+sYDVIRSoOUppPRmQb/1KyD+aLnLRBxRRb7qyKi4flRGbd395XsNKVuxto7OeD6
         /iYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of 3zksnxgkbajedjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) smtp.mailfrom=3ZksnXgkbAJEDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com. [209.85.166.72])
        by gmr-mx.google.com with ESMTPS id o19si1748941vka.4.2020.01.21.11.05.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zksnxgkbajedjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.166.72 as permitted sender) client-ip=209.85.166.72;
Received: by mail-io1-f72.google.com with SMTP id 13so2351473iof.14
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 11:05:11 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a5e:a614:: with SMTP id q20mr3966732ioi.36.1579633510714;
 Tue, 21 Jan 2020 11:05:10 -0800 (PST)
Date: Tue, 21 Jan 2020 11:05:10 -0800
In-Reply-To: <00000000000031a8d7059c27c540@google.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000048111c059cab1695@google.com>
Subject: Re: general protection fault in free_verifier_state (3)
From: syzbot <syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com>
To: andriin@fb.com, ast@kernel.org, bpf@vger.kernel.org, 
	clang-built-linux@googlegroups.com, daniel@iogearbox.net, davem@davemloft.net, 
	hawk@kernel.org, jakub.kicinski@netronome.com, john.fastabend@gmail.com, 
	kafai@fb.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	songliubraving@fb.com, syzkaller-bugs@googlegroups.com, yhs@fb.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of 3zksnxgkbajedjk5v66zcvaa3y.19916zfdzcx98ez8e.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.166.72 as permitted sender) smtp.mailfrom=3ZksnXgkbAJEDJK5v66zCvAA3y.19916zFDzCx98Ez8E.x97@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com;
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

syzbot has found a reproducer for the following crash on:

HEAD commit:    2e3a94aa bpf: Fix memory leaks in generic update/delete ba..
git tree:       bpf-next
console output: https://syzkaller.appspot.com/x/log.txt?x=15aefc6ee00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a736c99e9fe5a676
dashboard link: https://syzkaller.appspot.com/bug?extid=b296579ba5015704d9fa
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10a4280de00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1411544ee00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+b296579ba5015704d9fa@syzkaller.appspotmail.com

RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 0000000000441339
RDX: 0000000000000048 RSI: 00000000200017c0 RDI: 0000000000000005
RBP: 00000000006cc018 R08: 0000000000000002 R09: 00000000004002c8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000402280
R13: 0000000000402310 R14: 0000000000000000 R15: 0000000000000000
kasan: CONFIG_KASAN_INLINE enabled
kasan: GPF could be caused by NULL-ptr deref or user memory access
general protection fault: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 9996 Comm: syz-executor310 Not tainted 5.5.0-rc4-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
RIP: 0010:free_verifier_state+0x49/0x1d0 kernel/bpf/verifier.c:744
Code: db 48 83 ec 20 48 89 45 b8 48 c1 e8 03 4c 01 f8 89 75 c4 48 89 45 c8 e8 05 9c f2 ff 4c 63 f3 4f 8d 2c f4 4c 89 e8 48 c1 e8 03 <42> 80 3c 38 00 0f 85 2b 01 00 00 4f 8d 34 f4 49 8b 3e 48 85 ff 48
RSP: 0018:ffffc90002007688 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffffff8184dd58
RDX: 0000000000000000 RSI: ffffffff8182644b RDI: 0000000000000000
RBP: ffffc900020076d0 R08: ffff888098656280 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: dffffc0000000000
FS:  000000000236b880(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff600400 CR3: 0000000098345000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 do_check_common+0x2ec7/0x9650 kernel/bpf/verifier.c:9597
 do_check_main kernel/bpf/verifier.c:9654 [inline]
 bpf_check+0x84ed/0xbb07 kernel/bpf/verifier.c:10009
 bpf_prog_load+0xeab/0x17f0 kernel/bpf/syscall.c:2095
 __do_sys_bpf+0x1521/0x41e0 kernel/bpf/syscall.c:3387
 __se_sys_bpf kernel/bpf/syscall.c:3346 [inline]
 __x64_sys_bpf+0x73/0xb0 kernel/bpf/syscall.c:3346
 do_syscall_64+0xfa/0x790 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x441339
Code: e8 5c ae 02 00 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 bb 0a fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffe7971f348 EFLAGS: 00000246 ORIG_RAX: 0000000000000141
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 0000000000441339
RDX: 0000000000000048 RSI: 00000000200017c0 RDI: 0000000000000005
RBP: 00000000006cc018 R08: 0000000000000002 R09: 00000000004002c8
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000402280
R13: 0000000000402310 R14: 0000000000000000 R15: 0000000000000000
Modules linked in:
---[ end trace af38d247c1b207c2 ]---
RIP: 0010:free_verifier_state+0x49/0x1d0 kernel/bpf/verifier.c:744
Code: db 48 83 ec 20 48 89 45 b8 48 c1 e8 03 4c 01 f8 89 75 c4 48 89 45 c8 e8 05 9c f2 ff 4c 63 f3 4f 8d 2c f4 4c 89 e8 48 c1 e8 03 <42> 80 3c 38 00 0f 85 2b 01 00 00 4f 8d 34 f4 49 8b 3e 48 85 ff 48
RSP: 0018:ffffc90002007688 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffffff8184dd58
RDX: 0000000000000000 RSI: ffffffff8182644b RDI: 0000000000000000
RBP: ffffc900020076d0 R08: ffff888098656280 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: dffffc0000000000
FS:  000000000236b880(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff600400 CR3: 0000000098345000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000048111c059cab1695%40google.com.
