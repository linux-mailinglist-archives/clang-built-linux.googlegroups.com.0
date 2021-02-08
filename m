Return-Path: <clang-built-linux+bncBDY57XFCRMIBBQWDQWAQMGQE3BG7NQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 066DF3138DC
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 17:07:32 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id l1sf3843714uan.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 08:07:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612800451; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/DsDRj5fKT6+oXRtSbrYD7cwbwvpEYTlwf3kp9+xeBBz8I/PuIXGhfH8F+nPcWgrp
         NioEOepKv3sVoq4TzTpMt1pN/+A4xTxhTsA3pUX7vfLxQhDj5kcokSRdGz0B75yw6k0D
         kCyzL8V3981SR31zKlvhjzkfM5txaut+q+64rGzViiIUZw6rT8hNRbNNgKzZjVnRMqIZ
         DyUfqaUzcXvPwF1QwpmHhqPpyfp+6r67LEdchOZ5Nmfn8k3270rxX1Ct61czOYd7Irl6
         vFZGl20OQjrS87mnGpXN1EsFXo2o9FbDjKwYE8vQ86ruoDmkZ3kuQ7pNkg7IkPdtnv5a
         wD6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=/dFS52ovR4zWt4ivdsHKvOEL6LCHchcm9Fv+f+O18nA=;
        b=n7nClp1gXeaXTKT6N2T1enXdINqSxSHw9DUyK52jLy9z/DJMSHmU3eGLhRjuYeNXQS
         zmVdM+8/XGZK7kKL+crcWrcik3leu2tWasup4ojTcKwv19LPMVqXto5tpGhppINtLoUO
         HoL/PtWt/0Jn8bXuKTcv1czk+Etd4q5ieAQuKHDlGcqS0LEaOJaQAqeyhSaV+5buNILJ
         3xZEs/LQVxdiOUlZl4GCzIAD9++R/GB9ORh1eWQ1IAeaiyF5mpmSCWLK5uPUyVG1QCf6
         Fhs0FDVatCU+bV77s4CwZM20umUGCd1stDxP5rSyTTN6K+CObhuaGzvVwik/ULcbkYp2
         MaBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cm3wmjE9;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/dFS52ovR4zWt4ivdsHKvOEL6LCHchcm9Fv+f+O18nA=;
        b=rxFydaonP2A2V6QMzDYBc7HYAFOLdTXufI3zctQTV3O47t0icj2VMoxI8KmEPm4OI4
         6vuyCHC5EX/5b351NbaexD4sDjn3sT4VivinI8NV+f8lc4XLiu9QtsJR0FCml1SpPl3i
         OFm7k/1IJ0iq90IS0fkd1twplDqvp6RmpAkUlD1GuZPeAqOIkrzQg4cveNw+GbUPgxwJ
         T3utckDjCGB+FnK7n0FaKNhXXZCuI0ZIJFUn6G3yYFjA/Ev7Xrlv5yUPuE/sXjHWCqQF
         YCUxklNqPQ6W0EVoqbKjeap/zXqCu3avbpJbhGKwTXhzDi16X9frpB/qU/V6lvDajxYl
         KV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/dFS52ovR4zWt4ivdsHKvOEL6LCHchcm9Fv+f+O18nA=;
        b=rO3BVXfFzT6Q/OonSuc8F4IWSga459zeNYHpsG0wXxQHuBQXKr691zlgIT0hdnuCL3
         nSV8kJsdOe1/1eRR41j5J5Z5DXB5dz9WKMbDd4bQ7yJ/6KPQ8K+7RG+W1mz0g6xi92Ch
         56zOX38hj8+1YOcMPUTB93nUS/ecCgBns0MoOnTnihSzDENDMy0YNKg8wTv6MCkaxhKh
         RTw2uXbM3uP0SA2z/6iSYn3xB4lJdeLVtyAaEX+rsb4d85gux6S4vufnLuyZoGb21buT
         AC9EdYx3a0pB4jfinyrdbRUxNBPBt/dk8V3DJcqfyoVdYj3LuQnREyYz87YWiG52TiBT
         3eaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fT8R/Vf5qZEedYtRu8Uw1UL6tbr/vhOvLbpAATKwmiRq2GCtg
	hbe6myB1mvGWlwAs8j4Stgc=
X-Google-Smtp-Source: ABdhPJxvf+m4/4x0htBfi94VNv5bWmwybYONW0liVSOAICUUWvT6pjQgQNsRvjEdTXwBg3fTCncy0Q==
X-Received: by 2002:a67:8941:: with SMTP id l62mr11364824vsd.49.1612800451066;
        Mon, 08 Feb 2021 08:07:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8886:: with SMTP id k128ls2093551vsd.4.gmail; Mon, 08
 Feb 2021 08:07:30 -0800 (PST)
X-Received: by 2002:a67:ea05:: with SMTP id g5mr10193813vso.47.1612800450568;
        Mon, 08 Feb 2021 08:07:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612800450; cv=none;
        d=google.com; s=arc-20160816;
        b=VWSXPeHXBp93bn4gti8OpZJmhNKqyOc32P2mCX8Bi7gQQNGo9eGdQZoFVuFogjHj3m
         SUo5vU5ZzErVCCbx5AXZ6rleL2fkcb67EJan5fCVrLA7ax7RByWOYzaJ5wwl80nfUDos
         1zJn/7gKAtQhuVYwS1v99q5cBRcZ4ESE5TLVqh1qKPGpOhOAx1kh8jsBJ73wnfy00M4C
         qJfHvlw6tvixCYboVmQObB1Y1THr99W1Ud7fcHDp1cFgFiFhACV0N82yTtkd1hISOUir
         JCERT2HaeDGlxHFOR0LHxYanWid9HLcxrfB1p9I+2MROMYbqGQqLnaT+t3AVpGlq9CFs
         iwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=paYUgsiQehJ9ulmXgbFHccjtB2HzG7FtQEsrBlDcFRk=;
        b=SZiPTeTxNDgvSAGz7M4aRMBHSKE9bATm2K3e+qBb/i7S+lVotA97OEx2NR6xo1eWux
         K0P4w9Zs13BA5o8GrLUzD658dvDHuCZ9ofY/RxOdtZIHP/bTOdHN4IIDTECQhbJsu/gh
         PyYIsUM17T4G1UhbvhIGHZ6Nr1DgkwLWkpjIEra4pB20owf43+mmBOPWgtMAT7njKn/H
         JS+6grAuKTLlnHvDosS7DdJbGjATjU6ErMoYWUXkYSCJc8/qIezH+/3anfvLr/o42VRt
         1FfrMAbuU9SyqWnYG6Lo8H0mycf7YefXUSWBQq7RQm/sN4n6/bVXzi8E8KMDGykk1VL9
         zl8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cm3wmjE9;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id p12si286597vkf.2.2021.02.08.08.07.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 08:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-00LgVtVQNteSrwequig3Eg-1; Mon, 08 Feb 2021 11:07:22 -0500
X-MC-Unique: 00LgVtVQNteSrwequig3Eg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF2F71934110
	for <clang-built-linux@googlegroups.com>; Mon,  8 Feb 2021 16:07:21 +0000 (UTC)
Received: from [172.21.8.43] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D6C215D9DC;
	Mon,  8 Feb 2021 16:07:14 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?q?=F0=9F=92=A5?= PANICKED: Test report for kernel 5.11.0-rc6
 (mainline.kernel.org-clang)
Date: Mon, 08 Feb 2021 16:07:14 -0000
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Fei Liu <feliu@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, David Arcari <darcari@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Changhui Zhong <czhong@redhat.com>
Message-ID: <cki.95E236A094.7RA4ZTN9IY@redhat.com>
X-Gitlab-Pipeline-ID: 623298
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623298
X-DataWarehouse-Revision-IID: 9820
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Cm3wmjE9;
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
            Commit: b75dba7f472c - Merge tag 'libnvdimm-fixes-5.11-rc7' of =
git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: PANICKED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/07/623298

One or more kernel tests failed:

    ppc64le:
     =F0=9F=92=A5 LTP

    aarch64:
     =E2=9D=8C LTP
     =E2=9D=8C Networking bridge: sanity
     =E2=9D=8C Networking route: pmtu
     =E2=9D=8C Networking route_func - local
     =E2=9D=8C Networking route_func - forward
     =E2=9D=8C Networking tunnel: geneve basic test
     =E2=9D=8C Networking tunnel: gre basic
     =E2=9D=8C L2TP basic test
     =E2=9D=8C Networking tunnel: vxlan basic
     =E2=9D=8C Networking ipsec: basic netns - transport
     =E2=9D=8C Networking ipsec: basic netns - tunnel

    x86_64:
     =E2=9D=8C LTP
     =E2=9D=8C Networking bridge: sanity
     =E2=9D=8C Networking route: pmtu
     =E2=9D=8C Networking route_func - local
     =E2=9D=8C Networking route_func - forward
     =E2=9D=8C Networking tunnel: geneve basic test
     =E2=9D=8C Networking tunnel: gre basic
     =E2=9D=8C L2TP basic test
     =E2=9D=8C Networking tunnel: vxlan basic
     =E2=9D=8C Networking ipsec: basic netns - transport
     =E2=9D=8C Networking ipsec: basic netns - tunnel

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

We compiled the kernel for 3 architectures:

    aarch64:
      make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg

    ppc64le:
      make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg

    x86_64:
      make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg


We built the following selftests:

  x86_64:
      net: fail
      bpf: fail
      install and packaging: fail

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

       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
       =E2=9D=8C LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9D=8C Networking route: pmtu
       =E2=9D=8C Networking route_func - local
       =E2=9D=8C Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9D=8C Networking tunnel: geneve basic test
       =E2=9D=8C Networking tunnel: gre basic
       =E2=9D=8C L2TP basic test
       =E2=9D=8C Networking tunnel: vxlan basic
       =E2=9D=8C Networking ipsec: basic netns - transport
       =E2=9D=8C Networking ipsec: basic netns - tunnel
       =E2=9C=85 Libkcapi AF_ALG test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9C=85 ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =E2=9C=85 storage: SCSI VPD
       =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot

    Host 2:
       =E2=8F=B1  Boot test
       =E2=8F=B1  storage: software RAID testing
       =E2=8F=B1  xfstests - ext4
       =E2=8F=B1  xfstests - xfs
       =E2=8F=B1  xfstests - btrfs
       =E2=8F=B1  IPMI driver test
       =E2=8F=B1  IPMItool loop stress test
       =E2=8F=B1  selinux-policy: serge-testsuite
       =E2=8F=B1  Storage blktests
       =E2=8F=B1  Storage block - filesystem fio test
       =E2=8F=B1  Storage block - queue scheduler test
       =E2=8F=B1  Storage nvme - tcp
       =E2=8F=B1  Storage: swraid mdadm raid_module test
       =E2=8F=B1  stress: stress-ng

  ppc64le:
    Host 1:
       =E2=9C=85 Boot test
       =F0=9F=92=A5 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element t=
est
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic =
netfilter test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer

  x86_64:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9D=8C LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9D=8C Networking route: pmtu
       =E2=9D=8C Networking route_func - local
       =E2=9D=8C Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9D=8C Networking tunnel: geneve basic test
       =E2=9D=8C Networking tunnel: gre basic
       =E2=9D=8C L2TP basic test
       =E2=9D=8C Networking tunnel: vxlan basic
       =E2=9D=8C Networking ipsec: basic netns - transport
       =E2=9D=8C Networking ipsec: basic netns - tunnel
       =E2=9C=85 Libkcapi AF_ALG test
       =E2=9C=85 pciutils: sanity smoke test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9C=85 ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =E2=9C=85 storage: SCSI VPD
       =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot

    Host 2:
       =E2=9C=85 Boot test
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c
       =F0=9F=9A=A7 =E2=9C=85 kdump - file-load

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9D=8C Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

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
clang-built-linux/cki.95E236A094.7RA4ZTN9IY%40redhat.com.
