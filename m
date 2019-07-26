Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3XT5HUQKGQEH3QZYRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id ED27F75D8D
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 05:56:31 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id s25sf44052824qkj.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 20:56:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564113390; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovMmo4u9SnaYNewBj5nn7P80c3moUOQTYmwCPJmtxKf1QCmrMciC/xKH+wwicrCLqE
         tJ35peFHh/58i8kzxdDnU2+8w5aGYRMTx+a3VH2vvcwJuXwsBrz0noe5NHnYtAEXLNBs
         AgVqX02qJNp8lRIJp7T1k/Xr8tcTRbGSs6UJG/yDJFSG2M6cQaBhbP3E6WFn7cjB/gcr
         ORfCCCuqJZDEro282/B3ihFUxn5d+tDkdmIj5uSmlybtFPB/uezxr5K3F6IEIEfysUEv
         MGC1MWGIWGhaPXGgmQhDyjgdUZWwbK8WXrBU1j+3/Ll652yaFx9/wwxbfaeTPq3XLxV2
         AvmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cZy2zSWH2Azk6UrRnHQYbLy884x/Nrc2waw/UfvsQOk=;
        b=JmGYv4l9EMiOsSpSE9Ni8/DLz+tcABhpQs1PpV6N/iIMugPAuSQDD4sjHqb5k75w0r
         CnA7to4rAzypO6QkPOwWMG556u1dvahp5/VD+5BG3KGLlEnditv216Uvrpw7Itat+2Nk
         hp/hJONRLABP1NI7A5Nkr57YPmkWisAJ5WsWQmVei/e9xxo41ZnW4uzu09/WnPf4NAij
         UnRpvzb5InAoRV1Db6BrhqIPUoHXaYkvIJbCgZ3QG5gOoGts6dpeQ1TcImG8L2CYr8pw
         rPKJ5N2G4R//wyZZDvTkQuUI1cg4nInsmED0H3r8tuZU1vCvQb6DFbMvxyLX8erPVY+h
         UYGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JdzKnBbx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZy2zSWH2Azk6UrRnHQYbLy884x/Nrc2waw/UfvsQOk=;
        b=IsUKJ5atEe/Sp4eUGtUwm0TWDmvkfroca334G8n6GIdJU1a7Szk9z3rN5XY3aISBto
         7xA2uCEhGmEiBfPOGDecB8ql+mjhYkzsNSQV2xEV4SFDq+ZzyOr+JMcEMu51+B+XH2iC
         ZyIz0YnMFhjrii6avvPW///WjhBUd6aPcWjG0bi1/q80/NdSDXdBPSe8eW+eDydphQK+
         jEkfSQNNte1PbhkelusZ8/Kr87AzCt2CT1MJTTnJ/eKarBq0I26LR0te02kDs6vGrDqv
         umoQw1Uqj1kM/RwqI2yGHpfk/jki1UH5Ok2GN2S0gFJOhK7yFSSUHDT2xP7yj41OcbuL
         8Wfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZy2zSWH2Azk6UrRnHQYbLy884x/Nrc2waw/UfvsQOk=;
        b=YEB4f5BXFihl/uAi7jNlbaBNwaNdJNNFWFwlY0I1w2Iq2lbq7uEW9nImBBo7e2kQA2
         /UO7WZ8cpeOJ4fyga4ZiU5kYOp9ZFXHQHNYW4I5iSFCThX4bV70XCC6SqHan4OuJojQc
         T4NZIrZEEnH1KL7R1mle3dEAjIi10/MEd0HHrgcJQL+k+rQo1TDoVgkcjU11fRpk0L55
         5EG4GmvFrII9Sg9utgHnNpwuCw3dqbLkiew6mne66E1xE68j2ifglaJ0GDoZlTGYdYqT
         kPvsd98kOIDb969zk9UkRs6UmZv5czxfUw/2kiwjZcG8ijEMHiNR8Dul5QbFkfmI5l1n
         y7Yw==
X-Gm-Message-State: APjAAAXq87GjI2mNF6/GiQFuy0O2kngKKPeXu84D/ll62I8S6lXEVmwX
	xjYP4D5OfL9/RdJvohSkMcI=
X-Google-Smtp-Source: APXvYqwpaPZ7EZLNn5MmcNPBetndRkhVvIy3CiHr8XET0mfv18bd2zh2/olOsz6Itik3JQ8Ja9ez/A==
X-Received: by 2002:ac8:70d1:: with SMTP id g17mr65477341qtp.124.1564113390607;
        Thu, 25 Jul 2019 20:56:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1112:: with SMTP id e18ls8424356qvs.15.gmail; Thu,
 25 Jul 2019 20:56:30 -0700 (PDT)
X-Received: by 2002:a0c:afac:: with SMTP id s41mr66769577qvc.184.1564113390392;
        Thu, 25 Jul 2019 20:56:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564113390; cv=none;
        d=google.com; s=arc-20160816;
        b=pT5GZVtf3JFlRfcZRD+pXmeoG+HHZ52p8PkbYq3uqzmPlv1IzEtNTwoTjZn/HznAsD
         Y/47C5+c0yluRQVGghq+klYyiqJhcSfDsm96KaRh6FqG5IvBRFAzvme8+yUPArm7TuJK
         6iuNVh9CjymvXhP8xahhfmAtvvBlLz2eOq/79wkbGETeFpWEKAC5bCS9q95rWlgZpiif
         n6dVyiXtxguFiv3HQxNuNmklJbqF4ZNbHUigpqqTWfv+3SXNzuC/fodIH9kbBShPpu6H
         cswpyTGbaBLNCNT6lvDbvd3XPR11/N1n63XxKR+nliMHz//5JmQdNatUDG+r1uAX7bu0
         AMNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P2ixpnnhJdbF/TFE1cgm/Jip2PWsYGdR7zCTnF/foik=;
        b=uG1zHbZj1jG35eETnLWrzUbTp+Pj0Jp6xB47c3BRbgV0mAIEjpF+nki1drcBcNyDPm
         YKU5Vh5Nl8rKGnRfs7eRxTU0DkrcXBLfqsPHBY6uoKGIf8QoJQ5GA3EjgzLJIHY4YPQ+
         UdnY3hpDFmoTrYwtydqM0SEW0Ncw0FmOKJa2VqsOMvfXJqruk/rkeildgc1Vb95B5Me0
         wE/BOGKL2FvGpA2NqUtX0XDQNLbkmknfOELh5XIm13NdHN7P9Wqn0+mwFk6o7ydAeRuB
         o0TQMnw5jpalJoYM01eSZwKzHYBWFjmZyw2kAaVqBmh0M1+yDZWZWI7Mi/cehjzKdqj+
         b35A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JdzKnBbx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c79si2345330qke.4.2019.07.25.20.56.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 20:56:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id r7so23806468pfl.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 20:56:30 -0700 (PDT)
X-Received: by 2002:a17:90a:bf02:: with SMTP id c2mr96679291pjs.73.1564113388994;
 Thu, 25 Jul 2019 20:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190724002233.9813-1-k0ma@utam0k.jp>
In-Reply-To: <20190724002233.9813-1-k0ma@utam0k.jp>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jul 2019 20:56:17 -0700
Message-ID: <CAKwvOdk6ENe-K3V67rt26L8HOn7xMpueBwZgg=+r5LM4XrN6PA@mail.gmail.com>
Subject: Re: [PATCH v2] .gitignore: Add compilation database file
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JdzKnBbx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Jul 23, 2019 at 5:22 PM Toru Komatsu <k0ma@utam0k.jp> wrote:
>
> This file is used by clangd to use language server protocol.
> It can be generated at each compile using scripts/gen_compile_commands.py.
> Therefore it is different depending on the environment and should be
> ignored.
>
> Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>

Thank you again for this patch.  We're working on adding clang-tidy
checks for the Linux kernel, which will make use of this file soon.
Keep yours eyes out for it!
https://reviews.llvm.org/D59963
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  .gitignore | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/.gitignore b/.gitignore
> index 8f5422cba6e2..2030c7a4d2f8 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -142,3 +142,6 @@ x509.genkey
>
>  # Kdevelop4
>  *.kdev4
> +
> +# Clang's compilation database file
> +/compile_commands.json
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk6ENe-K3V67rt26L8HOn7xMpueBwZgg%3D%2Br5LM4XrN6PA%40mail.gmail.com.
