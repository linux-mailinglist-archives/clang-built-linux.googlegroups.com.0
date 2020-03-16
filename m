Return-Path: <clang-built-linux+bncBDYJPJO25UGBB274X3ZQKGQEGOUZC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE081871C3
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 18:59:08 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id j5sf2367515qvo.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 10:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584381547; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndYGBrNoyac104caI+Hd9eit6W7kmHXYP0y1lY3TjpqzRalkBCezT5VJqaUsjGPoet
         YygEUR7rzOZMz4GYhpybkJ6XQu/+GCNEGrHOWOcxvxBlm9XoXVyLqwT6s5h+pLojyGWM
         2avhhS/0d7NHyXz5FYlKLE4xMlxjJd68bW5qLSNLxBFTFo54vx21MrwKksmyNSRB7Ara
         qR9U3R+B05la+PyXihVSUyJQzbvsxGYnrOZ5AxHY2pnP+B5lay5snb7Ljz6LHtG8gorj
         es+Ok31PEiV04+BtYdCpn3SF9CGvtENT+H9RomhozZGvpzaCWdS6sc2qnAyiDeIG07NX
         jhmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YG10SuGyLxR6HU5H7saq9dePmChJxtQjnmVULFsR7ew=;
        b=nyxTUZcQhZaqNmXj33XmA+DJ5t8hXyHiLDb35SneOY1Ap3lYdcc7Y0mZyMaRYmtyMx
         XGI0zWsj2IWjd8xY8sS1wabZO/6UKOOwuer8p4mYGabQQ1nrsZNlCjqNCTQJTrTw2mUZ
         fBAOZXP5WTeIhJOihWG7nwM+f+IMWwicdSusU5lmMR32HjvTNMCDA3d97RfUAr5+eVH5
         E7sdgLyS+25c4FsOvvIJk6aB6GwWUCqQbd4sKz5deb9gTh22Ef4RlDkr3dD1ISy6IMrR
         dt4W19j5u0bHfOhHqKdw7E+ruvyAG8n7CrftkYgh+aM6yLPcy1IJu9H9AA8tRUOsAbij
         QJCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Qo/xzfzn";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YG10SuGyLxR6HU5H7saq9dePmChJxtQjnmVULFsR7ew=;
        b=E4+uIAtkEWWZsghPW9li2+Y6Fljolv3asLSM5L641awzzPb+dCrI9HxL/y0Pi+ljFx
         7u8adWWWfh7ASKN+3FRAOEmBM9hypd0I9UbaQJKb3vVaURVcjtpVOYK7z0MtQtZ6VwlG
         OAsnwq+0uTjaFGFtfAPWb9mkTzw6WYDcVsXqWK9EmjUcIWqUgCV9Qcu+I5gOyStHSFhs
         CAQt0YTs+sv2wNj59xfIQiTaBfjADkbhwEGC18EXa4Insdjgl7VUP3BailbTJyiVmvaE
         oUus1HJE9RZo3GwEnAYZeqJZlkI6rRrHZZRFlFujbHeloSCVRJ5MRYdIwb9/hfrCJOaP
         vH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YG10SuGyLxR6HU5H7saq9dePmChJxtQjnmVULFsR7ew=;
        b=X/H85Nm6sshkPln/z0HQu5xq+uqaGFx/JIeUbOtlC9g7sHSqvtFYpYuo/YskTDypog
         ECaBxt1ABiJYJr6gYZLUxKos4xGlwJOTME76BN48MmtglregY9pmlEaSZfhVW6Yr2AAb
         iZ5shjf/69VwV+afUE33RDflnmC8PqktGGod1bUrMuno32CNyFFnpwbbsyFaT7cptyf2
         rSOVkPaT7BfNorkHCpCYY5+Cyge6TPOpFPWus7I06AY87wM34cy7SB3qxn3T814ydRSq
         GrH+8JiTyp5nCZQxoUokCuqPQcHdI5rigpuq9TOz/zA8gL//Ji+cUGXAuIioyrX5Y0dl
         Ponw==
X-Gm-Message-State: ANhLgQ0yQ9oX2sa7obkxC8UG0tN/QKtdVvCgcQBhydpO7+aD7n2TjzEB
	6WbbB+tU8THWLEyGojsbJeM=
X-Google-Smtp-Source: ADFU+vtVeJQ4KiitrbMSYjIea3fZX/sgO/8BgifAQJI64SWTnmuRlrKrhD+QSY+wDMDXCcK4uvghVg==
X-Received: by 2002:a05:620a:20c2:: with SMTP id f2mr960401qka.296.1584381547664;
        Mon, 16 Mar 2020 10:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ab1c:: with SMTP id h28ls1276087qvb.2.gmail; Mon, 16 Mar
 2020 10:59:07 -0700 (PDT)
X-Received: by 2002:a0c:f74e:: with SMTP id e14mr945100qvo.111.1584381547275;
        Mon, 16 Mar 2020 10:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584381547; cv=none;
        d=google.com; s=arc-20160816;
        b=hhY13abyI1rdslerR5PqDiDwW0dJy13mgZLz2gHqA5Pew5mN9y36MydH4xV9W7Zpdk
         gxCVlRFQwKM+Taruwhcc49CoTjYbirQqdwUEi1AUeEkt/WjmtzywIh53YFQ3+Th7Kb5R
         sjsy5esogBLET97TEH44rSYUQcB9ZHFaLKpUf2gwE0QExzCdMXJQVR+RTbGaojU10RRu
         n6tjIAhWA87i+5JZgAFNelSvR31GsmvhnbTS2/2OUPqsMiiBsa9zvmzD3zxqGFvg1K04
         nLhGOMUWUjYdGvv7wbp59c4axmEaPCj4vqzNKwNb+ZWzKWF4rSk0KJ8BuDzrojr+X8YW
         9k4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y9A2qyrhIoBLt52BQE5nHu2uUkNbv5i5+D+5kM4kp3g=;
        b=yarMqNj2jViPkkwbad6cfMh21cX0ai4V5Qqgq7kGeXc9SW7866BnozMYJa8PJky89g
         glt/CGMscgE1YLj1Pnte7Woayx9VoRY0V/DdKquYkHImxuNxnPmz6xLGexA5pKucMGAK
         fb7Tfk/inGGHkcbTgwNg6LG1jHFLRPN8tiMLo4fK90vCRKrQzGN9vCGkxXHO9/si8uN4
         h7b+J/HzzOg6vzlIK1iLCQYYXIwbpDOMb0SCRGDqlsW8XHs6f22DbmTamcgcnE4Lwh4l
         s/0SBGbOjezthLQ+YphyPn9o8zMGD85KYfNCV2Zq5G3cxdXfHRO/T4Exf9uWvAKGe4ln
         p75g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Qo/xzfzn";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id 198si40926qkh.7.2020.03.16.10.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 10:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id n7so10387388pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 10:59:07 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr977079pgb.263.1584381546536;
 Mon, 16 Mar 2020 10:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <202003162059.ZCND6O04%lkp@intel.com>
In-Reply-To: <202003162059.ZCND6O04%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 10:58:54 -0700
Message-ID: <CAKwvOd=9hyDOYeby78fpaGF7UzQVFD97bUPCtDQD7zSrYwWyJA@mail.gmail.com>
Subject: Re: [robh:for-next 57/57] clang-11: error: assembler command failed
 with exit code 1 (use -v to see invocation)
To: kbuild test robot <lkp@intel.com>
Cc: Rob Herring <robh@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Qo/xzfzn";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436
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

Nevermind this report, it is a known issue on our side:
https://github.com/ClangBuiltLinux/linux/issues/672

On Mon, Mar 16, 2020 at 5:32 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> head:   d047cd8a2760f58d17b8ade21d2f15b818575abc
> commit: d047cd8a2760f58d17b8ade21d2f15b818575abc [57/57] scripts/dtc: Update to upstream version v1.6.0-2-g87a656ae5ff9
> config: powerpc-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    /usr/bin/as: unrecognized option '-mpower4'
> >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
>    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1111: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:179: sub-make] Error 2
>    16 real  4 user  8 sys  76.44% cpu   make prepare
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003162059.ZCND6O04%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9hyDOYeby78fpaGF7UzQVFD97bUPCtDQD7zSrYwWyJA%40mail.gmail.com.
