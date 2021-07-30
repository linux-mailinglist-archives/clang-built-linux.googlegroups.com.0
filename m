Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMPKSGEAMGQENXGGIUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E438B3DC077
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:54:57 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id k5-20020a7bc3050000b02901e081f69d80sf1882986wmj.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:54:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682097; cv=pass;
        d=google.com; s=arc-20160816;
        b=YbQS4JhYnzkScJ1rK8EOS2rI2db2RIsoRvSy8XM5OBuYxvQOXYDRRCpU6NjAsqbA7A
         BDa1gYdd9vs1+ME+7PR01eJc9R26WHyo28WCoqDiXw10C+1a7bCieat906D/P8NEf4Xy
         YGAu9y8J5hlS+yf56LD0oFLy5m7K3PkCPR7xdCXMWZ7sdKeYBXz/Aa8HZ3yN+bUwku/h
         dTFregjPFmQ4mlXti0LQcbmqZ7LbrRczDWUrLFDD5+Rk7InZKM49QGDdGY6YwoYVfXyz
         fG56KJbSmamGOfXr7RhHB9a9NLy+N0VzQAnsMWylVa92SAseH3QmNvtA7C42N+qGfhbD
         QLUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=frDqa1hd9Clj9FcOVMBlDtUUb7BXibvb5q1t0RXUFog=;
        b=sZ8cej7xL37lbFel25PtQBl99GxZzgL48R+t1ZgkB6K3w3wNFXNGl65d3977dMoDFW
         Vcqjy+K6qNP87GKIkIfsO1uFKTjRJpBilRF1sHo7AmBMWeOCOAac8yx5a8uEtqnZizKw
         xM+9E5joiXk51EDvYIe2zE+5T9ZBAhFLwsGcizsgl773eraBwgdxLvRfwBk4U1dTly+G
         C94IJeEyVkHWbJj0vqClo2D86hG5zwTFaER6dDbuCul1ho3aqCn7Z5IjUu5R5CrmV4xT
         p7tx8DRtGWpAlK3jCy07yudT47yEzFp8Hwnj0v/VAoKjk0GLnfxt5pgztqt5mtYF2wbx
         ksLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZQTRYuq1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=frDqa1hd9Clj9FcOVMBlDtUUb7BXibvb5q1t0RXUFog=;
        b=rnbD0tVoeKtYWBZw+QlOyLhIjoqUCSK8Qet1nIa5smDgPDatxGRN0voLEzimH2/s/y
         HMKSe9GkG+G6Q6WhRgT+v4AQ4fsTvPLjPkTJNgBn8FrAIGsAdR2YsuX9yPF6q8svwbt8
         zAaejm5OeXdJLn3DjFU5TETQtR6AWMmwlTKw9VDEOqQxCqemOaFQqma+MNOOOiqpyxTk
         YCH5LqyZw6fHEBxtWkHVfu6Qe3ryB6WN5zB2cNURkH+wjV03Z44AdurXRIu+uZNhIFsj
         +c060AedklfytCQNzAuL5heclfiH+dEcbGdXDZNemrjxftJzgnOaMT4r/LlVhSMZwzgf
         Ir2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=frDqa1hd9Clj9FcOVMBlDtUUb7BXibvb5q1t0RXUFog=;
        b=AMFKb4aIZCoXVtQbp83IQxsd8qDLBjOearXAOAcE52xXZFEPijZRMzt2G3iqNSdPIm
         7Z1E9ngHEgXbRuRZ/LAYmKAx28GzOH+8xwHJJV/8YUYb4IlBgtlwD/sTTfGSD+PspqJn
         uvPdrtFehAz0San/2i7p5qUApFjMYyDmGOGwqF+ra5Z+W9i1bZFwgKb/A4kT+fikn/Jc
         JPxFyz3AZinMBoxT1VQJnPxpb+eE79vluGRvV1zXXRJSBPCAeuG+eX5HO8xMifukrr85
         IYAsOVhYPosJIToZXItjjdTNOy+YZzf7/LvErq8grCmrBaJGXfj8qqR1HHDo16EHaGJ5
         RQIA==
X-Gm-Message-State: AOAM530+pby11SVHwg2EJeFL0rpwI+I3E0e5qDwTBh+OdoTBKqIVt2tt
	fTceJsd6xOIBcvP3Lv2+xSk=
X-Google-Smtp-Source: ABdhPJzkokOSbcbVSountmFA7DugSc5VkUQLw9BcZh0j0uIf3aKywT2C3G56qbBs1xyYxOodAFsmhw==
X-Received: by 2002:a7b:cb09:: with SMTP id u9mr5242175wmj.63.1627682097707;
        Fri, 30 Jul 2021 14:54:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7fc3:: with SMTP id a186ls1643963wmd.3.gmail; Fri, 30
 Jul 2021 14:54:56 -0700 (PDT)
X-Received: by 2002:a05:600c:3b08:: with SMTP id m8mr5293057wms.84.1627682096876;
        Fri, 30 Jul 2021 14:54:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682096; cv=none;
        d=google.com; s=arc-20160816;
        b=etqCwYdfekflDm2GK3fkXdkpw0ViAxWWlTOjMy9lLv6cmD9F8aF+HrJuxd0ipVXWKk
         Fu28alMDTfme+NGSlZ0kQ4G7b2/YL0NxrPtlRheoXEEkUp6Tn5+3HR0sjT8g/GqdNU2U
         tYs0EGrAOyPQ8h4AaoHCTUgxjsFm4h/CilLYcdLjeDomRhQVPNwW42IRuMOZn1WIYEtc
         vnZrGQe++85Bz++opCPdXL6Bv+WQdVMTsyeG3wS7OJF1jBLP6GUA9gcKdNUQ0syCroW1
         RfC5x6zQf2ShNi9kF6nwAr45YKBpcl+MBJw0G+2kqOLK8M6W93L5PX6aWGvmWEPTD3/N
         vT/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=faoOQY/6RWuADuNoVKpvGyxjDEO3XlGf6d50QEfJC7g=;
        b=RRb5+KnJsUyvoDO0NeLseNCF2x3aCuvvPd92J/2mP54R2Cbz2Y2qhwDYAWAH85Ljiw
         PtHlYT+2btkyvdBDKJb19KyXZZBbBzAjgZkmPyGK1qBxl9Xox0kaFnEMI3+sc5dS/Lgu
         Sj/VKxAL8VV2pE25DEtVel/eG2YXOCsV8JbTMB7exEbh+N7CMJn/VtXnUsT37e5PmxBd
         E2Y2LwlOZyjVZffDjBG/VDui3Ca8jR9iWzlLLEQXrQMYUa8otwHpd7XfhJvUqHK1ZHnu
         9hTf1ilR6/R1NRXTNbCA5A/Mun2ZmL6c0ykcUSBQkwoFg4j4csgzbixk+MRLunkYT8Iu
         qGcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZQTRYuq1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id z70si190946wmc.0.2021.07.30.14.54.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:54:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id f18so20623935lfu.10
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:54:56 -0700 (PDT)
X-Received: by 2002:ac2:59c4:: with SMTP id x4mr2916374lfn.547.1627682096028;
 Fri, 30 Jul 2021 14:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210730201701.3146910-1-ndesaulniers@google.com>
In-Reply-To: <20210730201701.3146910-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Jul 2021 14:54:45 -0700
Message-ID: <CAKwvOdk7yxOd6gStOqaJMdf9RW+cDdX1M1ScFJA70y5GZmSwNw@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] infer --target from SRCARCH for CC=clang
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZQTRYuq1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Fri, Jul 30, 2021 at 1:17 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
>
> Instead, let's infer it from SRCARCH, and move some flag handling into a
> new file included from the top level Makefile.
>
> Changes v3 -> v4:
> * Remove the requirement that LLVM_IAS=1 be set, as per Masahiro.
> * Remove the Documentation/ change from patch 2, as per Masahiro and
>   Nathan.
> * Add Documentation/ change as patch 3, from Masahiro.
> * Reword commit message of patch 2, as per Nathan.
> * Change patch 2 oneline to refer to --target and CC=clang (not
>   CROSS_COMPILE).
> * Carry Arnd's and Nathan's AB/RB/TB tags, confirmed ok on IRC+discord.
>
> Changes v2 -> v3:
> * Remove requirement that LLVM=1 be set. Instead, if building with just
>   CC=clang LLVM_IAS=1 instead of LLVM=1 LLVM_IAS=1, you should use
>   LD=ld.lld explicitly, or LD=aarch64-linux-gnu-ld. (As per Masahiro)
>   Example:
>
>   $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy \
>     STRIP=llvm-strip -j72 defconfig all
>
>   (It's still preferable to use LLVM=1 IMO, but this is maximally
>   flexible.)
> * Change oneliner from LLVM=1 to CC=clang.
> * Update Docs slightly.
>
> Changes v1 -> v2:
> * patch 1/2 untouched.
> * Fix typos in commit message as per Geert and Masahiro.
> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>   Masahiro. Add his sugguested by tag.
> * change commit oneline from 'drop' to 'infer.'
> * Add detail about explicit host --target and relationship of ARCH to
>   SRCARCH, as per Masahiro.
>
> *** BLURB HERE ***

Err, sorry, it looks like I did:
$ git format-patch HEAD~2 ...
when I meant to do HEAD~3 ..., will resend.

>
> Nick Desaulniers (2):
>   Makefile: infer --target from ARCH for CC=clang
>   Documentation/llvm: update CROSS_COMPILE inferencing
>
>  Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
>  scripts/Makefile.clang        | 30 ++++++++++++++++++++++++++++--
>  2 files changed, 45 insertions(+), 2 deletions(-)
>
>
> base-commit: 27932b6a2088eac7a5afa5471963b926cfbb4de7
> prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
> --
> 2.32.0.554.ge1b32706d8-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk7yxOd6gStOqaJMdf9RW%2BcDdX1M1ScFJA70y5GZmSwNw%40mail.gmail.com.
