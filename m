Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXM5RCAAMGQEJLDMLVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE6B2F87F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:53:35 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id 61sf6418246plc.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:53:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747613; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wh3uteTYHohIqum73Nxi0QkEsQ9vpBejrQP82kSdD4ExeVQ7iEB6rh4qdBP1qpPDww
         Mvkechr2m0jrAmBsPqa9jkujnPtJg2mF2MwB+oHtw6K4Lr702rzRKjEGoIeDVmdBM0MU
         chiOVFPUDTmJ19vY5497bu5GIfEwWjoMBH/Wefhg+1HKiBc2xOdzxsT6P9DI+eFr/cia
         FiGzE5NU68eS52vfRn2bdDqqhAqCLNQuZEhCOoHDnvAFb8oKzFdRtFaH4qs69ds4RbZq
         RRS+GVcCQ3/mc9FewdQMih9w4vZuNk0vGeNLyFCaalQIq9ny3OngjZQjSCtjF22E1zNC
         Et4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4TWXoQVoY9JkAdcIaA1wLmOHh61SGZkcALjok9MA5p4=;
        b=NOYMg2DKJryv5+RPnYpTtyDs9MYbRBcpxgITtcYilhzXsLF3dYAURxICWBQuBiK/o4
         m6hY98Xn9rlFen8bZcyXGFd/Ep8gyUGYQQz1HdU/GbfiA4pPL9gMSyEkQwuVasrsDgEh
         XbLtpZJLz3/0ZDDWWKWdnNjGaELBd9VgZE2Fb9CI2Qbcq1ZDMKKdHkEG1N1CQuaAiO8q
         uKEzlIQqfFrCeGdwwMJ2AFgmjyhep2mAFBE2vUZ2dFm3pru4MZzc4lA8G4GdWcidfraN
         HuNHvO4GUmZUfDalGsjxbPq1TuxF9RpmomUOWFCnPpdjS7dDWGLrH6+tMsPtFaaVJYqx
         5H2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HeIuPg6F;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4TWXoQVoY9JkAdcIaA1wLmOHh61SGZkcALjok9MA5p4=;
        b=XqMu3R2b11zwYADPTP7hHk2zVBa8BLScx2f9g9nlhg8PVNJ4LPuJQwPf2w8qS30ruX
         3bR8pIFH0BGPMdUOKA17AKLPqwO4b77cjN1Ln54YO4uDfcYtsvviFt3cIl8FjnuCfxf0
         RDQ0q5JtfKloZg918GJSwqF8w3+Ldp/9Y/pCQCHtax++lcKwBQ9aXzX98kJiOqyc/VUu
         CMX4S/hHKXAtQTdhDcwBGCWrBc0RhbwbcLoKZl/2UIcuj3O4TlFRZkxAKmxeEY2HsyBc
         t7M0UCP4i0NoNIJDdeZIQi/+S1LsMug4iMTO/BBEBrceXd6PhooIUdcok5L1F3Lhr6pG
         siIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TWXoQVoY9JkAdcIaA1wLmOHh61SGZkcALjok9MA5p4=;
        b=Ic26H3Lfg+MNa/wY5z1LtM7rrWmL1+Lj8POKAm4i13qaxs5diaHNxfxqvHPfbSPnvt
         Ipdb1WqX29vUcpneJCcwgw2PWB2ljuWfPhLtkkGk15MWPjtg1Bi9E0R82xwtgncrU84L
         JIn5LW/uP5KCCeY38ljQxoEcHqtEFVoXeteTkBlmEx82s80fA/EFucLpAA2f+GqKoNlC
         cu1DjXLjDvKi8t9LJeY4u0L/a/kcsTNTv20D/HTnDyICcAe2hcOf6nfRouOW6Ct9Au16
         enfZzu2iWRpkuiueyKqH1n5bw2R/c6Y6R0O7+5C8HNko1oG5qOGJ2DOTcLhJGJ/v5i6j
         2KTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TWXoQVoY9JkAdcIaA1wLmOHh61SGZkcALjok9MA5p4=;
        b=j4z5/sG8MFSFNiVghLcwoAF4IudZhpGB0trTMBEizOBdbkb50n8vbzsLhtzolKothY
         MbMJ8nlhFksmoTKIJd79YQrbuyvQm3BShTIFeQEvAx3qlo7FS48PfrTjNwMuTjA0zRAe
         T9CJPLg6EvxsVqXORESmKFsbhYIwbzjJTGXnah08XY0hLSAyQl1lJsmFh0Ukng47sBrm
         lcP794FzIQ883DBcgKBEIqU2YrUO+n64bjflUlGRKDKuhepajnPGxQK1FFaaAGxGx5v9
         yF/Czr6GICjzhL36CRPd+0qqH0eqP47IAQFUt8wDtdg6uUosVE1irBIKujiiDd4W+R40
         +GKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tKddnLqXWxWNooW4COnHkj3aRmHbAATzzMVMVvR+i6LzBZdPA
	HIM68QjuiOCne+gt+1KGsYk=
X-Google-Smtp-Source: ABdhPJxPjLQKX++2R5qWUC9aiSpUt/zNPHxdU9bpw0cSpR6YArt+BLfVfN9zFBYHjtMuQGhE8VGIXw==
X-Received: by 2002:a17:90a:cc06:: with SMTP id b6mr12818806pju.94.1610747613520;
        Fri, 15 Jan 2021 13:53:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls3994930pfb.8.gmail; Fri, 15
 Jan 2021 13:53:32 -0800 (PST)
X-Received: by 2002:a63:6305:: with SMTP id x5mr14283882pgb.216.1610747612818;
        Fri, 15 Jan 2021 13:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747612; cv=none;
        d=google.com; s=arc-20160816;
        b=haEb1KB4VJPBu6jhA+D9RgkqoID6ldy3PI79U4ow0Ieo11zH/pRgzWk/4ZXbzPPNwa
         hk0+ZYkgYc/iv5jy9hUI9WCAniFf9ZrsKiK//uwKKK9vd+dbToy3OKhW81kvKVzcMuIr
         tSWQMkWq0/AaKiV0VC8h8X55i64ZUbTU8IVICd/LdOMAOgTy26nLnmWPqoIswos8Vq1n
         vUvtv8544ry6Re8BjOD+t4HZZZW9qSSt1L2LMTsh9+pByDuRqD7g2YJ4aUp3JqICHuaT
         xzjtSQn9ZFi0wrJegbTcEx3YBnEG6Qc6VV9wAw5hc228iZX68D0Q/MxgNKMY3ZK4wpar
         PqIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QGgWdRhGlMRkOeIpOovebewRZU6OcvKJKaY936bfj8M=;
        b=YRgJd2Wt1qwLy9zcSvlqtIYgwTdPEsSmYCo87z9no/VchKi55v3tYbaLH4ykLtvpUi
         yvE0av3F6dfZrAY+VhRiHOBxSpimqy5U4zUyRGanuubEuayT4IHl7B6S2yEei32KSpC3
         zwFINyUvv+XnR+U2gU64HhbELCpLB8QDvEYvGt19Ot/H7/8AYR239L1S2MB++csIxUS4
         HiPvdGH9ZKKAgqM4/pa8og4cLi7scrwVnUawVvuKSkP9mruqZgyB0EXOfYDl4ig0RxT6
         /qD5Ll8vKjuCYjQEc25/enQtYTMbBGqJSqedYan816wrjCP0/KVvegrjs+PyEzUw0kNS
         FnFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HeIuPg6F;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id f204si644645pfa.5.2021.01.15.13.53.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:53:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id d81so5881696iof.3
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:53:32 -0800 (PST)
X-Received: by 2002:a02:2ace:: with SMTP id w197mr12068965jaw.132.1610747612529;
 Fri, 15 Jan 2021 13:53:32 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
In-Reply-To: <20210115210616.404156-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:53:21 +0100
Message-ID: <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
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
 header.i=@gmail.com header.s=20161025 header.b=HeIuPg6F;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 is a cleanup from Masahiro and isn't DWARF v5 specific.
> Patch 2 is a cleanup that lays the ground work and isn't DWARF
> v5 specific.
> Patch 3 implements Kconfig and Kbuild support for DWARFv5.
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

En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
CONFIG_DEBUG_INFO_DWARF4.
So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.

I had some other small nits commented in the single patches.

As requested in your previous patch-series, feel free to add my:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

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
> *** BLURB HERE ***
>
> Masahiro Yamada (1):
>   Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
>
> Nick Desaulniers (2):
>   Kbuild: make DWARF version a choice
>   Kbuild: implement support for DWARF v5
>
>  Makefile                          | 13 +++++++---
>  include/asm-generic/vmlinux.lds.h |  6 ++++-
>  lib/Kconfig.debug                 | 42 +++++++++++++++++++++++++------
>  scripts/test_dwarf5_support.sh    |  8 ++++++
>  4 files changed, 57 insertions(+), 12 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVp%2BJNq89uc_DyWC6zh5%3DkLtUr7eOxHizfFggnEVGJpqw%40mail.gmail.com.
