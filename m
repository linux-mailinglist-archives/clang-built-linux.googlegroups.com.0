Return-Path: <clang-built-linux+bncBC4INQUBT4IRBD7TRGAQMGQEYTAMHBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A76314E90
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 13:01:20 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id x4sf20536806ybj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 04:01:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612872079; cv=pass;
        d=google.com; s=arc-20160816;
        b=0S70ygRHp+emiw+F7zax+GBr+ezDBfdea62Rog0SS9PPLxPoItP0Tmaf6evTJSETHf
         l9BlerxlcF4pj9bp0ji8BRnDJSq4/FLpEILcU4jt5cY4VWmCBr5MKoZBBk/5NfGibhiH
         rS7o+Ua8yWiLCybp9DGpOES8LKKhQRNillJHp+PN7E/h1xs+2N70gdbG0zsRbDJVawvD
         wiIE+X4W4z9yj4qTFNUaOIiUe3yASJCC14ZMFTc2B6BogRDv5zr4PSqkRkFzhGh7gRFG
         rx7E2XV0giOZ34XVAM1o+nmW8FRr8zgpiPNksD4XJ5arDt3H28YezDgtY3QObDVlcl7V
         A+uA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=6Po6SMwhQAk6HRWZpyZQexEADt0MysLmf54l6KwcMyk=;
        b=QmypEmW2JfC7pcVL5P5f6TT5q3RP7cuMT265RR07nn16A8cMfEaEeVvBFeQtIA/8Y2
         JhxsbnALWbZV55dlyDW5e4jc4yE5Op7bMaN+jlSGRSK3A40YPmqpAtZ+AKtB8sKaEw4B
         fSX1G5xQsohOi6iWSK90NnVoe/DZwAfLuAIeSDyFSME+OvOuABlKbXSTIrJfNvi67WGb
         uNGB4A7DQlip/s93rSxSHSoqgRd0DuVuuHk+I+++gEY/wCcrsH1C/ZzgY5az+irzfoqj
         PuzqhCQ4Aj32WgHFl50HCkqZTX9sI2eYpRBYHHSQ6v8NO0kzLOjspFRkJtUKQhw/OWbi
         vzTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=baXpQWTV;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Po6SMwhQAk6HRWZpyZQexEADt0MysLmf54l6KwcMyk=;
        b=XEjG9RagjDD6SkKfEn5H35tJ+SgQBg5F49N7VoCcEKI4AB6qkZnv87eyAKFBCSWwFk
         qtdQ2duztl2aFVnuKpNtB+F/+5QXB2T+mvyph7Ks55+S0BYSlBKrpvY1JMWe/+wkN3/W
         KIcy2fNw0UolmIdnJ+59JVaA9AiHZfq0tVMf0/fZki/+21HFrqS0D3NdR1A3HWsuksQM
         1s2GHI37oSK+/UEYnk+VrDz74gv8myNbQD+r87YVe6RgCrj1aUdQbt2cxwySO0Or5rhi
         UpXa8fi2ceFcf/jXttBt2DQ2Lr3EUPySLoEBvXJXhR5UAWELtugvCoHv/ammweDv6Erp
         Cosw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Po6SMwhQAk6HRWZpyZQexEADt0MysLmf54l6KwcMyk=;
        b=kRBtbDwxlPGpPaOH8dEO0fmn6BNGoR16Ex13HiDs/Nmq9bxP7k7kpKByZmw+9LG7H+
         E7UOXaXsEhWuNe+O+Zy7a+kdlHqq5Tq2zjQ0Rw/PTxTKvUBHb+PHo0mAQjvT00BYyKSL
         Lx/pw33IY89Oz4KFMmQPD8OSnD6u7J6w0BzWKFL4fknR0VcONb4PwjvJRFcHpYHNAgG+
         PPmknTv+bbidV8SCsbHkjyW4yNuyTW9WQsqRKQhn4QI+OqvlvdGCgq5Wf+xEyRu2cZst
         S4tH8q8/AbPhD3lsXLHEIvbKWeKlN6BFPuCeHo7RKvNc3tmVWtDiKI20IuiYvhiGscye
         +dug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337ChmW5drilZjOK7pkKkuGm54i3nUEflHQS6m10dEjbca484P8
	7Eq5BwFZcMANc9jcHWCJ3tQ=
X-Google-Smtp-Source: ABdhPJwboDqKgBrUcH5sCEITEnyHSRGTc6khKF3QiI/HmuOCovyAp+4PPd13O/BpH7OqJklVC2SNpA==
X-Received: by 2002:a25:880a:: with SMTP id c10mr31439469ybl.456.1612872079259;
        Tue, 09 Feb 2021 04:01:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls10164567ybe.2.gmail; Tue, 09
 Feb 2021 04:01:18 -0800 (PST)
X-Received: by 2002:a25:6d8a:: with SMTP id i132mr32790844ybc.337.1612872078781;
        Tue, 09 Feb 2021 04:01:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612872078; cv=none;
        d=google.com; s=arc-20160816;
        b=RMZduY/8N4NBWBQjACWVSZF2p4AwqJ40au/menX3qaJJEDgH5kUgSh2KKbFTZKC6EB
         /WhQy5ZtoeK91koPXvHHI8vbbAl/ZnMrFKvdyeyDA1c46PeeZOBLNf8FC0HaNSO5QA3V
         qO0cEqhyr9R+1V3bjnVH9YlYG+kYvSBA8xYer2yZc4B0Jck4WSEPTERr5gmWmUhTC8az
         qrf1HjCLhJKQ9RvY5tCR45hf6h6s0iqJCgw9rseou8KFGFoB2QWE6X4m7Xd1zj6SHVZy
         yQL8jowuSiUJS1GbB+pcWM1+7mM7K0Gva+dowEPzswX3GVZ62pEi1C91SIG8WlMK6RnG
         RKzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=lPHwO0SR5kNNcabd0QtrK5SQczJvXmJNWEEh+ok/H/4=;
        b=A/slFnJu2bm1UO/sDNx+uyig0IbLtoqZC0SYWVevMbZOBm7ZSinYJX9E+9IHOh2lHn
         UyplHOaGZCyK9q8Z+t3ByjmLbXBNiXiqUaXPhPuqpkvU1Gc9FURqLN75M48tYAR5Qjx6
         2OCO/MJTeQiyyX5AMfNgUzi6Tx1tvIwF01vMIhBggDosJ5muxD3vMDQDRVNXuUFbhRgE
         EGMWruIgHhf+ETE6wyKFVWDMv4MPYWXf6rR72Q8rT+WUfQXIiVGi8CJpCDqOcyEDvHE9
         2s7OkgjQcPKYHnWVdHL31RR06wSiRE1i97MD6ehFPRcE0bmQWKJQ4aw1ez495KpF8I/4
         +RwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=baXpQWTV;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id c10si1396386ybf.1.2021.02.09.04.01.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:01:18 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-zY_N1H_UMLm1eoiNRae6PA-1; Tue, 09 Feb 2021 07:01:15 -0500
X-MC-Unique: zY_N1H_UMLm1eoiNRae6PA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD25B801965;
	Tue,  9 Feb 2021 12:01:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2D6219C59;
	Tue,  9 Feb 2021 12:01:14 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8008457DF9;
	Tue,  9 Feb 2021 12:01:14 +0000 (UTC)
Date: Tue, 9 Feb 2021 07:01:12 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Milos Malik <mmalik@redhat.com>, clang-built-linux@googlegroups.com, 
	Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	David Arcari <darcari@redhat.com>, 
	CKI Project <cki-project@redhat.com>, Yi Zhang <yizhan@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>
Message-ID: <862764815.26993148.1612872072214.JavaMail.zimbra@redhat.com>
In-Reply-To: <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com> <20210206014149.GA1121962@ubuntu-m3-large-x86> <20210206021928.GA2219249@ubuntu-m3-large-x86> <1903282816.26862171.1612782431967.JavaMail.zimbra@redhat.com>
Subject: =?utf-8?Q?Re:_=F0=9F=92=A5_PANICKED:_Test_report_for=09kernel?=
 =?utf-8?Q?_5.11.0-rc6_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.114.214, 10.4.195.30]
Thread-Topic: ? PANICKED: Test report for kernel 5.11.0-rc6
	(mainline.kernel.org-clang)
Thread-Index: hYZ/rK+Qqoow4ey4Q2lzfs7W/rwTXVXU4D1q
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=baXpQWTV;
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
> From: "Veronika Kabatova" <vkabatov@redhat.com>
> To: "Nathan Chancellor" <nathan@kernel.org>
> Cc: "Milos Malik" <mmalik@redhat.com>, clang-built-linux@googlegroups.com=
, "Memory Management" <mm-qe@redhat.com>,
> "Ondrej Mosnacek" <omosnace@redhat.com>, skt-results-master@redhat.com, "=
David Arcari" <darcari@redhat.com>, "CKI
> Project" <cki-project@redhat.com>, "Yi Zhang" <yizhan@redhat.com>, "Jan S=
tancek" <jstancek@redhat.com>
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

Hi, the config files are fixed now. There's one currently running
pipeline that has the old data, but all new ones after that should
have the fix in them.


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
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/862764815.26993148.1612872072214.JavaMail.zimbra%40redhat=
.com.
