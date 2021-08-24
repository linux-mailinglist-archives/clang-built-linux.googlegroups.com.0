Return-Path: <clang-built-linux+bncBDY57XFCRMIBB57ZSOEQMGQETE7RERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B06623F5FDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 16:06:49 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id k28-20020a63ff1c0000b029023b84262596sf12161336pgi.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 07:06:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629814008; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMcQ8x6aSjrAPYtOxJW74PmOhhQjmt2h8kruEpEgsuFi8g4fFPIVFL1ZA7ddyxbThO
         sCVDNam5TvP04Meo8dd1yNVr2cnE0J0OmPl0T/3bsa3NUigdPoYwy9K90yTZTpjF8z9q
         Ren4WwEBUWQzYtk+MNR7SPI74hGqVTZfMCPWqSqlkN+bKOGCc6LTZaODYtmI83vHjE4D
         70LO6fAtyXAvLtScF3rrpWQckZvzaSfSxoeVLKhOVe8XCAOYyDWjiH79m8zGF77CCDt6
         N5X1sK3xIvw2VbCxoxJi4ABxq5g0FDD36SoPiqHpix41DBQT105t+qW3Ktiw9MqFl/tB
         9lAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=pcbbzQQtf0f1TjxPAsKFXMniyUFk3zdnkNlP9XDOy5s=;
        b=lxnGxmi20DUXMKdcEx5e8cVWMRX1fuYkUDNQuS8knVpuvc2x0Z2OVNeXep68bJZAcs
         T6ERTiDqSDnyJoA/uZw3T+2rqeY6WcYkAu/NvFQZc3DtDmdFfplFfd2oBHQzCqAqPNNK
         N8mC4+uAZ438B5BcHeT1kmevnFi8XL1OYg8cu2rVpndsPXsUTzFbRcy1BBwDFcHXa2g4
         d+iiKBVppDpNC6grGck9JF2i4bm+37Xvmo8jrPwsuGnVJWt+l91aRPJspyAmBg5/g55k
         CHP+C7u+zaw3LX39wc4ANvlcgiwCnGGarlCCT8m8VY3V+xzkjrEJH0hrtlK4ERxOOCM6
         fzlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fKxeVyf0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pcbbzQQtf0f1TjxPAsKFXMniyUFk3zdnkNlP9XDOy5s=;
        b=jimbDh30FrRlNsiyeqlBRyta5HjkzOzQpZ5Ej/qtoVOtpnZqh2bjiUysE6dAAfJ0EK
         UlsKpx1EY0S3aElbaPaNn1xRfA4HpB4E9KvRfu+XMESLWIABQB5j95g+dKy1y5MGYyEw
         se4WEsglpov5tVnH8KXo0gW1W+Tk43hydxjWs+E1f45y8rP6Acxc+wgq99k/qCyts8pl
         vNkq194Zc611vo/ctcrCWDOYK+F781QopQUH9CKONWjVuKKKsNcMNytsou5H6Z3PltXC
         MzDeiyO5Y5JAa/Np++a/6KVe3RxiVd9TuYW/QFCJSGmxvIeXbl3L4X6yXb+faqgTTfPP
         t/Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pcbbzQQtf0f1TjxPAsKFXMniyUFk3zdnkNlP9XDOy5s=;
        b=KP2bkCPGiwchd5dA6flj8hNrChzNm1y6qUxK/0H9+z2fkuIK1+0bIEYPFcsP1YdhqZ
         6GUzgB2RDtbDz4j7NZ5YLqNZQHxVi/WwONUOlXZPuAfljOrbGDWEQELb99PBPYVvX8xZ
         rl5Q/aM+EakJkk56yBlpuH3WD6AQEbYMTqY1EBoSe77T781c0i2f75fqJ0KNrgSdua+3
         r0o05yjKrneJL5a6muaaIHprC5GZOvpWIN1Z+8Z4p6eozeqUz15NgCo5A7xGACAaZ+TF
         A8u5iYr0mOA5mwBS3f65Wf5lwz1FFIu0//2c7wbDJrqY/cWCiKV2coLX2WVxtcR/dxyb
         L+ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309J4VLFIncJV5So5UGq4B3op0DH8/mhadqw/l+ijjl3Y+D474X
	Z+SXZKHE5WAwf4X4jchpA5U=
X-Google-Smtp-Source: ABdhPJxG+eRf5L2Jes7VaIqAAtKdkFNynRZuRBnhvJKzwJ6RzWjxfaMWEL4szHW8OutKrz9Pvu287w==
X-Received: by 2002:aa7:8d54:0:b029:3cd:6ce7:bec6 with SMTP id s20-20020aa78d540000b02903cd6ce7bec6mr39312294pfe.69.1629814008003;
        Tue, 24 Aug 2021 07:06:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6d82:: with SMTP id a2ls1467252pjk.2.canary-gmail;
 Tue, 24 Aug 2021 07:06:47 -0700 (PDT)
X-Received: by 2002:a17:90a:a016:: with SMTP id q22mr4797207pjp.34.1629814007263;
        Tue, 24 Aug 2021 07:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629814007; cv=none;
        d=google.com; s=arc-20160816;
        b=Q8dE1Ud+10pLmXmpjTxRKrKE4f9FYgVMqfY1N9l89L4IVJRyjKjEeSR+dLg6DQIG4o
         ma+IkM1Z6YvmtAbTbL16F+vOjPb8Z0rQ/b1y2iY8NFyfri5w5MiaPOJTjLSPpSZP7ZGT
         QS+qnvyl28jZveSxtbo3awauY3g1p9KCZV1epodrLBvwOSW8Y0rNptEG6eyGC8DowC+M
         A2YUmNDeNpxqyxjzXiIEDnHAqt03T+ikgHli36MKYsW+enqp7ZdQO8ZwuI6+7NA+Cy+O
         7WaSzrVWFzjIp0KAEJkOxINhM75ypMBmAjAK274sJP3SQAgxM1hGk94gsFUGdnNcyY9N
         xu3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=dOGnow/2Jt8EPPr4+eP8L6hTcvZriKm2OXbYut+JbIs=;
        b=k8S9xBwyzZs6y7iRQhMIJVDn2PdO1yOGpW6gLOCxVlSRXZyTL47/IcxcOSW6IT92hR
         VPhS5D51+Cbv1AwujuS50CWWNsMEkeJ4a8zoNrI+1tsWwwmrM1z2uQcQV9ByNGYJCgPf
         LAM/UIS+HARCfd3raq6R36heiyzKHlPYmv6r9LBMCRZ0AIQ4JxOXZnE2nbSHoMTdeUBa
         RyyZyYXTDm625JsfLFGDJvh3NnRnoLeNyaWAVMGtX8QQ/QXkNbUB/kABkmNA4c3FlQ/f
         eb8I8WADCLLb1oxa7iV+UqdHJr0FO2LP14hP9+XE55ySDw9GakvamQOoIQsdIiIPCtcf
         dQBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fKxeVyf0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r9si929373pls.4.2021.08.24.07.06.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 07:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-QHN2HJ6fPx2PVZ6-Hw5Rpw-1; Tue, 24 Aug 2021 10:06:42 -0400
X-MC-Unique: QHN2HJ6fPx2PVZ6-Hw5Rpw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 510B91853024
	for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 14:06:41 +0000 (UTC)
Received: from [172.64.11.53] (unknown [10.30.34.114])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E2B575D9C6;
	Tue, 24 Aug 2021 14:06:33 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?q?=F0=9F=92=A5?= PANICKED: Test report for kernel 5.14.0-rc7
 (mainline.kernel.org-clang, d5ae8d7f)
Date: Tue, 24 Aug 2021 14:06:32 -0000
CC: Bruno Goncalves <bgoncalv@redhat.com>,
 Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Fei Liu <feliu@redhat.com>, Jiri Dluhos <jdluhos@redhat.com>,
 Fendy Tjahjadi <ftjahjad@redhat.com>, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, Yi Zhang <yizhan@redhat.com>,
 Jeff Bastian <jbastian@redhat.com>
Message-ID: <cki.52D256BC18.0KN3LAN3A8@redhat.com>
X-Gitlab-Pipeline-ID: 357988826
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/357988826?=
X-DataWarehouse-Checkout-IID: 18233
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fKxeVyf0;
       spf=pass (google.com: domain of cki-project@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
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
            Commit: d5ae8d7f85b7 - Revert "media: dvb header files: move so=
me headers to staging"

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: PANICKED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/08/23/357988826

One or more kernel tests failed:

    ppc64le:
     =F0=9F=92=A5 Boot test

    aarch64:
     =E2=9D=8C LTP
     =E2=9D=8C Networking bridge: sanity
     =F0=9F=92=A5 stress: stress-ng

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

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
       =E2=9D=8C LTP
       =E2=9C=85 CIFS Connectathon
       =E2=9C=85 POSIX pjd-fstest suites
       =E2=9C=85 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Ethernet drivers sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9C=85 Networking route: pmtu
       =E2=9C=85 Networking route_func - local
       =E2=9C=85 Networking route_func - forward
       =E2=9C=85 Networking TCP: keepalive test
       =E2=9C=85 Networking UDP: socket
       =E2=9C=85 Networking cki netfilter test
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
       =E2=9C=85 trace: ftrace/tracer
       =E2=9C=85 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9C=85 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 lvm cache test
       =F0=9F=9A=A7 =E2=9C=85 lvm snapper test

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as root
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as user
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 3:
       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 xfstests - ext4
       =E2=9C=85 xfstests - xfs
       =E2=9C=85 Storage blktests
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C Podman system integration test - as root
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =F0=9F=92=A5 stress: stress-ng

  ppc64le:
    Host 1:
       =F0=9F=92=A5 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
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
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapper =
test - upstream

    Host 3:
       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test - upstream

  s390x:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as root
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as user
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm cache test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 lvm snapper test

    Host 5:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

  x86_64:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 LTP
       =E2=9C=85 CIFS Connectathon
       =E2=9C=85 POSIX pjd-fstest suites
       =E2=9C=85 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
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
       =E2=9C=85 trace: ftrace/tracer
       =E2=9C=85 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9C=85 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 lvm cache test
       =F0=9F=9A=A7 =E2=9C=85 lvm snapper test

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - nfsv4.2
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 power-management: cpupower/sanity test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as root
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Podman system integration t=
est - as user
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mapper =
test - upstream
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 3:
       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 kdump - file-load
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 xfstests - ext4
       =E2=9C=85 xfstests - xfs
       =E2=9C=85 xfstests - nfsv4.2
       =E2=9C=85 Storage blktests
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9D=8C Podman system integration test - as root
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test - upstream
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

    Host 5:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 ACPI table test
       =E2=9D=8C LTP
       =E2=9C=85 CIFS Connectathon
       =E2=9C=85 POSIX pjd-fstest suites
       =E2=9C=85 Loopdev Sanity
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
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
       =E2=9C=85 trace: ftrace/tracer
       =E2=9C=85 kdump - kexec_boot
       =F0=9F=9A=A7 =E2=9C=85 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 lvm cache test
       =F0=9F=9A=A7 =E2=9C=85 lvm snapper test

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
clang-built-linux/cki.52D256BC18.0KN3LAN3A8%40redhat.com.
