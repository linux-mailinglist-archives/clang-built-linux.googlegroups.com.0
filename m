Return-Path: <clang-built-linux+bncBDTIRYVLZUEBB64XX6AAMGQE6JMBTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id C424730378E
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 08:59:56 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id h17sf5858622uar.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 23:59:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611647996; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+n0e8itxCbSnW6hw/faDdFKeXYk5I89uAXXZxs97sdPx6U1sTeL0YXyFIc40UlsCr
         slCmi3s0SlR/LoUovtnKClu/OX1L0FEcMmDfNDonsC6KcVoTGqlFMi8CjlyvJ/9JvyqO
         3wpUs7mYOBHJRi3QYeaKHPXAmRdf6vYtAXTNsvdKkEABQka1N0sokQvTlU/adM4wsbZG
         x6wrszbz7gLKh+GIJQHg9ti3Blw9kwkFfLu8lFUIiKY5OPR0wsNttCPEnMoZ0raZt6Hf
         J1CrkMs7Z3wsDs8X2mKQC1RJthKQPY8OLVb+iOmpuS8HG6CLofDxn3VZGyHw3N3HVOJP
         0vrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=HlDiWe/cBUoNkaW8YrD67L7dXelrLM7O32hIXc5Y+KM=;
        b=qdioyIbD8wgLLnIkgFHCBp0ZrXVXSYDrYAKA8pCEnZFh7FylxMDvTk8h2YJszSwyiP
         XaIEOWJafYtxjcJArC4fn4UGFUVt2kXmnFjd8K0M3Nt6yIv54kI+e9eDVQjgGyH6vjAB
         wOPyR7yMLwJL5Ggg752N7u19IkYxU0SmHzNZCDkp5ybJsJq1W62txTFZQwOKsGPUd26Z
         dbVlEqMuGuG5dKtowzGiAmXLXxVULCS39sZA536Fnz+Sf4X9IBJXqUjs/dsFSrpoB4Ch
         FGSK/Lb5BLe/RUnlvq0NpqZ721nhOWny5kTztCbZLt1ieW3KzHTQVJFUMduVUgLUrmAI
         am+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TMrINJwj;
       spf=pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HlDiWe/cBUoNkaW8YrD67L7dXelrLM7O32hIXc5Y+KM=;
        b=MoDGFa1BmvMlQIkXhwZ4p5JcE+yw0HLlPtNe3i5/WwsPdwGguxZDCcqttTegrK7iCJ
         eolyhYG5d8UamroGTQ257hllkkaknzZQQrizSEqz66Vc9ryC10TIcgxNH8Y1AF5GEMIY
         XtUNUCb7lZ61CsnPYNxrHN6mOaHwA8HQ7I+oBIHKwUh0DdSphrujKylNxxMbqD7areMh
         VzuILaczmoCy8+DbvxapvCkYuVewyuiP1qLCzPVXttH+P5wY3FdFa8qhr23hb3cT7q0v
         1KZhAN5Rd0J43+VxXxnY1xNvmRW9FV8w+TbDPvIYIUv9Hgk7BdcbhLzHLU5SIZ99P6th
         fwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HlDiWe/cBUoNkaW8YrD67L7dXelrLM7O32hIXc5Y+KM=;
        b=Ep4h6XPou5EVak7dEX3G+pHEYhqqU9VN9hVgsDKXjkvLn2R0Phi6jomKyLEuBN9VnJ
         jP1kMwBgnMSIIc3Fu0JyAQk5oLVohTZhJtd2DFBgmFjNpNhOO9IgTtpemc6J0ioDQmGv
         ZHLOqrFJ7W0E8qtPPDbEeGu1bNo5geI1M8ncYg6Zr37W2OqW5CynlIshgYLdP1Ui5MZS
         Q6qg1J4MNB3Kj+IPep4zkETaRwIKULXHk9WpuW/6RDqLmSvy36HFd5/ATriSlhGzXXSa
         NCDZkzfmxZqOLa9HF1Aa+eAWmq1hb5KhNVVt24ZWOZEbYGlC1dN5sj702rIgOoj8dkWP
         EJ2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tLJYjfeIHeiAWp6C4/ROB2Lv2mEscs/Glkucz5trfBdQX/D/1
	TGRjGmoeu8JYWIwrmd/fpv4=
X-Google-Smtp-Source: ABdhPJzcL3S8DNnhIyfwfl9m6ocApIMYJNTaSjqTuJ6d7ch7ruBMmmfeZt/5oGFTJZsOUAwbkaaU5Q==
X-Received: by 2002:a67:eecc:: with SMTP id o12mr3659156vsp.40.1611647995873;
        Mon, 25 Jan 2021 23:59:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c48f:: with SMTP id d15ls662773vsk.0.gmail; Mon, 25 Jan
 2021 23:59:55 -0800 (PST)
X-Received: by 2002:a67:2287:: with SMTP id i129mr3578070vsi.15.1611647995443;
        Mon, 25 Jan 2021 23:59:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611647995; cv=none;
        d=google.com; s=arc-20160816;
        b=qxGZy87mltENfachdaIIm0ZLl9z1IhW96RtR6BkaGmZbb1DWOsT5mVvF+kbYpKeNqG
         Y3tmCTXS28iMDgYfS2T8arElmfRKiuGvs82c5FqjnLwiFg8IEggcjVkoB4k4YcXr5o/P
         S6PY1ZruFL7nqwp0uFBQm9bb+vSH4jDHr57OEuYatM7MqHBEAlG5hb7c11hWOpzgXzoc
         0CFV8w40eKjt54RwIpX+RAHyKQv3crVnti/j0xvRxOnI8SAveXguZX1Y2VkhGiUh5oJV
         l2rIJwfB1769sY1A2ZqXOP+HX6IMMCQw9oKBjxsgxRIZ63cpVydnv4tK8Vex0fI9vTG+
         UK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eCrms0pdOH6c2df958YpseocNNRd29tYYRqfG4SqDpc=;
        b=ViskCVjcTJBX3T+yx7owqzPrPLT8Q4GP7VotpkxzoZ9p9ozLsCykfUhuRyUOOMxvgv
         qUpz9uja2GKzxlpyxIhhkLt+VdNbFRG56GWqagJlLDJdcff2nx8W/tn8gHWFOtdOBQnd
         nb7Sr5xozljS7FMbJEuWNs2voiwDCwFsT7C0pwDot3wtfT14ysFiQYgnWArKRg+eERBM
         YEuQ2PfSIHKJGoE9X1MCYJDCjEYjPeNswvD0crpBzFZjL3g2Cg7CHmkecd+RY9b+LwBy
         IMUipAidIgnzlaJiven/Vbr6mUfsFge5MYyzp2iavGvPBBPYbxm6VFHEwLzYvUQUxWgW
         xSnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TMrINJwj;
       spf=pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s196si479702vkb.2.2021.01.25.23.59.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 23:59:55 -0800 (PST)
Received-SPF: pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-IeXEQE2ZOj6JM7mPqHloHA-1; Tue, 26 Jan 2021 02:59:51 -0500
X-MC-Unique: IeXEQE2ZOj6JM7mPqHloHA-1
Received: by mail-lj1-f197.google.com with SMTP id m16so7643915ljb.20
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 23:59:51 -0800 (PST)
X-Received: by 2002:ac2:5f58:: with SMTP id 24mr2142744lfz.302.1611647990107;
        Mon, 25 Jan 2021 23:59:50 -0800 (PST)
X-Received: by 2002:ac2:5f58:: with SMTP id 24mr2142731lfz.302.1611647989854;
 Mon, 25 Jan 2021 23:59:49 -0800 (PST)
MIME-Version: 1.0
References: <cki.9A0879A31D.S7NULW97F9@redhat.com> <20210125191247.GA4004887@ubuntu-m3-large-x86>
 <CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg@mail.gmail.com> <1201064746.25145703.1611607270796.JavaMail.zimbra@redhat.com>
In-Reply-To: <1201064746.25145703.1611607270796.JavaMail.zimbra@redhat.com>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Tue, 26 Jan 2021 08:59:39 +0100
Message-ID: <CAFqZXNuFX8rEP7g5fqQk06vkfMGd0BiOyOo7+Q372zrfwor1EQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOKdjCBGQUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuMTEuMC1yYzQgKG1haQ==?=
	=?UTF-8?B?bmxpbmUua2VybmVsLm9yZy1jbGFuZyk=?=
To: Veronika Kabatova <vkabatov@redhat.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Erico Nunes <ernunes@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, CKI Project <cki-project@redhat.com>, 
	Xiaowu Wu <xiawu@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: omosnace@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TMrINJwj;
       spf=pass (google.com: domain of omosnace@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
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

On Mon, Jan 25, 2021 at 9:41 PM Veronika Kabatova <vkabatov@redhat.com> wro=
te:
> ----- Original Message -----
> > From: "Ondrej Mosnacek" <omosnace@redhat.com>
> > To: "Nathan Chancellor" <natechancellor@gmail.com>
> > Cc: "Milos Malik" <mmalik@redhat.com>, "Yi Zhang" <yi.zhang@redhat.com>=
, "Erico Nunes" <ernunes@redhat.com>,
> > skt-results-master@redhat.com, clang-built-linux@googlegroups.com, "CKI=
 Project" <cki-project@redhat.com>, "Xiaowu
> > Wu" <xiawu@redhat.com>
> > Sent: Monday, January 25, 2021 8:23:49 PM
> > Subject: Re: =E2=9D=8C FAIL: Test report for kernel 5.11.0-rc4 (mainlin=
e.kernel.org-clang)
> >
> > On Mon, Jan 25, 2021 at 8:12 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > On Mon, Jan 25, 2021 at 08:21:07AM -0000, CKI Project wrote:
> > > >
> > > > Hello,
> > > >
> > > > We ran automated tests on a recent commit from this kernel tree:
> > > >
> > > >        Kernel repo:
> > > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git
> > > >             Commit: fdbc80bdc436 - Merge tag 'char-misc-5.11-rc5' o=
f
> > > >             git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/ch=
ar-misc
> > > >
> > > > The results of these automated tests are provided below.
> > > >
> > > >     Overall result: FAILED (see details below)
> > > >              Merge: OK
> > > >            Compile: OK
> > >
> > > Hey, all the kernels compiled okay now! :)
> > >
>
> Upstream is fixed as of today \o/
>
> > > >  Selftests compile: FAILED
> > > >              Tests: FAILED
> > >
> > > So close and yet so far...
> > >
> > > > All kernel binaries, config files, and logs are available for downl=
oad
> > > > here:
> > > >
> > > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.=
html?prefix=3Ddatawarehouse-public/2021/01/24/622076
> > > >
> > > > One or more kernel tests failed:
> > > >
> > > >     ppc64le:
> > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > > >
> > > >     aarch64:
> > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > > >
> > > >     x86_64:
> > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > >
> > > I think I see what is going on here. Looking under the
> > > build_aarch64_redhat:1080959/tests/selinux_policy_serge_testsuite fol=
der
> > > I see
> > >
> > > gcc: error: unrecognized command-line option '-Qunused-arguments'
> > > gcc: error: unrecognized command-line option '-mno-global-merge'
> > >
> > > in 9456744_aarch64_2_taskout.log, which looks like it is building
> > >
> > > https://github.com/SELinuxProject/selinux-testsuite/tree/master/tests=
/module_load
> > >
> > > this folder. I can reproduce this by building the .config against
> > > mainline and then running:
> > >
> > > $ make KDIR=3D${HOME}/cbl/src/linux
> > > cc     finit_load.c  -lselinux -o finit_load
> > > cc     init_load.c  -lselinux -o init_load
> > > make -C /home/nathan/cbl/src/linux
> > > M=3D/home/nathan/src/selinux-testsuite/tests/module_load
> > > make[1]: Entering directory '/home/nathan/cbl/src/linux'
> > >   CC [M]
> > >   /home/nathan/src/selinux-testsuite/tests/module_load/setest_module_=
load.o
> > > gcc: error: unrecognized command line option =E2=80=98-Qunused-argume=
nts=E2=80=99
> > > gcc: error: unrecognized command line option =E2=80=98-mno-global-mer=
ge=E2=80=99
> > > make[2]: *** [scripts/Makefile.build:279:
> > > /home/nathan/src/selinux-testsuite/tests/module_load/setest_module_lo=
ad.o]
> > > Error 1
> > > make[1]: *** [Makefile:1805:
> > > /home/nathan/src/selinux-testsuite/tests/module_load] Error 2
> > > make[1]: Leaving directory '/home/nathan/cbl/src/linux'
> > > make: *** [Makefile:8: all] Error 2
> > >
> > > Isn't this expected though? Modules should be built with the exact sa=
me
> > > options and it is not. I presume that these tests are compiled native=
ly
> > > so I am doing to ignore the fact that just "gcc" is used, rather than
> > > "$(CROSS_COMPILE)gcc". It seems like "LLVM=3D1" or "CC=3Dclang" shoul=
d be
> > > passed along to this Makefile, I am not sure what the best way to do
> > > that would be. I am not at all familiar with this test suite would be=
.
> >
>
> Yes, the tests are running natively.
>
> > I'm not 100% sure, but this looks like a packaging/CKI problem. The
> > testsuite is simply using the module build infrastructure provided by
> > the kernel package/CKI in /lib/modules/$(uname -r)/build and has no
> > idea whether the kernel in question was built using clang or gcc. So
>
> It's only the kernel tarball, but with the symlinks fixed up as
> upstream tarball packaging can't handle being compiled on a different
> machine than the kernel is supposed to run on. And with the cross
> compile unfriendly parts being removed and then rebuilt natively
> during boot test:
>
> https://gitlab.com/cki-project/pipeline-definition/-/blob/main/cki_pipeli=
ne.yml#L1489
>
>
> Speaking of boot test, the rebuilds pass:
>
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/01/24/622076/build_aarch64_redhat%3A1080993/tests/Boot_test/945=
7081_aarch64_1_taskout.log
>
> The code for the rebuilds can be found at
>
> https://gitlab.com/cki-project/kernel-tests/-/blob/main/distribution/kpkg=
install/runtest.sh#L426
>
>
> But despite these passing, Ondrej is probably right about a CKI problem
> as we've been trying to reenable tracepoints tests and ran into issues:
>
> https://gitlab.com/cki-project/kernel-tests/-/merge_requests/719
>
> > IMHO the kernel-devel package (or whatever is set up by CKI in its
> > place) should depend on the appropriate compiler package and enforce
> > the right compiler in /lib/modules/$(uname -r)/build/Makefile. The
> > Makefile already seems to preserve the compiler flags, which are/may
> > be anyway compiler-specific, so preserving also the (default) CC/LLVM
> > options would be logical.
> >
>
> Sure, we can add the installation of llvm toolset to the jobs! For the
> makefile, is that something that should be fixed upstream (since you
> mention the flags are already preserved)? Or do we have to resort to
> passing the compiler override to the tests and modifying the wrappers
> to utilize the variable?

Ah, somehow I assumed that you already need to add some magic to the
Makefile, but apparently it's just all vanilla magic from upstream :)
I suspect the compiler flags on which gcc is choking might actually
come from some Kconfig options that get enabled when clang is used...
And I see that there are already configs that can be used to infer
what compiler has been used to build the kernel:
CONFIG_CC_VERSION_TEXT=3D"gcc (GCC) 10.2.1 20201125 (Red Hat 10.2.1-9)"
CONFIG_CC_IS_GCC=3Dy
CONFIG_GCC_VERSION=3D100201
CONFIG_LD_VERSION=3D235000000
CONFIG_CLANG_VERSION=3D0
CONFIG_LLD_VERSION=3D0

So a fix could be to detect when building an OOT module and set the
default CC based on that. Something like:

ifneq ($(KBUILD_EXTMOD),)
  ifneq ($(CONFIG_GCC_VERSION),0)
    DEFAULT_CC =3D gcc
  else ifneq ($(CONFIG_CLANG_VERSION),0)
    DEFAULT_CC =3D clang
  else
    DEFAULT_CC =3D $(CC)
  endif
  ifeq ($(origin CC),default)
    CC =3D $(DEFAULT_CC)
  endif
endif

...inserted at the right place in the Makefile could perhaps do the
trick? (But it might be tricky if the CC variable is used before
loading the Kconfig variables or for some other complicated reason...)

Regardless of when/if this is done upstream, you should be able to
work around it in CKI simply by prepending the following to the
installed Makefile when the kernel is built with clang:

ifeq ($(origin CC),default)
  CC =3D clang
endif

(In the above I'm ignoring the LLVM variable as I don't understand its
implications, but hopefully it can be defaulted to the build-time
value in a similar way.)

--
Ondrej Mosnacek
Software Engineer, Platform Security - SELinux kernel
Red Hat, Inc.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFqZXNuFX8rEP7g5fqQk06vkfMGd0BiOyOo7%2BQ372zrfwor1EQ%40m=
ail.gmail.com.
