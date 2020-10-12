Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEMESL6AKGQE3Y4BXEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C7D28BD62
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 18:19:30 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id t204sf3861661oot.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 09:19:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602519569; cv=pass;
        d=google.com; s=arc-20160816;
        b=jux7dpY14VrVKTXq6fH3eVw492XWzDma9AXx6wjMM0fd8wik3FM/V5i81waHNBkpDA
         3CA5lie2LOHcdIwiHmvc0V7pDBAfwpdxRDd5T/ENn+6iSxr+ZiSWXD9Ar0MsiEWL2+6X
         2jo2JU1vyYGBSqfSMxEzcg7JgdSU2K0cHuTCbtnhR0ypnXt8CwYKTce0JnVgzyHVTRMA
         YFRrEApMoF1gzCjIfXuFGfl/hUgWZnVJbj6+fc/11b6hIKAa934dHK+OEw8x6clzJJ25
         Px8FM6zbsNjlUFeFzlhyR/+USqGtLGCCkYklQLeGVXCLx72Y7Tg6hR9BMr2ZKJA7WxoM
         B4DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pqZIByzUpojw9KrbJragpyE+je5Szie/52T1fJEm14U=;
        b=0G50pX2DUrq4kw73dSX36JD+r12143dLFjnbTEGri4iW8Su4a5wOZZcLJRYKdcUGPB
         A1U69bxppAIW1pbN7C9d+JHooD0yPBO3U6hBzfbTtxVeERo5JacfKd1YoXxWo0/vsCUM
         9aQVk70WzyLFszb2Hi/aWlx2Udok81fW+G6OIE8xzrz5aahqKvA+DspGnepuHWrEIWZ+
         2FqGCwu4RD9yzRd/LDVeOO5AIHeqlLWUqrJ/x1Qjsf05+DVhzEhbAJwYMfhUMcNoeLaC
         90473ADK1r9zN4gtBQzDFuqF96Isfljb9cwU+F9SiAhTxef4Lu3aznDvk7JEw7WODJjT
         rj1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qNwNh7mR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pqZIByzUpojw9KrbJragpyE+je5Szie/52T1fJEm14U=;
        b=E09ZMnqRC+uOj+3Qcvvj6+FvZHTcf7DqXyAhngani8z1ki4roDuL555U9o7J9L8swj
         jmhXbgZ4MLaeZlBjfERYKRjeISJf7RMiZ1nqO+O6gZI5kxKg4LfVy62GKn+/Sray7dgQ
         957zkxJkuvW7IpqRPZnMr8wX7FdIVHBTUA6ebTSyuVKc2yAiy/uKssX1B48N80afXSQ9
         6Sq87hXRyjSv90VNWBSNteFBqJj4tM2vEdUhSLtXAAAnV+Mrq6eQc8KLfyWi3stEnbPy
         Xb8MHAH86/aNGLEYKFsORM/SVsAbUIlFcmThs+N/1F6Ti8Dz63eYR7pW4b32rRDhuDYR
         ofSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqZIByzUpojw9KrbJragpyE+je5Szie/52T1fJEm14U=;
        b=RPeiDVTZ2tkx2cL1qVN51oRnycuOlB9L+UKDDxjaFpHn6niBqMYEao6st2B7QtmcUE
         5kIU07yPDkxvrUC6VL5H03Z/siRX/kaoiRx7yHI6otPaTN6WWag63WwiXRy/Q3AznRju
         lCpEr+WCY7IwjP19TvMiXscAWG1gw0/PX1OhrM+ZxAERDf1OmQk3Nu5t6d1XEvSO0296
         e9sKAEeZr2zNc32gdfx+JDArCtAtQTp0cXssjxnxN//gWatwi2MZwZMizMWPe/P/mODi
         qZxUU08xoOi3TC0xTKOcNvpqRR/esr5d8dC6ZuQGB8mJIFUPIZdOJgyaic7zrNOBvVlJ
         bLeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xzvsanc3Mxstg4tihW0Kb1lw8TPW+69Xp9rOSERtR9RXPEtBo
	qya4/FwOSAHSDmMW4nSJz8M=
X-Google-Smtp-Source: ABdhPJxtdgnVC3W98rxd8uSJ7YNpvt7+ef1gkMkJAW6v93sQq/Xb/4wfrd9Tqk+HYnVEVucR6M9JLw==
X-Received: by 2002:aca:c490:: with SMTP id u138mr11258471oif.54.1602519569155;
        Mon, 12 Oct 2020 09:19:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a10e:: with SMTP id i14ls1039544ool.5.gmail; Mon, 12 Oct
 2020 09:19:28 -0700 (PDT)
X-Received: by 2002:a4a:ea4b:: with SMTP id j11mr13911371ooe.56.1602519568705;
        Mon, 12 Oct 2020 09:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602519568; cv=none;
        d=google.com; s=arc-20160816;
        b=g1yG4DPMNCiAPh1CHDd///4HTcu9WFwrimNp98tD9XJ6zxbzDOWLXXTQj9tTrINOFy
         D26K4VVccslT9MqXMPg80hJZctLhr6Tv4nx9JAWMyIYQ2o4pS0Fy7XKEa8A2aGQIUWe7
         oxTTaUKZKnJmLGZFDDrLjfNc6nMhVQ7aR3jjctqC6Rdlt3bYXs1q65KaSLNezgcz8zEZ
         rpPFtOq4GtDL2si2vC2UKWBYRPu5mcQrG+G1klwynGahDQt3XE82kglX4Ea1sWvkdnqy
         m8IhlMvoztitYbZvWzpeLHs3YIAlqPC/zlD1jSpnhwJFPAsqrLToHFSUq4zrDDy41NN5
         fisw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=HSVjCaHtsc2dmRdoJJRl8nIVTZkEJZ3ZKN4IOKEiAz0=;
        b=Y4lWqk66Ygi67KX20s25dBp84H+3KbKBbnJkYqYz2c7EsfBZ3PeSCR/L5LSfw6XPd/
         xTFCgqn/9SKgnt0mhs2Hlb5u8YWp+mky5+eoP4n+/4KKGZwLLws9P2A45AQSUj2PcGJ0
         YtY1tCzpuCo5DC7MM7I+CkmplnKs2yHAzRcEcP2nPxsikgtSgffsRKXYd7bqHkSPKonl
         nza37kPQqa3S8EQrrFbMeDpA98d4rDaLeQVOoWaVAg1pR4Tk4OA0T9UvOkFCd9ZlZ9/+
         2uXkmGcfi3xsy9o0E++TembegzF4Bgleof73+UpoehETWxdPmK8CiyiQ+KSz2ZEZ/NA7
         eoTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qNwNh7mR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id e189si1006028oif.5.2020.10.12.09.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 09:19:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 09CGJBL2018715
	for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 01:19:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 09CGJBL2018715
X-Nifty-SrcIP: [209.85.210.182]
Received: by mail-pf1-f182.google.com with SMTP id b26so13942368pff.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 09:19:11 -0700 (PDT)
X-Received: by 2002:a17:90b:1b12:: with SMTP id nu18mr20160486pjb.153.1602519550926;
 Mon, 12 Oct 2020 09:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
In-Reply-To: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 13 Oct 2020 01:18:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQwib66YwnMuN9qGQBs8dqqVaufOr9BqYMKfYUqiXu6jg@mail.gmail.com>
Message-ID: <CAK7LNAQwib66YwnMuN9qGQBs8dqqVaufOr9BqYMKfYUqiXu6jg@mail.gmail.com>
Subject: Re: [PATCH RFC 0/2] use interpreters to invoke scripts
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Andrew Morton <akpm@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-ia64@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qNwNh7mR;       spf=softfail
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

On Sun, Oct 4, 2020 at 12:19 AM Ujjwal Kumar <ujjwalkumar0501@gmail.com> wrote:
>
> This patch series aims at removing the dependency on execute
> bit of the scripts in the kbuild system.
>
> If not working with fresh clone of linux-next, clean the srctree:
> make distclean
> make tools/clean
>
> To test the dependency on execute bits, I tried building the
> kernel after removing x-bits for all files in the repository.
> Removing execute bits:
> for i in $(find -executable -type f); do chmod -x $i; done
>
> Any attempts to configure (or build) the kernel fail because of
> 'Permission denied' on scripts with the following error:
> $ make allmodconfig
> sh: ./scripts/gcc-version.sh: Permission denied
> init/Kconfig:34: syntax error
> init/Kconfig:33: invalid statement
> init/Kconfig:34: invalid statement
> sh: ./scripts/ld-version.sh: Permission denied
> init/Kconfig:39: syntax error
> init/Kconfig:38: invalid statement
> sh: ./scripts/clang-version.sh: Permission denied
> init/Kconfig:49: syntax error
> init/Kconfig:48: invalid statement
> make[1]: *** [scripts/kconfig/Makefile:71: allmodconfig] Error 1
> make: *** [Makefile:606: allmodconfig] Error 2
>
> Changes:
> 1. Adds specific interpreters (in Kconfig) to invoke
> scripts.
>
> After this patch I could successfully do a kernel build
> without any errors.
>
> 2. Again, adds specific interpreters to other parts of
> kbuild system.
>
> I could successfully perform the following make targets after
> applying the PATCH 2/2:
> make headerdep
> make kselftest-merge
> make rpm-pkg
> make perf-tar-src-pkg
> make ARCH=ia64 defconfig
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make prepare
>
> Following changes in PATCH 2/2 are not yet tested:
> arch/arm64/kernel/vdso32/Makefile
> arch/nds32/kernel/vdso/Makefile
> scripts/Makefile.build
>
> Ujjwal Kumar (2):
>   kconfig: use interpreters to invoke scripts
>   kbuild: use interpreters to invoke scripts
>
>  Makefile                          |  4 ++--
>  arch/arm64/kernel/vdso/Makefile   |  2 +-
>  arch/arm64/kernel/vdso32/Makefile |  2 +-
>  arch/ia64/Makefile                |  4 ++--
>  arch/nds32/kernel/vdso/Makefile   |  2 +-
>  init/Kconfig                      | 16 ++++++++--------
>  scripts/Makefile.build            |  2 +-
>  scripts/Makefile.package          |  4 ++--
>  8 files changed, 18 insertions(+), 18 deletions(-)
>
> --
> 2.26.2
>


Andrew Morton suggested and applied the doc patch
(commit e9aae7af4601688386 in linux-next),
but did not pick up this series.

It is difficult to predict which patch he would
pick up, and which he would not.


I can apply this series
together with Lukas' base patch.


I pointed out possible mistakes in 2/2.
I can locally fix them up if you agree.


BTW, Kees Cook suggested dropping the x bit
from all scripts, but I did not agree with that part.


In the doc change, Lukas mentioned
"further clean-up patches", but I hope
it does not mean dropping the x bits.


--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQwib66YwnMuN9qGQBs8dqqVaufOr9BqYMKfYUqiXu6jg%40mail.gmail.com.
