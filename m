Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBP4W7KEAMGQEIGODNYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E11C73F1E4C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 18:48:00 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a91-20020a9d26640000b02904f073e6bc1dsf3079613otb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 09:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629391679; cv=pass;
        d=google.com; s=arc-20160816;
        b=PjpdaUcBmjVxuZ5EvnQYgR2aXwAae5tBHjlJQW21wA3D4F7aN/uImi2Mg4AFld9C2s
         r+hFfvJIODVUi0wY1mmX8+doiE0PjxEhszU+hQdKetw59D1sqfakctUSu+8z9/8ZolfZ
         5y2ZjHmM407IeedS6orXD7JRl3+vhnM+XIOAiWrqXtaxUZHJTitrwm1ka/meMX54/Amk
         IfPVtL9E2gF2XSrqpUQKTAz22UsBpU4lJrI5imaDsaGa+H/TiOutXdhZ5MRpVnypKj+T
         OioDWIw7kNlfTeuabFQp/+bm0aa9h6TPVHmqNNa4M9OLKtMRvpb3LkQ6wlHJ4OR6yyhh
         GXGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AT7qVKQ/0pDp71gmHuGTtAD7isbQniAb2zvSVQIAYpY=;
        b=zr0migyW0f07tY5AfhHFE3iOln83mXG9eW5mAltb06ka4I3RBL/cis1k+5mu5mfuvb
         PgrcMXC1pJKbGz50xjkwwLxN+wwivHqhq0ZdCjyKPQIelwAF8QARS2QPM++9yqBqekS3
         trPq8nvr2pXfw0iozYGj/X61d2fISMus4divJWa67x5vMT6ey2sehhvXbtt+u1hWvCZo
         KtJIQddD0ifmKWaiPQU1kDQBVHmhDe1wgW1+2r31tA3i4R0Yc2H1xW7Z8HIK9+nmL+U+
         93M/OoGFl4+eCOs4tOMlqUdarSz7Z52LPcBJ6MWP9rr/BzUdxunjThEQi8hGj11gpWEr
         GYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="dvp/j6Hx";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AT7qVKQ/0pDp71gmHuGTtAD7isbQniAb2zvSVQIAYpY=;
        b=PuieMyR/XnVyX1iadOW3loSm4vQDXPnRPSL1911BK78LPWl1VwZ8FG0VnVa/hL57O0
         zLyR7cL5xPvqQgtF5lGQnyX63hjTj7y0P+uGh6QrKldVcGHuDzz04p1zLsae0dWFgXOT
         Qcw3uc/+O1t5vcIEdG8Z7xz0J8EQz9Nw5iV6gRLvrIw0wvDvZBGUVqnFem7dRS9Acfr9
         CMe3v4CZHFFLJb2rEboePsjGQW4Ppu+UnuRAc3FcazajlEkaoX9ZJ95dxVKN+pbSHluU
         Dq4V8Q+PfNEI1cTJAVW2/cHHTnDxbt+datQBwo0TvtE18yU2/eJfr/NDQXMEKZBGP+Pv
         bzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AT7qVKQ/0pDp71gmHuGTtAD7isbQniAb2zvSVQIAYpY=;
        b=pvv238dYAQrH/ovIx/zXnaL93tk0HHVuMn6+pNP1zwv3GI5Yi5WnlIENB/mYFKK4a5
         QEJpxDiK2cgbf1gqTpy2Ekfvnxc+yy2t67vbSWN4Kx8ePAa2wczkYhtPJDr8Tkuozb44
         D9i6VhxpNjN3xlEkZlM94U85zU9ihhDzKjHjV0mnosR3ZdYEHWslorl7L9EpAWmfPqd6
         fByJwYNsWUkO59kg22n5kO64nA0rfzq1lTbwlo5VakhGBh5yokL9k5K9bgW/WCHSzkci
         38vzJWHa1vxIH+C1qN8O/eYZedaV8O+utKByxcnsQWQBgCsf08uYZgrkiuNI+mmNjeMS
         66iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yogLPB/WCqyqXez8CtTdWbItuEFyib4COtuFeSbgYUgaOgPzi
	QiVLci/Ys8PzoO14Ir0Q6CU=
X-Google-Smtp-Source: ABdhPJzErh26RIcmMACViyRTAaSg569rkkNs/JNyftTL0RSdWP/P+O+iHSzcD9A8NDNLrGCZttMTvQ==
X-Received: by 2002:a54:450b:: with SMTP id l11mr3287669oil.116.1629391679662;
        Thu, 19 Aug 2021 09:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d1c1:: with SMTP id a1ls246891oos.4.gmail; Thu, 19 Aug
 2021 09:47:59 -0700 (PDT)
X-Received: by 2002:a4a:45cc:: with SMTP id y195mr12283992ooa.52.1629391679290;
        Thu, 19 Aug 2021 09:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629391679; cv=none;
        d=google.com; s=arc-20160816;
        b=yN8hEY9B2Qe29csDDbqTh4ECYktjs+8bjrijtWsZnpocYSTIiFIjShKMDjB+twViGY
         L+C9ue8CFasuRmEZbU4iBi9OXBWVbDG2/KhGu52oJ9hXt/EUDQHxMTFihjmyLohJBsmD
         jEZQvCW+fOFdpMnjeTqsIzlbbAFeq48DTUOzntu+wIJUtx26rBt5Q3YJpf1Wy3RhgTXS
         vEpdZbbsyAuvhXqutidvqag6QFBTJKLspygUyk2huXs7XBwyWCv35FJPT0DJ4M541cgi
         e+YeWSL8W9vA8rIKXN2nbbEqXVeOai9FhL6Z9RQaaJmJg05H2kwzrdowVN4SITRLAjKv
         xxTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PRHyIH4ijXf+mY+7Vzztn6Pqcrl1CNKx+frAJCQ2Has=;
        b=FgyN41B14OokBa4vqsHBuzNpVTPz19lIizmzbWJ5/jVGywxpPPPi/+Do/njKx0br1x
         M6BbiuVG8phORWWKSBl0oskt0Ss4Y2bDMQz/TqeRQgBcuQe8ZXLXdHho1nwNc15aXG83
         9AeUFNJtF4EUxNNyUAG/EPInmwgkIPQDAJ6LrWAzlJsQ+ouhpy/A+bvS5JsVPtnHe/Rx
         bUHSJAP2BvFUvJJhuBgnIs8UOAjHgYMSxeN/FTwYQwc1hzWxR/MUH3Uf3iyLDorh1l2p
         yDlyXqLAVsMoe+wOPoR3YTeueHIXc2dLagOHJgi5579V+XsX8P4UlUww2skicCcjaq5W
         IwHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="dvp/j6Hx";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::735 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com. [2607:f8b0:4864:20::735])
        by gmr-mx.google.com with ESMTPS id be33si234146oib.3.2021.08.19.09.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 09:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::735 as permitted sender) client-ip=2607:f8b0:4864:20::735;
Received: by mail-qk1-x735.google.com with SMTP id o123so7769880qkf.12
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 09:47:59 -0700 (PDT)
X-Received: by 2002:a05:620a:1221:: with SMTP id v1mr4584134qkj.357.1629391678741;
        Thu, 19 Aug 2021 09:47:58 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
        by smtp.gmail.com with ESMTPSA id c67sm1770032qke.113.2021.08.19.09.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:47:58 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1mGlCv-001See-95; Thu, 19 Aug 2021 13:47:57 -0300
Date: Thu, 19 Aug 2021 13:47:57 -0300
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
Message-ID: <20210819164757.GS543798@ziepe.ca>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
 <20210819122716.GP543798@ziepe.ca>
 <202108190916.7CC455DA@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108190916.7CC455DA@keescook>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b="dvp/j6Hx";       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::735 as
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

On Thu, Aug 19, 2021 at 09:19:08AM -0700, Kees Cook wrote:
> On Thu, Aug 19, 2021 at 09:27:16AM -0300, Jason Gunthorpe wrote:
> > On Tue, Aug 17, 2021 at 11:05:26PM -0700, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > > 
> > > Add struct_group() to mark region of struct mlx5_ib_mr that should be
> > > initialized to zero.
> > > 
> > > Cc: Leon Romanovsky <leon@kernel.org>
> > > Cc: Doug Ledford <dledford@redhat.com>
> > > Cc: Jason Gunthorpe <jgg@ziepe.ca>
> > > Cc: linux-rdma@vger.kernel.org
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >  drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > > index bf20a388eabe..f63bf204a7a1 100644
> > > +++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > > @@ -644,6 +644,7 @@ struct mlx5_ib_mr {
> > >  	struct ib_umem *umem;
> > >  
> > >  	/* This is zero'd when the MR is allocated */
> > > +	struct_group(cleared,
> > >  	union {
> > >  		/* Used only while the MR is in the cache */
> > >  		struct {
> > > @@ -691,12 +692,13 @@ struct mlx5_ib_mr {
> > >  			bool is_odp_implicit;
> > >  		};
> > >  	};
> > > +	);
> > >  };
> > >  
> > >  /* Zero the fields in the mr that are variant depending on usage */
> > >  static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
> > >  {
> > > -	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
> > > +	memset(&mr->cleared, 0, sizeof(mr->cleared));
> > >  }
> > 
> > Why not use the memset_after(mr->umem) here?
> 
> I can certainly do that instead. In this series I've tended to opt
> for groupings so the position of future struct member additions are
> explicitly chosen. (i.e. reducing the chance that a zeroing of the new
> member be a surprise.)

I saw the earlier RDMA patches where using other memset techniques
though? Were there flex arrays or something that made groups infeasible?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819164757.GS543798%40ziepe.ca.
