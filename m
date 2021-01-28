Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMMMZSAAMGQE622VNFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E9C307E51
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:45:06 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id l12sf2701020otq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:45:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611859505; cv=pass;
        d=google.com; s=arc-20160816;
        b=l5V/2EdpNKb+2tujV3cJn0rNqkKvcoR9KNwnUU19CdzsfP19XwHhXOL6+IgRsQbPjH
         4koI+GWLyBHGyc+d8aSZcb/Zj8mjH2D/P6BBahZ0wBhw9aQ//KXaas2yGl6/opSQiosz
         +VytlRxZzzjx8fAD0t30HJUruwQY8IWsuUQ9Q5ZnCtgYmlCuZboiK/WZN3nkiUR5WPv/
         iyzS92r79jCSwha5yI0oZm5TGqQ6uojYr7XC0Tik/izEETho5NvI9DW+hm6eU7Lv8+az
         5o76GeeL/+9rM/PlM9CoElwtv6aRFleDz+YI02gcrRTS5VkTYQdHF8e8hwBgzDmulJyq
         CCdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q7LDCRGHUO1YJvxMJP1++vpPPZfFVyCY6fjeLZ0JcUE=;
        b=LNs+QFSb6k5m6Gj8OzdrgxZbsXt1HqB3xFgflN+fOy47kpiY2lQ9fuWGWPfHuZBHgP
         Yv16L4CUuonaD2U2Dud+wnjm2rAl8fYnPn1ut+SCIgueET+WDMahm06DdHf52HP9m/fi
         heKoSxgsq3zByvvNHtyXshHd47BIgrJk/sIS7WbjxNSMfiFdD4+SOua2rnUBUYS60CaW
         p6Yq+0KFwfmdvwK1lrh26Jee7zkViFsT0pNi+ad1AyqQxzDbTKx57s1qI/jNRh0tjtMS
         R73PkRe/oP/lHkjuIa4D9vJ6AM7mno1RLz/d0SXCEyq6BG37ulybMbv5SfkP0fwBZjC2
         1stQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ACTEeDNO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Q7LDCRGHUO1YJvxMJP1++vpPPZfFVyCY6fjeLZ0JcUE=;
        b=ZIODMQAyiqNPeppGafya7dJKQSbtPptbD4S0FEyznPywVuG7PpSdCs9RskKHuHR+Gh
         CIHE5FoJJHkBsxB7rrVwsNG+Hqfy0AZM7SdTikPZIEI6Z8/xDPonCpt0QrlHmW+dYCAu
         NZdoiv03uFmwFIUWdvCQAz9MKaN9sxXWOxR3jMwCw84xLHX08vSfnFKIr2NxH2xB7M32
         tSsZZ7TvpeHOfSmwkVr4NUMEtlj4CcM7yGS1Z5nodmAEItZu9S3qIyfFIWXYHatJzPc5
         QkLW6TT8sA1/PjOKrwC5pLQaqTRymOWlJl2/j3WJm+H2Yf9mnQEMfNSGm81blAmqgtpc
         QUaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q7LDCRGHUO1YJvxMJP1++vpPPZfFVyCY6fjeLZ0JcUE=;
        b=AG952FZ1uyCLCNeDMcJmmKfHVXxNB4yQaXXkrnpo+0v7FTgxgIJLxdXou9DU7r+zXJ
         zOW4xsCaouTYkgo2MNhj58gOa3LaFmvSKIHud3jHDiRbIoigbtaQtfWO7t5HlhVrU7vZ
         jAl/FxTCW4Mttzu9eVK2Cn9zoxW4EB9lw91pIL529c2yuZa4E056IOrsarEkm69b6mMd
         6cmIU+oMGmaM/pDUezuFZF+HhsoJK2u/GYeI0lwWD/VQThQkUO360qPaCnYuPp4bW/TX
         3KCJZ4wLDlftA+1dmZzdgvoSGJNszBEEbBmXcM+bLpiLfiXI987bVRXwT8pf5TQPm7H6
         JZXQ==
X-Gm-Message-State: AOAM530FwUN0DevUC2FQremO4tEfAkM/EyrwknH65wCR3GykBaTrdLYb
	dLmVWva0f4FmjXhpmbDEnoQ=
X-Google-Smtp-Source: ABdhPJy/s5D68rdsfcwqp2yyYeX4+s1ZIa8D8PmrxaF8d+8zSSJcSFxDUrEp/i0Yi8AdOlKFKnoElQ==
X-Received: by 2002:a4a:94cc:: with SMTP id l12mr655207ooi.70.1611859505267;
        Thu, 28 Jan 2021 10:45:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7290:: with SMTP id t16ls1546371otj.11.gmail; Thu, 28
 Jan 2021 10:45:04 -0800 (PST)
X-Received: by 2002:a05:6830:1e79:: with SMTP id m25mr585678otr.31.1611859504827;
        Thu, 28 Jan 2021 10:45:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611859504; cv=none;
        d=google.com; s=arc-20160816;
        b=mcppthZqzICIK2RASX4faZqKWyliTRlaa0Z3ScKI1Ohmn2aJWEaaC+Ji3cSXRqOOBM
         f/JD7rL8NQpuzo8u5K4wUlfznNvp1JBsGNxlmikmqlYE8VHFvPA1Z41V7JmPXBIqOtQ2
         iuw+gLAlvmiK5ZZkC7dCg++OsirOLrI4ivRKGa/6Hc9NGz0Ikes7Tdhe9+lZ+AGph02e
         GpH6l9MUNuMLr75tNVl8XWVhLMjQD21OOIjzIelmojPpMp/l7AqyKUjsdX+vbOcrIpxz
         V0Rrt22S7frvwgM0ssCiUbQno5W7CyvViIQ4gM/9gjPOqz7suzHVBQbH21ClJNXp3uDj
         N0vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IRrE1jgeAaP9hqd05QDkbUvk/4ynJuSLNUcO9Zz1tA0=;
        b=D0Und+2CB48XuzxX/f4S5zgvtIjDn/7eNl+jpBqIz1hAeTcQZK4FXznWp53ir/yvL5
         KN8E+6cMiXrBIxsmTwtQMJ3vK5MZ4NdorYqX4/IYBUp9YP7vEY86j2CQ++ab0Np+t9y2
         hxotOvHuNdTuaxDdRDjIteUQNbNtAUDtw7vQ2le53z9m7G2FmarrzcwlVaJiCPkFoyC+
         CR/9ZJAaCiZlrlgHBNiIHNKGWQsW+XYw8x0oIowcZ5uxbNWLreDvm4UUGvUaiGbleJdl
         GN1l0EGfBB6fcsuwKlRoD85SSI4jdRRd/CCW3OefuNUA5AvBEM6oSIi/h1a79JK+1RY5
         ILOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ACTEeDNO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id t22si372841otr.0.2021.01.28.10.45.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id j11so1232330plt.11
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 10:45:04 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr731532pjn.25.1611859503990;
 Thu, 28 Jan 2021 10:45:03 -0800 (PST)
MIME-Version: 1.0
References: <cki.9A0879A31D.S7NULW97F9@redhat.com> <20210125191247.GA4004887@ubuntu-m3-large-x86>
 <CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg@mail.gmail.com>
 <1201064746.25145703.1611607270796.JavaMail.zimbra@redhat.com> <CAFqZXNuFX8rEP7g5fqQk06vkfMGd0BiOyOo7+Q372zrfwor1EQ@mail.gmail.com>
In-Reply-To: <CAFqZXNuFX8rEP7g5fqQk06vkfMGd0BiOyOo7+Q372zrfwor1EQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 10:44:52 -0800
Message-ID: <CAKwvOd=FjfWmCWpYL27fJQeSvbZmzEwdB9ZH1YP_SpEWt4C4OQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOKdjCBGQUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuMTEuMC1yYzQgKG1haQ==?=
	=?UTF-8?B?bmxpbmUua2VybmVsLm9yZy1jbGFuZyk=?=
To: Ondrej Mosnacek <omosnace@redhat.com>
Cc: Veronika Kabatova <vkabatov@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, 
	Erico Nunes <ernunes@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CKI Project <cki-project@redhat.com>, 
	Xiaowu Wu <xiawu@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ACTEeDNO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Jan 25, 2021 at 11:59 PM Ondrej Mosnacek <omosnace@redhat.com> wrot=
e:
>
> On Mon, Jan 25, 2021 at 9:41 PM Veronika Kabatova <vkabatov@redhat.com> w=
rote:
> > ----- Original Message -----
> > > From: "Ondrej Mosnacek" <omosnace@redhat.com>
> > > To: "Nathan Chancellor" <natechancellor@gmail.com>
> > > Cc: "Milos Malik" <mmalik@redhat.com>, "Yi Zhang" <yi.zhang@redhat.co=
m>, "Erico Nunes" <ernunes@redhat.com>,
> > > skt-results-master@redhat.com, clang-built-linux@googlegroups.com, "C=
KI Project" <cki-project@redhat.com>, "Xiaowu
> > > Wu" <xiawu@redhat.com>
> > > Sent: Monday, January 25, 2021 8:23:49 PM
> > > Subject: Re: =E2=9D=8C FAIL: Test report for kernel 5.11.0-rc4 (mainl=
ine.kernel.org-clang)
> > >
> > > On Mon, Jan 25, 2021 at 8:12 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > > On Mon, Jan 25, 2021 at 08:21:07AM -0000, CKI Project wrote:
> > > > >
> > > > > Hello,
> > > > >
> > > > > We ran automated tests on a recent commit from this kernel tree:
> > > > >
> > > > >        Kernel repo:
> > > > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git
> > > > >             Commit: fdbc80bdc436 - Merge tag 'char-misc-5.11-rc5'=
 of
> > > > >             git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/=
char-misc
> > > > >
> > > > > The results of these automated tests are provided below.
> > > > >
> > > > >     Overall result: FAILED (see details below)
> > > > >              Merge: OK
> > > > >            Compile: OK
> > > >
> > > > Hey, all the kernels compiled okay now! :)
> > > >
> >
> > Upstream is fixed as of today \o/
> >
> > > > >  Selftests compile: FAILED
> > > > >              Tests: FAILED
> > > >
> > > > So close and yet so far...
> > > >
> > > > > All kernel binaries, config files, and logs are available for dow=
nload
> > > > > here:
> > > > >
> > > > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/inde=
x.html?prefix=3Ddatawarehouse-public/2021/01/24/622076
> > > > >
> > > > > One or more kernel tests failed:
> > > > >
> > > > >     ppc64le:
> > > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > > > >
> > > > >     aarch64:
> > > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > > > >
> > > > >     x86_64:
> > > > >      =E2=9D=8C selinux-policy: serge-testsuite
> > > >
> > > > I think I see what is going on here. Looking under the
> > > > build_aarch64_redhat:1080959/tests/selinux_policy_serge_testsuite f=
older
> > > > I see
> > > >
> > > > gcc: error: unrecognized command-line option '-Qunused-arguments'
> > > > gcc: error: unrecognized command-line option '-mno-global-merge'
> > > >
> > > > in 9456744_aarch64_2_taskout.log, which looks like it is building
> > > >
> > > > https://github.com/SELinuxProject/selinux-testsuite/tree/master/tes=
ts/module_load
> > > >
> > > > this folder. I can reproduce this by building the .config against
> > > > mainline and then running:
> > > >
> > > > $ make KDIR=3D${HOME}/cbl/src/linux
> > > > cc     finit_load.c  -lselinux -o finit_load
> > > > cc     init_load.c  -lselinux -o init_load
> > > > make -C /home/nathan/cbl/src/linux
> > > > M=3D/home/nathan/src/selinux-testsuite/tests/module_load
> > > > make[1]: Entering directory '/home/nathan/cbl/src/linux'
> > > >   CC [M]
> > > >   /home/nathan/src/selinux-testsuite/tests/module_load/setest_modul=
e_load.o
> > > > gcc: error: unrecognized command line option =E2=80=98-Qunused-argu=
ments=E2=80=99
> > > > gcc: error: unrecognized command line option =E2=80=98-mno-global-m=
erge=E2=80=99
> > > > make[2]: *** [scripts/Makefile.build:279:
> > > > /home/nathan/src/selinux-testsuite/tests/module_load/setest_module_=
load.o]
> > > > Error 1
> > > > make[1]: *** [Makefile:1805:
> > > > /home/nathan/src/selinux-testsuite/tests/module_load] Error 2
> > > > make[1]: Leaving directory '/home/nathan/cbl/src/linux'
> > > > make: *** [Makefile:8: all] Error 2
> > > >
> > > > Isn't this expected though? Modules should be built with the exact =
same
> > > > options and it is not. I presume that these tests are compiled nati=
vely
> > > > so I am doing to ignore the fact that just "gcc" is used, rather th=
an
> > > > "$(CROSS_COMPILE)gcc". It seems like "LLVM=3D1" or "CC=3Dclang" sho=
uld be
> > > > passed along to this Makefile, I am not sure what the best way to d=
o
> > > > that would be. I am not at all familiar with this test suite would =
be.
> > >
> >
> > Yes, the tests are running natively.
> >
> > > I'm not 100% sure, but this looks like a packaging/CKI problem. The
> > > testsuite is simply using the module build infrastructure provided by
> > > the kernel package/CKI in /lib/modules/$(uname -r)/build and has no
> > > idea whether the kernel in question was built using clang or gcc. So
> >
> > It's only the kernel tarball, but with the symlinks fixed up as
> > upstream tarball packaging can't handle being compiled on a different
> > machine than the kernel is supposed to run on. And with the cross
> > compile unfriendly parts being removed and then rebuilt natively
> > during boot test:
> >
> > https://gitlab.com/cki-project/pipeline-definition/-/blob/main/cki_pipe=
line.yml#L1489
> >
> >
> > Speaking of boot test, the rebuilds pass:
> >
> > https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehous=
e-public/2021/01/24/622076/build_aarch64_redhat%3A1080993/tests/Boot_test/9=
457081_aarch64_1_taskout.log
> >
> > The code for the rebuilds can be found at
> >
> > https://gitlab.com/cki-project/kernel-tests/-/blob/main/distribution/kp=
kginstall/runtest.sh#L426
> >
> >
> > But despite these passing, Ondrej is probably right about a CKI problem
> > as we've been trying to reenable tracepoints tests and ran into issues:
> >
> > https://gitlab.com/cki-project/kernel-tests/-/merge_requests/719
> >
> > > IMHO the kernel-devel package (or whatever is set up by CKI in its
> > > place) should depend on the appropriate compiler package and enforce
> > > the right compiler in /lib/modules/$(uname -r)/build/Makefile. The
> > > Makefile already seems to preserve the compiler flags, which are/may
> > > be anyway compiler-specific, so preserving also the (default) CC/LLVM
> > > options would be logical.
> > >
> >
> > Sure, we can add the installation of llvm toolset to the jobs! For the
> > makefile, is that something that should be fixed upstream (since you
> > mention the flags are already preserved)? Or do we have to resort to
> > passing the compiler override to the tests and modifying the wrappers
> > to utilize the variable?
>
> Ah, somehow I assumed that you already need to add some magic to the
> Makefile, but apparently it's just all vanilla magic from upstream :)
> I suspect the compiler flags on which gcc is choking might actually
> come from some Kconfig options that get enabled when clang is used...
> And I see that there are already configs that can be used to infer
> what compiler has been used to build the kernel:
> CONFIG_CC_VERSION_TEXT=3D"gcc (GCC) 10.2.1 20201125 (Red Hat 10.2.1-9)"
> CONFIG_CC_IS_GCC=3Dy
> CONFIG_GCC_VERSION=3D100201
> CONFIG_LD_VERSION=3D235000000
> CONFIG_CLANG_VERSION=3D0
> CONFIG_LLD_VERSION=3D0
>
> So a fix could be to detect when building an OOT module and set the
> default CC based on that. Something like:
>
> ifneq ($(KBUILD_EXTMOD),)
>   ifneq ($(CONFIG_GCC_VERSION),0)
>     DEFAULT_CC =3D gcc
>   else ifneq ($(CONFIG_CLANG_VERSION),0)
>     DEFAULT_CC =3D clang
>   else
>     DEFAULT_CC =3D $(CC)
>   endif
>   ifeq ($(origin CC),default)
>     CC =3D $(DEFAULT_CC)
>   endif
> endif
>
> ...inserted at the right place in the Makefile could perhaps do the
> trick? (But it might be tricky if the CC variable is used before
> loading the Kconfig variables or for some other complicated reason...)
>
> Regardless of when/if this is done upstream, you should be able to
> work around it in CKI simply by prepending the following to the
> installed Makefile when the kernel is built with clang:
>
> ifeq ($(origin CC),default)
>   CC =3D clang
> endif
>
> (In the above I'm ignoring the LLVM variable as I don't understand its
> implications, but hopefully it can be defaulted to the build-time
> value in a similar way.)

The LLVM variable is shorthand for a whole host of LLVM utils, see:
https://www.kernel.org/doc/html/latest/kbuild/llvm.html#llvm-utilities

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DFjfWmCWpYL27fJQeSvbZmzEwdB9ZH1YP_SpEWt4C4OQ%40m=
ail.gmail.com.
