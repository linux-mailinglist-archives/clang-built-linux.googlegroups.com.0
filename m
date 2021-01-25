Return-Path: <clang-built-linux+bncBDTIRYVLZUEBBVNVXSAAMGQEU3EU63I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43059302B7D
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 20:24:06 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id x26sf6328159ior.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 11:24:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611602645; cv=pass;
        d=google.com; s=arc-20160816;
        b=wE1LEZiGtQyYwU/gKXUrGQ0epA1XtrGg+yNREtGAxxi7Wn7MTN5V2C/sYBTpNkH7Cg
         KLD3L45vUXski0r8ysB1IpPMU8QpnZH8QNuYAoReuOrqzCjpl3kdod9d0zHzQp3guORh
         bz0aDgaA1xv8SSLcCVYKX2RcLfeWz5a53u+X31Q21I2l1+TEJ72obhZPx5Iffn1ypq9F
         o1mtC7GpifaQu4V3U8aa/pOgv+vQrukinJg6s5s4CnLuS53+8LBDuDZXazkJWgt5csq6
         ePuSPHXBvHdfjd6EolPhGX5lJuHzREX/b4G5ltERgfOLpo7aC6IxxWs6WC+nbHCGKe9U
         6RaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=z+dZ02cUOHpq9KVyJBC9456TFFu3IPMySQLG0ZgTf9s=;
        b=glOzP/t+aK6T+athtnYvlz5TNPywmr3Uy29UaWuwQ9SefAiIlhnmjJJfsFfkAZYxTd
         JoCKLdoDJ8yjg+8nv+w6YrPzWXc91BuJIdFRmKv6lQbzDqRJgASPSNz03zXpPBEruL/w
         xB/zW/z2cIJW2Bt1mZ+wAamqmq3XWMEKuTcNy3+BrqS7N2IwLOzAq/ZrRC7ko+Qi8SUp
         kIUnCUBlRU7LrQ9F/ceq2hlE20m02WTNIRbfR57W7F0Z7tLUGdpkKWfx4AR/p75knq2u
         pBGE5PLs0zRWVx+Dq4hLhxvMC4Oi+Fu8m8AJUVJOdrptAQRfTi94eWBM6OhdtWhCbnIx
         rjAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W3+6mAKJ;
       spf=pass (google.com: domain of omosnace@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z+dZ02cUOHpq9KVyJBC9456TFFu3IPMySQLG0ZgTf9s=;
        b=Kv1zmfbU5JC2OW27N7UZb5e8k38Hmtx9ogwOwnmkHUwE43W+ijKWC9cG0HqpivWPvV
         k/qzBLBWsfiavXuclYrtpAwy7zG/uO3DXqeyFom+vd7e0pwsZmAttfsp+szETNBA7Z7B
         KUZ5IhNjziPVKmofof7fj7k4OQuCBcv4K0tnIA+VSzGMBRedK6ZsZ3jPtzdoqqfkIOP0
         7Sc4gVjmi1slj6NcwBQw5X6UlQHJm3NQoLeO4qU11561AOyweVlri6kEnwYp63Of4X0S
         U9Y1cqe+uPHHc6L6nw9fmAauGpjc35l2iKZeC4RZGyOKp2YUlOzpOKINbKSslVTvEm2f
         1O/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z+dZ02cUOHpq9KVyJBC9456TFFu3IPMySQLG0ZgTf9s=;
        b=bgBPVeNLhp560E01FREo+n4zeF0XusxNPC9v6JkAP+rLnboCTG68AGujDWBDq5fzm4
         BWppm9CYzPBtu1eiBuuM5CnEWm+defXUdwpNd2Z1H3NTARgVULGnfTX+EB0qzILHMPvh
         PyczeeDOOefQZS7e9nbhw4nAGUlU85uoNzsU1Y4dZZB7LJoR7M4IAIxfjtX93NAkbmO/
         81WxfqnSGOSajOjQYY/h2EHV6pHKevpmy9a2KvWqv5caip0sg2UJ34L4ryfPN4QNj966
         Xf8JogLc8cmRBM6LL+nEboon0AnFfL8vjOdsHWOJ5K1ybON8f10Dfw7NEt8P4HJt+/1X
         Cl4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531p8Ec1JN/qJkSAtbnDtkmWYjoVxxWxxKkIA2nwGioc7CcUZjQd
	eUaxOHeVrwSAxKqL5++2P+c=
X-Google-Smtp-Source: ABdhPJxRcUQ8L3XNqARUTcJHWWMt/dKHlSZAZ3IxT+9lMHAYtp1AyvvCSwIGOMsLkftRp2kFL8KtIg==
X-Received: by 2002:a05:6e02:48f:: with SMTP id b15mr1765158ils.144.1611602645219;
        Mon, 25 Jan 2021 11:24:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:80cb:: with SMTP id h11ls361461ior.3.gmail; Mon, 25 Jan
 2021 11:24:04 -0800 (PST)
X-Received: by 2002:a6b:f401:: with SMTP id i1mr1628872iog.142.1611602644802;
        Mon, 25 Jan 2021 11:24:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611602644; cv=none;
        d=google.com; s=arc-20160816;
        b=zv657YP8QZ5FHVirhQvQ1rQ3OgDJ38Zf4F3bRq2ShiONV9TnCD5F6IjGib+sgw+OFe
         T4+ieh5Qp948pT/XrMm3XprOa0AqLMFnZ/tThd13oNLQZoo3IqubKnLiPOchv2Sahj0e
         CmmhKhtFhIyu+XhD7OYMokR1UUzdVoy+foeec7vYqDZ/nca9eRb2KIjjcasSMljpy6WD
         lXyHFFJMdlTXez3ZPmqT64oa4expWS2Zm4M0tRwAtkLhcY6kcJlU/hzKo0AsTBcURGT4
         96oILdmdO5mf95wicIGvgjBY1K7vdsUGYiGEcamtn5uUM3zEdb2gVZTyNdu09eXPlzEn
         QuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=63/e5SZiY0zQIJWB/cxZIwYik+jpaalsY40/F4X6h/8=;
        b=ed+F6nANDFq+7HRux/3BnsPH87plLhJFKnixJEhrLzS2ul9pg2QM5+ITTjR/8aHPEp
         DZCUl2/oNs3MY3LNdQjxFPG1mv/hXY8aaHrSRDTlhSFG/uuwxcIy2QKUKxvdH6kGbFhx
         H5Uan6XENY+pPYUTSFkqHqQSwkmzFVIfGu4CzazXE8nFkUCpG/byPLLHwwQCah1SvNfm
         1xQYGI+OtfGyVBaePvLu+qbnhWl+nPX6R7wfgZ00JbHnpbT2L9APYipbo6vA00YSokFr
         JHvWvmO09H7vhK7e+O2F6mxyx5wOV85Si5Yxs4myODWnkjNgX89rvmzkv8aMmC7+kv1P
         27OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W3+6mAKJ;
       spf=pass (google.com: domain of omosnace@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id k6si1111850ioq.1.2021.01.25.11.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 11:24:04 -0800 (PST)
Received-SPF: pass (google.com: domain of omosnace@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-rPF2diCvM2-5DFoIX6C1yw-1; Mon, 25 Jan 2021 14:24:02 -0500
X-MC-Unique: rPF2diCvM2-5DFoIX6C1yw-1
Received: by mail-lj1-f198.google.com with SMTP id z22so6808801ljj.5
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 11:24:01 -0800 (PST)
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr892373lfm.210.1611602640530;
        Mon, 25 Jan 2021 11:24:00 -0800 (PST)
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr892367lfm.210.1611602640296;
 Mon, 25 Jan 2021 11:24:00 -0800 (PST)
MIME-Version: 1.0
References: <cki.9A0879A31D.S7NULW97F9@redhat.com> <20210125191247.GA4004887@ubuntu-m3-large-x86>
In-Reply-To: <20210125191247.GA4004887@ubuntu-m3-large-x86>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Mon, 25 Jan 2021 20:23:49 +0100
Message-ID: <CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOKdjCBGQUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuMTEuMC1yYzQgKG1haQ==?=
	=?UTF-8?B?bmxpbmUua2VybmVsLm9yZy1jbGFuZyk=?=
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>, 
	Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>, 
	Xiong Zhou <xzhou@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: omosnace@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=W3+6mAKJ;
       spf=pass (google.com: domain of omosnace@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
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

On Mon, Jan 25, 2021 at 8:12 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Mon, Jan 25, 2021 at 08:21:07AM -0000, CKI Project wrote:
> >
> > Hello,
> >
> > We ran automated tests on a recent commit from this kernel tree:
> >
> >        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/tor=
valds/linux.git
> >             Commit: fdbc80bdc436 - Merge tag 'char-misc-5.11-rc5' of gi=
t://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc
> >
> > The results of these automated tests are provided below.
> >
> >     Overall result: FAILED (see details below)
> >              Merge: OK
> >            Compile: OK
>
> Hey, all the kernels compiled okay now! :)
>
> >  Selftests compile: FAILED
> >              Tests: FAILED
>
> So close and yet so far...
>
> > All kernel binaries, config files, and logs are available for download =
here:
> >
> >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/01/24/622076
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
> >      =E2=9D=8C selinux-policy: serge-testsuite
>
> I think I see what is going on here. Looking under the
> build_aarch64_redhat:1080959/tests/selinux_policy_serge_testsuite folder
> I see
>
> gcc: error: unrecognized command-line option '-Qunused-arguments'
> gcc: error: unrecognized command-line option '-mno-global-merge'
>
> in 9456744_aarch64_2_taskout.log, which looks like it is building
>
> https://github.com/SELinuxProject/selinux-testsuite/tree/master/tests/mod=
ule_load
>
> this folder. I can reproduce this by building the .config against
> mainline and then running:
>
> $ make KDIR=3D${HOME}/cbl/src/linux
> cc     finit_load.c  -lselinux -o finit_load
> cc     init_load.c  -lselinux -o init_load
> make -C /home/nathan/cbl/src/linux M=3D/home/nathan/src/selinux-testsuite=
/tests/module_load
> make[1]: Entering directory '/home/nathan/cbl/src/linux'
>   CC [M]  /home/nathan/src/selinux-testsuite/tests/module_load/setest_mod=
ule_load.o
> gcc: error: unrecognized command line option =E2=80=98-Qunused-arguments=
=E2=80=99
> gcc: error: unrecognized command line option =E2=80=98-mno-global-merge=
=E2=80=99
> make[2]: *** [scripts/Makefile.build:279: /home/nathan/src/selinux-testsu=
ite/tests/module_load/setest_module_load.o] Error 1
> make[1]: *** [Makefile:1805: /home/nathan/src/selinux-testsuite/tests/mod=
ule_load] Error 2
> make[1]: Leaving directory '/home/nathan/cbl/src/linux'
> make: *** [Makefile:8: all] Error 2
>
> Isn't this expected though? Modules should be built with the exact same
> options and it is not. I presume that these tests are compiled natively
> so I am doing to ignore the fact that just "gcc" is used, rather than
> "$(CROSS_COMPILE)gcc". It seems like "LLVM=3D1" or "CC=3Dclang" should be
> passed along to this Makefile, I am not sure what the best way to do
> that would be. I am not at all familiar with this test suite would be.

I'm not 100% sure, but this looks like a packaging/CKI problem. The
testsuite is simply using the module build infrastructure provided by
the kernel package/CKI in /lib/modules/$(uname -r)/build and has no
idea whether the kernel in question was built using clang or gcc. So
IMHO the kernel-devel package (or whatever is set up by CKI in its
place) should depend on the appropriate compiler package and enforce
the right compiler in /lib/modules/$(uname -r)/build/Makefile. The
Makefile already seems to preserve the compiler flags, which are/may
be anyway compiler-specific, so preserving also the (default) CC/LLVM
options would be logical.

--=20
Ondrej Mosnacek
Software Engineer, Platform Security - SELinux kernel
Red Hat, Inc.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg%40mai=
l.gmail.com.
