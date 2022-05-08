Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTUY4CJQMGQEW4B632A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 2759B51EF13
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 20:30:40 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id q21-20020a056830233500b00605db4a91a0sf5528086otg.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 11:30:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652034638; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xb1pXTqJlOF/k0tMw/W4OqiB+pS4YRf13KD6k0im8/CXOqXZrUFhQzzTx3ruoUxk2Q
         nuxzHKUeFDxBKJ3NMTwsak0o6JnLTqK7y0VHb2uisBTigsmRbjK9nhpCoTtmbsKJK+vO
         mKfLhv18JMsaIQfvloXBCDt8oL8iCI7axfthHZbFjEywr61bXfwFb3anwAimjEEkgpH4
         uRg0RmXNLaOGvweVOT22pwGb7ix/v+08Rc7/NdFBPD+2X6Vliz/W9Zb+bvObsavFm7JM
         q5Vr3ihInaRFEoBXM/rOOh0IY68Z0I3LkcyxYa9HFYmIYQvq1GbYX+ecXpexSffiQkzB
         FoJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4Trwp6qTpU43gvkWeNqgg+2qpdCP4A3KIPbslHhIl3U=;
        b=W128DzmGvRE7lm7EfP4FIJMs71YmVhupr6VtOVkSaLJBSr4d7a8GVy2HHsQ/K6LOB3
         BsXScMqgc+NdsvvDqObQ+kFrlSFXE7qyM7LWNvAJ8IttqDz8/b1Jiwp0RruxuZYz/+pe
         QRwMzWicIgssuzkBiwM8QBeUfjzWAt1DJL3d3rScPZ5t5P8S8nLUH2anT7TTdA/M9dNM
         1YiK8KamClalx+akNR6U0KfOFx+8KZciXiGCNQFB3nJ9JZ0lF1YfAXhubhGHuWYG8xYa
         RwAnzCrdCCPabl32ZC4RmRfkHtBkJ75C6xXb86xqSZMwUYf9xxCDH/f/0dXr7BTptarG
         jzSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cMEmerC0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Trwp6qTpU43gvkWeNqgg+2qpdCP4A3KIPbslHhIl3U=;
        b=BG8YIFvRj9eqM0d3JYAkMqFOXaMFJWz9StoU1B8cIXgJJ9OZvaoOkiQxLPlhiglMQP
         P4uPyoecYlpYPaftOYcXdf/a1YzKpfEhKkDpSm+ZINc9ettlatQvrI+HCZsjS8izPliW
         ErgOlIV+wUBd4lKr0ukcYhYAVGFXQXUV/koDJ9NtlCmruICo6/094KdVLM2h+hVryFT7
         ZuBVevgzTn4X+pJ0l6WjAdKRFMuk99JJ2vQMCTUQKS9a21fPp96qDZnuDQaRo8bK+N2N
         qVmwVmkm0J9tvivW20Dpfdr+F5h9SZs4uNkhSjd0t4BSfV3PvM3IDsZNxSSuX/F6ByVS
         FJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Trwp6qTpU43gvkWeNqgg+2qpdCP4A3KIPbslHhIl3U=;
        b=RmgMSZR68SaGl3BciF42BM7gd3hMvaTS2BBzJ1EB7K1cY1bDXhHICxF+S1b2ynqHCs
         MdmhCSWXEMxNmM20uhUYQMcYLFt0HllLZ9YDMXxkbVvHvIgXdxgcVSbUSgQ2f8deGVa3
         sNBuhfcRIaGJO4mhkykoUjPgibpiSILs56DBU9ipAq1u/CsNo1FPUsTVDiwk6DoBWy92
         jWhBjpR0+ZY7uGmvlSg0RkXYq9AbSyrtBCQnFEwtXuSHCb4oh9msH/lnJYiUJlEysNqd
         oGRVyHkZp+tuxqQ0BpWTCQ6vj3kq4SLEfD22Q9WkgSWDlS4ttFhv/DWBHMFr/OtAEPsp
         ndVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r7kX/7N1kngIVNfHO6EDmG7GL0X+csyrahsY3/rK1/6HSNyMd
	35gCc17V3XYlZOvPE2Olx6E=
X-Google-Smtp-Source: ABdhPJx9fhrhyjJspwsX9J4GZX66amCTRnMg1Vq5vMr8NR9/QH4Z6xMM9Fg0lICra/pIbpNICTlhPw==
X-Received: by 2002:a05:6870:95a4:b0:d7:18b5:f927 with SMTP id k36-20020a05687095a400b000d718b5f927mr5027176oao.45.1652034638614;
        Sun, 08 May 2022 11:30:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:9a03:b0:e2:adb7:ef12 with SMTP id
 fo3-20020a0568709a0300b000e2adb7ef12ls4727224oab.10.gmail; Sun, 08 May 2022
 11:30:38 -0700 (PDT)
X-Received: by 2002:a05:6871:887:b0:ed:4b3b:2bc4 with SMTP id r7-20020a056871088700b000ed4b3b2bc4mr8484756oaq.278.1652034638203;
        Sun, 08 May 2022 11:30:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652034638; cv=none;
        d=google.com; s=arc-20160816;
        b=d4XUU4Y6R5HGm0bkiivVVsQnYmqxnFTcR96ZN8h8mrWp8JloHPc8GrkBzezdKyRRMM
         81j7NWoisch2YyzkSqdcqjM5J31wnwGBOMhZmqDT+C46XEOPHL7Ew1QUWjYfb3yAIrBH
         3S6zo9uQ6CUjpGx9WvgudCa3bNzkyZw2eROOg5QdlAl5fQOaJpC0qFoM+Z8X6DqtMeD+
         OvlHUIh526x909B1WSX1y9IlHvDRb2WfxgllM+iJWRJWNVhsPcdeHYeeH4gWdW+VWzvs
         1FeGjrljjoO33Mn9/JMZGtaaDkD0MgXAkLLnzI4nCKTjrutfxVOvTRaD1OvL4WB08AVa
         mBOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=lYdfiXpHTiwBCIC8Ig2nInkqB5OuwCT5uW2/zGo7dOE=;
        b=R0YzMKItUPCGvoiwgHGc9AaiF8DitjAk0zVSJ5w2h+lw7GAXLfRigOwx5RRJHDFIHv
         z/rNgVPNttTxS1XUR7buxrI+NQyymY4mBy4+67Z8E3yizmxh8HDObc9x42V1aJri8+3g
         xYOWqMQwbsz874H96AahadrO0M3ZvPHr7pailWBIl6PK8KCGtAQkhFgkgAZW31z3lbvn
         rwcKL22HVW/+TLMpdFLmjNUBqLtF0ARbiBxagHtDsE6GBKwTYe8nN2ZgX33ylyEvUZii
         nfJELMf43ehfiR/cMjEc5tD8XW4X98xm/Shpqm6mKb18Gwm3Agf7W68jE2o5HgYEBPqc
         SgLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cMEmerC0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id eg4-20020a056870988400b000ddac42441esi682192oab.0.2022.05.08.11.30.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 11:30:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 248IU6Z0013313
	for <clang-built-linux@googlegroups.com>; Mon, 9 May 2022 03:30:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 248IU6Z0013313
X-Nifty-SrcIP: [209.85.215.177]
Received: by mail-pg1-f177.google.com with SMTP id v10so10252866pgl.11
        for <clang-built-linux@googlegroups.com>; Sun, 08 May 2022 11:30:06 -0700 (PDT)
X-Received: by 2002:a05:6a00:24cc:b0:50d:58bf:5104 with SMTP id
 d12-20020a056a0024cc00b0050d58bf5104mr12632485pfv.36.1652034605828; Sun, 08
 May 2022 11:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220505072244.1155033-1-masahiroy@kernel.org>
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 9 May 2022 03:28:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQg2JG2DAuRJmNLryDh_o_PoFUXnJ+6C=-AE+NXZy9pTg@mail.gmail.com>
Message-ID: <CAK7LNAQg2JG2DAuRJmNLryDh_o_PoFUXnJ+6C=-AE+NXZy9pTg@mail.gmail.com>
Subject: Re: [PATCH v3 00/15] kbuild: yet another series of cleanups (modpost,
 LTO, MODULE_REL_CRCS)
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        linux-um@lists.infradead.org, linux-s390 <linux-s390@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=cMEmerC0;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, May 5, 2022 at 4:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
>
> This is the third batch of cleanups in this development cycle.
>
> Major changes in v3:
>
>  - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.
>
> Major changes in v2:
>
>  - V1 did not work with CONFIG_MODULE_REL_CRCS.
>    I fixed this for v2.
>
>  - Reflect some review comments in v1
>
>  - Refactor the code more
>
>  - Avoid too long argument error
>
>
> Masahiro Yamada (15):
>   modpost: mitigate false-negatives for static EXPORT_SYMBOL checks
>   modpost: change the license of EXPORT_SYMBOL to bool type
>   modpost: merge add_{intree_flag,retpoline,staging_flag} to add_header
>   modpost: move *.mod.c generation to write_mod_c_files()
>   kbuild: generate a list of objects in vmlinux
>   kbuild: record symbol versions in *.cmd files
>   modpost: extract symbol versions from *.cmd files
>   kbuild: link symbol CRCs at final link, removing
>     CONFIG_MODULE_REL_CRCS
>   kbuild: stop merging *.symversions
>   genksyms: adjust the output format to modpost
>   kbuild: do not create *.prelink.o for Clang LTO or IBT
>   modpost: simplify the ->is_static initialization
>   modpost: use hlist for hash table implementation
>   kbuild: make built-in.a rule robust against too long argument error
>   kbuild: make *.mod rule robust against too long argument error


Only 03-06 were applied.

I will send v4 for the rest.
(I rewrote the static EXPORT checks).

>
>  arch/powerpc/Kconfig         |   1 -
>  arch/s390/Kconfig            |   1 -
>  arch/um/Kconfig              |   1 -
>  include/asm-generic/export.h |  22 +-
>  include/linux/export.h       |  30 +--
>  include/linux/symversion.h   |  13 +
>  init/Kconfig                 |   4 -
>  kernel/module.c              |  10 +-
>  scripts/Kbuild.include       |   4 +
>  scripts/Makefile.build       | 118 +++------
>  scripts/Makefile.lib         |   7 -
>  scripts/Makefile.modfinal    |   5 +-
>  scripts/Makefile.modpost     |   9 +-
>  scripts/genksyms/genksyms.c  |  18 +-
>  scripts/link-vmlinux.sh      |  46 ++--
>  scripts/mod/file2alias.c     |   2 -
>  scripts/mod/list.h           |  52 ++++
>  scripts/mod/modpost.c        | 449 ++++++++++++++++++++---------------
>  scripts/mod/modpost.h        |   2 +
>  19 files changed, 402 insertions(+), 392 deletions(-)
>  create mode 100644 include/linux/symversion.h
>
> --
> 2.32.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-1-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQg2JG2DAuRJmNLryDh_o_PoFUXnJ%2B6C%3D-AE%2BNXZy9pTg%40mail.gmail.com.
