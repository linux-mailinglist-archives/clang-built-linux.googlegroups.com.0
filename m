Return-Path: <clang-built-linux+bncBDY57XFCRMIBBNMQ36AAMGQE3FD2JBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D008F30A449
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 10:21:58 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id d1sf10139992qtp.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 01:21:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612171318; cv=pass;
        d=google.com; s=arc-20160816;
        b=wh5PJHyMUfyxEu2VGmKrkdA56Ds7nmq4BbifZFjWyg7Qb1lL0w8OHqh5/vLA04Rj03
         5jxem2GMQParLN7BjDECavDWMFUnfZeQVjbYmmb/HTqlbiHnyORinu3i/2UQIqrMNGDF
         Wc9EgFz/ILT9mYd60NY7Swh4gjk/9ntoNX7zk51it+IWE5iY7/X4Tnp0dPZDMgeZi+MP
         iyFTzcIJy9D6vqW47wkS4XOCUlsonvDmre37jnoT6Rofaq0m1bbvVrklPfnXDl+tOHzk
         iBVHXojZEQVKp6lUEG9ZTnd0y8E5fZTm5IUhTdZNHypwEzqRTae9raT2UMFDS4ob+8Xg
         43hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=PjAgpjsxmPdTD7KUcPEfhB7iNQ5UYkpxLAXvi8xMpuU=;
        b=yR4qwy+/0vFGArFhNfZKUjTtdaaGJoNZ06w7je0GwUeHKJrQuW+Yxh/rTOp8AkFmed
         MiEneZSTYr6zPd9EmeFR6FC7uO0niKDGSJJaf2FXi+9p7pCqW52FfLsMSkD3zMx5xJPx
         Xwv3FqghQJy32ug8NmIjj15G9zgdIynMpmXOBfp85I0wD/7lWBPHV7cEUDiNmou0NjBk
         TQbDy45V0MTXzel00+PJC/djLZOcAdxKQDNf5ZjGGbNQB3Vtqm+NYmdKBirmw7ei9b/z
         M0iOtW/C+w6XQJuzH5EmsGv7pTGTXNtSJuBjktTSMQmKEqQCO/kaYYgw4c/L4e/+yFqJ
         3UCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b2OeW2d4;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PjAgpjsxmPdTD7KUcPEfhB7iNQ5UYkpxLAXvi8xMpuU=;
        b=MjPl6hLWbvjoUjiWRWnV4ChqaS2F12IBxB+YAKYoPshdWG+JWmdDsh6SJgJSFpiYBu
         DkMx184JUCjoHQL8PJ7vLxxA9wihaR+hKe2mK3PI7SjXk9+fqzGTvZodW/8k/fvRJZcV
         BIIqNDAdSlznc4FltfuMJSOrl934pffsFRYFuXq+/nazJE1kuwcpemM5A4NtBxcEu6OO
         M5m1Xqw2FnC9Ypd6x963VFZILugGAWC2cfNnYX6mTriX0Bt85kb5zlzcZMSpuwNs073y
         cb94slFiTZ0LIEBQYjCURKdXmlFE9ynPNnKu4I8HggYLNwI/0sVtYWNCXWStTN5GYKV9
         Cjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjAgpjsxmPdTD7KUcPEfhB7iNQ5UYkpxLAXvi8xMpuU=;
        b=keEoTavPk+rrNVI6884Enh9rzZqmosptAyPDf5GVEFd/hcbUql41suPWghFlaWE4Tr
         pD+jGL9mlnOgxgQs9FImGEvFrmL/x1fjIdrQt3xdkuiS2GhAWHrqaE/qEC95/X1cY9y5
         0+Ax/PptYkHbT6nvdqce813g/xTqps5Y/iRw+nTMzfi8VgFTPyJ3wHaLRxufdkI4FaVj
         5sfknUESkNo6Zf2GF8wcEXDfQCo0pL4J1xbSMXdLoFxbQ9x+K+k0GHmNOyvVdSmqtKHc
         XnnDyy9G98kUfApPAhDRfQsroHMR161cEkjbSdxhsuPVn86g2xSYn9VZgDPQdiWuW1PO
         /8mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53111c7srVppQcWxFviQOHTz41GR+BsERXemAE4ctWW7ks+VVI+l
	tKw/uZzR7eGQ7G1qQxRKhVU=
X-Google-Smtp-Source: ABdhPJzDXTrf1ZO7/7hqHyBEMNCXZsxk0XWc8TDrQFqJqn6HRgNsAT9Ucw8UVkk0iGfdQKGTPUklTA==
X-Received: by 2002:a37:6592:: with SMTP id z140mr14974255qkb.319.1612171317847;
        Mon, 01 Feb 2021 01:21:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3267:: with SMTP id y94ls6036090qtd.8.gmail; Mon, 01 Feb
 2021 01:21:57 -0800 (PST)
X-Received: by 2002:ac8:6b46:: with SMTP id x6mr5362481qts.0.1612171317461;
        Mon, 01 Feb 2021 01:21:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612171317; cv=none;
        d=google.com; s=arc-20160816;
        b=wLeh6i2a5mxQYoGHvOclBkJy6MejUsn30PaX6iC3zE2eXXpuBdUQ3LEZC/CHVY5780
         PnzoOtTMo3DT2oRwQoN0TjGV1fDLs+6auD/PLtBTC2MXZRpwhbEUDo88DrqeYY+cgLIc
         gH6UesMO+wlcgEGH6zt3RJrrStSpdbP/DkMx1xnkIc6nhZ9lwOJ9sujEjl2Zk7cL7WCk
         MQlX7Qg/9kLcj/Me5s9rI+W/MbChqIQ/detTrT9+v68oEonpTi5SuVh0mUQsnoARTXVX
         G0U5AduOFoTB7XU6r3etnpYSCgB07E0zU51b22jEcnR/L3132qlMPPoVMiJX0FModf4+
         nysQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=Ow2ZpfsD2fHI7MfK6/cRabJnUTZdA5kV+OBmtOxgENk=;
        b=eSvvvHk5VbTlwyC/MS5fqkTRxWoMjfkpdCiaZRkgluzEEUCryUk+PABgtCR33uT2Iy
         Hti4k2USn7Wb8udlhzjyMFVSE4L4Tact1lzjNKdqFCqsz8EOhsudrfXKTXSaOp0md+tJ
         qIl0L+KD72fKyFysRXmBD6LYoVHzl1T3sTfgNL3anNCyr8D8tnv3m/bOvpIbNA0IYIep
         ZPJi9zZWOhSeIJUjp0L+J7Jb9gaI4gk6SjjSbOt6Fl/K1HSQ+XcqwbfMt4iTeLNqXeHl
         /XwuxJRyv+G12n1wPOMx293/9xjstq91UNYRc0Ma0uz92c/4WAUes7SFZ1WTvzYcq79c
         KNrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b2OeW2d4;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g51si795427qtc.4.2021.02.01.01.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 01:21:57 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-GxdtqJMqMM-ly_lhaUylVA-1; Mon, 01 Feb 2021 04:21:54 -0500
X-MC-Unique: GxdtqJMqMM-ly_lhaUylVA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 05937910E3
	for <clang-built-linux@googlegroups.com>; Mon,  1 Feb 2021 09:21:54 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D966B5D9DC;
	Mon,  1 Feb 2021 09:21:43 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc6
 (mainline.kernel.org-clang)
Date: Mon, 01 Feb 2021 09:21:43 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>
Message-ID: <cki.C215EBBF4C.OA23ZRSJBQ@redhat.com>
X-Gitlab-Pipeline-ID: 622693
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622693
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=b2OeW2d4;
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
            Commit: 1048ba83fb1c - Linux 5.11-rc6

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/01/31/622693

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C selinux-policy: serge-testsuite
     =E2=9D=8C LTP
     =E2=9D=8C Memory: fork_mem

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
       =E2=9D=8C Memory: fork_mem
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
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot

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
       =F0=9F=9A=A7 =E2=9D=8C IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test

    Host 2:
       =E2=9C=85 Boot test
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c
       =F0=9F=9A=A7 =E2=9C=85 kdump - file-load

    Host 3:
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
clang-built-linux/cki.C215EBBF4C.OA23ZRSJBQ%40redhat.com.
