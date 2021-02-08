Return-Path: <clang-built-linux+bncBC4INQUBT4IRBZFWQSAQMGQEBJCCEHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C18313014
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 12:07:18 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id t8sf2287772ots.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 03:07:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612782437; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0rQhgJfCacckUQ30+5M+j+E0AyAgn1jqZvPUoG4IyGR30FzE6+hGQM3miGx/I+oFr
         9KkpsKd0DUxCKeasalABFZI6iCeRjvZVrSUUVk2alECjG+IqN8oIBwue6BQSIJoFfqRF
         UkXiyiPP8g7o8eK8RtoQGD1+oEysqgtq8zLJxe7qcdaKVTTAFHE8L9qLGI5NvcoGeNFF
         xmi700ibwuS7Mn5rBp281OdAgLroM3wXl7Ev3awkWZxSXuIZO57UONZKVg1GynSvW4Nt
         3tOBV4L+SjI49ZfWuq3Ztx0Fd86NbDZq/+kNM3zjOvuFfC4NR93duSEduHR0Vck+St1K
         GH1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=J2Eb+CUA5Tw+b9C5t+XDSdwX7Y+I7F7zkl/X+e003aA=;
        b=fgeoONuxNn1YOAhkcxuY1Jld64VlZtuUMcZl0hjMLMooBScUcsm0hIk7rJfjIUkr7t
         pX6ZS3KOiJMcOovqhsp2H+kl+TaQ+93TCacnh7VPn9oAUWzJc1eQkRWDmPkAA9ThIpPY
         4dzgd9u/U/L2Rr9qXG+YDTZ3PuS47wp0veRX61dfPUdGAbOtliZ7dD0271tCXRGK7Lsa
         4MsvIkXF3pDxnQ/tNobXKrppquVjh/o6b9Dnjc142WqhDrYGIwoaAIAU0BNdz2ihMaZ/
         4f5UVl4r0zmH1mGDhjYWk1A9wY+n/kK6kAEfbK087UuaqL4IlALH4Wv/VLZ0349smon0
         ZZQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P819Sw5T;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2Eb+CUA5Tw+b9C5t+XDSdwX7Y+I7F7zkl/X+e003aA=;
        b=eq02VCLHG68h6f+4jbPKQ0gahkqolx29P+oKJkMMu81RLgHtq2D7uUELpZxGCkBcy9
         mzG11g5EeEgv6eM/kle3uEwyzyMyAP4OUCaHNtLRAQq5st4/P1buO3NGx2MNXw1B4eVH
         AVkIC0MAR3LtTgB8zeBa0FAp2m5J47EKMyh77fsQ8HAWdKlTQzOOM5RYhnU/dmoCdZFf
         8WrhPAmIGs2lBq7F9T9H9SloYeYvzFHSWZg3yV8I1fCWEgACdOaD9IzYsUdmKrxt9lqJ
         Hhhim+5oykqI7dl2m05Az5qqLUCnTNBbrzsaSHiWul//TQpXVlj1dyGrTCOm2ISGg+j5
         /+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2Eb+CUA5Tw+b9C5t+XDSdwX7Y+I7F7zkl/X+e003aA=;
        b=UqK8oxX2jv//UXlRFP+ouj6On03mmaodolySFpQfwvmv1V2f0bZU8qY3I6FvQTvSH1
         /DAdH7A0SMArgxQRCdIWckhbOQaQvGp/zHpHcKoSVaUBPcFcv/B2cdKegwAkR2fGtZIm
         F4bwckpfJdLhjtDr2kzFMbkoO47e4MGf48ej47L08nxdvW3k3zLA3y47lOI5KebR+PzX
         kjl2VOsOauFzR8y4ZxLRvlFvzS55TvxnomS0wBiywo1lBewu0BAlKU12RFGO/LH8CqI6
         UxbJ2eiInCEOd0z1+/DMaDkVj+hWM4PHxtH8kBRaku0ilH1AjGDsJ+iSALjz0OVuWmWM
         2YQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AnxQ6OFC4l4sOPJddVKaJDD4aH5nAHut97el7Xx8128trI8bY
	V1XVt/yH2YwaS8AGSj/pyCE=
X-Google-Smtp-Source: ABdhPJy56iZJicYnvULMOaiK4FmVlUusgmDkf/mlDGWICidboIenlARCgBPvHpWp/DrgGlJ8wEEtsA==
X-Received: by 2002:a9d:4595:: with SMTP id x21mr195914ote.32.1612782436763;
        Mon, 08 Feb 2021 03:07:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2048:: with SMTP id f8ls1095140otp.2.gmail; Mon, 08
 Feb 2021 03:07:16 -0800 (PST)
X-Received: by 2002:a05:6830:1e51:: with SMTP id e17mr12068422otj.340.1612782436339;
        Mon, 08 Feb 2021 03:07:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612782436; cv=none;
        d=google.com; s=arc-20160816;
        b=UhZo8TpnUcNfzlX2vROeJviwNASMI4fhOGRMeXQ47XYOxqGvhV6vRGlIogxY3Ep4gW
         RB3XPnu6/wUoObgb96wP7w7mf9qmnFDKRZv5G6AbNRjITv5rpGOKBfYyDdO/ScqgNTTj
         m8BasQhH9cVBvHFnuQYeVgUAc/lSIRTncgHuVsbzYPshpmCZSow4Wz2xTvc75XyXEWzn
         GxsvsoSvj6odoWuCBvQY/k/617oaZ1UcqfB0IkLWlG/SEq1V76PrAqqPIC/iJ/FzSymk
         ycWTTL4Qbklu8UqzmmaEFOjMEWC/op+cgQYuWrCxyNpd5giujDSZCbJ36Lt+FpWaBoSD
         g9zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=uNHBvdaQKGdeQ4+nrl56ytFDon/bUcBaZNSWrB2Yk6s=;
        b=YcO2VA9HJkOB9lBFs9wuxLvIlCqfvJYVP+Ua19w9PYm6jVr14vq2+Vhey/bRSsLY8+
         jV2QvkB3dfIg+Aiy3tB+qR4uPN8/csBw1nbGY7YeBOFp3WU4eV9hItFyATgBvljMEVxl
         A3vh7ecqgYjuv+4q11zOcEBnRahcN9unwlMMRCYroJ4xszrghdSyv65O2bdVHWD3SGUz
         LhZUxAuhckugoE/S4pDk5XOqFocj3uuV+6l1bmfsBdx7eS7kGDRaINmn9xWVjb3fzFII
         /x3P+9Xa7YCsMn+1SYfXX+0amakLMVhv6bo+yeRJVUDoox99S09fqgcFjBKD5OJVjijt
         +c9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=P819Sw5T;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x35si1114231otr.4.2021.02.08.03.07.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 03:07:16 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-F8pPAGevPQaJroX_78NCuQ-1; Mon, 08 Feb 2021 06:07:13 -0500
X-MC-Unique: F8pPAGevPQaJroX_78NCuQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E11D107ACE6;
	Mon,  8 Feb 2021 11:07:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5659860C05;
	Mon,  8 Feb 2021 11:07:12 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32C3C18095CA;
	Mon,  8 Feb 2021 11:07:12 +0000 (UTC)
Date: Mon, 8 Feb 2021 06:07:11 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	clang-built-linux@googlegroups.com, 
	Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	David Arcari <darcari@redhat.com>, Yi Zhang <yizhan@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>, 
	Rachel Sibley <rasibley@redhat.com>
Message-ID: <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
In-Reply-To: <20210206021928.GA2219249@ubuntu-m3-large-x86>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com> <20210206014149.GA1121962@ubuntu-m3-large-x86> <20210206021928.GA2219249@ubuntu-m3-large-x86>
Subject: =?utf-8?Q?Re:_=F0=9F=92=A5_PANICKED:_Test_report_for=09kernel?=
 =?utf-8?Q?_5.11.0-rc6_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.112.91, 10.4.195.12]
Thread-Topic: ? PANICKED: Test report for kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Thread-Index: hYZ/rK+Qqoow4ey4Q2lzfs7W/rwTXQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=P819Sw5T;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
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
> From: "Nathan Chancellor" <nathan@kernel.org>
> To: "CKI Project" <cki-project@redhat.com>
> Cc: "Milos Malik" <mmalik@redhat.com>, clang-built-linux@googlegroups.com=
, "Memory Management" <mm-qe@redhat.com>,
> "Ondrej Mosnacek" <omosnace@redhat.com>, skt-results-master@redhat.com, "=
David Arcari" <darcari@redhat.com>, "Yi
> Zhang" <yizhan@redhat.com>, "Jan Stancek" <jstancek@redhat.com>
> Sent: Saturday, February 6, 2021 3:19:28 AM
> Subject: Re: =F0=9F=92=A5 PANICKED: Test report for	kernel 5.11.0-rc6 (ma=
inline.kernel.org-clang)
>=20
> On Fri, Feb 05, 2021 at 06:41:49PM -0700, Nathan Chancellor wrote:
> > On Fri, Feb 05, 2021 at 08:48:39PM -0000, CKI Project wrote:
> > >=20
> > > Hello,
> > >=20
> > > We ran automated tests on a recent commit from this kernel tree:
> > >=20
> > >        Kernel repo:
> > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git
> > >             Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' of
> > >             git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci
> > >=20
> > > The results of these automated tests are provided below.
> > >=20
> > >     Overall result: FAILED (see details below)
> > >              Merge: OK
> > >            Compile: OK
> > >  Selftests compile: FAILED
> > >              Tests: PANICKED
> > >=20
> > > All kernel binaries, config files, and logs are available for downloa=
d
> > > here:
> > >=20
> > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.ht=
ml?prefix=3Ddatawarehouse-public/2021/02/05/623168
> >=20
> > I don't know if I am missing something or there was a mix up somewhere
> > but all of the configuration files in that link show that GCC was used
> > for all of these builds:
> >=20
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/05/623168/build_aarch64_redhat%3A1095500/kernel-mainline.k=
ernel.org-clang-aarch64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> >=20
> > CONFIG_CC_VERSION_TEXT=3D"aarch64-linux-gnu-gcc (GCC) 10.2.1 20200826 (=
Red
> > Hat Cross 10.2.1-3)"
> > CONFIG_CC_IS_GCC=3Dy
> > CONFIG_GCC_VERSION=3D100201
> > CONFIG_LD_VERSION=3D235010000
> > CONFIG_CLANG_VERSION=3D0
> > CONFIG_LLD_VERSION=3D0
> >=20
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/05/623168/build_ppc64le_redhat%3A1095501/kernel-mainline.k=
ernel.org-clang-ppc64le-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> >=20
> > CONFIG_CC_VERSION_TEXT=3D"powerpc64le-linux-gnu-gcc (GCC) 10.2.1 202008=
26
> > (Red Hat Cross 10.2.1-3)"
> > CONFIG_CC_IS_GCC=3Dy
> > CONFIG_GCC_VERSION=3D100201
> > CONFIG_LD_VERSION=3D235010000
> > CONFIG_CLANG_VERSION=3D0
> > CONFIG_LLD_VERSION=3D0
> >=20
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/02/05/623168/build_x86_64_redhat%3A1095499/kernel-mainline.ke=
rnel.org-clang-x86_64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config
> >=20
> > CONFIG_CC_VERSION_TEXT=3D"gcc (GCC) 11.0.0 20210130 (Red Hat 11.0.0-0)"
> > CONFIG_CC_IS_GCC=3Dy
> > CONFIG_GCC_VERSION=3D110000
> > CONFIG_LD_VERSION=3D235010000
> > CONFIG_CLANG_VERSION=3D0
> > CONFIG_LLD_VERSION=3D0
> >=20
> > Cheers,
> > Nathan
> >=20
>=20
> I can see by booting the binary that the kernel was compiled with clang
> and linked with lld though. However, I still cannot reproduce this
> crash.
>=20

Hi,

I'll take a look if running config file scripts with the same make
options as the kernel build overrides the gcc data in there. The base
config is grabbed from fedora and already contains the gcc strings as
the fedora configs are built with gcc.

Adding Rachel and keeping test maintainers in this thread since I
can't help with the LTP failure.

Veronika

> root@ubuntu-m3-large-x86:~# cat /proc/version
> Linux version 5.11.0-rc6 (cki@runner-3uc3rmvr-project-2-concurrent-4lc6vt=
)
> (clang version 11.1.0 (Fedora 11.1.0-0.4.rc2.fc34), LLD 11.1.0) #1 SMP Fr=
i
> Feb 5 00:21:48 UTC 2021
> root@ubuntu-m3-large-x86:~# lsmod
> Module                  Size  Used by
> binfmt_misc            24576  1
> intel_rapl_msr         20480  0
> intel_rapl_common      32768  1 intel_rapl_msr
> amd_energy             16384  0
> crct10dif_pclmul       16384  1
> crc32_pclmul           16384  0
> crc32c_intel           24576  0
> ghash_clmulni_intel    16384  0
> snd_pcm               139264  0
> snd_timer              45056  1 snd_pcm
> snd                   106496  2 snd_timer,snd_pcm
> joydev                 28672  0
> soundcore              16384  1 snd
> serio_raw              20480  0
> pcspkr                 16384  0
> virtio_net             65536  0
> net_failover           28672  1 virtio_net
> failover               16384  1 net_failover
> ata_generic            16384  0
> i2c_piix4              28672  0
> pata_acpi              16384  0
> floppy                 94208  0
> qemu_fw_cfg            20480  0
> bpf_preload            16384  0
> ip_tables              32768  0
> x_tables               53248  1 ip_tables
> root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/proc/proc01 -m 128
> proc01      0  TINFO  :  /proc/sys/fs/binfmt_misc/register: is write-only=
.
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/all/stable_secret: known
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/default/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/dummy0/stable_secret: kn=
own
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ens2/stable_secret: know=
n
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/erspan0/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gre0/stable_secret: know=
n
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/gretap0/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb0/stable_secret: know=
n
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ifb1/stable_secret: know=
n
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6_vti0/stable_secret:
> known issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6gre0/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip6tnl0/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/ip_vti0/stable_secret: k=
nown
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/lo/stable_secret: known
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/sys/net/ipv6/conf/tunl0/stable_secret: kno=
wn
> issue: errno=3DEIO(5): Input/output error
> proc01      0  TINFO  :  /proc/kmsg: known issue:
> errno=3DEAGAIN/EWOULDBLOCK(11): Resource temporarily unavailable
> proc01      0  TINFO  :  /proc/sysrq-trigger: is write-only.
> proc01      0  TINFO  :  /proc/self/task/753/mem: known issue: errno=3DEI=
O(5):
> Input/output error
> proc01      0  TINFO  :  /proc/self/task/753/clear_refs: is write-only.
> proc01      0  TINFO  :  /proc/self/task/753/pagemap: reached maxmbytes (=
-m)
> proc01      0  TINFO  :  /proc/self/mem: known issue: errno=3DEIO(5):
> Input/output error
> proc01      0  TINFO  :  /proc/self/clear_refs: is write-only.
> proc01      0  TINFO  :  /proc/self/pagemap: reached maxmbytes (-m)
> proc01      1  TPASS  :  readproc() completed successfully, total read:
> 280264271 bytes, 3326 objs
> root@ubuntu-m3-large-x86:~# ltp/testcases/kernel/fs/read_all/read_all -d
> /proc -q -r 3
> read_all.c:446: TPASS: Finished reading files/fs/read_all/read_all -d /pr=
oc
> -q -r 3
>=20
> Summary:
> passed   1
> failed   0
> broken   0
> skipped  0
> warnings 0
>=20
> Cheers,
> Nathan
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1903282816.26862171.1612782431967.JavaMail.zimbra%40redha=
t.com.
