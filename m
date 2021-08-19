Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBJ447GEAMGQEMQUXK4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AFB3F191D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 14:27:20 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id dl8-20020ad44e08000000b0035f1f1b9cefsf4326055qvb.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 05:27:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629376039; cv=pass;
        d=google.com; s=arc-20160816;
        b=yPXd7s6mzo4BoF3nuAGXx/mw90qRvli0jQB9Qtmqr+Wuv102PHZn2qykeWkw5G9aMx
         EIRengmnI4DKvy6gfReMHsMUCgYklIEQ9s9ZOFKW3rrvUJy8vQTutnxT1xakotkItm/R
         FuJ3Wnd4eSdb9OfEwjDgOEA/LZjSz4ewod6wzKjncHz8tG4Szi/St2e1efa3ID3QTApu
         2u+uL1pJaRbafXNJcYNGBga5UoiCXdDe3H5h5BC/BsqNoBnQBjSZE2qRfuozDjOIcAec
         Euce+/NSnoLTiRcn7QobTlzbTyEjoTEfZw2w5Nxxc7V1zk160L27UmIWkClNW4KMhipa
         faWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S47rU+eSZMUrdE3o4F9VYpvYFE2kt8yut/mw+QpZohc=;
        b=UUg2X3MwgFwKb905ne77ACdJd3NENLVL+3kl1R0jAwRZIh+7hujllNanMrcMVg8xZa
         U0XyCXQkw8K+95PX1h+YHtDpDQbpqP7nC7wr5WOnBXDK6xVLVtwDxqcd+3jYmAtGxFpm
         T8SfPYhMtZuruD8hsjxYEOpQaaOtiJHMccw0TeRLrk0+YZZRxYkZB0i4dkh9PFx88Hq5
         f20tKq4Wt+/wSEC/qs3v4ZPRYswt5hMEmQuTw0gH33dvoH2YlQTRKkvi3CrM6GjD4jxQ
         PgHrLrwEfMb8vofYBFl7UV5A4a/O9zXaqrt0dVxgK3c1YtnzFl0NKmB+sQlOXFgIeD5E
         q28w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=Lh2+mUHm;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S47rU+eSZMUrdE3o4F9VYpvYFE2kt8yut/mw+QpZohc=;
        b=frx6UwZB6sfXKtZXrYfaj7vnkjTiDfooGnwpMxjNOGmrv1VV5nlDXCGDS+0VSW8E2q
         soiBjtABjKDmXrWxUX5MSUYSsbz2l+VfrAuAC2C/tUODzGop7QsDC52h5VyBMC29631e
         NYMaUK0XXTwapY05eHzfu1DDLxe7vY3oaG+5sGqPYXTZUINereksUlYOXgWeHCrEl1fR
         sEVaKAEWNuBnx2nWwyL89wulNHAUbhrlrdKxdLUiOjM3RIoQGrH5wj5krsMRV3Ntq2bS
         Dxk4SPeLFeptz8lkH2sfsjLZHQdF6pDhBmrwxFFbWG4g2SAKBglCpCLp5JKZlM4CSNgU
         L7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S47rU+eSZMUrdE3o4F9VYpvYFE2kt8yut/mw+QpZohc=;
        b=COALsaYsFgw78Cx94XdrxphCEl9rTFkXJnKFXXMZDzbfrwCwHjRspquF4i2pXBPnvN
         pOzW1aaIYKY1GT7mfweKW7XFWmEZme7mnoywl4CuddrUxRbJMkbarZp5WV1N47zX3z/3
         lS3q2LawMlaJILulddfRq6Tjxa40paiGE1mhG/Rji/bKwOnQDXCF0fLhK0yweQI48fXB
         Ed12OI4Y0GuxOGhep4gzG239yWPaUkkZc5N8XOPfU/eymUGnH4XeL0t0++W9AsHshoBQ
         fMXVkG8pgj9rHQ5I9/8pG/Muv9DhxCetIKay0kvon22ObEKnbQyi8vmurENcAPKL0d/9
         TbIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nDDu32YnclG2sZo1QWkXZv1AQq2aqUsMOfupk9JArBGSXv7HA
	g5up0VnAjJ8DVpohgQTJ3o4=
X-Google-Smtp-Source: ABdhPJzNh3y24xVsW6S5JFr2EXwKq1DQaFNuLpIN590eatiUAGATkUea9SE7Ws/DcISHakxd1I4iWA==
X-Received: by 2002:a05:620a:2849:: with SMTP id h9mr3376788qkp.69.1629376039455;
        Thu, 19 Aug 2021 05:27:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:88d:: with SMTP id b13ls1535916qka.6.gmail; Thu, 19
 Aug 2021 05:27:19 -0700 (PDT)
X-Received: by 2002:a05:620a:15b9:: with SMTP id f25mr3368529qkk.400.1629376038940;
        Thu, 19 Aug 2021 05:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629376038; cv=none;
        d=google.com; s=arc-20160816;
        b=DgIeleeeKbWKsIdStGh7d/gICjaCdcL1Gb6F/ucoo1gzFBmHBahCz1HgEaFJbXQjf0
         Aam6YzoVZq42SDH9+UAvZX7kUa6gWZclxxtDZAMlJRft4iqf5ACl7wtd5yYrryfVIfev
         xgf9EgddPwEyQe84zMsfakE0Fg13hd3KTLt+6j1KZQeFAPJdBzGkqgbqt2wq7tK3ou7r
         /06TUfsPcCrbYioQrPCmkBBv4jb4QjzFZYuHR0wqge6qBB/CpAvarQCtp9oDLrui3SqG
         g0ipraK+EY9WGYeaNiBAQUQeUeG++SB+qblMbz/dA0vQDxuJlelx4iAQfNgdoOseEBYH
         rDsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5h8DRQ7Bx+eFzlj90sftRVtoQw5ByFsjYM5vOznvNjM=;
        b=pz6vF14Tpf5AqCdBLv5L8hy7g/SHJ+oc2mbOV0B2Bx2QoBOgTqXzvNPlsRIaZNnJ+2
         EbYs2r7+CKmrm995Yic2hj57y+kLzUMhzpx7pk/bBPuRpKuX6Q15d2SqcwxnTByKanRW
         rQloBbA2MjTCB09wRcz0tKd5nJ2wqn/XxhJfBD2bhd+Z1W1rAjQImxKu6XB6s4VD4iE5
         om7Xtfq/PHgTc/KER3cVAPWAGL8h9lH9Re81+CUGWeEUuOM/x2rLU6bt3MSyzGbMhhDe
         +unXCKQMgWxL54aFvCIya59PyRViVF1ZVgsiPZgfBGCLq4uQ712AfknSDtLNgtupuu1I
         WRVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=Lh2+mUHm;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id f13si157520qko.2.2021.08.19.05.27.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 05:27:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id l24so4391713qtj.4
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 05:27:18 -0700 (PDT)
X-Received: by 2002:a05:622a:11cc:: with SMTP id n12mr12404820qtk.363.1629376038633;
        Thu, 19 Aug 2021 05:27:18 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
        by smtp.gmail.com with ESMTPSA id d7sm1266808qth.70.2021.08.19.05.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 05:27:18 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1mGh8e-0016LT-A5; Thu, 19 Aug 2021 09:27:16 -0300
Date: Thu, 19 Aug 2021 09:27:16 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 56/63] RDMA/mlx5: Use struct_group() to zero struct
 mlx5_ib_mr
Message-ID: <20210819122716.GP543798@ziepe.ca>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-57-keescook@chromium.org>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=Lh2+mUHm;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::829 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Tue, Aug 17, 2021 at 11:05:26PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark region of struct mlx5_ib_mr that should be
> initialized to zero.
> 
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: Doug Ledford <dledford@redhat.com>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: linux-rdma@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> index bf20a388eabe..f63bf204a7a1 100644
> --- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
> +++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> @@ -644,6 +644,7 @@ struct mlx5_ib_mr {
>  	struct ib_umem *umem;
>  
>  	/* This is zero'd when the MR is allocated */
> +	struct_group(cleared,
>  	union {
>  		/* Used only while the MR is in the cache */
>  		struct {
> @@ -691,12 +692,13 @@ struct mlx5_ib_mr {
>  			bool is_odp_implicit;
>  		};
>  	};
> +	);
>  };
>  
>  /* Zero the fields in the mr that are variant depending on usage */
>  static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
>  {
> -	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
> +	memset(&mr->cleared, 0, sizeof(mr->cleared));
>  }

Why not use the memset_after(mr->umem) here?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819122716.GP543798%40ziepe.ca.
