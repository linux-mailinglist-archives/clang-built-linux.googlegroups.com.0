Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBO5BTLZQKGQEXMV5MDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B7C17E793
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 19:53:48 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id i3sf196799pjx.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 11:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583780027; cv=pass;
        d=google.com; s=arc-20160816;
        b=z5GtNevNhtMuGaKlp30uix2tvJ3+4QF8C2+curpL96ExiNAiJ2usb+abjiBTBpuVYo
         41xQyGka/BtN1MPyQX9gBT4SVCbZakyaHdsaysBaBFbPGga5f9tzGNlcr1i0RKE5XUOz
         doDT8q37H9cg0LtSvknp5QYYklmSG7FQgcxx37qDTKpq2v9oRtv5HfvSznXZM+tvR9mS
         R/plT5WWmnI8s9f5uqXyyOnyX0AghGXXQXQ/IPn7mUvSIPtYFeTe+ymW8xh7LBNvDAds
         vfDSqEI9biov3nRGhoT5+o6URjrk060SZbfVdr0k6LKzhCEHpnT8Po+2e7RXV3AveuVU
         u7GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=Z48wHhgwkMK6kUJHn7Zt2Ah/s+lRf6ISd6fpoRxCSYY=;
        b=xQhVODTfXS1elok1oPEayMyQ45LzfeSa2y0d3wb5wwyhe6qG48/SivcT7FEjK/Lf6p
         0di1Lhqh7OI415boQhnrRzlNSQEyRAVNUgl/PBe8Xk9cm+cgdxKxBskumF+vLV5xe5nB
         UT6Eu1PBZyuihglwITendKUhkbgps6JyKOtLK4tgqsw2VL5gNGL0IptwDPLFNi5X8yTv
         32ksyqPP0L96Vu7mIH0SU9nOOXj2YCz0G6aeHXEW7LWvnoR/JRH+LJxoFIW4qXamx1h+
         8aMTloX91e65Lhc6lfYrM0XBejwAC6uS3N/ZZeerEvokjtFNbeq7rwbLnnXjDEcD+sGe
         m60A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fWFjQDXz;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z48wHhgwkMK6kUJHn7Zt2Ah/s+lRf6ISd6fpoRxCSYY=;
        b=YNwfG6LFMMxTO8jjHZ8HmlAapnlWf1Cn2jVKWyRNdBN79CVFeRT0qUlYID5b10h3H3
         0I/lYByDrLaXQwjFXutDMTMyLHdx3zsIkEaNAJeW/nRCHvhE0xZMLLuMnAgpp2kJOKOW
         k7lVpHStbwJloKgyCVPhSiV0ohXmJ1YZ1oAj1Rv7zeLb6t17IGXe0TdYhe/pQ/EnpRqd
         CiOloJhuhshq3uFiCexyvJUf4suEEj3OuLO7tr/MhsXHeI9plsh/C2OIR5geIP275L7b
         DDJfdS3eFl5n3+j66zwqf+51tQyf29kDGqI+z92FzXFmPhdocV1W5K2VrNKEX/pAw80K
         ADPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z48wHhgwkMK6kUJHn7Zt2Ah/s+lRf6ISd6fpoRxCSYY=;
        b=TfHH1adSf5tUKsnUSWWBP/wbLpLXAOIuZPZhCINZNxLPQDGZaXwlXCeUYVJRQHCyUj
         D6WiGzyOj+sGvmj78oPG7HgUOuKPzIR30o9VbYvVC9X4PaOj+zthzYuPB80Egt2luNMl
         X35Wvbxaf+S7XTgmMaJIC6zrAi/P8y5CgMmXK7j3Bw7c+hZn4D7+LEPgCzAAxwo3MCAg
         w9yKFW/V2BkwXw+OoIaci2aEFlYeAisbnBIsMpQuu/qcla9o4Ze2HO9/OrnvbXxabJ08
         7YkkUiJ5/xfuSdkh3RnRX0l+Bz/vqkQx+6P7STEEg4HeTeMNVSArJC6boHxxMtPW2z6z
         wigQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1oyU9sZMwKDAga1/CN1tHYQPnZSyLH9tx+4Gxksvblmn3mPnf3
	fjPh9rHS+8GBtgXqiNv02Zc=
X-Google-Smtp-Source: ADFU+vulabKthQK/G7zyD/XxY5xfxvKBoDKHC2vc9b1B+SoCqNxcnpqoLvQl/IRNYugXo87u8QkUHw==
X-Received: by 2002:a17:902:788b:: with SMTP id q11mr17348199pll.44.1583780027351;
        Mon, 09 Mar 2020 11:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7618:: with SMTP id k24ls1138886pll.4.gmail; Mon, 09
 Mar 2020 11:53:46 -0700 (PDT)
X-Received: by 2002:a17:90b:14c:: with SMTP id em12mr812069pjb.22.1583780026850;
        Mon, 09 Mar 2020 11:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583780026; cv=none;
        d=google.com; s=arc-20160816;
        b=Mxv1p9lANZpAuYDe7WZXGpoep1SpPFQTKpAAvmQM3D2KEHoXmNAdyNVXaNwzFSST/j
         UVY7eIDHP/7qay5X17tfOLgO0pDMzyjmk79p5KOkNwzou+t26LAUHO4kn0LT/LKH6Ryw
         19Z4czAHNaE6UUjtb3bR9eaK+1NMswNSeSLWOFRZuvzCdEm2m8eoq0meWybfvjsoax+L
         9nIbBB7Uh45oIkAfzP81DLZFAx0lDFbBBUgBYoSIFEkYSEv2uU1BLIz3ayj0QmoB2QW4
         y2Mj1XjhoRDHowYqV9ut4s5pFtgqzZhHfYXm/ivArEa0Wkp700Bdh0uLEGFEOh56HaLi
         UxXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I8jtAw8CBvq/R8zpcGr8aSpjKM1yqW5hDXQsF4PEEc4=;
        b=aMoPvnNziB2hGouzY1OCmqhoihvtvK8lnsIbcSlBT9PwpCeUfHvbYSOwkjwzf9Db7W
         Vg0icVAeSJrPw5alJF5LBTS2CLSZSJpetdWPCstnEpoLotQMYs33Bp1VWYRLvGNY8C1O
         TpzAy+SMnuxBS3qZ3FzIF/ghGgJ/4b4z2g0RJ6/JCL2k6ADEvscD98QluixfoezjFrpz
         GA7y/OL8HF7t8ev3nGlIuQ6iAQsw8RwGnvJaR/Ua9P0GAa2SapxHwfwcWuZFyHXqKL1z
         2j0xWQuiEhU9QIRuNy4Y9kgpSU2ddStIWfbthkUJ56+MwVt7mC/SShoEN3ASr9KXQYWW
         T/eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fWFjQDXz;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q19si698317pgt.0.2020.03.09.11.53.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 11:53:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2FCF220663;
	Mon,  9 Mar 2020 18:53:42 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ilie Halip <ilie.halip@gmail.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Igor Lubashev <ilubashe@akamai.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 3/6] perf python: Fix clang detection when using CC=clang-version
Date: Mon,  9 Mar 2020 15:53:20 -0300
Message-Id: <20200309185323.22583-4-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200309185323.22583-1-acme@kernel.org>
References: <20200309185323.22583-1-acme@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fWFjQDXz;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Ilie Halip <ilie.halip@gmail.com>

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
pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-protector=
-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURCE -D _FILE_OFFSET_BITS=3D6=
4 -D _GNU_SOURCE -I /home/acme/git/perf/tools/lib/perf/include -I /home/acm=
e/git/perf/tools/perf/util/include -I /home/acme/git/perf/tools/perf/arch/x=
86/include -I /home/acme/git/perf/tools/include/ -I /home/acme/git/perf/too=
ls/arch/x86/include/uapi -I /home/acme/git/perf/tools/include/uapi -I /home=
/acme/git/perf/tools/arch/x86/include/ -I /home/acme/git/perf/tools/arch/x8=
6/ -I /tmp/build/perf//util -I /tmp/build/perf/ -I /home/acme/git/perf/tool=
s/perf/util -I /home/acme/git/perf/tools/perf -I /home/acme/git/perf/tools/=
lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAVE_PTHREAD_BARRIER -D HAVE_EV=
ENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETTID -D HAVE_DWARF_GETLOCATION=
S_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUPPORT -D HAVE_SCHED_GETCPU_SU=
PPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPPORT -D HAVE_LIBELF_MMAP_SUPP=
ORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF_GETNOTE_SUPPORT -D HAVE_ELF=
_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D HAVE_LIBBPF_SUPPORT -D HAVE=
_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -D HAVE_DWARF_UNWIND_SUPPOR=
T -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_SUPPORT -D HAVE_LIBCRYPTO_S=
UPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT -D NO_LIBPERL -D HAVE_TIM=
ERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CPLUS_DEMANGLE_SUPPORT -D HA=
VE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZMA_SUPPORT -D HAVE_ZSTD_SU=
PPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SUPPORT -D HAVE_LIBNUMA_SUPP=
ORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARGS_SIGNATURE -D HAVE_LIBBABEL=
TRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_JVMTI_CMLR -I /tmp/build/per=
f/ -fPIC -I util/include -I /usr/include/python3.7m -c /home/acme/git/perf/=
tools/perf/util/python.c -o /tmp/build/perf/python_ext_build/tmp/home/acme/=
git/perf/tools/perf/util/python.o -Wbad-function-cast -Wdeclaration-after-s=
tatement -Wformat-security -Wformat-y2k -Winit-self -Wmissing-declarations =
-Wmissing-prototypes -Wnested-externs -Wno-system-headers -Wold-style-defin=
ition -Wpacked -Wredundant-decls -Wstrict-prototypes -Wswitch-default -Wswi=
tch-enum -Wundef -Wwrite-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPP=
ORT -I /tmp/build/perf/arch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUP=
PORT -D HAVE_PERF_REGS_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Wer=
ror -O3 -fno-omit-frame-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=
=3Dgnu99 -fstack-protector-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURC=
E -D _FILE_OFFSET_BITS=3D64 -D _GNU_SOURCE -I /home/acme/git/perf/tools/lib=
/perf/include -I /home/acme/git/perf/tools/perf/util/include -I /home/acme/=
git/perf/tools/perf/arch/x86/include -I /home/acme/git/perf/tools/include/ =
-I /home/acme/git/perf/tools/arch/x86/include/uapi -I /home/acme/git/perf/t=
ools/include/uapi -I /home/acme/git/perf/tools/arch/x86/include/ -I /home/a=
cme/git/perf/tools/arch/x86/ -I /tmp/build/perf//util -I /tmp/build/perf/ -=
I /home/acme/git/perf/tools/perf/util -I /home/acme/git/perf/tools/perf -I =
/home/acme/git/perf/tools/lib/ -D HAVE_PTHREAD_ATTR_SETAFFINITY_NP -D HAVE_=
PTHREAD_BARRIER -D HAVE_EVENTFD -D HAVE_GET_CURRENT_DIR_NAME -D HAVE_GETTID=
 -D HAVE_DWARF_GETLOCATIONS_SUPPORT -D HAVE_GLIBC_SUPPORT -D HAVE_AIO_SUPPO=
RT -D HAVE_SCHED_GETCPU_SUPPORT -D HAVE_SETNS_SUPPORT -D HAVE_LIBELF_SUPPOR=
T -D HAVE_LIBELF_MMAP_SUPPORT -D HAVE_ELF_GETPHDRNUM_SUPPORT -D HAVE_GELF_G=
ETNOTE_SUPPORT -D HAVE_ELF_GETSHDRSTRNDX_SUPPORT -D HAVE_DWARF_SUPPORT -D H=
AVE_LIBBPF_SUPPORT -D HAVE_BPF_PROLOGUE -D HAVE_SDT_EVENT -D HAVE_JITDUMP -=
D HAVE_DWARF_UNWIND_SUPPORT -D NO_LIBUNWIND_DEBUG_FRAME -D HAVE_LIBUNWIND_S=
UPPORT -D HAVE_LIBCRYPTO_SUPPORT -D HAVE_SLANG_SUPPORT -D HAVE_GTK2_SUPPORT=
 -D NO_LIBPERL -D HAVE_TIMERFD_SUPPORT -D HAVE_LIBPYTHON_SUPPORT -D HAVE_CP=
LUS_DEMANGLE_SUPPORT -D HAVE_LIBBFD_SUPPORT -D HAVE_ZLIB_SUPPORT -D HAVE_LZ=
MA_SUPPORT -D HAVE_ZSTD_SUPPORT -D HAVE_LIBCAP_SUPPORT -D HAVE_BACKTRACE_SU=
PPORT -D HAVE_LIBNUMA_SUPPORT -D HAVE_KVM_STAT_SUPPORT -D DISASM_FOUR_ARGS_=
SIGNATURE -D HAVE_LIBBABELTRACE_SUPPORT -D HAVE_AUXTRACE_SUPPORT -D HAVE_JV=
MTI_CMLR -I /tmp/build/perf/ -fno-strict-aliasing -Wno-write-strings -Wno-u=
nused-parameter -Wno-redundant-decls
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
2.21.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200309185323.22583-4-acme%40kernel.org.
