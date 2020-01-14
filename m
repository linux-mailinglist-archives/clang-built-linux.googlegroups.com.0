Return-Path: <clang-built-linux+bncBDEPBSN75UNRBMP57DYAKGQER72TUBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D37F513B530
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 23:20:34 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id r17sf9652874pfl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 14:20:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579040433; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRHzlVYMS+GnYB889dY1hOfR+T3bN4Fthf+geWuycScF0zJql8A6cTfgVWU9BWlXUI
         71RV6lXzlw6U9PsAuNI5P3bDKzU0lnu2bANXQVLsQaJzQU8scSNRATuOl1VVUuDfBfRW
         CPHN2V6Rdd4tYhZnTxD7XXjCXdLuX3l2No+vkRDVgUhjjCm5Yn2NaIaVS/Gk3jw1AkQ/
         aUyLyRU1pVNPmNQNI4wltuIzLV7AqymrpmpwhEg2lM0nqLUnfvZX8B07i5U9uW3ZDQ/I
         U6T6uOF79RNAcA2dw+js3qynu3ViIh65ck5h1L5FZtciS0eaMj8XD/9Q20u5H+4JAygw
         Qr3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:dkim-signature
         :dkim-signature;
        bh=7djnt2VOV4maxhIwIDMJKYEulCd0CuVAlkBvnmrY+Io=;
        b=G9FQnFB+Zb2KPddppVapF3MiuxU4/3GZ1FaVWIrigd2zmPcc7Rpr31OhFzVq2jQfBE
         ZC0heVpfFnSCOF1MBEE89bQ9xp5r5Wz846sh2Kayr9otzzpxgzO/VJuaQGpZASL2GtNI
         C2FLLuyqIgPGu4cFK8XxHmckM66DIzXCf8h/mMwoJPX2/z8NN1LTigHC2/iBCRgtBVBo
         fNUabVXxTN2fTxHNI4n9mIEF4cbI6QU2/JT86DJBFczm49UA/w7E8d0oH5YucLjA3Lp2
         dfnDLL6w7PlqT6DCWN0ST0c7ObVo0N/RInTztWf0rLzDmfDktbzLeB4CJC4EHHtsJiZ1
         uvBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="V8/M/5qf";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7djnt2VOV4maxhIwIDMJKYEulCd0CuVAlkBvnmrY+Io=;
        b=KG/1gXm7ZqhR6TmotFsaZeIS4YzopOjgvyDH/sJ46KWeKzusctODll/bMtHOanMq6b
         DjU4V5CSdYOPN/gFW+9Cf+/tEzhpz6pesi7wHSv8NwI3uF1dQPNId4ZGikzCbDD75zf/
         6MV3UdHvlBOh3UkWxlgxjyD8vxznEfYH/LsFF1JFFM55eZvVc7Yy5x7HeljzXQHROL01
         PuwWPCwaz8qRwELagj41WRaTmRSkjwHBMhnBxd21iSoXajA0K6G76udgUEZKY05TUUnG
         wHXdMX6Bt/OQa7azTsT4w3f0pzwCu6MhorEWf5bmSXcqUkStt2VQ3DgQWdmPhVgG22lm
         Gf1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7djnt2VOV4maxhIwIDMJKYEulCd0CuVAlkBvnmrY+Io=;
        b=eL+vjjfcNoOxT3BoUTfw83IcKMjn4eQnkyWGkJ5jmEqlBE7qVebSFyZUy9eA81F8er
         nAsldaGUuu8oGFAJsu64AdwJ9erAT1k6FWBNUmQ/bhtGpDOcvtOEoXaKqPyyRy7R00kl
         V+UPMbpJKhtjrMNaasrRpqKU3Cpd9MIbefH2XEk3HhK1oHGYQmhMPPmtHkFUQOW9a6GD
         YIESiB9x+Menzz8INpycDITRrdG0qQCiSQUml7h6H1C0n/9lRL4x/qGCdJ8S/cVSOyuq
         t4h02cUJ91YUGyMAs+HJtLoHHZz1DgobYr3jYZ6+AUBpwyCvZ0YkY9HoLCg2TOJhmIsW
         Ddiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7djnt2VOV4maxhIwIDMJKYEulCd0CuVAlkBvnmrY+Io=;
        b=qgApBu4QTISZZCjZibuDyHjuiIxZRPjPrRkmCn63PKffnkFiDP1Ov029Pp0VTtg6ZW
         9iOeK8juOsJ9i5JC4e1H9r960RWd7QrdCZE5hqnYP3S0PXsKt+ooFsdJjelYGv7js5GB
         QYwoCGISbxvMcbIDhGliODVpNgGWr/T4Yz9s27VDJ2NUqHar+JHRDGou7WAbI5HBSDkn
         nnATyWsUIcoC7p7Bx8UCI54VicDbK0wpt8qBs9lE8jcfsz/vwGeR6bGr+O93gwggS22+
         dX40DLc8v6yNoEnyO8S9b8I6SNs0YNY0eSkD/+tcfWOnDgjqIzapvx0pPzVgVcafhDd8
         AAaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLDnyA+hDAU7N2j2CgIhDELFjp3R/p1cxbMj5Oo0oTx3t54+Rg
	La5nFp7jD4Wb6i8Ggp2+FqE=
X-Google-Smtp-Source: APXvYqwufYHKnHrsjxIxFc/2hWoxg42ktIodyf6XlMnD1IRpqk5y3DKQtqmFkqRpwEIPbPQlMlTOtw==
X-Received: by 2002:a62:f94d:: with SMTP id g13mr27426909pfm.60.1579040433283;
        Tue, 14 Jan 2020 14:20:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2703:: with SMTP id n3ls4705523pgn.5.gmail; Tue, 14 Jan
 2020 14:20:32 -0800 (PST)
X-Received: by 2002:a63:d157:: with SMTP id c23mr29364061pgj.242.1579040432557;
        Tue, 14 Jan 2020 14:20:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579040432; cv=none;
        d=google.com; s=arc-20160816;
        b=KnowGKKHgmw9VO8NsPF8V0jb4suzDdNE4MVK5LpEPQa9nLVU9OMcMI7zFSoFnXWw/V
         A/6WgVWGE4Wk3EhYrJx+peISM3XtQyLbRTnx/dh0xa/VZ0gL0f9HVhzTtkwdWT1LsjyM
         1X7c8uq+4WOzQ65Sme26A+EV3PK2rcSmi0oYtq7kwJF+qmADZ0qmLU8uBK1df1mLNYas
         U/9PwqlP5cWM/af8bhR3kQYSBcGZSd+8Avm7qzC7lkFS8ltsyueYvWAc+rKWkKb5H+kg
         Um419tZ3K8apgS/I2rQpaAx/tRhiU8wSnsYhlgYuQ8jrdHu92qkDtBC8pAjXaMyN/z1w
         qBGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :dkim-signature;
        bh=URKCBjIxOrqM3hmPXkt7CSLcoGmgV+3c383ZghftPC0=;
        b=NVQ+lsGizDzE5tIumZAzeZaYqa/fkdAbSnGBoA4PO0O8ZRj5uKhMJZilDaAj+UFigr
         XwShT8SuKcCHwqOVUvP1gqcFUopAjT+BnVHFjAqLlVmELUberwXsydCSlou3PInzh5+2
         ts1rm48z+jdrFK9z6ikmDEclCSA5/OUCxqzDqisCgWD30/evkUdFe7kcBk2izjNNjpka
         qETmJn9qkfvdU//lURrW10H82FwgmlShCad/W9v7+x8cNXHPFlPyZ7AKbGgP/PJHii1v
         ALvBzuB4JFCS4LM8aNQiI8xk/KLF8DLFBIYasiG7kxgBJ5A0jE++VUQvd+x+5WAUyEMl
         iImg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="V8/M/5qf";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id c4si621316plr.4.2020.01.14.14.20.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2020 14:20:32 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id 21so13826650qky.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jan 2020 14:20:31 -0800 (PST)
X-Received: by 2002:a05:620a:1592:: with SMTP id d18mr24319405qkk.80.1579040430492;
        Tue, 14 Jan 2020 14:20:30 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id d26sm7290056qka.28.2020.01.14.14.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 14:20:29 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 08F2B40DFD; Tue, 14 Jan 2020 19:20:25 -0300 (-03)
Date: Tue, 14 Jan 2020 19:20:25 -0300
To: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Dennis Schridde <devurandom@gmx.net>,
	Denis Pronin <dannftk@yandex.ru>, Naohiro Aota <naota@elisp.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] perf clang: Fix build with Clang 9
Message-ID: <20200114222025.GC4769@kernel.org>
References: <20191228171314.946469-2-mail@maciej.szmigiero.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191228171314.946469-2-mail@maciej.szmigiero.name>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="V8/M/5qf";       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742
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

Em Sat, Dec 28, 2019 at 06:13:14PM +0100, Maciej S. Szmigiero escreveu:
> LLVM D59377 (included in Clang 9) refactored Clang VFS construction a bit=
,
> which broke perf clang build.
> Let's fix it.
>=20
> Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
> Reviewed-by: Dennis Schridde <devurandom@gmx.net>
> ---
>  tools/perf/util/c++/clang.cpp | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/tools/perf/util/c++/clang.cpp b/tools/perf/util/c++/clang.cp=
p
> index fc361c3f8570..c8885dfa3667 100644
> --- a/tools/perf/util/c++/clang.cpp
> +++ b/tools/perf/util/c++/clang.cpp
> @@ -71,7 +71,11 @@ getModuleFromSource(llvm::opt::ArgStringList CFlags,
>  	CompilerInstance Clang;
>  	Clang.createDiagnostics();
> =20
> +#if CLANG_VERSION_MAJOR < 9
>  	Clang.setVirtualFileSystem(&*VFS);
> +#else
> +	Clang.createFileManager(&*VFS);
> +#endif

Building on ubuntu 19.10 fails, is this related? Or to the other patch? I
haven't paid attention other than realizing its clang related.

+ make ARCH=3D CROSS_COMPILE=3D EXTRA_CFLAGS=3D LIBCLANGLLVM=3D1 -C /git/li=
nux/tools/perf O=3D/tmp/build/perf CC=3Dclang
make: Entering directory '/git/linux/tools/perf'
  BUILD:   Doing 'make -j8' parallel build
  HOSTCC   /tmp/build/perf/fixdep.o
  HOSTLD   /tmp/build/perf/fixdep-in.o
  LINK     /tmp/build/perf/fixdep

Auto-detecting system features:
...                         dwarf: [ on  ]
...            dwarf_getlocations: [ on  ]
...                         glibc: [ on  ]
...                          gtk2: [ on  ]
...                      libaudit: [ on  ]
...                        libbfd: [ on  ]
...                        libcap: [ on  ]
...                        libelf: [ on  ]
...                       libnuma: [ on  ]
...        numa_num_possible_cpus: [ on  ]
...                       libperl: [ on  ]
...                     libpython: [ on  ]
...                     libcrypto: [ on  ]
...                     libunwind: [ on  ]
...            libdw-dwarf-unwind: [ on  ]
...                          zlib: [ on  ]
...                          lzma: [ on  ]
...                     get_cpuid: [ on  ]
...                           bpf: [ on  ]
...                        libaio: [ on  ]
...                       libzstd: [ on  ]
...        disassembler-four-args: [ on  ]

Makefile.config:922: No libbabeltrace found, disables 'perf data' CTF forma=
t support, please install libbabeltrace-dev[el]/libbabeltrace-ctf-dev
Makefile.config:948: No alternatives command found, you need to set JDIR=3D=
 to point to the root of your Java directory
  CC       /tmp/build/perf/cpu.o
  MKDIR    /tmp/build/perf/fd/
  MKDIR    /tmp/build/perf/fs/
  CC       /tmp/build/perf/fd/array.o
  CC       /tmp/build/perf/fs/fs.o
  CC       /tmp/build/perf/exec-cmd.o
  PERF_VERSION =3D 5.5.rc3.gc1c8013ec34d
  GEN      /tmp/build/perf/common-cmds.h
  CC       /tmp/build/perf/event-parse.o
  CC       /tmp/build/perf/event-plugin.o
  LD       /tmp/build/perf/fd/libapi-in.o
  CC       /tmp/build/perf/help.o
  CC       /tmp/build/perf/core.o
  MKDIR    /tmp/build/perf/staticobjs/
  CC       /tmp/build/perf/staticobjs/libbpf.o
  MKDIR    /tmp/build/perf/fs/
  CC       /tmp/build/perf/fs/tracing_path.o
  CC       /tmp/build/perf/pager.o
  CC       /tmp/build/perf/cpumap.o
  CC       /tmp/build/perf/threadmap.o
  CC       /tmp/build/perf/trace-seq.o
  LD       /tmp/build/perf/fs/libapi-in.o
  CC       /tmp/build/perf/debug.o
  CC       /tmp/build/perf/str_error_r.o
  CC       /tmp/build/perf/parse-options.o
  CC       /tmp/build/perf/parse-filter.o
  CC       /tmp/build/perf/parse-utils.o
  LD       /tmp/build/perf/libapi-in.o
  CC       /tmp/build/perf/evsel.o
  AR       /tmp/build/perf/libapi.a
  CC       /tmp/build/perf/evlist.o
  CC       /tmp/build/perf/kbuffer-parse.o
  CC       /tmp/build/perf/tep_strerror.o
  CC       /tmp/build/perf/event-parse-api.o
  CC       /tmp/build/perf/mmap.o
  CC       /tmp/build/perf/zalloc.o
  CC       /tmp/build/perf/xyarray.o
  LD       /tmp/build/perf/libtraceevent-in.o
  LINK     /tmp/build/perf/libtraceevent.a
  MKDIR    /tmp/build/perf/staticobjs/
  CC       /tmp/build/perf/lib.o
  CC       /tmp/build/perf/staticobjs/bpf.o
  CC       /tmp/build/perf/staticobjs/nlattr.o
  CC       /tmp/build/perf/staticobjs/btf.o
  CC       /tmp/build/perf/run-command.o
  CC       /tmp/build/perf/staticobjs/libbpf_errno.o
  CC       /tmp/build/perf/staticobjs/str_error.o
  LD       /tmp/build/perf/libperf-in.o
  AR       /tmp/build/perf/libperf.a
  CC       /tmp/build/perf/sigchain.o
  CC       /tmp/build/perf/staticobjs/netlink.o
  CC       /tmp/build/perf/staticobjs/bpf_prog_linfo.o
  CC       /tmp/build/perf/staticobjs/libbpf_probes.o
  CC       /tmp/build/perf/subcmd-config.o
  CC       /tmp/build/perf/staticobjs/xsk.o
  CC       /tmp/build/perf/staticobjs/hashmap.o
  CC       /tmp/build/perf/staticobjs/btf_dump.o
  LD       /tmp/build/perf/libsubcmd-in.o
  AR       /tmp/build/perf/libsubcmd.a
  LD       /tmp/build/perf/staticobjs/libbpf-in.o
  LINK     /tmp/build/perf/libbpf.a
  MKDIR    /tmp/build/perf/pmu-events/
  MKDIR    /tmp/build/perf/pmu-events/
  MKDIR    /tmp/build/perf/pmu-events/
  HOSTCC   /tmp/build/perf/pmu-events/jsmn.o
  HOSTCC   /tmp/build/perf/pmu-events/json.o
  HOSTCC   /tmp/build/perf/pmu-events/jevents.o
  GEN      perf-archive
  GEN      perf-with-kcore
  MKDIR    /tmp/build/perf/ui/gtk/
  MKDIR    /tmp/build/perf/ui/gtk/
  CC       /tmp/build/perf/ui/gtk/browser.o
  CC       /tmp/build/perf/ui/gtk/setup.o
  CC       /tmp/build/perf/ui/gtk/hists.o
  CC       /tmp/build/perf/ui/gtk/util.o
  CC       /tmp/build/perf/ui/gtk/helpline.o
  DESCEND  plugins
  HOSTLD   /tmp/build/perf/pmu-events/jevents-in.o
  LINK     /tmp/build/perf/pmu-events/jevents
  CC       /tmp/build/perf/plugins/plugin_jbd2.o
  GEN      /tmp/build/perf/pmu-events/pmu-events.c
  LD       /tmp/build/perf/plugins/plugin_jbd2-in.o
  CC       /tmp/build/perf/plugins/plugin_hrtimer.o
  LD       /tmp/build/perf/plugins/plugin_hrtimer-in.o
  CC       /tmp/build/perf/plugins/plugin_kmem.o
  LD       /tmp/build/perf/plugins/plugin_kmem-in.o
  CC       /tmp/build/perf/plugins/plugin_kvm.o
  CC       /tmp/build/perf/pmu-events/pmu-events.o
  LD       /tmp/build/perf/plugins/plugin_kvm-in.o
  CC       /tmp/build/perf/plugins/plugin_mac80211.o
  CC       /tmp/build/perf/ui/gtk/progress.o
  CC       /tmp/build/perf/ui/gtk/annotate.o
  CC       /tmp/build/perf/ui/gtk/zalloc.o
  CC       /tmp/build/perf/plugins/plugin_sched_switch.o
  LD       /tmp/build/perf/plugins/plugin_mac80211-in.o
  CC       /tmp/build/perf/plugins/plugin_xen.o
  CC       /tmp/build/perf/plugins/plugin_function.o
  LD       /tmp/build/perf/plugins/plugin_sched_switch-in.o
  CC       /tmp/build/perf/plugins/plugin_scsi.o
  LD       /tmp/build/perf/plugins/plugin_xen-in.o
  LD       /tmp/build/perf/plugins/plugin_function-in.o
  LINK     /tmp/build/perf/plugins/plugin_jbd2.so
  CC       /tmp/build/perf/plugins/plugin_cfg80211.o
  LD       /tmp/build/perf/plugins/plugin_scsi-in.o
  LINK     /tmp/build/perf/plugins/plugin_hrtimer.so
  LINK     /tmp/build/perf/plugins/plugin_kmem.so
  LD       /tmp/build/perf/plugins/plugin_cfg80211-in.o
  LINK     /tmp/build/perf/plugins/plugin_kvm.so
  LINK     /tmp/build/perf/plugins/plugin_mac80211.so
  LINK     /tmp/build/perf/plugins/plugin_sched_switch.so
  LINK     /tmp/build/perf/plugins/plugin_function.so
  LINK     /tmp/build/perf/plugins/plugin_xen.so
  LINK     /tmp/build/perf/plugins/plugin_scsi.so
  LINK     /tmp/build/perf/plugins/plugin_cfg80211.so
  CC       /tmp/build/perf/builtin-bench.o
  CC       /tmp/build/perf/builtin-annotate.o
  CC       /tmp/build/perf/builtin-config.o
  CC       /tmp/build/perf/builtin-diff.o
  GEN      /tmp/build/perf/plugins/libtraceevent-dynamic-list
  CC       /tmp/build/perf/builtin-evlist.o
  CC       /tmp/build/perf/builtin-ftrace.o
  CC       /tmp/build/perf/builtin-help.o
make[3]: Nothing to be done for '/tmp/build/perf/plugins/libtraceevent-dyna=
mic-list'.
  GEN      /tmp/build/perf/python/perf.so
  CC       /tmp/build/perf/builtin-sched.o
  LD       /tmp/build/perf/ui/gtk/gtk-in.o
  LD       /tmp/build/perf/gtk-in.o
  LINK     /tmp/build/perf/libperf-gtk.so
  CC       /tmp/build/perf/builtin-buildid-list.o
  LD       /tmp/build/perf/pmu-events/pmu-events-in.o
  CC       /tmp/build/perf/builtin-buildid-cache.o
  CC       /tmp/build/perf/builtin-kallsyms.o
  CC       /tmp/build/perf/builtin-list.o
  CC       /tmp/build/perf/builtin-record.o
  CC       /tmp/build/perf/builtin-report.o
  CC       /tmp/build/perf/builtin-stat.o
  CC       /tmp/build/perf/builtin-timechart.o
  CC       /tmp/build/perf/builtin-top.o
  CC       /tmp/build/perf/builtin-script.o
  CC       /tmp/build/perf/builtin-kmem.o
  CC       /tmp/build/perf/builtin-lock.o
  CC       /tmp/build/perf/builtin-kvm.o
  CC       /tmp/build/perf/builtin-inject.o
  CC       /tmp/build/perf/builtin-mem.o
  CC       /tmp/build/perf/builtin-data.o
  CC       /tmp/build/perf/builtin-version.o
  CC       /tmp/build/perf/builtin-c2c.o
  CC       /tmp/build/perf/builtin-trace.o
  CC       /tmp/build/perf/builtin-probe.o
  MKDIR    /tmp/build/perf/bench/
  CC       /tmp/build/perf/bench/sched-messaging.o
  MKDIR    /tmp/build/perf/tests/
  CC       /tmp/build/perf/tests/builtin-test.o
  MKDIR    /tmp/build/perf/bench/
  CC       /tmp/build/perf/bench/sched-pipe.o
  MKDIR    /tmp/build/perf/tests/
  CC       /tmp/build/perf/tests/parse-events.o
  CC       /tmp/build/perf/bench/mem-functions.o
  MKDIR    /tmp/build/perf/util/
  CC       /tmp/build/perf/util/annotate.o
  CC       /tmp/build/perf/bench/futex-hash.o
  MKDIR    /tmp/build/perf/util/
  CC       /tmp/build/perf/util/block-info.o
  CC       /tmp/build/perf/arch/common.o
  CC       /tmp/build/perf/bench/futex-wake.o
  MKDIR    /tmp/build/perf/arch/x86/util/
  CC       /tmp/build/perf/arch/x86/util/header.o
  CC       /tmp/build/perf/bench/futex-wake-parallel.o
  MKDIR    /tmp/build/perf/arch/x86/util/
  CC       /tmp/build/perf/arch/x86/util/tsc.o
  CC       /tmp/build/perf/util/block-range.o
  CC       /tmp/build/perf/arch/x86/util/pmu.o
  CC       /tmp/build/perf/bench/futex-requeue.o
  CC       /tmp/build/perf/ui/setup.o
  CC       /tmp/build/perf/util/build-id.o
  CC       /tmp/build/perf/arch/x86/util/kvm-stat.o
  CC       /tmp/build/perf/tests/dso-data.o
  CC       /tmp/build/perf/bench/futex-lock-pi.o
  CC       /tmp/build/perf/ui/helpline.o
  CC       /tmp/build/perf/arch/x86/util/perf_regs.o
  CC       /tmp/build/perf/ui/progress.o
  CC       /tmp/build/perf/bench/epoll-wait.o
  CC       /tmp/build/perf/arch/x86/util/group.o
  CC       /tmp/build/perf/ui/util.o
  CC       /tmp/build/perf/tests/attr.o
  CC       /tmp/build/perf/arch/x86/util/machine.o
  CC       /tmp/build/perf/ui/hist.o
  CC       /tmp/build/perf/util/cacheline.o
  CC       /tmp/build/perf/bench/epoll-ctl.o
  CC       /tmp/build/perf/arch/x86/util/event.o
  MKDIR    /tmp/build/perf/ui/stdio/
  CC       /tmp/build/perf/ui/stdio/hist.o
  CC       /tmp/build/perf/tests/vmlinux-kallsyms.o
  CC       /tmp/build/perf/arch/x86/util/dwarf-regs.o
  CC       /tmp/build/perf/bench/mem-memcpy-x86-64-lib.o
  CC       /tmp/build/perf/arch/x86/util/unwind-libunwind.o
  CC       /tmp/build/perf/tests/openat-syscall.o
  CC       /tmp/build/perf/bench/mem-memcpy-x86-64-asm.o
  CC       /tmp/build/perf/arch/x86/util/auxtrace.o
  CC       /tmp/build/perf/util/config.o
  CC       /tmp/build/perf/tests/openat-syscall-all-cpus.o
  CC       /tmp/build/perf/bench/mem-memset-x86-64-asm.o
  CC       /tmp/build/perf/bench/numa.o
  CC       /tmp/build/perf/arch/x86/util/archinsn.o
  CC       /tmp/build/perf/tests/openat-syscall-tp-fields.o
  CC       /tmp/build/perf/ui/browser.o
  CC       /tmp/build/perf/arch/x86/util/intel-pt.o
  CC       /tmp/build/perf/tests/mmap-basic.o
  CC       /tmp/build/perf/util/copyfile.o
  CC       /tmp/build/perf/tests/perf-record.o
  CC       /tmp/build/perf/tests/evsel-roundtrip-name.o
  CC       /tmp/build/perf/util/ctype.o
  CC       /tmp/build/perf/util/db-export.o
  MKDIR    /tmp/build/perf/ui/browsers/
  CC       /tmp/build/perf/ui/browsers/annotate.o
  CC       /tmp/build/perf/tests/evsel-tp-sched.o
  MKDIR    /tmp/build/perf/ui/browsers/
  CC       /tmp/build/perf/ui/browsers/hists.o
  CC       /tmp/build/perf/tests/fdarray.o
  CC       /tmp/build/perf/tests/pmu.o
  CC       /tmp/build/perf/arch/x86/util/intel-bts.o
  CC       /tmp/build/perf/tests/hists_common.o
  CC       /tmp/build/perf/tests/hists_link.o
  CC       /tmp/build/perf/util/env.o
  LD       /tmp/build/perf/bench/perf-in.o
  MKDIR    /tmp/build/perf/scripts/perl/Perf-Trace-Util/
  CC       /tmp/build/perf/scripts/perl/Perf-Trace-Util/Context.o
  LD       /tmp/build/perf/arch/x86/util/perf-in.o
  CC       /tmp/build/perf/tests/hists_filter.o
  MKDIR    /tmp/build/perf/arch/x86/tests/
  CC       /tmp/build/perf/arch/x86/tests/regs_load.o
  CC       /tmp/build/perf/util/event.o
  MKDIR    /tmp/build/perf/arch/x86/tests/
  CC       /tmp/build/perf/arch/x86/tests/dwarf-unwind.o
  CC       /tmp/build/perf/ui/browsers/map.o
  CC       /tmp/build/perf/tests/hists_output.o
  CC       /tmp/build/perf/arch/x86/tests/arch-tests.o
  CC       /tmp/build/perf/tests/hists_cumulate.o
  CC       /tmp/build/perf/ui/browsers/scripts.o
  CC       /tmp/build/perf/arch/x86/tests/rdpmc.o
  LD       /tmp/build/perf/scripts/perl/Perf-Trace-Util/perf-in.o
  MKDIR    /tmp/build/perf/scripts/python/Perf-Trace-Util/
  CC       /tmp/build/perf/util/evlist.o
  CC       /tmp/build/perf/scripts/python/Perf-Trace-Util/Context.o
  CC       /tmp/build/perf/arch/x86/tests/perf-time-to-tsc.o
  CC       /tmp/build/perf/ui/browsers/header.o
  CC       /tmp/build/perf/tests/python-use.o
  CC       /tmp/build/perf/tests/bp_signal.o
  CC       /tmp/build/perf/tests/bp_signal_overflow.o
  LD       /tmp/build/perf/scripts/python/Perf-Trace-Util/perf-in.o
  LD       /tmp/build/perf/scripts/perf-in.o
  CC       /tmp/build/perf/trace/beauty/clone.o
  CC       /tmp/build/perf/ui/browsers/res_sample.o
  CC       /tmp/build/perf/arch/x86/tests/insn-x86.o
  CC       /tmp/build/perf/tests/bp_account.o
  CC       /tmp/build/perf/tests/wp.o
  CC       /tmp/build/perf/trace/beauty/fcntl.o
  CC       /tmp/build/perf/trace/beauty/flock.o
  CC       /tmp/build/perf/trace/beauty/fsmount.o
  CC       /tmp/build/perf/tests/task-exit.o
  CC       /tmp/build/perf/trace/beauty/fspick.o
  CC       /tmp/build/perf/tests/sw-clock.o
  CC       /tmp/build/perf/arch/x86/tests/intel-pt-pkt-decoder-test.o
  CC       /tmp/build/perf/tests/mmap-thread-lookup.o
  CC       /tmp/build/perf/trace/beauty/ioctl.o
  CC       /tmp/build/perf/arch/x86/tests/bp-modify.o
  CC       /tmp/build/perf/tests/thread-maps-share.o
  CC       /tmp/build/perf/tests/switch-tracking.o
  CC       /tmp/build/perf/trace/beauty/kcmp.o
  CC       /tmp/build/perf/tests/keep-tracking.o
  LD       /tmp/build/perf/arch/x86/tests/perf-in.o
  LD       /tmp/build/perf/arch/x86/perf-in.o
  LD       /tmp/build/perf/arch/perf-in.o
  CC       /tmp/build/perf/perf.o
  CC       /tmp/build/perf/tests/code-reading.o
  CC       /tmp/build/perf/trace/beauty/mount_flags.o
  CC       /tmp/build/perf/util/evsel.o
  CC       /tmp/build/perf/trace/beauty/move_mount.o
  CC       /tmp/build/perf/tests/sample-parsing.o
  LD       /tmp/build/perf/ui/browsers/perf-in.o
  MKDIR    /tmp/build/perf/ui/tui/
  CC       /tmp/build/perf/ui/tui/setup.o
  CC       /tmp/build/perf/trace/beauty/pkey_alloc.o
  CC       /tmp/build/perf/util/evsel_fprintf.o
  CC       /tmp/build/perf/util/perf_event_attr_fprintf.o
  CC       /tmp/build/perf/trace/beauty/arch_prctl.o
  MKDIR    /tmp/build/perf/ui/tui/
  CC       /tmp/build/perf/ui/tui/util.o
  CC       /tmp/build/perf/tests/parse-no-sample-id-all.o
  CC       /tmp/build/perf/trace/beauty/prctl.o
  CC       /tmp/build/perf/ui/tui/helpline.o
  CC       /tmp/build/perf/util/evswitch.o
  CC       /tmp/build/perf/trace/beauty/renameat.o
  CC       /tmp/build/perf/util/find_bit.o
  CC       /tmp/build/perf/trace/beauty/sockaddr.o
  CC       /tmp/build/perf/trace/beauty/socket.o
  CC       /tmp/build/perf/ui/tui/progress.o
  CC       /tmp/build/perf/util/get_current_dir_name.o
  CC       /tmp/build/perf/trace/beauty/statx.o
  CC       /tmp/build/perf/trace/beauty/sync_file_range.o
  CC       /tmp/build/perf/util/kallsyms.o
  CC       /tmp/build/perf/tests/kmod-path.o
  CC       /tmp/build/perf/util/levenshtein.o
  CC       /tmp/build/perf/util/llvm-utils.o
  LD       /tmp/build/perf/ui/tui/perf-in.o
  LD       /tmp/build/perf/ui/perf-in.o
  CC       /tmp/build/perf/util/mmap.o
  CC       /tmp/build/perf/util/memswap.o
  MKDIR    /tmp/build/perf/trace/beauty/tracepoints/
  CC       /tmp/build/perf/trace/beauty/tracepoints/x86_irq_vectors.o
  BISON    /tmp/build/perf/util/parse-events-bison.c
  CC       /tmp/build/perf/util/perf_regs.o
  CC       /tmp/build/perf/util/path.o
  MKDIR    /tmp/build/perf/trace/beauty/tracepoints/
  CC       /tmp/build/perf/trace/beauty/tracepoints/x86_msr.o
  CC       /tmp/build/perf/util/print_binary.o
  CC       /tmp/build/perf/tests/thread-map.o
  CC       /tmp/build/perf/util/rlimit.o
  LD       /tmp/build/perf/trace/beauty/tracepoints/perf-in.o
  LD       /tmp/build/perf/trace/beauty/perf-in.o
  CC       /tmp/build/perf/util/argv_split.o
  CC       /tmp/build/perf/util/rbtree.o
  CC       /tmp/build/perf/util/libstring.o
  CC       /tmp/build/perf/util/bitmap.o
  CC       /tmp/build/perf/util/hweight.o
  CC       /tmp/build/perf/util/strbuf.o
  CC       /tmp/build/perf/util/smt.o
  CC       /tmp/build/perf/util/string.o
  CC       /tmp/build/perf/tests/llvm.o
  CC       /tmp/build/perf/util/strlist.o
  CC       /tmp/build/perf/util/strfilter.o
  CC       /tmp/build/perf/util/top.o
  CC       /tmp/build/perf/util/usage.o
  CC       /tmp/build/perf/tests/bpf.o
  CC       /tmp/build/perf/util/dso.o
  CC       /tmp/build/perf/util/dsos.o
  CC       /tmp/build/perf/util/symbol.o
  CC       /tmp/build/perf/util/symbol_fprintf.o
  CC       /tmp/build/perf/util/color.o
  CC       /tmp/build/perf/util/color_config.o
  CC       /tmp/build/perf/util/metricgroup.o
  CC       /tmp/build/perf/util/header.o
  CC       /tmp/build/perf/tests/topology.o
  CC       /tmp/build/perf/util/callchain.o
  CC       /tmp/build/perf/util/values.o
  CC       /tmp/build/perf/util/debug.o
  CC       /tmp/build/perf/tests/mem.o
  CC       /tmp/build/perf/util/fncache.o
  CC       /tmp/build/perf/util/machine.o
  CC       /tmp/build/perf/util/map.o
  CC       /tmp/build/perf/tests/cpumap.o
  CC       /tmp/build/perf/util/pstack.o
  CC       /tmp/build/perf/util/session.o
  CC       /tmp/build/perf/util/sample-raw.o
  CC       /tmp/build/perf/tests/stat.o
  CC       /tmp/build/perf/util/s390-sample-raw.o
  CC       /tmp/build/perf/tests/event_update.o
  CC       /tmp/build/perf/util/syscalltbl.o
  CC       /tmp/build/perf/util/ordered-events.o
  CC       /tmp/build/perf/util/namespaces.o
  CC       /tmp/build/perf/util/comm.o
  CC       /tmp/build/perf/tests/event-times.o
  CC       /tmp/build/perf/util/thread.o
  CC       /tmp/build/perf/util/thread_map.o
  CC       /tmp/build/perf/util/trace-event-parse.o
  CC       /tmp/build/perf/util/parse-events-bison.o
  CC       /tmp/build/perf/tests/expr.o
  CC       /tmp/build/perf/tests/backward-ring-buffer.o
  BISON    /tmp/build/perf/util/pmu-bison.c
  CC       /tmp/build/perf/util/trace-event-read.o
  CC       /tmp/build/perf/util/trace-event-info.o
  CC       /tmp/build/perf/util/trace-event-scripting.o
  CC       /tmp/build/perf/util/trace-event.o
  CC       /tmp/build/perf/util/svghelper.o
  CC       /tmp/build/perf/tests/sdt.o
  CC       /tmp/build/perf/util/sort.o
  CC       /tmp/build/perf/util/hist.o
  CC       /tmp/build/perf/util/util.o
  CC       /tmp/build/perf/tests/is_printable_array.o
  CC       /tmp/build/perf/util/cpumap.o
  CC       /tmp/build/perf/tests/bitmap.o
  CC       /tmp/build/perf/util/affinity.o
  CC       /tmp/build/perf/tests/perf-hooks.o
  CC       /tmp/build/perf/util/cputopo.o
  CC       /tmp/build/perf/util/cgroup.o
  CC       /tmp/build/perf/util/target.o
  CC       /tmp/build/perf/tests/clang.o
  CC       /tmp/build/perf/util/rblist.o
  CC       /tmp/build/perf/tests/unit_number__scnprintf.o
  CC       /tmp/build/perf/tests/mem2node.o
  CC       /tmp/build/perf/util/intlist.o
  CC       /tmp/build/perf/util/vdso.o
  CC       /tmp/build/perf/util/counts.o
  CC       /tmp/build/perf/util/stat.o
  CC       /tmp/build/perf/util/stat-shadow.o
  CC       /tmp/build/perf/util/stat-display.o
  CC       /tmp/build/perf/tests/maps.o
  CC       /tmp/build/perf/util/record.o
  CC       /tmp/build/perf/util/srcline.o
  CC       /tmp/build/perf/tests/time-utils-test.o
  CC       /tmp/build/perf/util/srccode.o
  CC       /tmp/build/perf/util/synthetic-events.o
  CC       /tmp/build/perf/tests/genelf.o
  CC       /tmp/build/perf/util/data.o
  CC       /tmp/build/perf/util/tsc.o
  CC       /tmp/build/perf/tests/dwarf-unwind.o
  CC       /tmp/build/perf/util/cloexec.o
  CC       /tmp/build/perf/util/call-path.o
  CC       /tmp/build/perf/util/rwsem.o
  CC       /tmp/build/perf/util/thread-stack.o
  CC       /tmp/build/perf/util/spark.o
  CC       /tmp/build/perf/tests/llvm-src-base.o
  CC       /tmp/build/perf/util/auxtrace.o
  CC       /tmp/build/perf/tests/llvm-src-kbuild.o
  CC       /tmp/build/perf/tests/llvm-src-prologue.o
  MKDIR    /tmp/build/perf/util/intel-pt-decoder/
  CC       /tmp/build/perf/util/intel-pt-decoder/intel-pt-pkt-decoder.o
  MKDIR    /tmp/build/perf/util/scripting-engines/
  CC       /tmp/build/perf/util/scripting-engines/trace-event-perl.o
  CC       /tmp/build/perf/util/scripting-engines/trace-event-python.o
  CC       /tmp/build/perf/tests/llvm-src-relocation.o
  MKDIR    /tmp/build/perf/util/c++/
  CXX      /tmp/build/perf/util/c++/clang.o
  LD       /tmp/build/perf/tests/perf-in.o
  MKDIR    /tmp/build/perf/util/c++/
  CXX      /tmp/build/perf/util/c++/clang-test.o
  MKDIR    /tmp/build/perf/util/intel-pt-decoder/
  GEN      /tmp/build/perf/util/intel-pt-decoder/inat-tables.c
  CC       /tmp/build/perf/util/intel-pt-decoder/intel-pt-log.o
  CC       /tmp/build/perf/util/intel-pt.o
  CC       /tmp/build/perf/util/intel-pt-decoder/intel-pt-decoder.o
  CC       /tmp/build/perf/util/intel-bts.o
  CC       /tmp/build/perf/util/arm-spe.o
  LD       /tmp/build/perf/util/scripting-engines/perf-in.o
  CC       /tmp/build/perf/util/arm-spe-pkt-decoder.o
  CC       /tmp/build/perf/util/s390-cpumsf.o
  CC       /tmp/build/perf/util/parse-branch-options.o
  CC       /tmp/build/perf/util/dump-insn.o
  CC       /tmp/build/perf/util/parse-regs-options.o
  CC       /tmp/build/perf/util/term.o
  CC       /tmp/build/perf/util/help-unknown-cmd.o
  CC       /tmp/build/perf/util/mem-events.o
  CC       /tmp/build/perf/util/vsprintf.o
  CC       /tmp/build/perf/util/intel-pt-decoder/intel-pt-insn-decoder.o
  CC       /tmp/build/perf/util/units.o
  CC       /tmp/build/perf/util/time-utils.o
  BISON    /tmp/build/perf/util/expr-bison.c
  CC       /tmp/build/perf/util/branch.o
  CC       /tmp/build/perf/util/mem2node.o
  CC       /tmp/build/perf/util/bpf-loader.o
  CC       /tmp/build/perf/util/bpf_map.o
  CC       /tmp/build/perf/util/bpf-prologue.o
  CC       /tmp/build/perf/util/symbol-elf.o
  LD       /tmp/build/perf/util/intel-pt-decoder/perf-in.o
  CC       /tmp/build/perf/util/probe-file.o
  CC       /tmp/build/perf/util/probe-event.o
  CC       /tmp/build/perf/util/probe-finder.o
  CC       /tmp/build/perf/util/dwarf-aux.o
  CC       /tmp/build/perf/util/dwarf-regs.o
  CC       /tmp/build/perf/util/unwind-libunwind-local.o
  CC       /tmp/build/perf/util/unwind-libunwind.o
  CC       /tmp/build/perf/util/zlib.o
  CC       /tmp/build/perf/util/lzma.o
  CC       /tmp/build/perf/util/zstd.o
  CC       /tmp/build/perf/util/cap.o
  CC       /tmp/build/perf/util/demangle-java.o
  CC       /tmp/build/perf/util/demangle-rust.o
  CC       /tmp/build/perf/util/jitdump.o
  CC       /tmp/build/perf/util/genelf.o
  CC       /tmp/build/perf/util/genelf_debug.o
  CC       /tmp/build/perf/util/perf-hooks.o
  CC       /tmp/build/perf/util/bpf-event.o
  FLEX     /tmp/build/perf/util/parse-events-flex.c
  FLEX     /tmp/build/perf/util/pmu-flex.c
  CC       /tmp/build/perf/util/pmu-bison.o
  CC       /tmp/build/perf/util/expr-bison.o
  CC       /tmp/build/perf/util/parse-events.o
  CC       /tmp/build/perf/util/parse-events-flex.o
  CC       /tmp/build/perf/util/pmu.o
  CC       /tmp/build/perf/util/pmu-flex.o
  LD       /tmp/build/perf/util/c++/perf-in.o
  LD       /tmp/build/perf/util/perf-in.o
  LD       /tmp/build/perf/perf-in.o
  LINK     /tmp/build/perf/perf
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_ignoringImpCasts0=
Matcher::matches(clang::Expr const&, clang::ast_matchers::internal::ASTMatc=
hFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal32matcher_ignoringImpCasts0Matcher7=
matchesERKNS_4ExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK=
5clang12ast_matchers8internal32matcher_ignoringImpCasts0Matcher7matchesERKN=
S_4ExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x43): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(cl=
ang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal::A=
STMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) cons=
t'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasLoopVariable0M=
atcher::matches(clang::CXXForRangeStmt const&, clang::ast_matchers::interna=
l::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) =
const':
(.text._ZNK5clang12ast_matchers8internal31matcher_hasLoopVariable0Matcher7m=
atchesERKNS_15CXXForRangeStmtEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBu=
ilderE[_ZNK5clang12ast_matchers8internal31matcher_hasLoopVariable0Matcher7m=
atchesERKNS_15CXXForRangeStmtEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBu=
ilderE]+0x48): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast=
_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundN=
odesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasRangeInit0Matc=
her::matches(clang::CXXForRangeStmt const&, clang::ast_matchers::internal::=
ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) con=
st':
(.text._ZNK5clang12ast_matchers8internal28matcher_hasRangeInit0Matcher7matc=
hesERKNS_15CXXForRangeStmtEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuild=
erE[_ZNK5clang12ast_matchers8internal28matcher_hasRangeInit0Matcher7matches=
ERKNS_15CXXForRangeStmtEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE=
]+0x48): undefined reference to `clang::ast_matchers::internal::DynTypedMat=
cher::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_match=
ers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTr=
eeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasArgumentOfType=
0Matcher::matches(clang::UnaryExprOrTypeTraitExpr const&, clang::ast_matche=
rs::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTre=
eBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal33matcher_hasArgumentOfType0Matcher=
7matchesERKNS_24UnaryExprOrTypeTraitExprEPNS1_14ASTMatchFinderEPNS1_21Bound=
NodesTreeBuilderE[_ZNK5clang12ast_matchers8internal33matcher_hasArgumentOfT=
ype0Matcher7matchesERKNS_24UnaryExprOrTypeTraitExprEPNS1_14ASTMatchFinderEP=
NS1_21BoundNodesTreeBuilderE]+0x36): undefined reference to `clang::ast_mat=
chers::internal::DynTypedMatcher::matches(clang::ast_type_traits::DynTypedN=
ode const&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matc=
hers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `bool clang::ast_matchers::internal::matchesFirstInPointe=
rRange<clang::ast_matchers::internal::Matcher<clang::CXXMethodDecl>, clang:=
:DeclContext::specific_decl_iterator<clang::CXXMethodDecl> >(clang::ast_mat=
chers::internal::Matcher<clang::CXXMethodDecl> const&, clang::DeclContext::=
specific_decl_iterator<clang::CXXMethodDecl>, clang::DeclContext::specific_=
decl_iterator<clang::CXXMethodDecl>, clang::ast_matchers::internal::ASTMatc=
hFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*)':
(.text._ZN5clang12ast_matchers8internal26matchesFirstInPointerRangeINS1_7Ma=
tcherINS_13CXXMethodDeclEEENS_11DeclContext22specific_decl_iteratorIS4_EEEE=
bRKT_T0_SC_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZN5clang12a=
st_matchers8internal26matchesFirstInPointerRangeINS1_7MatcherINS_13CXXMetho=
dDeclEEENS_11DeclContext22specific_decl_iteratorIS4_EEEEbRKT_T0_SC_PNS1_14A=
STMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x95): undefined reference to =
`clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type_tr=
aits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder*, =
clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.text._ZNK5clang12ast_matchers8internal18matcher_on0Matcher7matchesER=
KNS_17CXXMemberCallExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE=
[_ZNK5clang12ast_matchers8internal18matcher_on0Matcher7matchesERKNS_17CXXMe=
mberCallExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x50): mo=
re undefined references to `clang::ast_matchers::internal::DynTypedMatcher:=
:matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::=
internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBui=
lder*) const' follow
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_callee1Matcher::m=
atches(clang::CallExpr const&, clang::ast_matchers::internal::ASTMatchFinde=
r*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal22matcher_callee1Matcher7matchesERK=
NS_8CallExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang=
12ast_matchers8internal22matcher_callee1Matcher7matchesERKNS_8CallExprEPNS1=
_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xce): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal22matcher_callee1Match=
er7matchesERKNS_8CallExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilde=
rE[_ZNK5clang12ast_matchers8internal22matcher_callee1Matcher7matchesERKNS_8=
CallExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x15a): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(=
clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal:=
:ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) co=
nst'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasUnqualifiedDes=
ugaredType0Matcher::matches(clang::Type const&, clang::ast_matchers::intern=
al::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*)=
 const':
(.text._ZNK5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredTy=
pe0Matcher7matchesERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBu=
ilderE[_ZNK5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredTy=
pe0Matcher7matchesERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBu=
ilderE]+0x43): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast=
_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundN=
odesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_to0Matcher::match=
es(clang::DeclRefExpr const&, clang::ast_matchers::internal::ASTMatchFinder=
*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal18matcher_to0Matcher7matchesERKNS_1=
1DeclRefExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang=
12ast_matchers8internal18matcher_to0Matcher7matchesERKNS_11DeclRefExprEPNS1=
_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x41): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_typ=
e_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinde=
r*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasInitializer0Ma=
tcher::matches(clang::VarDecl const&, clang::ast_matchers::internal::ASTMat=
chFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal30matcher_hasInitializer0Matcher7ma=
tchesERKNS_7VarDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZN=
K5clang12ast_matchers8internal30matcher_hasInitializer0Matcher7matchesERKNS=
_7VarDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x50): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(=
clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal:=
:ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) co=
nst'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_returns0Matcher::=
matches(clang::FunctionDecl const&, clang::ast_matchers::internal::ASTMatch=
Finder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal23matcher_returns0Matcher7matchesER=
KNS_12FunctionDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK=
5clang12ast_matchers8internal23matcher_returns0Matcher7matchesERKNS_12Funct=
ionDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x57): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(cl=
ang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal::A=
STMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) cons=
t'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.text._ZNK5clang12ast_matchers8internal23matcher_hasBase0Matcher7matc=
hesERKNS_18ArraySubscriptExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBu=
ilderE[_ZNK5clang12ast_matchers8internal23matcher_hasBase0Matcher7matchesER=
KNS_18ArraySubscriptExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilder=
E]+0xdf): more undefined references to `clang::ast_matchers::internal::DynT=
ypedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::as=
t_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::Bound=
NodesTreeBuilder*) const' follow
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findDirectMutation(clang::E=
xpr const*)':
(.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKNS_4ExprE+0xb3=
): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::=
dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1b5): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x376): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x410): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x525): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x6da): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x751): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x899): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x8fa): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0xa04): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0xb08): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKNS_4ExprE=
+0xb6c): more undefined references to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const' follow
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findDirectMutation(clang::E=
xpr const*)':
(.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKNS_4ExprE+0x11=
21): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x11d1): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x12ff): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1383): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1463): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x193a): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1a22): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1a59): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1bb0): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1c70): undefined reference to `clang::ast_matchers::unaryOperato=
r'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1e2f): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1e44): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x1ed0): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x202e): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x20c0): undefined reference to `clang::ast_matchers::castExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x224d): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x243e): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2482): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2681): undefined reference to `clang::ast_matchers::cxxMethodDec=
l'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2765): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x280b): undefined reference to `clang::ast_matchers::cxxOperatorC=
allExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2a17): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2b98): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2c38): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2f3d): undefined reference to `clang::ast_matchers::callExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x2ffb): undefined reference to `clang::ast_matchers::cxxConstruct=
Expr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x302d): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3042): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x30ce): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x315e): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3173): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x31ff): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3291): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x32a6): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3332): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x33c6): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x33db): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x346f): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3594): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x36b8): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x380d): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3919): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3a12): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3b13): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3b98): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x3f6e): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x4049): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x4134): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x4217): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x433d): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x4355): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findDirectMutationEPKN=
S_4ExprE+0x43ed): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findMemberMutation(clang::E=
xpr const*)':
(.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKNS_4ExprE+0x79=
): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::=
dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x144): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x20a): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x2d2): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x350): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x3f4): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x4b3): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x4cb): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer18findMemberMutationEPKN=
S_4ExprE+0x548): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findArrayElementMutation(cl=
ang::Expr const*)':
(.text._ZN5clang20ExprMutationAnalyzer24findArrayElementMutationEPKNS_4Expr=
E+0x79): undefined reference to `clang::ast_matchers::internal::DynTypedMat=
cher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer24findArrayElementMutati=
onEPKNS_4ExprE+0x16a): undefined reference to `clang::ast_matchers::interna=
l::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer24findArrayElementMutati=
onEPKNS_4ExprE+0x21f): undefined reference to `clang::ast_matchers::interna=
l::DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer24findArrayElementMutati=
onEPKNS_4ExprE+0x237): undefined reference to `clang::ast_matchers::interna=
l::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer24findArrayElementMutati=
onEPKNS_4ExprE+0x2b4): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findCastMutation(clang::Exp=
r const*)':
(.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_4ExprE+0x88):=
 undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::dy=
nCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x24e): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x3e7): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x468): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x4be): undefined reference to `clang::ast_matchers::castExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x52f): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x547): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x5cd): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0x9ee): undefined reference to `clang::ast_matchers::internal::hasAn=
yNameFunc(llvm::ArrayRef<llvm::StringRef const*>)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xa31): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xb85): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xc58): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xd3b): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xd53): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer16findCastMutationEPKNS_=
4ExprE+0xdd9): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findRangeLoopMutation(clang=
::Expr const*)':
(.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationEPKNS_4ExprE+0=
x127): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x1e4): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x1f9): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x25f): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x335): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x3de): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findRangeLoopMutationE=
PKNS_4ExprE+0x47d): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findReferenceMutation(clang=
::Expr const*)':
(.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationEPKNS_4ExprE+0=
x96): undefined reference to `clang::ast_matchers::internal::DynTypedMatche=
r::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x204): undefined reference to `clang::ast_matchers::cxxMethodD=
ecl'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x30a): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x359): undefined reference to `clang::ast_matchers::cxxOperato=
rCallExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x3e0): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x3f5): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x475): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x9f8): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xaa0): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xaf7): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xbd2): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xd56): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xd68): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xde8): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xeb4): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0xec9): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x111a): undefined reference to `clang::ast_matchers::internal:=
:DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x1264): undefined reference to `clang::ast_matchers::internal:=
:DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x1310): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x1341): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x1377): undefined reference to `clang::ast_matchers::varDecl'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x13f8): undefined reference to `clang::ast_matchers::internal:=
:DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer21findReferenceMutationE=
PKNS_4ExprE+0x140d): undefined reference to `clang::ast_matchers::internal:=
:DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::findFunctionArgMutation(cla=
ng::Expr const*)':
(.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutationEPKNS_4ExprE=
+0x74): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x198): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x25a): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x26f): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x2d0): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x4fd): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x50f): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x587): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x642): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x654): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x7f4): undefined reference to `clang::ast_matchers::internal=
::hasAnyNameFunc(llvm::ArrayRef<llvm::StringRef const*>)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x835): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x8f6): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0x93c): undefined reference to `clang::ast_matchers::callExpr=
'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xa11): undefined reference to `clang::ast_matchers::cxxConst=
ructExpr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xa3d): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xb04): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xbc2): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xbda): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer23findFunctionArgMutatio=
nEPKNS_4ExprE+0xc5d): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::tryEachDeclRef(clang::Decl =
const*, clang::Stmt const* (clang::ExprMutationAnalyzer::*)(clang::Expr con=
st*))':
(.text._ZN5clang20ExprMutationAnalyzer14tryEachDeclRefEPKNS_4DeclEMS0_FPKNS=
_4StmtEPKNS_4ExprEE+0xc4): undefined reference to `clang::ast_matchers::int=
ernal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) cons=
t'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer14tryEachDeclRefEPKNS_4D=
eclEMS0_FPKNS_4StmtEPKNS_4ExprEE+0x186): undefined reference to `clang::ast=
_matchers::internal::DynTypedMatcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer14tryEachDeclRefEPKNS_4D=
eclEMS0_FPKNS_4StmtEPKNS_4ExprEE+0x19e): undefined reference to `clang::ast=
_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::AST=
NodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer14tryEachDeclRefEPKNS_4D=
eclEMS0_FPKNS_4StmtEPKNS_4ExprEE+0x21c): undefined reference to `clang::ast=
_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ExprMutationAnalyzer::isUnevaluated(clang::Expr c=
onst*)':
(.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4ExprE+0x9a): un=
defined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCa=
stTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xac): undefined reference to `clang::ast_matchers::internal::DynTypedM=
atcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xbe): undefined reference to `clang::ast_matchers::internal::DynTypedM=
atcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x144): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x1e7): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x224): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x2f9): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x30b): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x399): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x518): undefined reference to `clang::ast_matchers::unless'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x5b4): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x6c6): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x835): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x8b8): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x8ca): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x958): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0x9d4): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xacc): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xbe3): undefined reference to `clang::ast_matchers::expr'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xc63): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::tryBind(llvm::StringRef) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xc7b): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang20ExprMutationAnalyzer13isUnevaluatedEPKNS_4Ex=
prE+0xd16): undefined reference to `clang::ast_matchers::eachOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::Expr>, &(clang::ast_matchers::internal::BindableMatcher<clang::Stm=
t> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Stmt, cl=
ang::Expr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::Exp=
r> const*>))>::operator()<clang::ast_matchers::internal::VariadicOperatorMa=
tcher<clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<clang::ast=
_matchers::internal::HasAncestorMatcher, clang::ast_matchers::internal::Typ=
eList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, clang::TypeL=
oc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::NestedName=
SpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::TypeLoc>, clan=
g::ast_matchers::internal::ArgumentAdaptingMatcherFunc<clang::ast_matchers:=
:internal::HasAncestorMatcher, clang::ast_matchers::internal::TypeList<clan=
g::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc>, clang=
::ast_matchers::internal::TypeList<clang::Decl, clang::NestedNameSpecifierL=
oc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt> > >(clang::ast_mat=
chers::internal::Matcher<clang::Expr> const&, clang::ast_matchers::internal=
::VariadicOperatorMatcher<clang::ast_matchers::internal::ArgumentAdaptingMa=
tcherFunc<clang::ast_matchers::internal::HasAncestorMatcher, clang::ast_mat=
chers::internal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang=
::Stmt, clang::TypeLoc>, clang::ast_matchers::internal::TypeList<clang::Dec=
l, clang::NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<c=
lang::TypeLoc>, clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<=
clang::ast_matchers::internal::HasAncestorMatcher, clang::ast_matchers::int=
ernal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, cl=
ang::TypeLoc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::=
NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt=
> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_4ExprEEEXadL_ZNS1_25makeDynCastAllOfCompos=
iteIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23VariadicOpe=
ratorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS=
1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocES4_NS_7TypeLocEEEESS_E7Ad=
aptorISR_EENSU_IS4_EEEEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal=
16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_4ExprEE=
EXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKN=
S6_IT0_EEEEEEEclIJNS1_23VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatc=
herFuncINS1_18HasAncestorMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpe=
cifierLocES4_NS_7TypeLocEEEESS_E7AdaptorISR_EENSU_IS4_EEEEEEEES5_RKS8_DpRKT=
_]+0x4e): undefined reference to `clang::ast_matchers::internal::DynTypedMa=
tcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeLis=
tIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adapto=
rIS8_EEEEcvNS1_7MatcherIT_EEIS9_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_27Ar=
gumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeListIJNS_4DeclE=
NS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvN=
S1_7MatcherIT_EEIS9_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperator=
MatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8Ty=
peListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7A=
daptorIS8_EEEEcvNS1_7MatcherIT_EEIS9_EEv]+0x30): undefined reference to `cl=
ang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::ast_=
matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_trai=
ts::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatcher=
, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeLi=
stIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adapt=
orIS8_EEEEcvNS1_7MatcherIT_EEIS9_EEv[_ZNK5clang12ast_matchers8internal23Var=
iadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMa=
tcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7Type=
LocEEEESA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEIS9_EEv]+0x40): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::sizeOfExpr(clang::ast_matchers::int=
ernal::Matcher<clang::UnaryExprOrTypeTraitExpr> const&)':
(.text._ZN5clang12ast_matchers10sizeOfExprERKNS0_8internal7MatcherINS_24Una=
ryExprOrTypeTraitExprEEE[_ZN5clang12ast_matchers10sizeOfExprERKNS0_8interna=
l7MatcherINS_24UnaryExprOrTypeTraitExprEEE]+0x38): undefined reference to `=
clang::ast_matchers::allOf'
/usr/bin/ld: (.text._ZN5clang12ast_matchers10sizeOfExprERKNS0_8internal7Mat=
cherINS_24UnaryExprOrTypeTraitExprEEE[_ZN5clang12ast_matchers10sizeOfExprER=
KNS0_8internal7MatcherINS_24UnaryExprOrTypeTraitExprEEE]+0xa8): undefined r=
eference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clan=
g::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEEv=
':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEEv[_ZNK5clang1=
2ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_4StmtEEEEE=
cvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEEv]+0x1c): undefined reference t=
o `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_typ=
e_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEE=
v[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherI=
NS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEEv]+0xd6): undefine=
d reference to `clang::ast_matchers::internal::DynTypedMatcher::constructVa=
riadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, cl=
ang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::interna=
l::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedM=
atcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEE=
v[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherI=
NS_4StmtEEEEEcvNS3_IT_EEINS_24UnaryExprOrTypeTraitExprEEEv]+0xe6): undefine=
d reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(c=
lang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_13CXXTypeidExprEEEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_13CXXTypeidExprEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_matchers8int=
ernal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXTypeidExprEEEEEcvNS3_I=
T_EEIS4_EEv]+0xf6): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedM=
atcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<=
clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_m=
atchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_13CXXTypeidExprEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast=
_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXTypeidExp=
rEEEEEcvNS3_IT_EEIS4_EEv]+0x106): undefined reference to `clang::ast_matche=
rs::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKin=
d) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEINS_4Exp=
rEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv[_ZNK5c=
lang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcher=
INS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x30): undefined r=
eference to `clang::ast_matchers::internal::DynTypedMatcher::constructVaria=
dic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang=
::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::=
DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatc=
her> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEINS_4Ex=
prEEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x40)=
: undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::d=
ynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_28PolymorphicMatcherWithParam1INS1_31matcher_hasOperatorName0Matche=
rENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFvNS1_8TypeListIJNS_1=
4BinaryOperatorENS_13UnaryOperatorEEEEEEESG_EEcvNS1_7MatcherIT_EEISD_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_28Po=
lymorphicMatcherWithParam1INS1_31matcher_hasOperatorName0MatcherENSt7__cxx1=
112basic_stringIcSt11char_traitsIcESaIcEEEFvNS1_8TypeListIJNS_14BinaryOpera=
torENS_13UnaryOperatorEEEEEEESG_EEcvNS1_7MatcherIT_EEISD_EEv[_ZNK5clang12as=
t_matchers8internal23VariadicOperatorMatcherIJNS1_28PolymorphicMatcherWithP=
aram1INS1_31matcher_hasOperatorName0MatcherENSt7__cxx1112basic_stringIcSt11=
char_traitsIcESaIcEEEFvNS1_8TypeListIJNS_14BinaryOperatorENS_13UnaryOperato=
rEEEEEEESG_EEcvNS1_7MatcherIT_EEISD_EEv]+0x30): undefined reference to `cla=
ng::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::ast_m=
atchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_trait=
s::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatcher,=
 std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_28PolymorphicMatcherWithParam1INS1_31matcher_hasOperatorName0Match=
erENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFvNS1_8TypeListIJNS_=
14BinaryOperatorENS_13UnaryOperatorEEEEEEESG_EEcvNS1_7MatcherIT_EEISD_EEv[_=
ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_28Polymorphi=
cMatcherWithParam1INS1_31matcher_hasOperatorName0MatcherENSt7__cxx1112basic=
_stringIcSt11char_traitsIcESaIcEEEFvNS1_8TypeListIJNS_14BinaryOperatorENS_1=
3UnaryOperatorEEEEEEESG_EEcvNS1_7MatcherIT_EEISD_EEv]+0x40): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_13CXXMethodDeclEEEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_13CXXMethodDeclEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_matchers8int=
ernal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXMethodDeclEEEEEcvNS3_I=
T_EEIS4_EEv]+0xf6): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedM=
atcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<=
clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_m=
atchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_13CXXMethodDeclEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast=
_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXMethodDec=
lEEEEEcvNS3_IT_EEIS4_EEv]+0x106): undefined reference to `clang::ast_matche=
rs::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKin=
d) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv'=
:
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv[_ZNK5clang12=
ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS_4S=
tmtEEES5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x30): undefined reference to =
`clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::a=
st_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_t=
raits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatc=
her, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv=
[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bindable=
MatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x40): undefined =
reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(cla=
ng::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEE=
Ev':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv[_ZNK5clan=
g12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS=
_4StmtEEES5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x30): undefined referen=
ce to `clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(cl=
ang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_=
type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTyp=
edMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >=
)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprE=
EEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Binda=
bleMatcherINS_4StmtEEES5_S5_EEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0x40): unde=
fined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCast=
To(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::UnaryOperator>, &(clang::ast_matchers::internal::BindableMatcher<c=
lang::Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang:=
:Stmt, clang::UnaryOperator>(llvm::ArrayRef<clang::ast_matchers::internal::=
Matcher<clang::UnaryOperator> const*>))>::operator()<clang::ast_matchers::i=
nternal::VariadicOperatorMatcher<clang::ast_matchers::internal::ArgumentAda=
ptingMatcherFunc<clang::ast_matchers::internal::HasParentMatcher, clang::as=
t_matchers::internal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, =
clang::Stmt, clang::TypeLoc>, clang::ast_matchers::internal::TypeList<clang=
::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adap=
tor<clang::Stmt> >, clang::ast_matchers::internal::Matcher<clang::UnaryOper=
ator> >(clang::ast_matchers::internal::Matcher<clang::UnaryOperator> const&=
, clang::ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matcher=
s::internal::ArgumentAdaptingMatcherFunc<clang::ast_matchers::internal::Has=
ParentMatcher, clang::ast_matchers::internal::TypeList<clang::Decl, clang::=
NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc>, clang::ast_matchers::=
internal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt,=
 clang::TypeLoc> >::Adaptor<clang::Stmt> > const&, clang::ast_matchers::int=
ernal::Matcher<clang::UnaryOperator> const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_13UnaryOperatorEEEXadL_ZNS1_25makeDynCastA=
llOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23V=
ariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMa=
tcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocES4_NS_7TypeLocEEE=
ESS_E7AdaptorIS4_EEEEES8_EEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8interna=
l16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_13Unar=
yOperatorEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8A=
rrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23VariadicOperatorMatcherIJNS1_27ArgumentA=
daptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJNS_4DeclENS_22Nest=
edNameSpecifierLocES4_NS_7TypeLocEEEESS_E7AdaptorIS4_EEEEES8_EEES5_RKS8_DpR=
KT_]+0x58): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CastExpr>, &(clang::ast_matchers::internal::BindableMatcher<clang:=
:Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Stmt=
, clang::CastExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<cl=
ang::CastExpr> const*>))>::operator()<clang::ast_matchers::internal::Variad=
icOperatorMatcher<clang::ast_matchers::internal::ArgumentAdaptingMatcherFun=
c<clang::ast_matchers::internal::HasParentMatcher, clang::ast_matchers::int=
ernal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, cl=
ang::TypeLoc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::=
NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt=
> >, clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<clang::ast_=
matchers::internal::HasMatcher, clang::ast_matchers::internal::TypeList<cla=
ng::Decl, clang::Stmt, clang::NestedNameSpecifier, clang::NestedNameSpecifi=
erLoc, clang::QualType, clang::Type, clang::TypeLoc, clang::CXXCtorInitiali=
zer>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::Stmt, cla=
ng::NestedNameSpecifier, clang::NestedNameSpecifierLoc, clang::TypeLoc, cla=
ng::QualType> >::Adaptor<clang::Expr> >(clang::ast_matchers::internal::Matc=
her<clang::CastExpr> const&, clang::ast_matchers::internal::VariadicOperato=
rMatcher<clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<clang::=
ast_matchers::internal::HasParentMatcher, clang::ast_matchers::internal::Ty=
peList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, clang::Type=
Loc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::NestedNam=
eSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt> > const=
&, clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<clang::ast_ma=
tchers::internal::HasMatcher, clang::ast_matchers::internal::TypeList<clang=
::Decl, clang::Stmt, clang::NestedNameSpecifier, clang::NestedNameSpecifier=
Loc, clang::QualType, clang::Type, clang::TypeLoc, clang::CXXCtorInitialize=
r>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::Stmt, clang=
::NestedNameSpecifier, clang::NestedNameSpecifierLoc, clang::TypeLoc, clang=
::QualType> >::Adaptor<clang::Expr> const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_8CastExprEEEXadL_ZNS1_25makeDynCastAllOfCo=
mpositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23Variadi=
cOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherE=
NS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocES4_NS_7TypeLocEEEESS_E7=
AdaptorIS4_EEEEENSM_INS1_10HasMatcherENSO_IJSP_S4_NS_19NestedNameSpecifierE=
SQ_NS_8QualTypeENS_4TypeESR_NS_18CXXCtorInitializerEEEENSO_IJSP_S4_SY_SQ_SR=
_SZ_EEEE7AdaptorINS_4ExprEEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8inte=
rnal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_8Ca=
stExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8Arra=
yRefIPKNS6_IT0_EEEEEEEclIJNS1_23VariadicOperatorMatcherIJNS1_27ArgumentAdap=
tingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJNS_4DeclENS_22NestedN=
ameSpecifierLocES4_NS_7TypeLocEEEESS_E7AdaptorIS4_EEEEENSM_INS1_10HasMatche=
rENSO_IJSP_S4_NS_19NestedNameSpecifierESQ_NS_8QualTypeENS_4TypeESR_NS_18CXX=
CtorInitializerEEEENSO_IJSP_S4_SY_SQ_SR_SZ_EEEE7AdaptorINS_4ExprEEEEEES5_RK=
S8_DpRKT_]+0xc7): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CXXOperatorCallExpr>, &(clang::ast_matchers::internal::BindableMat=
cher<clang::Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<=
clang::Stmt, clang::CXXOperatorCallExpr>(llvm::ArrayRef<clang::ast_matchers=
::internal::Matcher<clang::CXXOperatorCallExpr> const*>))>::operator()<clan=
g::ast_matchers::internal::Matcher<clang::CallExpr>, clang::ast_matchers::i=
nternal::PolymorphicMatcherWithParam1<clang::ast_matchers::internal::matche=
r_argumentCountIs0Matcher, unsigned int, void (clang::ast_matchers::interna=
l::TypeList<clang::CallExpr, clang::CXXConstructExpr, clang::ObjCMessageExp=
r>)>, clang::ast_matchers::internal::PolymorphicMatcherWithParam2<clang::as=
t_matchers::internal::matcher_hasArgument0Matcher, unsigned int, clang::ast=
_matchers::internal::Matcher<clang::Expr>, void (clang::ast_matchers::inter=
nal::TypeList<clang::CallExpr, clang::CXXConstructExpr, clang::ObjCMessageE=
xpr>)> >(clang::ast_matchers::internal::Matcher<clang::CXXOperatorCallExpr>=
 const&, clang::ast_matchers::internal::Matcher<clang::CallExpr> const&, cl=
ang::ast_matchers::internal::PolymorphicMatcherWithParam1<clang::ast_matche=
rs::internal::matcher_argumentCountIs0Matcher, unsigned int, void (clang::a=
st_matchers::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, c=
lang::ObjCMessageExpr>)> const&, clang::ast_matchers::internal::Polymorphic=
MatcherWithParam2<clang::ast_matchers::internal::matcher_hasArgument0Matche=
r, unsigned int, clang::ast_matchers::internal::Matcher<clang::Expr>, void =
(clang::ast_matchers::internal::TypeList<clang::CallExpr, clang::CXXConstru=
ctExpr, clang::ObjCMessageExpr>)> const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDy=
nCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJN=
S6_INS_8CallExprEEENS1_28PolymorphicMatcherWithParam1INS1_31matcher_argumen=
tCountIs0MatcherEjFvNS1_8TypeListIJSL_NS_16CXXConstructExprENS_15ObjCMessag=
eExprEEEEEEENS1_28PolymorphicMatcherWithParam2INS1_27matcher_hasArgument0Ma=
tcherEjNS6_INS_4ExprEEEST_EEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8inte=
rnal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19C=
XXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_E=
EN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS6_INS_8CallExprEEENS1_28Polymorphic=
MatcherWithParam1INS1_31matcher_argumentCountIs0MatcherEjFvNS1_8TypeListIJS=
L_NS_16CXXConstructExprENS_15ObjCMessageExprEEEEEEENS1_28PolymorphicMatcher=
WithParam2INS1_27matcher_hasArgument0MatcherEjNS6_INS_4ExprEEEST_EEEEES5_RK=
S8_DpRKT_]+0x2d): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1=
_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_=
ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0=
_EEEEEEEclIJNS6_INS_8CallExprEEENS1_28PolymorphicMatcherWithParam1INS1_31ma=
tcher_argumentCountIs0MatcherEjFvNS1_8TypeListIJSL_NS_16CXXConstructExprENS=
_15ObjCMessageExprEEEEEEENS1_28PolymorphicMatcherWithParam2INS1_27matcher_h=
asArgument0MatcherEjNS6_INS_4ExprEEEST_EEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_=
matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7M=
atcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_=
S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS6_INS_8CallExprEEENS1_=
28PolymorphicMatcherWithParam1INS1_31matcher_argumentCountIs0MatcherEjFvNS1=
_8TypeListIJSL_NS_16CXXConstructExprENS_15ObjCMessageExprEEEEEEENS1_28Polym=
orphicMatcherWithParam2INS1_27matcher_hasArgument0MatcherEjNS6_INS_4ExprEEE=
ST_EEEEES5_RKS8_DpRKT_]+0x113): undefined reference to `clang::ast_matchers=
::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind)=
 const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15Binda=
bleMatcherINS_4DeclEEENS1_7MatcherINS_13CXXMethodDeclEEEXadL_ZNS1_25makeDyn=
CastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS=
6_INS_12FunctionDeclEEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal1=
6VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXMet=
hodDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8Arr=
ayRefIPKNS6_IT0_EEEEEEEclIJNS6_INS_12FunctionDeclEEEEEES5_RKS8_DpRKT_]+0x20=
): more undefined references to `clang::ast_matchers::internal::DynTypedMat=
cher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const' follow
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::(anonymous namespace)::$_0::operator()() const':
(.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x81): undefined reference to `clan=
g::ast_matchers::unless'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0xb5): undefined refer=
ence to `clang::ast_matchers::cxxConstructorDecl'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0xea): undefined refer=
ence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::a=
st_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x1e3): undefined refe=
rence to `clang::ast_matchers::cxxMethodDecl'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x218): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x2fc): undefined refe=
rence to `clang::ast_matchers::cxxConstructorDecl'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x331): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x3f7): undefined refe=
rence to `clang::ast_matchers::cxxMethodDecl'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x426): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x46c): undefined refe=
rence to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_0clEv+0x4c3): undefined refe=
rence to `clang::ast_matchers::cxxRecordDecl'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::(anonymous namespace)::$_2::operator()() const':
(.text._ZNK5clang12_GLOBAL__N_13$_2clEv+0x38): undefined reference to `clan=
g::ast_matchers::unless'
/usr/bin/ld: (.text._ZNK5clang12_GLOBAL__N_13$_2clEv+0x14a): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CallExpr>, &(clang::ast_matchers::internal::BindableMatcher<clang:=
:Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Stmt=
, clang::CallExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<cl=
ang::CallExpr> const*>))>::operator()<clang::ast_matchers::internal::Variad=
icOperatorMatcher<clang::ast_matchers::internal::PolymorphicMatcherWithPara=
m1<clang::ast_matchers::internal::HasDeclarationMatcher, clang::ast_matcher=
s::internal::Matcher<clang::Decl>, void (clang::ast_matchers::internal::Typ=
eList<clang::CallExpr, clang::CXXConstructExpr, clang::CXXNewExpr, clang::D=
eclRefExpr, clang::EnumType, clang::ElaboratedType, clang::InjectedClassNam=
eType, clang::LabelStmt, clang::AddrLabelExpr, clang::MemberExpr, clang::Qu=
alType, clang::RecordType, clang::TagType, clang::TemplateSpecializationTyp=
e, clang::TemplateTypeParmType, clang::TypedefType, clang::UnresolvedUsingT=
ype, clang::ObjCIvarRefExpr>)> > >(clang::ast_matchers::internal::Matcher<c=
lang::CallExpr> const&, clang::ast_matchers::internal::VariadicOperatorMatc=
her<clang::ast_matchers::internal::PolymorphicMatcherWithParam1<clang::ast_=
matchers::internal::HasDeclarationMatcher, clang::ast_matchers::internal::M=
atcher<clang::Decl>, void (clang::ast_matchers::internal::TypeList<clang::C=
allExpr, clang::CXXConstructExpr, clang::CXXNewExpr, clang::DeclRefExpr, cl=
ang::EnumType, clang::ElaboratedType, clang::InjectedClassNameType, clang::=
LabelStmt, clang::AddrLabelExpr, clang::MemberExpr, clang::QualType, clang:=
:RecordType, clang::TagType, clang::TemplateSpecializationType, clang::Temp=
lateTypeParmType, clang::TypedefType, clang::UnresolvedUsingType, clang::Ob=
jCIvarRefExpr>)> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_8CallExprEEEXadL_ZNS1_25makeDynCastAllOfCo=
mpositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23Variadi=
cOperatorMatcherIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMa=
tcherENS6_INS_4DeclEEEFvNS1_8TypeListIJS7_NS_16CXXConstructExprENS_10CXXNew=
ExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNa=
meTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10R=
ecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParm=
TypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEE=
EEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1=
_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_8CallExprEEEXadL_ZNS1_25makeD=
ynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJ=
NS1_23VariadicOperatorMatcherIJNS1_28PolymorphicMatcherWithParam1INS1_21Has=
DeclarationMatcherENS6_INS_4DeclEEEFvNS1_8TypeListIJS7_NS_16CXXConstructExp=
rENS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21In=
jectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8Qu=
alTypeENS_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20Tem=
plateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRe=
fExprEEEEEEEEEEEEES5_RKS8_DpRKT_]+0x4e): undefined reference to `clang::ast=
_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::AST=
NodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CXXConstructExpr>, &(clang::ast_matchers::internal::BindableMatche=
r<clang::Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<cla=
ng::Stmt, clang::CXXConstructExpr>(llvm::ArrayRef<clang::ast_matchers::inte=
rnal::Matcher<clang::CXXConstructExpr> const*>))>::operator()<clang::ast_ma=
tchers::internal::VariadicOperatorMatcher<clang::ast_matchers::internal::Po=
lymorphicMatcherWithParam1<clang::ast_matchers::internal::HasDeclarationMat=
cher, clang::ast_matchers::internal::Matcher<clang::Decl>, void (clang::ast=
_matchers::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, cla=
ng::CXXNewExpr, clang::DeclRefExpr, clang::EnumType, clang::ElaboratedType,=
 clang::InjectedClassNameType, clang::LabelStmt, clang::AddrLabelExpr, clan=
g::MemberExpr, clang::QualType, clang::RecordType, clang::TagType, clang::T=
emplateSpecializationType, clang::TemplateTypeParmType, clang::TypedefType,=
 clang::UnresolvedUsingType, clang::ObjCIvarRefExpr>)> > >(clang::ast_match=
ers::internal::Matcher<clang::CXXConstructExpr> const&, clang::ast_matchers=
::internal::VariadicOperatorMatcher<clang::ast_matchers::internal::Polymorp=
hicMatcherWithParam1<clang::ast_matchers::internal::HasDeclarationMatcher, =
clang::ast_matchers::internal::Matcher<clang::Decl>, void (clang::ast_match=
ers::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, clang::CX=
XNewExpr, clang::DeclRefExpr, clang::EnumType, clang::ElaboratedType, clang=
::InjectedClassNameType, clang::LabelStmt, clang::AddrLabelExpr, clang::Mem=
berExpr, clang::QualType, clang::RecordType, clang::TagType, clang::Templat=
eSpecializationType, clang::TemplateTypeParmType, clang::TypedefType, clang=
::UnresolvedUsingType, clang::ObjCIvarRefExpr>)> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCa=
stAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_=
23VariadicOperatorMatcherIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDecl=
arationMatcherENS6_INS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprES7_NS_10CXXNew=
ExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNa=
meTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10R=
ecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParm=
TypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEE=
EEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1=
_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS=
1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EE=
EEEEEclIJNS1_23VariadicOperatorMatcherIJNS1_28PolymorphicMatcherWithParam1I=
NS1_21HasDeclarationMatcherENS6_INS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprES=
7_NS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21In=
jectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8Qu=
alTypeENS_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20Tem=
plateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRe=
fExprEEEEEEEEEEEEES5_RKS8_DpRKT_]+0x4e): undefined reference to `clang::ast=
_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::AST=
NodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithPara=
m1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeLis=
tIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEEcvNS=
8_IT_EEISC_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithParam1INS1_23mat=
cher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeListIJNS_4ExprE=
NS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEEcvNS8_IT_EEISC_E=
Ev[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bindab=
leMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithParam1INS1_23matcher=
_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeListIJNS_4ExprENS_1=
0FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEEcvNS8_IT_EEISC_EEv]+=
0x30): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Varia=
dicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_ma=
tchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::inte=
rnal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithPar=
am1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeLi=
stIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEEcvN=
S8_IT_EEISC_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherI=
JNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithParam1I=
NS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeListIJ=
NS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEEcvNS8_I=
T_EEISC_EEv]+0x40): undefined reference to `clang::ast_matchers::internal::=
DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJRKNS1_15BindableMatcherINS_4StmtEEES7_S7_S7_S7_S7_RKNS2_IJS5_S5_S5_S5_E=
EES7_S7_EEcvNS1_7MatcherIT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJRKNS1_15=
BindableMatcherINS_4StmtEEES7_S7_S7_S7_S7_RKNS2_IJS5_S5_S5_S5_EEES7_S7_EEcv=
NS1_7MatcherIT_EEIS4_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperato=
rMatcherIJRKNS1_15BindableMatcherINS_4StmtEEES7_S7_S7_S7_S7_RKNS2_IJS5_S5_S=
5_S5_EEES7_S7_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x30): undefined reference to `=
clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::as=
t_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_tr=
aits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJRKNS1_15BindableMatcherINS_4StmtEEES7_S7_S7_S7_S7_RKNS2_IJS5_S5_S5_S5_=
EEES7_S7_EEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5clang12ast_matchers8internal23Va=
riadicOperatorMatcherIJRKNS1_15BindableMatcherINS_4StmtEEES7_S7_S7_S7_S7_RK=
NS2_IJS5_S5_S5_S5_EEES7_S7_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x40): undefined r=
eference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clan=
g::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CastExpr>, &(clang::ast_matchers::internal::BindableMatcher<clang:=
:Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Stmt=
, clang::CastExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<cl=
ang::CastExpr> const*>))>::operator()<clang::ast_matchers::internal::Variad=
icOperatorMatcher<clang::ast_matchers::internal::BindableMatcher<clang::Stm=
t>, clang::ast_matchers::internal::BindableMatcher<clang::Stmt> > >(clang::=
ast_matchers::internal::Matcher<clang::CastExpr> const&, clang::ast_matcher=
s::internal::VariadicOperatorMatcher<clang::ast_matchers::internal::Bindabl=
eMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableMatcher<clang=
::Stmt> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_8CastExprEEEXadL_ZNS1_25makeDynCastAllOfCo=
mpositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23Variadi=
cOperatorMatcherIJS5_S5_EEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8inter=
nal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_8Cas=
tExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8Array=
RefIPKNS6_IT0_EEEEEEEclIJNS1_23VariadicOperatorMatcherIJS5_S5_EEEEEES5_RKS8=
_DpRKT_]+0x4e): undefined reference to `clang::ast_matchers::internal::DynT=
ypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::De=
cl> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Decl>, clang::ast_matchers::internal::Matche=
r<clang::VarDecl>, &(clang::ast_matchers::internal::BindableMatcher<clang::=
Decl> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Decl,=
 clang::VarDecl>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clan=
g::VarDecl> const*>))>::operator()<clang::ast_matchers::internal::Matcher<c=
lang::VarDecl>, clang::ast_matchers::internal::ArgumentAdaptingMatcherFunc<=
clang::ast_matchers::internal::HasParentMatcher, clang::ast_matchers::inter=
nal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, clan=
g::TypeLoc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang::Ne=
stedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt>,=
 clang::ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers=
::internal::ArgumentAdaptingMatcherFunc<clang::ast_matchers::internal::HasP=
arentMatcher, clang::ast_matchers::internal::TypeList<clang::Decl, clang::N=
estedNameSpecifierLoc, clang::Stmt, clang::TypeLoc>, clang::ast_matchers::i=
nternal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, =
clang::TypeLoc> >::Adaptor<clang::Stmt> > >(clang::ast_matchers::internal::=
Matcher<clang::VarDecl> const&, clang::ast_matchers::internal::Matcher<clan=
g::VarDecl> const&, clang::ast_matchers::internal::ArgumentAdaptingMatcherF=
unc<clang::ast_matchers::internal::HasParentMatcher, clang::ast_matchers::i=
nternal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, clang::Stmt, =
clang::TypeLoc>, clang::ast_matchers::internal::TypeList<clang::Decl, clang=
::NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc> >::Adaptor<clang::St=
mt> const&, clang::ast_matchers::internal::VariadicOperatorMatcher<clang::a=
st_matchers::internal::ArgumentAdaptingMatcherFunc<clang::ast_matchers::int=
ernal::HasParentMatcher, clang::ast_matchers::internal::TypeList<clang::Dec=
l, clang::NestedNameSpecifierLoc, clang::Stmt, clang::TypeLoc>, clang::ast_=
matchers::internal::TypeList<clang::Decl, clang::NestedNameSpecifierLoc, cl=
ang::Stmt, clang::TypeLoc> >::Adaptor<clang::Stmt> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4DeclEEENS1_7MatcherINS_7VarDeclEEEXadL_ZNS1_25makeDynCastAllOfCom=
positeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJS8_NS1_27Argum=
entAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJS4_NS_22Nested=
NameSpecifierLocENS_4StmtENS_7TypeLocEEEESR_E7AdaptorISP_EENS1_23VariadicOp=
eratorMatcherIJSU_EEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal16V=
ariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_7VarDeclEE=
EXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKN=
S6_IT0_EEEEEEEclIJS8_NS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatch=
erENS1_8TypeListIJS4_NS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESR=
_E7AdaptorISP_EENS1_23VariadicOperatorMatcherIJSU_EEEEEES5_RKS8_DpRKT_]+0xd=
6): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher:=
:dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EEcvNS3_IT_EEINS_19C=
onditionalOperatorEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_27AbstractConditionalOperatorEEES5_EEcvNS3_IT_EEINS_19ConditionalOp=
eratorEEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_=
7MatcherINS_27AbstractConditionalOperatorEEES5_EEcvNS3_IT_EEINS_19Condition=
alOperatorEEEv]+0x30): undefined reference to `clang::ast_matchers::interna=
l::DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynTyp=
edMatcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vect=
or<clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::as=
t_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EEcvNS3_IT_EEINS_19=
ConditionalOperatorEEEv[_ZNK5clang12ast_matchers8internal23VariadicOperator=
MatcherIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EEcvNS3_IT_EEIN=
S_19ConditionalOperatorEEEv]+0x40): undefined reference to `clang::ast_matc=
hers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeK=
ind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_4StmtEEENS1_15BindableMatcherIS4_EEEEcvNS3_IT_EEINS_4Ex=
prEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_4StmtEEENS1_15BindableMatcherIS4_EEEEcvNS3_IT_EEINS_4ExprEEEv[_ZNK5=
clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_4Stm=
tEEENS1_15BindableMatcherIS4_EEEEcvNS3_IT_EEINS_4ExprEEEv]+0x30): undefined=
 reference to `clang::ast_matchers::internal::DynTypedMatcher::constructVar=
iadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, cla=
ng::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal=
::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMa=
tcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_4StmtEEENS1_15BindableMatcherIS4_EEEEcvNS3_IT_EEINS_4E=
xprEEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Ma=
tcherINS_4StmtEEENS1_15BindableMatcherIS4_EEEEcvNS3_IT_EEINS_4ExprEEEv]+0x4=
0): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher:=
:dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CallExpr>, &(clang::ast_matchers::internal::BindableMatcher<clang:=
:Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang::Stmt=
, clang::CallExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<cl=
ang::CallExpr> const*>))>::operator()<clang::ast_matchers::internal::Polymo=
rphicMatcherWithParam1<clang::ast_matchers::internal::HasDeclarationMatcher=
, clang::ast_matchers::internal::Matcher<clang::Decl>, void (clang::ast_mat=
chers::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, clang::=
CXXNewExpr, clang::DeclRefExpr, clang::EnumType, clang::ElaboratedType, cla=
ng::InjectedClassNameType, clang::LabelStmt, clang::AddrLabelExpr, clang::M=
emberExpr, clang::QualType, clang::RecordType, clang::TagType, clang::Templ=
ateSpecializationType, clang::TemplateTypeParmType, clang::TypedefType, cla=
ng::UnresolvedUsingType, clang::ObjCIvarRefExpr>)>, clang::ast_matchers::in=
ternal::PolymorphicMatcherWithParam1<clang::ast_matchers::internal::HasDecl=
arationMatcher, clang::ast_matchers::internal::Matcher<clang::Decl>, void (=
clang::ast_matchers::internal::TypeList<clang::CallExpr, clang::CXXConstruc=
tExpr, clang::CXXNewExpr, clang::DeclRefExpr, clang::EnumType, clang::Elabo=
ratedType, clang::InjectedClassNameType, clang::LabelStmt, clang::AddrLabel=
Expr, clang::MemberExpr, clang::QualType, clang::RecordType, clang::TagType=
, clang::TemplateSpecializationType, clang::TemplateTypeParmType, clang::Ty=
pedefType, clang::UnresolvedUsingType, clang::ObjCIvarRefExpr>)>, clang::as=
t_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::internal=
::Matcher<clang::CallExpr> > >(clang::ast_matchers::internal::Matcher<clang=
::CallExpr> const&, clang::ast_matchers::internal::PolymorphicMatcherWithPa=
ram1<clang::ast_matchers::internal::HasDeclarationMatcher, clang::ast_match=
ers::internal::Matcher<clang::Decl>, void (clang::ast_matchers::internal::T=
ypeList<clang::CallExpr, clang::CXXConstructExpr, clang::CXXNewExpr, clang:=
:DeclRefExpr, clang::EnumType, clang::ElaboratedType, clang::InjectedClassN=
ameType, clang::LabelStmt, clang::AddrLabelExpr, clang::MemberExpr, clang::=
QualType, clang::RecordType, clang::TagType, clang::TemplateSpecializationT=
ype, clang::TemplateTypeParmType, clang::TypedefType, clang::UnresolvedUsin=
gType, clang::ObjCIvarRefExpr>)> const&, clang::ast_matchers::internal::Pol=
ymorphicMatcherWithParam1<clang::ast_matchers::internal::HasDeclarationMatc=
her, clang::ast_matchers::internal::Matcher<clang::Decl>, void (clang::ast_=
matchers::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, clan=
g::CXXNewExpr, clang::DeclRefExpr, clang::EnumType, clang::ElaboratedType, =
clang::InjectedClassNameType, clang::LabelStmt, clang::AddrLabelExpr, clang=
::MemberExpr, clang::QualType, clang::RecordType, clang::TagType, clang::Te=
mplateSpecializationType, clang::TemplateTypeParmType, clang::TypedefType, =
clang::UnresolvedUsingType, clang::ObjCIvarRefExpr>)> const&, clang::ast_ma=
tchers::internal::VariadicOperatorMatcher<clang::ast_matchers::internal::Ma=
tcher<clang::CallExpr> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_8CallExprEEEXadL_ZNS1_25makeDynCastAllOfCo=
mpositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_28Polymor=
phicMatcherWithParam1INS1_21HasDeclarationMatcherENS6_INS_4DeclEEEFvNS1_8Ty=
peListIJS7_NS_16CXXConstructExprENS_10CXXNewExprENS_11DeclRefExprENS_8EnumT=
ypeENS_14ElaboratedTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrL=
abelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_26Temp=
lateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19Unre=
solvedUsingTypeENS_15ObjCIvarRefExprEEEEEEES19_NS1_23VariadicOperatorMatche=
rIJS8_EEEEEES5_RKS8_DpRKT_[_ZNK5clang12ast_matchers8internal16VariadicFunct=
ionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_8CallExprEEEXadL_ZNS1_=
25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEE=
EEEclIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS6_I=
NS_4DeclEEEFvNS1_8TypeListIJS7_NS_16CXXConstructExprENS_10CXXNewExprENS_11D=
eclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNameTypeENS_9=
LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeEN=
S_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_11T=
ypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEES19_NS1_23Va=
riadicOperatorMatcherIJS8_EEEEEES5_RKS8_DpRKT_]+0x138): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::St=
mt> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::Matche=
r<clang::CXXConstructExpr>, &(clang::ast_matchers::internal::BindableMatche=
r<clang::Stmt> clang::ast_matchers::internal::makeDynCastAllOfComposite<cla=
ng::Stmt, clang::CXXConstructExpr>(llvm::ArrayRef<clang::ast_matchers::inte=
rnal::Matcher<clang::CXXConstructExpr> const*>))>::operator()<clang::ast_ma=
tchers::internal::PolymorphicMatcherWithParam1<clang::ast_matchers::interna=
l::HasDeclarationMatcher, clang::ast_matchers::internal::Matcher<clang::Dec=
l>, void (clang::ast_matchers::internal::TypeList<clang::CallExpr, clang::C=
XXConstructExpr, clang::CXXNewExpr, clang::DeclRefExpr, clang::EnumType, cl=
ang::ElaboratedType, clang::InjectedClassNameType, clang::LabelStmt, clang:=
:AddrLabelExpr, clang::MemberExpr, clang::QualType, clang::RecordType, clan=
g::TagType, clang::TemplateSpecializationType, clang::TemplateTypeParmType,=
 clang::TypedefType, clang::UnresolvedUsingType, clang::ObjCIvarRefExpr>)>,=
 clang::ast_matchers::internal::PolymorphicMatcherWithParam1<clang::ast_mat=
chers::internal::HasDeclarationMatcher, clang::ast_matchers::internal::Matc=
her<clang::Decl>, void (clang::ast_matchers::internal::TypeList<clang::Call=
Expr, clang::CXXConstructExpr, clang::CXXNewExpr, clang::DeclRefExpr, clang=
::EnumType, clang::ElaboratedType, clang::InjectedClassNameType, clang::Lab=
elStmt, clang::AddrLabelExpr, clang::MemberExpr, clang::QualType, clang::Re=
cordType, clang::TagType, clang::TemplateSpecializationType, clang::Templat=
eTypeParmType, clang::TypedefType, clang::UnresolvedUsingType, clang::ObjCI=
varRefExpr>)> >(clang::ast_matchers::internal::Matcher<clang::CXXConstructE=
xpr> const&, clang::ast_matchers::internal::PolymorphicMatcherWithParam1<cl=
ang::ast_matchers::internal::HasDeclarationMatcher, clang::ast_matchers::in=
ternal::Matcher<clang::Decl>, void (clang::ast_matchers::internal::TypeList=
<clang::CallExpr, clang::CXXConstructExpr, clang::CXXNewExpr, clang::DeclRe=
fExpr, clang::EnumType, clang::ElaboratedType, clang::InjectedClassNameType=
, clang::LabelStmt, clang::AddrLabelExpr, clang::MemberExpr, clang::QualTyp=
e, clang::RecordType, clang::TagType, clang::TemplateSpecializationType, cl=
ang::TemplateTypeParmType, clang::TypedefType, clang::UnresolvedUsingType, =
clang::ObjCIvarRefExpr>)> const&, clang::ast_matchers::internal::Polymorphi=
cMatcherWithParam1<clang::ast_matchers::internal::HasDeclarationMatcher, cl=
ang::ast_matchers::internal::Matcher<clang::Decl>, void (clang::ast_matcher=
s::internal::TypeList<clang::CallExpr, clang::CXXConstructExpr, clang::CXXN=
ewExpr, clang::DeclRefExpr, clang::EnumType, clang::ElaboratedType, clang::=
InjectedClassNameType, clang::LabelStmt, clang::AddrLabelExpr, clang::Membe=
rExpr, clang::QualType, clang::RecordType, clang::TagType, clang::TemplateS=
pecializationType, clang::TemplateTypeParmType, clang::TypedefType, clang::=
UnresolvedUsingType, clang::ObjCIvarRefExpr>)> const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCa=
stAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_=
28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS6_INS_4DeclEEE=
FvNS1_8TypeListIJNS_8CallExprES7_NS_10CXXNewExprENS_11DeclRefExprENS_8EnumT=
ypeENS_14ElaboratedTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrL=
abelExprENS_10MemberExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_26Temp=
lateSpecializationTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19Unre=
solvedUsingTypeENS_15ObjCIvarRefExprEEEEEEES19_EEES5_RKS8_DpRKT_[_ZNK5clang=
12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEE=
NS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeI=
S4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_28PolymorphicMatc=
herWithParam1INS1_21HasDeclarationMatcherENS6_INS_4DeclEEEFvNS1_8TypeListIJ=
NS_8CallExprES7_NS_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14Elaborat=
edTypeENS_21InjectedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10Mem=
berExprENS_8QualTypeENS_10RecordTypeENS_7TagTypeENS_26TemplateSpecializatio=
nTypeENS_20TemplateTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeEN=
S_15ObjCIvarRefExprEEEEEEES19_EEES5_RKS8_DpRKT_]+0x125): undefined referenc=
e to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_=
type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_24UnaryExprOrTypeTraitExprEEERKS5_EEcvNS3_IT_EEIS4_EEv'=
:
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_24UnaryExprOrTypeTraitExprEEERKS5_EEcvNS3_IT_EEIS4_EEv[_ZNK5clang12=
ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_24UnaryExpr=
OrTypeTraitExprEEERKS5_EEcvNS3_IT_EEIS4_EEv]+0x30): undefined reference to =
`clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::a=
st_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_t=
raits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatc=
her, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_24UnaryExprOrTypeTraitExprEEERKS5_EEcvNS3_IT_EEIS4_EEv=
[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherIN=
S_24UnaryExprOrTypeTraitExprEEERKS5_EEcvNS3_IT_EEIS4_EEv]+0x40): undefined =
reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(cla=
ng::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::(anonymous namespace)::internal::matcher_hasContr=
ollingExpr0Matcher::matches(clang::GenericSelectionExpr const&, clang::ast_=
matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNo=
desTreeBuilder*) const':
(.text._ZNK5clang12_GLOBAL__N_18internal34matcher_hasControllingExpr0Matche=
r7matchesERKNS_20GenericSelectionExprEPNS_12ast_matchers8internal14ASTMatch=
FinderEPNS7_21BoundNodesTreeBuilderE+0x3c): undefined reference to `clang::=
ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type_traits::Dy=
nTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder*, clang::a=
st_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::(anonymous namespace)::internal::matcher_maybeEva=
lCommaExpr0Matcher::matches(clang::Expr const&, clang::ast_matchers::intern=
al::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*)=
 const':
(.text._ZNK5clang12_GLOBAL__N_18internal34matcher_maybeEvalCommaExpr0Matche=
r7matchesERKNS_4ExprEPNS_12ast_matchers8internal14ASTMatchFinderEPNS7_21Bou=
ndNodesTreeBuilderE+0x8d): undefined reference to `clang::ast_matchers::int=
ernal::DynTypedMatcher::matches(clang::ast_type_traits::DynTypedNode const&=
, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::inte=
rnal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::De=
cl> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Decl>, clang::ast_matchers::internal::Matche=
r<clang::CXXRecordDecl>, &(clang::ast_matchers::internal::BindableMatcher<c=
lang::Decl> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang:=
:Decl, clang::CXXRecordDecl>(llvm::ArrayRef<clang::ast_matchers::internal::=
Matcher<clang::CXXRecordDecl> const*>))>::operator()<clang::ast_matchers::i=
nternal::Matcher<clang::CXXRecordDecl>, clang::ast_matchers::internal::Vari=
adicOperatorMatcher<clang::ast_matchers::internal::VariadicOperatorMatcher<=
clang::ast_matchers::internal::Matcher<clang::CXXRecordDecl>, clang::ast_ma=
tchers::internal::Matcher<clang::CXXRecordDecl> > > >(clang::ast_matchers::=
internal::Matcher<clang::CXXRecordDecl> const&, clang::ast_matchers::intern=
al::Matcher<clang::CXXRecordDecl> const&, clang::ast_matchers::internal::Va=
riadicOperatorMatcher<clang::ast_matchers::internal::VariadicOperatorMatche=
r<clang::ast_matchers::internal::Matcher<clang::CXXRecordDecl>, clang::ast_=
matchers::internal::Matcher<clang::CXXRecordDecl> > > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastA=
llOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJS8_NS1_=
23VariadicOperatorMatcherIJNSL_IJS8_S8_EEEEEEEEES5_RKS8_DpRKT_[_ZNK5clang12=
ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS=
1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7=
_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJS8_NS1_23VariadicOperatorM=
atcherIJNSL_IJS8_S8_EEEEEEEEES5_RKS8_DpRKT_]+0x58): undefined reference to =
`clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_=
traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::De=
cl> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Decl>, clang::ast_matchers::internal::Matche=
r<clang::CXXConstructorDecl>, &(clang::ast_matchers::internal::BindableMatc=
her<clang::Decl> clang::ast_matchers::internal::makeDynCastAllOfComposite<c=
lang::Decl, clang::CXXConstructorDecl>(llvm::ArrayRef<clang::ast_matchers::=
internal::Matcher<clang::CXXConstructorDecl> const*>))>::operator()<clang::=
ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::intern=
al::Matcher<clang::FunctionDecl> > >(clang::ast_matchers::internal::Matcher=
<clang::CXXConstructorDecl> const&, clang::ast_matchers::internal::Variadic=
OperatorMatcher<clang::ast_matchers::internal::Matcher<clang::FunctionDecl>=
 > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDyn=
CastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS=
1_23VariadicOperatorMatcherIJNS6_INS_12FunctionDeclEEEEEEEEES5_RKS8_DpRKT_[=
_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherIN=
S_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAll=
OfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23Var=
iadicOperatorMatcherIJNS6_INS_12FunctionDeclEEEEEEEEES5_RKS8_DpRKT_]+0x4e):=
 undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::dy=
nCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::De=
cl> clang::ast_matchers::internal::VariadicFunction<clang::ast_matchers::in=
ternal::BindableMatcher<clang::Decl>, clang::ast_matchers::internal::Matche=
r<clang::CXXMethodDecl>, &(clang::ast_matchers::internal::BindableMatcher<c=
lang::Decl> clang::ast_matchers::internal::makeDynCastAllOfComposite<clang:=
:Decl, clang::CXXMethodDecl>(llvm::ArrayRef<clang::ast_matchers::internal::=
Matcher<clang::CXXMethodDecl> const*>))>::operator()<clang::ast_matchers::i=
nternal::VariadicOperatorMatcher<clang::ast_matchers::internal::Matcher<cla=
ng::FunctionDecl> > >(clang::ast_matchers::internal::Matcher<clang::CXXMeth=
odDecl> const&, clang::ast_matchers::internal::VariadicOperatorMatcher<clan=
g::ast_matchers::internal::Matcher<clang::FunctionDecl> > const&) const':
(.text._ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMa=
tcherINS_4DeclEEENS1_7MatcherINS_13CXXMethodDeclEEEXadL_ZNS1_25makeDynCastA=
llOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23V=
ariadicOperatorMatcherIJNS6_INS_12FunctionDeclEEEEEEEEES5_RKS8_DpRKT_[_ZNK5=
clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4De=
clEEENS1_7MatcherINS_13CXXMethodDeclEEEXadL_ZNS1_25makeDynCastAllOfComposit=
eIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJNS1_23VariadicOpera=
torMatcherIJNS6_INS_12FunctionDeclEEEEEEEEES5_RKS8_DpRKT_]+0x4e): undefined=
 reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(cl=
ang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS2_IJNS1_7MatcherINS_13CXXRecordDeclEEES5_EEEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS2_IJNS=
1_7MatcherINS_13CXXRecordDeclEEES5_EEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_=
matchers8internal23VariadicOperatorMatcherIJNS2_IJNS1_7MatcherINS_13CXXReco=
rdDeclEEES5_EEEEEcvNS3_IT_EEIS4_EEv]+0xd1): undefined reference to `clang::=
ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::ast_match=
ers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_traits::A=
STNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatcher, std=
::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS2_IJNS1_7MatcherINS_13CXXRecordDeclEEES5_EEEEEcvNS3_IT_EEIS4_EEv[_ZN=
K5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS2_IJNS1_7Matcher=
INS_13CXXRecordDeclEEES5_EEEEEcvNS3_IT_EEIS4_EEv]+0xe1): undefined referenc=
e to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_=
type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XRecordDecl> clang::ast_matchers::internal::makeAllOfComposite<clang::CXXRe=
cordDecl>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::CXXR=
ecordDecl> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordD=
eclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5=
clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_1=
5BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMatche=
r(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecor=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x47): undefined reference to `clang::ast_matchers::internal::DynTypedMatche=
r::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecor=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1e4): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Varia=
dicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_ma=
tchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::inte=
rnal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecor=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1f6): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_13CXXRecordDeclEEES5_EEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_13CXXRecordDeclEEES5_EEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_matchers8=
internal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXRecordDeclEEES5_EEc=
vNS3_IT_EEIS4_EEv]+0x30): undefined reference to `clang::ast_matchers::inte=
rnal::DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::Dyn=
TypedMatcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::v=
ector<clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang:=
:ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_13CXXRecordDeclEEES5_EEcvNS3_IT_EEIS4_EEv[_ZNK5clang12=
ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_13CXXRecord=
DeclEEES5_EEcvNS3_IT_EEIS4_EEv]+0x40): undefined reference to `clang::ast_m=
atchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNo=
deKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDeclE=
EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDeclEEEv[_ZNK5cla=
ng12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_12Funct=
ionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDeclEEEv]+0x1c): undefined refer=
ence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::a=
st_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDecl=
EEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Match=
erINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDeclEEEv]+0xd6): un=
defined reference to `clang::ast_matchers::internal::DynTypedMatcher::const=
ructVariadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperat=
or, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::i=
nternal::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::Dyn=
TypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDecl=
EEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Match=
erINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_18CXXConstructorDeclEEEv]+0xe6): un=
defined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCa=
stTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XConstructorDecl> clang::ast_matchers::internal::makeAllOfComposite<clang::=
CXXConstructorDecl>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<c=
lang::CXXConstructorDecl> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstru=
ctorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE=
[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDe=
clEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35=
): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::=
trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Ma=
tcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXX=
ConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherI=
S5_EEEE]+0x47): undefined reference to `clang::ast_matchers::internal::DynT=
ypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Ma=
tcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXX=
ConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherI=
S5_EEEE]+0x1e4): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedMatc=
her::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<cla=
ng::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_matc=
hers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Ma=
tcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXX=
ConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherI=
S5_EEEE]+0x1f6): undefined reference to `clang::ast_matchers::internal::Dyn=
TypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv[_ZNK5clang12a=
st_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_12FunctionDe=
clEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv]+0x1c): undefined reference to `c=
lang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_tr=
aits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv[=
_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS=
_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv]+0xd6): undefined re=
ference to `clang::ast_matchers::internal::DynTypedMatcher::constructVariad=
ic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang:=
:ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::D=
ynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatch=
er> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv[=
_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS=
_12FunctionDeclEEEEEcvNS3_IT_EEINS_13CXXMethodDeclEEEv]+0xe6): undefined re=
ference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang=
::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XMethodDecl> clang::ast_matchers::internal::makeAllOfComposite<clang::CXXMe=
thodDecl>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::CXXM=
ethodDecl> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXMethodD=
eclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5=
clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXMethodDeclEEENS1_1=
5BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMatche=
r(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXMethodDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXMetho=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x47): undefined reference to `clang::ast_matchers::internal::DynTypedMatche=
r::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXMethodDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXMetho=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1e4): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Varia=
dicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_ma=
tchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::inte=
rnal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13CXXMethodDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXMetho=
dDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1f6): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_8QualTypeEEEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_8QualTypeEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_matchers8internal2=
3VariadicOperatorMatcherIJNS1_7MatcherINS_8QualTypeEEEEEcvNS3_IT_EEIS4_EEv]=
+0xf6): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Vari=
adicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_m=
atchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::int=
ernal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_8QualTypeEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_match=
ers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_8QualTypeEEEEEcvNS3_=
IT_EEIS4_EEv]+0x106): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::TypeTraverseMatcher<clang=
::PointerType>::matches(clang::PointerType const&, clang::ast_matchers::int=
ernal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilde=
r*) const':
(.text._ZNK5clang12ast_matchers8internal19TypeTraverseMatcherINS_11PointerT=
ypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK=
5clang12ast_matchers8internal19TypeTraverseMatcherINS_11PointerTypeEE7match=
esERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x52): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(cl=
ang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal::A=
STMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) cons=
t'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::TypeTraverseMatcher<clang=
::ReferenceType>::matches(clang::ReferenceType const&, clang::ast_matchers:=
:internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBu=
ilder*) const':
(.text._ZNK5clang12ast_matchers8internal19TypeTraverseMatcherINS_13Referenc=
eTypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_Z=
NK5clang12ast_matchers8internal19TypeTraverseMatcherINS_13ReferenceTypeEE7m=
atchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x52): und=
efined reference to `clang::ast_matchers::internal::DynTypedMatcher::matche=
s(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::interna=
l::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) =
const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::isInstantiated_getInstance()':
(.text._ZN5clang12ast_matchers26isInstantiated_getInstanceEv[_ZN5clang12ast=
_matchers26isInstantiated_getInstanceEv]+0x6a): undefined reference to `cla=
ng::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_trai=
ts::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers26isInstantiated_getInstanceEv[_=
ZN5clang12ast_matchers26isInstantiated_getInstanceEv]+0x12b): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers26isInstantiated_getInstanceEv[_=
ZN5clang12ast_matchers26isInstantiated_getInstanceEv]+0x19e): undefined ref=
erence to `clang::ast_matchers::anyOf'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4DeclEEES5_EEcvNS1_7MatcherIT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4DeclEEES5_EEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5clang12ast_ma=
tchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS_4DeclEEE=
S5_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x30): undefined reference to `clang::ast_=
matchers::internal::DynTypedMatcher::constructVariadic(clang::ast_matchers:=
:internal::DynTypedMatcher::VariadicOperator, clang::ast_type_traits::ASTNo=
deKind, std::vector<clang::ast_matchers::internal::DynTypedMatcher, std::al=
locator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4DeclEEES5_EEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5=
clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatche=
rINS_4DeclEEES5_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x40): undefined reference to=
 `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type=
_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJRNS1_15BindableMatcherINS_4DeclEEENS1_27ArgumentAdaptingMatcherFuncINS1=
_18HasAncestorMatcherENS1_8TypeListIJS4_NS_22NestedNameSpecifierLocENS_4Stm=
tENS_7TypeLocEEEESD_E7AdaptorIS4_EEEEcvNS1_7MatcherIT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJRNS1_15B=
indableMatcherINS_4DeclEEENS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncest=
orMatcherENS1_8TypeListIJS4_NS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLo=
cEEEESD_E7AdaptorIS4_EEEEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5clang12ast_matcher=
s8internal23VariadicOperatorMatcherIJRNS1_15BindableMatcherINS_4DeclEEENS1_=
27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeListIJS4_NS=
_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESD_E7AdaptorIS4_EEEEcvNS1=
_7MatcherIT_EEIS4_EEv]+0x30): undefined reference to `clang::ast_matchers::=
internal::DynTypedMatcher::constructVariadic(clang::ast_matchers::internal:=
:DynTypedMatcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, st=
d::vector<clang::ast_matchers::internal::DynTypedMatcher, std::allocator<cl=
ang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJRNS1_15BindableMatcherINS_4DeclEEENS1_27ArgumentAdaptingMatcherFuncINS=
1_18HasAncestorMatcherENS1_8TypeListIJS4_NS_22NestedNameSpecifierLocENS_4St=
mtENS_7TypeLocEEEESD_E7AdaptorIS4_EEEEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5clang=
12ast_matchers8internal23VariadicOperatorMatcherIJRNS1_15BindableMatcherINS=
_4DeclEEENS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8Ty=
peListIJS4_NS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESD_E7Adaptor=
IS4_EEEEcvNS1_7MatcherIT_EEIS4_EEv]+0x40): undefined reference to `clang::a=
st_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::A=
STNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::(anonymous namespace)::internal::matcher_hasRange=
Stmt0Matcher::matches(clang::CXXForRangeStmt const&, clang::ast_matchers::i=
nternal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuil=
der*) const':
(.text._ZNK5clang12_GLOBAL__N_18internal28matcher_hasRangeStmt0Matcher7matc=
hesERKNS_15CXXForRangeStmtEPNS_12ast_matchers8internal14ASTMatchFinderEPNS7=
_21BoundNodesTreeBuilderE+0x3c): undefined reference to `clang::ast_matcher=
s::internal::DynTypedMatcher::matches(clang::ast_type_traits::DynTypedNode =
const&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers=
::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::Matcher<clang::QualType>:=
:TypeToQualType<clang::Type>::matches(clang::QualType const&, clang::ast_ma=
tchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNode=
sTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQual=
TypeINS_4TypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBui=
lderE[_ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualT=
ypeINS_4TypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuil=
derE]+0x4c): undefined reference to `clang::ast_matchers::internal::DynType=
dMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_m=
atchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNod=
esTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Ca=
llExpr> clang::ast_matchers::internal::makeAllOfComposite<clang::CallExpr>(=
llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::CallExpr> cons=
t*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CallExprEEE=
NS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5clang1=
2ast_matchers8internal18makeAllOfCompositeINS_8CallExprEEENS1_15BindableMat=
cherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::trueMatcher(clang::ast=
_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CallExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x47): undefi=
ned reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo=
(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CallExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1e4): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::construc=
tVariadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator,=
 clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::inte=
rnal::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTyp=
edMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CallExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1f6): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastT=
o(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::HasDeclarationMatcher<cla=
ng::CallExpr, clang::ast_matchers::internal::Matcher<clang::Decl> >::matche=
s(clang::CallExpr const&, clang::ast_matchers::internal::ASTMatchFinder*, c=
lang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_8CallExp=
rENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21Bound=
NodesTreeBuilderE[_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherI=
NS_8CallExprENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEP=
NS1_21BoundNodesTreeBuilderE]+0x4d): undefined reference to `clang::ast_mat=
chers::internal::DynTypedMatcher::matches(clang::ast_type_traits::DynTypedN=
ode const&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matc=
hers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasType0Matcher<c=
lang::Expr, clang::ast_matchers::internal::Matcher<clang::QualType> >::matc=
hes(clang::Expr const&, clang::ast_matchers::internal::ASTMatchFinder*, cla=
ng::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal23matcher_hasType0MatcherINS_4ExprE=
NS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21Bou=
ndNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal23matcher_hasType0Matc=
herINS_4ExprENS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS1_14ASTMatchFind=
erEPNS1_21BoundNodesTreeBuilderE]+0x2c): undefined reference to `clang::ast=
_matchers::internal::DynTypedMatcher::matches(clang::ast_type_traits::DynTy=
pedNode const&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_=
matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Ex=
pr> clang::ast_matchers::internal::makeAllOfComposite<clang::Expr>(llvm::Ar=
rayRef<clang::ast_matchers::internal::Matcher<clang::Expr> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5clang12ast=
_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15BindableMatcherIT_E=
EN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefined reference to `cla=
ng::ast_matchers::internal::DynTypedMatcher::trueMatcher(clang::ast_type_tr=
aits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_=
ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15Bindab=
leMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x47): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_=
ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15Bindab=
leMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1e4): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::constructVariadi=
c(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang::=
ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::Dy=
nTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatche=
r> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_4ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_=
ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_4ExprEEENS1_15Bindab=
leMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1f6): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableM=
atcher<clang::Stmt>, clang::ast_matchers::internal::BindableMatcher<clang::=
Stmt> >::getMatchers<clang::Expr, 0ul, 1ul, 2ul>(llvm::index_sequence<0ul, =
1ul, 2ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2EEEESt6=
vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE[_ZN=
K5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatc=
herINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2EEEESt6vectorINS1=
_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x23): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastT=
o(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0EL=
m1ELm2EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJX=
spT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_1=
5BindableMatcherINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2EEEE=
St6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]=
+0x65): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0EL=
m1ELm2EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJX=
spT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_1=
5BindableMatcherINS_4StmtEEES5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2EEEE=
St6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]=
+0x9d): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJRKNS1_7MatcherINS_4StmtEEENS1_27ArgumentAdaptingMatcherFuncINS1_24ForEa=
chDescendantMatcherENS1_8TypeListIJNS_4DeclES4_NS_19NestedNameSpecifierENS_=
22NestedNameSpecifierLocENS_8QualTypeENS_4TypeENS_7TypeLocENS_18CXXCtorInit=
ializerEEEENSA_IJSB_S4_SC_SD_SG_SE_EEEE7AdaptorIS4_EEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJRKNS1_7M=
atcherINS_4StmtEEENS1_27ArgumentAdaptingMatcherFuncINS1_24ForEachDescendant=
MatcherENS1_8TypeListIJNS_4DeclES4_NS_19NestedNameSpecifierENS_22NestedName=
SpecifierLocENS_8QualTypeENS_4TypeENS_7TypeLocENS_18CXXCtorInitializerEEEEN=
SA_IJSB_S4_SC_SD_SG_SE_EEEE7AdaptorIS4_EEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12a=
st_matchers8internal23VariadicOperatorMatcherIJRKNS1_7MatcherINS_4StmtEEENS=
1_27ArgumentAdaptingMatcherFuncINS1_24ForEachDescendantMatcherENS1_8TypeLis=
tIJNS_4DeclES4_NS_19NestedNameSpecifierENS_22NestedNameSpecifierLocENS_8Qua=
lTypeENS_4TypeENS_7TypeLocENS_18CXXCtorInitializerEEEENSA_IJSB_S4_SC_SD_SG_=
SE_EEEE7AdaptorIS4_EEEEcvNS3_IT_EEIS4_EEv]+0x30): undefined reference to `c=
lang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::ast=
_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_tra=
its::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatche=
r, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJRKNS1_7MatcherINS_4StmtEEENS1_27ArgumentAdaptingMatcherFuncINS1_24ForE=
achDescendantMatcherENS1_8TypeListIJNS_4DeclES4_NS_19NestedNameSpecifierENS=
_22NestedNameSpecifierLocENS_8QualTypeENS_4TypeENS_7TypeLocENS_18CXXCtorIni=
tializerEEEENSA_IJSB_S4_SC_SD_SG_SE_EEEE7AdaptorIS4_EEEEcvNS3_IT_EEIS4_EEv[=
_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJRKNS1_7MatcherI=
NS_4StmtEEENS1_27ArgumentAdaptingMatcherFuncINS1_24ForEachDescendantMatcher=
ENS1_8TypeListIJNS_4DeclES4_NS_19NestedNameSpecifierENS_22NestedNameSpecifi=
erLocENS_8QualTypeENS_4TypeENS_7TypeLocENS_18CXXCtorInitializerEEEENSA_IJSB=
_S4_SC_SD_SG_SE_EEEE7AdaptorIS4_EEEEcvNS3_IT_EEIS4_EEv]+0x40): undefined re=
ference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang=
::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `llvm::SmallVector<clang::ast_matchers::BoundNodes, 1u> c=
lang::ast_matchers::match<clang::ast_matchers::internal::Matcher<clang::Stm=
t> >(clang::ast_matchers::internal::Matcher<clang::Stmt>, clang::ast_type_t=
raits::DynTypedNode const&, clang::ASTContext&)':
(.text._ZN5clang12ast_matchers5matchINS0_8internal7MatcherINS_4StmtEEEEEN4l=
lvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_traits12DynTypedN=
odeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8internal7MatcherIN=
S_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_tr=
aits12DynTypedNodeERNS_10ASTContextE]+0x59): undefined reference to `clang:=
:ast_matchers::MatchFinder::MatchFinder(clang::ast_matchers::MatchFinder::M=
atchFinderOptions)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal7MatcherINS_=
4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_trai=
ts12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8inter=
nal7MatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_=
15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x69): undefined referen=
ce to `clang::ast_matchers::MatchFinder::addMatcher(clang::ast_matchers::in=
ternal::Matcher<clang::Stmt> const&, clang::ast_matchers::MatchFinder::Matc=
hCallback*)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal7MatcherINS_=
4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_trai=
ts12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8inter=
nal7MatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_=
15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x78): undefined referen=
ce to `clang::ast_matchers::MatchFinder::match(clang::ast_type_traits::DynT=
ypedNode const&, clang::ASTContext&)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal7MatcherINS_=
4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_trai=
ts12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8inter=
nal7MatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_=
15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0xa9): undefined referen=
ce to `clang::ast_matchers::MatchFinder::~MatchFinder()'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal7MatcherINS_=
4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_trai=
ts12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8inter=
nal7MatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_=
15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x10f): undefined refere=
nce to `clang::ast_matchers::MatchFinder::MatchCallback::~MatchCallback()'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::CollectMatchesCallback::~=
CollectMatchesCallback()':
(.text._ZN5clang12ast_matchers8internal22CollectMatchesCallbackD2Ev[_ZN5cla=
ng12ast_matchers8internal22CollectMatchesCallbackD2Ev]+0x86): undefined ref=
erence to `clang::ast_matchers::MatchFinder::MatchCallback::~MatchCallback(=
)'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::CollectMatchesCallback::~=
CollectMatchesCallback()':
(.text._ZN5clang12ast_matchers8internal22CollectMatchesCallbackD0Ev[_ZN5cla=
ng12ast_matchers8internal22CollectMatchesCallbackD0Ev]+0x7b): undefined ref=
erence to `clang::ast_matchers::MatchFinder::MatchCallback::~MatchCallback(=
)'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableM=
atcher<clang::Stmt>, clang::ast_matchers::internal::BindableMatcher<clang::=
Stmt>, clang::ast_matchers::internal::BindableMatcher<clang::Stmt> >::getMa=
tchers<clang::Expr, 0ul, 1ul, 2ul, 3ul>(llvm::index_sequence<0ul, 1ul, 2ul,=
 3ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2ELm3=
EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_E=
EEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Binda=
bleMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm0ELm1ELm2ELm3EEE=
ESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE=
]+0x23): undefined reference to `clang::ast_matchers::internal::DynTypedMat=
cher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm=
0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequ=
enceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcher=
IJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm0EL=
m1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenc=
eIJXspT0_EEEE]+0x68): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm=
0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequ=
enceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcher=
IJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm0EL=
m1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenc=
eIJXspT0_EEEE]+0xad): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm=
0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequ=
enceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcher=
IJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EE11getMatchersINS_4ExprEJLm0EL=
m1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenc=
eIJXspT0_EEEE]+0xee): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeLis=
tIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adapto=
rIS9_EENSC_IS8_EEEEcvNS1_7MatcherIT_EEINS_4ExprEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_27Ar=
gumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeListIJNS_4DeclE=
NS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorIS9_EENSC_I=
S8_EEEEcvNS1_7MatcherIT_EEINS_4ExprEEEv[_ZNK5clang12ast_matchers8internal23=
VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncesto=
rMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7T=
ypeLocEEEESA_E7AdaptorIS9_EENSC_IS8_EEEEcvNS1_7MatcherIT_EEINS_4ExprEEEv]+0=
x30): undefined reference to `clang::ast_matchers::internal::DynTypedMatche=
r::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Variad=
icOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_mat=
chers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::inter=
nal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_27ArgumentAdaptingMatcherFuncINS1_18HasAncestorMatcherENS1_8TypeLi=
stIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adapt=
orIS9_EENSC_IS8_EEEEcvNS1_7MatcherIT_EEINS_4ExprEEEv[_ZNK5clang12ast_matche=
rs8internal23VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1=
_18HasAncestorMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocEN=
S_4StmtENS_7TypeLocEEEESA_E7AdaptorIS9_EENSC_IS8_EEEEcvNS1_7MatcherIT_EEINS=
_4ExprEEEv]+0x40): undefined reference to `clang::ast_matchers::internal::D=
ynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Bi=
naryOperator> clang::ast_matchers::internal::makeAllOfComposite<clang::Bina=
ryOperator>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::Bi=
naryOperator> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_14BinaryOper=
atorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN=
5clang12ast_matchers8internal18makeAllOfCompositeINS_14BinaryOperatorEEENS1=
_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMatc=
her(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_14BinaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_14BinaryO=
peratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]=
+0x47): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_14BinaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_14BinaryO=
peratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]=
+0x1e4): undefined reference to `clang::ast_matchers::internal::DynTypedMat=
cher::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Var=
iadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_=
matchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::in=
ternal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_14BinaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_14BinaryO=
peratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]=
+0x1f6): undefined reference to `clang::ast_matchers::internal::DynTypedMat=
cher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasLHS0Matcher<cl=
ang::BinaryOperator, clang::ast_matchers::internal::Matcher<clang::Expr> >:=
:matches(clang::BinaryOperator const&, clang::ast_matchers::internal::ASTMa=
tchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal22matcher_hasLHS0MatcherINS_14Binar=
yOperatorENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1=
_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal22matcher_hasLHS=
0MatcherINS_14BinaryOperatorENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14=
ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x41): undefined reference to=
 `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type_t=
raits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder*,=
 clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Un=
aryOperator> clang::ast_matchers::internal::makeAllOfComposite<clang::Unary=
Operator>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::Unar=
yOperator> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13UnaryOpera=
torEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5=
clang12ast_matchers8internal18makeAllOfCompositeINS_13UnaryOperatorEEENS1_1=
5BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMatche=
r(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13UnaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13UnaryOpe=
ratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x47): undefined reference to `clang::ast_matchers::internal::DynTypedMatche=
r::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13UnaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13UnaryOpe=
ratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1e4): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Varia=
dicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_ma=
tchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::inte=
rnal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_13UnaryOperatorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matcher=
IS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13UnaryOpe=
ratorEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0=
x1f6): undefined reference to `clang::ast_matchers::internal::DynTypedMatch=
er::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XMemberCallExpr> clang::ast_matchers::internal::makeAllOfComposite<clang::C=
XXMemberCallExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<cla=
ng::CXXMemberCallExpr> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_17CXXMemberC=
allExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[=
_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_17CXXMemberCallExpr=
EEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35):=
 undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::tr=
ueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_17CXXMemberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Mat=
cherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_17CXXM=
emberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5=
_EEEE]+0x47): undefined reference to `clang::ast_matchers::internal::DynTyp=
edMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_17CXXMemberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Mat=
cherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_17CXXM=
emberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5=
_EEEE]+0x1e4): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedMatche=
r::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang=
::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_matche=
rs::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_17CXXMemberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Mat=
cherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_17CXXM=
emberCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5=
_EEEE]+0x1f6): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XOperatorCallExpr> clang::ast_matchers::internal::makeAllOfComposite<clang:=
:CXXOperatorCallExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher=
<clang::CXXOperatorCallExpr> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperato=
rCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCall=
ExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x=
35): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::trueMatcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7M=
atcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CX=
XOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE]+0x47): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7M=
atcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CX=
XOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE]+0x1e4): undefined reference to `clang::ast_matchers::internal::D=
ynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedMa=
tcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<c=
lang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_ma=
tchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7M=
atcherIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CX=
XOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matche=
rIS5_EEEE]+0x1f6): undefined reference to `clang::ast_matchers::internal::D=
ynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasArgument0Match=
er<clang::CXXOperatorCallExpr, unsigned int, clang::ast_matchers::internal:=
:Matcher<clang::Expr> >::matches(clang::CXXOperatorCallExpr const&, clang::=
ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::Bou=
ndNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_19=
CXXOperatorCallExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatch=
FinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal27mat=
cher_hasArgument0MatcherINS_19CXXOperatorCallExprEjNS1_7MatcherINS_4ExprEEE=
E7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x63): =
undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::mat=
ches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::inte=
rnal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder=
*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasObjectExpressi=
on0Matcher<clang::UnresolvedMemberExpr, clang::ast_matchers::internal::Matc=
her<clang::Expr> >::matches(clang::UnresolvedMemberExpr const&, clang::ast_=
matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNo=
desTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal35matcher_hasObjectExpression0Match=
erINS_20UnresolvedMemberExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14=
ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8inter=
nal35matcher_hasObjectExpression0MatcherINS_20UnresolvedMemberExprENS1_7Mat=
cherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE]+0x66): undefined reference to `clang::ast_matchers::internal::DynT=
ypedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::as=
t_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::Bound=
NodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasObjectExpressi=
on0Matcher<clang::CXXDependentScopeMemberExpr, clang::ast_matchers::interna=
l::Matcher<clang::Expr> >::matches(clang::CXXDependentScopeMemberExpr const=
&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::int=
ernal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal35matcher_hasObjectExpression0Match=
erINS_27CXXDependentScopeMemberExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_=
PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matcher=
s8internal35matcher_hasObjectExpression0MatcherINS_27CXXDependentScopeMembe=
rExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21B=
oundNodesTreeBuilderE]+0x66): undefined reference to `clang::ast_matchers::=
internal::DynTypedMatcher::matches(clang::ast_type_traits::DynTypedNode con=
st&, clang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::i=
nternal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableM=
atcher<clang::Stmt> >::getMatchers<clang::Expr, 0ul, 1ul>(llvm::index_seque=
nce<0ul, 1ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_EE11getMatchersINS_4ExprEJLm0ELm1EEEESt6vectorI=
NS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE[_ZNK5clang=
12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS_=
4StmtEEES5_EE11getMatchersINS_4ExprEJLm0ELm1EEEESt6vectorINS1_15DynTypedMat=
cherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x1d): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_EE11getMatchersINS_4ExprEJLm0ELm1E=
EEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EE=
EE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bindab=
leMatcherINS_4StmtEEES5_EE11getMatchersINS_4ExprEJLm0ELm1EEEESt6vectorINS1_=
15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x55): undefi=
ned reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo=
(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListI=
JNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorI=
S8_EEEEcvNS1_7MatcherIT_EEINS_13UnaryOperatorEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_27Ar=
gumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJNS_4DeclENS=
_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1=
_7MatcherIT_EEINS_13UnaryOperatorEEEv[_ZNK5clang12ast_matchers8internal23Va=
riadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMat=
cherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeL=
ocEEEESA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_13UnaryOperatorEEEv]+0x30)=
: undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::c=
onstructVariadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOp=
erator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matcher=
s::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::internal:=
:DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeList=
IJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adaptor=
IS8_EEEEcvNS1_7MatcherIT_EEINS_13UnaryOperatorEEEv[_ZNK5clang12ast_matchers=
8internal23VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_1=
6HasParentMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4S=
tmtENS_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_13UnaryOperat=
orEEEv]+0x40): undefined reference to `clang::ast_matchers::internal::DynTy=
pedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListI=
JNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorI=
S8_EEEEcvNS1_7MatcherIT_EEINS_8CastExprEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_27Ar=
gumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJNS_4DeclENS=
_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1=
_7MatcherIT_EEINS_8CastExprEEEv[_ZNK5clang12ast_matchers8internal23Variadic=
OperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherEN=
S1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEE=
SA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_8CastExprEEEv]+0x30): undefined =
reference to `clang::ast_matchers::internal::DynTypedMatcher::constructVari=
adic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clan=
g::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal:=
:DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMat=
cher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeList=
IJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adaptor=
IS8_EEEEcvNS1_7MatcherIT_EEINS_8CastExprEEEv[_ZNK5clang12ast_matchers8inter=
nal23VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasPa=
rentMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS=
_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_8CastExprEEEv]+0x40=
): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::=
dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Ca=
stExpr> clang::ast_matchers::internal::makeAllOfComposite<clang::CastExpr>(=
llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::CastExpr> cons=
t*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CastExprEEE=
NS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5clang1=
2ast_matchers8internal18makeAllOfCompositeINS_8CastExprEEENS1_15BindableMat=
cherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::trueMatcher(clang::ast=
_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CastExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CastExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x47): undefi=
ned reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo=
(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CastExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CastExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1e4): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::construc=
tVariadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator,=
 clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::inte=
rnal::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTyp=
edMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_8CastExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EE=
EE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_8CastExprEEENS1_=
15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1f6): undef=
ined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastT=
o(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasType0Matcher<c=
lang::ParmVarDecl, clang::ast_matchers::internal::Matcher<clang::QualType> =
>::matches(clang::ParmVarDecl const&, clang::ast_matchers::internal::ASTMat=
chFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal23matcher_hasType0MatcherINS_11Parm=
VarDeclENS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPN=
S1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal23matcher_hasT=
ype0MatcherINS_11ParmVarDeclENS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS=
1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x2c): undefined referenc=
e to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_ty=
pe_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFind=
er*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7Mat=
cherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CX=
XNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedCla=
ssNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS=
_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateType=
ParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEE=
EEEEEcvNS5_IT_EEIS9_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_28Po=
lymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7MatcherINS_4Dec=
lEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_=
11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNameTypeEN=
S_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTyp=
eENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_=
11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEEEcvNS5_I=
T_EEIS9_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1=
_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7MatcherINS=
_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExp=
rENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNameT=
ypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10Reco=
rdTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTyp=
eENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEEEcv=
NS5_IT_EEIS9_EEv]+0x30): undefined reference to `clang::ast_matchers::inter=
nal::DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynT=
ypedMatcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::ve=
ctor<clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::=
ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7Ma=
tcherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10C=
XXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedCl=
assNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeEN=
S_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTyp=
eParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEE=
EEEEEEcvNS5_IT_EEIS9_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperato=
rMatcherIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS=
1_7MatcherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprEN=
S_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21Injec=
tedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualT=
ypeENS_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20Templa=
teTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefEx=
prEEEEEEEEEcvNS5_IT_EEIS9_EEv]+0x40): undefined reference to `clang::ast_ma=
tchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNod=
eKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_forEachArgumentWi=
thParam0Matcher<clang::CallExpr, clang::ast_matchers::internal::Matcher<cla=
ng::Expr>, clang::ast_matchers::internal::Matcher<clang::ParmVarDecl> >::ma=
tches(clang::CallExpr const&, clang::ast_matchers::internal::ASTMatchFinder=
*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0=
MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matc=
hesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12as=
t_matchers8internal40matcher_forEachArgumentWithParam0MatcherINS_8CallExprE=
NS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMa=
tchFinderEPNS1_21BoundNodesTreeBuilderE]+0x67): undefined reference to `cla=
ng::ast_matchers::internal::DynTypedMatcher::trueMatcher(clang::ast_type_tr=
aits::ASTNodeKind)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x7c): undefined refe=
rence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::=
ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x10e): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x1fc): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x242): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x2e4): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::a=
st_type_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatc=
hFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x4a9): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::a=
st_type_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatc=
hFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x5b1): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x6f5): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x842): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x94b): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x9d3): undefined ref=
erence to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xa79): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang:=
:ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xb20): undefined ref=
erence to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::a=
st_type_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatc=
hFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVar=
DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_=
ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherI=
NS_8CallExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3=
_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xcd9): undefined ref=
erence to `clang::ast_matchers::internal::BoundNodesTreeBuilder::addMatch(c=
lang::ast_matchers::internal::BoundNodesTreeBuilder const&)'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XConstructExpr> clang::ast_matchers::internal::makeAllOfComposite<clang::CX=
XConstructExpr>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang=
::CXXConstructExpr> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstru=
ctExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_=
ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEE=
ENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): u=
ndefined reference to `clang::ast_matchers::internal::DynTypedMatcher::true=
Matcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matc=
herIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXCo=
nstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_E=
EEE]+0x47): undefined reference to `clang::ast_matchers::internal::DynTyped=
Matcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matc=
herIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXCo=
nstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_E=
EEE]+0x1e4): undefined reference to `clang::ast_matchers::internal::DynType=
dMatcher::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher:=
:VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::=
ast_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers=
::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Matc=
herIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXCo=
nstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_E=
EEE]+0x1f6): undefined reference to `clang::ast_matchers::internal::DynType=
dMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasParameter0Matc=
her<clang::CXXConstructorDecl, unsigned int, clang::ast_matchers::internal:=
:Matcher<clang::ParmVarDecl> >::matches(clang::CXXConstructorDecl const&, c=
lang::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::interna=
l::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal28matcher_hasParameter0MatcherINS_1=
8CXXConstructorDeclEjNS1_7MatcherINS_11ParmVarDeclEEEE7matchesERKS3_PNS1_14=
ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8inter=
nal28matcher_hasParameter0MatcherINS_18CXXConstructorDeclEjNS1_7MatcherINS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE]+0x5e): undefined reference to `clang::ast_matchers::internal::DynT=
ypedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::as=
t_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::Bound=
NodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::HasDeclarationMatcher<cla=
ng::CXXConstructExpr, clang::ast_matchers::internal::Matcher<clang::Decl> >=
::matches(clang::CXXConstructExpr const&, clang::ast_matchers::internal::AS=
TMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const=
':
(.text._ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_16CXXCon=
structExprENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS=
1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal21HasDeclaratio=
nMatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_=
14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x41): undefined reference =
to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type=
_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder=
*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasParameter0Matc=
her<clang::FunctionDecl, unsigned int, clang::ast_matchers::internal::Match=
er<clang::ParmVarDecl> >::matches(clang::FunctionDecl const&, clang::ast_ma=
tchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNode=
sTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal28matcher_hasParameter0MatcherINS_1=
2FunctionDeclEjNS1_7MatcherINS_11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMat=
chFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal28m=
atcher_hasParameter0MatcherINS_12FunctionDeclEjNS1_7MatcherINS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x5=
e): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher:=
:matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::=
internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBui=
lder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7Mat=
cherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CX=
XNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedCla=
ssNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS=
_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateType=
ParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEE=
EEEEEcvNS5_IT_EEISA_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_28Po=
lymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7MatcherINS_4Dec=
lEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExprENS_=
11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNameTypeEN=
S_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10RecordTyp=
eENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTypeENS_=
11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEEEcvNS5_I=
T_EEISA_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1=
_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7MatcherINS=
_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10CXXNewExp=
rENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedClassNameT=
ypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeENS_10Reco=
rdTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTypeParmTyp=
eENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEEEEEEEEcv=
NS5_IT_EEISA_EEv]+0x30): undefined reference to `clang::ast_matchers::inter=
nal::DynTypedMatcher::constructVariadic(clang::ast_matchers::internal::DynT=
ypedMatcher::VariadicOperator, clang::ast_type_traits::ASTNodeKind, std::ve=
ctor<clang::ast_matchers::internal::DynTypedMatcher, std::allocator<clang::=
ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS1_7Ma=
tcherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_10C=
XXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21InjectedCl=
assNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualTypeEN=
S_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20TemplateTyp=
eParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefExprEEE=
EEEEEEcvNS5_IT_EEISA_EEv[_ZNK5clang12ast_matchers8internal23VariadicOperato=
rMatcherIJNS1_28PolymorphicMatcherWithParam1INS1_21HasDeclarationMatcherENS=
1_7MatcherINS_4DeclEEEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprEN=
S_10CXXNewExprENS_11DeclRefExprENS_8EnumTypeENS_14ElaboratedTypeENS_21Injec=
tedClassNameTypeENS_9LabelStmtENS_13AddrLabelExprENS_10MemberExprENS_8QualT=
ypeENS_10RecordTypeENS_7TagTypeENS_26TemplateSpecializationTypeENS_20Templa=
teTypeParmTypeENS_11TypedefTypeENS_19UnresolvedUsingTypeENS_15ObjCIvarRefEx=
prEEEEEEEEEcvNS5_IT_EEISA_EEv]+0x40): undefined reference to `clang::ast_ma=
tchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNod=
eKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_forEachArgumentWi=
thParam0Matcher<clang::CXXConstructExpr, clang::ast_matchers::internal::Mat=
cher<clang::Expr>, clang::ast_matchers::internal::Matcher<clang::ParmVarDec=
l> >::matches(clang::CXXConstructExpr const&, clang::ast_matchers::internal=
::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) c=
onst':
(.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0=
MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDecl=
EEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5=
clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherINS_1=
6CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matches=
ERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x67): undefined=
 reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMatcher(=
clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x7=
c): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher:=
:dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x1=
11): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x2=
0b): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x2=
51): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x2=
ff): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers:=
:internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBu=
ilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x4=
d8): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers:=
:internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBu=
ilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x5=
e7): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x7=
28): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x8=
79): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x9=
7e): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xa=
03): undefined reference to `clang::ast_matchers::anyOf'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xa=
ac): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xb=
53): undefined reference to `clang::ast_matchers::internal::DynTypedMatcher=
::matches(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers:=
:internal::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBu=
ilder*) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal40matcher_forEachArgum=
entWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_=
11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeB=
uilderE[_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam=
0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDec=
lEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xd=
0c): undefined reference to `clang::ast_matchers::internal::BoundNodesTreeB=
uilder::addMatch(clang::ast_matchers::internal::BoundNodesTreeBuilder const=
&)'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableM=
atcher<clang::Stmt>, clang::ast_matchers::internal::BindableMatcher<clang::=
Stmt>, clang::ast_matchers::internal::PolymorphicMatcherWithParam1<clang::a=
st_matchers::internal::matcher_hasType0Matcher, clang::ast_matchers::intern=
al::Matcher<clang::QualType>, void (clang::ast_matchers::internal::TypeList=
<clang::Expr, clang::FriendDecl, clang::TypedefNameDecl, clang::ValueDecl>)=
> >::getMatchers<clang::Expr, 0ul, 1ul, 2ul, 3ul>(llvm::index_sequence<0ul,=
 1ul, 2ul, 3ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithParam1INS1_23mat=
cher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeListIJNS_4ExprE=
NS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEE11getMatchersISC=
_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISM_EEN4llvm14index_=
sequenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMat=
cherIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithPa=
ram1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeL=
istIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEE11=
getMatchersISC_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISM_EE=
N4llvm14index_sequenceIJXspT0_EEEE]+0x2a): undefined reference to `clang::a=
st_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::A=
STNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithPar=
am1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeLi=
stIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEE11g=
etMatchersISC_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISM_EEN=
4llvm14index_sequenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23Variad=
icOperatorMatcherIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28Polymorphic=
MatcherWithParam1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEE=
EFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDe=
clEEEEEEEEE11getMatchersISC_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMat=
cherESaISM_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x70): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28PolymorphicMatcherWithPar=
am1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEEEFvNS1_8TypeLi=
stIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDeclEEEEEEEEE11g=
etMatchersISC_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMatcherESaISM_EEN=
4llvm14index_sequenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23Variad=
icOperatorMatcherIJNS1_15BindableMatcherINS_4StmtEEES5_S5_NS1_28Polymorphic=
MatcherWithParam1INS1_23matcher_hasType0MatcherENS1_7MatcherINS_8QualTypeEE=
EFvNS1_8TypeListIJNS_4ExprENS_10FriendDeclENS_15TypedefNameDeclENS_9ValueDe=
clEEEEEEEEE11getMatchersISC_JLm0ELm1ELm2ELm3EEEESt6vectorINS1_15DynTypedMat=
cherESaISM_EEN4llvm14index_sequenceIJXspT0_EEEE]+0xb3): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasAnyArgument0Ma=
tcher<clang::CallExpr, clang::ast_matchers::internal::Matcher<clang::Expr> =
>::matches(clang::CallExpr const&, clang::ast_matchers::internal::ASTMatchF=
inder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS=
_8CallExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS=
1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal30matcher_hasAn=
yArgument0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_=
14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0xc2): undefined reference =
to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type=
_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder=
*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasAnyArgument0Ma=
tcher<clang::CXXUnresolvedConstructExpr, clang::ast_matchers::internal::Mat=
cher<clang::Expr> >::matches(clang::CXXUnresolvedConstructExpr const&, clan=
g::ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::=
BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS=
_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_1=
4ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8inte=
rnal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7M=
atcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTre=
eBuilderE]+0xab): undefined reference to `clang::ast_matchers::internal::Dy=
nTypedMatcher::matches(clang::ast_type_traits::DynTypedNode const&, clang::=
ast_matchers::internal::ASTMatchFinder*, clang::ast_matchers::internal::Bou=
ndNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEIS4_EEv'=
:
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEIS4_EEv[_ZNK5clang12=
ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherINS_4S=
tmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x30): undefined reference to =
`clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(clang::a=
st_matchers::internal::DynTypedMatcher::VariadicOperator, clang::ast_type_t=
raits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynTypedMatc=
her, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEIS4_EEv=
[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bindable=
MatcherINS_4StmtEEES5_S5_S5_EEcvNS1_7MatcherIT_EEIS4_EEv]+0x40): undefined =
reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(cla=
ng::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasObjectExpressi=
on0Matcher<clang::MemberExpr, clang::ast_matchers::internal::Matcher<clang:=
:Expr> >::matches(clang::MemberExpr const&, clang::ast_matchers::internal::=
ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) con=
st':
(.text._ZNK5clang12ast_matchers8internal35matcher_hasObjectExpression0Match=
erINS_10MemberExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFi=
nderEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal35match=
er_hasObjectExpression0MatcherINS_10MemberExprENS1_7MatcherINS_4ExprEEEE7ma=
tchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x76): unde=
fined reference to `clang::ast_matchers::internal::DynTypedMatcher::matches=
(clang::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal=
::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) c=
onst'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_15BindableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_8CastExprE=
EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_8CastExprEEEv[_ZNK5cla=
ng12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcherIN=
S_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_8CastExprEEEv]+0x30): undefined refer=
ence to `clang::ast_matchers::internal::DynTypedMatcher::constructVariadic(=
clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang::as=
t_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::DynT=
ypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatcher>=
 >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_8CastExpr=
EEEv[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bind=
ableMatcherINS_4StmtEEES5_EEcvNS1_7MatcherIT_EEINS_8CastExprEEEv]+0x40): un=
defined reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCa=
stTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::BindableMatcher<clang::Stmt>, clang::ast_matchers::internal::BindableM=
atcher<clang::Stmt> >::getMatchers<clang::CastExpr, 0ul, 1ul>(llvm::index_s=
equence<0ul, 1ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_EE11getMatchersINS_8CastExprEJLm0ELm1EEEESt6vec=
torINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE[_ZNK5c=
lang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15BindableMatcher=
INS_4StmtEEES5_EE11getMatchersINS_8CastExprEJLm0ELm1EEEESt6vectorINS1_15Dyn=
TypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x1d): undefined r=
eference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clan=
g::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_15BindableMatcherINS_4StmtEEES5_EE11getMatchersINS_8CastExprEJLm0E=
Lm1EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT=
0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_15Bi=
ndableMatcherINS_4StmtEEES5_EE11getMatchersINS_8CastExprEJLm0ELm1EEEESt6vec=
torINS1_15DynTypedMatcherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x55)=
: undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::d=
ynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasSourceExpressi=
on0Matcher<clang::CastExpr, clang::ast_matchers::internal::Matcher<clang::E=
xpr> >::matches(clang::CastExpr const&, clang::ast_matchers::internal::ASTM=
atchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal35matcher_hasSourceExpression0Match=
erINS_8CastExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinde=
rEPNS1_21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal35matcher_=
hasSourceExpression0MatcherINS_8CastExprENS1_7MatcherINS_4ExprEEEE7matchesE=
RKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x41): undefined =
reference to `clang::ast_matchers::internal::DynTypedMatcher::matches(clang=
::ast_type_traits::DynTypedNode const&, clang::ast_matchers::internal::ASTM=
atchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasArgument0Match=
er<clang::CallExpr, unsigned int, clang::ast_matchers::internal::Matcher<cl=
ang::Expr> >::matches(clang::CallExpr const&, clang::ast_matchers::internal=
::ASTMatchFinder*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) c=
onst':
(.text._ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_8C=
allExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_=
21BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal27matcher_hasArgu=
ment0MatcherINS_8CallExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14AS=
TMatchFinderEPNS1_21BoundNodesTreeBuilderE]+0x63): undefined reference to `=
clang::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type_tra=
its::DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder*, c=
lang::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::Va=
rDecl> clang::ast_matchers::internal::makeAllOfComposite<clang::VarDecl>(ll=
vm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::VarDecl> const*>=
)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_7VarDeclEEEN=
S1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_ZN5clang12=
ast_matchers8internal18makeAllOfCompositeINS_7VarDeclEEENS1_15BindableMatch=
erIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): undefined reference t=
o `clang::ast_matchers::internal::DynTypedMatcher::trueMatcher(clang::ast_t=
ype_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_7VarDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_7VarDeclEEENS1_15=
BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x47): undefine=
d reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(c=
lang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_7VarDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_7VarDeclEEENS1_15=
BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1e4): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::constructV=
ariadic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, c=
lang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::intern=
al::DynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTyped=
Matcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_7VarDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_7VarDeclEEENS1_15=
BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x1f6): undefin=
ed reference to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(=
clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::matcher_hasType0Matcher<c=
lang::VarDecl, clang::ast_matchers::internal::Matcher<clang::QualType> >::m=
atches(clang::VarDecl const&, clang::ast_matchers::internal::ASTMatchFinder=
*, clang::ast_matchers::internal::BoundNodesTreeBuilder*) const':
(.text._ZNK5clang12ast_matchers8internal23matcher_hasType0MatcherINS_7VarDe=
clENS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21=
BoundNodesTreeBuilderE[_ZNK5clang12ast_matchers8internal23matcher_hasType0M=
atcherINS_7VarDeclENS1_7MatcherINS_8QualTypeEEEE7matchesERKS3_PNS1_14ASTMat=
chFinderEPNS1_21BoundNodesTreeBuilderE]+0x2c): undefined reference to `clan=
g::ast_matchers::internal::DynTypedMatcher::matches(clang::ast_type_traits:=
:DynTypedNode const&, clang::ast_matchers::internal::ASTMatchFinder*, clang=
::ast_matchers::internal::BoundNodesTreeBuilder*) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `clang::ast_matchers::internal::BindableMatcher<clang::CX=
XForRangeStmt> clang::ast_matchers::internal::makeAllOfComposite<clang::CXX=
ForRangeStmt>(llvm::ArrayRef<clang::ast_matchers::internal::Matcher<clang::=
CXXForRangeStmt> const*>)':
(.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_15CXXForRang=
eStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE[_Z=
N5clang12ast_matchers8internal18makeAllOfCompositeINS_15CXXForRangeStmtEEEN=
S1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE]+0x35): und=
efined reference to `clang::ast_matchers::internal::DynTypedMatcher::trueMa=
tcher(clang::ast_type_traits::ASTNodeKind)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_15CXXForRangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Match=
erIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_15CXXFor=
RangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E]+0x47): undefined reference to `clang::ast_matchers::internal::DynTypedMa=
tcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_15CXXForRangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Match=
erIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_15CXXFor=
RangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E]+0x1e4): undefined reference to `clang::ast_matchers::internal::DynTypedM=
atcher::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::V=
ariadicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::as=
t_matchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::=
internal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers8internal18makeAllOfCompositeINS=
_15CXXForRangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7Match=
erIS5_EEEE[_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_15CXXFor=
RangeStmtEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEE=
E]+0x1f6): undefined reference to `clang::ast_matchers::internal::DynTypedM=
atcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::Matcher<clang::AbstractConditionalOperator>, clang::ast_matchers::inte=
rnal::Matcher<clang::AbstractConditionalOperator> >::getMatchers<clang::Con=
ditionalOperator, 0ul, 1ul>(llvm::index_sequence<0ul, 1ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_27AbstractConditionalOperatorEEES5_EE11getMatchersINS_19Conditional=
OperatorEJLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN4llvm14index_=
sequenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMat=
cherIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EE11getMatchersINS=
_19ConditionalOperatorEJLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISA_EE=
N4llvm14index_sequenceIJXspT0_EEEE]+0x1d): undefined reference to `clang::a=
st_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_type_traits::A=
STNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EE11getMatchersINS_=
19ConditionalOperatorEJLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISA_EEN=
4llvm14index_sequenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23Variad=
icOperatorMatcherIJNS1_7MatcherINS_27AbstractConditionalOperatorEEES5_EE11g=
etMatchersINS_19ConditionalOperatorEJLm0ELm1EEEESt6vectorINS1_15DynTypedMat=
cherESaISA_EEN4llvm14index_sequenceIJXspT0_EEEE]+0x55): undefined reference=
 to `clang::ast_matchers::internal::DynTypedMatcher::dynCastTo(clang::ast_t=
ype_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `std::vector<clang::ast_matchers::internal::DynTypedMatch=
er, std::allocator<clang::ast_matchers::internal::DynTypedMatcher> > clang:=
:ast_matchers::internal::VariadicOperatorMatcher<clang::ast_matchers::inter=
nal::Matcher<clang::Stmt>, clang::ast_matchers::internal::BindableMatcher<c=
lang::Stmt> >::getMatchers<clang::Expr, 0ul, 1ul>(llvm::index_sequence<0ul,=
 1ul>) const':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_4StmtEEENS1_15BindableMatcherIS4_EEEE11getMatchersINS_4ExprEJLm0ELm=
1EEEESt6vectorINS1_15DynTypedMatcherESaISC_EEN4llvm14index_sequenceIJXspT0_=
EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Match=
erINS_4StmtEEENS1_15BindableMatcherIS4_EEEE11getMatchersINS_4ExprEJLm0ELm1E=
EEESt6vectorINS1_15DynTypedMatcherESaISC_EEN4llvm14index_sequenceIJXspT0_EE=
EE]+0x1d): undefined reference to `clang::ast_matchers::internal::DynTypedM=
atcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_4StmtEEENS1_15BindableMatcherIS4_EEEE11getMatchersINS_=
4ExprEJLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISC_EEN4llvm14index_seq=
uenceIJXspT0_EEEE[_ZNK5clang12ast_matchers8internal23VariadicOperatorMatche=
rIJNS1_7MatcherINS_4StmtEEENS1_15BindableMatcherIS4_EEEE11getMatchersINS_4E=
xprEJLm0ELm1EEEESt6vectorINS1_15DynTypedMatcherESaISC_EEN4llvm14index_seque=
nceIJXspT0_EEEE]+0x55): undefined reference to `clang::ast_matchers::intern=
al::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListI=
JNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorI=
S8_EEEEcvNS1_7MatcherIT_EEINS_7VarDeclEEEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_27Ar=
gumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeListIJNS_4DeclENS=
_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1=
_7MatcherIT_EEINS_7VarDeclEEEv[_ZNK5clang12ast_matchers8internal23VariadicO=
peratorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS=
1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEES=
A_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_7VarDeclEEEv]+0x30): undefined re=
ference to `clang::ast_matchers::internal::DynTypedMatcher::constructVariad=
ic(clang::ast_matchers::internal::DynTypedMatcher::VariadicOperator, clang:=
:ast_type_traits::ASTNodeKind, std::vector<clang::ast_matchers::internal::D=
ynTypedMatcher, std::allocator<clang::ast_matchers::internal::DynTypedMatch=
er> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasParentMatcherENS1_8TypeList=
IJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_7TypeLocEEEESA_E7Adaptor=
IS8_EEEEcvNS1_7MatcherIT_EEINS_7VarDeclEEEv[_ZNK5clang12ast_matchers8intern=
al23VariadicOperatorMatcherIJNS1_27ArgumentAdaptingMatcherFuncINS1_16HasPar=
entMatcherENS1_8TypeListIJNS_4DeclENS_22NestedNameSpecifierLocENS_4StmtENS_=
7TypeLocEEEESA_E7AdaptorIS8_EEEEcvNS1_7MatcherIT_EEINS_7VarDeclEEEv]+0x40):=
 undefined reference to `clang::ast_matchers::internal::DynTypedMatcher::dy=
nCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `llvm::SmallVector<clang::ast_matchers::BoundNodes, 1u> c=
lang::ast_matchers::match<clang::ast_matchers::internal::BindableMatcher<cl=
ang::Stmt> >(clang::ast_matchers::internal::BindableMatcher<clang::Stmt>, c=
lang::ast_type_traits::DynTypedNode const&, clang::ASTContext&)':
(.text._ZN5clang12ast_matchers5matchINS0_8internal15BindableMatcherINS_4Stm=
tEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_type_traits12=
DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchINS0_8internal1=
5BindableMatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_=
RKNS_15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x59): undefined re=
ference to `clang::ast_matchers::MatchFinder::MatchFinder(clang::ast_matche=
rs::MatchFinder::MatchFinderOptions)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal15BindableMa=
tcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_=
type_traits12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchIN=
S0_8internal15BindableMatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundN=
odesELj1EEET_RKNS_15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x69):=
 undefined reference to `clang::ast_matchers::MatchFinder::addMatcher(clang=
::ast_matchers::internal::Matcher<clang::Stmt> const&, clang::ast_matchers:=
:MatchFinder::MatchCallback*)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal15BindableMa=
tcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_=
type_traits12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchIN=
S0_8internal15BindableMatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundN=
odesELj1EEET_RKNS_15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x78):=
 undefined reference to `clang::ast_matchers::MatchFinder::match(clang::ast=
_type_traits::DynTypedNode const&, clang::ASTContext&)'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal15BindableMa=
tcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_=
type_traits12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchIN=
S0_8internal15BindableMatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundN=
odesELj1EEET_RKNS_15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0xa9):=
 undefined reference to `clang::ast_matchers::MatchFinder::~MatchFinder()'
/usr/bin/ld: (.text._ZN5clang12ast_matchers5matchINS0_8internal15BindableMa=
tcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_15ast_=
type_traits12DynTypedNodeERNS_10ASTContextE[_ZN5clang12ast_matchers5matchIN=
S0_8internal15BindableMatcherINS_4StmtEEEEEN4llvm11SmallVectorINS0_10BoundN=
odesELj1EEET_RKNS_15ast_type_traits12DynTypedNodeERNS_10ASTContextE]+0x10f)=
: undefined reference to `clang::ast_matchers::MatchFinder::MatchCallback::=
~MatchCallback()'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o): in function `_ZNK5clang12ast_matchers8internal23VariadicOperatorMatch=
erIJNS1_7MatcherINS_8CallExprEEEEEcvNS3_IT_EEIS4_EEv':
(.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatcherIJNS1_7Mat=
cherINS_8CallExprEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_matchers8internal2=
3VariadicOperatorMatcherIJNS1_7MatcherINS_8CallExprEEEEEcvNS3_IT_EEIS4_EEv]=
+0xf6): undefined reference to `clang::ast_matchers::internal::DynTypedMatc=
her::constructVariadic(clang::ast_matchers::internal::DynTypedMatcher::Vari=
adicOperator, clang::ast_type_traits::ASTNodeKind, std::vector<clang::ast_m=
atchers::internal::DynTypedMatcher, std::allocator<clang::ast_matchers::int=
ernal::DynTypedMatcher> >)'
/usr/bin/ld: (.text._ZNK5clang12ast_matchers8internal23VariadicOperatorMatc=
herIJNS1_7MatcherINS_8CallExprEEEEEcvNS3_IT_EEIS4_EEv[_ZNK5clang12ast_match=
ers8internal23VariadicOperatorMatcherIJNS1_7MatcherINS_8CallExprEEEEEcvNS3_=
IT_EEIS4_EEv]+0x106): undefined reference to `clang::ast_matchers::internal=
::DynTypedMatcher::dynCastTo(clang::ast_type_traits::ASTNodeKind) const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.data.rel.ro._ZTVN5clang12ast_matchers8internal22CollectMatchesCallba=
ckE[_ZTVN5clang12ast_matchers8internal22CollectMatchesCallbackE]+0x38): und=
efined reference to `clang::ast_matchers::MatchFinder::MatchCallback::getID=
() const'
/usr/bin/ld: /usr/lib/llvm-9/lib/libclangAnalysis.a(ExprMutationAnalyzer.cp=
p.o):(.data.rel.ro._ZTIN5clang12ast_matchers8internal22CollectMatchesCallba=
ckE[_ZTIN5clang12ast_matchers8internal22CollectMatchesCallbackE]+0x10): und=
efined reference to `typeinfo for clang::ast_matchers::MatchFinder::MatchCa=
llback'
clang: error: linker command failed with exit code 1 (use -v to see invocat=
ion)
make[2]: *** [Makefile.perf:628: /tmp/build/perf/perf] Error 1
make[1]: *** [Makefile.perf:225: sub-make] Error 2
make: *** [Makefile:70: all] Error 2
make: Leaving directory '/git/linux/tools/perf'
+ exit 1
[root@quaco ~]#=20


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200114222025.GC4769%40kernel.org.
