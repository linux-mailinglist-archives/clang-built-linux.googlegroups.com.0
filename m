Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMGSUT2QKGQEZ74YREA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F098B1BD578
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 09:13:52 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id w2sf823151wmc.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:13:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588144432; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfoXLJqe5aIMhPtKDSVpDMwTF6p8zuf0PyVZg3u+yp7b4mqcwPIojl1+ZOW85j4zy/
         iuPENWNAX4Dv61A3jrymhwT7LJsyI+dSZ++0le0dJp6DFIkf3r2m+egF8Ckw076VXNYC
         NPsqR0a52/Q24oUsMX/Q3B4hG6wp66EdaMD/iBN0uwjDZk7YY6l1EUb6Ld+FwplC6b2d
         CPHYA7NqMYjrhUanRoGPtM3EmgDrVBT8C39ZmRxy/u7Xg0WnhVFDNktPg+BpAcO7XxdI
         MXciaPD6VmHbi7MgrqZFiYPdSPVk/tCpZ0PYVcTG4RSYMEls28RrFIEJL5gz9kJyiXn4
         LoqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XdWxtZqpHwe2yjpKLw9/GPFI95Q+YKtTRyq5T9okjFo=;
        b=bJ39tI0ZbBATzrVoGLuSAVTP4KXERjQUVS/buy2aTy61XU3T+Ov50u23qN7LSjoDKX
         5aRfXgcNq+mN6RPggO1okcHIJjhC6JvKNTfxd9XQwg/Pl39ym2+LOICOzPfjmjzr7CGG
         Tx8ltG9HadFT7sw9DUf3f/2V0ozCBOUZS2Rc/X13RJl7oj+aq/WHElYMwn2nwLqWvKnm
         NlPXR/OpHxMNiG3y2vXO8qOh/xYVGDm/B5T+p1ooj/j9VWo0IRsxBONoUpclMSO7xhuH
         os4nyPLe38B+0/TFpgZot6DO+buR5dGoWoMICvvMflxEL+9012BflO+UiipRPa1TSITC
         /2YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=euN+9Rzh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XdWxtZqpHwe2yjpKLw9/GPFI95Q+YKtTRyq5T9okjFo=;
        b=Oy/7W67mW2pC/F1ortwAvPgWP2+MTjaCWXz90X+ZkymZKJi+HiP2qwW6MhhhgmFGbb
         hX/z98GmuUtKpn1jX/lhrXBBpRx+7exdf5VYHmuiP1+oqKmlJ1pcnNPFlFVXq6SGjgIh
         yu7n0LrZb56vutCy5FhmrRl3pAtsD+y+3MXfFE9T5lBLVqFRJkGR9T31iC5yQhtmpIqf
         snTvumfGhSC2vTLZXd4F17/ZdzNgrdL/Inu9XbqkOm6yEYAWMOwBBH0lJYztiBl1C8jK
         hpeXeQl+eZU/RuerCNAIsHXPiXjmgB6dm3TJMP/YyTLlnCyNF8BKYud5l8XW4nyPu5mI
         9lvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XdWxtZqpHwe2yjpKLw9/GPFI95Q+YKtTRyq5T9okjFo=;
        b=OagIZu4o3VJd48SEwSo14i3CAbPDeZwi0p/Mi9q/QdGp1i6y9vtrO4Jfvl8om8fSEg
         E8wEko6DuOK9yqFezB5YLWTrMGjkaSeXedBJOUTBddo6jFq5lybFNGHmYDwgWutWQnQJ
         9UUKDxsFhpVlKTFkEYmLmladyE9fD0Fb+4NatfzEeg639gAproJNTJYNhN28LsaSPv/l
         Oy2QaKkJ7AgjLuXQ5Qq/ZXJ2iAq2lJd6c01nZC2lLh/yipbvi+fnVi7U3Fou5swsFgsk
         YLCFFuHfiGPLLud50jRD3uTRemAjJfS4cOHHYyQYgkLpkKRW59MHblMFV/zNwjYNIphu
         a5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XdWxtZqpHwe2yjpKLw9/GPFI95Q+YKtTRyq5T9okjFo=;
        b=qqoYVC+7WZ+YUXWOAgEkQtIqqES9VvUoaXY2XpJeXSLb1DKr1j9rFui5bMxpqtSRfo
         Ur4AFKWGNhBmQiEDkADCibTV7pRdcHCWjfZXZS12+w2MYfn77aJxgCzkbeMdRiQwlLpw
         c0L8K0r5PjcmnSHXbEsiQAQNoQR3iXnlA9AWN2uDF92pgFlIGR5xzGpwd0hPhpNkgd88
         HV8qrY9meFWPqz3Af4hzos9JlbgITEnb7guCLA39aLWrGW/APiYZ8NLGfQJUEYAiH29v
         acO3qXI5OrMnOOXQKoAu5cgCvJD1Sqvac5/AIg9u8xINUyh3AdN1LdCekWhsfKiiD6TZ
         /+gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubwRBAU+ceu1QxtjcFOraq1ooxf4DEOVVZp9DD9BrFyOaNDk3KY
	Wb/ySqRkdhOkXsIpGgGg0OU=
X-Google-Smtp-Source: APiQypIvBc8bXavEBacXkdhz34GYRbjANyUcmXKNRLyInQ3yTflIykjNdODAq78B2rDXinBjGuXdDA==
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr1559105wmd.148.1588144432685;
        Wed, 29 Apr 2020 00:13:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f347:: with SMTP id e7ls29477797wrp.4.gmail; Wed, 29 Apr
 2020 00:13:51 -0700 (PDT)
X-Received: by 2002:adf:e4c5:: with SMTP id v5mr39646614wrm.143.1588144431916;
        Wed, 29 Apr 2020 00:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588144431; cv=none;
        d=google.com; s=arc-20160816;
        b=JxM27zylog63Rhwc7YAdVbBX6B5kxewyyJ45VFjOogrZCqvKFXXxEbNif34U4ASHv7
         3+fn+zAKQJerpDNeLaC0iaXSaxj3iMew5ive37+gy/Ex2+FuqQou9X1y19ZwmkWl4ivM
         bBcwyZ1eZB84OF1W2biO0p1aHaALeeRM9BRXinnnD3soaCU+truh68AVpPtlu4jdBG+s
         3GTt25CTWyEifDz+OcJJHm9YpDKMPZG8eM4eFnclCsmnb2TuOiATChgHy9xOkmxC5lX/
         XaAYonx7eF5+2PiagtxsUv4tZ0pfo5nS9KbPzxgWI5rXYfxJjZT6mXvXAHVIBem2dPhC
         bwKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bESRUmFeT/i+wUL8WK/yLfymk/xA+kTtjWFkp0CqAW8=;
        b=M9T1eEB2VrQ6hlfXiyIdvc4mfUPf+GfjWoeZNbrPB8eNHx5cA7Ev0O1IjHo4l+8PuA
         DoREvPzYrXEVrKqEXdEZK3j4O5e3X1Nnobd38TrUjYChDWOnAuvbrM/8mYyr6na9RDcH
         YvxlPFJkbKnyaxjpKYPaspWDe7ebB9pGO5asPIMg4gZ36r/m92XnP0shde60Vfk3YDB5
         CNKup11IEMd8gJRjkLp/UQhYqQGA8FBe57auwZZdoOd1xhbZ3uKDvRFJOg2z6+rAItMv
         v5hW3P0Ze4/FiV2VVxAeX8gs2saoXl4tRG/4jX2O6M5asNf1p7sXbbEH7nj/gcWJwWEj
         Yr0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=euN+9Rzh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s22si34835wme.0.2020.04.29.00.13.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 00:13:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id d15so1173471wrx.3
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 00:13:51 -0700 (PDT)
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr40152710wrw.73.1588144431555;
 Wed, 29 Apr 2020 00:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com> <20200428221419.2530697-2-natechancellor@gmail.com>
In-Reply-To: <20200428221419.2530697-2-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 29 Apr 2020 09:13:40 +0200
Message-ID: <CA+icZUXa3JBittjDVdNyV1M08dRt_pwACi2-0nLPEwao6yNABw@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] kbuild: add CONFIG_LD_IS_LLD
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Dmitry Golovin <dima@golovin.in>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=euN+9Rzh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Wed, Apr 29, 2020 at 12:14 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> From: Sami Tolvanen <samitolvanen@google.com>
>
> Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
> specific logic such as ld-version or ld-ifversion and gain the
> ability to select potential features that depend on the linker at
> configuration time such as LTO.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> [nc: Reword commit message]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

Testing on Debian/testing AMD64 (since Linux v5.3):
#1: LLVM/Clang/LLD version 9.0 and 10.0
#2: Debian's GCC 9.3 with ld.lld-9 and ld.lld-10

I am linking my Linux-kernels with ld.lld despite there are issues -
then check with ld.bfd.

- Sedat -

> ---
>
> v3 -> v4:
>
> * No changes.
>
> v2 -> v3:
>
> * Add Masahiro's ack.
>
> v1 -> v2:
>
> * No changes.
>
> Sami, please scream if you are unhappy with how I worded this commit.
>
>  init/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 9e22ee8fbd75e..c15ee42b82726 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -23,6 +23,9 @@ config LD_VERSION
>  config CC_IS_CLANG
>         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
>
> +config LD_IS_LLD
> +       def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
> +
>  config CLANG_VERSION
>         int
>         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
>
> base-commit: 96c9a7802af7d500a582d89a8b864584fe878c1b
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXa3JBittjDVdNyV1M08dRt_pwACi2-0nLPEwao6yNABw%40mail.gmail.com.
