Return-Path: <clang-built-linux+bncBDY57XFCRMIBBAV432AAMGQEHOUKHUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B5430A1E4
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 07:21:56 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 145sf1533069pgh.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 22:21:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612160515; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qfi7Y374G9gqTN+wBTvHsy/S2Cpeeqct+xyOpZWy9WfvmURsFBbyzPsV6S3PIOahCB
         tplNhlFpPxpCt+wqfUYSCt3k1Wm2DqC+deZr7MofqTOnnNaN3BEXGQrWKBdFWctNbuhm
         iL1nJa4m5ptHWXssf08SMjsIU1J41F+d5tGFSMw2809E6I+GVGhnZK6107gQ4+x1XtJj
         OnElmhUtGrCPMUVuBaQLUYY58RRNpMlaiJDI2JR2Cz3V4dW6m2Nre5BCxvMwgOCZ+3jz
         oOtyWk9jmuqy5c2xZ1CoVXwI7d9Ck3lTzhbxG86ENcPUGkivCxjO/myk2GaX/uibdR1v
         sJWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=RZR7FZE8TlcaCVNwV0K/UUagYqQvyTHyhTxe2g9qcfI=;
        b=ulyiF6ihP56PNU7soPaRB/L7FH3gceh+Zzo97eb5ENrJ3YL4jXxp6beWBvQ3Yqd7OX
         tDvBYBsJn829emTQql+E9SWBD8qdHxz8MUBkVnjYiIfwCDpgpPuh39nh1b/VUSCnjfqm
         YBZG+VYFiZf+ehyJ9tZd3KKxQXxFyYe2+gamVbqcCrp2OHbu+xXOtPcjFIj46+ipp+xs
         QJk4uNRX7BtajcgaR5X67+sY7lGz+c8kvZ4vfoRQl4OO+1w2vfPdItjy7zWpaYOOEvb0
         uLqaWz96uKPG/MFfRr6GcYtk6r8KYp8+XBp3URv5+uP5jtU1TK3gmTeOeyNgLzMgGoHi
         tXjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HLmAr7Nj;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RZR7FZE8TlcaCVNwV0K/UUagYqQvyTHyhTxe2g9qcfI=;
        b=dlpt9usUMTqp+N+uPmpm0US/JT3li3LZ6QXBQ2y0+ro1DbHNl3vGZr1adHIqRC5BhA
         8HqaJB1hH0hsDQ1nsIMGGf3DWhMtmlHGUDqu4iByli5dVcFb4vu7STbQB1UOfrftTZn1
         srF1wCORuPtTsExHrEH8hiHoftBZwJfFrep0Qw+d3EjJPviJjVEnPDuhApe8OEZAyEor
         7dHpyFm6tU14Gxs7t2MmPjyRvsbhQwA6cthMEMQ7aFOqKq7v+aifZx1H9kzX72OfERxk
         K7bf+TsDNQVLKAgW2K9Xy5OcfrZ3ZIoO007r8vFIv23CmzFCtQTxqo3rAIfJCtbFvh9b
         G/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZR7FZE8TlcaCVNwV0K/UUagYqQvyTHyhTxe2g9qcfI=;
        b=fLNT7IaGT/Upx6OXN4jElNvnDmc/srkdF3r2yOX8hv9LwbQaE16OJXJOiXMCwvcumR
         RnkKNYGNqm/Tbs/lrJC0K+sL5x5053qInugu78MJnz1kiINW6OHZYSbqqFVGeqCxKqQ8
         7EmW1AcLmZf8Huv0C5fCCGN6CDvzSURLXz6CK2LA31AN8NzaqDy1r/I2Bh0Fp8El9vuN
         HkfT5hWuuyclZTQzVr5cHATKnJch9rZb9JlkG30UfxXIWYieRpW3DJU7fQ+A7PSgLfbM
         ns3k9mpNQLRRnWv+vZtpjlm5ZPEh0TGOooDDm1fHb8EIuyQNQ0iPEU4/skF26DgYc3Nz
         XIVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ryxSGq1eRbfWcP2IXzi1z1fHWODykQLDrqN9K2DnbR7zzpAQe
	MZwln05clXeNPwPuzTp/1z4=
X-Google-Smtp-Source: ABdhPJwsVONnIShNaFUwa5nBI6XF6M2QbHOTHa9yhKQ1WnMPEH6CoCDt8eAeZVSXoDtyS38iGiNRyw==
X-Received: by 2002:a62:a108:0:b029:1c1:119b:8713 with SMTP id b8-20020a62a1080000b02901c1119b8713mr14923949pff.74.1612160515033;
        Sun, 31 Jan 2021 22:21:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls7818053plg.4.gmail; Sun, 31
 Jan 2021 22:21:54 -0800 (PST)
X-Received: by 2002:a17:90b:33c4:: with SMTP id lk4mr16194427pjb.157.1612160514367;
        Sun, 31 Jan 2021 22:21:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612160514; cv=none;
        d=google.com; s=arc-20160816;
        b=NcGVjjbkBQdFs2QPOI3baXXzZdbzl0wzm6l4OS8P/88r+DShHNmCuabiz53PCu1EwF
         GvJo1c5gglnopa3P2YgYcF0epZbk18a3y3pP8HxCGh+LkPLiqSXQfCmFHej2ixhBpUw2
         YPmhygrNFdAD4VhgrBBLR3AGo/A5PgyHc1p979UlPBCiQsSQgu3smrnGFl298e3n1YlZ
         km7fl+l+sf+3k20ANnKXLpljE+zPB43PXluUNXcMYqIWlH/2Su1I8FMeZoHErngVkotG
         pZiLnlUxxwKgBrvworU3gYeEAwgqgkEzMK3anbP7Er0Qw+xHxOJXO20EpogWkRnSonGY
         DUDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=j//pyVEqWYjxabDVZDFcgKjgui7WjFurfYPYo0Oz5QA=;
        b=KZrIMH5V/n1mWllvQc5gEZ+lpz46Gi+T9xceQdLkGSgoGfc3zuel7wt97FvXhArRb2
         dzt3OvCH33HFNfUxGZuZoiD2HH8msATKVnH/UpVhQuz1bVrdPYTzdWJfQJwyjoTl0W1y
         na80gwyb8kS/eFqnYI+uaNnfOOIUjCF7F7APNCBnZ7yvxzasofj65fDoCpVItDgFI/7w
         IY7o01GpqzCyIJzwPcta2XojdTsRa8gQzaLfCwMSH8RmJSeg5ohPLXF5Pq1JBvEHoY7n
         eA+Z/3sGfzh8eJLch0WHO0lhJ8dDHTdo9FWbx53RcOFJffof7vI6LFMei7lZtxzFu0LZ
         Y5eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HLmAr7Nj;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y16si110299pfb.3.2021.01.31.22.21.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Jan 2021 22:21:54 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-OqdGwCN6OqOaVy262EklPg-1; Mon, 01 Feb 2021 01:21:51 -0500
X-MC-Unique: OqdGwCN6OqOaVy262EklPg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D08A107ACE3
	for <clang-built-linux@googlegroups.com>; Mon,  1 Feb 2021 06:21:50 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7C68A2BFF1;
	Mon,  1 Feb 2021 06:21:40 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc5
 (mainline.kernel.org-clang)
Date: Mon, 01 Feb 2021 06:21:40 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
 Baoquan He <bhe@redhat.com>, David Arcari <darcari@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>
Message-ID: <cki.3FEC95B8F0.S3ISZA3NF6@redhat.com>
X-Gitlab-Pipeline-ID: 622687
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622687
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HLmAr7Nj;
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
            Commit: 17b756d0376f - Merge tag 'timers-urgent-2021-01-31' of =
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
fix=3Ddatawarehouse-public/2021/01/31/622687

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C selinux-policy: serge-testsuite

    x86_64:
     =E2=9D=8C selinux-policy: serge-testsuite
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
       =E2=9C=85 Boot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
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
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 stress: stress-ng
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9D=8C IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test

    Host 2:

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
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C kdump - kexec_boot

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
clang-built-linux/cki.3FEC95B8F0.S3ISZA3NF6%40redhat.com.
