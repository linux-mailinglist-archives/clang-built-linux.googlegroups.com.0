Return-Path: <clang-built-linux+bncBDY57XFCRMIBB4NI3GAQMGQEE5TLPOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 15039323E18
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:28:19 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id i19sf1620643qtx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 05:28:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614173298; cv=pass;
        d=google.com; s=arc-20160816;
        b=rRDS/siEAAqndVlASz0p/8O9+7rsuk0fsEARp2dApfbXDVw3zogmsqwBxIohFQtBJY
         JTC6kUqzzwETdrVwwat5JNbype+MofuYoml7kXngmC7FBxgQuhbIa8cDCxN4/YETEB8n
         Udu2Dof6UZ+5urXgOJLFBqW7Gg8uRT6jugjLZtQCPq5xFJn8rv9vVe05QNYzdKnyQaGW
         36O/WrsIFbe5REl00MBTTypMzZFXGmxyWmBTltoiHvz2ZNWqbKBiv+E1wWUW63Q3x7zy
         bjbKfDclAIauQJTz1eNx09jKuvstvZwYh0LK2BhfNNN/OliwRXtRcjFdxveeXIGdqfcR
         jZQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=YDz+S+ojdHeACnLGYyMy0UFCbC25yQ6DrA0VCFSAF6o=;
        b=GBVrbh8n3CYIt3gBWHhUsNL0UwGVgydGkar4WHighJQ9wZTxBiiWsfNLuPNrkQzkNJ
         1b18BLnRBqN6U6Vo2xTTgS/mIzurdWzo3898BzMOIisrYr1eazicO77xKKXnuWoprY0b
         A8gZq/Nex2svYid/GopsCuOK8FcJNY+C8D0A4x8UPUHWY+g4+4QAnLLcDuBgRgJFSo7u
         d6+xjGjO2OOgJBdRUZV6pkMubwdNuXv1FgvDpvJvAa+xbgxSIkC93IU84PUsZUNpyRBE
         SBZZdXUOzkE58m1Fzla+fWYiXgueOxJfFs5ePrqN2ILlXOz6zVRnu+5WOCFpN8gR59lT
         hE0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Td248FOL;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YDz+S+ojdHeACnLGYyMy0UFCbC25yQ6DrA0VCFSAF6o=;
        b=UkRROBUT2bm1JvosYx4KNDKHZQvamblvZE6S29dv0cXeEJBXR51iQtkz9hvXUF7AFB
         alBYmUl3sRhcgHNAt+qEy/QMee0gQ5N+a06bfqtIdiFS4cyQ3A5Y3N4sN25NkPWsnE/l
         07az629L55HCBO6WYmXJSsAxiolsZ94s/7TKeGw0K9yuuCbdvwnH0r27lI7Z/cBOMlBo
         D+tMJOoi9qC1jGJush0Bf8sKWKldZ7U2TzLdLpxOXtSRs7TOZCcOD2OFLG3+iRWF7yHi
         3RCEylBNVqx6zk6TYFkp1LQU1iOa/X7gFGiihJQBHmmlrr7eVCZ9pU8wDwzrkxe1B1uF
         sh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDz+S+ojdHeACnLGYyMy0UFCbC25yQ6DrA0VCFSAF6o=;
        b=NBgjHpGnRJWFiOBbfoldfJvpPWxHC6CWdgOZWPi+mB++HCRLFb95ORlkfZGpMrEtO+
         Wc4i0ojTFxONZtAu9XcOZu8xyrrWh1H2ZihkmPRbYxHQ576ZyYqwEbB6clhw0JtXt25N
         9hfCkEn61UmhmS3a5bLkfx29gAAHUCwIlKhZIKIyzrXAQLgqO1oJUmjUzlEp1aRHNTHm
         RHN0ssTAnGzenBXmOa+77ojURbmk0mF9fkubrdI/lmydUzTZClRu6Xw930Uwom6rIOkh
         8WcDWXu+h4om3gCAc2Dehyih0+3DFQeOR85NhMFvu6z9Q5Qijz/mUHywcbWHaV247Hnj
         WeJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zjZ5Nq6ggG0jLLz1p5zM1T6/Fi+9p3TmGsG1GMCKgfP8CWZxy
	1m7LNeKkJvt+mYDs1iowf60=
X-Google-Smtp-Source: ABdhPJyA0o7qdiH/w5DSf0ekZEAW/fLDZwOvqC2wHhHqgxKrTBMJdmd1tC8zycT/WUQbqqRbOScohw==
X-Received: by 2002:ac8:6a09:: with SMTP id t9mr14297422qtr.334.1614173297826;
        Wed, 24 Feb 2021 05:28:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1674:: with SMTP id d20ls1212934qko.0.gmail; Wed,
 24 Feb 2021 05:28:17 -0800 (PST)
X-Received: by 2002:a05:620a:1193:: with SMTP id b19mr27244422qkk.143.1614173297359;
        Wed, 24 Feb 2021 05:28:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614173297; cv=none;
        d=google.com; s=arc-20160816;
        b=sCfvWWafnMvVrEjww5VoYR3Wg/eF0SrkrhBZd2vWkvB9R3SQr1ebV7mfDccoA7e0vi
         0FF+IHHs0ZxY+r/IvwvlUkiPEMoinkWCPWiZXEhwsdDavu+qQnLQY/EVDbSYLYi6yxOL
         vMtesGFb1ikgTA5+QkKKjA+JUTKQZP1SipdOuxxCyOSp1q+aJC2WYiUPHKGUmO08sIEI
         KSHZ11d1JkLKFAtoH7DSNY8Ux3ZYK04KjrZqS69UDFg28H6DWyB73Kxe9PwZveYQ8KDL
         rB7HIk5sPq6wpeRfq3a4INwOEkpGIKa3qEE/aeTtJfvyrxyI+M02/dnspm4kqlqMGS+H
         pMdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=MBUAbgbg86mf368s0fbifC3oa25xIk5uxJbc1JaT5pU=;
        b=KKXW3xwd92Q8WiKbh3Qni/TEGN8TuExnFGNsKKSCk/6CUAosFCRfguLq+Z+cgOxjJN
         CB1DT4vBenOQ6q7Ko8fYk7TYJyNSWJ+arOeE1mof4Gjpxso5IqDoYy2KkDGMQn0kRiFT
         J4wOhd5QmYW8mWSYHn6vkq2hXcjDzsNwRuTXUxu5qQV29Q8cZZXXoomuMNfZmt6+X+xo
         xlW1Frslbe3EWY8yLkUvxcsTREcwVO4uyif1Bfxp6E7b9cLWT8gQWsBkAYehe6LUrtro
         ttRpJFYeJUuRcOhb65ykWWf9mbV/8wvEHFmNzjP20pv/qB/7unTljTz65zqoofzJqiG7
         6ZTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Td248FOL;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z14si147655qtv.0.2021.02.24.05.28.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 05:28:17 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-bxIJOdNtOu2KUzkVcQxCAg-1; Wed, 24 Feb 2021 08:28:14 -0500
X-MC-Unique: bxIJOdNtOu2KUzkVcQxCAg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8A48108C2A2
	for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 13:28:13 +0000 (UTC)
Received: from [172.20.9.196] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5B7885C1CF;
	Wed, 24 Feb 2021 13:28:06 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0
 (mainline.kernel.org-clang)
Date: Wed, 24 Feb 2021 13:28:05 -0000
CC: Al Stone <ahs3@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Fei Liu <feliu@redhat.com>,
 Jianlin Shi <jishi@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 William Gomeringer <wgomerin@redhat.com>,
 Jaroslav Kysela <jkysela@redhat.com>, Guangwu Zhang <guazhang@redhat.com>,
 Jianhong Yin <jiyin@redhat.com>, Zorro Lang <zlang@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Christine Flood <chf@redhat.com>,
 Yi Chen <yiche@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Ondrej Moris <omoris@redhat.com>,
 Fine Fan <ffan@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Erik Hamera <ehamera@redhat.com>,
 Yi Zhang <yizhan@redhat.com>, Jeff Bastian <jbastian@redhat.com>
Message-ID: <cki.950CD96E0B.UN3DM3PF59@redhat.com>
X-Gitlab-Pipeline-ID: 624559
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/624559
X-DataWarehouse-Revision-IID: 10307
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Td248FOL;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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


Hello,

We ran automated tests on a recent commit from this kernel tree:

       Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git
            Commit: 414eece95b98 - Merge tag 'clang-lto-v5.12-rc1-part2' of=
 git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/23/624559

One or more kernel tests failed:

    x86_64:
     =E2=9D=8C ACPI table test
     =E2=9D=8C LTP
     =E2=9D=8C Memory function: memfd_create
     =E2=9D=8C AMTU (Abstract Machine Test Utility)
     =E2=9D=8C Networking bridge: sanity
     =E2=9D=8C Networking route: pmtu
     =E2=9D=8C Libkcapi AF_ALG test
     =E2=9D=8C pciutils: sanity smoke test
     =E2=9D=8C ALSA PCM loopback test
     =E2=9D=8C storage: SCSI VPD
     =E2=9D=8C storage: software RAID testing

We hope that these logs can help you find the problem quickly. For the full
detail on our testing procedures, please scroll to the bottom of this messa=
ge.

Please reply to this email if you have any questions about the tests that w=
e
ran or if you have any suggestions on how to make future tests more effecti=
ve.

        ,-.   ,-.
       ( C ) ( K )  Continuous
        `-',-.`-'   Kernel
          ( I )     Integration
           `-'
___________________________________________________________________________=
___

Compile testing
---------------

We compiled the kernel for 4 architectures:

    aarch64:
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    ppc64le:
      make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    s390x:
      make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    x86_64:
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg


We built the following selftests:

  x86_64:
      net: OK
      bpf: fail
      install and packaging: OK

You can find the full log (build-selftests.log) in the artifact storage abo=
ve.


Hardware testing
----------------
We booted each kernel and ran the following tests:

  aarch64:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ACPI table test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ACPI enabled test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transpor=
t
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element t=
est
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic =
netfilter test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

  ppc64le:

    =E2=9A=A1 Internal infrastructure issues prevented one or more tests (m=
arked
    with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
    This is not the fault of the kernel that was tested.

    Probable cause: Distro problem, check kpet-db and Beaker

  s390x:

    =E2=9A=A1 Internal infrastructure issues prevented one or more tests (m=
arked
    with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
    This is not the fault of the kernel that was tested.

    Probable cause: Distro problem, check kpet-db and Beaker

  x86_64:
    Host 1:
       =E2=9C=85 Boot test
       =E2=9D=8C ACPI table test
       =E2=9D=8C LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9D=8C Memory function: memfd_create
       =E2=9D=8C AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9D=8C Networking route: pmtu
       =E2=9C=85 Networking route_func - local
       =E2=9C=85 Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9C=85 Networking tunnel: geneve basic test
       =E2=9C=85 Networking tunnel: gre basic
       =E2=9C=85 L2TP basic test
       =E2=9C=85 Networking tunnel: vxlan basic
       =E2=9C=85 Networking ipsec: basic netns - transport
       =E2=9C=85 Networking ipsec: basic netns - tunnel
       =E2=9D=8C Libkcapi AF_ALG test
       =E2=9D=8C pciutils: sanity smoke test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9D=8C ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =E2=9D=8C storage: SCSI VPD
       =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C CIFS Connectathon
       =F0=9F=9A=A7 =E2=9D=8C POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9D=8C jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9D=8C Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9D=8C audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9C=85 Boot test
       =E2=9D=8C storage: software RAID testing
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9D=8C xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9D=8C IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9D=8C power-management: cpupower/sanity test
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9D=8C Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C stress: stress-ng

    Host 3:
       =E2=9C=85 Boot test
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c
       =F0=9F=9A=A7 =E2=9C=85 kdump - file-load

  Test sources: https://gitlab.com/cki-project/kernel-tests
    =F0=9F=92=9A Pull requests are welcome for new tests or improvements to=
 existing tests!

Aborted tests
-------------
Tests that didn't complete running successfully are marked with =E2=9A=A1=
=E2=9A=A1=E2=9A=A1.
If this was caused by an infrastructure issue, we try to mark that
explicitly in the report.

Waived tests
------------
If the test run included waived tests, they are marked with =F0=9F=9A=A7. S=
uch tests are
executed but their results are not taken into account. Tests are waived whe=
n
their results are not reliable enough, e.g. when they're just introduced or=
 are
being fixed.

Testing timeout
---------------
We aim to provide a report within reasonable timeframe. Tests that haven't
finished running yet are marked with =E2=8F=B1.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cki.950CD96E0B.UN3DM3PF59%40redhat.com.
