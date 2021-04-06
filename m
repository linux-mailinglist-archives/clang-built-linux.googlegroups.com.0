Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWOVWKBQMGQECCS437I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDDB355B88
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 20:39:21 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id v27sf5839184ejq.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 11:39:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617734361; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tw9C51OVpuMiN8nwYmc8DaEvfFtV14Fd8/Nei3ddV2c/9Y6TICtlMY1WpPe9eIa02v
         6WRNhkYpIGKhzu5sKIuZXYXpiuw9YF2mXvE6tA1BqwS6qZvjfswUcZvzppU8tAEZnudv
         vlvTh7OGnRrR16Z/aZfbdpYrmEDJVoNPd8Ucg3b9ePaNIc9omTlxOS7TEskLuGY8kIli
         0AVbl+M5lRHSaRlwv5KktnvyoqlZKGqviBz9IdZElWQvv6wgbWt2GlD0O2c9ge8JaFyx
         4voHf4ji9Nc0ryqXqXMjTmdYOnB7TBhJq0tvMvDuJ1gZJ75TuIpNR7Xj5TUIGnu+BifR
         9a4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cYbpHYlsfzXzlaW6bJTZg9FTw9KyzLOPThPs2twVr24=;
        b=hHGEaV8a2pdBEqOF9zGPRqYzsZWXlX3trnc033cbx0QYeVFk/qvT12rIhTnvAq0P/s
         j4h6cEWAP/5pXNGbXCcK20uHWR4VYIH/Nzlch0bDG8G4xEpy5JqnCC/VBTSgGU6AtNIS
         Tz3cnC/jBMRcV3t7cG+R2upi1+/Sqq3fKyf1vtu5zCciqs7mGAOg0YcBIgFgAgn/HzpU
         /S4sxqXXvEgfKCviTbe+buR5GzzDKiw98dFiXGq0Dpcj7gLTgo0S7Go9H3P2TdtXJD6J
         dti/eQ6RbPdyPFP7V21ZZRVgVmZC2OSt7Jc2mCx2aLxP4Ed63zPmm0U7ZdQIvViCVbiV
         3XGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Pejc/BsA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYbpHYlsfzXzlaW6bJTZg9FTw9KyzLOPThPs2twVr24=;
        b=TM9N3Boa4sBjRC5gTSr1OC0VrXtniG1T63Mt2EO++ATdEJDXcvquTUB98sxgwjC6ej
         hAYEQIGlrsrquihXiVJ1ZOalzdTtLTu2cxRoI5Q7ur/ghAo3nLRBmAJ4/vY7wphW+FMS
         XsAkvKXW2Imof1A4VTUwPmFLnSiYTAU2CflQ+yOfvgy8B0WD8Fe0Be0u1LTUWldFofbf
         03P6RUNbELo3eDB/J5d/lYntHkvEnfvsxcAyX4FS+BfPEoTfoMacnvNiTlhvbqXyrAiC
         Xh3tVzkCfaKwukk88LZjBV1Qw4FMSPGcao18FEaIfDASOAdjUDaNZY9OXzu/3WBJ5ZyG
         j3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cYbpHYlsfzXzlaW6bJTZg9FTw9KyzLOPThPs2twVr24=;
        b=ilDaQ5yvV2RZmEUJLgFHeJOdit/mBO8N434tx/+Sja5JG1rgb5tl1Du/W/ipsXP2hW
         y3h+3C43yU+AZ+LGsf93aTvUirJUzpgqhz99bt2hecwLZeMAizggepZA/nZjM+/Jvxsz
         lmztGNN+pT4nLmpSaNjpcCbLLHsbz1qs7NhYWKVzAinRWZv+AK+c6+3xGzEgLpGhloPx
         2HixS1lKYMwWqeCg2ogByrLxeauyOin4HWZkrqTEvLNwTO5PU7heZyKfIoXRhAyloh4N
         PiDgNnsPlJFP31EGcNJbfEAccU4tbXzI7GjE2wLsT+F3Nff+HEgGjlvQHBqKbrYaq99f
         rcxA==
X-Gm-Message-State: AOAM533Il/0723hq1C1hBlgg6SAcb0Cmkk1RjcsYgZ34tTXMIszx/5hM
	K4KUT3//S2+A1Hignk8hBFw=
X-Google-Smtp-Source: ABdhPJwQU/rFOJUpxeaZZ3+1dQ0DCDgsFSdD6JmAXbxozkLwSG09y01NiRGPglm5cYPA3MTWPViLHA==
X-Received: by 2002:aa7:cc98:: with SMTP id p24mr39525974edt.187.1617734361721;
        Tue, 06 Apr 2021 11:39:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:dc43:: with SMTP id g3ls1524278edu.1.gmail; Tue, 06 Apr
 2021 11:39:20 -0700 (PDT)
X-Received: by 2002:aa7:c247:: with SMTP id y7mr20731271edo.305.1617734360872;
        Tue, 06 Apr 2021 11:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617734360; cv=none;
        d=google.com; s=arc-20160816;
        b=aKpyNL56No4pule2+hlO0gyr0y6/AlZ65LI/eHdX1l9bvKskziFRx21YGsJ4SEHBIK
         0I+mEvei9g6YP0GroazukYVtV7o4ah8hls5d1sxg/Qw1uds127jIb7Maw18JdD/+VXS6
         zVYMyEDgXf4PFIzRMW4w0GJRpeGnVDMVlXPZHw8xW+yfMdiNWNwE19ScvtmKGpYeWsnP
         UsmisTl1Caccc9/yHxBqCsmOBsje5MKgHNl8/xAf657IynQBO2Jdndnan+dXUS5R4WDx
         bMWzr/dXo/FpRZp9aLGr3+IAZjfvgl/6aoGHFD+sXj3MNztXgqBJVoZ09z8h8IipXZ6C
         iZ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HQMr+myNry7kMYJRVZWeSVgVa7oM6pbfeSZSl/6u29k=;
        b=rm/opv/aKGEez2WizpGWBAH3/pXx0RAB7Pd1sLhMPiq7lxvZRT0MCqy+GDzPBi2VK0
         Qf249zaMLoRUMjzZrZa47GDOh1KBXm//VMJzL5WEfOre6P6YNLAymkwu2eQzBVJrdgS1
         1wv55yxC1f3/VRR3AETCwwPRb2ZbTVzOt8TPzWbyxVbALdE1E6cQFY88BYqE2oFuStSO
         Z0CxlGUEJIu0YShtTcwjyxgfqHq8xAxFbfjqP+uL/YchLhYr6IyEqwf+Tolsq4eL4XL5
         Ba39yNDQoGPzA0GAZIe79EFgwic9ljt5cDQX1befH7k8JFCZQI3zkX8HiHOleoiQxFUe
         Wonw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Pejc/BsA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id dj3si1970842edb.0.2021.04.06.11.39.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 11:39:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id o10so24327761lfb.9
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 11:39:20 -0700 (PDT)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr22129544lfd.547.1617734360307;
 Tue, 06 Apr 2021 11:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210403184158.2834387-1-yhs@fb.com> <CA+icZUVxpkCJVnibqm3+OYdfdh5U=eU_u7pPKUZMoPm3XzZWPQ@mail.gmail.com>
In-Reply-To: <CA+icZUVxpkCJVnibqm3+OYdfdh5U=eU_u7pPKUZMoPm3XzZWPQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Apr 2021 11:39:09 -0700
Message-ID: <CAKwvOdn+ScOD=LyU+4CxL6AOpfjXuzzQD-=TuM9ER-Q8Wposuw@mail.gmail.com>
Subject: Re: Usage of CXX in tools directory
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Yonghong Song <yhs@fb.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, David Blaikie <dblaikie@gmail.com>, 
	Bill Wendling <morbo@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, 
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, dwarves@vger.kernel.org, 
	bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Pejc/BsA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Sun, Apr 4, 2021 at 8:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> [ Please CC me I am not subscribed to all mailing-lists ]
> [ Please CC some more folks if you like ]
>
> Hi,
>
> when dealing/experimenting with BPF together with pahole/dwarves and
> dwarf-v5 and clang-lto I fell over that there is usage of CXX in tools
> directory.
> Especially,  I wanted to build and run test_progs from BPF selftests.
> One BPF selftest called "test_cpp" used GNU/g++ (and even /usr/bin/ld)
> and NOT LLVM/clang++.
>
> For details see the linux-bpf/dwarves thread "[PATCH dwarves]
> dwarf_loader: handle DWARF5 DW_OP_addrx properly" in [1].
>
> Lemme check:
>
> $ git grep CXX tools/
> tools/build/Build.include:cxx_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@
> $(CXXFLAGS) -D"BUILD_STR(s)=\#s" $(CXXFLAGS_$(basetarget).o)
> $(CXXFLAGS_$(obj))
> tools/build/Makefile.build:quiet_cmd_cxx_o_c = CXX      $@
> tools/build/Makefile.build:      cmd_cxx_o_c = $(CXX) $(cxx_flags) -c -o $@ $<
> tools/build/Makefile.feature:  feature-$(1) := $(shell $(MAKE)
> OUTPUT=$(OUTPUT_FEATURES) CC="$(CC)" CXX="$(CXX)"
> CFLAGS="$(EXTRA_CFLAGS) $(FEATURE_CHECK_CFLAGS-$(1))"
> CXXFLAGS="$(EXTRA_CXXFLAGS) $(FEATURE_CHECK_CXXFLAGS-$(1))"
> LDFLAGS="$(LDFLAGS) $(FEATURE_CHECK_LDFLAGS-$(1))" -C $(feature_dir)
> $(OUTPUT_FEATURES)test-$1.bin >/dev/nu
> ll 2>/dev/null && echo 1 || echo 0)
> tools/build/feature/Makefile:__BUILDXX = $(CXX) $(CXXFLAGS) -MD -Wall
> -Werror -o $@ $(patsubst %.bin,%.cpp,$(@F)) $(LDFLAGS)
> ...
> tools/perf/Makefile.config:USE_CXX = 0
> tools/perf/Makefile.config:        CXXFLAGS +=
> -DHAVE_LIBCLANGLLVM_SUPPORT -I$(shell $(LLVM_CONFIG) --includedir)
> tools/perf/Makefile.config:        $(call detected,CONFIG_CXX)
> tools/perf/Makefile.config:     USE_CXX = 1
> tools/perf/Makefile.perf:export srctree OUTPUT RM CC CXX LD AR CFLAGS
> CXXFLAGS V BISON FLEX AWK
> tools/perf/Makefile.perf:ifeq ($(USE_CXX), 1)
> tools/perf/util/Build:perf-$(CONFIG_CXX) += c++/
> ...
> tools/scripts/Makefile.include:$(call allow-override,CXX,$(CROSS_COMPILE)g++)
> ...
> tools/testing/selftests/bpf/Makefile:CXX ?= $(CROSS_COMPILE)g++
> tools/testing/selftests/bpf/Makefile:   $(call msg,CXX,,$@)
> tools/testing/selftests/bpf/Makefile:   $(Q)$(CXX) $(CFLAGS) $^ $(LDLIBS) -o $@
>
> The problem is if you pass LLVM=1 there is no clang(++) assigned to
> CXX automagically.
>
> [2] says:
>
> LLVM has substitutes for GNU binutils utilities. Kbuild supports
> LLVM=1 to enable them.
>
> make LLVM=1
> They can be enabled individually. The full list of the parameters:
>
> make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
>   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
>   HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
>
> [ EndOfQuote  ]
>
> So you need to pass CXX=clang++ manually when playing in tools directory:

Yes, CXX is not set by LLVM=1 in the top level Makefile.  CXX is not
exported by the top level Makefile.  I suspect that
tools/scripts/Mafefile.include (and possible
testing/selftests/bpf/Makefile) needs to check for LLVM=1 and set
CXX=clang++ explicitly.

>
> MAKE="make V=1
> MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> CXX=clang++ LD=ld.lld LLVM=1 LLVM_IAS=1"
> MAKE_OPTS="MAKE_OPTS $PAHOLE=/opt/pahole/bin/pahole"
>
> $ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/ clean
> $ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/
>
> Unsure, if tools needs a special treatment in things of CXX or LLVM=1
> needs to be enhanced with CCX=clang++.
> If we have HOSTCXX why not have a CXX in toplevel Makefile?
>
> In "tools: Factor Clang, LLC and LLVM utils definitions" (see [3]) I
> did some factor-ing.
>
> For the records: Here Linus Git is my base.
>
> Ideas?
>
> Thanks.
>
> Regards,
> - Sedat -
>
> P.S.: Just a small note: I know there is less usage of CXX code in the
> linux-kernel.
>
> [1] https://lore.kernel.org/bpf/CA+icZUWh6YOkCKG72SndqUbQNwG+iottO4=cPyRRVjaHD2=0qw@mail.gmail.com/T/#m22907f838d2d27be24e8959a53473a62f21cecea
> [2] https://www.kernel.org/doc/html/latest/kbuild/llvm.html#llvm-utilities
> [3] https://git.kernel.org/linus/211a741cd3e124bffdc13ee82e7e65f204e53f60



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BScOD%3DLyU%2B4CxL6AOpfjXuzzQD-%3DTuM9ER-Q8Wposuw%40mail.gmail.com.
