Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMNQXSAAMGQEDPACTII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 02601302B35
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 20:12:51 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id r1sf15007844ybd.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 11:12:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611601970; cv=pass;
        d=google.com; s=arc-20160816;
        b=Odhtk4t3XnvfgDVodnStX84kI6WgpyvoCv+YnXRu3hSPeCwwvBDae3C3bLLamyEBmU
         Stw4YwJZuxXgJBIRj8aC1RFkjuILw46WbMmrbPmIKJDG4n56KIlR9Q6xpwIgDYFvnLPg
         DopjWxCtyuF+z8P0LhyskvjEI4BCWZEj0GRJfrVtr0oOEPamTssYWAgU98ZbjPas6fOb
         flcsE9HwyUxXQx0QiKYriaP2Ap/eZ3oPFxVk5fk8qZKKyRK6ni/5kmmYOHtFEcTsXRgf
         9cppH7A/0+eYmfg8ZKiQ08Yz6sDNrzmyNbEL5yh3XHsWARVOhZgPtYuZ4NnSuZz7Uec5
         uBzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=Ule+lBJk1+9eD2Bz+ArRTEatQ4q2ccl+nP6SczaggmQ=;
        b=YOjH0LiPnDSNnZXkobX3JNevGcugfuaMjpe/OxgYPW+73d/XqFbm25P6XlS4/IqrfR
         4pnqWN2ZV3eYtSidd+ANq5igCzejQXkFSQ5n42z6BlqzKKRPQq6tzonuXrchgJVpnfv/
         3mJfc5dPWy4yt51EeH+AQV4vE5nQPWtW1YVYqjPTuQmcIBxusFLfKmbJVxRLkPmPqsSY
         fnJXU2oGSNiUVDaqJ844QXV4klmR0qhRLH5Ktvt/bnuYk/5u2iAxQfLWtnirEc2A1SO6
         PvYrPwmpE5cu66606P2tjIH1R+aNAgFr6jSEDAfiRDj0dl/ZoSXGrt0XBmpYBi/4YxNP
         xBvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KwwwNdQa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ule+lBJk1+9eD2Bz+ArRTEatQ4q2ccl+nP6SczaggmQ=;
        b=kYuewxZofebPOh4b1CEJiCQNDi3fEmhUei+YZOIp5BdH2fDCNMxCeyFqHAedgw9K8l
         /sUAq+5CxHsZOZ/NyZkxDAi+S6PrIJ1W2IbtbXyQzSgNzTm3FgXpx7dBLFPfiYQvSGCq
         1g+lE+Nbx6hvyxJFAwLCxFwMwGOYA3nBArY9gJBTfVJ2956sGnw17w80KZ6QXjeF7PiO
         djikVGYsalO5jRWJ7U/d0nlA5hCzfAIGkAJrvmjOpmSm5PtRQaWi9vHdte++DLC5X3mO
         IEzv49jG0cR7Ed7KzpLjuX/0dNbQwWrc0HBuMKIIK2DIzpJmM66NMyw1r9NJDrKi/s6d
         cP9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ule+lBJk1+9eD2Bz+ArRTEatQ4q2ccl+nP6SczaggmQ=;
        b=HXw7wR75TIg19lPIsZEmLw8p5DvwiV68INnUPpOyaoT8KGv5ELA6dF1jOcEteeSk8u
         xzFZ7cltH7SDirR0N5LFAkvLPwUrHy7uBQcLa+aBhxRzS5c13ithQ5qgys7yASQWoJGi
         OvOYSqWDuBEE7SvzPgPZeQSrR5BS3DnZ8DLYbV7HraaJSxtu4roxPYGoOkrBpgRaUwaG
         CJJHgwPS4oiX5dfIoVU2vW/v5W/4+K9CUPqjDVBX9mZt5tR8jB7v/YnNv6c2guFAwWEn
         cTTaBIrPXLvcaXZq7LuW29v+P2pfN01AXXhtlnhvqt1+7Y+tvAyRzFPN/I1lBIpsVggX
         doPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ule+lBJk1+9eD2Bz+ArRTEatQ4q2ccl+nP6SczaggmQ=;
        b=FDfE+eisE9kS1IuxkSK8xEg7bTbEVrV40b6eVregCmuip/vSUhOTzheCygLfLiGqO1
         Nc1v8LtJumEiaLKMgD6ItGQjjbDYMzTV68AH8fF5egNMqUNyKzqNjKg4WwRhiijkrekx
         3QNAD+o5S5c7ooJvdoTPafWnW/5u4lMt18+wGSHNReUuUQLy06HvfbI8ISXsukmKtKvY
         DAluTnj5+zcWNbpr5fMYiXxM6yoXA6KLg1uM2YVxJdzI4BtTAxCGhEFjiAh63LSTNb1K
         FJq6ZI9UWtgCANxIGw/DdqneM+cu21JKSdcvhfVLABSc1TZb72hqHZYBIMg5r7PxZyng
         /NZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LmJywBu56XUR15f9rtfG7D1/Yvy3aaKkcYEXTWjKVlVFJDcLa
	mA+s7CXP1TfZM8V1gnmGblE=
X-Google-Smtp-Source: ABdhPJyPYGdg1ghmdV/nq8VgESn5EDAw5KON4sl1Oo1z26GsDm3L/pwJkxHQXxsZ/hkelR5i1pcYeQ==
X-Received: by 2002:a25:cf42:: with SMTP id f63mr2686415ybg.363.1611601970043;
        Mon, 25 Jan 2021 11:12:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4c06:: with SMTP id z6ls2105287yba.8.gmail; Mon, 25 Jan
 2021 11:12:49 -0800 (PST)
X-Received: by 2002:a25:9d83:: with SMTP id v3mr2787685ybp.368.1611601969669;
        Mon, 25 Jan 2021 11:12:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611601969; cv=none;
        d=google.com; s=arc-20160816;
        b=BpchgWyD2mMiJ2qCQ7O1oI9tRJVS6RN/rJhimfyeK18dHkW+z8YT1DZH+7KoOyNpmJ
         EBMkvCXCH+PwRIHXa2XoHdxzT5SwrD5lMT8VhGJA1lBxFJWhW3Ng2jYaCA1nZEP3rMd0
         THP51z6xoYVPNrilmzHlgrNIIfSm8MelABbTWIlOrHymCJoPwa3u1g31z3N2mb0ntH4M
         4ME6fl/9x5MUr7GhboIIbMgS6oAG8W7w/1Ct/DohrUIYKsYgTd1GLJuuliZv4pFJfkis
         qcUQYtmExPpKj4zBQHmubqLAzgYGxhUWU2T1OI9zZ0O4oQfFhPvSyCAQmTKk/DDLl46b
         zaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=1EYcQpD1u0SUuB2N9STYs9QGhr2wnmigDffA44Y91sA=;
        b=cJFsWo0NjHXWnbw1x0U3Xo4JUzaotAn7mmZfTsgDVULlvORuwpSV2zOtQE2h5nuJOs
         TmLmZBHMczX/+4SZzUjV1d3WE/j4ohhUfKQzq1kYtRKtesZKqLGX+zpWyb1szyUWPL3N
         ZB5X1c2/NhonXzCncySlD12VN/c2PEJXVd3axxecaCnySgwEkBXLssz4pSq2QLezeX8f
         pW/LX0R9TpoFWU02x4DkHvHRYwJHK/snOen5wyKbr5wCKd0GCVut2NGfBEjC0WOtfh5d
         MT4lgiVRSN9VjKovu4wFZh9Y87VoXBOoy5Q5oe+vGbfzkWK1RYEPTxwHsZ+kU3Ca0Qdo
         S4Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KwwwNdQa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com. [2607:f8b0:4864:20::f2f])
        by gmr-mx.google.com with ESMTPS id i142si543805yba.5.2021.01.25.11.12.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 11:12:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f2f as permitted sender) client-ip=2607:f8b0:4864:20::f2f;
Received: by mail-qv1-xf2f.google.com with SMTP id l14so4645624qvp.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 11:12:49 -0800 (PST)
X-Received: by 2002:a0c:aed0:: with SMTP id n16mr2192502qvd.22.1611601969208;
        Mon, 25 Jan 2021 11:12:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id t62sm7482801qtd.11.2021.01.25.11.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 11:12:48 -0800 (PST)
Date: Mon, 25 Jan 2021 12:12:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
	Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
	Baoquan He <bhe@redhat.com>, Xiong Zhou <xzhou@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw6IFRlcw==?= =?utf-8?Q?t?= report for kernel
 5.11.0-rc4 (mainline.kernel.org-clang)
Message-ID: <20210125191247.GA4004887@ubuntu-m3-large-x86>
References: <cki.9A0879A31D.S7NULW97F9@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cki.9A0879A31D.S7NULW97F9@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KwwwNdQa;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 25, 2021 at 08:21:07AM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: fdbc80bdc436 - Merge tag 'char-misc-5.11-rc5' of git:=
//git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK

Hey, all the kernels compiled okay now! :)

>  Selftests compile: FAILED
>              Tests: FAILED

So close and yet so far...

> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/01/24/622076
>=20
> One or more kernel tests failed:
>=20
>     ppc64le:
>      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>     aarch64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>     x86_64:
>      =E2=9D=8C selinux-policy: serge-testsuite

I think I see what is going on here. Looking under the
build_aarch64_redhat:1080959/tests/selinux_policy_serge_testsuite folder
I see

gcc: error: unrecognized command-line option '-Qunused-arguments'
gcc: error: unrecognized command-line option '-mno-global-merge'

in 9456744_aarch64_2_taskout.log, which looks like it is building

https://github.com/SELinuxProject/selinux-testsuite/tree/master/tests/modul=
e_load

this folder. I can reproduce this by building the .config against
mainline and then running:

$ make KDIR=3D${HOME}/cbl/src/linux
cc     finit_load.c  -lselinux -o finit_load
cc     init_load.c  -lselinux -o init_load
make -C /home/nathan/cbl/src/linux M=3D/home/nathan/src/selinux-testsuite/t=
ests/module_load
make[1]: Entering directory '/home/nathan/cbl/src/linux'
  CC [M]  /home/nathan/src/selinux-testsuite/tests/module_load/setest_modul=
e_load.o
gcc: error: unrecognized command line option =E2=80=98-Qunused-arguments=E2=
=80=99
gcc: error: unrecognized command line option =E2=80=98-mno-global-merge=E2=
=80=99
make[2]: *** [scripts/Makefile.build:279: /home/nathan/src/selinux-testsuit=
e/tests/module_load/setest_module_load.o] Error 1
make[1]: *** [Makefile:1805: /home/nathan/src/selinux-testsuite/tests/modul=
e_load] Error 2
make[1]: Leaving directory '/home/nathan/cbl/src/linux'
make: *** [Makefile:8: all] Error 2

Isn't this expected though? Modules should be built with the exact same
options and it is not. I presume that these tests are compiled natively
so I am doing to ignore the fact that just "gcc" is used, rather than
"$(CROSS_COMPILE)gcc". It seems like "LLVM=3D1" or "CC=3Dclang" should be
passed along to this Makefile, I am not sure what the best way to do
that would be. I am not at all familiar with this test suite would be.

If my analysis is wrong, please let me know!

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210125191247.GA4004887%40ubuntu-m3-large-x86.
