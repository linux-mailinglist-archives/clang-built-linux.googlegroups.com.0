Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2OPX7ZQKGQEUOLPAIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F6187450
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 21:56:10 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id l1sf18626881qtp.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 13:56:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584392169; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZzIaJkrNpckg4DUy/xk3G9iBBk4cwX4X1VPZpp++m3ECFDzwaaqfaVwGS3Gl/HMRD
         SWLuizliT9RaEdkAE3ku19K2fXSzYov3slFfrmE0ht7bqvwBu8gsFMMl1DKLJ7a6hOS+
         95VIyAAJ4icOUl2WY2n/PMbvXAAieqpl4R5+yG+6uErYO2ElXW68ZQSK0xIMcJOljMEl
         OB/zQG2qTWe0oVhmkW0H4qcamJcE/JhCjvgwL+xGZN7gXg8K6NdgvjcxQtGDr208WFHi
         MrjYW+4/5U3yDT5SpXBF+WA4rScB7wZomqPPYQPHzevDToi5qKMFWCTetYN9mqK7TElO
         zw9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uAa2dYTh4356a9jZC4xjCHi+OkPYwewj137m+tx8ouw=;
        b=wchCK3qWU1opGjDWzx8ReUbkVyQZcOzYSDidPCe5LtPfRFj8AMTvWushNssEFerNLZ
         dDWmATMQugcmfk4tRNo4Aj5WSH7kYbbh49GKzAaN3aed0iL0RYttjHAbK6AqqIahXvDK
         s7b/48lSdSqxI39wXBuOtt3X1wmUZ4j0Vm0DJBnFrBsUuKiPP33nf2vGSIkLbCiYdZhH
         euQ/AJuxGFCaracN6r+PyUHVJjOiBEMJF6XIL0bMwdXwCumU473eLpwv/0ogGVR9Iwbf
         +tTYHImqspqHH1kyC6jYHDL9vs42p/YvTtLGcJVGjB5t4JPlS+c0biuJQqfURvJNIKxe
         v2qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="sp8cn/io";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uAa2dYTh4356a9jZC4xjCHi+OkPYwewj137m+tx8ouw=;
        b=UxdgDXLV63nXzJLwIBCR/3EY+SIQgJIsDzcLocTt3C5df+6Jg9VVffa8DcIrrhWIS4
         SAqMYPCAtu3/QqXjAGlgX13YMC0M8dnZTcImmcGmRChTy+6P4xECd/z5Mkvrqet1h8T1
         YJJ/SHxbVm6aYABuw/i6LNaZ1ecdiDWGkPs+dDKFF5jduZ/piFLv7JS9iO6P5K3ly1mo
         sYXlcFHNhz1NoLtjyB3qzSJGnBAlek049QicfFl9bYgi+Tq1ikBS8NQmHWJulZAKEvqO
         b7H5zuUuOBQFx2ToFkSAiDkltrco5FrJwO0Xqs3L15mGOuc6jgdGZvbSOugnm9as49GN
         3tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uAa2dYTh4356a9jZC4xjCHi+OkPYwewj137m+tx8ouw=;
        b=QMkEXzhlbcrSw7/dpay33Rphe0QVOTzyGsNRiFk8BfGBVf+APE1FAWhhRy1lw/K2t9
         ti3S48xNTV8MKuP7rUFYnM4jTOEpetxuED3tOj7LXCBXJBS72hu20NDSBtlCHdZeeQ9d
         YkS2gcs4JalhNVmS9RYVXfXGKbu43ZUAqpYCR33N3Ln7OurcP4t6uYJ140P5qsS1Ix5M
         X1F3MFBL8Wdf3ZpPB6yC1/dHaxIB9KRRb8SVecgySjSrIHSNF3d5WSUWMlPnwtvUWUQ8
         Ou8KWmlbrxz2JkGH68ujDi0uJV3jMR83awRqbq6C9BXLICQRvxnMYTAAecweB3tjUlKx
         47ng==
X-Gm-Message-State: ANhLgQ13faz4+aeju0uzTW22otYwTkiLVw6oxhARVHEQd+qGmPw7dNBS
	kKvo+sAyHfIsAUAsT0SY6Ks=
X-Google-Smtp-Source: ADFU+vutv7HUzKQ7UlGssARf+cji+XRcSqMOubttpEsdXFdKRAom/UGsyKjusqnVP2IvswuB3IIe4Q==
X-Received: by 2002:a25:31c4:: with SMTP id x187mr2274036ybx.299.1584392169137;
        Mon, 16 Mar 2020 13:56:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5cc:: with SMTP id 195ls6106777ybf.10.gmail; Mon, 16 Mar
 2020 13:56:08 -0700 (PDT)
X-Received: by 2002:a5b:58f:: with SMTP id l15mr2593350ybp.330.1584392168770;
        Mon, 16 Mar 2020 13:56:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584392168; cv=none;
        d=google.com; s=arc-20160816;
        b=omNZZfRg6xD22JXxk28KjJdVXEe8d66b3rvM68+nQvGDWcIfSR4hEEAn5TnWlFZsak
         wmfPxpP2dypDskOts7xSYCqbOPeoywZKLAUIB386H7iZLrNtz3+DyirZ5I7KJkDkuf04
         kkDi0SfObfY+ejGezmNGm1U9FHL27yacKiWvgwx4W+gn4Y0AIenGkO421PuBGPCdbGDJ
         FtqXDk82cGtX3W5EDJE0tX8MYoGghRxTuhwzmXBgbVQ082SM5CQwb790zp4Yl3tnDyQC
         99UuJTSxsjCwZXKlqVQe/IeHqEt5q6W4sioDTW78mEnOz57bk4ZpIlLXiP6Iy52OaiC8
         MuGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NZ/7vQHI7KE97BesE+3WxlmFuT1Y/pVRDjy/XH5FkC0=;
        b=HtK3cfJ3bUcXiGZM+5ILDmRm3848ereJ8ovD2XI1mlKtPwJMb9sENO/+rqU5WlFp9H
         sgwPSEMC7t/rMHVCilIREDVAG4BNRtuLB3cN9gS52yAklXTCKl+/ngA31bzU/3HPgYXo
         u+EEAcAoyQZ9E791ZUMR9LF02ASZwt+gXMvqKg2gUGyVOTyi/ASVF/UxZNwfmblKsqbD
         ahrA4vyAmXqfNERZUyPDeHgcFeGRHXpRjNfe386kXijy2FBH0EU39o2DWOCXCZuUOEUW
         V5H9whsX2+F/nsrBbah/LLhzqXU2W2le6N27v0oHKSIDcGkVBdLU+a5Z1ho7ZxJb945i
         e8OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="sp8cn/io";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 207si89102ybe.5.2020.03.16.13.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:56:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u12so10404169pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 13:56:08 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr1554887pfk.108.1584392167596;
 Mon, 16 Mar 2020 13:56:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200316203452.32998-1-natechancellor@gmail.com>
In-Reply-To: <20200316203452.32998-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 13:55:55 -0700
Message-ID: <CAKwvOdkDUYYm9ZoTeKt-5kGhDTxo6w2XhOjONWhzh6M4rE5LpA@mail.gmail.com>
Subject: Re: [PATCH] mlx5: Remove uninitialized use of key in mlx5_core_create_mkey
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Saeed Mahameed <saeedm@mellanox.com>, Leon Romanovsky <leon@kernel.org>, 
	Network Development <netdev@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="sp8cn/io";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Mar 16, 2020 at 1:35 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/net/ethernet/mellanox/mlx5/core/mr.c:63:21: warning: variable
> 'key' is uninitialized when used here [-Wuninitialized]
>                       mkey_index, key, mkey->key);
>                                   ^~~
> ../drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h:54:6: note:
> expanded from macro 'mlx5_core_dbg'
>                  ##__VA_ARGS__)
>                    ^~~~~~~~~~~
> ../include/linux/dev_printk.h:114:39: note: expanded from macro
> 'dev_dbg'
>         dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                                              ^~~~~~~~~~~
> ../include/linux/dynamic_debug.h:158:19: note: expanded from macro
> 'dynamic_dev_dbg'
>                            dev, fmt, ##__VA_ARGS__)
>                                        ^~~~~~~~~~~
> ../include/linux/dynamic_debug.h:143:56: note: expanded from macro
> '_dynamic_func_call'
>         __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
>                                                               ^~~~~~~~~~~
> ../include/linux/dynamic_debug.h:125:15: note: expanded from macro
> '__dynamic_func_call'
>                 func(&id, ##__VA_ARGS__);               \
>                             ^~~~~~~~~~~
> ../drivers/net/ethernet/mellanox/mlx5/core/mr.c:47:8: note: initialize
> the variable 'key' to silence this warning
>         u8 key;
>               ^
>                = '\0'
> 1 warning generated.
>
> key's initialization was removed in commit fc6a9f86f08a ("{IB,net}/mlx5:
> Assign mkey variant in mlx5_ib only") but its use was not fully removed.
> Remove it now so that there is no more warning.
>
> Fixes: fc6a9f86f08a ("{IB,net}/mlx5: Assign mkey variant in mlx5_ib only")
> Link: https://github.com/ClangBuiltLinux/linux/issues/932
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch and analysis, looks good to me!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/ethernet/mellanox/mlx5/core/mr.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/mr.c b/drivers/net/ethernet/mellanox/mlx5/core/mr.c
> index fd3e6d217c3b..366f2cbfc6db 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/mr.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/mr.c
> @@ -44,7 +44,6 @@ int mlx5_core_create_mkey(struct mlx5_core_dev *dev,
>         u32 mkey_index;
>         void *mkc;
>         int err;
> -       u8 key;
>
>         MLX5_SET(create_mkey_in, in, opcode, MLX5_CMD_OP_CREATE_MKEY);
>
> @@ -59,8 +58,7 @@ int mlx5_core_create_mkey(struct mlx5_core_dev *dev,
>         mkey->key |= mlx5_idx_to_mkey(mkey_index);
>         mkey->pd = MLX5_GET(mkc, mkc, pd);
>
> -       mlx5_core_dbg(dev, "out 0x%x, key 0x%x, mkey 0x%x\n",
> -                     mkey_index, key, mkey->key);
> +       mlx5_core_dbg(dev, "out 0x%x, mkey 0x%x\n", mkey_index, mkey->key);
>         return 0;
>  }
>  EXPORT_SYMBOL(mlx5_core_create_mkey);
> --
> 2.26.0.rc1
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkDUYYm9ZoTeKt-5kGhDTxo6w2XhOjONWhzh6M4rE5LpA%40mail.gmail.com.
