Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJNATWAAMGQE4XHHZGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id A918B2FC25C
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:33:26 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id e74sf27426056ybh.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:33:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611092005; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9KYEhnrHuefe02T5cX0r838Phz5SwBXsFq82LMUIwmK1M7UiEOvHoFIZgbb3D/sFv
         Tv4TwPbrJuEUaOladD34Es49YgDs2R4t+ZIgYw1zC7d3svKyXsZOZeK8jua+TNgjo/t9
         c+x6t4sAFsOdwYD0XCOjwswjQyNYgy8Qnx+ksTnRbYBg02tUwbwxpfZHi8duPTW0xicM
         c1Hk54ULhiiDHx5tiPS7xPgGCHdGp8e5ESnvHh/Ul3xxOFbB4JSnWDzu/HBhXtTgD67/
         2IsSXqwKlZ135c919obYHfChcgd+HFmdZ3bc2DbjlFp/5CcOjDC5E955M11oo5mBeqjH
         boEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rNs+8AjUEbaeD2TS7/s1ITY4v0ObH7bUwBkuuC0WDf8=;
        b=HJJVZ8Eg3S/1cegBHZmHxoFRnxWFJPkiwsjGwOIibvgf0xhbcgMM8lVX5bYAOoPyVs
         GHv390kOPcXCLfkQWBX9YQcD7Vpy89auwABrrgP2Pi9F/JXeo5zM7AA/Lj7C2vXPIaCu
         WGq7A/EFsTdJ1jy4pE2q5fHTvWBGTZ2szeunB6ilKTtGHH40Zg5iPoZdswvK0VDsra+f
         dwYyJHxPAAGe1iWbAjtmmaYC6Zbc6YE0jAfRhNbyd2lVkXDxXN0xak56rP+jRLIPG/fk
         EKzCFQkIncgD3fEzT5Mu+HOuWeBzFaG1Xif+r7w3Oan2ykmu0oUZAg58ALAt3OepaKew
         a9XQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UxY4frBI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNs+8AjUEbaeD2TS7/s1ITY4v0ObH7bUwBkuuC0WDf8=;
        b=A0KwFYjSmwmZqS6RHpZFg7QSaUfAlwUUFILPtzRGsZWTSCBnz63kNp0UM62zXhquRo
         Vpz0a5hfOa6O47flvZsS16ydyeg8k3dM0KjDQptE2lVTU9wkybO0g8WQ6gs7N8t2j2W3
         YodsUiXUnhoNvXNw9yaz1ORoWqtQGxy18M+fY/xkuZxyUQ+extMn3GvRCYoylalX5CkW
         tV/n7D3soIYdm8+s0XZ2h6FMmayuOgmP2X24EF1o4NOC/xrGtqtVdEUwqMsprqT9GXOi
         /W8bus5P8imKYThZz+wyGEb8GMt6yzNUiI/cA1kubn7WzT3xM1bBD+M8K309zfFwTxBB
         bf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rNs+8AjUEbaeD2TS7/s1ITY4v0ObH7bUwBkuuC0WDf8=;
        b=BNUXsTYnuVAoAxVlkxEvGTMUEDlLZ+LKtjHiR83+71eDE3D3ums2D9qo8M4O708Xjf
         jFMDSLZegwufzEHxBtflilqBikanZFais0+bFGzigkq0V1naaj5KYV34KPYYvxi0fou0
         9iFuvAPYtrnpXppU5Q/HPXlvFM/XvHWN0O8pPLE6PLCoWATBK4cUB6DxzEblJh99FA8y
         PBh8r7JHVbJFpw+zHTxfzUwJZraR7PfGwHRP8T7vjJgv8acFJFybD36sWy7YQjODNlZH
         7YuStSbMmQd/ijjlHm3gxlYlMKN9fHin8KOVoT7/+v9+1b0qd3muhBYx3mx+W+mTPZvR
         bmOw==
X-Gm-Message-State: AOAM531HwzNIMmsfcjM/+PJGKaf/UUOzsdRFAtt9nBxQWlF5JV6QBzN8
	rZAVNZffocp5QXGyPh3sLaY=
X-Google-Smtp-Source: ABdhPJwA875AgmNA7qG7PiZKoEr+/ZbXzPfPQGbZAyI9RQZWBcJ8sDWYGxkhEZUymrGlfaJgSt5RYA==
X-Received: by 2002:a25:b5cd:: with SMTP id d13mr9215004ybg.252.1611092005762;
        Tue, 19 Jan 2021 13:33:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7314:: with SMTP id o20ls9486454ybc.0.gmail; Tue, 19 Jan
 2021 13:33:25 -0800 (PST)
X-Received: by 2002:a25:1d5:: with SMTP id 204mr8817617ybb.417.1611092005380;
        Tue, 19 Jan 2021 13:33:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611092005; cv=none;
        d=google.com; s=arc-20160816;
        b=MAtN8TXg1aHdt2gSh8Xs6ZV+0s/EKy8/93G9qI2Hvidc8fL1UlkX3ryFUw+7/nmeF3
         Ho/8OwunzUzFj4qitQ3SlGZs4AoxcTAZ7HvD6UqTn5SV4aEOisqm/InvR3HmDuhTHd/J
         95Mbdv+8JKMhG6ZWTzUgC18WblwO3qSONKyoxT4qoHozLv/y2Qj3a/PRop5Bxsn9ncby
         l0wYgEg3m7DT0Sd/XDfWERXQQ5NLVgZVrIGv5gEmpEgsIUfQt5koMT+FHBY26pUQdooT
         8GWjd9cR2+FQe2AeC4oMBHCNuLU4C9B93T/HI4cKrs6fd2Z7WzVR4D5iPL1WYC0LZ5OP
         xjSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mtK564GwN13twOOLm95WTcRBvmMCcTrGCrxtFw6B3/I=;
        b=VHaT5Kt1+jZfCVc7vTQELXRrivN6GsIqpbv2lSxkRpbeB0xahtv1/dnDukNhUpws/4
         PKEcvk8/bZzCznWbQ9z1vdE5DIUleaZzHV3d6w8p9w9H5+O0eOUFTGKY9xhwPpdV4Nk/
         nSimRVIzqoZ8ZJXX6wjV1Gl9L8VrKa33H85OJJNVkL2a1VmrTfIXCV8dJY16IOX6P+dL
         TG4QaNiTWCQtGT+fT6+Ye8LQM+V5JWclFhaY9+Pp9NIL8RczlW3miEMYt+OEs1wVWtGw
         4xUHotTmO5zaPNVj72KC73HAq56vxnJ5RSLLje8mVv7tEtNCReAuZa7qBfWhYK2EAOMu
         nObA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UxY4frBI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id s187si10500ybc.2.2021.01.19.13.33.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id g15so772493pjd.2
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:33:25 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr1766792pjp.101.1611092004518;
 Tue, 19 Jan 2021 13:33:24 -0800 (PST)
MIME-Version: 1.0
References: <202101181440.hvKuMRGL-lkp@intel.com>
In-Reply-To: <202101181440.hvKuMRGL-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 13:33:13 -0800
Message-ID: <CAKwvOd=-vBopoAXTheomsA0iadEFzLXtbPZAaFJKqYESSuEPxQ@mail.gmail.com>
Subject: Re: ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x36BA):
 unknown relocation (110) against symbol
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UxY4frBI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c
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

fixed by: https://github.com/llvm/llvm-project/commit/5fcb412ed0831ad763810f9b424149b3b353451a

On Sun, Jan 17, 2021 at 10:06 PM kernel test robot <lkp@intel.com> wrote:
>
> CC: linux-kernel@vger.kernel.org
> TO: Nicholas Piggin <npiggin@gmail.com>
> CC: Michael Ellerman <mpe@ellerman.id.au>
>
> Hi Nicholas,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   19c329f6808995b142b3966301f217c831e7cf31
> commit: 903dd1ff453e458fc7608ee4df42a6df16d3d1a0 powerpc/64e: remove 64s specific interrupt soft-mask code
> date:   3 months ago
> config: powerpc64-randconfig-r005-20210118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 95d146182fdf2315e74943b93fb3bb0cbafc5d89)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=903dd1ff453e458fc7608ee4df42a6df16d3d1a0
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 903dd1ff453e458fc7608ee4df42a6df16d3d1a0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x22FE): unknown relocation (110) against symbol interrupt_base_book3e
>    ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2316): unknown relocation (110) against symbol __end_interrupts
>    ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x248A): unknown relocation (110) against symbol interrupt_base_book3e
>    ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x24A2): unknown relocation (110) against symbol __end_interrupts
> >> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x36BA): unknown relocation (110) against symbol
>    ld.lld: error: undefined symbol: .early_setup
>    >>> referenced by arch/powerpc/kernel/head_64.o:(.ref.text+0x8E)
>    >>> did you mean: early_setup
>    >>> defined in: arch/powerpc/built-in.a(kernel/setup_64.o)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101181440.hvKuMRGL-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D-vBopoAXTheomsA0iadEFzLXtbPZAaFJKqYESSuEPxQ%40mail.gmail.com.
