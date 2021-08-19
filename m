Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEN77KEAMGQEUVFOJBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 953AE3F1FAA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 20:14:42 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id p13-20020a67a60d0000b02902a88e22a5e8sf1278404vse.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 11:14:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629396881; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3VlyCyBHbjDE/FAcX8n775p7o3NJcvIZcrQQ9UPhfTbis4r4T1+mtHkE8DcOZq/6f
         ll77gCxqNBKtSBcKPZHP81reSOznzEd2ODj9FnTp5xDs24KV6xCFQy0FqVsT8CS3rvk1
         OG0RoEXxunTw9WlDbxf9Xu92c18wlJi8peyaJlzl4OwFRfhVfZl8yLfZrEZCIYEoC9qW
         M3TjDaNArefTtuxNXDxWUn/SuxUxMdTxCibxsD9s4CF4gkeuchwn3cjcBW4ASH8hK8s3
         M5K5q1kFk1UR+ueXrbIY2AYiGzCtz+9GmQZrOF7ARQmXRujYaI50i69pLGH/jtMpxOvq
         ybFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XOameZXlN8Y+hlF7vnCS8MJtVqihKfLsgt30b7zHmEQ=;
        b=x8Y81Ndcup/laAQiXNAC/1LxD4/PxgPbHktcM2kjiFweB5SvRRfgVIIgYUadwsN6kD
         DFfXg4iARz1e3ZuUoS5OfolHnfOZXDNqnYpLmpqypgkNUKZbdLvCkeH8UCh7NKkujxwb
         JsazvJtIbJvOdtmCe7esC2/ZzTu/huNuEg0m+s+gaH1SS9NHXjFthriZ4xOLAHSg0zG/
         w6FxqxKbiB9IsjEX9MuYxzzeY1bvyoNLPEgtJ6lR/t+kOv9hoelLVONi1Gmg8LmGyaj7
         P38K0yYbTrAR2ME1jlDjsyf8rWmWs5enc0gMLtVMFHE8GGMbl95SZ2CYkZZOXAy3r9Ys
         rcdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="In5/RKkU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XOameZXlN8Y+hlF7vnCS8MJtVqihKfLsgt30b7zHmEQ=;
        b=WAMoenv4o7RoTwvYYB2jwzNLBhFpOF4gJ2UnVeV0G2CkS+3HPTnY7xYCWmBbgzq6kU
         yx2xLGacIsA0LPnQG+A0EgyHOBVxNLL5hDOEsGF9NkukP7E6kAWqr9k3Em8MY6ANEcom
         XbsW8uKi1zV/NmcF1aw9ue6fOh2sXHZ6HVfrA0mInUbpIYh3tMVRz5veCQiUeJ/sUDon
         xNCMUulsgyVQogy5AiStnMVpqQFd5YrEieiwGvOpa/HKnK+oqAeGJZARBy52rAblamjr
         6G0MO04TOoJ5Yc6x8xswoWIaHbirx4uYjOOKIC+GzcfuXoVpGlJq+kyTnvH+OZAtnz11
         jkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XOameZXlN8Y+hlF7vnCS8MJtVqihKfLsgt30b7zHmEQ=;
        b=VcOk/uYDxaRyJ+HU8j2PaXACq7ldKA4GhGq8iWF+aIvbggcWzNCXY+J+5Q9c/Zg5U0
         rKezJju3Jy4urcXGfdYzvqE9x/nDnRH7QnJ7Oe4Ebf7BgSc4pndmRhXvXkj27gCc8cC7
         lZkoMXvLOAfl8FbD3Pr/w12lXBWQglftWyM+CCrjsuZCpibY3EhuaW+7p8EEOGNe+U51
         mIrnEo//bvPb3bcZPJtELeGuEic0oY2vUs705E+HED7WJQ8qKIi3XZrWIUXwFPYXfAEP
         4mtmTI2OJdORtyFLh/lSmA580GUNZsEK/tvk+E2Bmw+jge6qp2XdsEAamujZsUQUUrDi
         ZqEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533apJMcdq/jbfhMfh7RNLh82E/uzM/iawpce9oVoy6FBQvrma7V
	0OmdyCVBQ7q60duxasa6YX0=
X-Google-Smtp-Source: ABdhPJzYsRrUZbl9DSQipiXtQYIF1juYFLl33pn9d6/hmWdwTlqjc8HVNRpkefxwPN9nWf8nbrWCVw==
X-Received: by 2002:a67:e08b:: with SMTP id f11mr13926150vsl.10.1629396881401;
        Thu, 19 Aug 2021 11:14:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7285:: with SMTP id w5ls672030uao.8.gmail; Thu, 19 Aug
 2021 11:14:40 -0700 (PDT)
X-Received: by 2002:ab0:3b59:: with SMTP id o25mr12219139uaw.80.1629396880678;
        Thu, 19 Aug 2021 11:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629396880; cv=none;
        d=google.com; s=arc-20160816;
        b=wCR2nQili9o/DK2HJtROPQgodcRqx3vMBZn1jGCoodoG2HNNjrA1Ir7ZkiuOq596TZ
         PZpfRBF3m/iRwKZXFDfdGltOyUp4imZaDc0qvU55/hzBTjVyC1gTBzfLReHiEC+6kXXq
         VWoQ2FMiZv5cVjNM/1Ar2k6tQwY+zj43xz+6stu57WyRjVxeAa0UNGFTSrkV/2Cek5WX
         jXIcuIqu1t1ctM8WJb2a6Bk488rEOSCXLzo5yvxFwjMIziNFjbYBNBsA34wcbUQpGJnI
         rpB6STbJu+6v/ZbNHJiC4ZJpIvF8j27E3ftjwQPe26I7cnKAWNWmxVqz700NHuK9cTme
         us9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0SKhC3J984Bt9tebQiICdzNOkpC2IvMStmeSDq7Umio=;
        b=Wh47APiDZyxyCMyq0hZh4qazAF6gt560IM6ffcLY6rSO9oSON5edr9hqfZcQISep8N
         fqLuo8/PK/ohqQi2CqC7boGsQerbkjPrXvGXC1vkayl8rt9QQKfVqeVL23q+E2dj4Dq2
         AlFM+EbERomrOQNMMFFARZe9O29GzC+iE9TCkrUoG7wXPNE7eWHSBVE1FMxphUAe+MLW
         9oMKbQ2qoEqjtlUxUtJvPMDrUcSqLlDe/hjrYRnDhXfeNcM7PcbxR+u2nvC/RyRjQh5Q
         3SekqKn5SuC+pOe2Mmj6z+Pr6UWVedAMwkGAkEULL1MKh0By/YXFac6pk4gi6pOddfYy
         bcBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="In5/RKkU";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id c5si225234vkg.4.2021.08.19.11.14.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 11:14:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id w8so6658445pgf.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 11:14:40 -0700 (PDT)
X-Received: by 2002:a62:8603:0:b029:3c8:3fdb:4aea with SMTP id x3-20020a6286030000b02903c83fdb4aeamr15702539pfd.6.1629396879394;
        Thu, 19 Aug 2021 11:14:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y16sm4202007pfn.42.2021.08.19.11.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:14:38 -0700 (PDT)
Date: Thu, 19 Aug 2021 11:14:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
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
Message-ID: <202108191106.1956C05A@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
 <20210819122716.GP543798@ziepe.ca>
 <202108190916.7CC455DA@keescook>
 <20210819164757.GS543798@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819164757.GS543798@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="In5/RKkU";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::534
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 19, 2021 at 01:47:57PM -0300, Jason Gunthorpe wrote:
> On Thu, Aug 19, 2021 at 09:19:08AM -0700, Kees Cook wrote:
> > On Thu, Aug 19, 2021 at 09:27:16AM -0300, Jason Gunthorpe wrote:
> > > On Tue, Aug 17, 2021 at 11:05:26PM -0700, Kees Cook wrote:
> > > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > > field bounds checking for memset(), avoid intentionally writing across
> > > > neighboring fields.
> > > > 
> > > > Add struct_group() to mark region of struct mlx5_ib_mr that should be
> > > > initialized to zero.
> > > > 
> > > > Cc: Leon Romanovsky <leon@kernel.org>
> > > > Cc: Doug Ledford <dledford@redhat.com>
> > > > Cc: Jason Gunthorpe <jgg@ziepe.ca>
> > > > Cc: linux-rdma@vger.kernel.org
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > >  drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > > > index bf20a388eabe..f63bf204a7a1 100644
> > > > +++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > > > @@ -644,6 +644,7 @@ struct mlx5_ib_mr {
> > > >  	struct ib_umem *umem;
> > > >  
> > > >  	/* This is zero'd when the MR is allocated */
> > > > +	struct_group(cleared,
> > > >  	union {
> > > >  		/* Used only while the MR is in the cache */
> > > >  		struct {
> > > > @@ -691,12 +692,13 @@ struct mlx5_ib_mr {
> > > >  			bool is_odp_implicit;
> > > >  		};
> > > >  	};
> > > > +	);
> > > >  };
> > > >  
> > > >  /* Zero the fields in the mr that are variant depending on usage */
> > > >  static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
> > > >  {
> > > > -	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
> > > > +	memset(&mr->cleared, 0, sizeof(mr->cleared));
> > > >  }
> > > 
> > > Why not use the memset_after(mr->umem) here?
> > 
> > I can certainly do that instead. In this series I've tended to opt
> > for groupings so the position of future struct member additions are
> > explicitly chosen. (i.e. reducing the chance that a zeroing of the new
> > member be a surprise.)
> 
> I saw the earlier RDMA patches where using other memset techniques
> though? Were there flex arrays or something that made groups infeasible?

Which do you mean? When doing the conversions I tended to opt for
struct_group() since it provides more robust "intentionality". Strictly
speaking, the new memset helpers are doing field-spanning writes, but the
"clear to the end" pattern was so common it made sense to add the helpers,
as they're a bit less disruptive. It's totally up to you! :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108191106.1956C05A%40keescook.
