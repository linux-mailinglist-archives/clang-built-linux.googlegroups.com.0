Return-Path: <clang-built-linux+bncBDYJPJO25UGBBENE2HVAKGQEVMKGXOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5568DCF4
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 20:25:22 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id g9sf5104059plo.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 11:25:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565807121; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSWj2pw67N+swnprWCgGv66VVi0UEjjttj8MgPajfbIu6BzWP27MGYEVEhxD2VjiQX
         Vd1szKyxkY1mfgyXywQGZ1Mi1610bjp6Zpi96BIuuRHcZLVN/MoIWaRtR9Yl9UeF4aOl
         djWWHDToFbU03AUDHqB4+yejXRx19cuP8yvxfG3jFYcj9IO6yL9UAhCbxj+GJJvvAMcn
         48/fqIrPWw0VUAg9wVYhh+tYfRB3hV0mD8re1FvFe8F6kbwDR+tt9YdTDso6ouI4JdDO
         2srty6+0Gfz3oEPScCrtIqkXIR/Sjq3S59BA8KlSAUQAt3F4ceys5RtHVSJNG5BG848c
         unRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xRp8uIS8f1OV/X9FwSx6/PytlkmfMAj5oFZ14juSCUA=;
        b=gbTAW122PpQN3Ybo6WsrY5L48qtcXfx1wFeqzC4OIrSffWPkOpYpRvlYTdMMnwxiC8
         mFrsXkQNhcllagJSVvOfeA4chKj9zC58M0BYFIWHLcgJXIKBLHntlyyYhG4f2Fwvjy00
         8RgbuP64ZmSnT9vhokUJEfcBBFXmUVwDJ+IKCVejNmm0bpho+nhKaRmGfUDAFiD8of44
         fSDmJeWcMjon+qU+Hf/9mPeailOAFEAiy3qptbpkJ5PpF176M8wH8ByBr5qtnNAz7JFo
         eVEAWPTy6s4T2yiAL+jZ3OcIVcnrU5F0szq+e92FJKLgi1H5oPyU3rO4pgBDW2pEB2Xk
         64/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aVjpnrjN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRp8uIS8f1OV/X9FwSx6/PytlkmfMAj5oFZ14juSCUA=;
        b=czN7cSnMGecn8Co8Kx2TxRWIQYCKbVrWe6fFo/XVNQWMddOt0WM14iT43Tp/hb8tet
         Y8xa2Nlta7s42ctPymP/gvgIiaXIyCeQFlttHhc5YzM6p7YZORwhla5+q+/yBc7X39yl
         vZnjI0wEnbzNzAflnKk9tdEyKitFy9vOeyhXU8+nDl0nUZk+MZSF6l/nU06PpkHQSLgS
         GSoHmVkJzCRZZ6LColFXEPQZgZmJ/xcL29XcOr9OcHlTLnY5OqsNepkNege5puwchBqA
         2wsCUC9DXhNpJMScqt+FZA1AtLIODjLzTGmpyc7PFHCpE38UnUcw6VKu2MuyQ5QLs6sA
         L5hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRp8uIS8f1OV/X9FwSx6/PytlkmfMAj5oFZ14juSCUA=;
        b=hKXnCPg0kDdInkjWXZXip4kHiIqtD1zJKuGf2vNW27vWQ2YJs9KUtCYmKVpVTyryZe
         NTBBFCLwL32UJR8DR6Cp/k9vNmhjtO3dYZdnY2ms2hSwDCh4KsbAvgJwfJW5fnQSFfGo
         Plg+jOyXIzC9rTFF+F11s4DVP7NohPO9+jXEV8nnCshggxR82GlgtZ/E+YE4UibTfgEw
         pUhQDsFtlad2Qu+Gz30+CDFxquPSmidQQJUctJusicaPbsHcqcJrqc4iw5qmfp3QLwrh
         rLZrZbUT2wiNNVEXwGgms9jKsh4Y65YNgOuNq2ZiRwwA9AbGjNfwJYAObinWj50OGzp2
         8/YQ==
X-Gm-Message-State: APjAAAVYJCGv32MoNLMd9T1Rvoc9Lc8GOrtdxsmCDQRWWxWFwTS/wU4o
	QlwNT7Lzoju3NlQJuWwlB2U=
X-Google-Smtp-Source: APXvYqwE6KVOmQh0paZNFKjvpPIVipuMe2bUW9N0/WfOfya3RobR07mxPCOqo6RqEg/l5PzB5TMT+Q==
X-Received: by 2002:a63:6c7:: with SMTP id 190mr425533pgg.7.1565807121163;
        Wed, 14 Aug 2019 11:25:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls619870pgw.15.gmail; Wed, 14 Aug
 2019 11:25:20 -0700 (PDT)
X-Received: by 2002:a62:ab13:: with SMTP id p19mr1358443pff.20.1565807120860;
        Wed, 14 Aug 2019 11:25:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565807120; cv=none;
        d=google.com; s=arc-20160816;
        b=Un5CmmPsEbJuEwyr7wC6wnSdHKQH1UjUVGiX6hWmc1P/pXiq33fCWFqd6gK10kxpfM
         1PfNrPsssHCYfHWTR+giI5EOMKNZ6Lwr5DUlD7m7roEX+y1GCgSt6BTWjgb0aFFC2CsX
         SUvpO97aa1A/t6JuAQK87jP2zQULXCjA/K4+t90AJBBxdIEu+Vfl8Itb6HpHNA77K6I5
         KchAM2o45pe/pLHYPf64isHNpluS6m2irQD1IL3rcN2uapCVStbIHuPclTSmApeBZiR8
         JkIFLNxlx80rJldWH6Nq+W36HuiPjGw6IkwLm0Uy4kxdL9PW2ZLvjGpB7HaxmMQTLLKF
         lGmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dj4KAX4oiOlHlXT1vUtLuT1vYXvby2UL10kTcUOrNVU=;
        b=ogF63Sz/Cj41BMNRmDMZWZMrwZHW8EhNuoIMaxdgOIjIcC11VAHrKsZxTRo7h46uxC
         G2wSR4UxAjkcnuXmTL+D1fnmPGi/yzlJMvWJKif7CbmZbxzovo4xDcXw/jPCmokHK7CD
         5nE8TVdKv9G/KikkE9/Kf4wbv5dLxgCUtchmNCmgDOEZrdbox6b4QT5CIItkgoyoqO0f
         EvEmk6aN/95BLkxeK4kYlXxGE9ClU1nCLsqGBle/aJIhLjEMQOwOO4UP92gEkbf/qX3G
         K54GLCqHm/c5IZ+6UtfOWpRJywJudoiMNo8T6efCOpn+RfItRSItpgfjbi8lVUZ6p11/
         rVGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aVjpnrjN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w72si51991pfd.2.2019.08.14.11.25.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2019 11:25:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id i18so53500167pgl.11
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 11:25:20 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr1326537pfq.3.1565807120061;
 Wed, 14 Aug 2019 11:25:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190814165809.46421-1-natechancellor@gmail.com>
In-Reply-To: <20190814165809.46421-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 11:25:08 -0700
Message-ID: <CAKwvOdmvBkXu3JTp6c9yRKgPTv6pQ=_jrCsBzU5dJLD2xRvVxg@mail.gmail.com>
Subject: Re: [PATCH] netfilter: nft_bitwise: Adjust parentheses to fix memcmp
 size argument
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, "David S. Miller" <davem@davemloft.net>, netfilter-devel@vger.kernel.org, 
	coreteam@netfilter.org, netdev@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aVjpnrjN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Aug 14, 2019 at 9:58 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns:
>
> net/netfilter/nft_bitwise.c:138:50: error: size argument in 'memcmp'
> call is a comparison [-Werror,-Wmemsize-comparison]
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                       ~~~~~~~~~~~~~~~~~~^~
> net/netfilter/nft_bitwise.c:138:6: note: did you mean to compare the
> result of 'memcmp' instead?
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>             ^
>                                                        )
> net/netfilter/nft_bitwise.c:138:32: note: explicitly cast the argument
> to size_t to silence this warning
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                       ^
>                                       (size_t)(
> 1 error generated.
>
> Adjust the parentheses so that the result of the sizeof is used for the
> size argument in memcmp, rather than the result of the comparison (which
> would always be true because sizeof is a non-zero number).
>
> Fixes: bd8699e9e292 ("netfilter: nft_bitwise: add offload support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/638
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

oh no! thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  net/netfilter/nft_bitwise.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/netfilter/nft_bitwise.c b/net/netfilter/nft_bitwise.c
> index 1f04ed5c518c..974300178fa9 100644
> --- a/net/netfilter/nft_bitwise.c
> +++ b/net/netfilter/nft_bitwise.c
> @@ -135,8 +135,8 @@ static int nft_bitwise_offload(struct nft_offload_ctx *ctx,
>  {
>         const struct nft_bitwise *priv = nft_expr_priv(expr);
>
> -       if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
> -           priv->sreg != priv->dreg))
> +       if (memcmp(&priv->xor, &zero, sizeof(priv->xor)) ||
> +           priv->sreg != priv->dreg)
>                 return -EOPNOTSUPP;
>
>         memcpy(&ctx->regs[priv->dreg].mask, &priv->mask, sizeof(priv->mask));
> --
> 2.23.0.rc2
>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmvBkXu3JTp6c9yRKgPTv6pQ%3D_jrCsBzU5dJLD2xRvVxg%40mail.gmail.com.
