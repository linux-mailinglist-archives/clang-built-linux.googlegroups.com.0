Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIVOZTVAKGQECM2WXHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E08C1C8
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:01:49 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id e18sf97267982qkl.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565726498; cv=pass;
        d=google.com; s=arc-20160816;
        b=nM62B16il7bUoCQusZF10zr05ypdQp1bZSgLNoaN5vP0kz8gdsbxF5uZT82gSNKiE4
         f+PGPzF8Sz19sZrq6NhnI3YQu0MvarGFzYdZtYYw2GwT2MxxCmXXaUbTEwKtyHbP8/wI
         ArzB/zG5MDLAYzShFGIeXHOSa79pOfJ3h7/e/5vQ1xu7Ed9MUFjyJnODjCCkeWTMQ+xC
         P5gFWDxs5N3xvT8Zk1fdWsfgAtZ/b0M5yPt/L4YNNxzYE4ot8OW8xMdhVHiSLiIh2m1a
         r7UuqGb2PkfvpPzRblczpG3GIoEzI1j6oOaKVnGF0kzkEbby2uDwNHaOlWAJ8Iy4OhzD
         iBlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vARcLTjIQl3jzKV4VcwwoEO7gBYgkx9XYkifXHuIui4=;
        b=r05rZRMpVegQ4ljpcgYScpEB9czNnt8U6Xt8xCpqtvktJFwWjj4Zf6zm+PpSjHbV6t
         xlS6j1XnttsqzS3HaRTSMYJAmiKQ0Y5IQ6BzND5zVX0BXn1y8BSECHN9sTaDFSt1H/hw
         QbIo2Zme+iIRWxL/sO/xi1lamEltyBn/5EYDTHodGYjD620T+tZJEIDlC+Nhg5+uKZ5L
         xs7byq99j6v9GI+hXG+4eEUgtxfm0oKZKfii+qRAUhHg2LA4djKaKDKcxH+e3F3MP11P
         BX6uXOhPyDEFcz+Qmpkfp+qSuAGWbww5DCf1gN2AIVUa+O92tq8fat4/8ZBn2M8k/NDp
         yjeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h24OF7fP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vARcLTjIQl3jzKV4VcwwoEO7gBYgkx9XYkifXHuIui4=;
        b=cmb+ci50dLPW8IlyMxUGXE6x76ym2JPXtLQQfZcj3zXVL6Qg2YtYdywLEFG1JafWyi
         3IwGw3/+NEot06P4zo9Vil8f7eMb2tVzv9XyiH/FF3jcjP0xJ6Kwxfi1LMlIBKEl5CIs
         vGc3FD4QiWn6FT/I66Whe/pN8rEBLYmi+xrMJM7iMnQw1YJrSZ7rqN/2fxW9dsJrRrD/
         62Sbtf1k/XheS1xjeU51W3UdFfftuT+pTpiM9AEXP2iyQBrQtsIxcAaNIA/y9F8XLOTw
         QrJnCF/PpW2Jqj9kiRksO0lgn14ddPx3oQbXTovAYunLzbtsCI25EiKqoJ1cfRjqoM72
         refQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vARcLTjIQl3jzKV4VcwwoEO7gBYgkx9XYkifXHuIui4=;
        b=Mn8YIpoOBeFqVPeY9mFYS2SwVy/d0L0uTxa/iStEDSrEs285N98Mjsl1Pw5W8R4cPv
         OAImcGtnp3Jy18cNM3tbihcTY2NnukZ6MY0nMq9MDfJrDopS+uUxYU376tdaUAglQ0Qq
         4m1BHE+aXhhYNg221KzJV3qFJWD+ftUMqlDFlsyJmdRnybQxPl9HDVmEi9gHZF9rXBw5
         CEGDQJwX6BmOpSiV+mnEFgR4UiZziNWc9uRL1SOyRpfLkBD+0/fu3tR00G4xvvXmQo+v
         thbXhHeozMCzpOGpRMlARKZpbmjjE1QdJxKh8T3nycJDNiZgUDjl9+A1mtW3arujyK+b
         /bog==
X-Gm-Message-State: APjAAAUYkOORg3ZJ0PuvBx1KrBK+dlaGADD+0gXoGbOyR2UrWArVm4EI
	xLcQPt+3YoNPK1CX9BqbxhE=
X-Google-Smtp-Source: APXvYqwGKCHO8x+3BWEw2ROR3EF0n1oxjSo7tsw+7TGijutFGfdKCfYTlaFBlD9fwXR2cRVR3IVaTw==
X-Received: by 2002:aed:3223:: with SMTP id y32mr19678441qtd.176.1565726498283;
        Tue, 13 Aug 2019 13:01:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51d9:: with SMTP id d25ls5859054qtn.3.gmail; Tue, 13 Aug
 2019 13:01:37 -0700 (PDT)
X-Received: by 2002:aed:359d:: with SMTP id c29mr30011438qte.4.1565726497883;
        Tue, 13 Aug 2019 13:01:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565726497; cv=none;
        d=google.com; s=arc-20160816;
        b=bu6knk/8u+YvdO2X8SAa0QNVLNd3doAd2ORb9k/lxOujVce0QPfsNEG3U6Y7G7BUh7
         p0zsDPyw4NG5+K6wbuUsZUofT7Z9+eNDRFEerXohQuzM/j4mVrwITrqMYHCwC0UnbJ2R
         /oprDyXfUJHS12MN8ItGdqd8XfXc/8OJiklxNN5CchXbbuKiGeNJUC3t7Z8UbzSu4QIF
         MrRuomKXYZrXC7FN/tGZjmUGepgYhaR+ptN1H9EecYV95bxWnF5geXfdBXt0c/ja/z08
         4e9BqKdyDbYFZvcJAJEik1BO3dTZi06VtEKS0CpZqoiGxn6cP8sdwNrhhzvsRqixKpLJ
         YF8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g5nPc1W/N98xXzSNDQkNTDsAdPrCAi2NWn4AyoXeSj0=;
        b=uvXLy/D0rUsC7qR5VcU33ei8e1g+wpMxLO1crP//EFQsc16ZaL/cnevN4fMuGcaZY+
         sukUEU9hOfzOJKac+D2qU/+wyxJlEk1YlgP5Axu4ivZrxaK2Xmpsewh80OwkFHMib2t5
         OygN9PoNQW62CMFKGqM1yCT0bpRcQ7/YUE8U0PRYtxVIJAf78slmCMkQyojcpJxU/gpB
         HJSg17/8C0a2P0BZFNjQ48sk+VGfKDwYCp8FB7HlhQljB9UiRhKCQp2BA9IfkcjBypKL
         7McMWDPe5UeZXUstjBOfVhxbM9236EMiKnIjUT4lseEp4lhLL9QuzoKq4pF/GrFVamjj
         +ZRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h24OF7fP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 37si1108350qtv.2.2019.08.13.13.01.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:01:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id p3so1503359pgb.9
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 13:01:37 -0700 (PDT)
X-Received: by 2002:a17:90a:7304:: with SMTP id m4mr3817384pjk.73.1565726496495;
 Tue, 13 Aug 2019 13:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <201908140300.REaRIkQ8%lkp@intel.com>
In-Reply-To: <201908140300.REaRIkQ8%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 13:01:25 -0700
Message-ID: <CAKwvOdkHTfFzypb04LvKKx5h6QzcSueZeoHaG-RUE=x1jN=Bpg@mail.gmail.com>
Subject: Re: [nf-next:master 5/17] net/netfilter/nft_bitwise.c:138:50:
 warning: size argument in 'memcmp' call is a comparison
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>, netfilter-devel@vger.kernel.org, coreteam@netfilter.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h24OF7fP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

+ Pablo, looks like the closing parens need to be adjusted.

On Tue, Aug 13, 2019 at 12:12 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: netfilter-devel@vger.kernel.org
> CC: coreteam@netfilter.org
> TO: Pablo Neira Ayuso <pablo@netfilter.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/pablo/nf-next.git master
> head:   105333435b4f3b21ffc325f32fae17719310db64
> commit: bd8699e9e29287b5571b32b68c3dcd05985fa9b1 [5/17] netfilter: nft_bitwise: add offload support
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout bd8699e9e29287b5571b32b68c3dcd05985fa9b1
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> net/netfilter/nft_bitwise.c:138:50: warning: size argument in 'memcmp' call is a comparison [-Wmemsize-comparison]
>            if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                          ~~~~~~~~~~~~~~~~~~^~
>    net/netfilter/nft_bitwise.c:138:6: note: did you mean to compare the result of 'memcmp' instead?
>            if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                ^
>                                                           )
>    net/netfilter/nft_bitwise.c:138:32: note: explicitly cast the argument to size_t to silence this warning
>            if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                          ^
>                                          (size_t)(
>    1 warning generated.
>
> vim +/memcmp +138 net/netfilter/nft_bitwise.c
>
>    131
>    132  static int nft_bitwise_offload(struct nft_offload_ctx *ctx,
>    133                                 struct nft_flow_rule *flow,
>    134                                 const struct nft_expr *expr)
>    135  {
>    136          const struct nft_bitwise *priv = nft_expr_priv(expr);
>    137
>  > 138          if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>    139              priv->sreg != priv->dreg))
>    140                  return -EOPNOTSUPP;
>    141
>    142          memcpy(&ctx->regs[priv->dreg].mask, &priv->mask, sizeof(priv->mask));
>    143
>    144          return 0;
>    145  }
>    146
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkHTfFzypb04LvKKx5h6QzcSueZeoHaG-RUE%3Dx1jN%3DBpg%40mail.gmail.com.
