Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5GG2KAAMGQE4R3SSWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AE33090D0
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:08:22 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id y81sf6846629pfb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:08:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611965300; cv=pass;
        d=google.com; s=arc-20160816;
        b=iW0jgKyeDN/PzXjzAzZstOMsDfvsHwfvPckC9DFH+PIr2OFVo6sICgDtO4IXhYe4OI
         cvgh8KnjGh8/j2P+nEOzVBWuJVcIsScLcDdDeZyf4GXNkQRGkkXmB5S8REBJrOLJvKjQ
         sqBdCi6DpM02rXzaUt6ieKzwaa9l8Hnc3p1wAtFdJCvUnoyK/1u1g+7n8YnMAn5AW74T
         xaZM+BDEidV3XvqpTctlKDYFDHrcqr7RBZH6ndawOQfvtms8WobbqSc5Q0AXT3i5iK+S
         2Z+AouK03i7Nz/K+3nCSkLHSGw8nrjzq7hzK0idNEJ7XXOXJJttsDURXyh+NiBp6qlbo
         bRHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aph2RAsLeThXLrNSLq0nrM4GrfMi49TpUTrdIyFhF8w=;
        b=IyD0LHEhsxoYAPcKaM+o/+0zPnMplbnXL52FECcqK88ASI8Pm1paExx1IwOnnK1e9O
         JvteB5uvczDTCnDyx/iFICI9cV1ZxJDcHT3BzoSJdylXt/dzn+CWfiqZxVkhVZdWh4bN
         APZw3IlaNRD2GdBHCosrL1q8SkJO5jgelY1fV2LBV3XjcLTUrP7Bpqjcs+2nPbKymVYB
         sYh+jX1e9wGX9zIdjHJPvxWXxkXLCPOUNKbizZmwwFtuT0oPbjblSqcVA+Y//TVKMlb5
         GAx6m+dEPxnhTfL3L0uhCzCRMh1B4AiiOCPKUuak+qAXJJsqzlab7p81vTNK6Jf4c/OP
         SbnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUVUO05O;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aph2RAsLeThXLrNSLq0nrM4GrfMi49TpUTrdIyFhF8w=;
        b=TzfMr6bnkDW1RulHatrVXT686Jm9ei87eVEdyee1deKzEd8j/94KQTqkzx/RPrI0An
         2xtLyk52bIdP60U33ZMAGdiuif8TGqHbQ98SQvqF3O4QbiOiPVN/zWhMj8oggFqLzTE2
         gVSFw6UfhIi2n9Skfl3u96nkVU7B53wFiXkrlu8UzxoNVIcWQwxH7RRgMfpLdk2VG4jO
         Ek1X7gGdPwXIarMQDtXG8fsy4dvJTg3AmBEGawYmk2kp/YRj5/NM+cOGz9j+4APTvsBV
         JMU5qQvbQbDMlIx4Lc02EaGLGmwN8qMIw9Me6M73JnPlKuwpL6SgzIdiLvy+dy+Bl5K4
         IDYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aph2RAsLeThXLrNSLq0nrM4GrfMi49TpUTrdIyFhF8w=;
        b=L0p+kWt4BfbKAN6HVzWfKDDJgbWGM4L9QYkTo6zb1U8EEI8k47XertttrQeWd06cv+
         vg246Hs6TNiGur5ZPgn+00epnkrFuaciuM1rBa9TcwCx1jQEd7JFCU3NFelHp+rR186u
         OVIaY2oCXdiEfiv7zGr6SWfFX/9v+B/AJBZ2C2e56mQOVlgj8rhFBru6tsaf9awkj4Ay
         /qswMSxGOc3G3hWxsvtSF3vsPqpdQV3Z9lezQFpHQ++H2dstW+BeO4xWXquapdWyAIn3
         kLekSDKhIbytp+M8YHUuR8+9EWajMd0rLGiqEM9nIAxxNDl6wu/Y4EwZ2PduzZ5s84JU
         9XCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aph2RAsLeThXLrNSLq0nrM4GrfMi49TpUTrdIyFhF8w=;
        b=N4sLhvyTVXXDrJZ4hapnvViRlQ6mMC75nXjlh6zFzyN+p+CsNkXc2JJxF4iDJr6DoO
         wyMZrTEHGjQvJkbfBwiSj9GGiXgWQfZErubYR78Z2iclEGVGuAdFdac6wYYSzkHzj97w
         GSiS7wDAHVPY7Waj6U72eJxAIcYnjTU+8KQFiE6UsCUsyrB9iaNZLbXp6HIHryggwn7I
         BSyKyTox34iYAaByHq+OiG/my+E3HYbUO1wt1pE9wVIHC7NTfsP0HYVYO4CoEFXMSptD
         xfUs3fqn0Pwu2QTL2i1C/nPDT3iD2xiCesRMjUv1aVKLrAMZBExAsjKO8mYAN+FIUp5u
         HSdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532q3IRA46aIrCSLXy6ntQiroXTMc3WnJBnDTG9HVWuYogV28zoB
	HG2SudhUpxpm7nZeqT+RmuU=
X-Google-Smtp-Source: ABdhPJwhhNSzWCHa9V763oQgP9k0nn/qGskDUL4VKiBoBEy99iBLDjwSorOmRAl+kvi9M53Eh3taaQ==
X-Received: by 2002:a17:902:9044:b029:df:fa69:1ed1 with SMTP id w4-20020a1709029044b02900dffa691ed1mr6661826plz.11.1611965300653;
        Fri, 29 Jan 2021 16:08:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd09:: with SMTP id i9ls4156716pgg.10.gmail; Fri, 29 Jan
 2021 16:08:20 -0800 (PST)
X-Received: by 2002:a63:34d:: with SMTP id 74mr6906267pgd.388.1611965299985;
        Fri, 29 Jan 2021 16:08:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611965299; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDSe6mpN/d+59Uwh5W9pGoKBE+c/6//qLymDA/HJF8PBF/uo4PQpmeYTrM6AZg4WUE
         ZLIUXIPpBpPLrpMRXA2ojzL3gpOgMBG0rYdaovLKgPCfeNVTUw/stZlyly7ciMH9vzPZ
         b9nokb45wjiWqh7WBaCMU6/Vo45HxYQTCuPFz1rKjGH1zaYzSz5dief9XQw+KujP9Xj3
         JRih1FBriLKalUJ9+turURl5MojtBhpNmWwSDttas7VMipRRZMBPRCFaOyReRO+7RogQ
         FaOQOznC2dScvqvQsgVrSHKstpACH999J6rJRxWdI5k086ArzvAYGwxyGaoD11h4Ac+z
         nBtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VZDd1asC8dvFh6n2YN5mdYVp43kT9MvVXFzgygn8cX8=;
        b=CWDygzzuPddCcucCGv2JTlXBwWME1eB6ncQWl1xA4pErabDnNJHFC/ldekgXpBuB04
         5TlVA+cIH6ZbehyH0VdZak4f5XJ3ue2E+qx6DsZFa0sAWcQrL4kFusJ8ym2Urendypu0
         Ap/hCnY8FtMIW1QTmvt0Yi03/QkPUTL/xRbcnPYcFmPhUN/H90mGn24RQW4FAakc75z+
         fZK387Djue2J/ddnZbh3EFeRFjHFedtOt5S3E4epwbZ2NTHIC+xajjvoCpR9CLvszAsf
         1iCcL0BvCXSKVVDcXvMVKxcPxo+UuXGIJCaN3B0aT4i/URvAaLd9uP9J4669C0K3CsU4
         m5Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dUVUO05O;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com. [2607:f8b0:4864:20::132])
        by gmr-mx.google.com with ESMTPS id n13si527726pfd.1.2021.01.29.16.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:08:19 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132 as permitted sender) client-ip=2607:f8b0:4864:20::132;
Received: by mail-il1-x132.google.com with SMTP id z18so9860636ile.9
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:08:19 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr4981903ilq.112.1611965299380;
 Fri, 29 Jan 2021 16:08:19 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
In-Reply-To: <20210129194318.2125748-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 30 Jan 2021 01:08:06 +0100
Message-ID: <CA+icZUXpn_VKePTpnEhcpuSxPkuQTSKYfsVeMbxU9-rBp1ZJXw@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dUVUO05O;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::132
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

On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size and especially so when mixed
> with compression (CONFIG_DEBUG_INFO_COMPRESSED).
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 is a cleanup that lays the ground work and isn't DWARF
> v5 specific.
> Patch 2 implements Kconfig and Kbuild support for DWARFv5.
>

When you will do a v7...

Can you look also at places where we have hardcoded DWARF-2 handling...

For example:

arch/x86/purgatory/Makefile:AFLAGS_REMOVE_setup-x86_$(BITS).o   += -Wa,-gdwarf-2
arch/x86/purgatory/Makefile:AFLAGS_REMOVE_entry64.o
 += -Wa,-gdwarf-2

- Sedat -

> Changes from v5:
> * Drop previous patch 1, it has been accepted into kbuild:
>   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44
> * Trying to set -Wa,-gdwarf-4 in the earlier patch was the source of
>   additional complexity. Drop it that part of the patch. We can revisit
>   clang without the integrated assembler setting -Wa,-gdwarf-4 later.
>   That is a separate problem from generally supporting DWARF v5.
> * Rework the final patch for clang without the integrated assembler.
>   -Wa,-gdwarf-5 is required for DWARF5 in that case otherwise GAS will
>   not accept the assembler directives clang produces from C code when
>   generating asm.
>
> Changes from v4:
> * drop set -e from script as per Nathan.
> * add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
> * Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
>   Masahiro. Sorry it took me a few tries to understand the point (I
>   might still not), but it looks much cleaner this way. Sorry Nathan, I
>   did not carry forward your previous reviews as a result, but I would
>   appreciate if you could look again.
> * Add Nathan's reviewed by tag to patch 1.
> * Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
>   binutils addition later, and BTF issue.
> * I still happen to see a pahole related error spew for the combination
>   of:
>   * LLVM=1
>   * LLVM_IAS=1
>   * CONFIG_DEBUG_INFO_DWARF4
>   * CONFIG_DEBUG_INFO_BTF
>   Though they're non-fatal to the build. I'm not sure yet why removing
>   any one of the above prevents the warning spew. Maybe we'll need a v6.
>
> Changes from v3:
>
> Changes as per Arvind:
> * only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
> * add -gdwarf-5 to Kconfig shell script.
> * only run Kconfig shell script for Clang.
>
> Apologies to Sedat and Nathan; I appreciate previous testing/review, but
> I did no carry forward your Tested-by and Reviewed-by tags, as the
> patches have changed too much IMO.
>
> Changes from v2:
> * Drop two of the earlier patches that have been accepted already.
> * Add measurements with GCC 10.2 to commit message.
> * Update help text as per Arvind with help from Caroline.
> * Improve case/wording between DWARF Versions as per Masahiro.
>
> Changes from the RFC:
> * split patch in 3 patch series, include Fangrui's patch, too.
> * prefer `DWARF vX` format, as per Fangrui.
> * use spaces between assignment in Makefile as per Masahiro.
> * simplify setting dwarf-version-y as per Masahiro.
> * indent `prompt` in Kconfig change as per Masahiro.
> * remove explicit default in Kconfig as per Masahiro.
> * add comments to test_dwarf5_support.sh.
> * change echo in test_dwarf5_support.sh as per Masahiro.
> * remove -u from test_dwarf5_support.sh as per Masahiro.
> * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
>
> Nick Desaulniers (2):
>   Kbuild: make DWARF version a choice
>   Kbuild: implement support for DWARF v5
>
>  Makefile                          | 16 ++++++++++--
>  include/asm-generic/vmlinux.lds.h |  6 ++++-
>  lib/Kconfig.debug                 | 41 ++++++++++++++++++++++++++-----
>  scripts/test_dwarf5_support.sh    |  8 ++++++
>  4 files changed, 62 insertions(+), 9 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXpn_VKePTpnEhcpuSxPkuQTSKYfsVeMbxU9-rBp1ZJXw%40mail.gmail.com.
