Return-Path: <clang-built-linux+bncBC4INQUBT4IRB4UQ6OAQMGQEN24N5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1DF327CAB
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 11:56:51 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id k10sf9102818qte.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 02:56:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614596210; cv=pass;
        d=google.com; s=arc-20160816;
        b=fRejRZMIKz8cP7IUdvm10rQDmj0KyOy+zwXlI53hnaCx3C+2oI8UYwjXuwtwJqk6Tq
         LFv04/qRU9qcA0DqmpO9JZs3zFbm3V9IpqojQK5yFWajH+ZoagoC4eSNcIXzF11iuxss
         nW3/wsccYhs0AGbWAyA/BCVt8VmabZdrdlAl1idTpKNuZopDyOMmI4CWwZqW/728hz93
         4m16Rl7L5TdH19iUZ4cfGLBQdj12emmBZRtfwIzFKpEh5Kw7YuhG+PB0syTcgpPLlmyL
         auZZYKwQctOLGWtq9QYvi5XvFXq6FCi+y8x6qAX3jevupHSgMKs86PoU9gloVYKZ5EN+
         TBbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=r47avmsehPlD1is37ciYC2BU5s5v5YRvFhGSB7ageKE=;
        b=WicLI2GjGXfohHO7XP15CxCH1ECi6dSz2n28cSC5IJ07mNmYkIY8LUWHZWN0CvswBp
         hGmDVhSOEcmzida+XmIWbip925J+37Si/86tHhNKdN3OASZtmR/YIibXS/UVG3MwLiTq
         HWCdPaBz6oFVv9PB88+Ip/Bixfcw7/OZm5D1F/6A0uSI72gTh+2rS7ohMiLv7XkmL3C+
         YoLoy9/i8I8VmwPbDUNdwmVHqHqdPeDvYmZl2J+ojLmr4agRTFzvFKZw7UGMcmSAiWUw
         qHrph3JynZcfr2XQAxuvynVeCHsTfSN7EOMSs96N9WJ1An3pl81sWw1CDS+LLQ2KeYXx
         lD8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AHka63ts;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r47avmsehPlD1is37ciYC2BU5s5v5YRvFhGSB7ageKE=;
        b=RrUJxYSjHwjImziHuLfJ3v/jHMuJFiI5q//IMNXsAAkNUTjznyn+0y+qisjmFQ7Ikn
         nGqRd01fwz4tO4IFtg3eWJplHRX7BLBsUVf2CsN7D8ueDameUqeo7RlAKJOWkOdyMAZB
         WsduoO1huo6C/Ok5izDn29vS5fN8RY7szNPUV2AW73mbNlie5kdRdz75A/evXTMnFBTH
         gGZbaqMZ1ZCb2NKZeaGSyJzUoS0xv/4gacq2Xa+YSeAotgj4cDGRUYoNopt0NVJWKN+D
         zhMpT4ezWlwR3XMibpkzSR9T45PFGpFCzSAgMbJF+OsdY5MMzX4l7EsmYXoYuebn5+25
         +8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r47avmsehPlD1is37ciYC2BU5s5v5YRvFhGSB7ageKE=;
        b=IVULOOUp5G4DhkQXiZqaHSg6W4b7FIiAw6dB4vgE64jUyTktpQbjQ0j9aPZXs1nciE
         6dwsbecVwBn7MbwkTmOpCmJF6WPuunH/Fb+51JILRSSEYq84Ol1wNh0wfZYhs1O0wCNs
         AkY9q+IJp8Y6cKyx3LVtKHn233Zu7e8ReiRs9qHcwKIujHBrXE1DwXKX+xMY4DgV0VIm
         FF2Vby+J6y/pUlQw+gCktBz/ruMRJGrm3LxNISryyGVHEFEZTdfed4E27fjtleBcZ06Q
         YQ04lk5RvudvQ0LMtHWgifNbfFdA6+6ZZNvthwVVAluDcgwfltJVHlNpAvJFJx+jZfPp
         rbeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OaUsNitovfaH40/zkQW9XJ3zJeogYR2DeOy7SgHgg1ZiVwAee
	xTxJCCp+2PBOUB/EXVg77b4=
X-Google-Smtp-Source: ABdhPJy5bbrcZxiHg6Y/0FGUY8EodZWhGtNaysR/s8I6u03sFjGJzqVlQ3JMoOz7AzkJA1kcuAjGPw==
X-Received: by 2002:ad4:50c7:: with SMTP id e7mr13854038qvq.58.1614596210750;
        Mon, 01 Mar 2021 02:56:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cb8e:: with SMTP id p14ls1172907qvk.0.gmail; Mon, 01 Mar
 2021 02:56:50 -0800 (PST)
X-Received: by 2002:a0c:b2d3:: with SMTP id d19mr13920580qvf.21.1614596210248;
        Mon, 01 Mar 2021 02:56:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614596210; cv=none;
        d=google.com; s=arc-20160816;
        b=hRFXq0AbDG/m46yYhvme7YuxylS8xRdckbKoHLeU4TlAsOtbmaY/dFf+n9GU2VJaks
         VRetHZKEo6MRjACOmEVLAHM5ZhOTY+1O6xOodaLGseXGE1Jy1ACFs7ojk9W0lNk3hwYm
         iVXyBVGvCsD0AelcbUtDjZU8RX/kVjKGHjvt/8clkmHwadA6Rp4YSBPrTnRXmgTUuQUq
         bfYQR+2LdRxvCKpnymD3zU4K2VQRFg1na00JVa3/V6FEYhSLnlOLavTI88OexyySPEpQ
         GsoSgVOJs8BHERjno4pGGRxQtgEM7+Q+GfwMZU1f30R740rA4pUStrQbEKhJSVyaA/Lk
         KXqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=1Lu2aV3hp4r+aHFEERLQfqQRvN5Brty1TZ32AjOnPnU=;
        b=08KbpVgUE9WUs32EdNWrT5OxzhAm71niMG6HOzMrQFPDoJy9lx2cmKICcxOVIekKLS
         WrSANhah60SqdXd3+gOVWyVJKVg5PBlEyx936Lu5VSVv7LamRcWEV7+dZK2ukI5MhCyF
         lvirRsXnoNWSwUrS6F97dpKeWq6aVJlx2vVkIfYbLYgLkzoDTxFM7Ye2e8MaxLiBpLOm
         JIR52W3AxpqUsuxPyMT2+iV+ldt+rRNN0F9Nu1sCSu/yAlkwcGqvC4PQXuHg9GFVB2Qk
         i3EkKJUa4xzf6sU92oPOeSzc1iOIoH9Q4zDSVvNMW7wcFB3KivBR4HC3AQALxxkLtavs
         +Mdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AHka63ts;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id z14si1129255qtv.0.2021.03.01.02.56.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 02:56:50 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-JUinr4iRNJW-hf2mRIxLHQ-1; Mon, 01 Mar 2021 05:56:47 -0500
X-MC-Unique: JUinr4iRNJW-hf2mRIxLHQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAD1E801976
	for <clang-built-linux@googlegroups.com>; Mon,  1 Mar 2021 10:56:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3C1B61F59
	for <clang-built-linux@googlegroups.com>; Mon,  1 Mar 2021 10:56:46 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCCC057DF9;
	Mon,  1 Mar 2021 10:56:46 +0000 (UTC)
Date: Mon, 1 Mar 2021 05:56:44 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com
Cc: skt-results-master@redhat.com, Milos Malik <mmalik@redhat.com>, 
	Baoquan He <bhe@redhat.com>, Ziqian Sun <zsun@redhat.com>, 
	Xiong Zhou <xzhou@redhat.com>, Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, 
	David Arcari <darcari@redhat.com>, 
	Jeff Bastian <jbastian@redhat.com>, Yi Zhang <yizhan@redhat.com>, 
	Xiaowu Wu <xiawu@redhat.com>, Jan Stancek <jstancek@redhat.com>
Message-ID: <1563248484.29520264.1614596204051.JavaMail.zimbra@redhat.com>
In-Reply-To: <cki.912EBF0759.M5OWZ4USGB@redhat.com>
References: <cki.912EBF0759.M5OWZ4USGB@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel_5?=
 =?utf-8?Q?.12.0-rc1=09(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.114.53, 10.4.195.23]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.12.0-rc1 (mainline.kernel.org-clang)
Thread-Index: wjjtl7FGsNdUoCZPSxttfHMGMLZV2w==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AHka63ts;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
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
> From: "CKI Project" <cki-project@redhat.com>
> To: skt-results-master@redhat.com, clang-built-linux@googlegroups.com
> Cc: "Milos Malik" <mmalik@redhat.com>, "Baoquan He" <bhe@redhat.com>, "Zi=
qian Sun" <zsun@redhat.com>, "Xiong Zhou"
> <xzhou@redhat.com>, "Memory Management" <mm-qe@redhat.com>, "Ondrej Mosna=
cek" <omosnace@redhat.com>, "David Arcari"
> <darcari@redhat.com>, "Jeff Bastian" <jbastian@redhat.com>, "Yi Zhang" <y=
izhan@redhat.com>, "Xiaowu Wu"
> <xiawu@redhat.com>, "Jan Stancek" <jstancek@redhat.com>
> Sent: Monday, March 1, 2021 11:53:19 AM
> Subject: =E2=9D=8C FAIL: Test report for kernel 5.12.0-rc1	(mainline.kern=
el.org-clang)
>=20
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20

Hi,

we're running into some issues with the OpenShift cluster responsible
for the bulk of testing and monitoring, and thus there are broken
test jobs. We've retried this particular test run to get the correct
full results, please ignore the few previous emails for the same
kernel version.

If you notice any other broken test runs you'd like to have retried,
please don't hesitate to reach out about those. We're still going
through the list of executed testing.

Sorry for the inconvenience!
Veronika


>        Kernel repo:
>        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>             Commit: fe07bfda2fb9 - Linux 5.12-rc1
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: FAILED
>=20
> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/03/01/624678
>=20
> One or more kernel tests failed:
>=20
>     ppc64le:
>      =E2=9D=8C Boot test
>      =E2=9D=8C LTP
>=20
>     x86_64:
>      =E2=9D=8C LTP
>      =E2=9D=8C trace: ftrace/tracer
>=20
> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this
> message.
>=20
> Please reply to this email if you have any questions about the tests that=
 we
> ran or if you have any suggestions on how to make future tests more
> effective.
>=20
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
> _________________________________________________________________________=
_____
>=20
> Compile testing
> ---------------
>=20
> We compiled the kernel for 4 architectures:
>=20
>     aarch64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     ppc64le:
>       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     s390x:
>       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>     x86_64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>=20
>=20
> We built the following selftests:
>=20
>   x86_64:
>       net: OK
>       bpf: fail
>       install and packaging: OK
>=20
> You can find the full log (build-selftests.log) in the artifact storage
> above.
>=20
>=20
> Hardware testing
> ----------------
> We booted each kernel and ran the following tests:
>=20
>   aarch64:
>     Host 1:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9C=85 ACPI enabled test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking: igmp conformance test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: SCSI VPD
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basi=
c netfilter test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>=20
>     Host 2:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyste=
m fio test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sch=
eduler test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 3:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyste=
m fio test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sch=
eduler test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 4:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyste=
m fio test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sch=
eduler test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>   ppc64le:
>     Host 1:
>        =E2=9D=8C Boot test
>        =E2=9D=8C LTP
>        =E2=9C=85 Loopdev Sanity
>        =E2=9C=85 Memory: fork_mem
>        =E2=9C=85 Memory function: memfd_create
>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>        =E2=9C=85 Networking bridge: sanity
>        =E2=9C=85 Networking socket: fuzz
>        =E2=9C=85 Networking route: pmtu
>        =E2=9C=85 Networking route_func - local
>        =E2=9C=85 Networking route_func - forward
>        =E2=9C=85 Networking TCP: keepalive test
>        =E2=9C=85 Networking UDP: socket
>        =E2=9C=85 Networking tunnel: geneve basic test
>        =E2=9C=85 Networking tunnel: gre basic
>        =E2=9C=85 L2TP basic test
>        =E2=9C=85 Networking tunnel: vxlan basic
>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>        =E2=9C=85 Libkcapi AF_ALG test
>        =E2=9C=85 pciutils: update pci ids test
>        =E2=9C=85 ALSA PCM loopback test
>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>        =E2=9C=85 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
>        =F0=9F=9A=A7 =E2=9C=85 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
>        =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
>=20
>   s390x:
>     Host 1:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 2:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>     Host 3:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - transp=
ort
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basi=
c netfilter test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite te=
st
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - kexec_boot
>=20
>     Host 4:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 5:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>   x86_64:
>     Host 1:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CPU: Frequency Driver Tes=
t
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 CPU: Idle Test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - nfsv4.2
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 xfstests - cifsv3.11
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMI driver test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 selinux-policy: serge-tes=
tsuite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 power-management: cpupowe=
r/sanity test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage blktests
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - filesyste=
m fio test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue sch=
eduler test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test=
 suite
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 2:
>        =E2=9C=85 Boot test
>        =F0=9F=9A=A7 =E2=9D=8C kdump - sysrq-c
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 kdump - file-load
>=20
>     Host 3:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9D=8C LTP
>        =E2=9C=85 Loopdev Sanity
>        =E2=9C=85 Memory: fork_mem
>        =E2=9C=85 Memory function: memfd_create
>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>        =E2=9C=85 Networking bridge: sanity
>        =E2=9C=85 Networking socket: fuzz
>        =E2=9C=85 Networking: igmp conformance test
>        =E2=9C=85 Networking route: pmtu
>        =E2=9C=85 Networking route_func - local
>        =E2=9C=85 Networking route_func - forward
>        =E2=9C=85 Networking TCP: keepalive test
>        =E2=9C=85 Networking UDP: socket
>        =E2=9C=85 Networking tunnel: geneve basic test
>        =E2=9C=85 Networking tunnel: gre basic
>        =E2=9C=85 L2TP basic test
>        =E2=9C=85 Networking tunnel: vxlan basic
>        =E2=9C=85 Networking ipsec: basic netns - transport
>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>        =E2=9C=85 Libkcapi AF_ALG test
>        =E2=9C=85 pciutils: sanity smoke test
>        =E2=9C=85 pciutils: update pci ids test
>        =E2=9C=85 ALSA PCM loopback test
>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>        =E2=9C=85 storage: SCSI VPD
>        =E2=9D=8C trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>        =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
>        =F0=9F=9A=A7 =E2=9D=8C Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9C=85 Networking firewall: basic netfilter test
>        =F0=9F=9A=A7 =E2=9C=85 audit: audit testsuite test
>        =F0=9F=9A=A7 =E2=9C=85 kdump - kexec_boot
>=20
>     Host 4:
>=20
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>=20
>        =E2=9C=85 Boot test
>        =E2=9C=85 storage: software RAID testing
>        =F0=9F=9A=A7 =E2=9D=8C CPU: Frequency Driver Test
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - ext4
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - xfs
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - btrfs
>        =F0=9F=9A=A7 =E2=9C=85 xfstests - nfsv4.2
>        =F0=9F=9A=A7 =E2=9D=8C xfstests - cifsv3.11
>        =F0=9F=9A=A7 =E2=9C=85 IPMI driver test
>        =F0=9F=9A=A7 =E2=9C=85 IPMItool loop stress test
>        =F0=9F=9A=A7 =E2=9D=8C selinux-policy: serge-testsuite
>        =F0=9F=9A=A7 =E2=9C=85 Storage blktests
>        =F0=9F=9A=A7 =E2=9C=85 Storage block - filesystem fio test
>        =F0=9F=9A=A7 =E2=9C=85 Storage block - queue scheduler test
>        =F0=9F=9A=A7 =E2=9D=8C Storage nvme - tcp
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvdimm ndctl test=
 suite
>        =F0=9F=9A=A7 =E2=9C=85 Storage: swraid mdadm raid_module test
>        =F0=9F=9A=A7 =E2=9D=8C stress: stress-ng
>=20
>   Test sources: https://gitlab.com/cki-project/kernel-tests
>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements =
to existing
>     tests!
>=20
> Aborted tests
> -------------
> Tests that didn't complete running successfully are marked with =E2=9A=A1=
=E2=9A=A1=E2=9A=A1.
> If this was caused by an infrastructure issue, we try to mark that
> explicitly in the report.
>=20
> Waived tests
> ------------
> If the test run included waived tests, they are marked with =F0=9F=9A=A7.=
 Such tests
> are
> executed but their results are not taken into account. Tests are waived w=
hen
> their results are not reliable enough, e.g. when they're just introduced =
or
> are
> being fixed.
>=20
> Testing timeout
> ---------------
> We aim to provide a report within reasonable timeframe. Tests that haven'=
t
> finished running yet are marked with =E2=8F=B1.
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1563248484.29520264.1614596204051.JavaMail.zimbra%40redha=
t.com.
