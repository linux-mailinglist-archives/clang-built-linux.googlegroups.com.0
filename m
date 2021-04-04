Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6NIU6BQMGQE2I6H52Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5809B35388B
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Apr 2021 17:00:11 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id j12sf4581844pjm.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 08:00:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617548410; cv=pass;
        d=google.com; s=arc-20160816;
        b=uaxz/RfJx2MLu3JTwcvBc1ApQe8X74JRrdom6WUI+L4xh4uYFOL4MRN8AUhXrtvtqT
         aVWQS5AOUxHv5YMqFsVW6Gg+2aSEYQ8TarZmpGl7Yji0HKTsIr/XTjUoZAexZGHPMZu3
         S7HruoduntESJodJeqkZrlGNUfqRftyEo66dJvktovzX3hlouFbAveIHb0MDzZoRXOod
         qtxn5Py/UIpS87qsWuJi6bAia/2Ez1HHPT193Jh9F5p6qMX6c6Gv3tenvTN4C7NLbGbS
         5dA3fKJmJCoi+DPMwW3CvXASOlZUYCca+OBXNm1PhTdNvzGM6N0RUeU5iSqyFDGQPBu4
         RFfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1y20FkoXn5/dwL5zWw6CBMmNeSfpzYIaDthUiA4V1jA=;
        b=x6E5P5ALQypeMDdcJdaGF2OYYjLUaJpaNy3B0bQZjxNdtNH2aeQNMzsvB6NDdIoUsw
         4i8eU9kdY8/eAGqFyk+AxSIHyQ0RI0lKuQQDr6gti5Wy8/QG7fGJXyprMJY4oT6RhehX
         nI9xNGbi4AtK5nBRqwfmI18MhUJ9pENeaT9p1XtG/A9n52uwdxNrLmOXLLrs8rdJAyta
         9LE57T76/F/FRJ8OeuMwKCgmKg2OdoqRb8n0F2ZX7YCywgZe9St5cSHiZncv155c8zIv
         YfNRFmO8R5g1kfZdbNABXYeZDSv33+TDnZuwFEH8BVIkU+XajMrTE8BCGpuGRBqiMYCD
         bODA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onvXjgrB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1y20FkoXn5/dwL5zWw6CBMmNeSfpzYIaDthUiA4V1jA=;
        b=SCcK2b3A5YwLR2GkQ5/ey1/vBcOhXd6sfCrRsnKoQh1SkEdaGDx/WzhsDQsz1MEttA
         3fufJsU2G7G/UwBPPhtxY4VsaBO7u5TXj4CUirg4AwkjlhTLkHncSIBtlfvAvE9ZVpVL
         qUatsw/7lSntWy784y3ypdtL2hpKyXLGW8ptrucrYW7dS2to39mA28NS43FWerTu+6C+
         +n9RMWNUNEQu54WemRe6bohJgppitdLAYaNdvAJoaxD83VzEyOSpHHClVuG7pDL9OhME
         S8IVG0c8OVG9gABOObbQcmEuDeDQw3lvJmjSJjo3y+vaYA7OI1eu4BMCc088GJRbM3th
         fZkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1y20FkoXn5/dwL5zWw6CBMmNeSfpzYIaDthUiA4V1jA=;
        b=qHKCCioXUrSzSnsTODVBK2Cj7MHgMCpKAD+t0v+JVBbizlBAb/A0OImC98/asFZXTe
         1JtCZ92ELsrh4QsSwaA7qX3+JKKTDZy7VdLqhG+NhbarmBi512aY/9ASu2hiLg7QmryE
         NRfg2/yiZaTSrAHZVkYMZwhzWBHbH7dZWy9Pc4BXp991vSk5I0UvOGeASfNFDddOar+r
         kUn6pZTvHe8EiUfyJ3/0KFHTt3NIh7/ecgCeqZgZnsJz1lIrL8A3iH4hz2ok1H/A0q3x
         5057fm2Y4PHYlGaKh+zBXRSjF/Swb4rQUus1310p2Dbmo+q83kAvq38lV8qXOhpY8Qu0
         KNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1y20FkoXn5/dwL5zWw6CBMmNeSfpzYIaDthUiA4V1jA=;
        b=dryGOVwRS22PUxwCpcOeXw7UToB/NBlGfnH9tvhNMDZXc1yC8NxfuBWP+ddWNTJvsl
         WgMSj4RODO3cK0V+ldQggWPUpCQt6X/3ytaz2SnIVNHnBN3z1Ny98QgJshiPLrN0ImDM
         SZJDd1cuhLZSDc+R6v9b+koFeceSlcXUHO+YaXbm2LpZOpcq9Q059ZuaLlWQJ2CdN0l0
         lTCU5m/of5r51AsbeagpXQufR3Z16pGwmSc0JKQbsrAO9lpb/3BBLQ5PRgHH85QVBOa5
         5echnEiYlNwRWK+xrwumIwmwKrwcjKOrMB0wLJh3rdtbSt2b5dS8hO9453AxwAkA7f3/
         vxYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UfgQ8fBzjQQtUgTKJ2ifx7qGQdT5oTqqxzJtWwvFsAqZSuZTt
	mIGrSbtpFHLACTiVbsuj0Pk=
X-Google-Smtp-Source: ABdhPJx0FF4nuQwh/4jc0457+keRh1tHj4/qeoYoUu2gH5s5YUZQmGw3auc7MlNBV+UayGCA4LsIDA==
X-Received: by 2002:a17:902:9897:b029:e6:f01d:9ca1 with SMTP id s23-20020a1709029897b02900e6f01d9ca1mr20305302plp.40.1617548409715;
        Sun, 04 Apr 2021 08:00:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls6447289plq.3.gmail; Sun, 04
 Apr 2021 08:00:08 -0700 (PDT)
X-Received: by 2002:a17:90a:a613:: with SMTP id c19mr22898310pjq.141.1617548408867;
        Sun, 04 Apr 2021 08:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617548408; cv=none;
        d=google.com; s=arc-20160816;
        b=Pzw2l2TwohM2Gs8t6a0OhKdVBe5nuyheJLd9/kMtpSAB1ns4muaOKVInJkIwKUn4Km
         FRSI/cp/uVuAOvZhtwZpAbCXYhdyzT4MAd2g/RYwBgMx7gqrcmhtvanXirIRFq4YZKup
         ku5TdNW3RMHXDuYlnwODFigfq/poGJGSz7xCuM/MhDDH3PbzlX7ecVlY089pPYoRMm1x
         BTx6MmPF2AGO8TjsMRsoSBp0/swB6ORN1FlF3HGMS4eviQOo8Z5sKVHB8DTPlE8SD2KJ
         BpJOuMNQK6Iuq6GLXNM0EzirEbw67EUrrwVwM/AUak/b0MlIshCxcpTWnyjmap8L3qdx
         02mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9FrXMbErno7+UYPolFaJfl1BWKDlG9+WhG9WCIdSW3Y=;
        b=WkN0FYTEYtj/76myg2CFhCyfKibZRakFCw3Y0X/GlWwE2VmuyAqqclmSXQ0bsRlVPD
         /8FUXqRdGeSMEnBzXg5MwjJo9ydhtQt8HJ1S+LlhhgoalN7L84T9iskQZO7LUfP2fLG8
         rtY6hF/nsuDhohv6usAegEfRhv+yeeOEgNbPZWp0A9AatOrgKHYhePMYVVvV3rWxRiOm
         r6JHcmm3gdcF6gpphLL+XuPR92q3okgGSApP3HXwRb8EXuF08HbxdTd3crc/bqnzJjI2
         JGUsIYdP5lJGNeD+5XUe8acOKVX8HXzpNWrj3LAHfUq3JpEGUdtpKX0allU7/72xRWDv
         8zkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=onvXjgrB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id nv12si777312pjb.3.2021.04.04.08.00.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 08:00:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id w2so5405722ilj.12
        for <clang-built-linux@googlegroups.com>; Sun, 04 Apr 2021 08:00:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:12cc:: with SMTP id i12mr17423767ilm.10.1617548408261;
 Sun, 04 Apr 2021 08:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210403184158.2834387-1-yhs@fb.com>
In-Reply-To: <20210403184158.2834387-1-yhs@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 4 Apr 2021 16:59:33 +0200
Message-ID: <CA+icZUVxpkCJVnibqm3+OYdfdh5U=eU_u7pPKUZMoPm3XzZWPQ@mail.gmail.com>
Subject: Usage of CXX in tools directory
To: Masahiro Yamada <masahiroy@kernel.org>, Yonghong Song <yhs@fb.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, David Blaikie <dblaikie@gmail.com>, 
	Bill Wendling <morbo@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, 
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>
Cc: dwarves@vger.kernel.org, bpf@vger.kernel.org, kernel-team@fb.com, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, x86@kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=onvXjgrB;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

[ Please CC me I am not subscribed to all mailing-lists ]
[ Please CC some more folks if you like ]

Hi,

when dealing/experimenting with BPF together with pahole/dwarves and
dwarf-v5 and clang-lto I fell over that there is usage of CXX in tools
directory.
Especially,  I wanted to build and run test_progs from BPF selftests.
One BPF selftest called "test_cpp" used GNU/g++ (and even /usr/bin/ld)
and NOT LLVM/clang++.

For details see the linux-bpf/dwarves thread "[PATCH dwarves]
dwarf_loader: handle DWARF5 DW_OP_addrx properly" in [1].

Lemme check:

$ git grep CXX tools/
tools/build/Build.include:cxx_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@
$(CXXFLAGS) -D"BUILD_STR(s)=\#s" $(CXXFLAGS_$(basetarget).o)
$(CXXFLAGS_$(obj))
tools/build/Makefile.build:quiet_cmd_cxx_o_c = CXX      $@
tools/build/Makefile.build:      cmd_cxx_o_c = $(CXX) $(cxx_flags) -c -o $@ $<
tools/build/Makefile.feature:  feature-$(1) := $(shell $(MAKE)
OUTPUT=$(OUTPUT_FEATURES) CC="$(CC)" CXX="$(CXX)"
CFLAGS="$(EXTRA_CFLAGS) $(FEATURE_CHECK_CFLAGS-$(1))"
CXXFLAGS="$(EXTRA_CXXFLAGS) $(FEATURE_CHECK_CXXFLAGS-$(1))"
LDFLAGS="$(LDFLAGS) $(FEATURE_CHECK_LDFLAGS-$(1))" -C $(feature_dir)
$(OUTPUT_FEATURES)test-$1.bin >/dev/nu
ll 2>/dev/null && echo 1 || echo 0)
tools/build/feature/Makefile:__BUILDXX = $(CXX) $(CXXFLAGS) -MD -Wall
-Werror -o $@ $(patsubst %.bin,%.cpp,$(@F)) $(LDFLAGS)
...
tools/perf/Makefile.config:USE_CXX = 0
tools/perf/Makefile.config:        CXXFLAGS +=
-DHAVE_LIBCLANGLLVM_SUPPORT -I$(shell $(LLVM_CONFIG) --includedir)
tools/perf/Makefile.config:        $(call detected,CONFIG_CXX)
tools/perf/Makefile.config:     USE_CXX = 1
tools/perf/Makefile.perf:export srctree OUTPUT RM CC CXX LD AR CFLAGS
CXXFLAGS V BISON FLEX AWK
tools/perf/Makefile.perf:ifeq ($(USE_CXX), 1)
tools/perf/util/Build:perf-$(CONFIG_CXX) += c++/
...
tools/scripts/Makefile.include:$(call allow-override,CXX,$(CROSS_COMPILE)g++)
...
tools/testing/selftests/bpf/Makefile:CXX ?= $(CROSS_COMPILE)g++
tools/testing/selftests/bpf/Makefile:   $(call msg,CXX,,$@)
tools/testing/selftests/bpf/Makefile:   $(Q)$(CXX) $(CFLAGS) $^ $(LDLIBS) -o $@

The problem is if you pass LLVM=1 there is no clang(++) assigned to
CXX automagically.

[2] says:

LLVM has substitutes for GNU binutils utilities. Kbuild supports
LLVM=1 to enable them.

make LLVM=1
They can be enabled individually. The full list of the parameters:

make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld

[ EndOfQuote  ]

So you need to pass CXX=clang++ manually when playing in tools directory:

MAKE="make V=1
MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
CXX=clang++ LD=ld.lld LLVM=1 LLVM_IAS=1"
MAKE_OPTS="MAKE_OPTS $PAHOLE=/opt/pahole/bin/pahole"

$ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/ clean
$ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/

Unsure, if tools needs a special treatment in things of CXX or LLVM=1
needs to be enhanced with CCX=clang++.
If we have HOSTCXX why not have a CXX in toplevel Makefile?

In "tools: Factor Clang, LLC and LLVM utils definitions" (see [3]) I
did some factor-ing.

For the records: Here Linus Git is my base.

Ideas?

Thanks.

Regards,
- Sedat -

P.S.: Just a small note: I know there is less usage of CXX code in the
linux-kernel.

[1] https://lore.kernel.org/bpf/CA+icZUWh6YOkCKG72SndqUbQNwG+iottO4=cPyRRVjaHD2=0qw@mail.gmail.com/T/#m22907f838d2d27be24e8959a53473a62f21cecea
[2] https://www.kernel.org/doc/html/latest/kbuild/llvm.html#llvm-utilities
[3] https://git.kernel.org/linus/211a741cd3e124bffdc13ee82e7e65f204e53f60

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVxpkCJVnibqm3%2BOYdfdh5U%3DeU_u7pPKUZMoPm3XzZWPQ%40mail.gmail.com.
