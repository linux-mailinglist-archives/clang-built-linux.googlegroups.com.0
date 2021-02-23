Return-Path: <clang-built-linux+bncBDY57XFCRMIBBW5Y2OAQMGQEF2CLJFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B0C3228F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 11:43:41 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id l5sf10933528iol.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 02:43:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614077020; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+HkB8Uhn5+H6pWdE17eWChOXXsHuhjTky/+vL0p4rLTg1rwnfXgO9gPZSB/LL0Apx
         83HC0a7Vh51ztQdPIua2ZzAY6cp5qm7aqh/nKjmQY/3LRmJLzyR6ebZmI0D3USwwbiAk
         f60chea3X2yrkrcVLiC/T8VFjgzJkeE38im2ALUrkw5h6MQGivsyr06j0cbT8PCI2TPX
         NFh4Le6HbQm6djfz9lVf7HGQ0kcRNQ8l2pOCju8Wi4c3T6LX8rNADAQ0aiJu+Wh5xww8
         QhOvkkncSAvaTQG/kapTxshIyYhcIUW7NEabW3LxUS8fEnBRBsL6JaoizYiWH16OGKg9
         9HAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=6Go74k+heQweiUDiMlZMfqL+U6891QGqUxpA6P5l/hU=;
        b=uX2C7BNF2Vyn0jgIhGQu0rv8RRSp2QP2zt94D4isOpfUmqHr79uq5oWzciu3MCaE+q
         MLkbJ2aEMpBs/p5KWjglqX0i3KgfbQkzKdTeQyud4wzvi6eEM8jm+6QwNfzo3quq+iHn
         MUajY+LfsSFiWvZnX5K13sabvZv6B/knlTuvLeEpAMtNdFQAFMvu9kk7jdlzbXGjbLKE
         GHlnBLsZqD4dvyY1J2FtoWeH7ibLG7Ez+1sfZbvp2T+UH15P8+NS/4mI6aTjC3gh+d8E
         A80EF5S+tN6wMiwmMfsXkO3ker0N5IYTEjC8fnwlylRnArTxrFlgdYetDDQxbotQY5Fn
         gn7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WCLfUgC0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Go74k+heQweiUDiMlZMfqL+U6891QGqUxpA6P5l/hU=;
        b=SqTdLntA4hu91sQRP9yODt9PRXKra07l4zASSHGzkyLVf+51v9tqogUvtyJscmQBXw
         NcTx8OtnnEMrXiCu3Fu3nI10WmFXEHKf2np8vqDXOjgJyNQbz8s6t0N19dY3YYCZyasd
         U5E9CBo5/Cz5nRIxj3mXu6xuZh9bdxUwhk8Ourbv/oyRS1OljKK2mKWGuFjKGP20SHKj
         +f1KS+8O3TlhU8d+LSTe5NwzAIA484DKH76X4YZMcV17ComflEmfhT91784XqQ+hjd4R
         sKCARZNssRPRD2kAawqroCuAwkT3fU9HkSTgvrkG+UIZRxnd12C8ozcVoYT2ESBule8F
         h+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Go74k+heQweiUDiMlZMfqL+U6891QGqUxpA6P5l/hU=;
        b=fx00sv4unQy2DpdmWisq1+5xBNnSNgtEKk/ETThExXDMHisN4+AkbixGZtib4fEIWj
         nF8S0y+eGmKKqq5W7GGslwEhCnRdLPXzO041c7DtUyNNCkG0wlPPiijIzZ6+a+aierCK
         RYaQ38k017p6pdv6/zB8329f7p6nOCbkadWvllQAHCwh1sqfr2daluPDdF2Ox4pJb3Uq
         FQOg4UeEbxkzIK1GpxdiEMo2b/AYFLlKrKkFf+XSdSz1WApfroSEAUM7EC4bOIs+KDJU
         LkczZfw/M5Vjxqxjb2CLHqbRls3iN0DAj8dTxK+Aw1/Tja9GQ2ArRaUWjeYs7Y6j/XPc
         ioaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vXuXFQOurekUiZ0PEoW4TW4MG9H0oh+C3tVV4WELSc58VHgPI
	IIKk+G8n3OT4+Ba0qn0KmUg=
X-Google-Smtp-Source: ABdhPJwM7kS8GtOkirQq/u6ExukZN5wd5lLtnhDyd7m82AivF40Z5MQ5fgjHe9BDd83vZ65NQKBIaw==
X-Received: by 2002:a05:6602:2e93:: with SMTP id m19mr9040585iow.122.1614077019882;
        Tue, 23 Feb 2021 02:43:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:860b:: with SMTP id f11ls3508987iol.10.gmail; Tue, 23
 Feb 2021 02:43:39 -0800 (PST)
X-Received: by 2002:a6b:c915:: with SMTP id z21mr16366417iof.32.1614077019397;
        Tue, 23 Feb 2021 02:43:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614077019; cv=none;
        d=google.com; s=arc-20160816;
        b=tPRo/4jzwDd2tfqRI0zBLb1BBLtUoTyr7HmUo2vgsZi0u+R9eXn/fu/JR7xUUZWaPe
         nTX29R4qf/Z/XJoX0yyiODNX8BcnIhVTSmnYfnAPPUbcmuMm8CM3Ell5HoqHet7+EVlu
         mptPefKfXs+huj/YFdT2WI2cQQG6YLVe7vxDbXEawXsXuGqqKfsBr5X27CXeJGxoSk/b
         rczSfbA7PMKAWGi/bt7U4Zb0ttJpZ2Q4O2OtX7DLQ8cOoR6p7G/2wqMQpt+rniqWnmad
         c8JpmgF8HuZeNmdAdaDKrt9GNX74zraGQqq74m5wSom/PnMT6y9+RwiVD+XK1OX2oH96
         OuSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=MgQvmUd2Ny119BITMedUCldjxK15GQ+82yxhITRjDsM=;
        b=cchKG9bGJaupgOkDA0w1REgQMkOtXC7zot2RMT2yAw7IQxnzkZ9Kno6txj5/qVcwl4
         Ou1OjSOukQxi0ehjN7W0NBynVgARVj4P5iq87BsnTKMKsOl9T50fcErnE3fas1kNeJLE
         pTK5Z+8NSXwZ8oX46AWsGF3NMnpUZiaqgFUKZIX9y72aM82irh/FodGMnGKlnh7N3NZ6
         SKCblNKgDEuehllgzxazu9QgiccrnTzG/MGFeINzgqTFh/zQloG9Al6O4mU/1Cqk2qgu
         Xu+ds4VcLckNAePOD7JbwEaALCNVuS7yzW8xFDZBIgNay2kTP6qAialwtiZ+aGKo0EaP
         jahQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WCLfUgC0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y6si1063576ill.1.2021.02.23.02.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 02:43:39 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-77dB6MS9PXaCS3aUKepQKg-1; Tue, 23 Feb 2021 05:43:36 -0500
X-MC-Unique: 77dB6MS9PXaCS3aUKepQKg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 37D0AC29E
	for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 10:43:35 +0000 (UTC)
Received: from [172.20.9.196] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E8EE44D723;
	Tue, 23 Feb 2021 10:43:19 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0
 (mainline.kernel.org-clang)
Date: Tue, 23 Feb 2021 10:43:18 -0000
CC: Fine Fan <ffan@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Erik Hamera <ehamera@redhat.com>, Yi Zhang <yizhan@redhat.com>,
 Al Stone <ahs3@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Fei Liu <feliu@redhat.com>,
 Jianlin Shi <jishi@redhat.com>, William Gomeringer <wgomerin@redhat.com>,
 Jaroslav Kysela <jkysela@redhat.com>, Guangwu Zhang <guazhang@redhat.com>,
 Jianhong Yin <jiyin@redhat.com>, Zorro Lang <zlang@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Christine Flood <chf@redhat.com>,
 Yi Chen <yiche@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Ondrej Moris <omoris@redhat.com>
Message-ID: <cki.6BC979A3FF.FG5TJDOZRL@redhat.com>
X-Gitlab-Pipeline-ID: 624509
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/624509
X-DataWarehouse-Revision-IID: 10286
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WCLfUgC0;
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
            Commit: d652ea30ba32 - Merge tag 'iommu-updates-v5.12' of git:/=
/git.kernel.org/pub/scm/linux/kernel/git/joro/iommu

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/22/624509

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
       =F0=9F=9A=A7 =E2=9D=8C xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9D=8C IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9D=8C power-management: cpupower/sanity test
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 2:
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
clang-built-linux/cki.6BC979A3FF.FG5TJDOZRL%40redhat.com.
