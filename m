Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXWXQGEAMGQERABSYGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6D33D7F36
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:26:06 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id j22-20020a50ed160000b02903ab03a06e86sf26031eds.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:26:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417566; cv=pass;
        d=google.com; s=arc-20160816;
        b=XDlbAMaC3CXQTu2yAYc+ZepgjQz7DS7v7cGc1a8d2nkrpG1HmlNkBr9q3vz4ZPrpmo
         iOZ9fxblLUQKzlQufDYfz6OWVWW/2ASwlz3KHw2GohuyQqOWGLSeNFqVs7AIvSuKiIjh
         Q0YD9a7RGdM750xtY96hlFztnmTWFVHCT37Vvr5s+V0J9M9DzYAjfQogtvk79a/Unq8H
         lM4+OplYX3yD3yQBdfJcPP+f1zj0A+kJ22GY7xtDbIEsKjfoxLuHyVUUJ3+CiJr8rceH
         7IUUSPAumbZ+Wao/XGva61cWbfZLp6czdF/NYmApo3/8gviJHy3tgAM8FXhLKq52W2Zg
         tGKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Zy92GLfJFwSFoexk/RQLvk5EdyXfJTAjMzQPh1WjfkA=;
        b=RM/5k28TRKJn8j3FUGCzcoAwp5lSYKzh3iM2hnHFir/TtWsQ5SfX9nP2CL32dIDng1
         7/HBvSj1Wl5TyyIml1XVrESfQemcZAoW5/599bcA/51sp7dwgYQDFBSDGAHPIU2hhqvV
         8tvzG6qrHEVKfiMmJpnjrnYfms7irGPyv4LRL/7hT9lt8tDyhMtFLwgu/hR86SYIyywd
         s6z3vcoDUjA3SHd0JkknNdChK5GIW46dVvtZul9GJ7D+YPikoHEUtwAyllvd0Tf6THls
         Mb98FojSptVBPAJ/behNjv3ZqfwmisiTMrYLmZ160AYqh9KIPS/pNWAtL3bvoaFhWgLz
         19NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SGmBbFje;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zy92GLfJFwSFoexk/RQLvk5EdyXfJTAjMzQPh1WjfkA=;
        b=lgWRRKN3dtS4uOSw36PmwlfwWJWxqD0S+42rTGW6rP3mI+RYMtHUB3dtTi47byzSp7
         akjx/YuAqKIdX4C8MqoD/Xfh8P4sI8405DFb/geqZAveYV8t8MfzyD3or2PdSyRJuzWO
         FBYATk3SRpNvtXUkzA4ZoEBgSDtSgyRRK6IpXoe120NJGAxut/56J4OUu9Zg10fg1P5G
         qTzA9uymduMq37KDWCNnXX+AMbLZL4lPg41nbFvmiOW7VKA6Bu7qzCBwT+dBIpomdVRe
         kVQR1soPLSn+fy7Ik2zs3B9lG7Na+EyS6f6GIFW8m+al4/FxQIHUrFi4jeFRSHXAyBOj
         wsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zy92GLfJFwSFoexk/RQLvk5EdyXfJTAjMzQPh1WjfkA=;
        b=aXogAaGtillJwYHVloOfDoWhXX3+Ahbw/23mzJsMH4ZTad1AtKtFWE5C9Gu1rph5ps
         79HmDhqaoRbphfuiQblLRvzL51FdjQtT+0uiCZsxctx0fl1SIrlij0S+qa9aiprUNYHb
         xpTG42GGcMioO7PjOWl5v+HNMCojM2mwKBfUuMvRuZzCNRdnBwq96z1PKXpSh4sN4/ql
         nOLCNFOHvpRuVcQ6TglTmPyZMjVzCJTdN37I3Qx6LwVxgrFa6QZmU0giJx50vsqmEVQf
         rakRmc45i+pgZ313KoEr87uX7lj7RHLcJvs2MV5l0yyM9u3Hmp1YXOrjl0rh0bfxsIE8
         dQ+A==
X-Gm-Message-State: AOAM5318en1xv9xOn4YFKuFxIAyk34SAjvDgJQKpqMyu2ZF0FW8Cbeuq
	Tjh/wswFqeDG7V01pCQggtI=
X-Google-Smtp-Source: ABdhPJw+nJXmT7iq3HYw/ENHX4nmVLOdZ8Fm3RY1h2dbrD1mC3gi2JgJAWaIHfqyXOTXE3Dc0MU9gA==
X-Received: by 2002:aa7:ca44:: with SMTP id j4mr29106756edt.203.1627417566798;
        Tue, 27 Jul 2021 13:26:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5796:: with SMTP id k22ls7457ejq.1.gmail; Tue, 27
 Jul 2021 13:26:05 -0700 (PDT)
X-Received: by 2002:a17:907:75cd:: with SMTP id jl13mr19383816ejc.327.1627417565722;
        Tue, 27 Jul 2021 13:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417565; cv=none;
        d=google.com; s=arc-20160816;
        b=s+iYIeu2jhwPR9oeFcJ8eK9qZ4M/sAqPoMRmwK3LVbQ7WDy4cDsyNq6xZfWcRWDPkt
         WNlLUHJSWphzHRXW0OwKR98rcs0bJq9uFUlPsJAILlKsConOSXC+I9LtYqqGtkVcLWad
         azaaTOZFijAVhvk6GNAGqCrR9myV1RSEtcVC6Xy8gdyqtx2B0wWf8e/t8/Xp3oPWzJn+
         /J1jxciUlbvryRnuvBBTMbiBLjpqHVfWHAIu1a3MLZLEMeshA25Y1M3YctxT60/kcZbC
         BaQ55i+zR00B2tHZfDadRmGGkWjf6LvE4zwEDiGLuinKbm/kZVIg9yzy27RoGDPYr84u
         eIrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5W7I5NJ7607nekgTVXMsjnvhBYEaNIc7ZnBD14nK1Lw=;
        b=z4bm/vMlLhqpglPOWjGt38LobT/EcdoXfzpfJvQmIaiEtTdOYuzRIYQQh/ORxp/Ynt
         FgZ4HLUYBS0XRDD/fmS8px+KsevgC8GlOxGMj2Xcr22gz4NNWWiu2WnZea9cVmaPcxQV
         kM5qWRKi4/hUqI5PTsYSeC+4o9NASRq7LgWlfTLSVoqp8fainy7o4ZC5Yjunk2/dLtyy
         ppEB60qHx+dUxS8AKmz5qAd1JexAfcpG4AE4u2EFHPKS78IW8DXdni0ifedJL4/A2FXW
         2XgHPE7vxCnNqDAQzcWuT2bhatTnHhbNF2xaJyDsZ/IC+S7v6lBaxNGA+eZ2ux4Zx0B7
         ShuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SGmBbFje;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id d26si233962edr.3.2021.07.27.13.26.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id h14so23895458lfv.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:26:05 -0700 (PDT)
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr17532275lfv.122.1627417565216;
 Tue, 27 Jul 2021 13:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210718130748.230758-1-paul@crapouillou.net> <CAKwvOdkVEa-CxbVschn5Tnh7-Ynvzcz+zChhP3LL3Q745wE7_A@mail.gmail.com>
 <7YIIWQ.1TU3IBLL4KNC2@crapouillou.net> <20210721161719.GA9805@alpha.franken.de>
In-Reply-To: <20210721161719.GA9805@alpha.franken.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 13:25:54 -0700
Message-ID: <CAKwvOdmAxEUdSM-6g+pGHLdtzm1sRDoiPqMP_hWNLM9E4Kp7Dg@mail.gmail.com>
Subject: Re: [PATCH] MIPS: Avoid macro redefinitions
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Paul Cercueil <paul@crapouillou.net>
Cc: linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, 
	list@opendingux.net, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SGmBbFje;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Wed, Jul 21, 2021 at 9:17 AM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:
>
> On Mon, Jul 19, 2021 at 11:10:55PM +0100, Paul Cercueil wrote:
> > > >   #ifndef TOOLCHAIN_SUPPORTS_VIRT
> > >
> > > Same question for GAS version support for virt?
> > > Documentation/process/changes.rst
> > > says GNU binutils 2.23+ is required for building the kernel.
> > > If we still need to support, have you tested this change on such an
> > > older version of GNU binutils?
> >
> > I have no idea about virt support - I hope Thomas can answer this.
>
> virt support was added in 2.24 and xpa in 2.25. So we still need the
> TOOLCHAIN defines for it.

Ah, ok then. Thanks for finding that.  Perhaps Paul you can note that
in the v2 that removes the commented out line, then we should be good
to go?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAxEUdSM-6g%2BpGHLdtzm1sRDoiPqMP_hWNLM9E4Kp7Dg%40mail.gmail.com.
