Return-Path: <clang-built-linux+bncBDY57XFCRMIBBAOI2KAAMGQEG7HG6XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D3D3090D6
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:10:45 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id n80sf8242717iod.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:10:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611965443; cv=pass;
        d=google.com; s=arc-20160816;
        b=DoXVIqqVCBIS/OZxuynkdByemx+oRDNmS5poZPGwk+16ZuLCGPPeS+pT1im9ObRZka
         dw47VNDfP45nAU5Lnv5sdoZyh5fllpkZeNuaoM6Md5GlPjSuaurNIs1XM4iZc1Kiybj1
         vY6V9Vg3V8MBHP72tKHLP8YjRyS2ReiwvIicrZq/SHl7Zb0uhycsMKiMbc0wESQZu5Dr
         XrYcguC90Uy5gOGpLv8oy57NtwIGvqH7ALbCJbHnW1k6PgcMo4VIvrZX3sD7lbLgzRjN
         78d9f1x/0NcWkAwTiGGlwMB86FZM0i4X+hMb6v5FaAy9rdOLvVoMqHQcSLi5aNrm4/uN
         mQ2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=2BaYzLfI+7hxAtNwBzNyEI46MUn5RN+fygRu48Z7NZg=;
        b=faBCX5tVk0vUaSm3sr8k/JeZH/IfYf491k2r+URoL82NE+4FhyEK3p3R1lfeqlDwnq
         213F9mqnbdn+awfEHEtQB2tJJj4SC9eIMcbK+favsL3xBy3IBC9BkzI7b+FkO1/Y0jHl
         aVElIWCeMfU9v/dguol7VM1Fvvbs1jJ/HA4z6p+DhiKNa5Sa11XA+IOmk7+ScExhWGfk
         T7UBE7Yvo/zj/vE1c6adafQOj8UOZfybtVu6qkKb6jJYfPV4aW5J/CksV5jAy7YtIQ6O
         N59DVAOuT9Bn06+p+5+TluUMNftxv5qcnF/Yu3G6KrNHDxPzK9h/CptM/L/O3ouUQzu1
         udcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XxxxXx4J;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2BaYzLfI+7hxAtNwBzNyEI46MUn5RN+fygRu48Z7NZg=;
        b=BWApu2ZdnWUT1CAlbPFNBv9vveyuGT8PHDsetw3/LgXQLYVl04M5p34BkURGx3HDv7
         LZEq6ivPa1JK1QKzqRGzXM6ksp//G5laBmk5fGXb0vhSb93TsfqQeflYdz0Dl2m31GQV
         E5w47jgbFq1xQU6KNE+PWMLcFxP3GUgJ5x80rpnLyLh9XCP+bzMWKT57DJNWk+YllJDP
         gfBmXyENSqXnId9riBPok28LBVBYoH91pzuZ/vFMMpMw0+y6bMPHDZqSs7ADdPnWbprl
         6KAg+HV2odP7N3U2T7pQ2K50DSoBHMYz6mmRLGMmQmEDuDcE82T8Z8bvj8rmTglpTz47
         IkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BaYzLfI+7hxAtNwBzNyEI46MUn5RN+fygRu48Z7NZg=;
        b=aqL8mbfvjsNEJPbVzdaCActMstNwSirhC+6YRtf+tjWIDUs7TlKPnI7Q+u6gIGrZMw
         QAUaNAHLU1InTcyHr71SvgiQ8vTMyAtSPxegylUQBMAYN9NH3udGNWy1HraINiKyAbBF
         19EJ3FWMaS0ZAlOEyB0yR4Ebpcu0wLe5j8Lq2cmv42G+aSxRN5XWwzJzp/mmATEPkWHa
         PUAzEuhCqEqUkbHHpav5Nd01diWW8ChN0KMyyvI9NYjV27NzNxgDdr+N5pw2H6mEceif
         TR0Y0dCMXHfZwXEK2ZNY26l2+AKATI+1+GxAGpp3BnbQtQ2NujLLKMIOEGwb/6dmktau
         n7rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+Od5fXAXydDM3xzcRM9/rGP0e4QRotrM+ka7dqjnvOiQvftrT
	janA8eh39uXrZ9ubgSZ9H5A=
X-Google-Smtp-Source: ABdhPJyaCEJ+UGHlnjs+MWP5ldARJbZTv424iP9fSHnj7eWsZV5JKDf16UIJQIeX10lxmr1PPQMsrA==
X-Received: by 2002:a92:a010:: with SMTP id e16mr5296820ili.62.1611965441917;
        Fri, 29 Jan 2021 16:10:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:4aa:: with SMTP id e10ls2635447ils.2.gmail; Fri, 29
 Jan 2021 16:10:41 -0800 (PST)
X-Received: by 2002:a92:3643:: with SMTP id d3mr5092153ilf.103.1611965441488;
        Fri, 29 Jan 2021 16:10:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611965441; cv=none;
        d=google.com; s=arc-20160816;
        b=hn8OLTDOdLUJgkDqXxZ+UN+slsGzp7nOkhnPo5zl3jJqyPZfc1/wHm23kaxBaMqWWR
         rYbJp/W86cxMjfD45PnNY8wVRtxDkR9ZVKU55SmM52JnUqGVAROofevMPx5zRoWiphVK
         5ccDGZNLbs96hxlaBhdnxZVU4ILW0Au0+p7VarMSZdlZe+RJP1YGKlBjYFbr106XhLkF
         ZtxdpVqu1Iw2beID7RF687ILj5LKPBouGGO1ZCdI2Ew8fyLSsd1cvm2bA0YeMM/q21jG
         g3gTsYNcGWuPaKfLxTqbbpfL2mXjDeHfUswZibJcDk33h1ilZVwlU9paC4rs8NXSRsHZ
         qw+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=OwiD2qC4bxjmsFaPCrJszGSVi8A8hIL7J8X5HDZF374=;
        b=A9fYPZjihsFyqzl5+eiKfLc+Xymy62RR+zNgKx6tT+FsW/fAp/2XtC9KsARfGjBM3O
         53zohAx5QpJXR2lZIIpcRgKTbjYmb4magZmG1ZatDMtl5/2w0itwRSF9j6slKrFEvvDz
         TtBlkdjqj8dDK3s8/VItCRSx3Oz5BcStDd6woRL3yjBOt2gSViNy5ECbsEUuIvcrZhSR
         x3qj7mBcjldw/fuM1Wbjxpnms587hOmMs6LDlLbsdqKwU6dohB8po2t5kz5U6IXDEQpd
         GRyfq5+WIR14o7WVCgXNjdbmhzCZQseNQ0SYrgfLEQKS66hlaxIUuGgI9gW7JNRMlM89
         iiww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XxxxXx4J;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y16si144906ili.3.2021.01.29.16.10.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:10:41 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-0TbFi9aqNV-48yssgt9kZg-1; Fri, 29 Jan 2021 19:10:38 -0500
X-MC-Unique: 0TbFi9aqNV-48yssgt9kZg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8154A107ACE6
	for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 00:10:37 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CDE4862688;
	Sat, 30 Jan 2021 00:10:28 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc5
 (mainline.kernel.org-clang)
Date: Sat, 30 Jan 2021 00:10:27 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Rachel Sibley <rasibley@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Erico Nunes <ernunes@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Arcari <darcari@redhat.com>, Yi Zhang <yi.zhang@redhat.com>
Message-ID: <cki.05A70FBE5C.BO3L4RDLAI@redhat.com>
X-Gitlab-Pipeline-ID: 622490
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622490
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XxxxXx4J;
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
            Commit: bec4c2968fce - Merge tag 'ecryptfs-5.11-rc6-setxattr-fi=
x' of git://git.kernel.org/pub/scm/linux/kernel/git/tyhicks/ecryptfs

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/01/29/622490

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C selinux-policy: serge-testsuite
     =E2=9D=8C LTP

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

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test

    Host 2:
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

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-testsuite
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test

    Host 4:
       =E2=9C=85 Boot test
       =E2=9D=8C selinux-policy: serge-testsuite
       =E2=9C=85 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
       =E2=8F=B1  xfstests - xfs
       =E2=8F=B1  xfstests - btrfs
       =E2=8F=B1  IPMI driver test
       =E2=8F=B1  IPMItool loop stress test
       =E2=8F=B1  Storage blktests
       =E2=8F=B1  Storage block - filesystem fio test
       =E2=8F=B1  Storage block - queue scheduler test
       =E2=8F=B1  Storage nvme - tcp
       =E2=8F=B1  Storage: swraid mdadm raid_module test

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
clang-built-linux/cki.05A70FBE5C.BO3L4RDLAI%40redhat.com.
