Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNPCQH5AKGQEDBGC76I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D2424E468
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:13:26 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id mw8sf1844967pjb.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 18:13:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598058805; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZgTsMoY0dNTahQZO+MwcPXURUO3uJxgkWVukfTH1W4MmIjhgmYJe2UfrzbJKbuF/J
         EgPcNtXhEGtZiYzX/nYUHurTHPXKBK2bp8K4RgZG3yb1JUmC7ccHQ2K6DglTyy7ttTei
         8KcXm7JPOjLHxMjdMvzOpgveJlxhIybIa5UKpZiLlADKDEq7ef3pWGHdztLigrlczCWU
         aE4bBV4PvF7X2dyqoWCaWz/5hLhDyRpwZ4ZPYlb8WD8X+phGRGa5znKO4iMVqdsDQLzo
         EBtX+7Q3akqg0UmO7WYbcfYRpu7/setBUulpqML2rQ3mi4Q+Q/vyjJwg9wU9SJR3Qtzg
         yASA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=r+idoC1hoLr+5XYf9c18DeJ+fC9jaQjCvxdw6kfBBcg=;
        b=UDc2eaCAoXmwVNjZvE8ERT0rSzC29yGrrWDDjpKAG1y26t1hRzMpS1hWzA1LXhzV3H
         T+FjJYQYCQXngT+dfvL/Gif3e/Gx2ZZTPOrAUHxzO3EPF3+1tlx/xIzGEl8u9XlZ0CTQ
         rKMZcFPqgv2EEzFim4BfJ1axqoTNQkpwkejZMxrH3BtAkqP45izztAYw1mYzx4NeBggz
         CzA0J6pSv+KWJ4jTglpmVUcjDtva9Zz5PAgVKJXhV+Gg6xmywsc/lOvN2Lb9oCmyCpsY
         +H31iOm81HLV2bAS5/6u0A9RZMSYPAZCwGfinrJvpMXOGO1Dl/Q2MRd6uf+/AROV+Koi
         fkXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9SPSJpY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+idoC1hoLr+5XYf9c18DeJ+fC9jaQjCvxdw6kfBBcg=;
        b=G6wB2xyQzxpGxzBGvOHS8ITtz9LJTnoxIuLv25oi/z8DhvM/HAaLW8H841JJMSl1W1
         qBZ9KgsWdGkGFEU6U4VY7mYsPXCPQShESW6XQQDoPsmg7Q+uTqnH42tlFtsfMmg1OoJ0
         362TiQHnriVC94s++Ye9csZ0w+rvGLWQAQbKGrU2U4mm/r9SuIY6ihxafbew32eyDdgT
         i3xOgT8lXgzfT2b7sha3wyhzzTZOuaPj6LbqXGp6ITr3NNZR+LpKOxL1dQxK8AsZaIZM
         ZB6M/4GYny3FOca30jZ9r77sEdvTaCivO7/EHPdFBu9UA8pHC7DFyam2pkErL5jacgEl
         9z3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r+idoC1hoLr+5XYf9c18DeJ+fC9jaQjCvxdw6kfBBcg=;
        b=tkCiZxOmOgs+ViuvCie3FgY5uN0o51Ha+Qtq50gPE+SNkubBPnO8nkYr+dVzu5+DJ+
         P9JpfcxmAtyBQQYFRSZdMEdOvyui3YyFWN+g2BB3jfvZCvhl48nYb4XIq5yCdwLWnBue
         6gayy5UwvTr5dZ9LtHQJ9+4pRGCpt5FSIk1go/Y4WdoOBRaMhklWwwvb8hpl/00kvE1m
         ig0jzyEIf56MmU8A3KQiv+ZRYXqthWiTzSgxEKCQQTox9yQAO58YWUQxegZ5FsDpjPVB
         ePsnEq+I1TmrzNvE+8uY1Z5o+QqIwLkptJ9IDI05H4W9j1yXD2mW1kgGlw7SLvoHFNal
         GNPA==
X-Gm-Message-State: AOAM531M8bb0i3comOzbApvuqY4F+BeivPheItAZCrTnieLgWn4xTwL8
	E9sbfd8/Q0tR4616P9rAyiI=
X-Google-Smtp-Source: ABdhPJwyZsm13BnRHXTcFZwX9+BFt9JIKr3vdGPKVCpqgsoa0sBlUNoUKyXgnl08MA/SF5Wtg5buig==
X-Received: by 2002:a17:90a:740e:: with SMTP id a14mr4350522pjg.165.1598058805685;
        Fri, 21 Aug 2020 18:13:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls1153833pgl.11.gmail; Fri, 21
 Aug 2020 18:13:25 -0700 (PDT)
X-Received: by 2002:a05:6a00:851:: with SMTP id q17mr4551363pfk.214.1598058805334;
        Fri, 21 Aug 2020 18:13:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598058805; cv=none;
        d=google.com; s=arc-20160816;
        b=ait3qG14uh/GG58cTkpIedJRg2mFCFCwrWOSMvnv+UUH0YLmP3uLy1g5eQhiVDDYu5
         OXsA3T8cOQ34PVcU2Uvagvo/gYzGTvxDDFw7o9TMSx9fWzHi57h09KJ++Lq9JR6X+C70
         4NFXRzcSD7cOTpiSPG08WiL8CT+TDECl5Pd+JuIFb7C/lzpbuAgi0chjH6HGNFODhSA7
         4CftKIekqj26q7w7ssHXcsrAtJmAOQcFebstwTPVt1UI0E3VDF3W8k6ShY802PfqgxkR
         SFJhbnuHIj6KL/H/nHFfZ+nMlFB4p0gQ4WVdD9bGyjtOgGM12q1Q+1foIxGYsVg2JDXl
         7QlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MkX4C2RcNFAfKMgWs215Q5BrFctUrgWbt3iTbnMo7KE=;
        b=CI2D9kap3/uiyNrjxT52fXhMwphi2G51JiM+PLcG+R/ZN8m/Ne1d8AwMlr1qyzLEbu
         N8TFfRJzua7DIivdLxtrZS22+U2TKyxiKfa81pdlBE7YA55FKY5H3jqgMvMW3FiGpck+
         4crSJLwNCCdu3Z3DkGw2Kis01PqyNygCaHhBDGGhBYfyC5msXM9CVfSrVvr3adh/GLMR
         fScjebrqZKJYV3mVXhi/KnuIrpHkeOdIw3js9kKqs8X+oSIIq3KE/HmJzI9chv2oLPFb
         v34bfFecDgGdU3jrA6NNKBWWJz5nEWQR1LPde9f2zhggSPqyDq0goGwA1+Q+qq5R9SrU
         4aqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9SPSJpY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id s2si211709pgh.4.2020.08.21.18.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 18:13:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id o5so1798546pgb.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 18:13:25 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr4036262pgf.10.1598058804641;
 Fri, 21 Aug 2020 18:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <202008201500.aOkzA3ZM%lkp@intel.com>
In-Reply-To: <202008201500.aOkzA3ZM%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 18:13:13 -0700
Message-ID: <CAKwvOdmZSf2zKaqO3ivorYd9D+yALo5-6hctsSuaK6h2Ywwedw@mail.gmail.com>
Subject: Re: arch/s390/include/asm/atomic_ops.h:56:45: error: invalid operand
 for inline asm constraint 'i'
To: Ulrich Weigand <Ulrich.Weigand@de.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I9SPSJpY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
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

On Thu, Aug 20, 2020 at 12:35 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Vasily,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   18445bf405cb331117bc98427b1ba6f12418ad17
> commit: f0cbd3b83ed47803df941865f720934c69abb803 s390/atomic: circumvent gcc 10 build regression
> date:   9 days ago
> config: s390-randconfig-r003-20200818 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4deda57106f7c9b982a49cb907c33e3966c8de7f)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         git checkout f0cbd3b83ed47803df941865f720934c69abb803
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from drivers/tty/tty_buffer.c:8:
>    In file included from include/linux/tty.h:5:
>    In file included from include/linux/fs.h:6:
>    In file included from include/linux/wait_bit.h:8:
>    In file included from include/linux/wait.h:7:
>    In file included from include/linux/list.h:9:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:29:
>    In file included from arch/s390/include/asm/bitops.h:39:
> >> arch/s390/include/asm/atomic_ops.h:56:45: error: invalid operand for inline asm constraint 'i'
>    __ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
>                                                ^

It might be interesting to dissect this one.  Likely will break the
build otherwise.

>    1 error generated.
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f0cbd3b83ed47803df941865f720934c69abb803
> git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> git fetch --no-tags linus master
> git checkout f0cbd3b83ed47803df941865f720934c69abb803
> vim +/i +56 arch/s390/include/asm/atomic_ops.h
>
> 126b30c3cb476c Martin Schwidefsky 2016-11-11  51
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  52  #define __ATOMIC_CONST_OPS(op_name, op_type, op_string)                       \
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  53        __ATOMIC_CONST_OP(op_name, op_type, op_string, "\n")            \
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  54        __ATOMIC_CONST_OP(op_name##_barrier, op_type, op_string, "bcr 14,0\n")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  55
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24 @56  __ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  57  __ATOMIC_CONST_OPS(__atomic64_add_const, long, "agsi")
> eb3b7b848fb3dd Martin Schwidefsky 2017-03-24  58
>
> :::::: The code at line 56 was first introduced by commit
> :::::: eb3b7b848fb3dd00f7a57d633d4ae4d194aa7865 s390/rwlock: introduce rwlock wait queueing
>
> :::::: TO: Martin Schwidefsky <schwidefsky@de.ibm.com>
> :::::: CC: Martin Schwidefsky <schwidefsky@de.ibm.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008201500.aOkzA3ZM%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmZSf2zKaqO3ivorYd9D%2ByALo5-6hctsSuaK6h2Ywwedw%40mail.gmail.com.
