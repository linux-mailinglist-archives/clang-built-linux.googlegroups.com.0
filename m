Return-Path: <clang-built-linux+bncBC4INQUBT4IRBIUKZSAAMGQENGY6FTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DF22E307E3D
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:40:35 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id z8sf4363554qva.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:40:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611859234; cv=pass;
        d=google.com; s=arc-20160816;
        b=HtBXo6X3t7wpP4H1Cc5VidPzvyejCKBGn7b5hmAbEflGibZ4XE/4jXab1hFkZda+DN
         uPfIpmeMVxo2VtHpdZ9/sLbzEURs5qGYIboXJ9rNC7DxWXOWhIOe63eHHGOPzHhAb/pf
         XcmYuEuIHmt5yUCLN8+uRUTb+rj8MsLltoRhNiMz6nc/T1WweOUfQazBNK8FqzH0x4T1
         FUI1Zd733BOQ8YtbIY6/D2EqPyHZfs0M7cg7qwlt7STzP+EiPsP362Fr6isQZtDYcCFw
         tvOUmlqioQGjqt+9xR767Mk+Pk312qOydBAlZW+GBfKL+WAV3X1kgrCgACqNi8pYHq1y
         lA5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=O8sdhm8ul/NnMwCLDtHP9UHh4yBQNZjHXZvx+J2ppTA=;
        b=F6jlz5yvmrGTRIcPJlgHGPMV7FdqwCKE6kob0vqs+t/tcLMtazq+W1FMmYjf6MN9bp
         QDORR1xPN58BT9pRMYzBxh/hKhYk3C9AvBvkOx2cZ6PY/2c1UB78bYGw09lh9foEBnqq
         7BDUjd+amR35wZLE0exuMb3aGjQLhBCxQoiyBulaPSrfdn/d5Sy5+0viduNt0qkSMA+Z
         wbWC7mXOH0B47NrM3OsJ5u7V1Ykq7galYux/XG3hEyy6M4HwR7LR5aH2VNiAzGXdDoK2
         PkGzaOUbzwXYuHsT6XlUxIHO6Bzp/nzeN7JK0sRGXLr3Gsv+okhMHxpWEJReTj6b9Kqg
         neMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P3VPDHsA;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O8sdhm8ul/NnMwCLDtHP9UHh4yBQNZjHXZvx+J2ppTA=;
        b=CIvVUEP2KcB6xQaO0gUffCgeJ0hSob8d9/0MhQNzyYWWAzdpS75eO/I27fhL/Lef/t
         hokMSJNt8pcv1UIn5kAn0wxntTpxHBU1alImQNa8jDXGnp32EJ2t6vvk6vasMqpuOPjW
         +k3UT1PBQifSiaXCoz30AP4r0lFVcPOThFayPzpt2Vh4kpUOwDa/D7+hrU36bSrIWgv2
         9mR9vDEeD0GmrkqH35+G3hs6fN67aEOGgu1f9+9SKV9ly0KLwqF0gWpEq8LeyQTPglhq
         cu/jgxEhGZHQWnJVkG+0UEbp8XCyHNJoM7V67A8XLzn+OJBr76j6amibpznTm8Rzwqy1
         MO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O8sdhm8ul/NnMwCLDtHP9UHh4yBQNZjHXZvx+J2ppTA=;
        b=IoVrzAlALNZoUvEpcwgxQqPceK48BTcw0ylXoXiIuBR1CZ6N7LUk0TCOBRE7FNlQ1s
         WviJ5gUORXPGQ+6kQGuQ6fZOJMvmvN/g+NjfetEBxFfYLD6qoiraXyFgQhLwFaTYdpZ0
         irIpy9e9nTSYF+ob26AueFiWJIdjz1UoFRPGmTCD5e26lGXMNkE+Lh5HYSqCgN0xcYld
         K9IC67VTci/bQk4kk5NBGGplHzJmWmFK2DZxac2HROEduTgk7YN5HvwI0aAhBPyoE2ru
         LVhBoyVeQYTMyHXFPTGJOiUgIujtzrkGGWbAOuiplzpYiwg0fh3b1qV3BlsLtFi1Fp5o
         vzCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sIHN6hM1j9IyaxljrK5j1PwuA3a3VMTuiRVWbfrmAOOkxOpDf
	n5/jmVxKpeuOPBdX4D8/DZs=
X-Google-Smtp-Source: ABdhPJxuXuhxoEGi4+ffkgaszKy5W/FemlHSonw8vwQ6ZK2de8WSrN30vKDJEgeOgw4CW3RQ/uSNGQ==
X-Received: by 2002:a37:2f85:: with SMTP id v127mr600876qkh.18.1611859234452;
        Thu, 28 Jan 2021 10:40:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4756:: with SMTP id k22ls2391668qtp.1.gmail; Thu, 28 Jan
 2021 10:40:34 -0800 (PST)
X-Received: by 2002:ac8:4e53:: with SMTP id e19mr883088qtw.77.1611859234044;
        Thu, 28 Jan 2021 10:40:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611859234; cv=none;
        d=google.com; s=arc-20160816;
        b=PpjztbT7FtyrUEphfRcPefVdD8KdCRlO06QnJPGv9vruChhsTNiN00uwrEAA1oH+/X
         3W5vKGLCIj3ps6XEODij+IsdpM5udsItIWhdfpoG9ZqMq8gINe/9qavDktYIOP37XR3e
         B/Xsr2PbFHRk8MzYckwIlRsgpKoKC0513goMPOSvCBpCwvy0s2ZWO1+q9k4K2FmywVr7
         /9pxVnup7hW0ehwzg8LyhQFZs3ZmJTYZ9mNignTKaRh1qAX3pAJeMDSX/i2L1GwfMKG9
         yEc5ZYuVjz0O9neC9RhvzscnYkACGaXUGsOvJz7HPBtICC5yqe4MQwp4V/S0idMJbve3
         K/4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=x6AWnpMS94zh4cZqAZQ+GRunTDErwhNQSCMzZdhDNfk=;
        b=IILE+Wn9ElMw6CmRv51bec5HV6YNJUsEm5B0ZQmtxa/YWPnzKfQ3SnQnHSCl+pvbiS
         o6L2N0LQojK+FFXgDXgQevN2KiGhPSDCQkNogAHHGY1tKsu6O0X9PSR45ZpTpxpMwbCr
         Y9446IWKR0aqLGsn10C+ZzrCaR46Yaw8E9kOCLff2c/dU++fglP/lvwR29AXM6SsZ7tM
         rlPWO+felzjd6gFivFpXH81bTAHRoVFqfAUGheF5pIaMWBhVj9/kzLkGAKsH+VfZfq3M
         ZFZZ3zTVJUW8SuC8dyVT2FM2mDIBtExyWNYSMYCuf84KB0fuT3wrVoweciMHeC5b5A9v
         wxpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P3VPDHsA;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id a26si350872qkl.1.2021.01.28.10.40.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:40:34 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-ehP9kJZYMDSZHFVG5bnv5w-1; Thu, 28 Jan 2021 13:40:28 -0500
X-MC-Unique: ehP9kJZYMDSZHFVG5bnv5w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E5E6801817;
	Thu, 28 Jan 2021 18:40:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 761EC100239A;
	Thu, 28 Jan 2021 18:40:27 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5A4C84BB7B;
	Thu, 28 Jan 2021 18:40:27 +0000 (UTC)
Date: Thu, 28 Jan 2021 13:40:24 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Memory Management <mm-qe@redhat.com>, 
	Erico Nunes <ernunes@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	David Arcari <darcari@redhat.com>, Xiaowu Wu <xiawu@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>
Message-ID: <486891873.25553743.1611859224858.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAKwvOdmRu4LFHJGMaLkhXrYJ_vOe4qqVnQJgPZ_X8n+aLpCvgg@mail.gmail.com>
References: <cki.DD9C3E676B.K5YJAZM8NR@redhat.com> <CAKwvOdmRu4LFHJGMaLkhXrYJ_vOe4qqVnQJgPZ_X8n+aLpCvgg@mail.gmail.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel_5?=
 =?utf-8?Q?.11.0-rc5_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.115.176, 10.4.195.6]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0-rc5 (mainline.kernel.org-clang)
Thread-Index: 5A1SBoR0eMzZF1VFoK5mUjVqexPoGQ==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=P3VPDHsA;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
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



----- Original Message -----
> From: "Nick Desaulniers" <ndesaulniers@google.com>
> To: "CKI Project" <cki-project@redhat.com>
> Cc: "Milos Malik" <mmalik@redhat.com>, "Yi Zhang" <yi.zhang@redhat.com>, =
"clang-built-linux"
> <clang-built-linux@googlegroups.com>, "Memory Management" <mm-qe@redhat.c=
om>, "Erico Nunes" <ernunes@redhat.com>,
> "Ondrej Mosnacek" <omosnace@redhat.com>, skt-results-master@redhat.com, "=
David Arcari" <darcari@redhat.com>, "Xiaowu
> Wu" <xiawu@redhat.com>, "Jan Stancek" <jstancek@redhat.com>
> Sent: Thursday, January 28, 2021 7:06:44 PM
> Subject: Re: =E2=9D=8C FAIL: Test report for kernel 5.11.0-rc5 (mainline.=
kernel.org-clang)
>=20
> On Thu, Jan 28, 2021 at 3:52 AM CKI Project <cki-project@redhat.com> wrot=
e:
> >
> >
> > Hello,
> >
> > We ran automated tests on a recent commit from this kernel tree:
> >
> >        Kernel repo:
> >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it
> >             Commit: 76c057c84d28 - Merge branch 'parisc-5.11-2' of
> >             git://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc=
-linux
> >
> > The results of these automated tests are provided below.
> >
> >     Overall result: FAILED (see details below)
> >              Merge: OK
> >            Compile: OK
> >  Selftests compile: FAILED
> >              Tests: FAILED
> >
> > All kernel binaries, config files, and logs are available for download
> > here:
> >
> >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/01/27/622359
> >
> > One or more kernel tests failed:
> >
> >     ppc64le:
> >      =E2=9D=8C selinux-policy: serge-testsuite
> >
> >     aarch64:
> >      =E2=9D=8C selinux-policy: serge-testsuite
> >
> >     x86_64:
> >      =E2=9D=8C LTP
> >      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>=20
> 00:00:09   GEN
> /builds/cki-project/cki-pipeline/workdir/tools/testing/selftests/bpf/tool=
s/build/bpftool/vmlinux.h
> 00:00:09 Error: failed to load BTF from
> /builds/cki-project/cki-pipeline/workdir/vmlinux: No such file or
> directory
>=20
>=20
> Any idea what's being run to gen BTF?
>=20

Wwe had to turn off CONFIG_DEBUG_INFO_BTF due to pahole segfaulting when
building with clang so maybe that's causing the problems. That said, bpf
selftests require a newer clang version we don't have yet so they'd fail
anyways :/

>=20
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/01/27/622359/build_x86_64_redhat%3A1085744/tests/selinux_policy=
_serge_testsuite/9473607_x86_64_3_resultoutputfile.log
>=20
> seems like maybe the selinux test?  Any way to get a copy of results.log?
>=20
> Is it being renamed to
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/01/27/622359/build_x86_64_redhat%3A1085744/tests/selinux_policy=
_serge_testsuite/9473607_x86_64_3_selinux-testsuite.results.5.11.0-rc5.txt?
>=20

Correct, there's an info message in the logs saying that later on:
:: [ 15:45:05 ] :: [   INFO   ] :: Sending results.log as selinux-testsuite=
.results.5.11.0-rc5.txt

> It looks like clang specific command line args are being passed to
> GCC?  If these are taken from the kernel build, then I assume the
> selinux-testsuite needs to be reinvoked with clang?
>=20

We had a similar discussion with Nathan and Ondrej about this test in the
thread here:

https://groups.google.com/g/clang-built-linux/c/Xyn43s35720

Not sure if you have any comments on Ondrej's idea there, or alternative id=
eas?


Veronika

> >
> >
> > We hope that these logs can help you find the problem quickly. For the =
full
> > detail on our testing procedures, please scroll to the bottom of this
> > message.
> >
> > Please reply to this email if you have any questions about the tests th=
at
> > we
> > ran or if you have any suggestions on how to make future tests more
> > effective.
> >
> >         ,-.   ,-.
> >        ( C ) ( K )  Continuous
> >         `-',-.`-'   Kernel
> >           ( I )     Integration
> >            `-'
> > _______________________________________________________________________=
_______
> >
> > Compile testing
> > ---------------
> >
> > We compiled the kernel for 3 architectures:
> >
> >     aarch64:
> >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
> >
> >     ppc64le:
> >       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> >
> >     x86_64:
> >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
> >
> >
> > We built the following selftests:
> >
> >   x86_64:
> >       net: fail
> >       bpf: fail
> >       install and packaging: fail
> >
> > You can find the full log (build-selftests.log) in the artifact storage
> > above.
> >
> >
> > Hardware testing
> > ----------------
> > We booted each kernel and ran the following tests:
> >
> >   aarch64:
> >     Host 1:
> >        =E2=9C=85 Boot test
> >        =E2=9C=85 ACPI table test
> >        =E2=9C=85 ACPI enabled test
> >        =E2=9C=85 LTP
> >        =E2=9C=85 Loopdev Sanity
> >        =E2=9C=85 Memory: fork_mem
> >        =E2=9C=85 Memory function: memfd_create
> >        =E2=9C=85 AMTU (Abstract Machine Test Utility)
> >        =E2=9C=85 Networking bridge: sanity
> >        =E2=9C=85 Networking socket: fuzz
> >        =E2=9C=85 Networking: igmp conformance test
> >        =E2=9C=85 Networking route: pmtu
> >        =E2=9C=85 Networking route_func - local
> >        =E2=9C=85 Networking route_func - forward
> >        =E2=9C=85 Networking TCP: keepalive test
> >        =E2=9C=85 Networking UDP: socket
> >        =E2=9C=85 Networking tunnel: geneve basic test
> >        =E2=9C=85 Networking tunnel: gre basic
> >        =E2=9C=85 L2TP basic test
> >        =E2=9C=85 Networking tunnel: vxlan basic
> >        =E2=9C=85 Networking ipsec: basic netns - transport
> >        =E2=9C=85 Networking ipsec: basic netns - tunnel
> >        =E2=9C=85 Libkcapi AF_ALG test
> >        =E2=9C=85 pciutils: update pci ids test
> >        =E2=9C=85 ALSA PCM loopback test
> >        =E2=9C=85 ALSA Control (mixer) Userspace Element test
> >        =E2=9C=85 storage: SCSI VPD
> >         =E2=9C=85 CIFS Connectathon
> >         =E2=9C=85 POSIX pjd-fstest suites
> >         =E2=9D=8C Firmware test suite
> >         =E2=9C=85 jvm - jcstress tests
> >         =E2=9C=85 Memory function: kaslr
> >         =E2=9C=85 Ethernet drivers sanity
> >         =E2=9C=85 Networking firewall: basic netfilter test
> >         =E2=9C=85 audit: audit testsuite test
> >         =E2=9C=85 trace: ftrace/tracer
> >         =E2=9D=8C kdump - kexec_boot
> >
> >     Host 2:
> >
> >        =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
> >        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
> >        This is not the fault of the kernel that was tested.
> >
> >        =E2=9C=85 Boot test
> >        =E2=9D=8C selinux-policy: serge-testsuite
> >        =E2=9C=85 storage: software RAID testing
> >        =E2=9C=85 stress: stress-ng
> >         =E2=9C=85 xfstests - ext4
> >         =E2=9C=85 xfstests - xfs
> >         =E2=9C=85 xfstests - btrfs
> >         =E2=9D=8C IPMI driver test
> >         =E2=9C=85 IPMItool loop stress test
> >         =E2=9C=85 Storage blktests
> >         =E2=9C=85 Storage block - filesystem fio test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue scheduler tes=
t
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module t=
est
> >
> >   ppc64le:
> >     Host 1:
> >        =E2=9C=85 Boot test
> >        =E2=9D=8C selinux-policy: serge-testsuite
> >        =E2=9C=85 storage: software RAID testing
> >         =E2=9C=85 xfstests - ext4
> >         =E2=9C=85 xfstests - xfs
> >         =E2=9C=85 xfstests - btrfs
> >         =E2=9C=85 IPMI driver test
> >         =E2=9C=85 IPMItool loop stress test
> >         =E2=9C=85 Storage blktests
> >         =E2=9C=85 Storage block - filesystem fio test
> >         =E2=9C=85 Storage block - queue scheduler test
> >         =E2=9D=8C Storage nvme - tcp
> >         =E2=9C=85 Storage: swraid mdadm raid_module test
> >
> >     Host 2:
> >
> >        =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
> >        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
> >        This is not the fault of the kernel that was tested.
> >
> >        =E2=9C=85 Boot test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilte=
r test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >
> >     Host 3:
> >
> >        =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
> >        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
> >        This is not the fault of the kernel that was tested.
> >
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilte=
r test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >
> >     Host 4:
> >
> >        =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
> >        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
> >        This is not the fault of the kernel that was tested.
> >
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunn=
el
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
> >        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Eleme=
nt test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilte=
r test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >
> >   x86_64:
> >     Host 1:
> >        =E2=9C=85 Boot test
> >         =E2=9C=85 kdump - sysrq-c
> >         =E2=9C=85 kdump - file-load
> >
> >     Host 2:
> >
> >        =E2=9A=A1 Internal infrastructure issues prevented one or more t=
ests (marked
> >        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architect=
ure.
> >        This is not the fault of the kernel that was tested.
> >
> >        =E2=9C=85 Boot test
> >        =E2=9C=85 ACPI table test
> >        =E2=9D=8C LTP
> >        =E2=9C=85 Loopdev Sanity
> >        =E2=9C=85 Memory: fork_mem
> >        =E2=9C=85 Memory function: memfd_create
> >        =E2=9C=85 AMTU (Abstract Machine Test Utility)
> >        =E2=9C=85 Networking bridge: sanity
> >        =E2=9C=85 Networking socket: fuzz
> >        =E2=9C=85 Networking: igmp conformance test
> >        =E2=9C=85 Networking route: pmtu
> >        =E2=9C=85 Networking route_func - local
> >        =E2=9C=85 Networking route_func - forward
> >        =E2=9C=85 Networking TCP: keepalive test
> >        =E2=9C=85 Networking UDP: socket
> >        =E2=9C=85 Networking tunnel: geneve basic test
> >        =E2=9C=85 Networking tunnel: gre basic
> >        =E2=9C=85 L2TP basic test
> >        =E2=9C=85 Networking tunnel: vxlan basic
> >        =E2=9C=85 Networking ipsec: basic netns - transport
> >        =E2=9C=85 Networking ipsec: basic netns - tunnel
> >        =E2=9C=85 Libkcapi AF_ALG test
> >        =E2=9C=85 pciutils: sanity smoke test
> >        =E2=9C=85 pciutils: update pci ids test
> >        =E2=9C=85 ALSA PCM loopback test
> >        =E2=9C=85 ALSA Control (mixer) Userspace Element test
> >        =E2=9C=85 storage: SCSI VPD
> >         =E2=9C=85 CIFS Connectathon
> >         =E2=9C=85 POSIX pjd-fstest suites
> >         =E2=9D=8C Firmware test suite
> >         =E2=9C=85 jvm - jcstress tests
> >         =E2=9C=85 Memory function: kaslr
> >         =E2=9C=85 Ethernet drivers sanity
> >         =E2=9C=85 Networking firewall: basic netfilter test
> >         =E2=9C=85 audit: audit testsuite test
> >         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
> >         =E2=9D=8C kdump - kexec_boot
> >
> >     Host 3:
> >        =E2=9C=85 Boot test
> >        =E2=9D=8C selinux-policy: serge-testsuite
> >        =E2=9C=85 storage: software RAID testing
> >        =E2=9C=85 stress: stress-ng
> >         =E2=9D=8C CPU: Frequency Driver Test
> >         =E2=9C=85 xfstests - ext4
> >         =E2=9C=85 xfstests - xfs
> >         =E2=9C=85 xfstests - btrfs
> >         =E2=9C=85 xfstests - nfsv4.2
> >         =E2=9C=85 xfstests - cifsv3.11
> >         =E2=9D=8C IPMI driver test
> >         =E2=9C=85 IPMItool loop stress test
> >         =E2=9C=85 Storage blktests
> >         =E2=9C=85 Storage block - filesystem fio test
> >         =E2=9C=85 Storage block - queue scheduler test
> >         =E2=9C=85 Storage nvme - tcp
> >         =E2=9C=85 Storage: swraid mdadm raid_module test
> >
> >   Test sources: https://gitlab.com/cki-project/kernel-tests
> >     Pull requests are welcome for new tests or improvements to existing
> >     tests!
> >
> > Aborted tests
> > -------------
> > Tests that didn't complete running successfully are marked with =E2=9A=
=A1=E2=9A=A1=E2=9A=A1.
> > If this was caused by an infrastructure issue, we try to mark that
> > explicitly in the report.
> >
> > Waived tests
> > ------------
> > If the test run included waived tests, they are marked with . Such test=
s
> > are
> > executed but their results are not taken into account. Tests are waived
> > when
> > their results are not reliable enough, e.g. when they're just introduce=
d or
> > are
> > being fixed.
> >
> > Testing timeout
> > ---------------
> > We aim to provide a report within reasonable timeframe. Tests that have=
n't
> > finished running yet are marked with =E2=8F=B1.
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps
> > "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an
> > email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/clang-built-linux/cki.DD9C3E676B.K5YJ=
AZM8NR%40redhat.com.
>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/486891873.25553743.1611859224858.JavaMail.zimbra%40redhat=
.com.
