Return-Path: <clang-built-linux+bncBDY57XFCRMIBBDH3RKAQMGQEP375JUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 49149315456
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:51:26 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h8sf9796581pls.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:51:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612889485; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+zIxqm24PClJO2Dp3SFzzhJuUdzAxid7t7vhJcvdGOVqGnjImLbr76Wk3lHhb+lJH
         aEo2Uoo/JA0OF4xo2Th3meQEyj27Nat7ICqd/f7Daj/Cecnsb9ZpKOD7+qknUsa/cZvu
         TjdqNb19ecTnBR75EeZfD0FFbJ+9YRTL2z1vIB3L+ao/RKGV0DUQqMZEk6KRr3fd1heZ
         LCL5vDAm462tqxd685G2lzv6Wtlaxhtv56t4IxWNDjALMTeUA5gNn1RAMI6ba0E7Cqos
         esLTSk7lC3mab0fHlzqfU0/ibgZpnFLw+wLTz790bQyfC5gTgBRVq5TZv1sO4wJWEmdc
         HqDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=U8LVmsciDqWPvFKzFGwzysDM8oJAaQEd9DAyB0X4PnA=;
        b=haUb5i+OZjkHBnGSY9vQEbIaF2MgmFzl3j5hKy06Y38/xDw5bLKkC9veFaWqRcyRCU
         15V4gFjeXdk47ruyIXmaRQgUA9VfYPmw7NFBDoQDPsD3y1OgXWzEuay4t8Z01fen7p4Y
         oMPPhHf5PYn/x2GVq+TjAmOFv+QtjbOka1Js9cjIS5gmif0Uy5fCuy45H5TosQxSnPLz
         2GQKmn4V4dx3qR0aFcwvsSt/44CBiiPguZ12qyl4A3yB7ZVJZmGyw/uUIJCT5dnBtYo8
         A89i0PXjnyU1KWI6tS5Dn1/AINg/WEn5Mx4reKowANc6kBG+4uwssbxxrX9N/R0HuJNB
         +RBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J+Dj8EmB;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U8LVmsciDqWPvFKzFGwzysDM8oJAaQEd9DAyB0X4PnA=;
        b=a9fRpzkiqwivUU+OCfcNYbG7RI35rBwd1cPCwxuGFqNuxi9skk0ih3E5/EgNmuV0wP
         4uxZm60Z6n8T+eJ47FxHhvzakGC+7mcTzuDjJDyHn8r9Jel8PJbYH5BMiY0rxr2feKPD
         zvuyI3m+a6oCOMYULccCl2N4+NMwUJ9+5wc2CyZwANsDSLGYcLf+5BytyUVH3ukhUepL
         fGyAGnRzpoH+7/tZQLcg1kZf7ioQPaoAPWJ0g4Dx3+eKZnSZtHleAAxZm+FFy8Salqia
         26O8YNgJvY17lobOjAIxar+LNbq8QWN8Ar65/hUrqJ5WSuWRfz6JVC5dPYKJVAgCTGv6
         k+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8LVmsciDqWPvFKzFGwzysDM8oJAaQEd9DAyB0X4PnA=;
        b=S3SrvQnvhmMfnXn8ycb9VaEJnuQcF+hngAM1L01ZN0xsHMyC5vDe41vupyqo2bYAw2
         8+YxCrBdSZNs5G40SRH8DQo03ouOVWxdU5tvP/bC+AXZiR1TJXzaJsUBXWr9RGns7QB8
         futcyVa/HrYB/hBPA3DMUNAjgdi1xmaYVEVb3MT+nO8vUbeO8E3L3l5vQaT3bIVoYeMe
         ULyuhcCVExulOYSIQphScFkWT/SGPO65gixH7wKXXBXIqodah0FSsEQqEPCyNyeP0HXx
         B2GzLMVPFXfGZ2j+e+YevD/6gG+VdIam6xYxsRUGEevPzo3BzpVEqDjtfzOAeVwVeqP0
         eGxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sFL1xZQgyJ4/q7HqVZCdg6hdSpx740Z5vMycr2r1toOCjiQWn
	rmMhIPWm1L40OkXEfQp4I7c=
X-Google-Smtp-Source: ABdhPJyfnJc2LYqbVdJ2A2x+K2554HdJfcaCcHjGlQ7fztfN9ct0BjdbOwJDq+5pLrv6so7rJDAM/Q==
X-Received: by 2002:a63:e210:: with SMTP id q16mr22346870pgh.249.1612889485054;
        Tue, 09 Feb 2021 08:51:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f84:: with SMTP id q4ls42870pjh.0.canary-gmail;
 Tue, 09 Feb 2021 08:51:24 -0800 (PST)
X-Received: by 2002:a17:90a:6383:: with SMTP id f3mr4755296pjj.14.1612889484339;
        Tue, 09 Feb 2021 08:51:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612889484; cv=none;
        d=google.com; s=arc-20160816;
        b=w6jcDcilCvNu4R4N7S8U0cvlgwXHBus04yG7FmWdlljInd0h8JgjftS4IMb+9mQ8TN
         Tc7LeXUr29aiY0heCtnVjNKZ/7pF8NgVfZcrt6JSFVDIfEtqvj2TOQ6ZwnRP2zRUigsG
         dk9Sbpf/vb6kBzOIoR8jXHc14jxglKapwjZRylWsyXJFM/lUMH3nfaqB+B/aFg572/Mp
         n5VcXuLue/DYirvddnjYGeRfnOELarFlLlh+RKj3hcMS5brsda0mPsdWbL4YaNCY+XyW
         MFnwepCadtGep36V7bko4NGEjf153RnZFk0G4KMU4fIsAHmbIqHXn51ymFMmVtXt6lSf
         Z59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=90X7LDW32VjxM4oagUxgbORHgqDPHWs0HcOv/i8/8TQ=;
        b=un73PSrg00oF0blScZxVylKGLh7kGUt8uGCTrHEvyenUIhunpXCvDpu37rmKem5Q09
         GQwI2FZLbcyedN+gAC4F9KSAqWmTKE01oNxEosarpMpVVFM+RWZibCwBWw27KwPwkhnR
         kDT2vlNFWaSr1xtGUTH9/adYo7JBKLRpUfVZT7oclwW3hWCHmdhTvTyMk9d4Bt98BDAb
         fxiXlRVi5vFV+AT8HkgaOC4MGauF+fyW8wwgWdgaazOALZMJSy1b00B9lesnMXKyXSp1
         Gzf6pohMM8nzjWD2uqL9NjbaGQR6rbDv9hulvwVPZC+2kkMCXo0vABAKqN+CwjLS1FYd
         mx8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J+Dj8EmB;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d2si1089205pfr.4.2021.02.09.08.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 08:51:24 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-125-p0WDt8jxM-G4_hWbDDX0xg-1; Tue, 09 Feb 2021 11:51:20 -0500
X-MC-Unique: p0WDt8jxM-G4_hWbDDX0xg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 106906D4E3
	for <clang-built-linux@googlegroups.com>; Tue,  9 Feb 2021 16:51:20 +0000 (UTC)
Received: from [172.22.5.135] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C691A10016F9;
	Tue,  9 Feb 2021 16:51:12 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc7
 (mainline.kernel.org-clang)
Date: Tue, 09 Feb 2021 16:51:11 -0000
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 David Arcari <darcari@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>
Message-ID: <cki.BE9C57E185.0UA07SQUL1@redhat.com>
X-Gitlab-Pipeline-ID: 623350
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623350
X-DataWarehouse-Revision-IID: 9850
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=J+Dj8EmB;
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
            Commit: e0756cfc7d7c - Merge tag 'trace-v5.11-rc7' of git://git=
.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/08/623350

One or more kernel tests failed:

    aarch64:
     =E2=9D=8C LTP

    x86_64:
     =E2=9D=8C LTP

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
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    ppc64le:
      make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    x86_64:
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg


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
       =E2=9C=85 Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9C=85 Networking route: pmtu
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
       =E2=9C=85 Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9C=85 Networking route: pmtu
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
       =F0=9F=9A=A7 =E2=9D=8C IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

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
clang-built-linux/cki.BE9C57E185.0UA07SQUL1%40redhat.com.
