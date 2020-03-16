Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBURX7ZQKGQEWDWYBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE0318728D
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 19:42:15 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id f94sf10624778pjg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:42:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584384134; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQVvo5wv0uGRJq3kIJIwtvaZz0jbfOn1wVQVED5/Q0hXFj5ooyOv1Ay73M5BRSKmi9
         +rHdMIZDo7HZgU/JTQKyQGeR8uTaNX39TEuyAB75n9glgAZaZlAoZsDtcFfe9M4esI1V
         EBaza5TftDQgx0RKZApl5aDpvSpcbs2tsiQtd6cl8Zw9tZji86HG7PXep1X1JRfwgzeV
         D9qetiPB3I6qpSPjchH5GMPhjCenahffUI66SBPG0gyex4xF/c5BUlt4Hfs5ev74VUYF
         7V6MRFpP1qvX3+kY/HLFC7RxOvDFWL1yKQb/jjUJFOYNe50kSIGGs64O85wAzSpTbAca
         DSxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l1LGZjsoqySnMYqX1fwDM/LZSanyLcOVMS+QB/VbUSM=;
        b=HMiPmw0fO1dahDAWKxuAWkFmSMR+bak+IIeQImaxp+IYf6CAmGZ9mv1uxmdCXBX+AC
         fmHeRN7sph42/WREa8I28uZ9bhXi3VvFGkuKFxWUza/AkMOVyExCPe9k+xUTjXvCISzj
         qL4ZGjJO++2Pq4lDa8QpNX07nBhtZ2Wmckwiiq5Kjyb6hhU0EcYYrpDklDjH78oqMLb6
         1Ph+ADjCyX39MCkzFOEvZNDNJfisTJU82K9EDzBAt590JXXeuggvbJk21V9WOTBnFsYO
         rRLlFyjISRXspZMdyp4iOSIrbqT9WuhDO1bZbs207x0q1f6Oujih5xbHQkc79fQUOSff
         Ulsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J8+5nVYX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1LGZjsoqySnMYqX1fwDM/LZSanyLcOVMS+QB/VbUSM=;
        b=tFL1trSAZUEFCxhQO3WBZ0gxl9fxehM3jB5ufQ5FvsId6hOO3ofaKk4HsjFCD04CJH
         aXaqh+v0RJCm5YKicYPMhPQQ5sokKvWA8kAC9lHmVQj3vJeXtjnq3lDZUYxlG9XBQPUB
         6IliY2U78gCNJIy46mX0L05/lsihUgGIKADrNaDVisP3CKuDkFow8AkHJTH0GKnXAzVO
         EcITmXLLJriw0gINyEaySzZ/zW3pkp+9Kd5ThJTR5iVYTOMaNcvyvzPQjYsPuKGIbnCs
         Vf6Z8RM5drlF7PlZEz7bj/Uz1o9Vlg9J6cCRYHCrW50wav9UEE5jvU822oNjoUa7OSEJ
         IlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1LGZjsoqySnMYqX1fwDM/LZSanyLcOVMS+QB/VbUSM=;
        b=L5xpAK3uDmxPgWioiAwqvp5Iy45D404LuMXY8kzriEwlhcXf2/+RJNY1bFjOq/tHEi
         a1O0DF/8a6DNpn9YtB+pdlh1kuPVzS7nJkR2qHLRD0Dt6mp36bAJnkTwu9f/C5qPB2iH
         Vz/qYBO/h2DRpI8bIoLaxaHRlIziOLS5LjK8LTw4q1dGLgQXjC1njepSqgZ9OpNFjcvR
         dtsoxQrEiT5jAW/DjUW9UNpFgjWedpZyUHOW3N1s1bs+Y9JA3guG5U+d90EfUW6M1Ws9
         hGTg3SoJoh3dTzKT6G8z35lUn/hzrn7FKIOGFw9KAHQ54LoxWK1xKoFD+BoD6rFm1lVQ
         r+tg==
X-Gm-Message-State: ANhLgQ3TDWyRe4wDS8Qhgho567wP7IRboYwqzS+rp4a8Pj6+HSIwaIiS
	o9lAtnwYKZVfmmudGsq0lic=
X-Google-Smtp-Source: ADFU+vuVUFPdw/3B4T6/sTyAKHVl9WhXuzeN+Dmfugw9HdoZr7tXzYdvQt97tAiiuMUtbKUtTjoMAg==
X-Received: by 2002:a62:ce8b:: with SMTP id y133mr1012004pfg.172.1584384134378;
        Mon, 16 Mar 2020 11:42:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:82c9:: with SMTP id u9ls10077277plz.3.gmail; Mon, 16
 Mar 2020 11:42:14 -0700 (PDT)
X-Received: by 2002:a17:902:7c15:: with SMTP id x21mr502578pll.67.1584384133889;
        Mon, 16 Mar 2020 11:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584384133; cv=none;
        d=google.com; s=arc-20160816;
        b=pmI8QRQiEc4/Cz9aZVV1lk3gfcTgG2+vYnn3XLC7PiUCX5qQYkW9KddmpRP8oHb4BP
         RVEhD1p7Op9azTt8/bLCTcR7o/I8B4rubk+ucV8tPYBAmB4PVDMXzpL0onFnv2oKHnqb
         0SUnc2rMl3K5PvYVQ4yagoX4CvX2tAWZWRlx+nGTomIPUK/dejrAlo9MmWQPfjzv/xLo
         M8qxitYU0lKDh6P0MvGQUpmWSWFQG9PuKQk/gsPdSmrf81ue39/lkeaRCLFiVT1rWvpL
         HCLcznoyfA9SltIISCTpzbJmp7PRsDtYZjG9WBCSal8oeb6K8d8vH6UKjRjXfuvnwn0i
         4jhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=14+aHnIsZDTUtjeEgfgLm/lvD8T2DWdRGxgiO55QrnI=;
        b=rd1jahEj3jj7aCQgvMMcKGmtG0Bu2yYYIfLNMEWTWKKraf+KM3kCsEXjzY4N09q8/f
         lzdyx3AlgxT25cWr6OSdcWu+z09yszSVZfKKjgGy7Pg48BAioTEol2xYf4uC0cqNnVEJ
         Z9w+3I+DvQ/i9o/jPHBcDpaU2b57yCc9Akm1ER1r1UR6PetqLXrttUxRpSmwU3m9ujOA
         SccwgbGNSDqMkC3nuSTI6uJUkO4sGSrNOpa75LRHOXVrF5Vx3DWjW0Cyol8T40R7XHA/
         lughPZlVKSg+jr2ZzY+DEZlqxxRSEkC6z4bROSPHTZzhSQkoJjldOFpE7KobLh248h7T
         o/JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J8+5nVYX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 83si26765pge.4.2020.03.16.11.42.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 11:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id i13so10447678pfe.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 11:42:13 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr987655pfd.39.1584384133226;
 Mon, 16 Mar 2020 11:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <1581847296-19194-8-git-send-email-paulb@mellanox.com> <20200314034019.3374-1-natechancellor@gmail.com>
In-Reply-To: <20200314034019.3374-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 11:42:01 -0700
Message-ID: <CAKwvOdnZHo1UPs6w6_MmABH92-AGJ_g-WXcSdrRk4vdYwr-kPg@mail.gmail.com>
Subject: Re: [PATCH -next] net/mlx5: Add missing inline to stub esw_add_restore_rule
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: paulb@mellanox.com, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <jakub.kicinski@netronome.com>, jiri@mellanox.com, 
	Network Development <netdev@vger.kernel.org>, ozsh@mellanox.com, roid@mellanox.com, 
	Saeed Mahameed <saeedm@mellanox.com>, vladbu@mellanox.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J8+5nVYX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Mar 13, 2020 at 8:41 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When CONFIG_MLX5_ESWITCH is unset, clang warns:
>
> In file included from drivers/net/ethernet/mellanox/mlx5/core/main.c:58:
> drivers/net/ethernet/mellanox/mlx5/core/eswitch.h:670:1: warning: unused
> function 'esw_add_restore_rule' [-Wunused-function]
> esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
> ^
> 1 warning generated.
>
> This stub function is missing inline; add it to suppress the warning.
>
> Fixes: 11b717d61526 ("net/mlx5: E-Switch, Get reg_c0 value on CQE")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Yep, thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/ethernet/mellanox/mlx5/core/eswitch.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> index 2e0417dd8ce3..470a16e63242 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.h
> @@ -666,7 +666,7 @@ static inline const u32 *mlx5_esw_query_functions(struct mlx5_core_dev *dev)
>
>  static inline void mlx5_eswitch_update_num_of_vfs(struct mlx5_eswitch *esw, const int num_vfs) {}
>
> -static struct mlx5_flow_handle *
> +static inline struct mlx5_flow_handle *
>  esw_add_restore_rule(struct mlx5_eswitch *esw, u32 tag)
>  {
>         return ERR_PTR(-EOPNOTSUPP);
> --
> 2.26.0.rc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200314034019.3374-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZHo1UPs6w6_MmABH92-AGJ_g-WXcSdrRk4vdYwr-kPg%40mail.gmail.com.
