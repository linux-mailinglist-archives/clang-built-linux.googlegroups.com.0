Return-Path: <clang-built-linux+bncBDY57XFCRMIBBBEPQGAQMGQEJR54ZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3AF312758
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 21:03:18 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id e23sf9156831pfl.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 12:03:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612728197; cv=pass;
        d=google.com; s=arc-20160816;
        b=llEGBtu/KMDhNT65ZgNpmZSfIVB2XjVbz6mw0A0R46xlRLgLSGnB4bdR54G37X6O+M
         y2FwJdSgl4Ym1WoO/k6g4eFKuo06/Ql80sQVv+6vb+106M2gsASV9QTgMUPNREwG5S+s
         sg5DfHaaCYXyj+5+ZW4Aa+ZEBFwJ8ZkgW3K/GIbhJNX4vAJjMvvLx+Na4Oxf/dj6Nm5g
         gEVuMUHQdmnE9DYGXwbbeHSDKqp4C+PGB3Ndus3RLh9d6/MpAUcmye4DiVIyKmm1lTkU
         xqCTV3sAVIJW2WbMWG4SHVdp2YuoaOOguJb1qBPblWMgDPe7Mx7heQ9PH9TFzxd9pkBP
         UI8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=pZhsfQKLv/0J9njD9wDLNuNSPgOCueY25yoEOS7utBg=;
        b=iIFhBOtk+lFstwpMO+QeF3zW1FjKi9QI6rWreH1sfbvG9NsB/9nr+R99lpb+C2UJmd
         5FLIOC7TytP+Q3AEzMzZuYcR5+eJVVVEWmemUaqC2LSvx1dsebMD6av5kh+zX//kBtgK
         L3ziyxWsaOTVG6EjLpNo/8E4jlvxr1slKGocLqgtHaLC0trcwylU6so4HPx4T0cVD8qj
         gXPksbDZihYn9IjW3K8IU2v2D8HnHeqzSnNlXexOSdmUDzI5eGtaAaMCpOBHgVCEolrm
         DGs86Kykobuu1PlxHBbvaU9PN1QX2iqKJlrcQN+6ayI4UjEqLnIYro5bMCuYbz+b4EuU
         ENpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ADBMEOWV;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pZhsfQKLv/0J9njD9wDLNuNSPgOCueY25yoEOS7utBg=;
        b=p/JADuhQN02++b876ve2OFnQ/um5fJ7P73X9SOjhwO30Oqu3W/3pOkEVW/hod21e6D
         F6GIWv7ssjvCo0xA9VNQ1W2xpwKX9MmJ+Mpgj6xWiMPF+ZRVWDFpnVK4c+idkv7IDXGF
         E3lsjgR/MhxnYy19yXOJRTm4DjtoNKfI+7Dx/p4IuIB+SNOonCbs3zaXVYUQ1DBIT3Qd
         t2EZHEWjnPwz/z+OPyLIMLsOjfz5AhoG6YpKFhtKMDFs3iU+FUUA6Ytj2U3dvMjcS3Jg
         6QRAEhTjeCbwpRSl8HZlpXkCAxAScivdRYp9MKscxjQIQNF++O2nSasD3kJQM8k0nywv
         rADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pZhsfQKLv/0J9njD9wDLNuNSPgOCueY25yoEOS7utBg=;
        b=IH6C0OeqC1MpzZ+NgvWbWbl5S4+VtIgE8HyruLT2iohrZO+/MrwtQd3gWpWYp4XrVW
         ODwznMViAcZf8httwRnHJFeH8SfhVBeqJv/mfhewNg45z2XnoRU9zWpR2tDtn46gd8aU
         N8Wm2ox6Dl3/Jnxjyb5xcz4uWnxPVZPWVeKF5PJAB+G3HPkPBXFBEneUYrup+gh4Kx37
         uCxNfEyTYcwRp2tfCq1Lh6zwd+kcjVkBA7p7icqru6YfBvCeHrTBLzc1cxrpbOsGNoAy
         AqacVu8VmKn1dTs5KXRjNJBA+COVA94kwjz+JitRGv7WDFmaDoYRPQBH0QH10rbixGOo
         QYFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332jmT2oBOLwPk0yPIiv1l/JcRuWTMc6cZT1swwyGOoPZHRUSC5
	st1YaH7XqOi8GRRDhGixqZM=
X-Google-Smtp-Source: ABdhPJxljd4cXZBppgkoWmXyzJ09p/Oiqu3cQWrbY+HtEe6MOnoQQfNleEGIpAV6vM+rvtaXLOdaJA==
X-Received: by 2002:a63:5f83:: with SMTP id t125mr13825029pgb.405.1612728196787;
        Sun, 07 Feb 2021 12:03:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d892:: with SMTP id b18ls6734002plz.8.gmail; Sun, 07
 Feb 2021 12:03:16 -0800 (PST)
X-Received: by 2002:a17:90b:4a89:: with SMTP id lp9mr13623655pjb.170.1612728196153;
        Sun, 07 Feb 2021 12:03:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612728196; cv=none;
        d=google.com; s=arc-20160816;
        b=UdCkvUmDDc2OS+UCANE4h1feLSUJXYINsKqioK9t7WhtYVS52J3N252ftx1YAuYiOi
         2Muux/QUGw0ext5czBEeN3ouir+uPVp5G4wPpXiTHOtebvbCOyLlpF6DePmsx6vQPP93
         PbeSATVJ+ziI/oROxyInXZM9jJ0OLJDMcN0xlK87Ecb130KX2esSibyGSfV7pK5Zxp2H
         FIzye9DJbw/ZyuX/xrYAdow1yb2K7phXNU7BPQUnvI5/I3nukBmYwWo+7/dgSLa8g9PP
         G/SIQyVPttD2xleYAyyYNyRBx+DRmTz5jnXC8dZuJHGJgT8U4WrdcbFKEnrRwnagpOy9
         mUrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=tqx91fBNKyNghzIj4i7Clbb1KTpUqVDeZTqO6cFhF5Y=;
        b=z/UYquT0D0tW3T/o/S+uk2crpdqOj+O9wf5tX+HvL8Q6N3yjUAObt+OOTr5bv13Y9M
         nHIk9hfWP3hyLKaXq9CMTtw+DG0ffpvFpOS5StN6Wb8KrpsJWI5O3cN5+7kYWejbF1o/
         gIixznFqGmcsdIn9aSOnCRbb+g36z5/Lgyev41BbGMKkrE1xzvbqvJx4l+0nEhdOKd5P
         G1Rr/cVuP/18MrVlKkCgDC++U2ImwlxZDjPY5GxxGhXIDYZ5LH2f3EiqpuMMfvCOQNO0
         Fcj+auiFxy/9XklEHnHhU0USAFSgb3gCAfS8jMazZZIBxGBKovK2Yt/Bc8II5Y+Hp1Em
         Uwmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ADBMEOWV;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w2si759660ply.1.2021.02.07.12.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 12:03:16 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-mmeaUPf9NPCeTHPOWVigKA-1; Sun, 07 Feb 2021 15:03:13 -0500
X-MC-Unique: mmeaUPf9NPCeTHPOWVigKA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 244CF107ACC7
	for <clang-built-linux@googlegroups.com>; Sun,  7 Feb 2021 20:03:12 +0000 (UTC)
Received: from [172.21.8.43] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 463DF1002388;
	Sun,  7 Feb 2021 20:03:05 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc6
 (mainline.kernel.org-clang)
Date: Sun, 07 Feb 2021 20:03:05 -0000
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Fei Liu <feliu@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, David Arcari <darcari@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yizhan@redhat.com>
Message-ID: <cki.801DBF9663.FCSQHFX7I6@redhat.com>
X-Gitlab-Pipeline-ID: 623276
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623276
X-DataWarehouse-Revision-IID: 9806
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ADBMEOWV;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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
            Commit: f7455e5d6897 - Merge tag 'riscv-for-linus-5.11-rc7' of =
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/06/623276

One or more kernel tests failed:

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

    Host 2:

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

  ppc64le:
    Host 1:
       =E2=9C=85 Boot test
       =E2=9C=85 LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9C=85 Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking route: pmtu
       =E2=9C=85 Networking route_func - local
       =E2=9C=85 Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9C=85 Networking tunnel: geneve basic test
       =E2=9C=85 Networking tunnel: gre basic
       =E2=9C=85 L2TP basic test
       =E2=9C=85 Networking tunnel: vxlan basic
       =E2=9C=85 Networking ipsec: basic netns - tunnel
       =E2=9C=85 Libkcapi AF_ALG test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9C=85 ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer

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
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
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
clang-built-linux/cki.801DBF9663.FCSQHFX7I6%40redhat.com.
