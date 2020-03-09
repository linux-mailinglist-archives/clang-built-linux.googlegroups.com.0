Return-Path: <clang-built-linux+bncBDEPBSN75UNRBDP6TDZQKGQEDONLFJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 490B217E0C1
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 14:05:19 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id m16sf1420214uao.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 06:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583759118; cv=pass;
        d=google.com; s=arc-20160816;
        b=DgD64I4dOx9jmvr9+cLiE7ToXL2g75kBadJFj8G9BOpES1IBxBkiAqGPKmQ7pMBK4o
         CnBhv8dTKatZHWKt+acUEShiOXZJuvAOVgz7+HargsSFHfJl3alz7h07lZIK7YnQGlqa
         2c2BOgC47oa7eHl2e3OUgBTuAtLY4u0OlZww+fY41nsbfZoFpXkh6Y/HIj4md0kbJfV+
         TPoSScq9UlMTiTCHTgYYmbkO0uQnvWlgT9ReBSq2mOU2G+CkYkoDDrQyknqWquF+lnfs
         QUpaQNFsA7ZlQoPmHlAY3SycNIn4Rsp1yBxQuT339XsQ+04ZxGZoTPHNIvFA4TyNohAR
         1y8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:dkim-signature
         :dkim-signature;
        bh=cP6EwS2aZvjcCwrJxm/t6UKt9YnN+IknUArnOKOHYWk=;
        b=QMocffCg0Xjq1Y7+BGxim7BYvdvvfeeSWYnY6yJ4RobHpPTzEiS5B/zUc6WY4/A6zk
         u5WOf6zKpbg2yx6WZFcUMkIABOxmmBqh/+RDqFj8xtEcq04Q+cZWp2ZGVkHNqVMl+be5
         n2iN8LXAIe79SpH0/TYpe9KrWpYbhgaJg9R2unw9owBEZoeNMqgGZL4UiMlIMeD+d/PA
         rYz+nb9Z6RaXqpNcoKQV5WRF8E/fcJ7HX80pan2qoPxrUXTkcJsC7FXzaA5jhQwTv1lY
         fbVMbmAz2dwKR7mkVWi76K9r8b1pcUbKadmPblB43FU8Kd0h2fZot6xLSpQvmpgtgTdL
         5a0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hccoAcm3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cP6EwS2aZvjcCwrJxm/t6UKt9YnN+IknUArnOKOHYWk=;
        b=cMWbwqWGJ/ZO+qwAx+i584T7ApWcXcQYHvHF9q5HxK9t9bHWwNrk+x703odh6KOXvg
         MQT3Mj0Zdv5ndouZdH/Ml33g53CD6jL5/ZfaMu0HDOJFwt2VBuWZyIps07Vus4OLnsXq
         uvhE1rpoL3aJRb4sUXoyYMvlz8a/csbmsuM/aWdEcMUK0Sux2RMVFFxX+E2XKZbDXIgc
         IbANgGYw5ATqXV/5a90qq5X0Oht7/RZXFJl7EBcm1OXNn15oyxdrp4jpk5c+DR52QNX7
         Tr0eZOrUZRjjufMKP0NZWHuuLZJ0BekZ0mwIf5gWh23zUqaT7aPCrHNRfEQgj8u7l8xV
         Tpuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cP6EwS2aZvjcCwrJxm/t6UKt9YnN+IknUArnOKOHYWk=;
        b=B9/sEPSBJ7gT3CeB74LUXfr83Kx5txQ4XuKF7/ky4MaL7f1ayi2cKnlAcnW4DBUVIV
         av9Rl3Iio+oiehFWHdfHycPkeH2FmlEdHaY7898XuXWQZ8l3t+KYSzGzgErCicSfq+zN
         3Ndt65j5mj/OrIWJ4aBQvCOUCSmJZHSACXeO03D4M+LYHEAKCh9xwJc6XeBxqOGAEiCB
         m3mb0Tkh8E8shK2RyOcUNWXjs1MiKor761PuNAdmhpL6kCur7zYMsUZ7KLH16CfM8T1r
         j0ZhJygbrVQj6rplh0SsFbKe3mHcKoKV6HjXD9CeHa9Oim7kRDQuEGFYu1Mqyat2WiFI
         smWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cP6EwS2aZvjcCwrJxm/t6UKt9YnN+IknUArnOKOHYWk=;
        b=cH19LOvz9lUV5FBL2ZqtwqOFVBC2J8mOH/CtpLAweLG4kbuY1RMw60uriQYcHULuQc
         r3/Jffaul+SU48wQCyP8h8oZwPMl5U3Zx/PDbUsXutwM6Yi2I1Lh5WMCiW0eSXxsrQ/w
         L7+YfYihfn4yL9UmUHS7yj3E9rpyDPaAh94a2Cegx26h5GKPsoaVuHtxKfLv4/BWCevK
         401mLMKCIHNwn1iDEocKhCRQqDylgdcrQBPvjSrqifReV1fqonYuMJ9K4IaRhdvOvNS8
         4DvBowK2aKMWhtM2+aL6mBvypqiPR5Sdvxno2tC1TlqkVdal8r2Pi075CbygX7L7ecc6
         suIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1BxzRV49HgihOJfoR72MSHmsaPwu/3V7YfFPTmtD2+vXnJYEIR
	sDI88VTACILp1m2vl58aBM4=
X-Google-Smtp-Source: ADFU+vuVUWsFBOalx2o3aXPoaa8lKKq5MQDKyMfKimdUP7b0H6F6KYr8xTEgi31OnQOM1g7vWFYJAQ==
X-Received: by 2002:ab0:26cd:: with SMTP id b13mr8582961uap.24.1583759118030;
        Mon, 09 Mar 2020 06:05:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cbda:: with SMTP id h26ls459769vkn.4.gmail; Mon, 09 Mar
 2020 06:05:17 -0700 (PDT)
X-Received: by 2002:ac5:ccb8:: with SMTP id p24mr8398961vkm.75.1583759117561;
        Mon, 09 Mar 2020 06:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583759117; cv=none;
        d=google.com; s=arc-20160816;
        b=fJ38X4uiaSD9KgHSKdtMgE8En02fr7FKMfzZjNU/Y/BWVELriIs6fDOdGjB0sDD4OL
         YOXZ0uYLS/4dwibv4el3Z/vwIfT+5KNnRHxT3UaYSdWIoUCi0a/4IEa8eSyV9/ych4w1
         5VLRDvXcs6gqZYSNH1VqmodDeHtNLH2F86zVI/5aPNP1deEnfJ42+W5OlAUc6O3O7U/4
         ZpAQoJWpmBS1X14wpYBJvpAbKpPm5mDb2S2LtczhzhPzoxvaLxnWjBkA7UDhlOOrbd/8
         gV0vHe2nQhebbwiAXVtLa/kFrxlFoayoMMQ05md+xPqYY5Hb6arO7RjUcP+9LPCiS94O
         qdQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=bCkrqFSza+GuAgjgOIEFqDUZgMNcJ9GnqqKHuJSixwQ=;
        b=a25h8rBiyEkiM4FNdR8AFHSPMdwR/HaqSA1zGQxs+ccvYV+Gls/8qWwDhLAuTisyEF
         FEGluVZGn2LUdAz9s6DkfVA6lQlBCBrF3YmF0SF+pp2nM5KN+eUQ+ET5lTvveZpcMQxD
         GDUS94Gbh6Dcb0fTZvQA1Oz/NByATc9JVHbz3/zPClnasOWgsuk7/jgJWknsMtiRs42N
         smmtTb9Z+e27bwbFvMHyoXGtRP5XPYhH3LE05Uzvti6rY7m1+6k4qO02qhiwsnsLpJfQ
         rXPXE9HGtBVhReH3y9sPifk6UAt3wK0lu2ktllSwo8YSIaJT56t4qc1QvZvfhBzXVDUA
         LAcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hccoAcm3;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id o20si97007vsn.0.2020.03.09.06.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:05:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id e13so6875743qts.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 06:05:17 -0700 (PDT)
X-Received: by 2002:ac8:a83:: with SMTP id d3mr14614338qti.228.1583759116960;
        Mon, 09 Mar 2020 06:05:16 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id i28sm23190789qtc.57.2020.03.09.06.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 06:05:16 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 73FB140009; Mon,  9 Mar 2020 10:05:12 -0300 (-03)
Date: Mon, 9 Mar 2020 10:05:12 -0300
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] perf python: better clang detection
Message-ID: <20200309130512.GA32666@kernel.org>
References: <20200309085618.14307-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200309085618.14307-1-ilie.halip@gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hccoAcm3;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::835
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Mon, Mar 09, 2020 at 10:56:17AM +0200, Ilie Halip escreveu:
> Currently, the setup.py script detects the clang compiler only when invok=
ed
> with CC=3Dclang. But when using a specific version (e.g. CC=3Dclang-11), =
this
> doesn't work correctly and wrong compiler flags are set, leading to build
> errors.
>=20
> To properly detect clang, invoke the compiler with -v and check the outpu=
t.
> The first line should start with "clang version ...".
>=20
> Link: https://github.com/ClangBuiltLinux/linux/issues/903
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Thanks, tested, added the testing performed (see below) to the cset
message and applied,

- Arnaldo

commit a7ffd416d80497f03d1f62c0b330cff76a86d5ad
Author: Ilie Halip <ilie.halip@gmail.com>
Date:   Mon Mar 9 10:56:17 2020 +0200

    perf python: Fix clang detection when using CC=3Dclang-version
   =20
    Currently, the setup.py script detects the clang compiler only when inv=
oked
    with CC=3Dclang. But when using a specific version (e.g. CC=3Dclang-11)=
, this
    doesn't work correctly and wrong compiler flags are set, leading to bui=
ld
    errors.
   =20
    To properly detect clang, invoke the compiler with -v and check the out=
put.
    The first line should start with "clang version ...".
   =20
    Committer testing:
   =20
      $ make CC=3Dclang-9 O=3D/tmp/build/perf -C tools/perf install-bin
      <SNIP>
      $ readelf -wi /tmp/build/perf/python/perf.cpython-37m-x86_64-linux-gn=
u.so | grep DW_AT_producer | head -1
        <c>   DW_AT_producer    : (indirect string, offset: 0x0): clang ver=
sion 9.0.1 (Fedora 9.0.1-2.fc31) /usr/bin/clang-9 -Wno-unused-result -Wsign=
-compare -D DYNAMIC_ANNOTATIONS_ENABLED=3D1 -D NDEBUG -O2 -g -pipe -Wall -W=
error=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 -Wp,-D_GLIBCXX_ASSERTIONS=
 -fexceptions -fstack-protector-strong -grecord-command-line -m64 -mtune=3D=
generic -fasynchronous-unwind-tables -fcf-protection=3Dfull -D _GNU_SOURCE =
-fPIC -fwrapv -Wbad-function-cast -Wdeclaration-after-statement -Wformat-se=
curity -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes=
 -Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wred=
undant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Ww=
rite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPPORT -I /tmp/build/pe=
rf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUPPORT -D HAVE_PERF_RE=
GS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O3 -fno-omit-fr=
ame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-prote=
ctor-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURCE -D _FILE_OFFSET_BITS=
=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/lib/perf/include -I /home=
/acme/git/perf/tools/perf/util/include -I /home/acme/git/perf/tools/perf/ar=
ch/x86/include -I /home/acme/git/perf/tools/include/ -I /home/acme/git/perf=
/tools/arch/x86/include/uapi -I /home/acme/git/perf/tools/include/uapi -I /=
home/acme/git/perf/tools/arch/x86/include/ -I /home/acme/git/perf/tools/arc=
h/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/ -I /home/acme/git/perf/=
tools/perf/util -I /home/acme/git/perf/tools/perf -I /home/acme/git/perf/to=
ols/lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAVE_PTHREAD_BARRIER -D HAV=
E_EVENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETTID -D HAVE_DWARF_GETLOCA=
TIONS_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUPPORT -D HAVE_SCHED_GETCP=
U_SUPPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPPORT -D HAVE_LIBELF_MMAP_=
SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF_GETNOTE_SUPPORT -D HAVE=
_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D HAVE_LIBBPF_SUPPORT -D =
HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -D HAVE_DWARF_UNWIND_SU=
PPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_SUPPORT -D HAVE_LIBCRYP=
TO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT -D NO_LIBPERL -D HAVE=
_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CPLUS_DEMANGLE_SUPPORT -=
D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZMA_SUPPORT -D HAVE_ZST=
D_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SUPPORT -D HAVE_LIBNUMA_=
SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARGS_SIGNATURE -D HAVE_LIBB=
ABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_JVMTI_CMLR -I /tmp/build=
/perf/ -fPIC -I util/include -I /usr/include/python3.7m -c /home/acme/git/p=
erf/tools/perf/util/python.c -o /tmp/build/perf/python_ext_build/tmp/home/a=
cme/git/perf/tools/perf/util/python.o -Wbad-function-cast -Wdeclaration-aft=
er-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarati=
ons -Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-d=
efinition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -=
Wswitch-enum -Wundef -Wwrite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_=
SUPPORT -I /tmp/build/perf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE=
_SUPPORT -D HAVE_PERF_REGS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET =
-Werror -O3 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -s=
td=3Dgnu99 -fstack-protector-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOU=
RCE -D _FILE_OFFSET_BITS=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/l=
ib/perf/include -I /home/acme/git/perf/tools/perf/util/include -I /home/acm=
e/git/perf/tools/perf/arch/x86/include -I /home/acme/git/perf/tools/include=
/ -I /home/acme/git/perf/tools/arch/x86/include/uapi -I /home/acme/git/perf=
/tools/include/uapi -I /home/acme/git/perf/tools/arch/x86/include/ -I /home=
/acme/git/perf/tools/arch/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/=
 -I /home/acme/git/perf/tools/perf/util -I /home/acme/git/perf/tools/perf -=
I /home/acme/git/perf/tools/lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAV=
E_PTHREAD_BARRIER -D HAVE_EVENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETT=
ID -D HAVE_DWARF_GETLOCATIONS_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUP=
PORT -D HAVE_SCHED_GETCPU_SUPPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPP=
ORT -D HAVE_LIBELF_MMAP_SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF=
_GETNOTE_SUPPORT -D HAVE_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D=
 HAVE_LIBBPF_SUPPORT -D HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP=
 -D HAVE_DWARF_UNWIND_SUPPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND=
_SUPPORT -D HAVE_LIBCRYPTO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPO=
RT -D NO_LIBPERL -D HAVE_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_=
CPLUS_DEMANGLE_SUPPORT -D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_=
LZMA_SUPPORT -D HAVE_ZSTD_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_=
SUPPORT -D HAVE_LIBNUMA_SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARG=
S_SIGNATURE -D HAVE_LIBBABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_=
JVMTI_CMLR -I /tmp/build/perf/ -fno-strict-aliasing -Wno-write-strings -Wno=
-unused-parameter -Wno-redundant-decls
      $
   =20
    And here is how tools/perf/util/setup.py checks if the used clang has
    options that the distro specific python extension building compiler
    defaults:
   =20
      if cc_is_clang:
          from distutils.sysconfig import get_config_vars
          vars =3D get_config_vars()
          for var in ('CFLAGS', 'OPT'):
              vars[var] =3D sub("-specs=3D[^ ]+", "", vars[var])
              if not clang_has_option("-mcet"):
                  vars[var] =3D sub("-mcet", "", vars[var])
              if not clang_has_option("-fcf-protection"):
                  vars[var] =3D sub("-fcf-protection", "", vars[var])
              if not clang_has_option("-fstack-clash-protection"):
                  vars[var] =3D sub("-fstack-clash-protection", "", vars[va=
r])
              if not clang_has_option("-fstack-protector-strong"):
                  vars[var] =3D sub("-fstack-protector-strong", "", vars[va=
r])
   =20
    So "-fcf-protection=3Dfull" is used, clang-9 has this option and thus i=
t
    was kept, the perf python extension was built with it and the build
    completed successfully.
   =20
    Link: https://github.com/ClangBuiltLinux/linux/issues/903
    Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
    Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
    Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
    Cc: Igor Lubashev <ilubashe@akamai.com>
    Cc: Jiri Olsa <jolsa@redhat.com>
    Cc: Mark Rutland <mark.rutland@arm.com>
    Cc: Namhyung Kim <namhyung@kernel.org>
    Cc: Peter Zijlstra <peterz@infradead.org>
    Cc: clang-built-linux@googlegroups.com
    Link: http://lore.kernel.org/lkml/20200309085618.14307-1-ilie.halip@gma=
il.com
    Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>

diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
index aa344a163eaf..8a065a6f9713 100644
--- a/tools/perf/util/setup.py
+++ b/tools/perf/util/setup.py
@@ -2,11 +2,13 @@ from os import getenv
 from subprocess import Popen, PIPE
 from re import sub
=20
+cc =3D getenv("CC")
+cc_is_clang =3D b"clang version" in Popen([cc, "-v"], stderr=3DPIPE).stder=
r.readline()
+
 def clang_has_option(option):
-    return [o for o in Popen(['clang', option], stderr=3DPIPE).stderr.read=
lines() if b"unknown argument" in o] =3D=3D [ ]
+    return [o for o in Popen([cc, option], stderr=3DPIPE).stderr.readlines=
() if b"unknown argument" in o] =3D=3D [ ]
=20
-cc =3D getenv("CC")
-if cc =3D=3D "clang":
+if cc_is_clang:
     from distutils.sysconfig import get_config_vars
     vars =3D get_config_vars()
     for var in ('CFLAGS', 'OPT'):
@@ -40,7 +42,7 @@ class install_lib(_install_lib):
 cflags =3D getenv('CFLAGS', '').split()
 # switch off several checks (need to be at the end of cflags list)
 cflags +=3D ['-fno-strict-aliasing', '-Wno-write-strings', '-Wno-unused-pa=
rameter', '-Wno-redundant-decls' ]
-if cc !=3D "clang":
+if not cc_is_clang:
     cflags +=3D ['-Wno-cast-function-type' ]
=20
 src_perf  =3D getenv('srctree') + '/tools/perf'

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200309130512.GA32666%40kernel.org.
