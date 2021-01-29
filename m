Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBG6U2GAAMGQEWOUABYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3244E308DF5
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:03:41 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id s17sf7210889pgv.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:03:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611950620; cv=pass;
        d=google.com; s=arc-20160816;
        b=05qKKDcEts1KMv288/BkngMzROxDnL6NzLV9Zj7LvLLpLdTu6w1OQcOz1WU8odNdYI
         JiDRsqIsQinSRxS08WKz5/IV5WcARdRtvjjist+8bna3mRPRD9ReX2oWgUSG4fENkqWF
         xkiUAgAmb5nPnh9n7T6FNlmgdgIUwuq/FJ/LWQxlYL7lTNgrhML/9hsI7RK6zMfEv2ma
         qzCzG1PrWbug5T8ZIopWZzppjQMLZh7M0dxgyJmcr8f9ck/Z6sMkKi7M5q7W5dr0fGCo
         hLsn+snkeAcdWqmGYYOFnDOokiSQjRG5X4Px+jiI1CM34iIJTG2dXuJxBokJnCWACPBo
         hFnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nQ8QKUSDR3uO0TL2vNGiIk7BWDoscUiyZc2H9BkPuec=;
        b=dyBnw05CXcZhjSCXfMNWLNKza7S92w9ZO8gwsTDZmX95/n7srylYYjL6q8KLKr5Mvd
         3bhc+zNORC7IEyyMpKvwE1IIyQd45urbIlG3MaWwggA0mNYN+qkhneej1vwDe8l31zSk
         3JszoDidWo5BVK1lbvBwb03tmboenbnSnL7A4Y2GziExNTz47RhKntnlwv74wl1Y8CJw
         eS1qB7UklFboKE0ttt5jI8TqlNOTXHN9WPmHILXMJVKsApRQhf1+hXcJaXXXJMsomG3L
         iyJ0fBFc/3cZfcDAdABN0rCjWzaC2d8cOigWAFhnWSipYLkrs/SNwRAtogAnyCGQ9YaO
         9fwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVhSwPvM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nQ8QKUSDR3uO0TL2vNGiIk7BWDoscUiyZc2H9BkPuec=;
        b=PGoHcxmXp8HNPGciAuZei50ELswpen76geAbtJFH+8lEO0wIM+J5rEPAEV+n8XERCS
         DwOhfUbDmurqDlPQVycEQMHaJ8mo8BWyckkPU0kZaCHiGef7LwLbchKWOVLoFtto8H2d
         DbMKs64U44gcA+fYPlzN/kf0iDb73M2jZKT+FIue5D/lNwOM2Llaf7ovjPPwA88ARGSq
         KrQbWiSN0WlRplkK6+V2T/+gJlMbTDCzNTBfph4Q8VRDzRuzNY8AP0eU0ap11mpSMlQG
         6agdFacgbkD5zJs+lsZzfjP7WhU/c4TTiBik+eN/Y1bcpS08LkRTFHlFrRConCm5KTnZ
         8Drw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQ8QKUSDR3uO0TL2vNGiIk7BWDoscUiyZc2H9BkPuec=;
        b=B9kzxziQ7k13U3SVm8FZLwB/THOHIUsFC+pEyXBhHsSi6MHQVJw8ZJ/s3byGl6R1at
         xEgX4uzyHcUyWCSxzRVTFcgeyJypdb+3kdhW7ONnSftEyDORZ47mFLCuI855qrF/6y4c
         lCzynqVKcBtYZFi1DLuqlYdyA0HJxTn22WFpDSjs0o23keDkPJuwFWyzY4t9Lqar+Tiz
         TsZlo2OZTTkyv+CzaIsqblJK0Fov0QosOwTPNwxTWKWeS8b81LE85yL1RNHCW4f0DunU
         zhALgt5F1gD+duVroYk5yHz+vMIvL+9InsBJFJBHqg0Z7SY6Z91W30MykDB9u2PEGP6e
         /Eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQ8QKUSDR3uO0TL2vNGiIk7BWDoscUiyZc2H9BkPuec=;
        b=f0HW+ntKivVnlQI8/kRq4d8ZrgJP16oiswBmtx0vfhHtcrMdiPObRLu+isO49dugxv
         No09fNlnJCzPyZfoBvCZdTEjkUhjJHErUHnN0gQlLvYI25mhdWxv4JZT+lDiymk3C7Y0
         SvrXpgrhtdsX068hFT7G7rV4dTFJWIj0pp6qjvhfFSB8Ew9svU8gAXNKlWGxkxrF1pWJ
         IeMXQwdFiGtc0k0f86xT7uNL5su41CoAsNfyrtcFMrXmgkwFFxLPfiaKq8MBQDeJ4Ip4
         Ik8OM8TJOEj+xNxTNs6BCxRp+nVZOJqSb5A/9J9MNqIKDpo0Nuoxgk2QItoOiTZZwIxq
         xhww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530H0Cy0p+TvQDPB34xWROFq8TC2Jxi79dQWu6CIl1KhfGO1+c2/
	yktdyV/+Jl23lPzs14BvsWY=
X-Google-Smtp-Source: ABdhPJzREzCq+grCimZaSGx9CjU3zKTZbbTB5vew6Bkaj9EfusrbCXzDyVnCfMba6hN69mIw4Vunvw==
X-Received: by 2002:a63:f111:: with SMTP id f17mr6209953pgi.287.1611950619887;
        Fri, 29 Jan 2021 12:03:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls3999259pgu.6.gmail; Fri, 29 Jan
 2021 12:03:39 -0800 (PST)
X-Received: by 2002:a62:4d43:0:b029:1c6:e790:5f8f with SMTP id a64-20020a624d430000b02901c6e7905f8fmr5819168pfb.65.1611950619169;
        Fri, 29 Jan 2021 12:03:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611950619; cv=none;
        d=google.com; s=arc-20160816;
        b=pqE0uEDLTp1vmucvjvwDBpCaWJXyt3ZTRdV+nmEduxGZOLIhJkSa1XMZ+Roa8h0Euu
         8aTFAZevYpW6oQJ33tHcA2EQ+WOnCUKBWd5anDDA9xin7Jn4UTE5ZK87m4CrmoG+dqIi
         iPdJQGJmkz7/1nVma5x48u1Cznz5pUNTd9eN4oTCfSDpmZ+NXWgW5Sj0bMO8p0du3Vp7
         FupQQnlmU2jJbPdfPWDmPVjawi9zg3FSzCtZ8U+zV7HIhqVEMtkF3ZeODokNt7VQaTr1
         3iGcciVVUjLp+rH43zZ2Ig3SeH9FpmhUXKdiAIl1zscIFPOzJf6Ev3nu7OD647Hfz1cG
         IBiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YaCjUlgtnJbuF7k3Cdbe1kjQpNgRK/ArnNzFGruCqYY=;
        b=gqvo6yOUMir0NhNnkMsdyqYzVMbyFYWTZACxUNKADCTMN8D7uvCkEcn4ZY/Y91Ol7a
         jstoXwCrLZZQJ0Lme6/7fJvsQAqxGV59NTpnoznEnjYt+nVayKd3rdPWW7pr4seE85tP
         Bd9outfaSLZPExuZfdMrNBd8MArvKuJ3aJvlOpRPee0uBKR8eKfocqfHbM6w63mF/suo
         iQHVpwMrIuBEYABmKH/XnHacs+W6PDleK66Wj36KIOEFKtR8llvRRX7ecf5gS4u9+9UN
         VllcxKE8ufDlLG2Qm/Nm23TNGMK/6h56Ubw26EMchd+Yp2fxBqNkUbSpQbENWqEwn5f4
         KeSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVhSwPvM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id nl3si333601pjb.0.2021.01.29.12.03.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:03:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id q9so9635886ilo.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:03:39 -0800 (PST)
X-Received: by 2002:a05:6e02:e94:: with SMTP id t20mr4497910ilj.10.1611950618603;
 Fri, 29 Jan 2021 12:03:38 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
In-Reply-To: <20210129194318.2125748-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 21:03:26 +0100
Message-ID: <CA+icZUUfpDwWf4xErSHXmeGDoT1VRWda+q1z+SRnets_NnUyGg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=UVhSwPvM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a
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

Thanks for v6 - I queued it up in my custom patch-series.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUfpDwWf4xErSHXmeGDoT1VRWda%2Bq1z%2BSRnets_NnUyGg%40mail.gmail.com.
