Return-Path: <clang-built-linux+bncBC4INQUBT4IRB36ZXSAAMGQE7NUWSWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E492302CC3
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 21:41:20 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id y186sf6001347oia.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 12:41:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611607279; cv=pass;
        d=google.com; s=arc-20160816;
        b=VCsWin7qHRisPpgLUJQLWasS4qMh/6L5X5RvUB0zeO/kuju8vAt6RsBYKBqaD4GAA4
         RQ9/ujp/BoZwlsRBpDkELY0rxRtRaxVhHtf2PiD4TWxCucd+DLqKyhvpyBgvXD6v0oaS
         TusX7RFt0tkreg4CQ7WKUIE4aGVVg3HTVp1ji1lesi9BIums/Lh7msz6mtPynOer1gCB
         Z6cAMvFj7EGAkMg3CGvRCFJTlAPQFQ6Cn4WSal0tjRcbAoPkCLdXPIdW18FboRpIfYSb
         cKFDxjCt+9Gijhx4Ew5RQvBih7xWWMGGyPgvbQkSCWt1veVzZfjDGU60/i+AdSX2qOhA
         mVwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=EB/EZ91xoMbvUJX72bHx5kLHqY5eAIl0KOY2SO+A6QE=;
        b=rY/4YTLYm1vPn0Qv9eEgCfKBuq+sgSLVL32KII9AEjmD6MYB2QEo0Glje1PRQc59kJ
         3du9gkY9jh5GZP5yMe8Ca9Z0TUCScSqKPzUy65n+9guv/6GR1BIc7wCUzi7RX+dEY21H
         OYyBEnw1NfLVuP1kJ10tsi3b1F36I9uf6rd68vNadl0lKp0jW59iCl5PgxWAM6BJAZ8c
         3VGPlk0m3pLflk00UJ6J/EnzfHBn973bS5u2Ky91OkObRn3GcS6M7GKgAZvDoj6jUURc
         K48a+qpL5Vc6pDyrLwa2B9uVCpLFETrg1j5XGRhfnip4YUR/Dc+N1s9DcczAA4jXUZm1
         WZrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DrUO8MRP;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB/EZ91xoMbvUJX72bHx5kLHqY5eAIl0KOY2SO+A6QE=;
        b=UFEmkiAoXBdBMnXSa5LRS112vYifuV0JeutR+qJm7JqSUfzqsEKZAbZh4P88XpxGYs
         FxjEgnc3YXXct9UPs0sms4/dJTAGWepAOET2UtYtQxu0huDbVDaNqPgSFYdllOJvpg9J
         BSArXd5qZNFC4GHldFmblmlvBZGH7Zuiqyp9H9sl9a3S8qcdNm+847cD5DnDKwjbXKbE
         YqpELkuM8JTUunb/ZySGMG1ylt2eYLB++4E2mHijNFOUFX6+EJXfAeTY+vtilSRb/9xv
         dkCQAHTEkPz9x8N/NJTbsK1RxxQdPkAESq2mlvW3Ram+0ReelC6VDocO3WCtT1v3cIEz
         lJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB/EZ91xoMbvUJX72bHx5kLHqY5eAIl0KOY2SO+A6QE=;
        b=RKJcKTnLnxl4Xh9NA6CXzdialtG9jk20aM9L8E61/fMGnq1Nu5PVeVzYJj1RxfbP1w
         vjfOUYMUH7ZQ5S7ZqFsaKipfhYpa4sWkc6d31QzLtZuQedCBovw9yn+QmDNbPwuGaRjP
         b1p3iqO1339yuA8ZWrMu5WrVgl6Cz5SbiXD95nn5u249BhtuaIfyVA0f6ZdOSk8NzkN0
         Z2p/tSZrCSn2b12gy5x3UiEhDNQ4/EkVbebPOdpC7YLjHy9KUVYHW4ZrC9TrcbOLK4FU
         KJIhluDQOK6zQua2vHJbW9uHQjppXVpQJrgUpVt59ZqcH1c0Lp/kKjjnJ7+7GIT+xdym
         L3vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nLo1YK94t9kH1XV9bS66ngTOxsYCqZf5u8I9lLbW/97dOsYuo
	rzC6ZjQ1Zei40l7HZBei9qk=
X-Google-Smtp-Source: ABdhPJxmNxcWAsDbFqT1K4e43ENetnSztmP/kDOsm+GYqszBa5HPciFSKJAhmZc3OepU4yF9KOHl6g==
X-Received: by 2002:aca:f009:: with SMTP id o9mr1241822oih.133.1611607279597;
        Mon, 25 Jan 2021 12:41:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2307625oif.10.gmail; Mon, 25
 Jan 2021 12:41:19 -0800 (PST)
X-Received: by 2002:aca:b909:: with SMTP id j9mr1227119oif.113.1611607279179;
        Mon, 25 Jan 2021 12:41:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611607279; cv=none;
        d=google.com; s=arc-20160816;
        b=CJuVZNpbvyBkOmAq6ySmbs6eDRBijE8fmMEBAr40fQCAIEkHj0i+FAEcD6fuF35Rfz
         cRwQB1aCK/xd/7vFehsSBKQD1R+vgVriAuqkzctkhnlAaQr8CSybiZuTdjL/4jcMkVoq
         IzmLFypgACHWrLD4LpwLmYUC7e86S7ClIlVgfd1+FA7n3N/tGncess5GJA+UA+d6+h/1
         ccMk6GZzxPPrD/msTFfpjH8Cu+NRIc1VcyHac1JQc8EF0tV+vA3ouK4PS3Se5k0PZB4R
         oy/kZxfWQtycHK2mBPYCqi4wthKcxbmfwFMgU6mZS4K3Jy6B5ejIJuvryMcKDQg9kpyh
         sYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=78UsXzAPx72Bs162sCoeLXUv2+WQL+XGZ6V5FRLQonc=;
        b=M9al0yAelejCwCYLR6q0/uEetSeKNQ2bXtMnDOl9+FyuyxvSTcXxq2/U1RJEdSrkmk
         7tpfj7BVsmLl/F6/hnnDhOgDGa9bUF2O4Vz4xYnlKWK8UzXg+DE4PmioiYySd7hqwoPb
         9Jnuv52P4zInNJwl/ugJon/Pz+E0aIKPJk+smLd+yglGHqO7V/oKIAEpslQuvAj2XDZa
         u2RX92GltTAv43TYrK8/5xSZgHI++dBmaxisBffGxz1JG7gNA2FhYOoNgbvv6R5xHa/j
         I/1e6ifKwaKMyPu6sqefv/YkiEtL0pknitiCgZd+DJhFCqujy008l+eVceauRGhlMCwX
         qwfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=DrUO8MRP;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id b124si1146460oii.4.2021.01.25.12.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 12:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-TNNmbn44MAeiLO0nYkQ4xQ-1; Mon, 25 Jan 2021 15:41:14 -0500
X-MC-Unique: TNNmbn44MAeiLO0nYkQ4xQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C40E801AE2;
	Mon, 25 Jan 2021 20:41:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3429B19C47;
	Mon, 25 Jan 2021 20:41:13 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E5744BB7B;
	Mon, 25 Jan 2021 20:41:13 +0000 (UTC)
Date: Mon, 25 Jan 2021 15:41:10 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Ondrej Mosnacek <omosnace@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Cc: Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, 
	Erico Nunes <ernunes@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, 
	CKI Project <cki-project@redhat.com>, Xiaowu Wu <xiawu@redhat.com>
Message-ID: <1201064746.25145703.1611607270796.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg@mail.gmail.com>
References: <cki.9A0879A31D.S7NULW97F9@redhat.com> <20210125191247.GA4004887@ubuntu-m3-large-x86> <CAFqZXNvO13LcOpuk83-S8zGUkKuPJ-eK2pgM8xw-TQ8j7bBDwg@mail.gmail.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel_5?=
 =?utf-8?Q?.11.0-rc4_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.115.215, 10.4.195.21]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0-rc4 (mainline.kernel.org-clang)
Thread-Index: Bt2hacJjABWrsfm81n4CLDY/Bmg1cg==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=DrUO8MRP;
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
> From: "Ondrej Mosnacek" <omosnace@redhat.com>
> To: "Nathan Chancellor" <natechancellor@gmail.com>
> Cc: "Milos Malik" <mmalik@redhat.com>, "Yi Zhang" <yi.zhang@redhat.com>, =
"Erico Nunes" <ernunes@redhat.com>,
> skt-results-master@redhat.com, clang-built-linux@googlegroups.com, "CKI P=
roject" <cki-project@redhat.com>, "Xiaowu
> Wu" <xiawu@redhat.com>
> Sent: Monday, January 25, 2021 8:23:49 PM
> Subject: Re: =E2=9D=8C FAIL: Test report for kernel 5.11.0-rc4 (mainline.=
kernel.org-clang)
>=20
> On Mon, Jan 25, 2021 at 8:12 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Mon, Jan 25, 2021 at 08:21:07AM -0000, CKI Project wrote:
> > >
> > > Hello,
> > >
> > > We ran automated tests on a recent commit from this kernel tree:
> > >
> > >        Kernel repo:
> > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git
> > >             Commit: fdbc80bdc436 - Merge tag 'char-misc-5.11-rc5' of
> > >             git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char=
-misc
> > >
> > > The results of these automated tests are provided below.
> > >
> > >     Overall result: FAILED (see details below)
> > >              Merge: OK
> > >            Compile: OK
> >
> > Hey, all the kernels compiled okay now! :)
> >

Upstream is fixed as of today \o/

> > >  Selftests compile: FAILED
> > >              Tests: FAILED
> >
> > So close and yet so far...
> >
> > > All kernel binaries, config files, and logs are available for downloa=
d
> > > here:
> > >
> > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.ht=
ml?prefix=3Ddatawarehouse-public/2021/01/24/622076
> > >
> > > One or more kernel tests failed:
> > >
> > >     ppc64le:
> > >      =E2=9D=8C selinux-policy: serge-testsuite
> > >
> > >     aarch64:
> > >      =E2=9D=8C selinux-policy: serge-testsuite
> > >
> > >     x86_64:
> > >      =E2=9D=8C selinux-policy: serge-testsuite
> >
> > I think I see what is going on here. Looking under the
> > build_aarch64_redhat:1080959/tests/selinux_policy_serge_testsuite folde=
r
> > I see
> >
> > gcc: error: unrecognized command-line option '-Qunused-arguments'
> > gcc: error: unrecognized command-line option '-mno-global-merge'
> >
> > in 9456744_aarch64_2_taskout.log, which looks like it is building
> >
> > https://github.com/SELinuxProject/selinux-testsuite/tree/master/tests/m=
odule_load
> >
> > this folder. I can reproduce this by building the .config against
> > mainline and then running:
> >
> > $ make KDIR=3D${HOME}/cbl/src/linux
> > cc     finit_load.c  -lselinux -o finit_load
> > cc     init_load.c  -lselinux -o init_load
> > make -C /home/nathan/cbl/src/linux
> > M=3D/home/nathan/src/selinux-testsuite/tests/module_load
> > make[1]: Entering directory '/home/nathan/cbl/src/linux'
> >   CC [M]
> >   /home/nathan/src/selinux-testsuite/tests/module_load/setest_module_lo=
ad.o
> > gcc: error: unrecognized command line option =E2=80=98-Qunused-argument=
s=E2=80=99
> > gcc: error: unrecognized command line option =E2=80=98-mno-global-merge=
=E2=80=99
> > make[2]: *** [scripts/Makefile.build:279:
> > /home/nathan/src/selinux-testsuite/tests/module_load/setest_module_load=
.o]
> > Error 1
> > make[1]: *** [Makefile:1805:
> > /home/nathan/src/selinux-testsuite/tests/module_load] Error 2
> > make[1]: Leaving directory '/home/nathan/cbl/src/linux'
> > make: *** [Makefile:8: all] Error 2
> >
> > Isn't this expected though? Modules should be built with the exact same
> > options and it is not. I presume that these tests are compiled natively
> > so I am doing to ignore the fact that just "gcc" is used, rather than
> > "$(CROSS_COMPILE)gcc". It seems like "LLVM=3D1" or "CC=3Dclang" should =
be
> > passed along to this Makefile, I am not sure what the best way to do
> > that would be. I am not at all familiar with this test suite would be.
>=20

Yes, the tests are running natively.

> I'm not 100% sure, but this looks like a packaging/CKI problem. The
> testsuite is simply using the module build infrastructure provided by
> the kernel package/CKI in /lib/modules/$(uname -r)/build and has no
> idea whether the kernel in question was built using clang or gcc. So

It's only the kernel tarball, but with the symlinks fixed up as
upstream tarball packaging can't handle being compiled on a different
machine than the kernel is supposed to run on. And with the cross
compile unfriendly parts being removed and then rebuilt natively
during boot test:

https://gitlab.com/cki-project/pipeline-definition/-/blob/main/cki_pipeline=
.yml#L1489


Speaking of boot test, the rebuilds pass:

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/01/24/622076/build_aarch64_redhat%3A1080993/tests/Boot_test/94570=
81_aarch64_1_taskout.log

The code for the rebuilds can be found at

https://gitlab.com/cki-project/kernel-tests/-/blob/main/distribution/kpkgin=
stall/runtest.sh#L426


But despite these passing, Ondrej is probably right about a CKI problem
as we've been trying to reenable tracepoints tests and ran into issues:

https://gitlab.com/cki-project/kernel-tests/-/merge_requests/719

> IMHO the kernel-devel package (or whatever is set up by CKI in its
> place) should depend on the appropriate compiler package and enforce
> the right compiler in /lib/modules/$(uname -r)/build/Makefile. The
> Makefile already seems to preserve the compiler flags, which are/may
> be anyway compiler-specific, so preserving also the (default) CC/LLVM
> options would be logical.
>=20

Sure, we can add the installation of llvm toolset to the jobs! For the
makefile, is that something that should be fixed upstream (since you
mention the flags are already preserved)? Or do we have to resort to
passing the compiler override to the tests and modifying the wrappers
to utilize the variable?


Checking the logs I see that FWTS failed with the same problem, and
I'll bet that any test attempting to build a module will do the same.


Any ideas for improvement (or kernel fixes to test out) are welcome!

Veronika

> --
> Ondrej Mosnacek
> Software Engineer, Platform Security - SELinux kernel
> Red Hat, Inc.
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1201064746.25145703.1611607270796.JavaMail.zimbra%40redha=
t.com.
