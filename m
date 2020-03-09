Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVDTLZQKGQENHJO2RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 165E817E7A6
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 19:58:48 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id g13sf5106017pfq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 11:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583780326; cv=pass;
        d=google.com; s=arc-20160816;
        b=jil411h4qwuenw3UIM32xmOHOcahHN7n5eI1+E9hsScK/1sTHdt0H7b/7YUXbha417
         9mPL2sEbaxR72W8DXOksMvuW9WULNPOhqhJn4kaE9DjKUAgpR0Id4xlxEqZJDPtTdafV
         Dc+PwKUR6pyFp5kui06gu6OlxB+is+rxujdhZSCW/I6tHP10A0AMJBsTVQfQyzVB5sxJ
         UCRYbYb3/HuUGhfnV59mMsbG2Hc9PL93Xm4Rg5Q5EafgXqixE3bClXPR7xW8xwzEsS9E
         JcFZHyll1QBeUkdd1C+rAt/wYSKoB9il24+4Q8Kegm8jmHRYfrovdRyNzS1m69fXf1Rk
         FPfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dyAnvglHGBrZDdp0TQ3fFjmnxDHBg0N4IpEljtXILXU=;
        b=V8KgTrOhNRmVlce9Fnn0ZvaGi9QWHecT/YqumPuOzbrUmKJZG+N17I9fYKw+PeW7zZ
         bHKNeag14NP8ScVv9u6U0vR7ALoW716wKuPw8l0JjIc9eZKo2mdWrGTNFyi7PwL5T+ZN
         UknYauSBFyzdxbOj+hlOmjQ+OSrA57IOml6Oh+snePE+vxV9tuLV//AbktkMm81cA28/
         RAIbNUjh0X1w7t0ahbNSG8ZEihbDYapmZQxWfSmjGSxSHrwAS3/BmEsgenndUcgITM2H
         sHy+SwYTjO5BUbPprsNKYdN+PiL4AsFLc6d+mvAYchAEsAOJ9xss7SD9qxRC/vayeWZK
         dO3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jsEuVziw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dyAnvglHGBrZDdp0TQ3fFjmnxDHBg0N4IpEljtXILXU=;
        b=m4ktsjeyW549DmSdpAZN06wjGeYaHBw2/FBwUxcrdkxOSkePs+Lj50k1GVzgV5KOZd
         oX3mwvnCHS5f3c+aIJnQbFsB4zyQLvFz4h22GOO8pykj4tPLIFlEigjKTcQJpKzZ4NZC
         8LuTIKnrLxc36awVFADXHlCFZCUpnYaCHyZmBoJQvsKfHcFgj5TQt0SKJD47L3fyii/h
         nclGD/itvWFegqMI9geF0lOEOQJ+jmDUIDQMWwttA1hWgQgptkxjvWCNO9dcAqkGWRUE
         5OSJerGqvb/1r/P6y6p/XpweGlgy0w5VaGCl4Wv6ewRX29faMxYde8EnTcsAZNi/xAJv
         0/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dyAnvglHGBrZDdp0TQ3fFjmnxDHBg0N4IpEljtXILXU=;
        b=lAzx/jR3gmgysz5tCpChUP5lytNRFNUVV256fCx+5GsGhtb2RGRZciMJCeu/RS4ZcP
         nDYXICRY//lMplqpsAqvnEVsFmn+b5ViDoq5iyMDT0Zvh2oW0pL4UjfRCEKfC72665MJ
         nAH3/Iz8t60s5CNx1ySjBdvObeLMyulwY1g/qJo3HRb8YrKqxPn36rn2my7PdSOoDR5j
         qDzz+9sLaEctmpBDH2pTXOZ0/iZUELpMfa1yPTrK8F3EhMMuzjSQupZgTGHhrg+9/Hm5
         EZILqncB0JoAyTkEDjhBywjBhCG54gN3eI4/HFd8dn3H3yTG1Q04kM6IdiaCix4c3Am3
         ErSA==
X-Gm-Message-State: ANhLgQ3LhPpj5yTVZWg1QY3zr599cCZyJBrIzAx8vqA/6REIQjhhEKe3
	eWfKFnO3jueGmCRewntUKNE=
X-Google-Smtp-Source: ADFU+vtsT05Qb1wktf3hm2bm5VbkUByTBZCk8sH9Ze8fswHslUYXGMX0YhwYPzirLuLdYDNSgWuaDQ==
X-Received: by 2002:aa7:9699:: with SMTP id f25mr5875093pfk.86.1583780326710;
        Mon, 09 Mar 2020 11:58:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls378113pjo.2.canary-gmail;
 Mon, 09 Mar 2020 11:58:46 -0700 (PDT)
X-Received: by 2002:a17:90a:d081:: with SMTP id k1mr775298pju.57.1583780326262;
        Mon, 09 Mar 2020 11:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583780326; cv=none;
        d=google.com; s=arc-20160816;
        b=eLRK2+mUydLsUbKGTCnu3NKReWVEf8geM/rWLVC+ElXZdtVvde06rbVCJluO++I3xC
         taxQNsfidIsg9bmwAadkyTMvQwa3kQ0TmWd8BYL87SyJja41UaCfJHwQbPdHSjkYB6KK
         e86sVz41aIniFjzdu6tRsMFNGN9Abg8mrDiKbsV8fKMLs2yntkQWPXGiHhdDn5vDm4gz
         Zq+QQgsdzgjCPTzYhdMpy4JY+GmtQNaLXvVOw60Bt/srPiJUOQ4/qYMaaBPT3Mt/xdh8
         s2KARVnl+KXcXzEKuY/2N3fGb4v4gyS9lsnTO1YWkz5Xdp1iJeJdG+0vSM3sdkwTzT9B
         OgiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g6iYxVU3My4ig01uS18gVLiejHZEikDEh+euLkI/Qd4=;
        b=xi9TzF1IOkRDidXNjhZfTOdavBODSU808TZYXgYJRXdKUxdhG3zHBC3y2vdRaLj5rr
         HnwiCy/KngVI0R5rQ0Buvmnk/ZPeFYeF64PaKAxQ0v3ogTdXp8kXm4Q7/OaGMg3sVGGn
         qZm99lww33fAtq2PQiE1qpDjSDWgc+jLALUh0XzvzsOPdWgh1iBz2FLxvcELZ6eiFVEk
         ugm2BrTYQ4MBdri3Xx60IJsRHhdJ8cDBfyQoT0mpgyj2cB3juea8D0NxCuiwEy5h8fc3
         wv8/YXeB2UGE4DXrGWant93K2gy8fCKDpzjApF2ds6xa7pQFC/4OE4lzdT0xy75+AjU5
         0jWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jsEuVziw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id y3si628405plr.1.2020.03.09.11.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 11:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id d9so4355921plo.11
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 11:58:46 -0700 (PDT)
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr749235pja.27.1583780325479;
 Mon, 09 Mar 2020 11:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200309185323.22583-1-acme@kernel.org> <20200309185323.22583-4-acme@kernel.org>
In-Reply-To: <20200309185323.22583-4-acme@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Mar 2020 11:58:33 -0700
Message-ID: <CAKwvOdm5RrdpOCMgRezLeHJ9GuocVoKqSUQGHjaCEcZdSr4AwA@mail.gmail.com>
Subject: Re: [PATCH 3/6] perf python: Fix clang detection when using CC=clang-version
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Ingo Molnar <mingo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@kernel.org>, 
	Namhyung Kim <namhyung@kernel.org>, Clark Williams <williams@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, linux-perf-users@vger.kernel.org, 
	Ilie Halip <ilie.halip@gmail.com>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Igor Lubashev <ilubashe@akamai.com>, 
	Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jsEuVziw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

On Mon, Mar 9, 2020 at 11:53 AM Arnaldo Carvalho de Melo
<acme@kernel.org> wrote:
>
> From: Ilie Halip <ilie.halip@gmail.com>
>
> Currently, the setup.py script detects the clang compiler only when invok=
ed
> with CC=3Dclang. But when using a specific version (e.g. CC=3Dclang-11), =
this
> doesn't work correctly and wrong compiler flags are set, leading to build
> errors.
>
> To properly detect clang, invoke the compiler with -v and check the outpu=
t.
> The first line should start with "clang version ...".
>
> Committer testing:
>
>   $ make CC=3Dclang-9 O=3D/tmp/build/perf -C tools/perf install-bin
>   <SNIP>
>   $ readelf -wi /tmp/build/perf/python/perf.cpython-37m-x86_64-linux-gnu.=
so | grep DW_AT_producer | head -1
>     <c>   DW_AT_producer    : (indirect string, offset: 0x0): clang versi=
on 9.0.1 (Fedora 9.0.1-2.fc31) /usr/bin/clang-9 -Wno-unused-result -Wsign-c=
ompare -D DYNAMIC_ANNOTATIONS_ENABLED=3D1 -D NDEBUG -O2 -g -pipe -Wall -Wer=
ror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 -Wp,-D_GLIBCXX_ASSERTIONS -=
fexceptions -fstack-protector-strong -grecord-command-line -m64 -mtune=3Dge=
neric -fasynchronous-unwind-tables -fcf-protection=3Dfull -D _GNU_SOURCE -f=
PIC -fwrapv -Wbad-function-cast -Wdeclaration-after-statement -Wformat-secu=
rity -Wformat-y2k -Winit-self -Wmissing-declarations -Wmissing-prototypes -=
Wnested-externs -Wno-system-headers -Wold-style-definition -Wpacked -Wredun=
dant-decls -Wstrict-prototypes -Wswitch-default -Wswitch-enum -Wundef -Wwri=
te-strings -Wformat -Wshadow -D HAVE_ARCH_X86_64_SUPPORT -I /tmp/build/perf=
/arch/x86/include/generated -D HAVE_SYSCALL_TABLE_SUPPORT -D HAVE_PERF_REGS=
_SUPPORT -D HAVE_ARCH_REGS_QUERY_REGISTER_OFFSET -Werror -O3 -fno-omit-fram=
e-pointer -ggdb3 -funwind-tables -Wall -Wextra -std=3Dgnu99 -fstack-protect=
or-all -D _FORTIFY_SOURCE=3D2 -D _LARGEFILE64_SOURCE -D _FILE_OFFSET_BITS=
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

Sorry for not speaking up sooner, but if you don't want to include
that mass of command line options above, I generally check which
toolchain has been used to produce a binary via:
$ readelf --string-dump=3D.comment <foo>
which may be more concise, but sometimes we strip out the `.comment`
section from binaries.

>   $
>
> And here is how tools/perf/util/setup.py checks if the used clang has
> options that the distro specific python extension building compiler
> defaults:
>
>   if cc_is_clang:
>       from distutils.sysconfig import get_config_vars
>       vars =3D get_config_vars()
>       for var in ('CFLAGS', 'OPT'):
>           vars[var] =3D sub("-specs=3D[^ ]+", "", vars[var])
>           if not clang_has_option("-mcet"):
>               vars[var] =3D sub("-mcet", "", vars[var])
>           if not clang_has_option("-fcf-protection"):
>               vars[var] =3D sub("-fcf-protection", "", vars[var])
>           if not clang_has_option("-fstack-clash-protection"):
>               vars[var] =3D sub("-fstack-clash-protection", "", vars[var]=
)
>           if not clang_has_option("-fstack-protector-strong"):
>               vars[var] =3D sub("-fstack-protector-strong", "", vars[var]=
)
>
> So "-fcf-protection=3Dfull" is used, clang-9 has this option and thus it
> was kept, the perf python extension was built with it and the build
> completed successfully.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/903
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Igor Lubashev <ilubashe@akamai.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: clang-built-linux@googlegroups.com
> Link: http://lore.kernel.org/lkml/20200309085618.14307-1-ilie.halip@gmail=
.com
> Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> ---
>  tools/perf/util/setup.py | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
> index aa344a163eaf..8a065a6f9713 100644
> --- a/tools/perf/util/setup.py
> +++ b/tools/perf/util/setup.py
> @@ -2,11 +2,13 @@ from os import getenv
>  from subprocess import Popen, PIPE
>  from re import sub
>
> +cc =3D getenv("CC")
> +cc_is_clang =3D b"clang version" in Popen([cc, "-v"], stderr=3DPIPE).std=
err.readline()
> +
>  def clang_has_option(option):
> -    return [o for o in Popen(['clang', option], stderr=3DPIPE).stderr.re=
adlines() if b"unknown argument" in o] =3D=3D [ ]
> +    return [o for o in Popen([cc, option], stderr=3DPIPE).stderr.readlin=
es() if b"unknown argument" in o] =3D=3D [ ]
>
> -cc =3D getenv("CC")
> -if cc =3D=3D "clang":
> +if cc_is_clang:
>      from distutils.sysconfig import get_config_vars
>      vars =3D get_config_vars()
>      for var in ('CFLAGS', 'OPT'):
> @@ -40,7 +42,7 @@ class install_lib(_install_lib):
>  cflags =3D getenv('CFLAGS', '').split()
>  # switch off several checks (need to be at the end of cflags list)
>  cflags +=3D ['-fno-strict-aliasing', '-Wno-write-strings', '-Wno-unused-=
parameter', '-Wno-redundant-decls' ]
> -if cc !=3D "clang":
> +if not cc_is_clang:
>      cflags +=3D ['-Wno-cast-function-type' ]
>
>  src_perf  =3D getenv('srctree') + '/tools/perf'
> --
> 2.21.1
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20200309185323.22583-4-acme%40kernel.org.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdm5RrdpOCMgRezLeHJ9GuocVoKqSUQGHjaCEcZdSr4AwA%40mai=
l.gmail.com.
