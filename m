Return-Path: <clang-built-linux+bncBDY57XFCRMIBB2M22SAQMGQE5SPDJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id AF98B322BFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 15:12:58 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id 6sf2036075oir.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 06:12:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614089577; cv=pass;
        d=google.com; s=arc-20160816;
        b=jb7apBKvCN1TC0+q2ObwINGaIM92bBaeyV6gkFYq+E/OM7emKo9U4qVSD418FNlvhJ
         BXUoylfSFYWPwTKBrz1nG1fmCT6VnvYzYy3ZSm2wuea7g2WctPFqpLufdx3llW7OIhmG
         9JXuWEIV4En/xcUtHmCOS4uvmkGHzklRSSpsDw8GtFqOoGAB1oDFU7MHFOPZicpYxiNc
         2IsS1VtGjPebzeFDvFq6OqkijsTAok4C7zeI79Bms/mRJCXPNyDvPQHHfZVUGrtSfk6Q
         TK5qquye7yB15N+3D7spicDv7hkSOA+a3xrTdqgsUlVN62j6opjAJxhYsYbs8lqRnCB7
         Ot7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:cc:date:subject:to:from:mime-version:sender
         :dkim-signature;
        bh=Rpvm7qCKnAm5jwpE7V4fEx+j124Rd2EpiqjcaAX97OI=;
        b=d7Djg6YGtQfR7kqV8nKKvBMTYKqR0bkNMjV7TH13c8WTquRb9n3HMNXY4uAYcjope+
         A7ETrpanyWUEmsLX8lIAnJZUYzKPI6gKs3pJs6xpgpOnHxKc0Kas5y9txete4cg9PWcb
         1Eb5A5mr3sTW+IIe5zvED/5bCtNSC002Lv13nxMPWZAbMEuv9+I7WoydDYqfAAyeCP/a
         Ci2nanoiP0KvAmV/UVcwKguGPgnJVLCAXd6uCXtmiNom12SqPsYO9vlVCMY6rTDUL5BP
         0hcmzaMTBUdrGRKTe2C5CT12MOVxGEoT9z8VoI0PLk80O9xYA/eo7RIDsO7TIFw/dC38
         7Hbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KpGgbfg0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:cc:message-id
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rpvm7qCKnAm5jwpE7V4fEx+j124Rd2EpiqjcaAX97OI=;
        b=bSiaE0IeM0FI/YsuvY5AaIZRxgrtZ0gEyqT4NfQnP23CH+ZR4+dE6DtVUUHwXEpKJo
         HRg40dq4rPQEDHqZe6eSoFRCk3UCCRDLIHpUfb2WYXatIHMK/XmyZ3o/bOPwZjknpcOP
         749ShnsWUL3ihgPaGarPjMU5LVe3UnzhWetk7FrHjzuDOzRtnOeNwlqQ/zUEK+QPQLAd
         ZLOQf2vqAhFVGl44OHokWthhCAvDYvilmrSBRMGGJig7uf9vtiwAom6F8KrWXan+JEtv
         Q9mal8qtVwID7uHkGwvkkCOkOOp48saiEPP6mLedScQzr0qwOHCDfeAFRdOpdhinW95o
         lEJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date:cc
         :message-id:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rpvm7qCKnAm5jwpE7V4fEx+j124Rd2EpiqjcaAX97OI=;
        b=TfAildSooC5YkKhgysxdxx6UVEzMxbootUrsBfjqIIzxH7iCCile/6AcOCHnlDiVc0
         l4i39/rgfIJikprILAQwRL2UnXf26cJJI1indKRjWW5S9b98wZCbtYf6GwzD22ykZi73
         wOlxSeZ1U3YmCQjqiAZ71IJvLDZznYVFz04V7qaVhBe2y9a8G4Ugm486Wud44INHXuDt
         5q6UC5Rf63pjf0chAMbmcvk4pO53YU85IqHmGgStsrNI/E9GK0p+PcqFlnhDJvQbcZYM
         oTvarzeEPciMQ71k2Wx42pq7re/JXFE+jHmM7kuFIx82dz6tVAQnrlxuHY73jVXDZIzz
         J5jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pgJMFOQ6gbZos+JFV4eP3pXh7bXYUPMUW2D/DQGvRtGSMXwtY
	0k/jH0Im6CofVhwRnzyxh6U=
X-Google-Smtp-Source: ABdhPJw6/kpRjwl8kkwbUt+RrcKnIIa85S3oD99uohSzLUju500I5Mot5MVNb7gBcYZdpvbJ2hstCQ==
X-Received: by 2002:a05:6830:2452:: with SMTP id x18mr8636020otr.322.1614089577529;
        Tue, 23 Feb 2021 06:12:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a0e:: with SMTP id g14ls1295323otn.3.gmail; Tue, 23 Feb
 2021 06:12:57 -0800 (PST)
X-Received: by 2002:a9d:66d9:: with SMTP id t25mr2557581otm.237.1614089577110;
        Tue, 23 Feb 2021 06:12:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614089577; cv=none;
        d=google.com; s=arc-20160816;
        b=pEnenU6yVOvrS7VUhPp8W7qD6PPTbqcH3zSgcq+pe+ianV/q/rrtl5GrPYhXDHSy6G
         2/4F8mLeEq2cqV9wnkcwr6+nckryS7iI+l6352SwImu+T9V2MI9gxhgtregelScMjbhI
         yBsMRKZtB8Py2+DSy0rftXnJc15oHXPwepo+kuIqVR0lDkHD4it1htLFFhEkEBHngQRB
         nTkwLR7Zg7XSDeM9loPxadTlulLTHXhXMEHRnsPhrjeDUrdsBtTOl7R/87j1jK8G+kLm
         0iznz5klxhuBo3Tcdd1ppJhaxgFEvsVys3ma8MiZhgPu4FlXI6L93Q9+un5bQ7oVptPm
         vEvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:cc:date:subject:to:from
         :mime-version:dkim-signature;
        bh=KvYwclSfNfgCZg5QPSpvftqMIgpWpjmvPK6kF8wLFzY=;
        b=IIxJdg/MC4P4bpe+SYzX48at2775eIk8Ji0tIb2KObkbZRLpTgRXKNbv6aSg8oa97A
         rp1FML1Wxq6rCHY4ZrSOZ0zveywYvP5+S5XGYsNGQsbE6F5Hql9XRX0VjJkjYYnjIDyG
         tzuu2Y6btYATCKUFHuoHsuS2oKnsf6i9wqcgPkuY6BA8bBcz8P7mUrRc1Lud+h/kU9eo
         lyd3YxgJZS7EOyQp7MIoVn3GBdvfRjLRniPQOmk+gfI8dfWnuwBJBfHNMB+h+gi4nCT0
         +CE9qF2ZZtd0QY63fpiGlFqBqokV8gfaCbkNhhfLHBz25YQSQuR1JwzALPwg9b3F4AD4
         ZssA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KpGgbfg0;
       spf=pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=cki-project@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s7si90946ois.0.2021.02.23.06.12.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 06:12:57 -0800 (PST)
Received-SPF: pass (google.com: domain of cki-project@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-2qwW6aWkNGSkG7oyFlZgig-1; Tue, 23 Feb 2021 09:12:53 -0500
X-MC-Unique: 2qwW6aWkNGSkG7oyFlZgig-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02001835E2B
	for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 14:12:53 +0000 (UTC)
Received: from [172.20.9.196] (unknown [10.0.115.152])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A82D25D6AB;
	Tue, 23 Feb 2021 14:12:41 +0000 (UTC)
MIME-Version: 1.0
From: CKI Project <cki-project@redhat.com>
To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
Subject: =?utf-8?b?4p2M?= FAIL: Test report for kernel 5.11.0
 (mainline.kernel.org-clang)
Date: Tue, 23 Feb 2021 14:12:40 -0000
CC: Al Stone <ahs3@redhat.com>, Memory Management <mm-qe@redhat.com>,
 Jan Stancek <jstancek@redhat.com>, Fei Liu <feliu@redhat.com>,
 Jianlin Shi <jishi@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 William Gomeringer <wgomerin@redhat.com>,
 Jaroslav Kysela <jkysela@redhat.com>, Guangwu Zhang <guazhang@redhat.com>,
 Jianhong Yin <jiyin@redhat.com>, Zorro Lang <zlang@redhat.com>,
 Erico Nunes <ernunes@redhat.com>, Christine Flood <chf@redhat.com>,
 Yi Chen <yiche@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Ondrej Moris <omoris@redhat.com>,
 Fine Fan <ffan@redhat.com>, David Arcari <darcari@redhat.com>,
 Xiong Zhou <xzhou@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
 Milos Malik <mmalik@redhat.com>, Erik Hamera <ehamera@redhat.com>,
 Yi Zhang <yizhan@redhat.com>
Message-ID: <cki.F3D06D4D06.Q08W8KOXAV@redhat.com>
X-Gitlab-Pipeline-ID: 624527
X-Gitlab-Url: https://xci32.lab.eng.rdu2.redhat.com
X-Gitlab-Path: /cki-project/cki-pipeline/pipelines/624527
X-DataWarehouse-Revision-IID: 10295
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cki-project@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KpGgbfg0;
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
            Commit: e913a8cdc297 - Merge tag 'topic/iomem-mmap-vs-gup-2021-=
02-22' of git://anongit.freedesktop.org/drm/drm

The results of these automated tests are provided below.

    Overall result: FAILED (see details below)
             Merge: OK
           Compile: OK
 Selftests compile: FAILED
             Tests: FAILED

All kernel binaries, config files, and logs are available for download here=
:

  https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?pre=
fix=3Ddatawarehouse-public/2021/02/23/624527

One or more kernel tests failed:

    x86_64:
     =E2=9D=8C ACPI table test
     =E2=9D=8C LTP
     =E2=9D=8C Memory function: memfd_create
     =E2=9D=8C AMTU (Abstract Machine Test Utility)
     =E2=9D=8C Networking bridge: sanity
     =E2=9D=8C Networking route: pmtu
     =E2=9D=8C Libkcapi AF_ALG test
     =E2=9D=8C pciutils: sanity smoke test
     =E2=9D=8C ALSA PCM loopback test
     =E2=9D=8C storage: SCSI VPD
     =E2=9D=8C storage: software RAID testing

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
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    ppc64le:
      make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    s390x:
      make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg

    x86_64:
      make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg


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

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ACPI table test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ACPI enabled test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
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
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element t=
est
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic =
netfilter test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 3:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

    Host 4:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
       =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tests=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesystem =
fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

  ppc64le:

    =E2=9A=A1 Internal infrastructure issues prevented one or more tests (m=
arked
    with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
    This is not the fault of the kernel that was tested.

    Probable cause: Distro problem, check kpet-db and Beaker

  s390x:

    =E2=9A=A1 Internal infrastructure issues prevented one or more tests (m=
arked
    with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
    This is not the fault of the kernel that was tested.

    Probable cause: Distro problem, check kpet-db and Beaker

  x86_64:
    Host 1:
       =E2=9C=85 Boot test
       =E2=9D=8C ACPI table test
       =E2=9D=8C LTP
       =E2=9C=85 Loopdev Sanity
       =E2=9C=85 Memory: fork_mem
       =E2=9D=8C Memory function: memfd_create
       =E2=9D=8C AMTU (Abstract Machine Test Utility)
       =E2=9D=8C Networking bridge: sanity
       =E2=9C=85 Networking socket: fuzz
       =E2=9C=85 Networking: igmp conformance test
       =E2=9D=8C Networking route: pmtu
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
       =E2=9D=8C Libkcapi AF_ALG test
       =E2=9D=8C pciutils: sanity smoke test
       =E2=9C=85 pciutils: update pci ids test
       =E2=9D=8C ALSA PCM loopback test
       =E2=9C=85 ALSA Control (mixer) Userspace Element test
       =E2=9D=8C storage: SCSI VPD
       =E2=9C=85 trace: ftrace/tracer
       =F0=9F=9A=A7 =E2=9D=8C CIFS Connectathon
       =F0=9F=9A=A7 =E2=9D=8C POSIX pjd-fstest suites
       =F0=9F=9A=A7 =E2=9D=8C Firmware test suite
       =F0=9F=9A=A7 =E2=9D=8C jvm - jcstress tests
       =F0=9F=9A=A7 =E2=9D=8C Memory function: kaslr
       =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
       =F0=9F=9A=A7 =E2=9D=8C Networking firewall: basic netfilter test
       =F0=9F=9A=A7 =E2=9D=8C audit: audit testsuite test
       =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot

    Host 2:

       =E2=9A=A1 Internal infrastructure issues prevented one or more tests=
 (marked
       with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architecture.
       This is not the fault of the kernel that was tested.

       Probable cause: Distro problem, check kpet-db and Beaker

       =E2=9C=85 Boot test
       =E2=9D=8C storage: software RAID testing
       =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
       =F0=9F=9A=A7 =E2=9C=85 CPU: Idle Test
       =F0=9F=9A=A7 =E2=9D=8C xfstests - ext4
       =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
       =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
       =F0=9F=9A=A7 =E2=9C=85 xfstests - cifsv3.11
       =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
       =F0=9F=9A=A7 =E2=9D=8C IPMItool loop stress test
       =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
       =F0=9F=9A=A7 =E2=9D=8C power-management: cpupower/sanity test
       =F0=9F=9A=A7 =E2=9D=8C Storage blktests
       =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sched=
uler test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test s=
uite
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_=
module test
       =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng

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
clang-built-linux/cki.F3D06D4D06.Q08W8KOXAV%40redhat.com.
