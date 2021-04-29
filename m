Return-Path: <clang-built-linux+bncBDY57XFCRMIBBDMBVCCAMGQEZGUHHBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A3536E2A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 02:40:46 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id p133-20020a37428b0000b02902de31dd8da3sf26760223qka.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 17:40:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619656846; cv=pass;
        d=google.com; s=arc-20160816;
        b=kuwK82RlITT5zN+OY2uhCziUXD8H5kJAafToQb0U6A+9ytBvWAveYwyPvkPAOhjuQp
         GJQvZQDFkRJoIZN9B6NNYzQ9/lQ7wYb/IeI0BitJEoGQlg8+pGc9QJlYmetLUQ4Es9HF
         u6QkbQyZ8QShI6V0pWXuBTqKAyGcvsU3smQIeihjcVICnCgA8oAzumvpX2DRdWfdJ1y7
         CHrYHjgvaW8RgNyPRJfwBOVP0/bQehrV6g3uyqCxk1/rRXqIb7dhKlIyiCwm+DmhGSBT
         opGv72wT9Z7XQ17FVdSBF9dtRutmqxXhb8O+AzbjAuwdbOIfPFZFC5ScX5sQ+jn7er3N
         Cnyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=3SlPR4zU/efsW+BAvjNOxqEw7kiVT+of9jkZkKKOPhk=;
        b=KoSjOOoKacaUwM9vt5HexW+9SB86ei0MDXKiskq5BJJGXM5RBa5wLZpx1gZHArnMaR
         MF0J6ZfpCnXZmzi+NtJg2CscHy+Fte38R6VKTDUzv8vifj5sm71zjAIKie8ufdtEw/s1
         tDNaQMLQ/jnqmxpo0duFNKBiMzwD8rewsUuY0prxUAI/BxtfJrrS5qXxyeeEls5XzLNv
         awveHhsCJTpmTdzSEbvMhe1TbgMORBqg89z+fDXhMbNowRj/rXXAI7S46aTw9zVpJTJf
         PYspTzpHZyqgS6+ebI0FH8TGgt0ukjUow+Urt3Qn4cY548n7YuAYqB+nDl2/x/0BBUau
         WsvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AsUaJsbN;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3SlPR4zU/efsW+BAvjNOxqEw7kiVT+of9jkZkKKOPhk=;
        b=p30DXniANHN8Ua/vNvEl5YuJzorFECOn4X3Yq8NWhsYw14o0wHKyv8HMZuX8oHzEn0
         9jDumJBfvGnMTwQL99v7jyDe+k0Af85Z6kBYoyRYA5ANBuB5WwcNGnc89LfcXb/doVZP
         eJ3k+VemxDrdwlrjOBw8l44YbioNkKfE1eoPEYFgdtX/P98l6L80PZunWyw8uiAdtjoY
         tnMV/vdRKDBc0nUUcMBQWTTKpnE/0gmaOSRs/OkAwhgdxknH2k7lbhMwB+pagQhEkHwc
         IT9sxaakDvkjmSHx9cVxh+OMSoC/vI13Xcr4PyVazMS87Vp8icuFFVCqBchhoNW/ro1V
         LZQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3SlPR4zU/efsW+BAvjNOxqEw7kiVT+of9jkZkKKOPhk=;
        b=QqQfSouh7QVbkAzt8FSy3Ck6h2CAINUb+O9SHeE7ENig/+GyomtgNTdFTWmRGpmnCK
         rmsVgNv8kIFx3FpM7HN9aACnZ17t2BRaiR4yJ9oGPBLdbfgemc8LfLgelAeqvgqrkHXi
         R88aRG7wRZJXzEKCsMnn8BVwfd+5xYTLb+bZ8B8PUNQ6nlMtH2qXjMNoSfQrGEtY9v6M
         z7mbUVWgxJ6qco213UB4dQ5gqhG+OUsY4tuUta9N20/U5dca58U7kWfElhWoIRWcVsUs
         aWjgUnx3pY21Gc5A2q7pX0uunvU7e+bsEHdwMxMfmx1GFfK+TLDbMipZvJSmIz00BLVT
         rmIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aY71NfHASrKY96xpmwx6BmmxtM7dZIhtfZEhqmZ3y/WcXbMVb
	cIoaFsGDhZuTV4mYo+1BljU=
X-Google-Smtp-Source: ABdhPJwdY28hWJiyeripZWyqkNCoiU17yrne+Dvv6/BIYRBtIZ/JAue9AVtYsTUow2tPpCTfVA08TQ==
X-Received: by 2002:a05:620a:14ba:: with SMTP id x26mr30443747qkj.457.1619656845930;
        Wed, 28 Apr 2021 17:40:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e652:: with SMTP id c18ls442925qvn.9.gmail; Wed, 28 Apr
 2021 17:40:45 -0700 (PDT)
X-Received: by 2002:a05:6214:246c:: with SMTP id im12mr32576646qvb.10.1619656845465;
        Wed, 28 Apr 2021 17:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619656845; cv=none;
        d=google.com; s=arc-20160816;
        b=Yeshr9MXm8wyI1uxJ6zx3lqxrU1+w6BCS8T2LVgZJMdP7/El8sD5JTU7zonKkI+Nte
         ueiH1S3fyX4fgpYyLFluV2DzjqrPbjSqYQjI0rOnv97pqx6zxXxsRqbIdinvHrvjZz2h
         b+BD+vGV9IHsw6YOd+zXBCiDnAfAsGsRmwYP0aKT/CGC6OMkPevdZkc8rP/iLGTXzW9L
         /nOVtRBF8YIhufvOVJAODdkhbTZIy9hy6Hs0ZtxgJj5IP8KR/gerreHBl4n/R0ONc4U9
         YwRDITCSWCMAhtvuZKS4/ykqzx9otEW91J53iqh2G4ryMCqUKBgaw/G2rHo1fDTQTw8M
         urlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=2AfV7I87TU4EoWXVmAbCqZarBjAaJHrKi0KWwhwmVGI=;
        b=V7RXUnx9P2njQkzXWwpW1Lv0prVcOHOiGaTZ8FrNUgHmdDoW8RMQcjoWhnQmU8uC3l
         snVStKUXuVEIXNsj/fj5ldbz6o0F1yMgBOeIyBLzbtsC5zHVRLHiPjdaN6U7xS2BvYFG
         x12jEdCHCMbzYmERWOZm6zAQl3l49MsNdqUmS356X0sPckWL94AEMGN9xXn+1jCIr5h/
         E05mWWLW5LhdjLt/Lq/XU1BlJY34PG175BxPg+rsg2/b737Moj5GUbRu0SGD8bfZE+Oj
         PNKcbITUJX18q1suqI1eJUdB/WPoYF+fGhOLQ76E/tHZpBs0SVT6Bvfq1GG0XSy9uFxW
         t6pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AsUaJsbN;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h62si128011qkc.3.2021.04.28.17.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 17:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-5r5-UOziPRqED2H5CzVRZA-1; Wed, 28 Apr 2021 20:40:42 -0400
X-MC-Unique: 5r5-UOziPRqED2H5CzVRZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 567C018B9EC3
	for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 00:40:41 +0000 (UTC)
Received: from [172.23.9.126] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 46D4A19C45;
	Thu, 29 Apr 2021 00:40:31 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?q?=F0=9F=92=A5?= PANICKED: Test report for kernel 5.12.0
 (mainline.kernel.org-clang, 57fa2369)
Date: Thu, 29 Apr 2021 00:40:31 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yizhan@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Xiong Zhou <xzhou@redhat.com>,
 Erik Hamera <ehamera@redhat.com>
Message-ID: <cki.677813ADB4.GFK6W7TK14@redhat.com>
X-Gitlab-Pipeline-ID: 293211414
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/external-triggers/pipelines/293211414?=
X-DataWarehouse-Revision-IID: 12636
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AsUaJsbN;
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
            Commit: 57fa2369ab17 - Merge tag 'cfi-v5.13-rc1' of git://git.k=
ernel.org/pub/scm/linux/kernel/git/kees/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: PANICKED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/04/27/293211414

One or more kernel tests failed:

    s390x:
     =E2=9D=8C LTP
     =E2=9D=8C Networking tunnel: geneve basic test

    aarch64:
     =E2=9D=8C LTP
     =E2=9D=8C Networking tunnel: geneve basic test
     =E2=9D=8C xfstests - xfs

    x86_64:
     =E2=9D=8C xfstests - xfs
     =E2=9D=8C xfstests - nfsv4.2
     =E2=9D=8C power-management: cpupower/sanity test
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

We compiled the kernel for 4 architectures:

    aarch64:
      make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg

    ppc64le:
      make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg

    s390x:
      make options: make CC=3Dclang -j24 INSTALL_MOD_STRIP=3D1 targz-pkg

    x86_64:
      make options: make LLVM=3D1 -j24 INSTALL_MOD_STRIP=3D1 targz-pkg


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
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
       =E2=9D=8C LTP
       =E2=9C=85 CIFS Connectathon
       =E2=9C=85 POSIX pjd-fstest suites
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 jvm - jcstress tests
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9C=85 Networking bridge: sanity
       =E2=9C=85 Ethernet drivers sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9C=85 Networking route: pmtu
       =E2=9C=85 Networking route_func - local
       =E2=9C=85 Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9C=85 Networking cki netfilter test
       =E2=9D=8C Networking tunnel: geneve basic test
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
       =E2=9C=85 trace: ftrace/tracer
       =E2=9C=85 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 xfstests - ext4
       =E2=9D=8C xfstests - xfs
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapper =
test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

  ppc64le:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test

    Host 2:
       =E2=9C=85 Boot test
       =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test

  s390x:
    Host 1:
       =E2=9C=85 Boot test
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage blktests
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

    Host 2:
       =E2=9C=85 Boot test
       =E2=9D=8C LTP
       =E2=9C=85 CIFS Connectathon
       =E2=9C=85 POSIX pjd-fstest suites
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 jvm - jcstress tests
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9C=85 Networking bridge: sanity
       =E2=9C=85 Ethernet drivers sanity
       =E2=9C=85 Networking route: pmtu
       =E2=9C=85 Networking route_func - local
       =E2=9C=85 Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9C=85 Networking cki netfilter test
       =E2=9D=8C Networking tunnel: geneve basic test
       =E2=9C=85 Networking tunnel: gre basic
       =E2=9C=85 L2TP basic test
       =E2=9C=85 Networking tunnel: vxlan basic
       =E2=9C=85 Networking ipsec: basic netns - transport
       =E2=9C=85 Networking ipsec: basic netns - tunnel
       =E2=9C=85 Libkcapi AF_ALG test
       =E2=9C=85 trace: ftrace/tracer
       =E2=9C=85 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

    Host 5:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

  x86_64:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 xfstests - ext4
       =E2=9D=8C xfstests - xfs
       =E2=9D=8C xfstests - nfsv4.2
       =E2=9D=8C power-management: cpupower/sanity test
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9D=8C xfstests - btrfs
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
       =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

    Host 2:
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =F0=9F=92=A5 LTP
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking cki netfilter test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test

    Host 3:
       =E2=9C=85 Boot test
       =E2=9C=85 kdump - file-load
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c

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
clang-built-linux/cki.677813ADB4.GFK6W7TK14%40redhat.com.
