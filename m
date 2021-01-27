Return-Path: <clang-built-linux+bncBDY57XFCRMIBBYE4YSAAMGQEYEBLGRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB203053A3
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 07:55:29 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id v2sf605635oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 22:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611730528; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmcP7hOs9RsfQ9eCrJFuP5adnF+7QUkSQph+Rt608iKOhTgO3loVuvmceTRlI4EHAv
         d35aUei9+WZwUziMor2Fr1jFTz0bVL41KyYXGZHpttP1NJTAW0aTcxDSuoajuEppmiy1
         9RwbT0LvDQN1jLTfOYVhuACsBsi+ZESwwOi0pwledXsyoXJOnCtFXQEYzQ4g/xa6vLT2
         rsdKB9kQzRSd0plI33ztwZr7Y3yT5OwOS3U7U6BoC05KB41idX6WCUxViH5T3nuzdY6L
         b2OKD82AM81P2v7RnhNqGbyrvz+c44U96CjQY4j05RzywXOLyQh8EWIBvj4WlrfVYUDX
         ni+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=QaEAzCpyNiOEWC+GI9xoOwMx48OxKrACqNTIk335FhE=;
        b=hr+Iv2sQjJE17syrfeJkZHVVyiSyWoXmZQE1TTEtcLqJa0+pPadPDF+WiDVI5wCQmX
         rf475lybN0o0nB9nHow1/1TCO546iz7kIpttIJYmWFRWWLl5YP/mFlBqzqB93Rzogiel
         hV7zXlK9ErkQMXU4qGzx8dmPR5wHw4+4Zxzv3Qhn+473lSlciBsbWulwygZn688OJtGq
         vpxDYduBoCVAlMv602Hw7/yNz1giHaTzcT0Jnwd9zxD3qpDQQh82LCOUdINQnutu2R6S
         592sypHIWQOPV8dspZGkP8du+FVSbsNztWigrE5WLJsC/SG3xnpWxRERa6UCeKoRhrB9
         DzKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MpgpUKLV;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QaEAzCpyNiOEWC+GI9xoOwMx48OxKrACqNTIk335FhE=;
        b=bWuUbVFw5WEKSARlg0Lx621AEzJBQ8uXDXDgEnAabU8Om5gyxGYmOdrW1n3siypUOs
         sMaU228RwY/4vaMEFqQYFZD0EallfjfSX+UQ3ltLpvTQRx/2tQZUoAsZJf8XaJ6GZKPF
         Cx44MAsbJSOopWuA98JWfqEAFTl969rBvUdcAot1TR14zweLO7rHuyQpbDyoG498FYTz
         dOh+ExQE7eNNrjZp1VvS1Fcs4hMfs3JHCXdkdeWUOjpZwcl4/Cf18KEcO68k7PtMnK6P
         OGwQvkgMM+Op3Ygm/LTXlITF7wk1gg1nmIfKPKYNlcaXeOfpmSL/VVUCsdRJR+oFmRkn
         Y7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QaEAzCpyNiOEWC+GI9xoOwMx48OxKrACqNTIk335FhE=;
        b=X2K2S7lS93Qxutq3WaDwnqMvJARQ8cH5mhg7GnYxQe6TaPgBHv0NK0L+NLCLG19nnI
         I56JMRZLkWrrUrZcVXSva2qvvx29H6eM7BxjDRs3RTB0zhcTj3cNwq+prwMGnCovt6Aq
         AWHd3G6q8jlLWh24Fp8CKCzF3zYD89fhH8UpPkPWB8GxOXFHeNmFNDvxTF0ElJIIrwC9
         XgnzGDtbQt8AJwxwvL//WfWnuVCoy5hSCFLhzYt+F2zEiONcGzN0ABPkqTDTrny2/QTz
         HWfoTfOOQaHEVWYwNUxUe2W+o98xkItcyHBP0rHb8RawUOzjxg2ugambB0Ll3rlCgmjI
         AvqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326BBG3F9B98C+zM12GiLuP6AgqorUPUjiyywxIJ0gi/bBj1Tm+
	hpcrisPAZOBJHBqosQ1mIqo=
X-Google-Smtp-Source: ABdhPJzqMKujwTTCbnH9RRtyA9ft+sS7x//KYC4iaWBThYycjSQBoZiBz5QflsscDMxX9rcyUjDhMw==
X-Received: by 2002:a05:6830:11d9:: with SMTP id v25mr6657311otq.136.1611730528109;
        Tue, 26 Jan 2021 22:55:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:335:: with SMTP id 50ls277532otv.9.gmail; Tue, 26 Jan
 2021 22:55:27 -0800 (PST)
X-Received: by 2002:a05:6830:1289:: with SMTP id z9mr6821430otp.130.1611730527684;
        Tue, 26 Jan 2021 22:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611730527; cv=none;
        d=google.com; s=arc-20160816;
        b=YlkDr3BkSLFcJOW89Q2ctBjTEN9lSsO0Qo8/Xx6BletwKvZN8RkRt2QJPEvpVHlFOH
         LMXndkCwsMGKm3ZUQHMqDw2NA1SVGVPGai2ktAWy2cidejblgk7J7YSLnN59h8K1QGdK
         pPCF8hgrWEQh8ytaZisZO0ADCl6f6YsJ48aM4itpK5hk0U977jpl4QJRFnCqkjE69sLK
         JsfM0wM56hBRkpUhi8xf09pX5EhqCr6ba518WPDFfZjTQG4t1gnQNsLyIP3/9e4kCXe9
         9RkvN+aTWCJsYAKnuvdxM0LM7KDy5y2NytS3gRqt1p8Qkx8XpsF1zIIi+m3faOh+1yuB
         hifA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=CVOdQfPCNwClgxEqsZQ+U04t3izgERXXwvl2E1Gnd6Y=;
        b=SammBgXwwRvf5ifpdlGaTyQMFPcVDNakTXa8wQYeuD3CvtSY2MZ8wIRuCxwMegwtMJ
         AkbcJsA4ygaMVbXZf1xVyHY+0TzcMth/A0X8+ozIJbQ4p11xch7W0+yU/HhyER5PL3C8
         5rkHqVeLNYQMC/ULL/kWdtMXMdq9LBOZ94T8isgX9/pGbpdFh0m0ejiSG1ZD9NfUcQVD
         kx2yMVH1pP2dXVe3HwyFwEvrNRPouFFjG0uyfht4UfPhCIaraa5b+B82a8TMdBsAfJxU
         sHu5EjrEaea4bVjsjosIA0AAeFiJIrDMwqUCoO9nryg/2LS1/H16DViNY5H873hewMOF
         T6tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MpgpUKLV;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id m7si73740otq.5.2021.01.26.22.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 22:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-sS7O-6ldNKWpF_EeZvZc7w-1; Wed, 27 Jan 2021 01:55:22 -0500
X-MC-Unique: sS7O-6ldNKWpF_EeZvZc7w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EB927802B42
	for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 06:55:21 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B15441F07D;
	Wed, 27 Jan 2021 06:55:14 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc5
 (mainline.kernel.org-clang)
Date: Wed, 27 Jan 2021 06:55:13 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Fei Liu <feliu@redhat.com>, Erico Nunes <ernunes@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Arcari <darcari@redhat.com>, Xiong Zhou <xzhou@redhat.com>
Message-ID: <cki.FB1E33F06A.AAQYSDV4Y8@redhat.com>
X-Gitlab-Pipeline-ID: 622272
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622272
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MpgpUKLV;
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
            Commit: c7230a48ed5e - Merge tag 'spi-fix-v5.11-rc5' of git://g=
it.kernel.org/pub/scm/linux/kernel/git/broonie/spi

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/01/26/622272

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C selinux-policy: serge-testsuite
     =E2=9D=8C Networking bridge: sanity

    x86_64:
     =E2=9D=8C selinux-policy: serge-testsuite
     =F0=9F=92=A5 xfstests - nfsv4.2

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
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test

    Host 2:
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
       =E2=9C=85 LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
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
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C kdump - kexec_boot

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
       =E2=9C=85 Boot test
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 stress: stress-ng
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =F0=9F=92=A5 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 power-management: cpupower/=
sanity test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
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
clang-built-linux/cki.FB1E33F06A.AAQYSDV4Y8%40redhat.com.
