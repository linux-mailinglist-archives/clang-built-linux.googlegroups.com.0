Return-Path: <clang-built-linux+bncBC4INQUBT4IRBYPU6CAAMGQEN2EUSHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 265D830FB0B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:18:10 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id w4sf4154448ybc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:18:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462689; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8KspSsnCC0GObS17HasvrDW1l1iq4phAcTF7VlT3kIKMojRuszUaIcbdFtgppSDIG
         lxDw0TFoZ8QrW/gGM8JaRAPgRmVp1nnRbHAKEQfPEBw0LECEdQXj0tW/5vLLO0g05jM7
         EiKyJ2jwfvbB2oOSmdNRV9z+9CJUtL9qjUlINxsH5O9CUfW6b8eQcjSbmthLNmfl/2ZO
         +LeVSRBO61+pUkuoQbh2k0L1apyWOkNaGR7TnqnBGF2qPAtgno1viZhx2hnM2k8jxfAh
         llVJqkBN2vBvWPtgIitEOtBxNLKgF1t9cffVPBv66bFdibqAwTUE0HBHSYM51c2EYAzv
         HSVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=84SqZiipGWDzqQ7Va+08m3yVVxcBwh36FtywwSwCato=;
        b=tqj5IRK3bYOT2OCfL2d5aIiXTe04Gs0CnwWqq5oohZSu2su2Z23bP3RcIoqvgfr6CO
         JZfktKDZOIYJPR4aFPUONdiNyJUvWUTGn7EqxyrDcKN4PTF1wLzr6vxqgnmkMNotqs6Z
         bzkq+Sx6y1JElwDFIj8+4URxcPMh2iXBAC82QUFLcxbffOnhCCk3G1/Gu3UKVKx1zQdZ
         PDeGx0BXWU7f/GlGlX+SUWIW6sutaHLKUat7v9MNHRY6I8LzrHerAxuQhi8rfsCPOf0N
         QbPll/1qibpmRrPiMjejFjZqKpBQciV91JlT9T288a8tfCPEugTN2TZdEM+17zZk+5Yf
         ntIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c79gBtdn;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=84SqZiipGWDzqQ7Va+08m3yVVxcBwh36FtywwSwCato=;
        b=kMzg1A2jpbHsqlGNAfSCv/N/Gc1gCt1DQUWQHASCVooTBKI/ecuzuRPB0nRD0mqBvY
         F1htbscKAzCyzZ2JnYOeniEb+LJF1ND7mzqGPuLmIbr5mQN7wd2/4ibzVWAsspKHjDxq
         9BeRID8BD3NpxVG5rKfI+dqvtnAMAP16Rlyq8Mp35r0QHtCQYNzGCocV4UAMF3Bqphg4
         +rhSdUxUj1g9nYUszOMmsMW9+HlCR3sG3dlI+mcQNVmMj+atnVt4jt31guZwTmLpSOil
         4ggr6zY1DyJFKIn2ualaVN9SoC37zhslNoyBHBbRsHIYlNxolHb2FEwK/zYX3xiwTYoW
         Ekcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=84SqZiipGWDzqQ7Va+08m3yVVxcBwh36FtywwSwCato=;
        b=bGbAOzAee+aPkKTmGfsrDvwqBYYn6KXVwTn1B1PwhYPzXty0Mpp5sTEv/PD+Vb65FT
         MOhZmW6mZDT8+LlWreOg5Z24mV1atomt+CTeONioJv79UIn8qv53CbJ4DejPflIIlSne
         xRN9vgT5ltEhdzGX4jpY6zd/MZb1Qh9sd6tFHo9yVl2m5xGMImdtj9lxUeskE3ojCwvF
         UeCMr11XXr50WeHRBDMjkuMFXxybUUWrwU4NUBoCRMK013CPQq6RRDZTQif9bSvOedG7
         s9XfsKrxln+z0PtZTzHbSkEb0bghnLimhmwmnqtUf1YHnSnxoNcZxTsJMPLai8q2ktw/
         6jGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301AAoeHC+pWgKMXP2CHeSUa5p8ZoNNwNGEdKqmV+PU6rxZHT23
	Umsw2OFc9eZYaQKKDKtm1Do=
X-Google-Smtp-Source: ABdhPJwTfY/yA+ffgFx5oFS5dqmhnDB89nd72vRSVTLy//HyBF/LByyu4fQzmvSouHEoaIL9F65AoQ==
X-Received: by 2002:a25:9d8e:: with SMTP id v14mr686443ybp.206.1612462689137;
        Thu, 04 Feb 2021 10:18:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d612:: with SMTP id n18ls3086241ybg.9.gmail; Thu, 04 Feb
 2021 10:18:08 -0800 (PST)
X-Received: by 2002:a25:c5c1:: with SMTP id v184mr712327ybe.56.1612462688751;
        Thu, 04 Feb 2021 10:18:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612462688; cv=none;
        d=google.com; s=arc-20160816;
        b=IS+tnSnps7tKAZuioqIREp9FpvtFJgB7xSV2e+w6Qv+isF9gkfZ4PyrPkXe6bkm8u/
         cf8MJBrR4vCnBq76isAW/KP8hZo/LywrHO36PHuq2cwSauYkn7CvSTU9O8Kezcx3L+Yj
         r7LLg4HTgHqjaYqD5Zh6CQXgmGkWGYP7o+f/jLOstQp1QMhWcWoNCgLb1ea5IcerqtXg
         tB9QBrjSXIasKWkpn/VsKJ3YWjCuda/gaLUz3Smkiji+yngV7Z0EKC17RwuV/pdO1iru
         Ee+iM2gSsg0HpHKEq9nogo7t2b88pBqjdRF+p4yDC10jJQlWIrWqx80meyEoRKKppKLw
         Rtww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=yu5JcHGovzRyNi9qKKWRsz9qiLLt3vkAmieIt/eLFOA=;
        b=DAtm5exKvY3HIHSDFt2M6eAjL4n2QxjOG1BGvNtaauRR20Wc7R2rMo9C+z29pXrHnj
         6Ydu6VJhaCnUDj+4vdLRBouOS1Qo0b3D7IY+qc6uk7fcF2uWKjMaudk1dmuLb0JP75BC
         79w/m+qNbsgfFIFQP8bovvcF0t/tOdM8NtzBKRg3wJKj0r2SEVlaAohAx5qX1CXaeL89
         +NYKt1ksQKvXYAIPDGwla8o5u3XXad+UrhcFzstGNT2anNq2yeeOkkTF7/3IwlfiSEb6
         Drz6lBhHsUnVl3imvW0y2EOECbrsmv+lLVm2rBNAmpNzYWHpou6bMGeMPCBf3rT5j2A9
         Dj0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=c79gBtdn;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i194si340392yba.2.2021.02.04.10.18.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:18:08 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-577-g6mDHgudNnOnU2N9YlHNOA-1; Thu, 04 Feb 2021 13:18:03 -0500
X-MC-Unique: g6mDHgudNnOnU2N9YlHNOA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5010C1934100;
	Thu,  4 Feb 2021 18:18:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4780C60C15;
	Thu,  4 Feb 2021 18:18:02 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2EAEB57DF9;
	Thu,  4 Feb 2021 18:18:02 +0000 (UTC)
Date: Thu, 4 Feb 2021 13:17:59 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Rachel Sibley <rasibley@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, 
	CKI Project <cki-project@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>, 
	sedat dilek <sedat.dilek@gmail.com>
Message-ID: <1999130187.26605962.1612462679634.JavaMail.zimbra@redhat.com>
In-Reply-To: <20210203221457.GB1738694@localhost>
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost> <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <20210203221457.GB1738694@localhost>
Subject: =?utf-8?Q?Re:_=F0=9F=92=A5_PANICKED:_Test_report_for=09kernel?=
 =?utf-8?Q?_5.11.0-rc6_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.115.199, 10.4.195.3]
Thread-Topic: ? PANICKED: Test report for kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Thread-Index: GG45TRXo2OhFMXdEMMKSx8Iga7t1QQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=c79gBtdn;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



----- Original Message -----
> From: "Nathan Chancellor" <nathan@kernel.org>
> To: "Rachel Sibley" <rasibley@redhat.com>
> Cc: "Milos Malik" <mmalik@redhat.com>, "Yi Zhang" <yi.zhang@redhat.com>, =
"Filip Suba" <fsuba@redhat.com>, "Memory
> Management" <mm-qe@redhat.com>, "Ondrej Mosnacek" <omosnace@redhat.com>, =
skt-results-master@redhat.com,
> clang-built-linux@googlegroups.com, "CKI Project" <cki-project@redhat.com=
>, "Jan Stancek" <jstancek@redhat.com>
> Sent: Wednesday, February 3, 2021 11:14:57 PM
> Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6 (ma=
inline.kernel.org-clang)
>=20
> Hi Rachel,
>=20
> On Wed, Feb 03, 2021 at 03:44:52PM -0500, Rachel Sibley wrote:
> >=20
> >=20
> > On 2/3/21 1:03 PM, Nathan Chancellor wrote:
> > > On Wed, Feb 03, 2021 at 01:58:32AM -0000, CKI Project wrote:
> > > >=20
> > > > Hello,
> > > >=20
> > > > We ran automated tests on a recent commit from this kernel tree:
> > > >=20
> > > >         Kernel repo:
> > > >         https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/li=
nux.git
> > > >              Commit: 3aaf0a27ffc2 - Merge tag
> > > >              'clang-format-for-linux-v5.11-rc7' of
> > > >              git://github.com/ojeda/linux
> > > >=20
> > > > The results of these automated tests are provided below.
> > > >=20
> > > >      Overall result: FAILED (see details below)
> > > >               Merge: OK
> > > >             Compile: OK
> > > >   Selftests compile: FAILED
> > > >               Tests: PANICKED
> > > >=20
> > > > All kernel binaries, config files, and logs are available for downl=
oad
> > > > here:
> > > >=20
> > > >    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index=
.html?prefix=3Ddatawarehouse-public/2021/02/02/622905
> > > >=20
> > > > One or more kernel tests failed:
> > > >=20
> > > >      aarch64:
> > > >       =E2=9D=8C selinux-policy: serge-testsuite
> > > >=20
> > > >      x86_64:
> > > >       =E2=9D=8C selinux-policy: serge-testsuite
> > > >       =E2=9D=8C LTP lite
> > >=20
> > > These should be the failures for this particular set of tests correct=
?
> > >=20
> > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawareho=
use-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/9=
507327_x86_64_1_RHELKT1LITE.FILTERED.fail.log
> > >=20
> > > I am curious, is there any way to get a side by side comparison of th=
e
> > > test results between GCC and clang? In other words, I would like to k=
now
> > > if a test is failing with both compilers versus just clang. This woul=
d
> > > help us understand if it is a compiler specific issue or something th=
at
> > > broke the kernel.
> > >=20
> > > >       =F0=9F=92=A5 LTP
> > >=20
> > > > From what I can tell:
> > >=20
> > > [12262.428593] general protection fault, probably for non-canonical
> > > address 0x8bc08b308b608b5: 0000 [#1] SMP PTI
> > > [12262.428810] CPU: 1 PID: 465515 Comm: proc01 Not tainted 5.11.0-rc6=
 #1
> > > [12262.428810] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2007
> > > [12262.428810] RIP: 0010:string+0x50/0x110
> > > [12262.428810] Code: ce 48 c1 fe 30 85 f6 0f 84 be 00 00 00 31 c0 eb =
15
> > > 66 0f 1f 84 00 00 00 00 00 48 83 c0 01 39 c6 0f 84 ac 00 00 00 4c 8d =
0c
> > > 07 <45> 0f b6 14 00 45 84 d2 0f 84 a2 00 00 00 49 39 d1 73 dd 45 88 1=
1
> > > [12262.428810] RSP: 0018:ffffb1ea012bbc40 EFLAGS: 00010246
> > > [12262.428810] RAX: 0000000000000000 RBX: ffff9ea25e9ea03e RCX:
> > > ffff0a00ffffff04
> > > [12262.428810] RDX: ffff9ea25e9eb000 RSI: ffffffffffffffff RDI:
> > > ffff9ea25e9ea03e
> > > [12262.428810] RBP: ffffffff8f5c95f1 R08: 08bc08b308b608b5 R09:
> > > ffff9ea25e9ea03e
> > > [12262.428810] R10: 0000001000000000 R11: ffffffff8e212401 R12:
> > > ffff9ea25e9eb000
> > > [12262.428810] R13: ffffffff8f5c95f3 R14: 0000000000000002 R15:
> > > ffffb1ea012bbca0
> > > [12262.428810] FS:  00007fab43075740(0000) GS:ffff9ea35bd00000(0000)
> > > knlGS:0000000000000000
> > > [12262.428810] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > [12262.428810] CR2: 00005584bb6dba68 CR3: 0000000111bbe000 CR4:
> > > 00000000000006e0
> > > [12262.428810] DR0: 0000000000000001 DR1: 0000000000000000 DR2:
> > > 0000000000000000
> > > [12262.428810] DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7:
> > > 0000000000000600
> > > [12262.428810] Call Trace:
> > > [12262.428810]  vsnprintf+0x570/0x710
> > > [12262.428810]  seq_printf+0x6b/0x90
> > > [12262.428810]  ? lock_acquire+0x27/0x280
> > > [12262.428810]  ? mod_objcg_state+0xd2/0x160
> > > [12262.428810]  ? vsnprintf+0x32f/0x710
> > > [12262.428810]  print_name+0x46/0xc0
> > > [12262.428810]  ? seq_printf+0x6b/0x90
> > > [12262.428810]  ? __kmalloc_node+0xaf/0x340
> > > [12262.428810]  ? lock_acquire+0x27/0x280
> > > [12262.428810]  ? kvmalloc_node+0x4b/0x90
> > > [12262.428810]  lc_show+0x82/0xe0
> > > [12262.428810]  seq_read_iter+0x311/0x420
> > > [12262.428810]  proc_reg_read_iter+0x3f/0x80
> > > [12262.428810]  vfs_read+0x2c3/0x340
> > > [12262.428810]  ksys_read+0x5f/0xb0
> > > [12262.428810]  do_syscall_64+0x33/0x40
> > > [12262.428810]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > > [12262.428810] RIP: 0033:0x7fab4318791d
> > > [12262.428810] Code: 0f 1f 44 00 00 48 8b 0d 51 45 0b 00 45 31 c0 64 =
83
> > > 39 0b 75 d2 eb c0 e8 b1 fb ff ff 90 f3 0f 1e fa 48 39 ca 77 2b 31 c0 =
0f
> > > 05 <48> 3d 00 f0 ff ff 77 0b c3 66 2e 0f 1f 84 00 00 00 00 00 48 8b 1=
5
> > > [12262.428810] RSP: 002b:00007ffcaeb265b8 EFLAGS: 00000246 ORIG_RAX:
> > > 0000000000000000
> > > [12262.428810] RAX: ffffffffffffffda RBX: 00007ffcaeb27730 RCX:
> > > 00007fab4318791d
> > > [12262.428810] RDX: 0000000000000400 RSI: 000000000044b820 RDI:
> > > 0000000000000005
> > > [12262.428810] RBP: 0000000000008000 R08: 0000000000000000 R09:
> > > 00007ffcaeb27520
> > > [12262.428810] R10: 0000000000000000 R11: 0000000000000246 R12:
> > > 0000000000000000
> > > [12262.428810] R13: 0000000000000005 R14: 0000000000000000 R15:
> > > 0000000000000000
> > > [12262.428810] Modules linked in: snd_seq_dummy minix snd_hrtimer snd=
_seq
> > > snd_seq_device authenc pcrypt crypto_user sha3_generic algif_hash
> > > salsa20_generic binfmt_misc n_gsm pps_ldisc slcan ppp_synctty n_hdlc
> > > mkiss ax25 ppp_async ppp_generic slip slhc nfsv3 nfs_acl nfs nfs_ssc
> > > fscache lockd grace rds tun brd overlay exfat vfat fat xfs sctp tcp_d=
iag
> > > udp_diag inet_diag rfkill sunrpc snd_hda_codec_generic ledtrig_audio
> > > snd_hda_intel snd_intel_dspcfg soundwire_intel
> > > soundwire_generic_allocation snd_soc_core snd_compress snd_pcm_dmaeng=
ine
> > > soundwire_cadence snd_hda_codec snd_hda_core ac97_bus snd_hwdep snd_p=
cm
> > > joydev snd_timer snd virtio_net soundcore net_failover pcspkr
> > > virtio_balloon failover i2c_piix4 fuse zram ip_tables x_tables cirrus
> > > drm_kms_helper cec virtio_blk drm serio_raw ata_generic pata_acpi flo=
ppy
> > > btrfs raid6_pq xor [last unloaded: can]
> > > [12262.462039] ---[ end trace f683b95858968bee ]---
> > >=20
> > > I cannot reproduce this in QEMU with a Debian rootfs with the supplie=
d
> > > configuration file though, proc01 -m 128 passes for me.
> >=20
> > Hi Nathan,
> >=20
> > We recently moved the mainline tree to use Fedora Rawhide as the base
> > distro, this helps out kdump and other tests which require
> > updated user space for testing. As a result, there were a few tests tha=
t
> > shouldn't have run like LTP Lite. So the log you linked
> > above is not related to the panic:
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622905/build_x86_64_redhat%3A1092370/tests/LTP_lite/950=
7327_x86_64_1_RHELKT1LITE.FILTERED.fail.log
> >=20
> > This is the version of LTP we run for internal RHEL kernels and therefo=
re
> > isn't supported against upstream kernels. I'm working on a fix
> > for this now and should be resolved soon, sorry about that.
>=20
> Thanks for clarifying :)
>=20
> > As far as the panic, it was was triggered on our upstream LTP test, I d=
on't
> > have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > bug which is causing our jobs to abort while updating the kernel for x8=
6.
> > You will see the following in the logs:
> >=20
> > 'failed to validate module [something] BTF: -22 '
> >=20
> > Here is a regular mainline job for reference where you can it:
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/02/622904/build_x86_64_redhat%3A1092352/tests/9507513_x86_=
64_1_console.log
> >=20

Hi,

not sure which email to reply so I'm going with this one...

Confirmed with BPF folks that the BTF boot issue from the gcc run is due
to the dwarves incompatibility that was already mentioned and tested a new
dwarves rawhide build which fixes it. According to them it should be
released in a few days.

> > As far as comparing tests for mainline run with gcc vs clang, we don't
> > email an upstream ML for regular mainline, so nothing archived.
> > However, the logs are still published externally and we can always link
> > them here for comparison.
> >=20
> > If you like, we could start forwarding you reports for both ? Otherwise=
, we
> > are working on publishing our results database we use internally,
> > but this will take some time.
> >=20
>=20
> If just adding a link to the GCC logs in the clang reports is not too
> much effort for you guys, that would be mighty helpful. I do not mind
> sifting through the logs to try and compare results manually (as I just
> need to compare the failing clang tests to the GCC run).
>=20
> If that is not possible for various reasons, please explicitly CC me on
> the GCC mainline reports (nathan@kernel.org) and I can just grab the
> link myself. Our list gets enough reports as it stands so we can keep
> the GCC ones off of this list.
>=20

The two test runs are separate, so the gcc run may not yet be finished
when the clang reports are ready, which makes providing links hard and
we'd have to implement some sort of half-reliable syncing mechanism.
So if you don't mind, we'd just go with the cc for now (once the dwarves
issue is resolved as the kernels just can't boot due to it).

We're hoping to have the public result database within a few months,
and potentially also fully publicly available runs (independent of the
database), both of which should make the comparison process easier.


Veronika

> Cheers,
> Nathan
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1999130187.26605962.1612462679634.JavaMail.zimbra%40redha=
t.com.
