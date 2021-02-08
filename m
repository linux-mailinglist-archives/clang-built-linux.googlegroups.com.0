Return-Path: <clang-built-linux+bncBC4INQUBT4IRBZHKQWAQMGQEL6TSLJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A7207313AF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 18:31:17 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id s29sf8748261otg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 09:31:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612805476; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIYr9t9yaUYvQpvlV2TxU/+MR1BjyWWziMHOzkP7fVQa9UsTwv3GjpN8EircYuY0Ij
         L/vkTiKYpVpI5UlChzMbd6N/7wHJheT57F+rmMp49FFZGdj6c3kT6aM32smqNFc5Die9
         SZnKsOHiFCqQAQPoFvHZmYoLizPrjcugaecfyZ41rtFTQGEwt8NSyeIkfQgxtVyvD+ZT
         bmyoKb97NRr7N5PMylmHKI2NfUEFolocJDOM4Tk+RnY3FQN+MdzdwJ7pPJZnXgmk458N
         SzuR5KwNsobcImPk/bWV6K/vSb9dHLg85SVRjRQ66Eg8nIZVufqN1z1v5v549h0gt/M3
         qhoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=6+UGa56Bu80WD6Z69eCSspaNkTc74CpiuDmygAXv8LE=;
        b=JoaJX06A3ddnR98JpZxxyUabtq2I7pdJm1Uo5zPOFw7RIBxSCDjRK9osY37w9gIDmP
         FEHSsMx23aO90iloYqD6T8ZcIyMgtPKA4kEGYmVRIGKgauB5hs9BBW968WcP4NH+1Dqw
         28JS0cRzYJ6ZPO0Uc6gzsS/7XlNruCDdUdqbsU/gg6/3RcgvPbcWZ1X712ugo8Zf9rpd
         /2EnHzPF5pQPuE+sIXZ4MSeCdwKLmmSFmYTNcrgFsCP6I1mS3x0yTTPsN2Et+cCYEJYB
         gG934d/qRRYmiEskGY9DyKP22BsMeitVsyh8rW0McTLsOpoDGp6suLsVoVbldR18aSDQ
         XhJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FYNI5m4j;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6+UGa56Bu80WD6Z69eCSspaNkTc74CpiuDmygAXv8LE=;
        b=AfUhx7tGkDnzBHxA3519o6LYodq5rpW+QlzP1h7JeXQeOcsEUBsTiclFh/3EO5B8Ei
         a4bnyf4p25R754em6H2vCrLFcnaTK7kZ9O5+DhLRmm6jEGDlm0Kx/eBUkZok9NendjDF
         TnL2E+W83CIBUWzNxPY8LXypICIrTTwhZHpTUsnypt6L8XtwA0avHtAHXoVpJgjGPTj6
         YEAXeY3x0SAfOv+pFzkyRhE4HVB02Eam/CoBNVadp0i4/5YxKJ9qp97IvBfXltTtF0GO
         bevQ7jbhTYlT9ccEUnFfIrvQtsvpbKf0FrSvTw3K++Bv4c1Lo2kbEeIkW3vryT/aDv3x
         HL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6+UGa56Bu80WD6Z69eCSspaNkTc74CpiuDmygAXv8LE=;
        b=WOszniJ0CetxwpCY6FzWBiK19Jbwph7RRSx1y/Nm9rvvWxL/PpI9sW1kDLAram1idd
         BOONsf6E2w/6/Noq4VQJKLtwC+lXsTI1J7+p18NE8hXlRK+HiQvyJ1lcgSfsHilpHOsi
         oqvyigpLXX90U4uGl322vWoRx//nhCtyWhHByZ0f4nLMqEDXEVwIUGTtq9KDAnVkjFx5
         W1hyknNFN44B5IwkSy5JWpb6Vdfayfne2pIrj5N5FUw/M1SLGj8auRWRBSlkCiMGhAhb
         Qu/92ejQvVlvOrod0tUgyYaCcrpjGkiIdpx46LhsIYFz5B6Ic0WOLzHKGUmgNabZ7wXW
         qLQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CLbL+zvNTTJCgzw04cIxIVK/4VdaOVc1fzKMXvwmNr/4hRR97
	A1lQfgdYQ5m0PCQpzf35Bvw=
X-Google-Smtp-Source: ABdhPJwEMnLrlz+mPV0LjqeYY5IVavENNMTA+JxxLxwN6EwYIr3XUvcuInpIsCqMKApov6H0ERZagQ==
X-Received: by 2002:a05:6830:2316:: with SMTP id u22mr767660ote.324.1612805476681;
        Mon, 08 Feb 2021 09:31:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0d:: with SMTP id u13ls4331121otg.8.gmail; Mon,
 08 Feb 2021 09:31:16 -0800 (PST)
X-Received: by 2002:a05:6830:120c:: with SMTP id r12mr5687183otp.72.1612805476229;
        Mon, 08 Feb 2021 09:31:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612805476; cv=none;
        d=google.com; s=arc-20160816;
        b=FeXLWPpZafcoYShNBSuK+m3y32RZrj5pY3R+BZ0UuwLHelXCkkLHKppul0tFagVnbI
         /UdM4V9jmNWf9U8OkdBUk+jrPsvMY/q7nSH3zy2L6Nfz8W/0Y76HmBUQi/PT2Dc0+VeK
         0R5V+Qfb3gveakJNjyaVBBWS/9cIBhW02cDRtMIzC/t2paBLcm3S6Xpt4xBYPSUxn377
         S65p1C91ThubfXM5mwhwRZh0f3Bqo0K3Af4KEY2PnP0dyhESU5fu2eQa0L7b0MFaW6iI
         +J6JT89oNmdvw0OTcpCTSXHzU2lWbcmT3bCn5M08deh3TnrJiTn/hnnl7ZneyWLTEYbt
         ro0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=qiU3DyLphK6+w27jj0G/WZa/m8PyiJHPliW7Ojr5/MQ=;
        b=NzRwTfjW9Lw8aq/oqUPhhaF4Sjv9U3uAHhcsV28U/fmnklDLMdj4MnvqczjMQ2pgKH
         rQiC73m7IR/JxQW/27ZshOosCSb0hOzsdrKspSlorozH3pGCPLDquRL0Aeed8Wks/VhP
         PkUy7rcVR0KOcdrCXKhomGFwZ2XJx40LxSThP1Y4CPbQOVi2PDkD0oc2TvzjrgrK5WOH
         IbFnpMPY15dR2j9EqziYhR+vcJIrmqZE88aU1bzJijHmjJYlrz79bZviC2OYEqf6NPbF
         eSCGuOxjcWzrqsHzC6088VMGD3VxNllHJEjps3PJ/ZLEbSN555lANb4wOhsJGb2jOoNq
         0jqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FYNI5m4j;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id x35si1219104otr.4.2021.02.08.09.31.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 09:31:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-ayA8bLhROoetJHO30eWhRQ-1; Mon, 08 Feb 2021 12:31:12 -0500
X-MC-Unique: ayA8bLhROoetJHO30eWhRQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66600651;
	Mon,  8 Feb 2021 17:31:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C64B5D9DC;
	Mon,  8 Feb 2021 17:31:11 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4790857DF9;
	Mon,  8 Feb 2021 17:31:11 +0000 (UTC)
Date: Mon, 8 Feb 2021 12:31:09 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	clang-built-linux@googlegroups.com, 
	Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	David Arcari <darcari@redhat.com>, Yi Zhang <yizhan@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>, 
	Rachel Sibley <rasibley@redhat.com>
Message-ID: <932912533.26916631.1612805468995.JavaMail.zimbra@redhat.com>
In-Reply-To: <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com> <20210206014149.GA1121962@ubuntu-m3-large-x86> <20210206021928.GA2219249@ubuntu-m3-large-x86> <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
Subject: =?utf-8?Q?Re:_=F0=9F=92=A5_PANICKED:_Test_report_for=09kernel?=
 =?utf-8?Q?_5.11.0-rc6_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.112.91, 10.4.195.25]
Thread-Topic: ? PANICKED: Test report for kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Thread-Index: hYZ/rK+Qqoow4ey4Q2lzfs7W/rwTXaqn6vdq
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FYNI5m4j;
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
> From: "Veronika Kabatova" <vkabatov@redhat.com>
> To: "Nathan Chancellor" <nathan@kernel.org>
> Cc: "CKI Project" <cki-project@redhat.com>, "Milos Malik" <mmalik@redhat.=
com>, clang-built-linux@googlegroups.com,
> "Memory Management" <mm-qe@redhat.com>, "Ondrej Mosnacek" <omosnace@redha=
t.com>, skt-results-master@redhat.com,
> "David Arcari" <darcari@redhat.com>, "Yi Zhang" <yizhan@redhat.com>, "Jan=
 Stancek" <jstancek@redhat.com>, "Rachel
> Sibley" <rasibley@redhat.com>
> Sent: Monday, February 8, 2021 12:07:11 PM
> Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6 (ma=
inline.kernel.org-clang)
>=20
>=20
>=20
> ----- Original Message -----
> > From: "Nathan Chancellor" <nathan@kernel.org>
> > To: "CKI Project" <cki-project@redhat.com>
> > Cc: "Milos Malik" <mmalik@redhat.com>, clang-built-linux@googlegroups.c=
om,
> > "Memory Management" <mm-qe@redhat.com>,
> > "Ondrej Mosnacek" <omosnace@redhat.com>, skt-results-master@redhat.com,
> > "David Arcari" <darcari@redhat.com>, "Yi
> > Zhang" <yizhan@redhat.com>, "Jan Stancek" <jstancek@redhat.com>
> > Sent: Saturday, February 6, 2021 3:19:28 AM
> > Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6
> > (mainline.kernel.org-clang)
> >=20
> > On Fri, Feb 05, 2021 at 06:41:49PM -0700, Nathan Chancellor wrote:
> > > On Fri, Feb 05, 2021 at 08:48:39PM -0000, CKI Project wrote:
> > > >=20
> > > > Hello,
> > > >=20
> > > > We ran automated tests on a recent commit from this kernel tree:
> > > >=20
> > > >        Kernel repo:
> > > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git
> > > >             Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' of
> > > >             git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/p=
ci
> > > >=20
> > > > The results of these automated tests are provided below.
> > > >=20
> > > >     Overall result: FAILED (see details below)
> > > >              Merge: OK
> > > >            Compile: OK
> > > >  Selftests compile: FAILED
> > > >              Tests: PANICKED
> > > >=20
> > > > All kernel binaries, config files, and logs are available for downl=
oad
> > > > here:
> > > >=20
> > > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.=
html?prefix=3Ddatawarehouse-public/2021/02/05/623168
> > >=20
> > > I don't know if I am missing something or there was a mix up somewher=
e
> > > but all of the configuration files in that link show that GCC was use=
d
> > > for all of these builds:
> > >=20
> > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawareho=
use-public/2021/02/05/623168/build_aarch64_redhat%3A1095500/kernel-mainline=
.kernel.org-clang-aarch64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > >=20
> > > CONFIG_CC_VERSION_TEXT=3D"aarch64-linux-gnu-gcc (GCC) 10.2.1 20200826=
 (Red
> > > Hat Cross 10.2.1-3)"
> > > CONFIG_CC_IS_GCC=3Dy
> > > CONFIG_GCC_VERSION=3D100201
> > > CONFIG_LD_VERSION=3D235010000
> > > CONFIG_CLANG_VERSION=3D0
> > > CONFIG_LLD_VERSION=3D0
> > >=20
> > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawareho=
use-public/2021/02/05/623168/build_ppc64le_redhat%3A1095501/kernel-mainline=
.kernel.org-clang-ppc64le-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > >=20
> > > CONFIG_CC_VERSION_TEXT=3D"powerpc64le-linux-gnu-gcc (GCC) 10.2.1 2020=
0826
> > > (Red Hat Cross 10.2.1-3)"
> > > CONFIG_CC_IS_GCC=3Dy
> > > CONFIG_GCC_VERSION=3D100201
> > > CONFIG_LD_VERSION=3D235010000
> > > CONFIG_CLANG_VERSION=3D0
> > > CONFIG_LLD_VERSION=3D0
> > >=20
> > > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawareho=
use-public/2021/02/05/623168/build_x86_64_redhat%3A1095499/kernel-mainline.=
kernel.org-clang-x86_64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> > >=20
> > > CONFIG_CC_VERSION_TEXT=3D"gcc (GCC) 11.0.0 20210130 (Red Hat 11.0.0-0=
)"
> > > CONFIG_CC_IS_GCC=3Dy
> > > CONFIG_GCC_VERSION=3D110000
> > > CONFIG_LD_VERSION=3D235010000
> > > CONFIG_CLANG_VERSION=3D0
> > > CONFIG_LLD_VERSION=3D0
> > >=20
> > > Cheers,
> > > Nathan
> > >=20
> >=20
> > I can see by booting the binary that the kernel was compiled with clang
> > and linked with lld though. However, I still cannot reproduce this
> > crash.
> >=20
>=20
> Hi,
>=20
> I'll take a look if running config file scripts with the same make
> options as the kernel build overrides the gcc data in there. The base
> config is grabbed from fedora and already contains the gcc strings as
> the fedora configs are built with gcc.
>=20

Update:

Fixing up the make options to be called with the config scripts works.
I'm currently checking if this helps with the previous test failures
where tests tried to build external modules with the wrong compiler, or
if that would require some more future work (I already added the clang
dependencies to the test runs).

Slightly related, the problem with DEBUG_INFO_BTF having to be disabled
due to pahole segfaulting is now gone as a fixed pahole version is in
fedora rawhide now. x86_64 compiles with the enabled option fine,
however aarch64 fails with

FAILED unresolved symbol vfs_truncate

Is this a problem you already know about? This is the newest mainline,
compilation with gcc works. I can publish the logs and configs or
whatever else if needed.


Veronika

> Adding Rachel and keeping test maintainers in this thread since I
> can't help with the LTP failure.
>=20
> Veronika
>=20
> > root@ubuntu-m3-large-x86:~# cat /proc/version
> > Linux version 5.11.0-rc6 (cki@runner-3uc3rmvr-project-2-concurrent-4lc6=
vt)
> > (clang version 11.1.0 (Fedora 11.1.0-0.4.rc2.fc34), LLD 11.1.0) #1 SMP =
Fri
> > Feb 5 00:21:48 UTC 2021
> > root@ubuntu-m3-large-x86:~# lsmod
> > Module                  Size  Used by
> > binfmt_misc            24576  1
> > intel_rapl_msr         20480  0
> > intel_rapl_common      32768  1 intel_rapl_msr
> > amd_energy             16384  0
> > crct10dif_pclmul       16384  1
> > crc32_pclmul           16384  0
> > crc32c_intel           24576  0
> > ghash_clmulni_intel    16384  0
> > snd_pcm               139264  0
> > snd_timer              45056  1 snd_pcm
> > snd                   106496  2 snd_timer,snd_pcm
> > joydev                 28672  0
> > soundcore              16384  1 snd
> > serio_raw              20480  0
> > pcspkr                 16384  0
> > virtio_net             65536  0
> > net_failover           28672  1 virtio_net
> > failover               16384  1 net_failover
> > ata_generic            16384  0
> > i2c_piix4              28672  0
> > pata_acpi              16384  0
> > floppy                 94208  0
> > qemu_fw_cfg            20480  0
> > bpf_preload            16384  0
> > ip_tables              32768  0
> > x_tables               53248  1 ip_tables
> > root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/proc/proc01 -m 128
> > proc01      0  TINFO  :  /proc/sys/fs/binfmt_misc/register: is write-on=
ly.
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/all/stable_secret: kno=
wn
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/default/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/dummy0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ens2/stable_secret: kn=
own
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/erspan0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gre0/stable_secret: kn=
own
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gretap0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb0/stable_secret: kn=
own
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb1/stable_secret: kn=
own
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6_vti0/stable_secret=
:
> > known issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6gre0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6tnl0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip_vti0/stable_secret:
> > known
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/lo/stable_secret: know=
n
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/tunl0/stable_secret: k=
nown
> > issue: errno=3DEIO(5): Input/output error
> > proc01      0  TINFO  :  /proc/kmsg: known issue:
> > errno=3DEAGAIN/EWOULDBLOCK(11): Resource temporarily unavailable
> > proc01      0  TINFO  :  /proc/sysrq-trigger: is write-only.
> > proc01      0  TINFO  :  /proc/self/task/753/mem: known issue:
> > errno=3DEIO(5):
> > Input/output error
> > proc01      0  TINFO  :  /proc/self/task/753/clear_refs: is write-only.
> > proc01      0  TINFO  :  /proc/self/task/753/pagemap: reached maxmbytes
> > (-m)
> > proc01      0  TINFO  :  /proc/self/mem: known issue: errno=3DEIO(5):
> > Input/output error
> > proc01      0  TINFO  :  /proc/self/clear_refs: is write-only.
> > proc01      0  TINFO  :  /proc/self/pagemap: reached maxmbytes (-m)
> > proc01      1  TPASS  :  readproc() completed successfully, total read:
> > 280264271 bytes, 3326 objs
> > root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/read_all/read_all -=
d
> > /proc -q -r 3
> > read_all.c:446: TPASS: Finished reading files/fs/read_all/read_all -d /=
proc
> > -q -r 3
> >=20
> > Summary:
> > passed   1
> > failed   0
> > broken   0
> > skipped  0
> > warnings 0
> >=20
> > Cheers,
> > Nathan
> >=20
> >=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/932912533.26916631.1612805468995.JavaMail.zimbra%40redhat=
.com.
