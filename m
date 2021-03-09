Return-Path: <clang-built-linux+bncBCKPFB7SXUERB3HRTSBAMGQEST4BX5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27375332176
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 09:59:26 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id v196sf16291004ybv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 00:59:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615280365; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2pjn/xdtwIDaimSycufTQvafyZrL2fjr7Bq1waFoNEvS2DgHd0OJ2U4xCJduuBdlV
         9vf1+zyQPA/6oE2mKqrtFgfjZVZtHWcNuKlPHKKFoTC9ohN2jIj9h5wuczNpT1pvxkKG
         NyQ5J+rqgLrbzmRZAO3fMnTGLUoJD6MHEHsAeAYbMEjDcQ+q7rxTpg20BhHvKE3cZ09L
         p7p879k++WifYIK5WZWfPdXnEymy6mv7v5ActpQ5HhRNZ8thnp9u/DWAVmrob3/ZrdiS
         ZdYxXhMC8Rqo6jfseAbwbPlNFBsaiEG5bWjUDR9WVmJ3N2Yhp/HL9yjSkJmWvgFezi+/
         eKXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fO710e01AisL5W7Jyhf4qrPktcQIHm4xHu5mpaTyNgw=;
        b=gv3zm1to41r21HsyqoaiTDnQK4v+VO1E2lEqmjDS2ZOSjtEaAApRlKW7QgsoY9B/+J
         RJph50LelFyajmJp1jMVTqyMh+QSBfqRQ+6jgN1bHsbgBkJPZ4bpIlTqb6JkHVGYN917
         QPhT33kulbKf01kh4YHFu3qiBlkJz/6QCrQVGD2SBv2dvGeLJGKmuT5f6oah3EU9yiEl
         wJ4Y78BAbUJ/6eR3tPijKTnzx8dn7hJ911wKVb9xK+2pY0o75Ja9Oj6k1zMsHOARPBR0
         vURUmVsFpPtAU/lUhSHTfO+/b4+fGm5Eaj9oWRJaVBEgBKBEDobA6g3cKv28KoDUiCj3
         THPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PJCZA2Cm;
       spf=pass (google.com: domain of bhe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fO710e01AisL5W7Jyhf4qrPktcQIHm4xHu5mpaTyNgw=;
        b=cZd0VI9ZA69WovEqxXeRO/zU7sv+SoYy4XB5hLh8ItGWtXEHWZ80PBnndPu8glJpLk
         SO4++Q/I49yMRqtcNYiFcgErvZTrpwN1Db7NVAfPNTIyu+lGdm1Xm/c9nf4MgVp7BkyL
         bTuL/IlvoWWf+mWjoaHBE73uf2xV4dSX601pGO+lxFRIZFLuFVnOawuzNyx7kMo6N3yK
         BmvAZRHeLE8492nlzRgkBUQAefRMryLvJSJksVO0VZccAOBHMzcGiRa+vqOpNFJK7bAc
         fWVthQsh+7AmthoUrqDUxHO35WOd1I9Z05a0fOvb2PzIhOyPEfvHtriXXmOsGnI8YEPz
         zrTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fO710e01AisL5W7Jyhf4qrPktcQIHm4xHu5mpaTyNgw=;
        b=RjaTbCeaX/feFt/cazGezgeygmvvHTlzjs5T/hONY+RklrXWidKo2KE//4OW+lnffF
         oz0PSPnT2n540ZvSJ33UWYG1gmJ+vvWiu4zDjnOW+h+0Z89ePN99nAppU8o5G6z/6cDI
         RZVEJalCtSLCJDNRsmVqyRbQGPFfzej9noQnEQuIz7x6DU15o9uY75zVAORtNKmLL2oD
         hLP2GGZiiHagstEElyRuo1D1nzS4KCIp0Zq5zSEmeWseQ/zIRMrgsKjDxhXgBp3I1hce
         bzde/ybI7ee4W8zG1HaWGF8OkFIXH5hsyca98MEpL4J6a5TVRSzA0xw/HyHRFd/nhvVh
         Ck9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TGguGO5Y45Iy8AovKdBCpnspiZhGCkKWRTOa0Vnbv0VUzM9LG
	8twd6XyoFGMy34BK+Br7L3w=
X-Google-Smtp-Source: ABdhPJzoTiQdgmfaxaz/TY8Qn5YKaKI5Q1jc++qcT9sgKYXtTlXkGMnNzt7jMG6j53mEtiCKVgfwPA==
X-Received: by 2002:a25:bacb:: with SMTP id a11mr40772355ybk.128.1615280364971;
        Tue, 09 Mar 2021 00:59:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:820b:: with SMTP id q11ls10060145ybk.5.gmail; Tue, 09
 Mar 2021 00:59:24 -0800 (PST)
X-Received: by 2002:a25:5344:: with SMTP id h65mr38733964ybb.191.1615280364499;
        Tue, 09 Mar 2021 00:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615280364; cv=none;
        d=google.com; s=arc-20160816;
        b=CQFoKFwRq18svw+dEXQuRQisHUDHhEl6oWo8OT/zxTB66tBbEilF1j8BGGJkfduBxy
         /8OxCE2wVrMJXpKTpZD1G/Geakq+e2ufKYnGE6hnrGRYGIt4sZpuzqddRvAZCXPQFz8Z
         1K8juvCyMncbC9Y+h/x7XVsGLS9PdKZC4nPMOd+MFtBW3sKDpdYhDPpTMDD6GsB+Sy4l
         2Pr8aym1MsKXgHHrM6PWfKyLX31x6lge8s5Ispw8SjfbqVDsSjNxevJJPD/n5k1WQYEw
         f3I3rOYJQogAY61QI06fGWsJV7cN0zUdpgB87snAPDMiivWvk5QU7hbxvvTl0mWjwsKF
         HKug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=qFOJ2hSIR6OiIUSt17u87/XFCdrcnp5KgInxo0Ts/GE=;
        b=i1ZtPRn8eyoz+P4p5XmllUUV+3x1zhjwBfDVX0sPCnQLxx24ifcpUkUmsMZ12KfE2h
         LljN2w1bstUXKnHk5nuvA8n/0J8Q4VF4XJc5XG/aUst976mz+iIJSipVSCQxN0/ieFDK
         OKYSeadR/3DE8XyH/mIHr2GteC4YYRRW2GroN6c19v+1QRBYHwu4agjBZgxLTkWF+9fG
         dVI7DZlhItRebicX+DN6ZNDXPjMAJ+9S3QREix79gpNseMlD4dFNQ31urUbY8u+5FxuW
         lcQRKa/SmwD7lf1lfIdWOQjXyl8r7ZIaTwMjEE1tde1s13aH9I23orjpnFdgeHQp8E+8
         DwOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PJCZA2Cm;
       spf=pass (google.com: domain of bhe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id l14si1269309ybp.4.2021.03.09.00.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 00:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-uMdRzk2zPeKl2oumJJ-ZfQ-1; Tue, 09 Mar 2021 03:59:21 -0500
X-MC-Unique: uMdRzk2zPeKl2oumJJ-ZfQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E04F6101C8B7
	for <clang-built-linux@googlegroups.com>; Tue,  9 Mar 2021 08:59:19 +0000 (UTC)
Received: from localhost (ovpn-12-64.pek2.redhat.com [10.72.12.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C1887092D;
	Tue,  9 Mar 2021 08:59:06 +0000 (UTC)
Date: Tue, 9 Mar 2021 16:59:04 +0800
From: Baoquan He <bhe@redhat.com>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>, Fei Liu <feliu@redhat.com>,
	Xiaowu Wu <xiawu@redhat.com>, Ondrej Moris <omoris@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw6IFRlcw==?= =?utf-8?Q?t?= report for kernel
 5.12.0-rc1 (mainline.kernel.org-clang)
Message-ID: <20210309085904.GF2962@MiWiFi-R3L-srv>
References: <cki.E4BF8BC6D4.7GKJDHFEPH@redhat.com>
MIME-Version: 1.0
In-Reply-To: <cki.E4BF8BC6D4.7GKJDHFEPH@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PJCZA2Cm;
       spf=pass (google.com: domain of bhe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 03/07/21 at 01:30am, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: cee407c5cc42 - Merge tag 'for-linus' of git://git.ker=
nel.org/pub/scm/virt/kvm/kvm
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
refix=3Ddatawarehouse-public/2021/03/04/624891
>=20
> One or more kernel tests failed:
>=20
>     aarch64:
>      =E2=9D=8C LTP
>      =E2=9D=8C Networking bridge: sanity
>=20
>     x86_64:
>      =E2=9D=8C LTP
>=20
> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this mes=
sage.
>=20
> Please reply to this email if you have any questions about the tests that=
 we
> ran or if you have any suggestions on how to make future tests more effec=
tive.
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
...
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
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mappe=
r test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>     Host 2:
>        =E2=9C=85 Boot test
>        =F0=9F=9A=A7 =E2=9D=8C kdump - sysrq-c

After investigating this kdump - sysrq-c failure, found out it's caused
by dracut commit. Have opened a bug to track. Since it sysrq-c case has
been waived, not sure if we need disable it for now.

commit 41cfdfc4d37b3075fef02b1775e903ebe5a15283
Author: Harald Hoyer <harald@redhat.com>
Date:   Fri Feb 12 13:50:47 2021 +0100

    fix: shellcheck for dracut.sh

https://bugzilla.redhat.com/show_bug.cgi?id=3D1936781



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
>        =E2=9C=85 trace: ftrace/tracer
>        =F0=9F=9A=A7 =E2=9C=85 i2c: i2cdetect sanity
>        =F0=9F=9A=A7 =E2=9C=85 CIFS Connectathon
>        =F0=9F=9A=A7 =E2=9C=85 POSIX pjd-fstest suites
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Firmware test suite
>        =F0=9F=9A=A7 =E2=9C=85 jvm - jcstress tests
>        =F0=9F=9A=A7 =E2=9D=8C Memory function: kaslr
>        =F0=9F=9A=A7 =E2=9C=85 Ethernet drivers sanity
>        =F0=9F=9A=A7 =E2=9C=85 Networking cki netfilter test
>        =F0=9F=9A=A7 =E2=9D=8C audit: audit testsuite test
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
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mappe=
r test
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
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: lvm device-mappe=
r test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm rai=
d_module test
>        =F0=9F=9A=A7 =E2=9A=A1=E2=9A=A1=E2=9A=A1 stress: stress-ng
>=20
>   Test sources: https://gitlab.com/cki-project/kernel-tests
>     =F0=9F=92=9A Pull requests are welcome for new tests or improvements =
to existing tests!
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
 Such tests are
> executed but their results are not taken into account. Tests are waived w=
hen
> their results are not reliable enough, e.g. when they're just introduced =
or are
> being fixed.
>=20
> Testing timeout
> ---------------
> We aim to provide a report within reasonable timeframe. Tests that haven'=
t
> finished running yet are marked with =E2=8F=B1.
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210309085904.GF2962%40MiWiFi-R3L-srv.
