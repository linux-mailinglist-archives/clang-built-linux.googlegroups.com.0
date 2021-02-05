Return-Path: <clang-built-linux+bncBDY57XFCRMIBBMO662AAMGQEMEUPVPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E51093112C8
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 21:48:50 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id e62sf8416993yba.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 12:48:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612558130; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvvbUMbT5v1wVweNaf0ls++0439JOsGhzvYeSkWX6pEDm4WNptlYz4sE3W0T5IRpYS
         Q+i3HonY23SZcqo4yh1K02d445pKhxDAbummb+pB7NjTPg21lZ9HBw+XncwDrMH0Vycz
         OLAJvDn54r7Zspl6+s0lL/xq4w9DC9OMU6d4lHBGtrwEEqP3GcCTMQxXT5L4QZZD3nnx
         HlsRg/AkaoD2rgMkc+CuA9v1dCpo7iI1/pwtr0DTzWmNKlcnXkRZ8u2bGQaBWWRWHx+i
         nNtYb11IPr6vpUac+IY2U6+kBYogRuy8fcwJAF8HYBUXHiQf4hJqpNAgYArvShiyC+WB
         +78g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=bDQf0az5u3MJqE1LYHJBdfUMESGwtdlLSQa0Ot0Yk0s=;
        b=z232gZcvz4qtoga/BEGzDkCmv2D+vgvemkXRWEsHV3mN/Sr7Bs6ouNtnOUsiJM/04s
         9ELJspCpcxdZPr/Qi7JP5eCcr7vMLQjssuvjXrf6/BpKGY7rmeT6REO+bY8rhOK0oa/A
         mlqWSSYnxW1EFgSk2MXjK/2zo5ZnK2NMiqnDgFkZHu9u6AkJKqjTbA9dX11ZOFfoCL50
         Lc9U7JaEmaUqdnGtM5Y5RV+ji1gCtREoPK/6d4nVlv0T4ktIOa/7qQ2W8w5R/a2+7Bj2
         0TfLZMur1Ejhk9KzHws7Y+ciIyFuDVJ+tuzjgPEyZK925TBi1XhT4g6zdJBF73IWxChp
         jDFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AulLMyhR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bDQf0az5u3MJqE1LYHJBdfUMESGwtdlLSQa0Ot0Yk0s=;
        b=FuceF4g3qS4inFiXuKMlP4eZsTOMApm1tv4ciGTznnPKPqarmpYmBxqZGdDkKggAJk
         wfgnJ/DfGEqkPmUTL1k0Kt0a4Qiz71rBZ+g9532r2oeU+uKFHF22jCOyLU43IYFDjMnb
         6HPLFUsIk02bJRDx1XLZD3vF+fLmjL6TY70V0lcJ/Zw068nE0erIssAo2zxBXwuauiS9
         M62xpEvLQc9RjkHHjue/Y7L0Zu/GBYX+xkmx3D3UGoz784KVuJ+RYX6jhspImfp+zkYs
         p29twJ+KlVW6jALSDSU2FNRHHMdZIASksILkDPFLFUlbxYdW4AO4qj9/OzUR0kHNCt9M
         Ungw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bDQf0az5u3MJqE1LYHJBdfUMESGwtdlLSQa0Ot0Yk0s=;
        b=LEP9UXAa4Zgz36K0Hw/9MJyncFKFM0auiqtkj9Xy+5j4MQZzwWwmWC2t9S94qm3bzx
         /pDuvBpZk5xU5t9cnF80uxSeUhogMzmg5RkryjvMQdtOtIr4vAC3DgDx79ntMM0TlTRO
         ECNSncOJomvaWN84WkMLknZ/aMA5CuD4NO65A5CGqXpLy5gwEbW9XNZpgnpA/64FWZUX
         LTzni/tTTd8mSaCAMbBjTTQSv/M+N6LDYpykiHz2BvAj+LE+yKOlvy01SM+7Go6ZLSnB
         9ev6KDv9GsPbGG8A/Izv+0SLJc1L4Vbts+VmS0BN+FvuMpFxp2wntgeH03zvF8N7KPw1
         +/DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iUl9qy9IFaSnzmpXIaIHkt9KWh6g0y6Iz20Znv82Vfva202Uo
	eGmhQG/ikSevMxX/6lMIASs=
X-Google-Smtp-Source: ABdhPJyQHKrGYSoDN/8gXS0qB7oyBZ5M3fPTYRFT1QwLk2JgpN+I8PfdK9k8XkOCu6CaIxDYl8uhMQ==
X-Received: by 2002:a25:f40e:: with SMTP id q14mr9110967ybd.230.1612558129997;
        Fri, 05 Feb 2021 12:48:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d612:: with SMTP id n18ls4862505ybg.9.gmail; Fri, 05 Feb
 2021 12:48:49 -0800 (PST)
X-Received: by 2002:a25:6ad6:: with SMTP id f205mr8422147ybc.41.1612558129655;
        Fri, 05 Feb 2021 12:48:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612558129; cv=none;
        d=google.com; s=arc-20160816;
        b=nvAT/UqdT2IehKxaRDIS+32FH9w4aLhD2imqrdj7dXOD/FesQ4FW4SCBu5ho/ZOR4t
         dpINRGvq4UuPeLrzoSZZKzb4KUF5R0qjYDaRXTC5dopuEiCJOKgmUdDUgT2W/G8+xJUT
         Y2KvCeBa3KpMTVJPsDYMN54WV9+ge/5nP9IeOTo5KAFi7dtbRvdXpTKQhc3/jaHwwgMA
         q2vr9bI6V+l8egYghDn0ReT4oa9jsKS7L2dP3M9Tz+IaF65k7g0P8hNKt8CdIeaFyFxH
         sQb3ezkjULNe/4ots1JzRaQbum/VQyrgX7oufRDXY5DoTnQ5zmROHTym6c1K5K+vKtyP
         xxzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=vXvtfaNMJpJQ2odYjgjh08xG/RCKQEEbFkDN88v7J+w=;
        b=uxiVw6N5VGME6w+m8VdQs5ERvaxUNlazDBVIzbTwOuY0TvZwueFbcrMA/ldxvV8dEH
         QY83NwmuB1YnWMO4GABOGxTYPp97k2kJPp8IyBIU0lYMRrx3DAwC+xsh3lZYuxMGeT2c
         NMt3oDQ4sEPwHMxh2/eJWoazKeMtPMLZmjy8jEUJiQnQWE97kZkHsUxv5mzoqUCFOsyu
         tsOYNLTbufqegsML9FNYCThlWOMTA3pEkdF3FaMXw23liDB4QUC6T/4tK5SepWpfq8QI
         abMbfTQQRuiQff0qIriWmuTHd8NRRcHNXxTIHx/eSb+6pNYnGXV9LdicmeuRAaNhnGNV
         lrAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AulLMyhR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id b16si634966ybq.0.2021.02.05.12.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 12:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-d4akeMjJOGadUfqVSk554w-1; Fri, 05 Feb 2021 15:48:47 -0500
X-MC-Unique: d4akeMjJOGadUfqVSk554w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4736A801965
	for <clang-built-linux@googlegroups.com>; Fri,  5 Feb 2021 20:48:46 +0000 (UTC)
Received: from [172.20.6.99] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8B1A25D71D;
	Fri,  5 Feb 2021 20:48:39 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?q?=F0=9F=92=A5?= PANICKED: Test report for kernel 5.11.0-rc6
 (mainline.kernel.org-clang)
Date: Fri, 05 Feb 2021 20:48:39 -0000
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Rachel Sibley <rasibley@redhat.com>, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, David Arcari <darcari@redhat.com>,
 Yi Zhang <yizhan@redhat.com>
Message-ID: <cki.DC2474EF23.YM0YCFTL5T@redhat.com>
X-Gitlab-Pipeline-ID: 623168
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623168
X-DataWarehouse-Revision-IID: 9746
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AulLMyhR;
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
            Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' of git://g=
it.kernel.org/pub/scm/linux/kernel/git/helgaas/pci

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: PANICKED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/05/623168

One or more kernel tests failed:

    aarch64:
     =E2=9D=8C LTP

    x86_64:
     =F0=9F=92=A5 LTP

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

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9D=8C IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

  ppc64le:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
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

    Host 2:
       =E2=9C=85 Boot test
       =E2=8F=B1  LTP
       =E2=8F=B1  Loopdev Sanity
       =E2=8F=B1  Memory: fork_mem
       =E2=8F=B1  Memory function: memfd_create
       =E2=8F=B1  AMTU (Abstract Machine Test Utility)
       =E2=8F=B1  Networking bridge: sanity
       =E2=8F=B1  Networking socket: fuzz
       =E2=8F=B1  Networking route: pmtu
       =E2=8F=B1  Networking route_func - local
       =E2=8F=B1  Networking route_func - forward
       =E2=8F=B1  Networking TCP: keepalive test
       =E2=8F=B1  Networking UDP: socket
       =E2=8F=B1  Networking tunnel: geneve basic test
       =E2=8F=B1  Networking tunnel: gre basic
       =E2=8F=B1  L2TP basic test
       =E2=8F=B1  Networking tunnel: vxlan basic
       =E2=8F=B1  Networking ipsec: basic netns - tunnel
       =E2=8F=B1  Libkcapi AF_ALG test
       =E2=8F=B1  pciutils: update pci ids test
       =E2=8F=B1  ALSA PCM loopback test
       =E2=8F=B1  ALSA Control (mixer) Userspace Element test
       =E2=8F=B1  CIFS Connectathon
       =E2=8F=B1  POSIX pjd-fstest suites
       =E2=8F=B1  jvm - jcstress tests
       =E2=8F=B1  Memory function: kaslr
       =E2=8F=B1  Ethernet drivers sanity
       =E2=8F=B1  Networking firewall: basic netfilter test
       =E2=8F=B1  audit: audit testsuite test
       =E2=8F=B1  trace: ftrace/tracer

  x86_64:
    Host 1:

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
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

    Host 2:
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =F0=9F=92=A5 LTP
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: sanity smoke test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element t=
est
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic =
netfilter test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot

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
clang-built-linux/cki.DC2474EF23.YM0YCFTL5T%40redhat.com.
