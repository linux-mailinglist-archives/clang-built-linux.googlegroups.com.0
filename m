Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGHTD2AKGQEVMRI2LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7263019C838
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:40:45 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id e186sf1678275vkh.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585849244; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2oHd9qw/2giOFSIRT3jL2QvCcXHpJxsa2l0qz/LtW3uwUzwg7sWJMoXN+lIGTszlo
         PrOTZ7mRALjz2io5v8WG9ZMG4NVtnJtA/D1vZcVnTo9HLH2SWYAgyjnnb/FSlwcd10bY
         w/RukPKAFlM8NXt+qpWScSSlTCFulbvXNKXfZ7w73HKN7BHg6PJ1m2mOvClJ+pN9QuCb
         UUuxTDmwAzba6tZgfPkbTie8nXDIEUDanWYHjb+AMMt35ih17v0VnF7UUw83EDdHvau+
         +B2Ox9lZvyms9pv8Id6BhsVxA4mfQlhiA3yqV0nl+j7hpIo0/e228jpSLfgf696f/Pbs
         sWdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sn/+MltyRyo5OxfD8IWSbcoTgePXwkBBYvMI57iQXks=;
        b=0vw0751mzoRIP/4AvkHsJt91bplREv/55erUAv+6do9aGbqyIac72NhtSm82GVA3aS
         0IDxoX0o+1FGe2IRhsiCjqnDu1GR2K/APrYu5zmYyPM7BeXNGOAuTkPXvh/tNbn2TDFk
         hmmhC8N6qU1xOVETNERQL9Vfh8y57xQIZY5MfH3AGLhE+TvXzmAoTSam9lmIksTcnPqo
         jHiLyIkhnf0J/bwHLPaBOWkt0i5WcsT3XDTObUamIlyxdT2OKkyq4tnemyM7CtvNHvIJ
         3iow/EZ4HXjzs95SHtGkpWYF/qtWIBm07CsOa1OuJyq7S1tIkLKtkp+6ZOxfl/7R2mCH
         E2CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j9d3nGYO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sn/+MltyRyo5OxfD8IWSbcoTgePXwkBBYvMI57iQXks=;
        b=oTIOzL9SQNSh2IbSgHyDlErNhvkUmFBZw+hV2v6Au+axsWQOlEQRQGvBfGC4rO1SAh
         gq89CKAL/ihnDf78GJ8nDqGRk1tUzORiYHAK8eLl37eTPa5j3UzgrjHhiisC6s9CW8eO
         PsTImvwYEIXes3jhTNlQl6DwUifCZ3XyGctvA9qgWFOEdq+DXnoBIuoux1YuQPY1prtO
         Sn3XMgcQcTsOJIRtDbeVGYNFr+YRubGPLkUlNEufDjlGiewGYW3M7WN180kZdDzrSn6P
         PS7kjac13zObxrlWaUZ0UfyQlaahiv2Lvpdvpuh1SND7yHY3jbu4uRtkl3azIx3aOKmp
         PITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sn/+MltyRyo5OxfD8IWSbcoTgePXwkBBYvMI57iQXks=;
        b=rmCfEyp0yIQtaAcTmV39D4kjz/APR+2MHbfG9EuF1mnRABkljxGNPq+pfx6EWMjpqV
         OIdEXjZuyPh4X38K/CHVaAaVMm7jTAvn/qtEU0VX+Y4anY7rljtSfp5XPmpLbW5Aws+o
         v+J6BAmPaDkhzKKoJqOlx990c7ktwI2K+7hlgJB2E32lOMf9Guw28AiQdHFSv6hZZ0l3
         q0oyuSJOp0Kt+vooCImBREuSw7XYIjL8UGDLn8oV/YkzbkLKq0lhQM5reONNCwUhZhkr
         lGwasDlZhZy5wgfom3v+WqYg4dixPnVQKbakmS/WSwUbMxj5ZGQuwe5fAKb4ztJMLiiw
         eNKg==
X-Gm-Message-State: AGi0PuaaJ9cpsxqo9KT4TgSXMMfzl7zlg8kX1CNd8KPj1kuH0nhRV88w
	qQtlUyhZEi2Z4//6zaEplxA=
X-Google-Smtp-Source: APiQypJM++II57oTODIHZrftNI68NpgIPgUgZWT2mtsHbhBE1/NplsLuQWZf+5L+HhxagKHdH7hqmg==
X-Received: by 2002:a1f:2706:: with SMTP id n6mr3388243vkn.88.1585849244461;
        Thu, 02 Apr 2020 10:40:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls687247vsd.3.gmail; Thu, 02 Apr
 2020 10:40:44 -0700 (PDT)
X-Received: by 2002:a67:fd9a:: with SMTP id k26mr3441235vsq.235.1585849244067;
        Thu, 02 Apr 2020 10:40:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585849244; cv=none;
        d=google.com; s=arc-20160816;
        b=aaNiCx930mE7L6EkGk9CraOObVq5pQTWJxrmglSfJoIk37WCAlba2OlxCAOx33a3EN
         pwe1tybYo0ujboxRm1ce456QTjI1VYDM4a0AYpvf5PlT2W/b4ez/bRsyji4Muwfo5E61
         C5o2XiSLwZ15aEDYbt+e7gXXhQtjjXKs6vqbkJTSRcug+QTkL4NLlThnfRPDAzgGz0zX
         s3X8zp6TZiMdZysbFoSlNUoEaSkC4TMgBb/TEj8uyvc7a7V6dceezMTRq7//NWeAZ2BA
         tu1Qi1GSWShmJsBc3v8HwIgIjbq5/pGyPE6VG2H46Z2+9xNhvVJgrd2nCJHNrjVX473n
         JOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nNj9UWy+adV8xUYOhsOn+0IPS9HHD1PHgo+3YUVx5tE=;
        b=u/X5pXrCa+N1DypUqnx8bdJdb0WsuY8PPzjRnOKatD8whgwswRb4DqmeGKZGMcaBkc
         HSDM7ZRZaJVIc2o7HN81rL8HHJIG79wcAUP/p0U6gQqHfwc1uKSJzKDasu+AnfHkRF5v
         gM/wPDFZldUZa2O9sbeXgW41T/zNgP1DwL4tmii9/s6e2+aC/SK7TYdLIsyM+j/xHl/7
         GkfC8rLfoq8uvfYS0L1/5Ky4qcYNy/eK2vYEthLGtUog+W3sQh+s60OfL9xjBP+BvC4F
         DaJMD2WsF1FJr4m349rgkSxPg7VhjjRarpEL+RDAlqAMWs1JaXPy7ofi744XQpf1ADBD
         bKDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j9d3nGYO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 203si442540vkx.3.2020.04.02.10.40.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:40:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id fh8so1809786pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:40:44 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr4564376pjn.186.1585849242863;
 Thu, 02 Apr 2020 10:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200402173842.96013-1-maskray@google.com>
In-Reply-To: <20200402173842.96013-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 2 Apr 2020 10:40:31 -0700
Message-ID: <CAKwvOdkHugeJW8GOa_8Pf+axPnhFiy+4t0fsOyzp2hxaDE1NAw@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: fix the name of llvm-size
To: Fangrui Song <maskray@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j9d3nGYO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Thu, Apr 2, 2020 at 10:38 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> The tool is called llvm-size, not llvm-objsize.
>
> Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  Documentation/kbuild/llvm.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index d6c79eb4e23e..eefbdfa3e4d9 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -51,7 +51,7 @@ LLVM has substitutes for GNU binutils utilities. These can be invoked as
>  additional parameters to `make`.
>
>         make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> -         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> +         OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
>           READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
>           HOSTLD=ld.lld
>
> --

OBJCOPY -> llvm-objcopy
OBJDUMP -> llvm-objdump
OBJSIZE -> llvm-size

Oops, thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkHugeJW8GOa_8Pf%2BaxPnhFiy%2B4t0fsOyzp2hxaDE1NAw%40mail.gmail.com.
