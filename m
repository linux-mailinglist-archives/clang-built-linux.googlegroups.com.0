Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBAXYZXZQKGQE3FD57CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f58.google.com (mail-ed1-f58.google.com [209.85.208.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3F718B88F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:04:50 +0100 (CET)
Received: by mail-ed1-f58.google.com with SMTP id u1sf2025684edr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:04:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584626690; cv=pass;
        d=google.com; s=arc-20160816;
        b=nzn4m/YDJ/OG+ifr9XbIzyrDy2IjIXueICPTEFuMpy+WSE4p2364UZabO7iB16Pk5G
         bNF+lXq2sqYlGdvEpTg+N742Fegtp/jomhKeiHHVGKGx2Fg3qT7WpcTaV6BSDS0dVW2U
         9zDgSNIAy4Wth78vfQxjIWRvJJ1VmQPTvtAugSaNcfCdOphGDeQnfr5bToPEr97I1CYt
         yKEt5Djjdv7WVKKHAMKxtndecTcuWq6XgkOyrMpz23u81RgSBrjbWcVBoh/PxEQViPxp
         YARjRVE980U4iycNWAZkRuNWrSu1mrDOiZirTXKnsW38E9/mARokP6+oagpT80A3nEnX
         oWDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:content-transfer-encoding:precedence
         :robot-unsubscribe:robot-id:message-id:mime-version:references
         :in-reply-to:cc:subject:to:reply-to:sender:from:date;
        bh=wjIfYWt41ZxSpDUrVMb4aayOtCjzJxJOhJL2vQNijik=;
        b=rzFaZ/aQs3GRzu4/mowx8IlKy8X2FSY9DikPDgNDz7Qw/lss1odz0HdDncdArQzcpB
         bbzKwjNEXdRz/QWT4R9RuzYvsxs34dN/uvFBaMfONCCJ0iemSqJl8euX8bDU1gJ042PR
         MdF17bmBALG3zQtoC+fGDZlvfx+gRUX/MKDggwwbmlA+jrBWSUXY7TVt/eNT731/EFf7
         9qHvdTMTm4JCGVC6UmXzlLmsppriXaodBbWmhNMF5MS8LyhgBHY/C5///Jo5u4xmgLxL
         huL950NlY8+YKFyDSNSx7GpG4Ti+LqkGztken0xhun+53YdiNF72WpB8GVAlVrzarBKK
         oTKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjIfYWt41ZxSpDUrVMb4aayOtCjzJxJOhJL2vQNijik=;
        b=VHlG52FI54eed5IkAk2uOXhwn7Gdb8WhCUnIp3BSJNiprIHkkd6tqMv9oKFt3MDS5H
         bIXG3bp5naYN4OmhpPDFTCVTAbkuk4ngwCbIF+yBDuIlXS0VxoLLpN8h77QP5eZZykrB
         GD9Ii1e9dHt7l1z6nHAEFnIbJo6ZRtZv4D5eta2HxlBLJvXjBWI8vME0cSfvXxGBYJGP
         9fQulTz/VhkRwuUTWjEritn3ZvaUNl9eJor64PqzhTZKxy+no7HOaxSNm9QT/yHoQQrv
         OWEA4aUIWAdXsIvNNevSB9M4EWnjbV8p/vz+upymH/jMFqOhXM9oIu76TjZ9YiZs0ANc
         dVLQ==
X-Gm-Message-State: ANhLgQ10ii4DI3p6ZnO2MnGLVm+/kzmsIpY/kB9JmudrjvLLls8B02Z7
	s0+sgD0HS03k+IMPQe/FQsI=
X-Google-Smtp-Source: ADFU+vtbbzOqbZhW1DMLQHc7CicnADIdWun9Zhe9EwVyIvOXEVM7qGYJnz48paMEete9yutzNME2OA==
X-Received: by 2002:aa7:c386:: with SMTP id k6mr2913045edq.242.1584626690183;
        Thu, 19 Mar 2020 07:04:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8548:: with SMTP id h8ls1060213ejy.11.gmail; Thu, 19
 Mar 2020 07:04:49 -0700 (PDT)
X-Received: by 2002:a17:906:d939:: with SMTP id rn25mr3476521ejb.85.1584626689579;
        Thu, 19 Mar 2020 07:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584626689; cv=none;
        d=google.com; s=arc-20160816;
        b=bY2UWJsAV3JtTZQJkjsCrELJuLWgwUJ3bx/m/qns+ipuDg4wtlqOT6zdL2Nbu/EY7s
         TqiotorfCWIa5JwRNfisx7ILVgZ83Gm2ZGx7kP62UmJoQPSpd5AnY8YO3R6CU1+5AhFQ
         +uA2hMO5fvMFYuf40+zePX6ACKXtUnIRmEC04nVRytPlUXJzlei4nRHbmJmtr4crpuYZ
         OtNbZnuQDhj1zTM6XE68DM/wJmuXWkeOoXAt4s2e7TOayGR2x5zrWelJUXBsK3Hqn7i1
         dsMqPNpM5hLKxGgMLwawZIEc0SqfhZm84qtucQFBdtoPICk8EovIT5XPUQNKJ2JYm5L2
         TyrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=ogBh0fcaId8mjnY6yxHyeFRp3RwKpBFNYzMBbyctCPc=;
        b=Tr79uZTsG20NdF4uFwp836tQLSG8D92tg6wtzplRy0wX0S4NDxcqpbpzWgb0TP/uVe
         WRwZY2qW40AGPe1FUbSzM1F9GXJ+f1P23wTNUWhPd9S9CTKIVPx1xpRNi1lt7Isaz3ZY
         5U7agZgHPNe2cF5/RiuJtfAkJKaKZCWfQ4lJVzL4tKGdqCCnNpAQxtdeJ7E8jAElZ7yc
         9+usKzqZmgrdcEMvoE7ZyFkc1otqeiD2rrbj7b9Br99YCRNtm3WJBT2fTV2LlWvOG7tX
         5oNt7NT0x1WE/2wqQTK13MkCOea6n6T5NWqFMQTVKvqV/pGzwGj1CpQEU8AjTzRs8vlm
         8SnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x7si117804ejw.0.2020.03.19.07.04.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 07:04:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jEvmv-0001ob-0s; Thu, 19 Mar 2020 15:04:45 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 9DE311C22A2;
	Thu, 19 Mar 2020 15:04:44 +0100 (CET)
Date: Thu, 19 Mar 2020 14:04:44 -0000
From: "tip-bot2 for Ilie Halip" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/urgent] perf python: Fix clang detection when using
 CC=clang-version
Cc: Ilie Halip <ilie.halip@gmail.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, clang-built-linux@googlegroups.com,
 x86 <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200309085618.14307-1-ilie.halip@gmail.com>
References: <20200309085618.14307-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Message-ID: <158462668431.28353.2864378850389290044.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/urgent branch of tip:

Commit-ID:     a7ffd416d80497f03d1f62c0b330cff76a86d5ad
Gitweb:        https://git.kernel.org/tip/a7ffd416d80497f03d1f62c0b330cff76=
a86d5ad
Author:        Ilie Halip <ilie.halip@gmail.com>
AuthorDate:    Mon, 09 Mar 2020 10:56:17 +02:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Mon, 09 Mar 2020 09:58:57 -03:00

perf python: Fix clang detection when using CC=3Dclang-version

Currently, the setup.py script detects the clang compiler only when invoked
with CC=3Dclang. But when using a specific version (e.g. CC=3Dclang-11), th=
is
doesn't work correctly and wrong compiler flags are set, leading to build
errors.

To properly detect clang, invoke the compiler with -v and check the output.
The first line should start with "clang version ...".

Committer testing:

  $ make CC=3Dclang-9 O=3D/tmp/build/perf -C tools/perf install-bin
  <SNIP>
  $ readelf -wi /tmp/build/perf/python/perf.cpython-37m-x86_64-linux-gnu.so=
 | grep DW_AT_producer | head -1
    <c>   DW_AT_producer    : (indirect string, offset: 0x0): clang version=
 9.0.1 (Fedora 9.0.1-2.fc31) /usr/bin/clang-9 -Wno-unused-result -Wsign-com=
pare -D DYNAMIC_ANNOTATIONS_ENABLED=3D1 -D NDEBUG -O2 -g -pipe -Wall -Werro=
r=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 -Wp,-D_GLIBCXX_ASSERTIONS -fe=
xceptions -fstack-protector-strong -grecord-command-line -m64 -mtune=3Dgene=
ric -fasynchronous-unwind-tables -fcf-protection=3Dfull -D _GNU_SOURCE -fPI=
C -fwrapv -Wbad-function-cast -Wdeclaration-after-statement -Wformat-securi=
ty -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -Wn=
ested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredunda=
nt-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwrite=
-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPPORT -I /tmp/build/perf/a=
rch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUPPORT -D HAVE_PERF_REGS_S=
UPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O3 -fno-omit-frame-=
pointer -ggdb3 -funwind-tables -W
 all -Wextra -std=3Dgnu99 -fstack-protector-all -D _FORTIFY_SOURCE=3D2 -D _=
LARGEFILE64_SOURCE -D _FILE_OFFSET_BITS=3D64 -D _GNU_SOURCE -I /home/acme/g=
it/perf/tools/lib/perf/include -I /home/acme/git/perf/tools/perf/util/inclu=
de -I /home/acme/git/perf/tools/perf/arch/x86/include -I /home/acme/git/per=
f/tools/include/ -I /home/acme/git/perf/tools/arch/x86/include/uapi -I /hom=
e/acme/git/perf/tools/include/uapi -I /home/acme/git/perf/tools/arch/x86/in=
clude/ -I /home/acme/git/perf/tools/arch/x86/ -I /tmp/build/perf//util -I /=
tmp/build/perf/ -I /home/acme/git/perf/tools/perf/util -I /home/acme/git/pe=
rf/tools/perf -I /home/acme/git/perf/tools/lib/ -D HAVE_PTHREAD_ATTR_SETAFF=
INITY_NP -D HAVE_PTHREAD_BARRIER -D HAVE_EVENTFD -D HAVE_GET_CURRENT_DIR_NA=
ME -D HAVE_GETTID -D HAVE_DWARF_GETLOCATIONS_SUPPORT -D HAVE_GLIBC_SUPPORT =
-D HAVE_AIO_SUPPORT -D HAVE_SCHED_GETCPU_SUPPORT -D HAVE_SETNS_SUPPORT -D H=
AVE_LIBELF_SUPPORT -D HAVE_LIBELF_MMAP_SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPO=
RT -D HAVE_GELF_GETNOTE_SUPPO
 RT -D HAVE_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D HAVE_LIBBPF_=
SUPPORT -D HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -D HAVE_DWAR=
F_UNWIND_SUPPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_SUPPORT -D H=
AVE_LIBCRYPTO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT -D NO_LIBP=
ERL -D HAVE_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CPLUS_DEMANGL=
E_SUPPORT -D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZMA_SUPPORT =
-D HAVE_ZSTD_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SUPPORT -D HA=
VE_LIBNUMA_SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARGS_SIGNATURE -=
D HAVE_LIBBABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_JVMTI_CMLR -I=
 /tmp/build/perf/ -fPIC -I util/include -I /usr/include/python3.7m -c /home=
/acme/git/perf/tools/perf/util/python.c -o /tmp/build/perf/python_ext_build=
/tmp/home/acme/git/perf/tools/perf/util/python.o -Wbad-function-cast -Wdecl=
aration-after-statement -Wformat-security -Wformat-y2k -Winit-self -Wmissin=
g-declarations -Wmissin
 g-prototypes -Wnested-externs -Wno-system-headers -Wold-style-definition -=
Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enu=
m -Wundef -Wwrite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPPORT -I =
/tmp/build/perf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUPPORT -D=
 HAVE_PERF_REGS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O3=
 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 =
-fstack-protector-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURCE -D _FIL=
E_OFFSET_BITS=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/lib/perf/inc=
lude -I /home/acme/git/perf/tools/perf/util/include -I /home/acme/git/perf/=
tools/perf/arch/x86/include -I /home/acme/git/perf/tools/include/ -I /home/=
acme/git/perf/tools/arch/x86/include/uapi -I /home/acme/git/perf/tools/incl=
ude/uapi -I /home/acme/git/perf/tools/arch/x86/include/ -I /home/acme/git/p=
erf/tools/arch/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/ -I /home/a=
cme/git/perf/tools/perf/util=20
 -I /home/acme/git/perf/tools/perf -I /home/acme/git/perf/tools/lib/ -D HAV=
E_PTHREAD_ATTR_SETAFFINITY_NP -D HAVE_PTHREAD_BARRIER -D HAVE_EVENTFD -D HA=
VE_GET_CURRENT_DIR_NAME -D HAVE_GETTID -D HAVE_DWARF_GETLOCATIONS_SUPPORT -=
D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUPPORT -D HAVE_SCHED_GETCPU_SUPPORT -D HA=
VE_SETNS_SUPPORT -D HAVE_LIBELF_SUPPORT -D HAVE_LIBELF_MMAP_SUPPORT -D HAVE=
_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF_GETNOTE_SUPPORT -D HAVE_ELF_GETSHDRSTR=
NDX_SUPPORT -D HAVE_DWARF_SUPPORT -D HAVE_LIBBPF_SUPPORT -D HAVE_BPF_PROLOG=
UE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -D HAVE_DWARF_UNWIND_SUPPORT -D NO_LIB=
UNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_SUPPORT -D HAVE_LIBCRYPTO_SUPPORT -D H=
AVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT -D NO_LIBPERL -D HAVE_TIMERFD_SUPPOR=
T -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CPLUS_DEMANGLE_SUPPORT -D HAVE_LIBBFD_S=
UPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZMA_SUPPORT -D HAVE_ZSTD_SUPPORT -D HA=
VE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SUPPORT -D HAVE_LIBNUMA_SUPPORT -D HAVE=
_KVM_STAT_SUPPORT -D DI
 SASM_FOUR_ARGS_SIGNATURE -D HAVE_LIBBABELTRACE_SUPPORT -D HAVE_AUXTRACE_SU=
PPORT -D HAVE_JVMTI_CMLR -I /tmp/build/perf/ -fno-strict-aliasing -Wno-writ=
e-strings -Wno-unused-parameter -Wno-redundant-decls
  $

And here is how tools/perf/util/setup.py checks if the used clang has
options that the distro specific python extension building compiler
defaults:

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
              vars[var] =3D sub("-fstack-clash-protection", "", vars[var])
          if not clang_has_option("-fstack-protector-strong"):
              vars[var] =3D sub("-fstack-protector-strong", "", vars[var])

So "-fcf-protection=3Dfull" is used, clang-9 has this option and thus it
was kept, the perf python extension was built with it and the build
completed successfully.

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
Link: http://lore.kernel.org/lkml/20200309085618.14307-1-ilie.halip@gmail.c=
om
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/setup.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
index aa344a1..8a065a6 100644
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
clang-built-linux/158462668431.28353.2864378850389290044.tip-bot2%40tip-bot=
2.
