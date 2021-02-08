Return-Path: <clang-built-linux+bncBDY57XFCRMIBBCMOQ2AQMGQEOX5BVVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBCB313DF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 19:46:34 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id w2sf4689597oiv.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 10:46:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612809993; cv=pass;
        d=google.com; s=arc-20160816;
        b=oF/KLZB3ug1Z4fx7GDDJ4bYVRp8mzDoCvOdJpI1thT4H0dFazqliUnIkS6XJtTRABe
         aUFTYX7/l230AMQaqqhkq8R+TmMnuNG7bupj/AnLRQ8krXLRyPTSXbfvA3bqccULeTIe
         XO/anhu/nbtwJQc+ykBAvxW8PE6M3m7ML5xiB1u+Un3I+j1iw5HMOIpjc+r3Dqktx0/u
         /JjxosUSzBgindStaFVmW1yhYkHmpANeamFkN2Q/OZHPadgXX8GSjXTslFsICd4arBvL
         aF9sph0SVrXxGBha/nHsUIvZywSZG1mWH7KpC/VzUjs6+cXxpPLbYNfyzBuzylmqEqld
         I6OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=2x5MkOFA5j/MOQoaonnGeRiIt4nhPSTZ6/3yQ1ZYzKw=;
        b=ZeLz3+kccIBRzYGRp3zfrAmSCsf8MSgvXR3G2gT8D+nffhp0QziPNf+JzdRoGYelRs
         TRnge8ivXGb1cfpVzffemimtMMIaMqp79Fh+ugsszf+lNxlkCeckfCBy0rfjVGk++FbY
         e6EueR28mBaCFtq1pDqlZAVg6F/i17s7WmGT2xyTQy7djwXiJruLxNxS33AbMIh1TtDv
         hHQgv+lWpuPa0PL8ebuQwREmP6UrQpPQoOoo7JseodF15gx8kwU1gBdQRG1duW0z4b+r
         XrpiVWdpmnnCBYPwQonTdRiasewHBp+HtYDo9aUVmR14MISOZQsaxg/PS7i0jWfoNZFV
         i1Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KQDHY+BS;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2x5MkOFA5j/MOQoaonnGeRiIt4nhPSTZ6/3yQ1ZYzKw=;
        b=CyDPtqejWRKJsVYA9nSLGJzJXcVNt3Le+ADUHCK7M5btRL0EUZ/DNdelCp52/u71NM
         I67twepNdtINm8VqgQ+c5GGWLhJWrqOSDXZ4GBh1Ib1F62EBLd1fNPH4rqgznYfmL1d4
         LWIMS8mGE6J9k3Lcc+lvBQ6Dz7u4R7tkpdK7+ctYxu2MAMxAVcfRvm87beh1okWviJTM
         Bv2U1j5/XhFqId+7P2KBihDoflMIhVWDftCjeSwaOZgp6qoS8jQShkrdhl4B8XFOmSv+
         BV8ik6gkJD7Sij01J5zA74viGtTluyOYEAfqhi8B3ZCD8Trc2w7kQBoyy850DmJcM2GI
         Njuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2x5MkOFA5j/MOQoaonnGeRiIt4nhPSTZ6/3yQ1ZYzKw=;
        b=uUm7f+lgLKmk0DRfECWmpX3wQb1Frb2yPU/aQX/tXGvon5X7iKUn/Pzt3OOltkpB2M
         QjVAcPy8im0N/tW4Rm3D9JH/1VrFsICEyKs0pVfXpH4erpVte30RcndOJlwm7hUanL9P
         Sm0TpOTAlqGhowD+ar10b+AlaA6bcgWF264sQonmpP0Rw5R6IAWUfVUEEUbDJqnV7b13
         pFdOXe9h9xRJyNB8Gy3rMZ7MXNHCwGx+Q3xGCd/HbnjG/4tS/7DSdmcvYU/MkwjD3uaq
         atBJDHOuqW4dGMXG8c7qjKHxCK7zRvPr6qio/h69t2n3wr1/cgZd7PwynzKVj34lCYPL
         68oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tIrSCFfuciC2HHszWWh4xRbhJfdwBMWO0Tbp5eaq/e+SXNOhF
	DwXF+I3aIcmY2eWGYE/IDnY=
X-Google-Smtp-Source: ABdhPJyeNKGXGHLRxs6knYCbMvulq7qshQbOkAhYddZdvmRY6HCfJNIuQHyvTSWzyWEWOHiHoRSO9w==
X-Received: by 2002:a4a:e746:: with SMTP id n6mr13528820oov.84.1612809993830;
        Mon, 08 Feb 2021 10:46:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3407:: with SMTP id v7ls4375977otb.9.gmail; Mon, 08 Feb
 2021 10:46:33 -0800 (PST)
X-Received: by 2002:a9d:e82:: with SMTP id 2mr13645589otj.287.1612809992917;
        Mon, 08 Feb 2021 10:46:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612809992; cv=none;
        d=google.com; s=arc-20160816;
        b=ZcBGp5YBDyPf7ACW15FN3WhYeGx9QxOw/ha/mTeDX1uM2VMdglBOAoFWq4GStlcWCg
         3/fe1+ENybvTX/mhBdjJJcavHaycemBzGH2tG6NMjstLDlDd1yna8FUpwBzlu+LdsjvP
         orL2hQvSlxtcDl/CNThSLNB0WzmnXi3/P04MlVkemgldlMrs6r0f5yRRgjNAsryqbcvi
         Qu6p/1Yh8z+zdRpmiGsMXAGNRMP1jlf8VlVDvP9Kzm+YTwzPplHjFHm+swGxtPDoZVxy
         mhMczv3xIfQGXIEj5wKk+ONAqJ+wvqGN02zK3QEQdqKM72nz+8HZDpaMwfvO99/PYxIC
         eBLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=ey4zzP2F9zkpRQhRfntY7Gi0ymDLJwNqlaAgKj/j7vI=;
        b=GnHVgcb3pzHr7Jx7bUBfarBGrwkaGBgF1dPi7VyIuoHcprq+fsfNZcq9Dm3AqsLQJB
         BISTeMKAjrxAdqMGmt6eflGXlLM02CPKq+mLwStpE+qAlsw8OaqUGl6GWtIgvLF8m8K2
         pZ3PPJd+ukBKkGzqDsCGB5TNozZ+MKQnAE5YMvRt2UPwBC5INgtDRvYqUxdh3CeqjlVV
         woxkY5Ogdjgh7WweTHDCKwbXCYrB7ZS66dkWAdRZ6331vpaVEtO2V8w329t5R4WEsAOe
         0aMGDAXFSejUi9Oe/d/+z+wMdQmt+nBQ4NOZ6118E4+eUYI5guSnoXtdIjjHe3/D0FFg
         FsIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KQDHY+BS;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id q10si360257oon.2.2021.02.08.10.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 10:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-DVt34px4M3-QqTqBHpQGlw-1; Mon, 08 Feb 2021 13:46:28 -0500
X-MC-Unique: DVt34px4M3-QqTqBHpQGlw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D54E710066EE
	for <clang-built-linux@googlegroups.com>; Mon,  8 Feb 2021 18:46:27 +0000 (UTC)
Received: from [172.21.8.43] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 71E0E19C59;
	Mon,  8 Feb 2021 18:46:20 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc7
 (mainline.kernel.org-clang)
Date: Mon, 08 Feb 2021 18:46:20 -0000
CC: Fei Liu <feliu@redhat.com>, Jianlin Shi <jishi@redhat.com>,
 Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Xiumei Mu <xmu@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, David Arcari <darcari@redhat.com>,
 Rachel Sibley <rasibley@redhat.com>, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, Yi Zhang <yizhan@redhat.com>
Message-ID: <cki.68ADE68983.9O0S4C5V8A@redhat.com>
X-Gitlab-Pipeline-ID: 623301
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/623301
X-DataWarehouse-Revision-IID: 9822
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KQDHY+BS;
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
            Commit: 92bf22614b21 - Linux 5.11-rc7

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/07/623301

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
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
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
clang-built-linux/cki.68ADE68983.9O0S4C5V8A%40redhat.com.
