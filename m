Return-Path: <clang-built-linux+bncBDY57XFCRMIBBDMXY2AAMGQE2Q627EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D9306025
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 16:49:34 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 8sf1825517pgn.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 07:49:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611762573; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFn164QhXORfd+mJ6cDyBhbCADIhvGrkM8kVHmNGjlYqu0N0jACBwkxzqi4UMLGm20
         BOYvuaZ8vAcQ7pzyrsQLdCJ6vR35MYvylNxCPIzlL239zE2f8ZQKIO2o7/ry52moS2RP
         YOHBPUac2nM4bDCLhZPxgIOFECTx9QCZ5NLvRaFBNkFs+8lSymKEg1ker18JMjxVHZKh
         fmFoHhXml/qsxihHpAnNpaYPAnXe7TtLarsgMFXLljKApxVgjo82cC7cK928euX/qXIR
         wgOi0RfsI4+hl2FiURAB+G22snlufOYFrw82towFwDkRflKAS2pLSCRBrmGFfO/KpfMn
         0EEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=zOWS4+OW7dmQhlLHje2/o49i4vrKAv7jBXEPloGLh48=;
        b=UMf5+RSHEv26yD57WWYNNkem+5RsL1TilfwVaQGsfRJKr/snvsDZLc/+GHLN+CAx2l
         WupfFl9p/tW5UO3/RGeaV1BdCKWjQW+gHyItgWU4V2fLneZYoEwJcRzPzREF+9V+yYjK
         NqxJPLSSguPSMfnSLxvqW4bYUS0670M7IUJSRUt2+maCQK6Ck9PcmV8i6UxV5vHw+umO
         07j/Kk41PE/K3lImcXfXgFw/ZsdpwvSndAhgVSXKU0iZNURFudYbemDwYs7QZHPotX+z
         +DkcYBoLHFXuufNcUjsn/dUD2//wVx687Fgy0fU/6rU2oy+3wHE5IhzJM8wCdVuabR40
         l6kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TfL8OIb+;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zOWS4+OW7dmQhlLHje2/o49i4vrKAv7jBXEPloGLh48=;
        b=QuLi7HTvz5WdpPf/RXYXw09K5o524olRA668JHpqMKQ+ycg1GulBQWGZObx7TspyTV
         iIjpp5i/EjJzng82z/tdg+QVU4ldouoeS2dbIoJoK9ljBDNKUIZoyOKWUTP1fVCbJNdi
         8sC+2lc8ihnxqZwU5+girlMHOA/Y27MzpJkhJ58gaa3uBzCmwwlk7Jtgx+9Oqk6t2Ovd
         qfOdQNCJTGcNjAGmhtG+6/tEdiVMEAtsX+8d01GcQ2458eKlBoNk6hmjoHqS6thcX4uu
         uzX+8jG/I7rNIrngV+ncV8fvMkKlOgjZd+8p9Hvgbtrb+JdrONLr6V2Pt/zHQbCvorUv
         oG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zOWS4+OW7dmQhlLHje2/o49i4vrKAv7jBXEPloGLh48=;
        b=XHf94KHbCldQ91HULVuvgxqw1tA76eejohcTYDyqYVlFfkd6Usy/zt63XA5reX527w
         GvDAUlk0kS3AmKDwLZFnQ7B4vN+FM0q/6ueK1qrBbalwUySnuRRAyv7esKJ/vaU9KlOB
         K809a+NKmJtJcaiYhMCeKTuntWzvH9wzvvagj39v3EZg0TRq5FxcsjG8xVtBgKFT36+F
         fCJcrPk5doeN/w3PYaI4B3OsYjHuOlhl5QW6w9bEJwRANHjJNX367rRfXfDkEtAJn1yA
         cqwYSs2L5cytQQAgKgqU2fWpmUxWJBLqWkpqg/V3gLBibLPFdfoO/gO3VjspJsyN5x5H
         u2Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531S54ivOgoNoBz8Ts2NYVBg9ZIaSwZJfJAb/rY/PN+JIL4tkEcX
	FFCDd4QMQOU/Onuc+c8AtEo=
X-Google-Smtp-Source: ABdhPJySTmw+4xOc05wNiAm4ycRTyWLROwu9rqNdMcomEZT8yzfOWO7zXiRcYO44BEiZMOcama9yOw==
X-Received: by 2002:a63:f011:: with SMTP id k17mr11579978pgh.227.1611762573362;
        Wed, 27 Jan 2021 07:49:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f87:: with SMTP id g7ls1235987plq.5.gmail; Wed, 27
 Jan 2021 07:49:32 -0800 (PST)
X-Received: by 2002:a17:90a:9302:: with SMTP id p2mr6362803pjo.213.1611762572671;
        Wed, 27 Jan 2021 07:49:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611762572; cv=none;
        d=google.com; s=arc-20160816;
        b=InE1WhuCYV6KTCWpl0/sD2+7QTB7+kThtel8eem+IateBg3tVALP0RQn0zFmMRer73
         IBARmzFAOsdkEcsFSIdv+asMUPq1EpL6CHUptqg2sYRDvJiXQZphtW6cVC2AEd4AY64H
         P8OSYsgQuQNUPXs2rOy1BntHjSMOovNgwYiFE0F6rVXqiPd/PxkzqvH7DCA1uFuGgFvO
         FdAbV86qpLkWY9o0FNNh2O86BFJIWHkweuV0hQSAHwdTrI8obhgEEljfVhYY3ravtZSM
         VfbLSa0pBX2u3PkMv5gRQzIyOoIvb6CDykUA1nBIL2wJD/bADUbop6Ir3OQkHwsMJKgf
         Yu8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=H/x8ss2c01QWuXmBw1mYdcWRXL2wD6MhSAd4IVfkIuU=;
        b=lokwcnVdpRKLKBiBZSfnOCZRiyeH80fKPZq9sYtxF9hNUwttxwRJsYbx00K5Qvq0X5
         ATe0XS6U83gjfM3vpcXQXGSahxcJSZTnqRwXqMb/F9EG0lXxMHTrM55pTME1PAT5UsEa
         ce/tg3HXMVdODz8iCpWedrnP2Upi75HJO3+Tb8CNMf3ye57J7c/gSy0HE06+XnMM996h
         D8APB6Iy0jQtWbpAqvh0n08E2I1CFiGIHnKNeFe75PnY5xeoYUhDqOalkS8kn51aY3Od
         x93RiMFlS+dAttkyKnnugAWuCWStB5dfTVlakUP680fhS825hXwGs4wGQUH7VE0FAsRj
         C1VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TfL8OIb+;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n3si114940plx.5.2021.01.27.07.49.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 07:49:32 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-UNWpjycbNVyz7g5VKrfkvg-1; Wed, 27 Jan 2021 10:49:28 -0500
X-MC-Unique: UNWpjycbNVyz7g5VKrfkvg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 824BE107B45E
	for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 15:49:27 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5FC0E19715;
	Wed, 27 Jan 2021 15:49:17 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc5
 (mainline.kernel.org-clang)
Date: Wed, 27 Jan 2021 15:49:17 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Ying Xu <yinxu@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
 Baoquan He <bhe@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 David Arcari <darcari@redhat.com>
Message-ID: <cki.FC090D834F.JIQCE42HKJ@redhat.com>
X-Gitlab-Pipeline-ID: 622276
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622276
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TfL8OIb+;
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
            Commit: 4992eb41ab1b - Merge tag 'for-linus' of git://git.kerne=
l.org/pub/scm/virt/kvm/kvm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/01/26/622276

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C LTP
     =E2=9D=8C Networking: igmp conformance test
     =E2=9D=8C selinux-policy: serge-testsuite

    x86_64:
     =E2=9D=8C selinux-policy: serge-testsuite

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
       =E2=9D=8C Networking: igmp conformance test
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
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 stress: stress-ng
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9D=8C IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test

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

    Host 2:
       =E2=9C=85 Boot test
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test

  x86_64:
    Host 1:
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 LTP
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
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 stress: stress-ng
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test

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
clang-built-linux/cki.FC090D834F.JIQCE42HKJ%40redhat.com.
