Return-Path: <clang-built-linux+bncBDY57XFCRMIBBXNG3GAAMGQEB4GPIUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F37E309ADD
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 07:51:11 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 18sf9139284pgf.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 22:51:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612075870; cv=pass;
        d=google.com; s=arc-20160816;
        b=d2P0k7qOXgxbD7c3Yuhz7ekS12RWB/tHTGu56DFhA2uo/3tCNc8bNMIcg0xY4SK7zS
         Imam6l4sKJs4EhwseF33nkgWYUE8rLX88/Uo6LzphFbvuMMo08/r4gQu6ZvxlUyC+VGt
         vLK8q698LPTxrHBg/7TrYOBdQPkHbM/bw58BVSJr8z336os1oauSPVNy9Ii6WLgy2WbR
         DDoiN/Pg8nEPMknYp7A3xie6gcpSnT6eLbsHZn3JYtX5C8VRMPusK/cO3Ij57qXzK0XT
         0SUrF5idsArvjvrSQUWSLeTjLwq4I6cAUzE26fQQBGfAs81R0o4vIJBhJzLcpAarCjZd
         mznw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=r9XoiPyRGQw6pIuIe09VtI/NVIpLwOgA0mQS/fevW1A=;
        b=ZVFdL1DVpIFcPJoL6zlsI7evpaFilqM1q+BpJSDBtnVfpJCD2GFgKW12N5EUHp9Wwg
         K1S2WbeptLrQSVmJ7BOSvSVpKtCNNovfUVeOaXX+m8iZ7jGJtr2rqCu8y0QJ9gNh+39M
         qd2Sa0DhbRe4/FG+h8Ok3NJH1YdD2Fb2vTUepulyFXf1yzQhHaIGTlzAs4kgRVZ5hwnV
         2iYS2EWu5JWSrVPz7llFp39HbrtehXk0SiC0eMZaO8TCu5QnE7EpgK7MHAYlO18qdTfp
         z3fnfHchUbBXpyRkPgll0LHuba8vxj2a5DPLCkpxRGH00tEX9m4UTuz0bnIgYMteTcEe
         YpZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QzogORSi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r9XoiPyRGQw6pIuIe09VtI/NVIpLwOgA0mQS/fevW1A=;
        b=P35NtjB6rXN4nEKUpFFpKxkpgLeTzqWxmGqC9d3mL96og/JIYpbJTBBGassq6WuQwn
         mmCyfKhK+TySRwDAUEdo4J7SB+4ttg698pQj2hdTBZVUi5hmwkKLYDF1W2y7sLu8dqJQ
         9whxQY2XJ0BJPA13uZVeK+1a6xkyRQRWzixVTmfpZzmt6efRk4MTE9mVWzc9KJ8p+FAP
         GbyXJbkieLiHtRK3u9ish3Tj7ARCLAHgiBciPwAtLT8+LSYpZNFWupbsEY15xQ+81Wzf
         eMQw//8QS2uHzAvOclTo1hIz/M+w1jQVryCWH0UwmOpXmNzUvga74vWQdqxaTB6jGqFr
         q5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r9XoiPyRGQw6pIuIe09VtI/NVIpLwOgA0mQS/fevW1A=;
        b=jzSnKnE0mkoF7NGSfJrdIvehA98YWNnUWWFoPplDhBsob+0OPc0kmdIG8li001vNax
         54lWNHecHvFHH8vHd4Ub0SO6qlsJ1pdOHTHbXUiRxSIijOSMFq5X1E6nXd2xzU1/OaEa
         /IKUzsdvdjlilwGCFVo5yHQLoAZ+QVuSQ4ABQKq/Fp39VnU+dJZVaHsjJL6DEzdfrmbV
         d3rzG51T6qWZR+BIDoc9l9eSyA7fhv19dA+E6AgAerogp0S+oY0+V9QB44Bu4cvUZ9MV
         dohLBo8VfZ1dPdrX8qjicvlt34zF5ICw8GhnQTqsQrzgh9Wbgw6ixGkvaSftgqydmeGE
         JLfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329x0iZ7jO+O44iBNJ31IXIZ5Qpv4mblMkxX4qQlTKPEzL9krmQ
	0nwEy473b+xlNEwhIJHGmEc=
X-Google-Smtp-Source: ABdhPJyjbTAidkSncqgHjxmRMF+PokWDOdBrXXyyHv8DuWz1LbFFX0C+l/yLtiM9s9QUO/gklqru8g==
X-Received: by 2002:a62:ea14:0:b029:1bf:f580:3375 with SMTP id t20-20020a62ea140000b02901bff5803375mr11079852pfh.53.1612075869788;
        Sat, 30 Jan 2021 22:51:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls6681675pll.0.gmail; Sat, 30
 Jan 2021 22:51:09 -0800 (PST)
X-Received: by 2002:a17:90b:4a02:: with SMTP id kk2mr11617187pjb.115.1612075869189;
        Sat, 30 Jan 2021 22:51:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612075869; cv=none;
        d=google.com; s=arc-20160816;
        b=qu2MTNYXHF4/Ap9nrYOzwe8G2jS1oYZadv3yM4i3lx0XSdGKMpYNPeWoIJPH08pFZH
         KMK3D8TLuE6nruSyURjNshwF1CH44Wnka+tp5h5yi4I1MxVwguwpAC+0MAa+frzQyFTf
         obvVujZejjVhXCuh9c83k659OmZ22FpqU788lAxn3wHJ1v/zd1HubGo9HyxSSa/BTClC
         32IizxBfnN1Zu8mNw1K1vFbO3tcOLGHcmjp86S8WHZWgvC36YigZLgRnRTx43lJTU6RE
         rcuUj2T4Ezdp9o+dZrcsZb71JNHm/GwcjKuoAcWOASvblpN9sWkXo0x6KjpnwMLqNza6
         CnBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=OkUW33YethG0Ach7PhFP7UPURGBgreLWIUtirlrwDug=;
        b=sS6xYGg7xPbElPDB8iLGpoQK+EAar2Rrjv7wH4fxeBs4gyB9VYYbm9PaeLzEfBuclg
         QU5MywepBAtg7Fbtt2vhZBADCFoJYRBgnxn6uTCJESWiGrATfG7etPXAjLHqNnFszYnO
         UE9kbf4Oa57xRymSIGWCuB9RcUraaBlID4JKNJfxiw2gubxY6Y5k9Lw7SGWBFYSjPK7e
         Iidomx7yfXKxlUP13SZWKx/3hWuPOQSqrvlKdjtkkMkWT/C7JynsCGgjn7NcQiUt/kvT
         s56Zgrvoz2DzRo+GgDXtJ9QQj4a+ddoTQD1MjTMvFj8G6qEcrLT9OQhsJyrLHVRzfnFp
         +EvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QzogORSi;
       spf=pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id kk5si62543pjb.1.2021.01.30.22.51.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Jan 2021 22:51:09 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-7q20qKw3OomVJWIqDbt6GQ-1; Sun, 31 Jan 2021 01:51:05 -0500
X-MC-Unique: 7q20qKw3OomVJWIqDbt6GQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0A97802B45
	for <clang-built-linux@googlegroups.com>; Sun, 31 Jan 2021 06:51:04 +0000 (UTC)
Received: from [172.23.4.2] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DC54312D7E;
	Sun, 31 Jan 2021 06:50:57 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0-rc5
 (mainline.kernel.org-clang)
Date: Sun, 31 Jan 2021 06:50:57 -0000
CC: Milos Malik <mmalik@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Fei Liu <feliu@redhat.com>, Erico Nunes <ernunes@redhat.com>,
 Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>,
 David Arcari <darcari@redhat.com>
Message-ID: <cki.D61BA413F5.XGZAOML156@redhat.com>
X-Gitlab-Pipeline-ID: 622663
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com/
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/622663
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QzogORSi;
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
            Commit: 8c947645151c - Merge tag 'devicetree-fixes-for-5.11-2' =
of git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/01/30/622663

One or more kernel tests failed:

    ppc64le:
     =E2=9D=8C selinux-policy: serge-testsuite

    aarch64:
     =E2=9D=8C selinux-policy: serge-testsuite
     =E2=9D=8C Networking bridge: sanity

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
       =E2=9C=85 LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9C=85 Memory function: memfd_create
       =E2=9C=85 AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
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

    Host 2:
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
clang-built-linux/cki.D61BA413F5.XGZAOML156%40redhat.com.
