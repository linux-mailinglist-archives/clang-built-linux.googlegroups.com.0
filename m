Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCHP5OBQMGQEA5PEPOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C613630C1
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 16:58:18 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id p4-20020a1709027804b02900e7137bf43csf4006215pll.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 07:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618671497; cv=pass;
        d=google.com; s=arc-20160816;
        b=sPq5aBEb+eGX2MIIfuWD+PosUKsIZ3K3jofqvCCtttpkr5k68Dlzl4tam6s0Fs5syO
         DrNz5q/YzqgibTChWEEXUUAbaA35fDcXle9s5zVNAR2Wz+/ZK+az4XFwFMwmiz+3llvO
         /qlskBA8hLUPjmq/aFNDG0NibZo/s3HZTZSQihHj2Wu6PI3vzG08k1xCvyT3N4dNA1XV
         jy8CZNpIWqdrEEHxk1RZximjS/VWkWT9syx0WpOv8iUdb1FacgAv+37JTMNPMZUmRPhy
         GRiPFfU5SkuqZO4ovlon+Eo1vnroqAGhMslxTR8iKw1PUVuUMuV2voLeO1jWKyXQtXbd
         pD5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=W01EKb/0j+VOADP48FlfZK1LKU6rFV/zgYadcbkkkgE=;
        b=NEARdBWEBcOqKcRBjVxlrKyEHN7GqipA2e2H1AlgvwhN3YeIx4WT4jXrIBonkKHM6v
         4xlfxUrokWGaOgtUOLdzd+RHQVo+rZFJv32JM5J+Uz7yj6ZYBmKANnKEgSf0fgKBownl
         zyyNqT+MNc+y8NbY292FkAk1jG1yhG1pGrIkgnJIGdIc1wYsQLMGarYOjQzb/EHa9NDM
         tcalKAvjj0f3bh1ALR6Y8/dnloJRbYk/oLOlKX7L4IkP0DDX2YHOBDrmbLBIJG3BHgJe
         EK59jZdKfHEMXxdl9tI1u8nxM0q38gLSnfYplBPCRZ5XwkF85vTUtBMN/YPqjm5hnd+b
         xgCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tsRfa+eE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W01EKb/0j+VOADP48FlfZK1LKU6rFV/zgYadcbkkkgE=;
        b=LVHgqiyqdW7D4QJmLXwT7TcfgtSCJT00VqLaNy+EGwW7ZFMFkXAxu5GOefS22qHAg9
         0Owmv8TGI04feI60xC1ZkL0FCL0bnCe/wqFxdhdMIeIUJ8pr+jSqnbcq0yOXSZ8SMVhD
         C3zVCBvWtJi/blaxMtZo+ROrhx3evEUrpXcGwAGs+ZtRoEuuLTABJAdVh1oZFE2zt6wf
         AaQBkx2R2ZCMMiD8XC/n2ZJdHIMNHz3Xr3bXUFaM5k6MUNJx6L0b3hG/TUwvExvpd2mY
         TyTH+/QIzmStV8uQS80NurOgk3+d8HmrlitJ2iJyqplzX37S0qfxmqyyEha8gqBoJoqb
         bycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W01EKb/0j+VOADP48FlfZK1LKU6rFV/zgYadcbkkkgE=;
        b=c7uvKpyf7OH69jUfFJfHbRC9Ot8+ayALaTLdvpdwdy6QCwRYGMKKq2NGI+CjWXtsvL
         KddRpFgiIS55DAyjCZSD/FDu0O+uuP8CWEvVeXmBcYTxM5VSBBeNFmVEj/z0RoG4IUM2
         RjaCRnMjnvDlcZtegdBJdslAdox2Q9RP6sG4c8/2d5AZQU0ey01UgHh/vDBHuTW7yUlD
         CaZbqLea43sl0vAPxwBgI85I/lzSgNFX0+jIV+1xwOF1302PqW1V+VfN+13wc83QN9qc
         HqqOGKlvqQe1yr9kAdIIus9LNwulmLyomiuo4CO+tc2Rx1zL0Kk/8DoEkrTqXHGbcFNf
         bk2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532egT47aJSbOcSIYLSgJNE+5SqfX9lcf/L0zIQRwIH87JdKANX1
	SJB2p0L9UObVyUuaM4o0olc=
X-Google-Smtp-Source: ABdhPJyHgDQ9ngR6UqyTPFAd52nTg48jqtJylnEJyDNhwVWmK8JqXEL51zl3CkNKcDQqwLyskptP5A==
X-Received: by 2002:a17:90a:5d0a:: with SMTP id s10mr12609773pji.0.1618671496869;
        Sat, 17 Apr 2021 07:58:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1492:: with SMTP id v18ls4735974pfu.0.gmail; Sat,
 17 Apr 2021 07:58:16 -0700 (PDT)
X-Received: by 2002:a63:151e:: with SMTP id v30mr3691555pgl.366.1618671496309;
        Sat, 17 Apr 2021 07:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618671496; cv=none;
        d=google.com; s=arc-20160816;
        b=Ort5R0cpwcg5QW34PATwg6rM23+x5Ckm8ZL4lXsarDMAJkmDLMmwVfCJTbT1klwwpK
         6cOm1oSshCJtBTcli8w0RQA3xVe+HseN6ccxXDNmhjd8cPDVgRIzh6/XWrjfTcVhdtlY
         7JvL8tWggpP6LqqT2E2gYvQ3ToElEaRkjRLmtlCEuWYUZBKgwgwov34hb1806OQNHSOY
         RC8ZfN/R/KJ+thEamRimtoybWYp+Tu8Y/jcupHbGSP7mQF/Gt1/r+iwUZdgJYsye0BWP
         iz0qromsDB3OmDcgSkKmYHkVAdF2Cf7OcxJCDpEuBD+wgQ96tnevjJrVK4CcofHR+Plu
         XlrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rq83/8SBq3PTT68e2iZ8nPK/k8i2Myf6G/JabZ9UCXk=;
        b=NsDJ+Fu4GuMcUM/xcchVcm8Asb8Em8iG3p9cWS7laiD7kUENNT2M/7S95e+vbAQij/
         mSaUGh6eAeP7ryBzQz9cPodoqDzQIGxdLomx0BWj43/mn3lsYpEiHOhpq1oHUCrEApaL
         iQupj5aRdRKWPm7N9qMh/Hbowdex0NX0tXz3kwbECX4fnsIOY3lpTBoUEDbCqLRDPVvS
         H0wa44C9U1Ivc6RrJyuRvkLnJtjWH8dsaSWOemW2dxN1IGG6D7gKV8XmABSyRk+qFQ7L
         Ii3guzPlc8zVx3j36AZLpiKY2RCsjf5kM4mpSxn1Qiv9zbHuMwkHQFG/1CdMCIewNUn7
         +zbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tsRfa+eE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id fy20si579736pjb.2.2021.04.17.07.58.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 07:58:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 13HEw2lO019611
	for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 23:58:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 13HEw2lO019611
X-Nifty-SrcIP: [209.85.216.42]
Received: by mail-pj1-f42.google.com with SMTP id m6-20020a17090a8586b02901507e1acf0fso651707pjn.3
        for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 07:58:02 -0700 (PDT)
X-Received: by 2002:a17:90a:1056:: with SMTP id y22mr14523757pjd.153.1618671481674;
 Sat, 17 Apr 2021 07:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210416130051.239782-1-masahiroy@kernel.org>
In-Reply-To: <20210416130051.239782-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 17 Apr 2021 23:57:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS90BwrVZzpoavVE8AE0D01Ei7BuQg1E5eObQR+o74fow@mail.gmail.com>
Message-ID: <CAK7LNAS90BwrVZzpoavVE8AE0D01Ei7BuQg1E5eObQR+o74fow@mail.gmail.com>
Subject: Re: [PATCH v2] tools: do not include scripts/Kbuild.include
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Shuah Khan <shuah@kernel.org>, Song Liu <songliubraving@fb.com>,
        Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        kvm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Networking <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tsRfa+eE;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 10:01 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> scripts/Makefile.compiler"), some kselftests fail to build.
>
> The tools/ directory opted out Kbuild, and went in a different
> direction. They copy any kind of files to the tools/ directory
> in order to do whatever they want in their world.
>
> tools/build/Build.include mimics scripts/Kbuild.include, but some
> tool Makefiles included the Kbuild one to import a feature that is
> missing in tools/build/Build.include:
>
>  - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
>    only if supported") included scripts/Kbuild.include from
>    tools/thermal/tmon/Makefile to import the cc-option macro.
>
>  - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
>    not support -no-pie") included scripts/Kbuild.include from
>    tools/testing/selftests/kvm/Makefile to import the try-run macro.
>
>  - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
>    failures") included scripts/Kbuild.include from
>    tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
>    target.
>
>  - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
>    unrecognized option") included scripts/Kbuild.include from
>    tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
>    try-run macro.
>
> Copy what they need into tools/build/Build.include, and make them
> include it instead of scripts/Kbuild.include.
>
> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> Reported-by: Janosch Frank <frankja@linux.ibm.com>
> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>


Applied to linux-kbuild.




> ---
>
> Changes in v2:
>   - copy macros to tools/build/BUild.include
>
>  tools/build/Build.include                     | 24 +++++++++++++++++++
>  tools/testing/selftests/bpf/Makefile          |  2 +-
>  tools/testing/selftests/kvm/Makefile          |  2 +-
>  .../selftests/powerpc/pmu/ebb/Makefile        |  2 +-
>  tools/thermal/tmon/Makefile                   |  2 +-
>  5 files changed, 28 insertions(+), 4 deletions(-)
>
> diff --git a/tools/build/Build.include b/tools/build/Build.include
> index 585486e40995..2cf3b1bde86e 100644
> --- a/tools/build/Build.include
> +++ b/tools/build/Build.include
> @@ -100,3 +100,27 @@ cxx_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@ $(CXXFLAGS) -D"BUILD_STR(s)=\#s" $(CXX
>  ## HOSTCC C flags
>
>  host_c_flags = -Wp,-MD,$(depfile) -Wp,-MT,$@ $(KBUILD_HOSTCFLAGS) -D"BUILD_STR(s)=\#s" $(HOSTCFLAGS_$(basetarget).o) $(HOSTCFLAGS_$(obj))
> +
> +# output directory for tests below
> +TMPOUT = .tmp_$$$$
> +
> +# try-run
> +# Usage: option = $(call try-run, $(CC)...-o "$$TMP",option-ok,otherwise)
> +# Exit code chooses option. "$$TMP" serves as a temporary file and is
> +# automatically cleaned up.
> +try-run = $(shell set -e;              \
> +       TMP=$(TMPOUT)/tmp;              \
> +       mkdir -p $(TMPOUT);             \
> +       trap "rm -rf $(TMPOUT)" EXIT;   \
> +       if ($(1)) >/dev/null 2>&1;      \
> +       then echo "$(2)";               \
> +       else echo "$(3)";               \
> +       fi)
> +
> +# cc-option
> +# Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
> +cc-option = $(call try-run, \
> +       $(CC) -Werror $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
> +
> +# delete partially updated (i.e. corrupted) files on error
> +.DELETE_ON_ERROR:
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
> index 044bfdcf5b74..17a5cdf48d37 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> -include ../../../../scripts/Kbuild.include
> +include ../../../build/Build.include
>  include ../../../scripts/Makefile.arch
>  include ../../../scripts/Makefile.include
>
> diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
> index a6d61f451f88..5ef141f265bd 100644
> --- a/tools/testing/selftests/kvm/Makefile
> +++ b/tools/testing/selftests/kvm/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -include ../../../../scripts/Kbuild.include
> +include ../../../build/Build.include
>
>  all:
>
> diff --git a/tools/testing/selftests/powerpc/pmu/ebb/Makefile b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> index af3df79d8163..c5ecb4634094 100644
> --- a/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> +++ b/tools/testing/selftests/powerpc/pmu/ebb/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> -include ../../../../../../scripts/Kbuild.include
> +include ../../../../../build/Build.include
>
>  noarg:
>         $(MAKE) -C ../../
> diff --git a/tools/thermal/tmon/Makefile b/tools/thermal/tmon/Makefile
> index 59e417ec3e13..9db867df7679 100644
> --- a/tools/thermal/tmon/Makefile
> +++ b/tools/thermal/tmon/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # We need this for the "cc-option" macro.
> -include ../../../scripts/Kbuild.include
> +include ../../build/Build.include
>
>  VERSION = 1.0
>
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416130051.239782-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS90BwrVZzpoavVE8AE0D01Ei7BuQg1E5eObQR%2Bo74fow%40mail.gmail.com.
