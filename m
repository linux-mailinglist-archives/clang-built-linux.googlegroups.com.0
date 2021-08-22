Return-Path: <clang-built-linux+bncBDY57XFCRMIBBVOFQ6EQMGQEO6JUZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id B356E3F3E09
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 07:38:32 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id s9-20020a17090aa10900b001797c5272b4sf9377492pjp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 22:38:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629610710; cv=pass;
        d=google.com; s=arc-20160816;
        b=i2ol/vRWNkagTw9PDLpJwY7Ivdyv7K+GZj4alXw7Ffq+Vfy8kxLwUhzFQld48j/GnY
         zc6zfRttR3kFh35/amGwO/F1d3ajo6IOISqtbhtudBMgyyfu+0Vk/TIqD3suwB7cy4Lh
         P9KKUvvuHAGHfjr5u4F08lQMxjG5iDK58qpJTVK2mCUWVdnz+p4Ln+Z0oiq066eZWYwY
         8y4vj0tVm17srCN3LTFNlP8P7lzsytZ7+aMb3W6G59qcvRcwum1GIbjPbfOPJoq+d9ZD
         HOrlb4TTE5JhF36dW891hFHJCvfJpIGyNwfe1QCpNJGKi8MUxKlvS/CdKBgiy9bQFaSE
         6eUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=DEM+ZPdzvfBQiJzA1h8V/mGt/Bbu/0EuPaSFKOd3YIU=;
        b=Qjmd03eRgQvaQhgv1e/yN7xJrF+FnZmR/Wz6KNO0JELg7NhaEHaaGqov+RPI5mYG4y
         s0z5l5EN0QsbDpbbyyVnSA7vWYww9rycPgwEEJZaPZJGUWtsTcju4rehW4Ow9hvJZVb6
         zMxxDgx3xmUGWnGdfyqMklBNh0xtH6JkIoiW0ltWJO1lJwB+cbCtV7oKwlmKcsTz2bkh
         0NnHkEjJGFrmsMzgntIKU8IxM+aAjmpt67rpBNoBCJ8QS5VU8f6pkEQ13Dd/htRK86Jn
         HNqtaIv50GSlNSBpKYe2f0xQjuDQFYpsTHxz41U9xo/n8zepqPYshlWPQfMqVo6FZXDm
         FIUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TZo1gpqa;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DEM+ZPdzvfBQiJzA1h8V/mGt/Bbu/0EuPaSFKOd3YIU=;
        b=CY5B8KPCb/6BB+IBPfbxcGVJqEZKW0o5gH5huugb9LR8hqq6GzXHnVNdUVwYJLLAGD
         WcuXY7PXUfMSsUK/DGBcVXPZ2AJIDcj0x6OC+WZTkhHJkc6206XbeNTmibmHAOTnUgzZ
         v8TcAVKkEbr2NtlZUZAHfGhn0OrmLzzDO8eysBYH0qgtGqTD2OGG4h2ST0IfnalgCXEx
         +FrjFoYUgMuY07XLsPspToZnwmBrEMKdE6R3+I57fciwlCK/GIOIuayzYsqlavsThY+9
         KEbHUqHItuXS4JdPm5n3TxrvGla+2ZEdAN9vOrA4huo8JXo+yTdfE9FtttsGdpy2EBGb
         iIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DEM+ZPdzvfBQiJzA1h8V/mGt/Bbu/0EuPaSFKOd3YIU=;
        b=bgwMzVz4Zs9g8MyLcX0Vl4eNpKRl6ARsTSzlZi3wPhEMbucMthemaCHXEzv7YMQAmu
         tNH+jrNLBdJCIfGQAbOC7tvaS85lSpc3pdgtsHv4eVVXY6xfPa5IQG5VMOUilf944lPI
         ihehIAzH5+XdTGtB4w1qyymdH8x7IMZq26dMG1DlUv0I3hST23Mf6dyrM3WYL829G0Ay
         P/5fVWdMs2O3PKOea81TGP191LDNh7K/YbTWLzP3ddFHTH/LWGB9+aY8IDyzx0/BR6IR
         EyYuMR2VlODi/GJhi0XrnJbOGXqXjNJX3j4CVpE7LfUZ68nHWu8ll4WwyQr43iAYIyzZ
         PZ9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XXjb+33Vv3HCS4UM4y550mjvYyiy9g+I34NyCFYpWypGjmur/
	4kr0LXy2+I3DXl0xJBZhs7M=
X-Google-Smtp-Source: ABdhPJwl1QdM1RjeJ0yhsVy9iShLWVc36/cU4RLzWYf1fPbP8Z6T1qkkruBpgo8/MRFXM5jFI5Ka7w==
X-Received: by 2002:a17:90a:9f93:: with SMTP id o19mr13041064pjp.166.1629610710014;
        Sat, 21 Aug 2021 22:38:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls5663391pgb.1.gmail; Sat, 21 Aug
 2021 22:38:29 -0700 (PDT)
X-Received: by 2002:a63:df0d:: with SMTP id u13mr25865131pgg.417.1629610709501;
        Sat, 21 Aug 2021 22:38:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629610709; cv=none;
        d=google.com; s=arc-20160816;
        b=VRIneA2rnyloGp1KD/oG2VJXb2Tt71LkC9Y4RNQNTK8CCPtl8GPLCpM3+At1UdEKU+
         iT0IsOnEmDrJLCDdAVbNBqOduzSwbcYthvfdTWcCRwK6NupJdCSbAg8lAl+AyMvSC/Vv
         68oDM12gX7ysUo1oTDFrS1cQyMCxV3Smo/0WdOqWyNVd3lunt6AxzxjtQlqant6Gt9Y+
         LqptuORzTOdniX8fhm9wr8AY0rtB5VGA057kpUmL2Tf8K1u9/QLTi18a/QIHZSa8jUmj
         rEuWyDVOqDqZqTyJrAT8aknyB6wr2PBRiaxlPXVjfarUB+zrEuXehMDgPOdLAPScxqCG
         8nRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=r8uWpUiiknbaJlPncb1NQtW5YrKnRtNWaTAA2m/s+g4=;
        b=SHFYl6uWPhpDqbhw0ErIM6U/uLrUo5Dn4IBfwAQY4sRR9F/8tPRgEVXinpNJaXBu7W
         rRaB1oS8WOg7cvuN+zVCDzhvc1vWd5QzCcHaYg7jDcSyy/UdSQMb5IzmBMHSibc0DEkt
         GssjzbV8tTDFM8rrmqyLLiaAwXvF//7JK8r9R/PcqtAJsqa4eBNkNQMzVsP7O7kH1Mow
         kuK72ljVAPiQ8UM4YF1wnHhELL6tPHHEvhevDPRF5NbcfVXBxUCzcv5kQMLw4Cv3666j
         6Zy3bekHfWXR73GTPCxkk+hcy8mR91HzFRK0ijdcDWk0FO1omsS3JJOTaBaa2eIOePnH
         vipQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TZo1gpqa;
       spf=pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r14si915988pgv.3.2021.08.21.22.38.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Aug 2021 22:38:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-NbRlqhG5POmu2QJ_niTkHQ-1; Sun, 22 Aug 2021 01:38:26 -0400
X-MC-Unique: NbRlqhG5POmu2QJ_niTkHQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F4461082921
	for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 05:38:25 +0000 (UTC)
Received: from [172.64.5.48] (unknown [10.30.34.134])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 572E360853;
	Sun, 22 Aug 2021 05:38:13 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.14.0-rc6
 (mainline.kernel.org-clang, 002c0aef)
Date: Sun, 22 Aug 2021 05:38:13 -0000
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Changhui Zhong <czhong@redhat.com>, Fei Liu <feliu@redhat.com>,
 Jiri Dluhos <jdluhos@redhat.com>, Li Wang <liwang@redhat.com>
Message-ID: <cki.8E018DEDF8.R2PPUYB2HV@redhat.com>
X-Gitlab-Pipeline-ID: 357093416
X-Gitlab-Url: https://gitlab.com
X-Gitlab-Path: =?utf-8?q?/redhat/red-hat-ci-tools/kernel/cki-internal-pipeli?=
 =?utf-8?q?nes/cki-trusted-contributors/pipelines/357093416?=
X-DataWarehouse-Checkout-IID: 18163
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TZo1gpqa;
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
            Commit: 002c0aef1090 - Merge tag 'block-5.14-2021-08-20' of git=
://git.kernel.dk/linux-block

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/08/21/357093416

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C LTP

    aarch64:
     =E2=9D=8C Networking bridge: sanity

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
       =E2=9C=85 Reboot test
       =E2=9C=85 xfstests - ext4
       =E2=9C=85 xfstests - xfs
       =E2=9C=85 Storage blktests
       =E2=9C=85 storage: software RAID testing
       =E2=9C=85 Storage: swraid mdadm raid_module test
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as root
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9D=8C Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 ACPI table test
       =E2=9C=85 ACPI enabled test
       =E2=9C=85 LTP
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

  ppc64le:
    Host 1:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
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
       =E2=9C=85 Networking ipsec: basic netns - tunnel
       =E2=9C=85 Libkcapi AF_ALG test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9C=85 ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9C=85 xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 lvm cache test
       =F0=9F=9A=A7 =E2=9C=85 lvm snapper test

    Host 2:
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

    Host 2:

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

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Reboot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load

    Host 4:

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

    Host 5:

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
       =F0=9F=9A=A7 =E2=9D=8C xarray-idr-radixtree-test
       =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 lvm cache test
       =F0=9F=9A=A7 =E2=9C=85 lvm snapper test

    Host 2:
       =E2=9C=85 Boot test
       =E2=9C=85 Reboot test
       =E2=9C=85 kdump - file-load
       =F0=9F=9A=A7 =E2=9C=85 kdump - sysrq-c

    Host 3:

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
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as root
       =F0=9F=9A=A7 =E2=9C=85 Podman system integration test - as user
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
       =F0=9F=9A=A7 =E2=9C=85 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9C=85 Storage: lvm device-mapper test - upstream
       =F0=9F=9A=A7 =E2=9C=85 stress: stress-ng

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
clang-built-linux/cki.8E018DEDF8.R2PPUYB2HV%40redhat.com.
