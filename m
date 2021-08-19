Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB74I7KEAMGQELIDYTZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBA73F1DA2
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 18:19:12 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id y10-20020a4ab40a0000b0290285068c6fc0sf2912161oon.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 09:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629389951; cv=pass;
        d=google.com; s=arc-20160816;
        b=VoraElMzqcSnjIQ3j3bexWC8ki7uxSVgplBmZRVCfc3Kx7MDK+hfFGLduFMip0gGce
         bHbUnZVSx20WWEwR7CGk2VlzGwbB8DAk61lnK+BKlHZvjkiqt4AFtKAZUjkbZNqpWmer
         W2VCbnKOZqFEM4p51NjMm4RpwiXbSPaNDP1y7b8/a2oj/bPwUIeenuxtHp7M1+B+Y4Lz
         WEkDVE2VGWwjyVBLJ61XfE5MQupxf3VHNnumz1nepI4ao/QwJd25MAvUy0Sw3vHVlu6h
         j8YG9pGti3VC9xavT++MQMXgX2m9dHO2zlxezrUtvLxxgAY/sr+v38OhaABmJMC6CYB1
         sjtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=euXpyk/GnJ0l2ZimnHTkqP+BOP6/1S8UHx2qyChOkmc=;
        b=US21K5nLMckEiRP2ajhCLZHuyTb4pNFCmykAVxvDSCtsNgsBm3LxJeKOP9f4OVAkjL
         oBdtu1rVjHPFiUZcd93VtpkkgCvJXX6YuL5W5sFuu+7m3d2sIwMYID4xjt0VXoN8d2Zm
         vltib5YW+Nm6G1+hfQFORiW9BwSZJ2AtsmfZSdllyNAYJ5PcHTHDiga3P2RY7aB2gUZI
         vL8dR46YWSMYC87p1thvsas0urpyav8FAjul3+9J9mLHFEkUfJptNy7zdlU2AlOH3W0D
         dYe/yUDuM/omdSmjlafDWgJ9+PdgHqFw+nIWxlY0OQNTa3E4Ya6Xei3JfzuHiuLJ5KvJ
         seFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XcvTQsHI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=euXpyk/GnJ0l2ZimnHTkqP+BOP6/1S8UHx2qyChOkmc=;
        b=VZRdphMCE/j+CktsExkRicz9D/AjP3uQyfwXy6N8KqOHxseet09qe6KC1YtHdxgR1h
         7+U9ezEwcKAt+ekm46NRAsDFM5er1rx/hXUnVmXoWtYM7Sh5TZVxhm7Iy9bdSCCysvsw
         LJbBqldkcI9nWW01aHtQg/jAg+DeUTR6U7EJbjgqrSTFNIa9H2F2J2Pi+WtLuRKviBCg
         wpc5rrHM1mPdJdUhpzsT7b1ErnYptHkx3yqK8AmXz1k533eeg6ooaHr42dz/OfO+AvyC
         106xSxkp3JfU2s/gVGdXdv383pis7WUDwJ2CDCHxop8t1ac4C/F3I0GAwAL6t81R5STO
         44wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=euXpyk/GnJ0l2ZimnHTkqP+BOP6/1S8UHx2qyChOkmc=;
        b=P8Oz/nUScdc9GWWVPUPRgNZn/vhEqiSIs/ROuGmbx/j1tWx+zI25yM9StoZWISBZms
         HnPi4V9tMoiooYrfo5A1MZfhCLt3OQADTCdPR/R3T4T9Q3xLjyrHSSebvb5/7akG461f
         cCDUxQor/7ZaC50V8ULfuOJulzgrVg8OOxOhNpq/b4Mzst8f9Z8QzgglONjKnaM/vwjf
         cHCI0I28UylTJjekPjsnllj59nMTQtDilxDU7ZtQzo4yUNxYKMp1hyXHrL8gSRWTWt28
         SYa1H+kkJxj/QZWANpi9OTAKzI3UcIWNR83JPoL72enPVZSUgbTYV27Mn9l0IXx/MSS+
         +o5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533S+i0+/kRKZcHvid8uALHo4Z19kVINCXSi24WTcFIlK40zstQE
	NBf7fgBbLs7R7hvAqF0cZsg=
X-Google-Smtp-Source: ABdhPJzDBeo8krvtiAdIO0KZtIYjSgEviH8sSLxVH/Hj1vVnsDoYD6/8u0vHaRfE/oAjLzFgu964yA==
X-Received: by 2002:a05:6830:2098:: with SMTP id y24mr12360241otq.137.1629389951125;
        Thu, 19 Aug 2021 09:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e096:: with SMTP id w22ls411277oos.11.gmail; Thu, 19 Aug
 2021 09:19:10 -0700 (PDT)
X-Received: by 2002:a4a:3944:: with SMTP id x4mr432090oog.69.1629389950642;
        Thu, 19 Aug 2021 09:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629389950; cv=none;
        d=google.com; s=arc-20160816;
        b=stBz56VLGZ2VAbRLBV1SgAYJ797gmMYrQyDe15uHJkOTWfeIMe6/GSVwLl2KNDlZyh
         9L6RpbCc86nDmbr52mxvtkYYkqz7lPxmigx+feha5YAmOosuBPgQudkY8mMvWI5e3fdL
         Ms52Bi/OmXU1Dz5V5K6v23wCwihwTqYuEcvQQ+prJJWQtGiOIBvjF+CBQUcy8iehtFrA
         AawbzLqGJ5gQMRks2ixTeJv5yOIT1awXFRWKxm2om/2UTeGAz/A+/5M2Ge4vY9wo/lP0
         e8P7WgbvIYLMFSB68gCklXiaouwMqAFh1fbOp3wJftSIMGvmGE6By6ujwILYkFH/oAnj
         lXiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=n2oL4Tx9YBEJZiltx3dyyG7cK1iW2U3lPZG+XFyhvas=;
        b=PAb9bqlI7YL04RiuHLubrUEtRi5Q7rckt7hOJcSr4a5o61Ah8dL63Buk8YdRIzDALQ
         YJiTFhNtoBrvmXTCNRD8gZci+GtdDC3u47b79k+xH7TdKgtv0r2AEhiAs8H7PHqjXveT
         WcqI/XPuxD3PY5ivWKQN5twi+lHAmiyH1jFyrqLSBZzhhVz8xLN7lPQr/UhBYJvyFxAp
         Ltq9KwovJAqkfH2aUeUHqFvB9FwlpcHIBbB9weLy3xMafQUvt4ZCe4X/2dlE7mHywd+S
         Q3uZ7G5a+B0SMGnlj+Vp+SfxhIQTtPbvE5oz9aCnltj9M/Bcu31WyRkXv/oSRlbDoNNq
         A+Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XcvTQsHI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id c20si187447ots.0.2021.08.19.09.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 09:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id i21so5961018pfd.8
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 09:19:10 -0700 (PDT)
X-Received: by 2002:a62:78d0:0:b029:3dd:8fc1:2797 with SMTP id t199-20020a6278d00000b02903dd8fc12797mr15227415pfc.65.1629389949876;
        Thu, 19 Aug 2021 09:19:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g26sm4675777pgb.45.2021.08.19.09.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 09:19:09 -0700 (PDT)
Date: Thu, 19 Aug 2021 09:19:08 -0700
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
Message-ID: <202108190916.7CC455DA@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
 <20210819122716.GP543798@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819122716.GP543798@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XcvTQsHI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::433
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

On Thu, Aug 19, 2021 at 09:27:16AM -0300, Jason Gunthorpe wrote:
> On Tue, Aug 17, 2021 at 11:05:26PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Add struct_group() to mark region of struct mlx5_ib_mr that should be
> > initialized to zero.
> > 
> > Cc: Leon Romanovsky <leon@kernel.org>
> > Cc: Doug Ledford <dledford@redhat.com>
> > Cc: Jason Gunthorpe <jgg@ziepe.ca>
> > Cc: linux-rdma@vger.kernel.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/infiniband/hw/mlx5/mlx5_ib.h | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/infiniband/hw/mlx5/mlx5_ib.h b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > index bf20a388eabe..f63bf204a7a1 100644
> > --- a/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > +++ b/drivers/infiniband/hw/mlx5/mlx5_ib.h
> > @@ -644,6 +644,7 @@ struct mlx5_ib_mr {
> >  	struct ib_umem *umem;
> >  
> >  	/* This is zero'd when the MR is allocated */
> > +	struct_group(cleared,
> >  	union {
> >  		/* Used only while the MR is in the cache */
> >  		struct {
> > @@ -691,12 +692,13 @@ struct mlx5_ib_mr {
> >  			bool is_odp_implicit;
> >  		};
> >  	};
> > +	);
> >  };
> >  
> >  /* Zero the fields in the mr that are variant depending on usage */
> >  static inline void mlx5_clear_mr(struct mlx5_ib_mr *mr)
> >  {
> > -	memset(mr->out, 0, sizeof(*mr) - offsetof(struct mlx5_ib_mr, out));
> > +	memset(&mr->cleared, 0, sizeof(mr->cleared));
> >  }
> 
> Why not use the memset_after(mr->umem) here?

I can certainly do that instead. In this series I've tended to opt
for groupings so the position of future struct member additions are
explicitly chosen. (i.e. reducing the chance that a zeroing of the new
member be a surprise.)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190916.7CC455DA%40keescook.
