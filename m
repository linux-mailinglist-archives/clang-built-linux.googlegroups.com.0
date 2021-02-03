Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNVW5SAAMGQEVZNQPRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC3C30E52A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 22:52:55 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id l3sf569118qvz.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 13:52:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612389175; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuQZR1BLh63+55Q+0Z6qYmutmA9aZfH+wLNI8kLt0F+GSd3uR2nVw6oBAuoK74JW8Y
         sT185f5bilfjBFy9JhqWVhyk/W30GaLjoykSwPIgb6TzxfzNeVdr/jq6dJkSbrva8iBF
         KDNiAE4BrwEatleEbWyEuWeGCQlPBMZdytb2I7hx3Xc8uz17Rwf2IhnMKo4Y9nVQ6Gx3
         auL1lKuVohnfDQsRGtsauuSDU1U3VPhUEqVBT8p9vaB/mpuDl6FmiXbQKoaO4ys5mMaS
         P+Ebn5QjsdFjygk+JUbvty4zPOPrG/Bmyq62SKdJVuPHWtCBCsFWIVi9Tj68/Eu1ovt1
         9JFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BvzGhOd8zPvLygDrSycxHFY5FH8bHP3hqpJCU04+ZZM=;
        b=bUaVw0LZ8V4H0VHGmvTXFslycwMZu5YZWHC5z6imquvIJgsvW9poeFT49oK6kaonyN
         QT5LfsRE01U8OyIqIQpCtK02Ss+bbhc8IzjBbYHiep+CfdL1zJTGXrj6uUO47KT5dcnh
         QgQX75tLeGM6icgz+56kiBnOW+5LclpOiskpM5AUNl/N660cyeVdyDjb8EinS3qlS01C
         JAh0NeVOFSuEXCrrE9dASn4aq1HHQd4AQaDBNpHge6Sui5w/O5r3EYmfuVqczU1PuYl+
         S9YTj7qXAbzGcQw847Hp5sR3oOwu7lpOlmK5axsdZiegOxax40G4wy76iCnqFSTQLXeV
         M+xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IxTVtKwe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BvzGhOd8zPvLygDrSycxHFY5FH8bHP3hqpJCU04+ZZM=;
        b=ozXVEdwRDqEteXTGRxRb/MPZkSzqujGW9h7D4IFUzOlfRDU22b49OuAj8l1xevgxky
         R8PhTaO6Xqgh2BZQvLmQ7ZFnaI2HYH7tjRUMNDuAEw+kD4wE4CSk5wsUAstvfKzkpm4Z
         6uw+UpgNCTHg+FAIxk3ppz4xVH9ggHF2sJD7Un9cR7nHQNdayF+I5s3gSbTr+okTy9Et
         l1pvNWfvCso2XdtL4JvQZU2P1WfKT/aXqobBA02r+PHjLGL4Lw17cYRyKXf9FIMgSG+U
         KH6mmHJVQZeHv7GKN2hhfCLpmqP+wF3LmM6xPncbren+A6W4MYyTaXz9iUvvBYzRFdvV
         n7lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BvzGhOd8zPvLygDrSycxHFY5FH8bHP3hqpJCU04+ZZM=;
        b=eNSa23kiSCl3Fp7X0oxtkfuFr0vPMwDC6QhAbY7eEWWMvPOmE4bmj19U81MgeDOUYn
         oZ6n0epYEKS8AksYHwpbRu0sgPp/WM+zIc4WhQY9wvoOZlu0GfUitJtic/u83djeZarR
         bTMxOliWcXGnVHlSqk1LFUHXSvlrHqv0gppPNrswLJY7dew3mjYAnyTemTaTITGxPSEg
         DPSQHNC/o3k6TRtq07F+yIOVHDLW4wMjEfcv5NgqC11fBAa0mM1qHTxYxDEupJ9ZPGv1
         yncUHxPC0e10UG9TJs81SRfrvvFZ3UgWji5ViWADMPKyvg5xbH7QEyaMv3FGHGefLFjR
         LY5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BvzGhOd8zPvLygDrSycxHFY5FH8bHP3hqpJCU04+ZZM=;
        b=BKCvYr+DqtY8GSf5OmPhh8P0o/H+yI92Lp2tA0GDWuyqjZv/FvkjsLjh8JsDlIXBog
         sxz8PpmRzlRg9MIsz8K519zmM/EJ4ev0SY+1c2wUOL9KCgCUwHZmiHdIcpWoMBu50/8c
         ucS3dyUPqxEt532w5Y343Ko1j/nEgUbQ8jfmBiZIbB1RmOTmyEa1waf7O8EFTmsArJ0x
         7KVNHq2dvFYlnNtWL1rm4ymKQi2h1RQhsk6rgfRNXfpW5i2NouOVaS9iMxkH7LFsgelw
         lXwllZ+omfl3SyhBP2eNg+knn7zeSoaih7YA6yAdc+Erm4dmVsuWZtxuNs3KLGoMnNry
         rwng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CvQMbfqXDN7ltpYVvVtRF8zZh+49IQWVDRiS/1RD8nmCpTo2E
	7ZbBTetdOaQH/gcBZwWjJO4=
X-Google-Smtp-Source: ABdhPJzjs0RfS3hay1RtJN5W1UecvQKPDV6n0RY/nUQQ27zTGAyglvyJ8ZYTXeo6cb/gcBMvzOJtIg==
X-Received: by 2002:ac8:4a98:: with SMTP id l24mr4396358qtq.33.1612389174966;
        Wed, 03 Feb 2021 13:52:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5e13:: with SMTP id h19ls1362460qtx.7.gmail; Wed, 03 Feb
 2021 13:52:54 -0800 (PST)
X-Received: by 2002:ac8:5c13:: with SMTP id i19mr4498888qti.97.1612389174457;
        Wed, 03 Feb 2021 13:52:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612389174; cv=none;
        d=google.com; s=arc-20160816;
        b=SDVnd6koIIXAfZTFPaG60VNG4Tglpg4I6TMwAycQDSYPeQp4v4rFWJqRxD/4AfxxhY
         rjw1ih/htp87u19NsD8hXLoZp6RS/zMiQVrz7UVSmCulT4JpOZ4YOaoA+5wHRFOG2AzT
         NkJbiMp9LArd8nkASlFUFlV9i3ypMkG84zGXVL2LlYCIS9sm7l+LSpX38UpScEz04fX2
         jXJXalsN1rrDmyiCUzKMRR8Ahk3/N5UV3zGheIJkTh6hz/dMqlJ1834AelEVGU8wj0ff
         QDPHKgXKs9ToMvrn5zYFYfzy8Xn6BzGroj56XAgNmPKjLsSMOsWZD8yc5x+FMDaDrAVb
         oiRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tsvg/h+1S/E5GsNePoujIhMHQxRoifmWmsFuwlxMak0=;
        b=Pc/JrEAAZ2+d35n1L7XpkQhlRngkE9MOej9tJpCg+AmlI95b5PiGjxKEaSoTbb/B7n
         czuLlvLoQi1S86nHjRdihmnH1dLiyKbynJZq4jDcCFUbph2MbDwBXc4Fs+7Y55Gi1ifY
         v890Z7jh5/TLOx3MpipkEmVRJURpPjXuPbAVGL5BeRHsZBq6JrMVNopls2rQk6AOgqqP
         DbD3uyCcTaFPS22s/VVnsbtfjoM1175TqXB/xOusCgrozSgc5lzW+COkgLI5rWxyBAXL
         +qEZlmyaiRvhK2vKe2lYCGg63wMBpyo0zq0Dh739x4k2pikvXBkKKJwgUuzHaYVrJbr8
         H29A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IxTVtKwe;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z14si252161qtv.0.2021.02.03.13.52.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 13:52:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id z18so676469ile.9
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 13:52:54 -0800 (PST)
X-Received: by 2002:a92:ce46:: with SMTP id a6mr4396041ilr.10.1612389173514;
 Wed, 03 Feb 2021 13:52:53 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <CAKwvOdkmuoE7tV_WF5nMC1-rt492E4OvHFU7s0XChUTeMT-98w@mail.gmail.com>
In-Reply-To: <CAKwvOdkmuoE7tV_WF5nMC1-rt492E4OvHFU7s0XChUTeMT-98w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 22:52:39 +0100
Message-ID: <CA+icZUWsa4NRKAWn7SAh7vKCJmAE2NsyTyy9dHZ0Bq-Jg04Obw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rachel Sibley <rasibley@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000ed55b105ba759be0"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IxTVtKwe;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136
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

--000000000000ed55b105ba759be0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2021 at 10:48 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Wed, Feb 3, 2021 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
>>
>>
>> On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote=
:
>>
>>>
>>>
>>> On 2/3/21 1:03 PM, Nathan Chancellor wrote:
>>> > On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
>>> >>
>>> >> Hello,
>>> >>
>>> >> We ran automated tests on a recent commit from this kernel tree:
>>> >>
>>> >>         Kernel repo:
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>> >>              Commit: 3aaf0a27ffc2 - Merge tag
>>> 'clang-format-for-linux-v5.11-rc7' of git://github.com/ojeda/linux
>>> >>
>>> >> The results of these automated tests are provided below.
>>> >>
>>> >>      Overall result: FAILED (see details below)
>>> >>               Merge: OK
>>> >>             Compile: OK
>>> >>   Selftests compile: FAILED
>>> >>               Tests: PANICKED
>>> >>
>>> >> All kernel binaries, config files, and logs are available for
>>> download here:
>>> >>
>>> >>
>>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/02/02/622905
>>> >>
>>> >> One or more kernel tests failed:
>>> >>
>>> >>      aarch64:
>>> >>       =E2=9D=8C selinux-policy: serge-testsuite
>>> >>
>>> >>      x86_64:
>>> >>       =E2=9D=8C selinux-policy: serge-testsuite
>>> >>       =E2=9D=8C LTP lite
>>> >
>>> > These should be the failures for this particular set of tests correct=
?
>>> >
>>> >
>>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/950=
7327_x86_64_1_RHELKT1LITE.FILTERED.fail.log
>>> >
>>> > I am curious, is there any way to get a side by side comparison of th=
e
>>> > test results between GCC and clang? In other words, I would like to
>>> know
>>> > if a test is failing with both compilers versus just clang. This woul=
d
>>> > help us understand if it is a compiler specific issue or something th=
at
>>> > broke the kernel.
>>> >
>>> >>       =F0=9F=92=A5 LTP
>>> >
>>> >>From what I can tell:
>>> >
>>> > [12262.428593] general protection fault, probably for non-canonical
>>> address 0x8bc08b308b608b5: 0000 [#1] SMP PTI
>>> > [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6
>>> #1
>>> > [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007
>>> > [12262.428810] RIP: 0010:string+0x50/0x110
>>> > [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb
>>> 15 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d=
 0c
>>> 07 <45> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11
>>> > [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246
>>> > [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX:
>>> ffff0a00ffffff04
>>> > [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI:
>>> ffff9ea25e9ea03e
>>> > [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09:
>>> ffff9ea25e9ea03e
>>> > [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12:
>>> ffff9ea25e9eb000
>>> > [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15:
>>> ffffb1ea012bbca0
>>> > [12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000)
>>> knlGS:0000000000000000
>>> > [12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> > [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4:
>>> 00000000000006e0
>>> > [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2:
>>> 0000000000000000
>>> > [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7:
>>> 0000000000000600
>>> > [12262.428810] Call Trace:
>>> > [12262.428810]  vsnprintf+0x570/0x710
>>> > [12262.428810]  seq_printf+0x6b/0x90
>>> > [12262.428810]  ? lock_acquire+0x27/0x280
>>> > [12262.428810]  ? mod_objcg_state+0xd2/0x160
>>> > [12262.428810]  ? vsnprintf+0x32f/0x710
>>> > [12262.428810]  print_name+0x46/0xc0
>>> > [12262.428810]  ? seq_printf+0x6b/0x90
>>> > [12262.428810]  ? __kmalloc_node+0xaf/0x340
>>> > [12262.428810]  ? lock_acquire+0x27/0x280
>>> > [12262.428810]  ? kvmalloc_node+0x4b/0x90
>>> > [12262.428810]  lc_show+0x82/0xe0
>>> > [12262.428810]  seq_read_iter+0x311/0x420
>>> > [12262.428810]  proc_reg_read_iter+0x3f/0x80
>>> > [12262.428810]  vfs_read+0x2c3/0x340
>>> > [12262.428810]  ksys_read+0x5f/0xb0
>>> > [12262.428810]  do_syscall_64+0x33/0x40
>>> > [12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>> > [12262.428810] RIP: 0033:0x7fab4318791d
>>> > [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64
>>> 83 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0=
 0f
>>> 05 <48> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15
>>> > [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX:
>>> 0000000000000000
>>> > [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX:
>>> 00007fab4318791d
>>> > [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI:
>>> 0000000000000005
>>> > [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09:
>>> 00007ffcaeb27520
>>> > [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12:
>>> 0000000000000000
>>> > [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15:
>>> 0000000000000000
>>> > [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer
>>> snd_seq snd_seq_device authenc pcrypt crypto_user sha3_generic algif_ha=
sh
>>> salsa20_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mk=
iss
>>> ax25 ppp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache
>>> lockd grace rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_di=
ag
>>> inet_diag rfkill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_int=
el
>>> snd_intel_dspcfg soundwire_intel soundwire_generic_allocation snd_soc_c=
ore
>>> snd_compress snd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_=
core
>>> ac97_bus snd_hwdep snd_pcm joydev snd_timer snd virtio_net soundcore
>>> net_failover pcspkr virtio_balloon failover i2c_piix4 fuse zram ip_tabl=
es
>>> x_tables cirrus drm_kms_helper cec virtio_blk drm serio_raw ata_generic
>>> pata_acpi floppy btrfs raid6_pq xor [last unloaded: can]
>>> > [12262.462039] ---[ end trace f683b95858968bee ]---
>>> >
>>> > I cannot reproduce this in QEMU with a Debian rootfs with the supplie=
d
>>> > configuration file though, proc01 -m 128 passes for me.
>>>
>>> Hi Nathan,
>>>
>>> We recently moved the mainline tree to use Fedora Rawhide as the base
>>> distro, this helps out kdump and other tests which require
>>> updated user space for testing. As a result, there were a few tests tha=
t
>>> shouldn't have run like LTP Lite. So the log you linked
>>> above is not related to the panic:
>>>
>>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/950=
7327_x86_64_1_RHELKT1LITE.FILTERED.fail.log
>>>
>>> This is the version of LTP we run for internal RHEL kernels and
>>> therefore isn't supported against upstream kernels. I'm working on a fi=
x
>>> for this now and should be resolved soon, sorry about that.
>>>
>>> As far as the panic, it was was triggered on our upstream LTP test, I
>>> don't have a corresponding x86_64/LTP mainline(GCC) job since there is =
a BPF
>>> bug which is causing our jobs to abort while updating the kernel for
>>> x86. You will see the following in the logs:
>>>
>>> 'failed to validate module [something] BTF: -22 '
>>>
>>
>> Guess this is with CONFIG_DEBUG_INFO_BTF=3Dy and LLVM/Clang?
>>
>> *Today, I played with above and diverse DWARF version settings.*
>> *Even recent pahole from Git in combination with up-to-date LLVM/Clang i=
s
>> incompatible with DWARF-v4 and DWARF-v5.*
>> *Means all my builds were broken.*
>>
>> Mark Wielaard says:
>> "I would try to avoid using clang producing DWARF5. It clearly has some
>> incompatibilities with dwarves/pahole. It should work if you don't set
>> DEBUG_INFO_DWARF5. Try GCC 11 (which defaults to -gdwarf-5) or an
>> earlier version (probably at least GCC 8 or higher) using -gdwarf-5
>> explicitly."
>>
>> If this is with CONFIG_DEBUG_INFO_BTF=3Dy you should make it unavailable
>> when CC_IS_CLANG=3Dy.
>>
>
> I'm attending BPF office hours tomorrow (morning, California time) to
> discuss this with the pahole maintainers.
>
> https://lore.kernel.org/bpf/CAADnVQ+weKq=3D-=3DKB7j=3D0FfCE0bLanJ_ppn_p-r=
opdu8zMhWGqQ@mail.gmail.com/
>

Great.
Bonne chance.

Just reported to linux-bpf ML.

- Sedat -

[1]
https://lore.kernel.org/bpf/CAEf4BzZ-uU3vkMA1RPt1f2HbgaHoenTxeVadyxuLuFGwN9=
ntyw@mail.gmail.com/T/#m2a5f11c5bb6ce66b3c59a1be2005dd40724d1d8b

>
>
>
>>
>> - Sedat -
>>
>>
>>>
>>> Here is a regular mainline job for reference where you can it:
>>>
>>> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_=
64_1_console.log
>>>
>>> As far as comparing tests for mainline run with gcc vs clang, we don't
>>> email an upstream ML for regular mainline, so nothing archived.
>>> However, the logs are still published externally and we can always link
>>> them here for comparison.
>>>
>>> If you like, we could start forwarding you reports for both ? Otherwise=
,
>>> we are working on publishing our results database we use internally,
>>> but this will take some time.
>>>
>>> Thanks,
>>> Rachel
>>>
>>> >
>>> > Cheers,
>>> > Nathan
>>> >
>>> >> We hope that these logs can help you find the problem quickly. For
>>> the full
>>> >> detail on our testing procedures, please scroll to the bottom of thi=
s
>>> message.
>>> >>
>>> >> Please reply to this email if you have any questions about the tests
>>> that we
>>> >> ran or if you have any suggestions on how to make future tests more
>>> effective.
>>> >>
>>> >>          ,-.   ,-.
>>> >>         ( C ) ( K )  Continuous
>>> >>          `-',-.`-'   Kernel
>>> >>            ( I )     Integration
>>> >>             `-'
>>> >>
>>> _______________________________________________________________________=
_______
>>> >>
>>> >> Compile testing
>>> >> ---------------
>>> >>
>>> >> We compiled the kernel for 3 architectures:
>>> >>
>>> >>      aarch64:
>>> >>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-=
pkg
>>> >>
>>> >>      ppc64le:
>>> >>        make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targ=
z-pkg
>>> >>
>>> >>      x86_64:
>>> >>        make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-=
pkg
>>> >>
>>> >>
>>> >> We built the following selftests:
>>> >>
>>> >>    x86_64:
>>> >>        net: fail
>>> >>        bpf: fail
>>> >>        install and packaging: fail
>>> >>
>>> >> You can find the full log (build-selftests.log) in the artifact
>>> storage above.
>>> >>
>>> >>
>>> >> Hardware testing
>>> >> ----------------
>>> >> We booted each kernel and ran the following tests:
>>> >>
>>> >>    aarch64:
>>> >>      Host 1:
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9D=8C selinux-policy: serge-testsuite
>>> >>         =E2=9C=85 lvm thinp sanity
>>> >>         =E2=9C=85 storage: software RAID testing
>>> >>         =E2=9C=85 stress: stress-ng
>>> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>>> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>>> >>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>>> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>>> >>         =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
>>> >>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module tes=
t
>>> >>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>>> >>
>>> >>      Host 2:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>> >>
>>> >>      Host 3:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9C=85 ACPI table test
>>> >>         =E2=9C=85 LTP lite
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Util=
ity)
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts t=
est
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance tes=
t
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic =
test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - =
transport
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - =
tunnel
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace E=
lement test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest su=
ites
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Ti=
er1
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: ka=
slr
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test=
 suite
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sa=
nity
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fu=
jitsu-socketapi-test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall=
: basic netfilter test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsu=
ite test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common =
<https://dm.corp.google.com/common>
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/trace=
r
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - vers=
ion 2.2.1
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>> >>
>>> >>      Host 4:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>> >>
>>> >>      Host 5:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>> >>
>>> >>    ppc64le:
>>> >>      Host 1:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>>> >>
>>> >>      Host 2:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP lite
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Util=
ity)
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts t=
est
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic =
test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - =
tunnel
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace E=
lement test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest su=
ites
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Ti=
er1
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: ka=
slr
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test=
 suite
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sa=
nity
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fu=
jitsu-socketapi-test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall=
: basic netfilter test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsu=
ite test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common =
<https://dm.corp.google.com/common>
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/trace=
r
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - vers=
ion 2.2.1
>>> >>
>>> >>      Host 3:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mda=
dm raid_module test
>>> >>
>>> >>      Host 4:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mda=
dm raid_module test
>>> >>
>>> >>      Host 5:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm thinp sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - rdma
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mda=
dm raid_module test
>>> >>
>>> >>    x86_64:
>>> >>      Host 1:
>>> >>
>>> >>         =E2=9A=A1 Internal infrastructure issues prevented one or mo=
re tests
>>> (marked
>>> >>         with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this archi=
tecture.
>>> >>         This is not the fault of the kernel that was tested.
>>> >>
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9D=8C selinux-policy: serge-testsuite
>>> >>         =E2=9C=85 lvm thinp sanity
>>> >>         =E2=9C=85 storage: software RAID testing
>>> >>         =E2=9C=85 stress: stress-ng
>>> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>>> >>         =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>>> >>         =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>>> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - rdma
>>> >>         =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndct=
l test suite
>>> >>         =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module tes=
t
>>> >>         =F0=9F=9A=A7 =E2=9D=8C storage: iSCSI parameters
>>> >>
>>> >>      Host 2:
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9C=85 kdump - sysrq-c
>>> >>         =F0=9F=9A=A7 =E2=9C=85 kdump - file-load
>>> >>
>>> >>      Host 3:
>>> >>         =E2=9C=85 Boot test
>>> >>         =E2=9C=85 ACPI table test
>>> >>         =E2=9D=8C LTP lite
>>> >>         =F0=9F=92=A5 LTP
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Util=
ity)
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking MACsec: sanity
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking sctp-auth: sockopts t=
est
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance tes=
t
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic =
test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - =
transport
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - =
tunnel
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace E=
lement test
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex - version 1.9-29
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>>> >>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Syscalls: nrdiff
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest su=
ites
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Trinity Fuzzer - Ti=
er1
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: ka=
slr
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP: openposix test=
 suite
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sa=
nity
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: ipv6/Fu=
jitsu-socketapi-test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall=
: basic netfilter test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsu=
ite test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: dm/common =
<https://dm.corp.google.com/common>
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/trace=
r
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libhugetlbfs - vers=
ion 2.2.1
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Tracepoints: operat=
ional test
>>> >>         =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>>> >>
>>> >>    Test sources: https://gitlab.com/cki-project/kernel-tests
>>> >>      =F0=9F=92=9A Pull requests are welcome for new tests or improve=
ments to
>>> existing tests!
>>> >>
>>> >> Aborted tests
>>> >> -------------
>>> >> Tests that didn't complete running successfully are marked with =E2=
=9A=A1=E2=9A=A1=E2=9A=A1.
>>> >> If this was caused by an infrastructure issue, we try to mark that
>>> >> explicitly in the report.
>>> >>
>>> >> Waived tests
>>> >> ------------
>>> >> If the test run included waived tests, they are marked with =F0=9F=
=9A=A7. Such
>>> tests are
>>> >> executed but their results are not taken into account. Tests are
>>> waived when
>>> >> their results are not reliable enough, e.g. when they're just
>>> introduced or are
>>> >> being fixed.
>>> >>
>>> >> Testing timeout
>>> >> ---------------
>>> >> We aim to provide a report within reasonable timeframe. Tests that
>>> haven't
>>> >> finished running yet are marked with =E2=8F=B1.
>>> >>
>>> >> --
>>> >> You received this message because you are subscribed to the Google
>>> Groups "Clang Built Linux" group.
>>> >> To unsubscribe from this group and stop receiving emails from it,
>>> send an email to clang-built-linux+unsubscribe@googlegroups.com.
>>> >> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/clang-built-linux/cki.C90653A6EF.V9S1=
4CF2MY%40redhat.com
>>> .
>>> >
>>> >
>>>
>>> --
>>> You received this message because you are subscribed to the Google
>>> Groups "Clang Built Linux" group.
>>> To unsubscribe from this group and stop receiving emails from it, send
>>> an email to clang-built-linux+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit
>>> https://groups.google.com/d/msgid/clang-built-linux/5877bb33-ba17-6459-=
410c-1c51bd193481%40redhat.com
>>> .
>>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>> https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWTia0CS5nrd=
Gx7oE%2BZj_J3oC4id6U3jpVbUgqVosoFxw%40mail.gmail.com
>> <https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWTia0CS5nr=
dGx7oE%2BZj_J3oC4id6U3jpVbUgqVosoFxw%40mail.gmail.com?utm_medium=3Demail&ut=
m_source=3Dfooter>
>> .
>>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWsa4NRKAWn7SAh7vKCJmAE2NsyTyy9dHZ0Bq-Jg04Obw%40m=
ail.gmail.com.

--000000000000ed55b105ba759be0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 3, 2021 at 10:48 PM Nick =
Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@goo=
gle.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Feb 3, 2021 at 1:36 PM Sed=
at Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=3D"_blank">sed=
at.dilek@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"l=
tr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley &lt;<a href=3D"mailto:=
rasibley@redhat.com" target=3D"_blank">rasibley@redhat.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 2/3/21 1:03 PM, Nathan Chancellor wrote:<br>
&gt; On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; We ran automated tests on a recent commit from this kernel tree:<b=
r>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kernel repo: <a href=3D"https://g=
it.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git" rel=3D"noreferre=
r" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/torval=
ds/linux.git</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Commit: 3aaf0a27ff=
c2 - Merge tag &#39;clang-format-for-linux-v5.11-rc7&#39; of git://<a href=
=3D"http://github.com/ojeda/linux" rel=3D"noreferrer" target=3D"_blank">git=
hub.com/ojeda/linux</a><br>
&gt;&gt;<br>
&gt;&gt; The results of these automated tests are provided below.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Overall result: FAILED (see details below)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Merge: OK<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Compile: OK<br>
&gt;&gt;=C2=A0 =C2=A0Selftests compile: FAILED<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Tests: PANIC=
KED<br>
&gt;&gt;<br>
&gt;&gt; All kernel binaries, config files, and logs are available for down=
load here:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 <a href=3D"https://arr-cki-prod-datawarehouse-public.=
s3.amazonaws.com/index.html?prefix=3Ddatawarehouse-public/2021/02/02/622905=
" rel=3D"noreferrer" target=3D"_blank">https://arr-cki-prod-datawarehouse-p=
ublic.s3.amazonaws.com/index.html?prefix=3Ddatawarehouse-public/2021/02/02/=
622905</a><br>
&gt;&gt;<br>
&gt;&gt; One or more kernel tests failed:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-testsuit=
e<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-testsuit=
e<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C LTP lite<br>
&gt; <br>
&gt; These should be the failures for this particular set of tests correct?=
<br>
&gt; <br>
&gt; <a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/=
datawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/=
LTP_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log" rel=3D"noreferrer"=
 target=3D"_blank">https://arr-cki-prod-datawarehouse-public.s3.amazonaws.c=
om/datawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tes=
ts/LTP_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log</a><br>
&gt; <br>
&gt; I am curious, is there any way to get a side by side comparison of the=
<br>
&gt; test results between GCC and clang? In other words, I would like to kn=
ow<br>
&gt; if a test is failing with both compilers versus just clang. This would=
<br>
&gt; help us understand if it is a compiler specific issue or something tha=
t<br>
&gt; broke the kernel.<br>
&gt; <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=92=A5 LTP<br>
&gt; <br>
&gt;&gt;From what I can tell:<br>
&gt; <br>
&gt; [12262.428593] general protection fault, probably for non-canonical ad=
dress 0x8bc08b308b608b5: 0000 [#1] SMP PTI<br>
&gt; [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6 =
#1<br>
&gt; [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007<br>
&gt; [12262.428810] RIP: 0010:string+0x50/0x110<br>
&gt; [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb 1=
5 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d 0c 0=
7 &lt;45&gt; 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 11=
<br>
&gt; [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246<br>
&gt; [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX: ffff0a=
00ffffff04<br>
&gt; [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI: ffff9e=
a25e9ea03e<br>
&gt; [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09: ffff9e=
a25e9ea03e<br>
&gt; [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12: ffff9e=
a25e9eb000<br>
&gt; [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15: ffffb1=
ea012bbca0<br>
&gt; [12262.428810] FS:=C2=A0 00007fab43075740(0000) GS:ffff9ea35bd00000(00=
00) knlGS:0000000000000000<br>
&gt; [12262.428810] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 0000000080050033<=
br>
&gt; [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4: 000000=
00000006e0<br>
&gt; [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2: 000000=
0000000000<br>
&gt; [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 000000=
0000000600<br>
&gt; [12262.428810] Call Trace:<br>
&gt; [12262.428810]=C2=A0 vsnprintf+0x570/0x710<br>
&gt; [12262.428810]=C2=A0 seq_printf+0x6b/0x90<br>
&gt; [12262.428810]=C2=A0 ? lock_acquire+0x27/0x280<br>
&gt; [12262.428810]=C2=A0 ? mod_objcg_state+0xd2/0x160<br>
&gt; [12262.428810]=C2=A0 ? vsnprintf+0x32f/0x710<br>
&gt; [12262.428810]=C2=A0 print_name+0x46/0xc0<br>
&gt; [12262.428810]=C2=A0 ? seq_printf+0x6b/0x90<br>
&gt; [12262.428810]=C2=A0 ? __kmalloc_node+0xaf/0x340<br>
&gt; [12262.428810]=C2=A0 ? lock_acquire+0x27/0x280<br>
&gt; [12262.428810]=C2=A0 ? kvmalloc_node+0x4b/0x90<br>
&gt; [12262.428810]=C2=A0 lc_show+0x82/0xe0<br>
&gt; [12262.428810]=C2=A0 seq_read_iter+0x311/0x420<br>
&gt; [12262.428810]=C2=A0 proc_reg_read_iter+0x3f/0x80<br>
&gt; [12262.428810]=C2=A0 vfs_read+0x2c3/0x340<br>
&gt; [12262.428810]=C2=A0 ksys_read+0x5f/0xb0<br>
&gt; [12262.428810]=C2=A0 do_syscall_64+0x33/0x40<br>
&gt; [12262.428810]=C2=A0 entry_SYSCALL_64_after_hwframe+0x44/0xa9<br>
&gt; [12262.428810] RIP: 0033:0x7fab4318791d<br>
&gt; [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 8=
3 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 0f 0=
5 &lt;48&gt; 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 15=
<br>
&gt; [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX: 0=
000000000000000<br>
&gt; [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX: 00007f=
ab4318791d<br>
&gt; [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI: 000000=
0000000005<br>
&gt; [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09: 00007f=
fcaeb27520<br>
&gt; [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12: 000000=
0000000000<br>
&gt; [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15: 000000=
0000000000<br>
&gt; [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd_=
seq snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash salsa=
20_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc mkiss ax25 =
ppp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc fscache lockd gra=
ce rds tun brd overlay exfat vfat fat xfs sctp tcp_diag udp_diag inet_diag =
rfkill sunrpc snd_hda_codec_generic ledtrig_audio snd_hda_intel snd_intel_d=
spcfg soundwire_intel soundwire_generic_allocation snd_soc_core snd_compres=
s snd_pcm_dmaengine soundwire_cadence snd_hda_codec snd_hda_core ac97_bus s=
nd_hwdep snd_pcm joydev snd_timer snd virtio_net soundcore net_failover pcs=
pkr virtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus d=
rm_kms_helper cec virtio_blk drm serio_raw ata_generic pata_acpi floppy btr=
fs raid6_pq xor [last unloaded: can]<br>
&gt; [12262.462039] ---[ end trace f683b95858968bee ]---<br>
&gt; <br>
&gt; I cannot reproduce this in QEMU with a Debian rootfs with the supplied=
<br>
&gt; configuration file though, proc01 -m 128 passes for me.<br>
<br>
Hi Nathan,<br>
<br>
We recently moved the mainline tree to use Fedora Rawhide as the base distr=
o, this helps out kdump and other tests which require<br>
updated user space for testing. As a result, there were a few tests that sh=
ouldn&#39;t have run like LTP Lite. So the log you linked<br>
above is not related to the panic:<br>
<a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataw=
arehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_l=
ite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log" rel=3D"noreferrer" targ=
et=3D"_blank">https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/da=
tawarehouse-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LT=
P_lite/9507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log</a><br>
<br>
This is the version of LTP we run for internal RHEL kernels and therefore i=
sn&#39;t supported against upstream kernels. I&#39;m working on a fix<br>
for this now and should be resolved soon, sorry about that.<br>
<br>
As far as the panic, it was was triggered on our upstream LTP test, I don&#=
39;t have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF=
<br>
bug which is causing our jobs to abort while updating the kernel for x86. Y=
ou will see the following in the logs:<br>
<br>
&#39;failed to validate module [something] BTF: -22 &#39;<br></blockquote><=
div><br></div><div>Guess this is with=C2=A0<span style=3D"font-family:monos=
pace;color:rgb(0,0,0)">CONFIG_DEBUG_INFO_</span><span style=3D"font-family:=
monospace;font-weight:bold;color:rgb(255,84,84)">BTF=3Dy and LLVM/Clang?</s=
pan></div><div><span style=3D"font-family:monospace;font-weight:bold;color:=
rgb(255,84,84)"><br></span></div><div><font color=3D"#ff5454" face=3D"monos=
pace"><b>Today, I played with above and diverse DWARF version settings.</b>=
</font></div><div><font color=3D"#ff5454" face=3D"monospace"><b>Even recent=
 pahole from Git in combination with up-to-date LLVM/Clang is incompatible =
with DWARF-v4 and DWARF-v5.</b></font></div><div><font color=3D"#ff5454" fa=
ce=3D"monospace"><b>Means all my builds were broken.</b></font></div><div><=
font color=3D"#ff5454" face=3D"monospace"><b><br></b></font></div><div>Mark=
 Wielaard says:<br></div><div>&quot;I would try to avoid using clang produc=
ing DWARF5. It clearly has some<br>incompatibilities with dwarves/pahole. I=
t should work if you don&#39;t set<br>DEBUG_INFO_DWARF5. Try GCC 11 (which =
defaults to -gdwarf-5) or an<br>earlier version (probably at least GCC 8 or=
 higher) using -gdwarf-5<br>explicitly.&quot;<br></div><div><br></div><div>=
If this is with=C2=A0CONFIG_DEBUG_INFO_BTF=3Dy you should make it unavailab=
le when CC_IS_CLANG=3Dy.</div></div></div></blockquote><div><br></div><div>=
I&#39;m attending BPF office hours tomorrow (morning, California time) to d=
iscuss this with the pahole maintainers.</div><div><a href=3D"https://lore.=
kernel.org/bpf/CAADnVQ+weKq=3D-=3DKB7j=3D0FfCE0bLanJ_ppn_p-ropdu8zMhWGqQ@ma=
il.gmail.com/" target=3D"_blank">https://lore.kernel.org/bpf/CAADnVQ+weKq=
=3D-=3DKB7j=3D0FfCE0bLanJ_ppn_p-ropdu8zMhWGqQ@mail.gmail.com/</a></div></di=
v></div></blockquote><div><br></div><div>Great.</div><div>Bonne chance.</di=
v><div><br></div><div>Just reported to linux-bpf ML.</div><div><br></div><d=
iv>- Sedat -</div><div><br></div><div>[1]=C2=A0=C2=A0<a href=3D"https://lor=
e.kernel.org/bpf/CAEf4BzZ-uU3vkMA1RPt1f2HbgaHoenTxeVadyxuLuFGwN9ntyw@mail.g=
mail.com/T/#m2a5f11c5bb6ce66b3c59a1be2005dd40724d1d8b">https://lore.kernel.=
org/bpf/CAEf4BzZ-uU3vkMA1RPt1f2HbgaHoenTxeVadyxuLuFGwN9ntyw@mail.gmail.com/=
T/#m2a5f11c5bb6ce66b3c59a1be2005dd40724d1d8b</a></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv><br></div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><div>=
- Sedat -</div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
Here is a regular mainline job for reference where you can it:<br>
<a href=3D"https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/dataw=
arehouse-public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/95075=
13_x86_64_1_console.log" rel=3D"noreferrer" target=3D"_blank">https://arr-c=
ki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/=
02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_64_1_console.log<=
/a><br>
<br>
As far as comparing tests for mainline run with gcc vs clang, we don&#39;t =
email an upstream ML for regular mainline, so nothing archived.<br>
However, the logs are still published externally and we can always link the=
m here for comparison.<br>
<br>
If you like, we could start forwarding you reports for both ? Otherwise, we=
 are working on publishing our results database we use internally,<br>
but this will take some time.<br>
<br>
Thanks,<br>
Rachel<br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; Nathan<br>
&gt; <br>
&gt;&gt; We hope that these logs can help you find the problem quickly. For=
 the full<br>
&gt;&gt; detail on our testing procedures, please scroll to the bottom of t=
his message.<br>
&gt;&gt;<br>
&gt;&gt; Please reply to this email if you have any questions about the tes=
ts that we<br>
&gt;&gt; ran or if you have any suggestions on how to make future tests mor=
e effective.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ,-.=C2=A0 =C2=A0,-.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0( C ) ( K )=C2=A0 Continuous<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 `-&#39;,-.`-&#39;=C2=A0 =C2=A0Ke=
rnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ( I )=C2=A0 =C2=A0 =C2=A0=
Integration<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`-&#39;<br>
&gt;&gt; __________________________________________________________________=
____________<br>
&gt;&gt;<br>
&gt;&gt; Compile testing<br>
&gt;&gt; ---------------<br>
&gt;&gt;<br>
&gt;&gt; We compiled the kernel for 3 architectures:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make LLVM=3D1 -j30 INSTAL=
L_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 ppc64le:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make CC=3Dclang -j30 INST=
ALL_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make options: make LLVM=3D1 -j30 INSTAL=
L_MOD_STRIP=3D1 targz-pkg<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; We built the following selftests:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 net: fail<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 bpf: fail<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 install and packaging: fail<br>
&gt;&gt;<br>
&gt;&gt; You can find the full log (build-selftests.log) in the artifact st=
orage above.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Hardware testing<br>
&gt;&gt; ----------------<br>
&gt;&gt; We booted each kernel and ran the following tests:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 aarch64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-t=
estsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 lvm thinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 storage: software RAID =
testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 stress: stress-ng<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage bl=
ktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage nv=
me - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage: s=
wraid mdadm raid_module test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C storage: i=
SCSI parameters<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 ACPI table test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 LTP lite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking: igmp conformance test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - transport<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: SCSI VPD<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: <a href=3D"https://dm.corp.google.com/common" target=3D"=
_blank">dm/common</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - kexec_boot<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 4:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 5:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 ppc64le:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump=
 - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - file-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP l=
ite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: <a href=3D"https://dm.corp.google.com/common" target=3D"=
_blank">dm/common</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 4:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 5:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot =
test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 selin=
ux-policy: serge-testsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm t=
hinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: software RAID testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 xfstests - xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage blktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvme - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage: swraid mdadm raid_module test<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 x86_64:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 1:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1 Internal infrastructure=
 issues prevented one or more tests (marked<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with =E2=9A=A1=E2=9A=A1=E2=9A=A1)=
 from running on this architecture.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This is not the fault of the kern=
el that was tested.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C selinux-policy: serge-t=
estsuite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 lvm thinp sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 storage: software RAID =
testing<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 stress: stress-ng<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 ext4<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 xfstests -=
 xfs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage bl=
ktests<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - rdma<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C Storage nv=
me - tcp<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Storage nvdimm ndctl test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 Storage: s=
wraid mdadm raid_module test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9D=8C storage: i=
SCSI parameters<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 2:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 kdump - sysrq-c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9C=85 kdump - fi=
le-load<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 Host 3:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 Boot test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9C=85 ACPI table test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9D=8C LTP lite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=92=A5 LTP<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopd=
ev Sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Memor=
y function: memfd_create<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU =
(Abstract Machine Test Utility)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking bridge: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking MACsec: sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking socket: fuzz<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking sctp-auth: sockopts test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking: igmp conformance test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route: pmtu<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - local<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking route_func - forward<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking TCP: keepalive test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking UDP: socket<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: geneve basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: gre basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP =
basic test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking tunnel: vxlan basic<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - transport<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Netwo=
rking ipsec: basic netns - tunnel<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkc=
api AF_ALG test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: sanity smoke test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 pciut=
ils: update pci ids test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
PCM loopback test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA =
Control (mixer) Userspace Element test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Usex =
- version 1.9-29<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 stora=
ge: SCSI VPD<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=9A=A1=E2=9A=A1=E2=9A=A1 Sysca=
lls: nrdiff<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 CIFS Connectathon<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 POSIX pjd-fstest suites<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Trinity Fuzzer - Tier1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Memory function: kaslr<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 LTP: openposix test suite<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Ethernet drivers sanity<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking: ipv6/Fujitsu-socketapi-test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Networking firewall: basic netfilter test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 audit: audit testsuite test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 storage: <a href=3D"https://dm.corp.google.com/common" target=3D"=
_blank">dm/common</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 trace: ftrace/tracer<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Libhugetlbfs - version 2.2.1<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 Tracepoints: operational test<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=
=E2=9A=A1 kdump - kexec_boot<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 Test sources: <a href=3D"https://gitlab.com/cki-proje=
ct/kernel-tests" rel=3D"noreferrer" target=3D"_blank">https://gitlab.com/ck=
i-project/kernel-tests</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =F0=9F=92=9A Pull requests are welcome for new=
 tests or improvements to existing tests!<br>
&gt;&gt;<br>
&gt;&gt; Aborted tests<br>
&gt;&gt; -------------<br>
&gt;&gt; Tests that didn&#39;t complete running successfully are marked wit=
h =E2=9A=A1=E2=9A=A1=E2=9A=A1.<br>
&gt;&gt; If this was caused by an infrastructure issue, we try to mark that=
<br>
&gt;&gt; explicitly in the report.<br>
&gt;&gt;<br>
&gt;&gt; Waived tests<br>
&gt;&gt; ------------<br>
&gt;&gt; If the test run included waived tests, they are marked with =F0=9F=
=9A=A7. Such tests are<br>
&gt;&gt; executed but their results are not taken into account. Tests are w=
aived when<br>
&gt;&gt; their results are not reliable enough, e.g. when they&#39;re just =
introduced or are<br>
&gt;&gt; being fixed.<br>
&gt;&gt;<br>
&gt;&gt; Testing timeout<br>
&gt;&gt; ---------------<br>
&gt;&gt; We aim to provide a report within reasonable timeframe. Tests that=
 haven&#39;t<br>
&gt;&gt; finished running yet are marked with =E2=8F=B1.<br>
&gt;&gt;<br>
&gt;&gt; -- <br>
&gt;&gt; You received this message because you are subscribed to the Google=
 Groups &quot;Clang Built Linux&quot; group.<br>
&gt;&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegr=
oups.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com<=
/a>.<br>
&gt;&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/clang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.co=
m" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/c=
lang-built-linux/cki.C90653A6EF.V9S14CF2MY%40redhat.com</a>.<br>
&gt; <br>
&gt; <br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/5877bb33-ba17-6459-410c-1c51bd193481%40redhat.=
com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid=
/clang-built-linux/5877bb33-ba17-6459-410c-1c51bd193481%40redhat.com</a>.<b=
r>
</blockquote></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com" t=
arget=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUWTia0CS5nrdGx7oE%2BZj_J3oC4id6U3jpVbU=
gqVosoFxw%40mail.gmail.com?utm_medium=3Demail&amp;utm_source=3Dfooter" targ=
et=3D"_blank">https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZU=
WTia0CS5nrdGx7oE%2BZj_J3oC4id6U3jpVbUgqVosoFxw%40mail.gmail.com</a>.<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Thanks,<div>~Nick Desaulniers</div></div></div></div>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUWsa4NRKAWn7SAh7vKCJmAE2NsyTyy9dHZ0Bq-=
Jg04Obw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2BicZUWsa4NRKAWn7SAh7vKCJmAE2N=
syTyy9dHZ0Bq-Jg04Obw%40mail.gmail.com</a>.<br />

--000000000000ed55b105ba759be0--
