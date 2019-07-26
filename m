Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBROJ5XUQKGQEESI7TDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2EB772E3
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 22:38:29 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id x2sf26130329wru.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 13:38:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564173509; cv=pass;
        d=google.com; s=arc-20160816;
        b=zRSgoc2YdioPD2kt8gyMIjaEhsPFIwcjdwPCTn0MVVl/Q1KTdZ1+ATBoHyBwgcG654
         K5r/uf4bw6itDajhbwi5i5ihjVHljVLEumQ8VyD0ta0yB3mfXS/dFRlMcrfMVMFT8+Kg
         2GFusgZ63IRMkMdVnL5G6guLD11XcWdNgH6Vl5DIWq9wQj91uTK0d6HVvXoM16VUYaxq
         nQ4Vfg2/RaTurLkW5MmYfl+1OBZLGLt+kCJZ7E28eztO0b+S3ftuPGJA6aAXhUFecVIh
         zYs69js+agwltrmbpFQjvXHQpwQDPtXatPojvxrVJxwv7KIQn8fbxqb+F218QeEdwtHl
         UQFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LxpA0KTKd3742xsmiWB0a/aQqZ6ob1jJQe0h3DgBbbk=;
        b=c7CEMa++Z6jP3PheUX3FkFe+ACF5a4Hbhl1nrpXMobYWSdD2yrx1dgM9MqOcn10xnx
         QQq3n3P0ucIzgf0YkuZMw0BpvIxXAIAxPYY3Iq1kkpvOzlaiTxYL9XhC9x/zuZ3o2ATw
         iSZUhl256QWyT2HSI10NBb97LUUouugiFIU+tmT97As85tAcgKMDGZFEI9QahmshYoqa
         IEY6N/RxKqNL1wNw0aZIhVy+kDkhx6PTqKd+JBxxr4MF2MGXzDtG3KWda3KYzEsZp3nB
         KufiB+gvNasFXdLSmfy1s/AMjUphASVVMwEeOKGEmCxCw9kKMxiDY3SIdQyWHO2y97vU
         AslQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o4F12wjK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LxpA0KTKd3742xsmiWB0a/aQqZ6ob1jJQe0h3DgBbbk=;
        b=EhVPwUKXUl43l85JdFoUL3Z/2Of87U6zgKn09J8UzpUC8HH1I/liVZKy09vJGyhxBb
         PlfQdWpfdmAFO7BUglWWJKYI7Kv47D6WuHaIbs5PXWhYG/I7j5sBv5pQTMyKcwFNYSN9
         xy55uBdiHUU05rcsODHyHSY/aS9Z16yn0UUwnyTl0geT4Pb6ygVkFZilHjXKCBNAzpQE
         NQ4h2f3kw5vty+ZHdYeQ21TxG5lELTCgyH1f8cBFUqwbKjfib4DrBNFveIIYAu7AIhGh
         zOSA5iB0WMJGDAcYRjNju8BLWZiZ7nxBWd+qdUdAQSCT4U+aPn8u8RDykWIKBpnZ11C6
         18xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxpA0KTKd3742xsmiWB0a/aQqZ6ob1jJQe0h3DgBbbk=;
        b=idXlqZ5JVZK/tj51Xbn6wXCo1oJvr9ZqIz3mHZ8CX3MPj+fs84wzWt11Tq/2HjE+ZQ
         pCVLPfUDCrsvvH+6myWdiVMki/Ilqd1J3HHxfh6TKYe1okucSpac7N2i0OJvgNjgxuCH
         EYS88XZGOvl15xSdu4gUHjmEp//Ea+ICWzboE4siUs2mk1SLH0bd8tIV06dWg+ci6aHV
         yAdFoRDpY/LCwwLWijkhDuEiX9yHvUbU+NRcKA5Qx/eFphH4H6inNPlPYhqu1qlYs6pD
         MwHGQLsRikBOd58EUt2XtUVo3+XNQhfFHTR8K59Fz/fJRVCfmVIfBOTFNdxXQkUFBJcX
         cKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxpA0KTKd3742xsmiWB0a/aQqZ6ob1jJQe0h3DgBbbk=;
        b=TR4yz7dRryYTX1ypjo6OaSuFNQsLCuXVQTPWNVrYiX3Tv62u5PnS50dXA6Rg9knDyt
         hq4Yx5ArYlOv64jDmzS5v91hZ2fbH3YWX2kQWbKZHh4NUSDw4jLWGGhvJriu+VptdLdQ
         QmwxrSc+AojhOUlAZaT7GmqnY+TnPPEPCf+cwY2Lh7VZYxnnuDWBRCHf3G0TB4JmijFk
         cefRF1b/RyMgBJ81bptgYwhYTzFdswps5DVPGNQINjFMBuSVibdYgcYSfyLkAZeR9eO0
         x524q3GLgcOzJDWSVvZhhCzXASJerI02Al5PbNVK7jOfR+uBQ4zgSw7ptGjsw6h7R7cy
         PFUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsXn1xY74KWV4NttwIczRvMk7HpBoZrzBTaoR46u0DNHgLqEmN
	EMBXDMmzsINIBzBvZEEquCo=
X-Google-Smtp-Source: APXvYqzWz2hmuJhnBX067QMFrZaEpNAIXrVjIkXu4TwRKiVl1cA1k2E3C5T/wmkGw7jPGEA7XSBOkQ==
X-Received: by 2002:a7b:c251:: with SMTP id b17mr12156750wmj.143.1564173509470;
        Fri, 26 Jul 2019 13:38:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls19195682wmi.1.gmail; Fri, 26
 Jul 2019 13:38:28 -0700 (PDT)
X-Received: by 2002:a1c:407:: with SMTP id 7mr91266491wme.113.1564173508874;
        Fri, 26 Jul 2019 13:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564173508; cv=none;
        d=google.com; s=arc-20160816;
        b=JOcmwnOBFxZipa1wrH2PO4iOM7hWUTgu0PH7eLwFuCFeTMnfQeI+bn58l5TVX2q4Nd
         sWZaCWlXBECjMUOlwyVz8CEacVl068Cp9JlWaaFLe3FmMPbZOS6jHGqrmOdRGOj7dd4t
         5sMGJBu1v3tq9NtmYn/VEY1YAvrTJT9yotAvUP8pD8kVLM25JBKSW5CM2La+DJfpNDWa
         A/UqoXPU/iqeke2FU6e3xQGm6X/MSdfxCYdwGEtpK1Bb2og0kp2VMTI6bnDJ4+loKuqN
         WeSH1rgP91+CoO4hv3ThvijNh/a0rhDk08uccKXsrP7pqUDqLak5OssBbjyZMGUAcIPH
         hbjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yjm9C+iCFzUgwfxxisADStycLzUMqh94ZfjnwoRc6og=;
        b=QuQ3XeErYhWZQC1WKhbpB/cfgYePBWQm0h24RztVil3l7RgT/8fRdBwz2Y0HobxfZj
         kdOYYkymoo7NDIcH+gz+oDV//RR80lBIFkzm5T9Bcv8LM9NzU6VvojJSwKya7qhs7I0M
         0GZjGJy/eupC6Sha8kt5aGRR13rOR7l1O1FMSJCJMP9VYOJ+R03y1TiU/lNhgsFv0QXc
         lmwc8/ldl01wMIRXFXyG/aongah5WiaOC/UyUe+h/1uHcWPyO6Znipw/4xul+X57H5LB
         ISeOhtJqYwRR4hjPYu9MJT86NZo2LORKN9y7XRODaJi3D/lkVroOMiJ3fv0w3q2TkEJh
         WHrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o4F12wjK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 60si1401120wra.2.2019.07.26.13.38.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 13:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id x1so5754440wrr.9
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jul 2019 13:38:28 -0700 (PDT)
X-Received: by 2002:a5d:498f:: with SMTP id r15mr97329873wrq.353.1564173508439;
 Fri, 26 Jul 2019 13:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
In-Reply-To: <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Jul 2019 22:38:16 +0200
Message-ID: <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o4F12wjK;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

Hi Yonghong Song,

On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> > Hi,
> >
> > I have opened a new issue in the ClangBuiltLinux issue tracker.
>
> Glad to know clang 9 has asm goto support and now It can compile
> kernel again.
>

Yupp.

> >
> > I am seeing a problem in the area bpf/seccomp causing
> > systemd/journald/udevd services to fail.
> >
> > [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> > to connect stdout to the journal socket, ignoring: Connection refused
> >
> > This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> > BFD linker ld.bfd on Debian/buster AMD64.
> > In both cases I use clang-9 (prerelease).
>
> Looks like it is a lld bug.
>
> I see the stack trace has __bpf_prog_run32() which is used by
> kernel bpf interpreter. Could you try to enable bpf jit
>    sysctl net.core.bpf_jit_enable = 1
> If this passed, it will prove it is interpreter related.
>

After...

sysctl -w net.core.bpf_jit_enable=1

I can start all failed systemd services.

systemd-journald.service
systemd-udevd.service
haveged.service

This is in maintenance mode.

What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?

Regards,
- Sedat -

> >
> > Base for testing: next-20190723.
> >
> > The call-trace looks like this:
> >
> > [Fri Jul 26 08:08:42 2019] BUG: unable to handle page fault for
> > address: ffffffff85403370
> > [Fri Jul 26 08:08:42 2019] #PF: supervisor read access in kernel mode
> > [Fri Jul 26 08:08:42 2019] #PF: error_code(0x0000) - not-present page
> > [Fri Jul 26 08:08:42 2019] PGD 7620e067 P4D 7620e067 PUD 7620f063 PMD
> > 44fe85063 PTE 800fffff8a3fc062
> > [Fri Jul 26 08:08:42 2019] Oops: 0000 [#1] SMP PTI
> > [Fri Jul 26 08:08:42 2019] CPU: 2 PID: 417 Comm: (journald) Not
> > tainted 5.3.0-rc1-5-amd64-cbl-asmgoto #5~buster+dileks1
> > [Fri Jul 26 08:08:42 2019] Hardware name: LENOVO
> > 20HDCTO1WW/20HDCTO1WW, BIOS N1QET83W (1.58 ) 04/18/2019
> > [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
> > [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
> > 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
> > 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
> > f8 1e 0f 8f c8 00
> > [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
> > [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
> > RCX: 0000000000000002
> > [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
> > RDI: ffff992ec028fce0
> > [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
> > R09: ffff992ec028ff58
> > [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
> > R12: 000000007fff0000
> > [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
> > R15: ffff992ec028fce0
> > [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
> > GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
> > [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
> > CR4: 00000000003606e0
> > [Fri Jul 26 08:08:42 2019] Call Trace:
> > [Fri Jul 26 08:08:42 2019]  __bpf_prog_run32+0x44/0x70
> > [Fri Jul 26 08:08:42 2019]  ? flush_tlb_func_common+0xd8/0x230
> > [Fri Jul 26 08:08:42 2019]  ? mem_cgroup_commit_charge+0x8c/0x120
> > [Fri Jul 26 08:08:42 2019]  ? wp_page_copy+0x464/0x7a0
> > [Fri Jul 26 08:08:42 2019]  seccomp_run_filters+0x54/0x110
> > [Fri Jul 26 08:08:42 2019]  __seccomp_filter+0xf7/0x6e0
> > [Fri Jul 26 08:08:42 2019]  ? do_wp_page+0x32b/0x5d0
> > [Fri Jul 26 08:08:42 2019]  ? handle_mm_fault+0x90d/0xbf0
> > [Fri Jul 26 08:08:42 2019]  syscall_trace_enter+0x182/0x290
> > [Fri Jul 26 08:08:42 2019]  do_syscall_64+0x30/0x90
> > [Fri Jul 26 08:08:42 2019]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > [Fri Jul 26 08:08:42 2019] RIP: 0033:0x7f5d220d7f59
> > [Fri Jul 26 08:08:42 2019] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00
> > 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8
> > 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 07 6f 0c 00
> > f7 d8 64 89 01 48
> > [Fri Jul 26 08:08:42 2019] RSP: 002b:00007ffd11332b48 EFLAGS: 00000246
> > ORIG_RAX: 000000000000013d
> > [Fri Jul 26 08:08:42 2019] RAX: ffffffffffffffda RBX: 000055bf8ab34010
> > RCX: 00007f5d220d7f59
> > [Fri Jul 26 08:08:42 2019] RDX: 000055bf8ab34010 RSI: 0000000000000000
> > RDI: 0000000000000001
> > [Fri Jul 26 08:08:42 2019] RBP: 000055bf8ab97fb0 R08: 000055bf8abbe180
> > R09: 00000000c000003e
> > [Fri Jul 26 08:08:42 2019] R10: 000055bf8abbe1e0 R11: 0000000000000246
> > R12: 00007ffd11332ba0
> > [Fri Jul 26 08:08:42 2019] R13: 00007ffd11332b98 R14: 00007f5d21f087f8
> > R15: 000000000000002c
> > [Fri Jul 26 08:08:42 2019] Modules linked in: i2c_dev parport_pc
> > sunrpc ppdev lp parport efivarfs ip_tables x_tables autofs4 ext4
> > crc32c_generic mbcache crc16 jbd2 btrfs zstd_decompress zstd_compress
> > algif_skcipher af_alg sd_mod dm_crypt dm_mod raid10 raid456
> > async_raid6_recov async_memcpy async_pq async_xor async_tx xor
> > raid6_pq libcrc32c raid1 uas raid0 usb_storage multipath linear
> > scsi_mod md_mod hid_cherry hid_generic usbhid hid crct10dif_pclmul
> > crc32_pclmul crc32c_intel ghash_clmulni_intel aesni_intel aes_x86_64
> > i915 glue_helper crypto_simd nvme i2c_algo_bit cryptd psmouse xhci_pci
> > drm_kms_helper e1000e i2c_i801 xhci_hcd intel_lpss_pci nvme_core
> > intel_lpss drm usbcore thermal wmi video button
> > [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370
> > [Fri Jul 26 08:08:42 2019] ---[ end trace 867b35c7d6c6705a ]---
> > [Fri Jul 26 08:08:42 2019] RIP: 0010:___bpf_prog_run+0x40/0x14f0
> > [Fri Jul 26 08:08:42 2019] Code: f3 eb 24 48 83 f8 38 0f 84 a9 0c 00
> > 00 48 83 f8 39 0f 85 8a 14 00 00 0f 1f 00 48 0f bf 43 02 48 8d 1c c3
> > 48 83 c3 08 0f b6 33 <48> 8b 04 f5 10 2e 40 85 48 83 f8 3b 7f 62 48 83
> > f8 1e 0f 8f c8 00
> > [Fri Jul 26 08:08:42 2019] RSP: 0018:ffff992ec028fcb8 EFLAGS: 00010246
> > [Fri Jul 26 08:08:42 2019] RAX: ffff992ec028fd60 RBX: ffff992ec00e9038
> > RCX: 0000000000000002
> > [Fri Jul 26 08:08:42 2019] RDX: ffff992ec028fd40 RSI: 00000000000000ac
> > RDI: ffff992ec028fce0
> > [Fri Jul 26 08:08:42 2019] RBP: ffff992ec028fcd0 R08: 0000000000000000
> > R09: ffff992ec028ff58
> > [Fri Jul 26 08:08:42 2019] R10: 0000000000000000 R11: ffffffff849b8210
> > R12: 000000007fff0000
> > [Fri Jul 26 08:08:42 2019] R13: ffff992ec028feb8 R14: 0000000000000000
> > R15: ffff992ec028fce0
> > [Fri Jul 26 08:08:42 2019] FS:  00007f5d20f1d940(0000)
> > GS:ffff8ba3d2500000(0000) knlGS:0000000000000000
> > [Fri Jul 26 08:08:42 2019] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [Fri Jul 26 08:08:42 2019] CR2: ffffffff85403370 CR3: 0000000445b3e001
> > CR4: 00000000003606e0
> >
> > More details in [1] and what I tried (for example CONFIG_SECCOMP=n)
> >
> > I have no clue about BPF or SECCOMP.
> >
> > Can you comment on this?
> >
> > If this touches BPF: Can you give me some hints and instructions in debugging?
> >
> > My kernel-config and dmesg-log are attached.
> >
> > Thanks.
> >
> > Regards,
> > - Sedat -
> >
> > [1] https://github.com/ClangBuiltLinux/linux/issues/619
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXYp%3DJx%2B8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw%40mail.gmail.com.
