Return-Path: <clang-built-linux+bncBDY57XFCRMIBBS5XQWAQMGQEBD44W4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0831383C
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 16:42:04 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id t15sf8246068oon.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 07:42:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612798923; cv=pass;
        d=google.com; s=arc-20160816;
        b=HH/0iVajjCq7zmKvytWptg6ESHDFh/CobU0zs/eikYhFmaCPxOm9oquhLmGftBSC0q
         ARMOhcwfTsHeqTs5kh4FjndMkNmDSrdPW/eyqqEju5EeUS9wDqZdmZA5syhIeCMPXvAh
         9sz5lKIGdRpROfQZQDyacppRsj+nrWtP6X7F8dqy37e67iG668A0dxUcaGoKqMHpwUTE
         g0FXZabhcA1iic+FD1FV1YzxwUiuI9pSz+Y0RWb71NuYRuPjzvh+NeHjOFQi2yicORcG
         slv9Bn1y2ysqB4pClEVU1OlfOQZyzZ4OHiBvy12JKg7i92fnwkP8T1IZpVbCYgCanZhV
         TjXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=K8/riF4nDgoZsstlb9fCFdq3oj32hk3cIPmu31s/UBA=;
        b=T6mvDwaN3N0IqH1OhUM8vFOHZlBv4VvihVnuDcbxLj2MqfSU+5Hi09XCedTtYPgAii
         /aqd8YPosQowjWAACWYi/dKt98VrnadMD93J+gEhdIjNZzu96rzjOd7X7CB3UjvOGKBn
         xu7iZLcfUiFIGNTA0Qvv4WEYGoGo75RcVzWwhkj5u9Z5gOwe3l4g/4j9Ab40rUKevOtd
         VJ4t80At54x6oPdam0jFXqamqzV+v+B5gFbXd7YtewUy8Dxwg0j7nBLp16MKDxQrAUZJ
         3vbpiqCQv5/h7uZt+evRRAXgNBBdsWUhPJUw0JwGnEdtRztixw2d/RAtzbpRTO8LVc7b
         yAsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FuzKCcaR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K8/riF4nDgoZsstlb9fCFdq3oj32hk3cIPmu31s/UBA=;
        b=rWc33MFV2qdGXy8z7EDmkEeMCo1E/t1jMuEjZIFTBqsyWQgY4cxBS9La/e1ydKgCKE
         TXVEJzubexMIYGDeNcjyf1G6e8F3PWON0NZeb1Wi5j94V2mFdt7TgYnaoHONT1bp94Ot
         Fe9QFA4dcPmo9LoAOqOHxkiCTvq8rNyeXX9O6Fkw4y6VAy4mvYgvqbza1AWgxu0MqN1N
         XJCRsuwpipnnn2d9EsfpOvQpfV/4xpBmKd58ZNo2V0ZM39UAA0soBnUrydJTXAyuDa6H
         H/RqFYOC0FApwl7X75c3vBjwO+Sci5wHYYz9pan66XmvkecaFfzXue7tzgj0w9u0+qDz
         zAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8/riF4nDgoZsstlb9fCFdq3oj32hk3cIPmu31s/UBA=;
        b=G6kC6kxhqiPCniI5c1XBjDG6J3x1ePPho6M8CUOWD+frzXrsyiS78Zdr2l72g1I4hK
         VcO7ynO89xLXnkEwWwUhqZ1vGI12HPYcJn2fOPEnXTmbB2Ee9jG2NGq5mELoOfTGxK5T
         3VW4CJpstsGnPGXltjBFKfu/GVVC/8Ht1mv6fpUPb65wGH47yhcKXGzjUR6nFKouOYtQ
         6c8DPzr0ltK6XK7M9Zrj6LCA6nwkHc3pNwNybVLkb/xEWA8TEhq53geW08QHo9lngV6I
         3JIUfTuARNFtwm3PYtqHYmZ1jft63KCtGg+HKGMwqzaaKcNhgr+JzQ3ig9ajGuXZWvRS
         pHyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Qx+4BGx3Uvt/OyIyABkC9+Bqk9GEnL9L0s7h49QJQWQ9zr+jM
	DJUmQg+tL0araFQDJsgwh1U=
X-Google-Smtp-Source: ABdhPJzvSyzuZHR5LRMucI4m3tTuW4ZIWNC3D9BpYLhuDNwEhQUjZ14wew+92aOAG8Ki3QH2fJ0IYw==
X-Received: by 2002:a4a:aacd:: with SMTP id e13mr2827169oon.35.1612798923192;
        Mon, 08 Feb 2021 07:42:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:19f8:: with SMTP id t24ls942198ott.11.gmail; Mon,
 08 Feb 2021 07:42:02 -0800 (PST)
X-Received: by 2002:a05:6830:902:: with SMTP id v2mr13251817ott.56.1612798922805;
        Mon, 08 Feb 2021 07:42:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612798922; cv=none;
        d=google.com; s=arc-20160816;
        b=G7vWuUgysGIMrVZ+Ux6JZwYX6Hej9sjd7TArWYofaKWmDHvR/dj535we9skKrrGE5A
         /HqPKDFJSZo+m7WUaZXoSX2PZrhKLQUQ8yHSmrCKYWgND0OZ9oQYfbhuhinB3sm4jSMS
         AOvelq1jlppRD2wn53AZIksqoAkVDp2Xs/Z9M4GQpKc8Ozu4TLBOYU2jcf/0HEHto620
         /Dam/b9FmGY21Bx2HK1xjvX79s5dlskHaApD+qwzh8DPzWA5bE5QjmvkdVPvPDqGjZi1
         Xrdy8Y2UPMMYrueFFEtlNClou5hMsSvlAX7tjg8hw5wO32oBvHby05bLYI0ssX7v77MQ
         rLjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=U8I9t4eObXOdXXyCKAlZjQdBinu+aCUVhEG6+CUo3Hs=;
        b=qCYFSHW2V1OWz7FmQFXav9XriRE784widUDaitB+8D1KoOsPIavPffyH/12MEGa8Xq
         q4xAMnOhAVPInPAo97yl3fTlF5uVbA4oGgqsFJ3qQXpXtuU6RlfxGF4YHdRXqPoRHtFl
         1lqcN5v9+3OTKYjtN8MTeY0xre9jcelAJRdCCeQliT8mGsfmKlvyUcFtt8/PT9JV1foo
         FsIMY8Wg1mHqjsugfws0NtRXt+OkiaIboyweB4n3SCOpApPI5Pa6mekoKzLB6p+epbHT
         jjC3t1BWGiQdLiTSd2zzTofjfkCeught003c8sxqkQyT/PGh5+QBzzWGNjPL8PqpAexb
         +FHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FuzKCcaR;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id q10si285398oon.2.2021.02.08.07.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 07:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-3T-FsMFQP3KjSu11-M5DxQ-1; Mon, 08 Feb 2021 10:41:55 -0500
X-MC-Unique: 3T-FsMFQP3KjSu11-M5DxQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AA9561966320
	for <clang-built-linux@googlegroups.com>; Mon,  8 Feb 2021 15:41:54 +0000 (UTC)
Received: from [172.21.8.43] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 473445D720;
	Mon,  8 Feb 2021 15:41:46 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc6
 (mainline.kernel.org-clang)
Date: Mon, 08 Feb 2021 15:41:45 -0000
CC: Fei Liu <feliu@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, David Arcari <darcari@redhat.com>,
 Rachel Sibley <rasibley@redhat.com>, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>
Message-ID: <cki.206FC30D59.N9QELMBZ3A@redhat.com>
X-Gitlab-Pipeline-ID: 623296
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623296
X-DataWarehouse-Revision-IID: 9819
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FuzKCcaR;
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
            Commit: fc6c0ae53af4 - Merge tag 'irq_urgent_for_v5.11_rc7' of =
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/07/623296

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C Networking bridge: sanity
     =E2=9D=8C Networking route: pmtu
     =E2=9D=8C Networking route_func - local
     =E2=9D=8C Networking route_func - forward
     =E2=9D=8C Networking tunnel: geneve basic test
     =E2=9D=8C Networking tunnel: gre basic
     =E2=9D=8C L2TP basic test
     =E2=9D=8C Networking tunnel: vxlan basic
     =E2=9D=8C Networking ipsec: basic netns - tunnel

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

    Host 3:
       =E2=9C=85 Boot test
       =E2=9C=85 LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9D=8C Networking route: pmtu
       =E2=9D=8C Networking route_func - local
       =E2=9D=8C Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9D=8C Networking tunnel: geneve basic test
       =E2=9D=8C Networking tunnel: gre basic
       =E2=9D=8C L2TP basic test
       =E2=9D=8C Networking tunnel: vxlan basic
       =E2=9D=8C Networking ipsec: basic netns - tunnel
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
       =E2=9C=85 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
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
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

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
clang-built-linux/cki.206FC30D59.N9QELMBZ3A%40redhat.com.
