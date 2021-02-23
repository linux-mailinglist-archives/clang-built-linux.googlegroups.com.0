Return-Path: <clang-built-linux+bncBDY57XFCRMIBB34T2OAQMGQEALIMFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA63227B4
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 10:25:04 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id v2sf8419649ooj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 01:25:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614072303; cv=pass;
        d=google.com; s=arc-20160816;
        b=TJvYEuigq0BJl3lJOu430NS9aktBhypEIRpDDKy7j3+Y3Cv6khixEClWBLhmnUc9q3
         x3P3of8KQzM3u+u+nPmfDKvE1qZ/nbJft/Mf6WNV6txID/C9zeiPsnIvqtaCmur6K0Ci
         LGAcMg/HiGzUmuP+R+by4nHh7lpUqt4e2qgwqPrxP4ULZEgSSqoIRNUEWYBf7cW9eSki
         hgIohsGg+3yjJu9HoNrRUnfpqn8bN4snFNSa/Mh+vxelSfnUtiAMJweOKVwSqfA+f3sC
         Ws+Gru7FuOQPoh3bsx+sCUlbMbstSsJZzVANuPtGhpsfDDNAcMb6vsaiUyExBKT7ErOU
         moCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=FY72dY3Rl2uW3WRE7SUfzV0kE07z6tdkvpA/FFkN1Qc=;
        b=F53zomeGtZOzTEdorLDaduKGnKLKZrBaNN83aVBsKg6MVNiNqkfljBeStsd3uRH/6B
         6+ys5g1hbLJIAI4942AHmpBax6kzVSAEFtdq5IsP+gXf9VQ5U4dgJmiSqVY8evTiDK4b
         l2TeCdIGBT0JlpbGyRBrVqrniKb8jZstynXojleiMe0NLSbl97vK2E4KcVsjfIMAPAnz
         PvzHU/LtmGNbLLV2Wz42+oktBrEwKz8lqzbmM+/K/YOg0QEE5bTnMRL4s5D5L5jNw4Lj
         n7xlZz7lC8VEhfJXepHhs4Mskms7xEmQoYE66P5OmX983+DeSMGlt/Fsgt5ua3lsKJ+B
         /+Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LpQr0OoC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FY72dY3Rl2uW3WRE7SUfzV0kE07z6tdkvpA/FFkN1Qc=;
        b=GKJB+uo4Ohd9wkZ/JPoQ6pam3yV1QzeH0o9wAFSuUWPl+6liPRiG0TLAIJ5WYiAZx7
         /D+MfkXIw3yAORY6ExYtvEUHB9B5BBhVErJkF7wy3x/FXFNSj1j4bAEJGj+LGw47vAjq
         O9zMPvxF/cE/hWu47XTXe8gFg9MMzHpuEkkDDhEDkB3b9uUbqSD3FgNzrv8dITTNR6SP
         wptX/YLEX1FvADDCKIMDeGj/KmBZBcQw/k+19ySp7tW7AjHt4sRg24am1NQloYrHhil6
         iawzPsUfYdGJKielwfXl8Rl8Wpg0eXR4mxYIZvd75c6BBtSwWHav6vfl2CIWWhkC2DdN
         E4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FY72dY3Rl2uW3WRE7SUfzV0kE07z6tdkvpA/FFkN1Qc=;
        b=RlM2K71n63LLhkMmRDG1+wSSGjQeS74Sw1acvfZQ98iZXhelTqhQauCJJN8/c13wQ/
         1q6CEVHd1lGrFJCv9O4661ZqDIyRHvvSDsfJC4gsitshNlpjERIL0xzejZVOnmJK+5B6
         WI3V9MbeRGdSjxVY1Iw2eRs2W6u6Z1tMKurnEjAXj6AKb2Qw4Za7fWruLDHgLqtmOOwe
         4bmWdbgEqfZ+QPGVfle9ORfcZPh1BfG0DfdVPZSCJQ3LmxwglBYE2r7N6sr24LOGrXP1
         uMR9qwjjlMxA2K0CkAjHb8kQJV7QX2EKnlX0+vS+XTD68n0v4U57SqjxZOsOJf3hygfB
         jZKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nvps+J3zZGZ4hdgkKVHsN5napx1R3zQYwQtbH7R+gMa1Xpmm2
	v232VQf4hfJHBSzwGYDPR2Y=
X-Google-Smtp-Source: ABdhPJy1TiRNtd/O2HPc+ZU+Py6nVMUrdjNf7qWd5p7T5zg/aBVvzsLYGTorB20Rw6RQiPBySHl9mQ==
X-Received: by 2002:a05:6830:3151:: with SMTP id c17mr5907498ots.194.1614072303226;
        Tue, 23 Feb 2021 01:25:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1482:: with SMTP id e2ls74171oiw.4.gmail; Tue, 23
 Feb 2021 01:25:02 -0800 (PST)
X-Received: by 2002:aca:2417:: with SMTP id n23mr18955435oic.0.1614072302786;
        Tue, 23 Feb 2021 01:25:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614072302; cv=none;
        d=google.com; s=arc-20160816;
        b=HIBA5kI3P8Kzt59OH7Q2If0q8zZqD2t3hRjVDNEkIpAIrnMVegMz28akQYi6c0QDNl
         AfHAXP0t654q3jUMY0VQDbDMUvp+nY7WieDRBPpWsa6laLytoPifE59fHWLmXsDWrWEO
         4QaePLgnkpFmWhWevP7Ytov9zUGaHkT9mvtTPlpE3yXStt3wpzHvtosk6BhP2LQk5kO9
         Uu869kQp2SCmNbgEgaCXNghQuntcBBgRTpnWc6YP4FqDQ55mWPLEgDzia9gIzGn4Khwi
         kkFozT3HVjuvyG/LzzcWafA9raNmORpqYyA9PLN+Jh+1qJP7ldSuttXMxbek1D0et+EA
         PQmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=UGBeNdGgq2fwwWFyfKAy0rRdk2LW3rWTDAgBNkTMROQ=;
        b=fP4WPvjoLHjditiYlB1Nsz0nvfPLiHrUzOkrB4DgJWQcFhOGgGC967O2RKbdgkFbH8
         9u6jV6jBgUhO2d/7wwFjKC6/vLkVIH2um5AKA44fDMDqB1Sb7Sp6R9QpHsTMdQGuvtE/
         V58v8RjKx1lfezfPEmX637BByZpTIp4eKmOxh7e0UKVTpDvx6jfMwOOdzAGzA7bUFAmj
         VgAUOWL7w3IYEJITBMxs5jX8NqD4xaZQ5UNnoIF7QgpswoLu8H4Ygb2BhDvx2wXLvycA
         Kc2r+hncllvg/wY9+l+33+vrcqmvlVSe2Y5OZg9b1hvK0t5sKB6o2ioG4nPZlkVPdqlC
         1bEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LpQr0OoC;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s7si51693ois.0.2021.02.23.01.25.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 01:25:02 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-3GZpP33FPROsp6ESjR4IOQ-1; Tue, 23 Feb 2021 04:24:59 -0500
X-MC-Unique: 3GZpP33FPROsp6ESjR4IOQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 854D6EC1C6
	for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 09:23:34 +0000 (UTC)
Received: from [172.20.9.196] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9CE2060C04;
	Tue, 23 Feb 2021 09:23:32 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0
 (mainline.kernel.org-clang)
Date: Tue, 23 Feb 2021 09:23:31 -0000
CC: Fine Fan <ffan@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Erik Hamera <ehamera@redhat.com>, Yi Zhang <yizhan@redhat.com>,
 Jeff Bastian <jbastian@redhat.com>, Al Stone <ahs3@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Fei Liu <feliu@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 William Gomeringer <wgomerin@redhat.com>,
 Jaroslav Kysela <jkysela@redhat.com>, Guangwu Zhang <guazhang@redhat.com>,
 Jianhong Yin <jiyin@redhat.com>, Zorro Lang <zlang@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Christine Flood <chf@redhat.com>,
 Yi Chen <yiche@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Ondrej Moris <omoris@redhat.com>
Message-ID: <cki.9C5BEECA03.O3ZBJBZHGQ@redhat.com>
X-Gitlab-Pipeline-ID: 624529
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/624529
X-DataWarehouse-Revision-IID: 10296
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LpQr0OoC;
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
            Commit: 3b9cdafb5358 - Merge tag 'pinctrl-v5.12-1' of git://git=
.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/23/624529

One or more kernel tests failed:

    x86_64:
     =E2=9D=8C storage: software RAID testing
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
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c
       =F0=9F=9A=A7 =E2=9C=85 kdump - file-load

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
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9D=8C Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C stress: stress-ng

    Host 3:
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
       =F0=9F=9A=A7 =E2=9D=8C Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9D=8C Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9D=8C audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot

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
clang-built-linux/cki.9C5BEECA03.O3ZBJBZHGQ%40redhat.com.
