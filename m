Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6GDQ72QKGQE6IENCWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 428EA1B63F0
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:44:10 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id w14sf6158028pfq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587667449; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahLxOap+VwTG0o5CPF5QzjWmoZ/oRjchixJ6xypsQ3M2P7MV2sm5m9HUiBmL2vjwUm
         jrAXURzyjRpZqq4G9z3V5tM/kokRRAq0srPDCLO20WztQCXkwLZaxe5nikj+IjNs4xXM
         qz7zji1v2tXqDztQ6Bh0uSubI3b2hgGtQmQFbWXqPCfAWR5X7/CRncEP9u700itJZnGj
         T64+oWNllihOwK9IfcZGa3jw+kKVhDT+HQ7Qo9ghLQhPlA+PgmrwRgnTuGQyvqyt+18E
         I0VJRuel6eHf9/HMlemDFeMcWwy8do3WAqfwH9MVmuIov2+FfGe2EtkFgnQryAhJYfm1
         4KKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qBkS5eBvkcUx30bWmQgj1sJ2cWQbU1lNybBERkx/P2o=;
        b=d19BdDXEyfCyNyOoTZOwf/BAI8P9+Cq+HC/MQihpW/zkmIprkDgg2tIIY+cUq6CGGG
         1A03i93I6bYcxn0gqxYCxLr/kQHn5d3OiYMznLcf0QR286sVzHPBNQXO1z1tmcU4Odi4
         x2jDbmBPGN+wii1NoT5dvA00f04f43IusCQww+NhNfAnZ7qzOM/1I2naeH4F/3OXWfn/
         iXNvjb4i/3PEIHAdM5ffftfuyUe7PhjOCdUikWXqSwGPQGGTSx/SgmZ4n6STbmniTWGU
         DSXEjX59Gqdfr18xQs70KmTwYmRrlA8dQyy9BytvPd6M4yoyb9V91wRXe3FlD2yD+rjv
         N7qA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nf99pkAu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBkS5eBvkcUx30bWmQgj1sJ2cWQbU1lNybBERkx/P2o=;
        b=WGo0GRR1EB5/XeAM1hAfb8bdTnS9jP6+4KhQHdNzpPndxAb9Ed4lXPDs4DjgPhNmfc
         Ghpj+80xCCveJ8givzfChcttrSym8eDqlK4mayAHFbggJTN8HZSqE6k2HyWWqKWWD7UW
         6sGL4ziDYWqYT0sdr+9LjV4/6Z1+qiWkeYSahwZWVv0Ny7ap6Hl79r6wgda8da8cHuqu
         YLX3sHqhejnDwv/g8/+lQPOuy5kaQe/9cQWP0xiZSF++/I8ETBAJSafkd/BcCsg/hRAw
         7FHAHMP+JJ/68z0n6Y8vy+A2vULU7K8KilSYCYFkFOB5BeOnvjlynmy8SUitQAnrWPuk
         00jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBkS5eBvkcUx30bWmQgj1sJ2cWQbU1lNybBERkx/P2o=;
        b=jA4guIPGtwU+pTcQH3fBPMoJXsRKBc/ilIo3JHg32QUUHCe7a9HEfBuRFilfGMRsTg
         n8KvLXppt6P7NFEwotg08TFkp2pVbK1oAihoIazIUSmWsRGSzwAk+gpjT4qzjUKtxWz2
         jgDo2WjpZieuKj2EQAtxDAI3Mzmo9we6C+X2iCoE3EizzaX7gc2jZlYylu8RT7oWFNhv
         vtcxyWcfsYJpabPrSPSIDRqLlZWUvXbu0A9XzNMq8BFCBCWnFMQFj5EhWvdtPbV3HkcM
         gtRx3Op+yMdlVtN8EWRwepPpsD0A4ZXRaj3RbtJDx0k8fu39S+c2XAhp2bBYVjiS79mT
         DSCw==
X-Gm-Message-State: AGi0PuZdPstZzb8GiWgpUx5zoS8TW4SnXFNj3XPjvMuYFw9FXdG1zg1y
	LjsXtRJrbHCaxfiamd9FCt4=
X-Google-Smtp-Source: APiQypIZqIhakEX1WXnT7JaxlmmpaCekH6FMVXTVHnOALKHE3lpKjVMRoEYQ6VutThP2TRXO+HNKNA==
X-Received: by 2002:a17:902:464:: with SMTP id 91mr5235189ple.261.1587667448807;
        Thu, 23 Apr 2020 11:44:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5d97:: with SMTP id t23ls4460022pji.0.canary-gmail;
 Thu, 23 Apr 2020 11:44:08 -0700 (PDT)
X-Received: by 2002:a17:90a:3ace:: with SMTP id b72mr2210893pjc.48.1587667448371;
        Thu, 23 Apr 2020 11:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587667448; cv=none;
        d=google.com; s=arc-20160816;
        b=TQ8K894y2L4yNNtLU6r3Phgfh6680lmBwwMH+UqwyOB18umSlACPnborqq001Zt4/A
         KpW7eKp/WsOtryAv/tIJyheug2Z7E0BVgwBg4cxis2u8l2o8Y/mT7sVl1uhfM8hbDMvK
         LWQbFDfU+hjJV3RbIfagXGaZcBf/PaL6ciZPmSNf+bCxQ8q95tGtgWpbRLkiNiWwLmlm
         DMK8+It7ld+ymy2zoEW/E4KhuiKAjysd8ZJbZFjn7xUcOEaVsotuyDDrvW9DTacad12G
         bC5qyMpGv3HA/ZxovT2N8Gj+IQsSymAwO6u8sW0w2WnyFp8ncqOrrOD/+a60+wr4dPS5
         AxOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L0juQPPe5rfRYSQ0Sh7WpR1oaLBLNzpfp7k0pnwTsjA=;
        b=Pv29sdw/gkir/9qnGe0gJRLCoWb7GoWNXhYBb2zzZRXftZveRnbq2Mk8+hr9MBaX/c
         2DEm3MhUWVDogIhdY2gEIJCvy/OORsR9wGJBUexcFHzd+4Q2PzttO710D8yS+Gbpwqpp
         BB6TWsyOZgZe2mxtJ12SMzcZfWcoxWECMW/ZfTYhYXIMq560Vg8/EKzcAJdpfPA7+0Pg
         RMTAxcPphV7YKuMu1JstzGGlzDOqlSZrkANFPfEhEfK3oqu8RnIJ5LfhYdKre9Lr9EaR
         ++gR9Q+XGQgRu+8nk3t+jaWmj5f9bX5p7U4SETT3kbtu+Xici6ejxz55lk/Oxqy88p01
         oG3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nf99pkAu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t15si317587pgb.1.2020.04.23.11.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x3so3398507pfp.7
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 11:44:08 -0700 (PDT)
X-Received: by 2002:a62:146:: with SMTP id 67mr5168262pfb.169.1587667447736;
 Thu, 23 Apr 2020 11:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200419131947.173685-1-sedat.dilek@gmail.com>
In-Reply-To: <20200419131947.173685-1-sedat.dilek@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 23 Apr 2020 11:43:56 -0700
Message-ID: <CAKwvOd=Rt0q0+nRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] kbuild: add CONFIG_LD_IS_BINUTILS
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, Tejun Heo <tj@kernel.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dan Williams <dan.j.williams@intel.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nf99pkAu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Sun, Apr 19, 2020 at 6:19 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> This patch is currently not mandatory but a prerequisites for the second one.
>
> Folks from ClangBuiltLinux project like the combination of Clang compiler
> and LLD linker from LLVM project to build their Linux kernels.
>
> Sami Tolvanen <samitolvanen@google.com> has a patch for using LD_IS_LLD (see [1]).
>
> Documentation/process/changes.rst says and uses "binutils" that's why I called
> it LD_IS_BINUTILS (see [2] and [3]).
>
> The second patch will rename existing LD_VERSION to BINUTILS_VERSION to have
> a consistent naming convention like:
>
> 1. CC_IS_GCC and GCC_VERSION
> 2. CC_IS_CLANG and CLANG_VERSION
> 3. LD_IS_BINUTILS and BINUTILS_VERSION
>
> [1] https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6c6637bfa46
> [2] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n34
> [3] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n76
>
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>

Just some background on Sami's patch.  Originally we were using
ld.gold (for LTO for Pixel 3) before moving to ld.lld (for LTO for
Pixel 4 and later).  Not sure if Kconfig would be a better place to
check if gold is used, then warn?  I kind of prefer the distinction
that binutils contains two different linkers, though if no one is
supporting ld.gold, and it doesn't work for the kernel, then maybe
that preference is moot?

> ---
>  init/Kconfig | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 9e22ee8fbd75..520116efea0f 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -16,9 +16,12 @@ config GCC_VERSION
>         default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
>         default 0
>
> +config LD_IS_BINUTILS
> +       def_bool $(success,$(LD) -v | head -n 1 | grep -q 'GNU ld')
> +
>  config LD_VERSION
>         int
> -       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> +       default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh) if LD_IS_BINUTILS
>
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> --
> 2.26.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419131947.173685-1-sedat.dilek%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DRt0q0%2BnRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw%40mail.gmail.com.
