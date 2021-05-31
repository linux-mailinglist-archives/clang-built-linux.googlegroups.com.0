Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBV5H2OCQMGQEVAHJPSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F52E395A47
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 14:17:29 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id u7-20020a259b470000b02904dca50820c2sf13528213ybo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 05:17:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622463448; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZP6W7cYQAHxEuMXR9aYAzBPlkvGya29/bsjlMVQWNpEoqF6z8+ewUSICr27C5vUOL
         G6qIc/l+rTQmFYhQXvrZjJW5Na5jQq2dCpXt5ClqnRDgUZXvGYIrAzK0C8ErD/rzOXb0
         ee3PRYgW5Xr6U9ngzb/500ywaU9MJrCih0HW2I9o6reX3DPk+Yb5TSk94ehDNSRPWKI2
         WXf+tPXA3M8AruXxNgZ+EsbZqTSE8G20C5Gyl05CnDvFTkFEnpLDybsEuUgAzxdecFTw
         7V7Ac9Se9HmCdmZ9O8TIo4MZLWr5v0sFPidycq33UfLNwIrHEaya95J4DERzSrjnZHij
         5PQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=g33TC3EzGbvu/FbuUflEleAncTCO3bcpDhvdk90yNuA=;
        b=rBhzAuRhUaSoShHVgAFWUVnSvFnSSKaxXrksVVDEQglHeJv/2OIZ/F18FBMrEJBLWH
         rmqY2PoWPhK4iLbX/Jny1p9JfzbsNMIPeAywKdwoaY9ZsRKLq3c11EcFvhHyesDpardq
         QHfFqvw8IIVIze6ESZRbsj8xI8esjlavuHlVSUb45xuPaESDbExlqSAvYuPfney3uR4n
         XeE2d/54sb8Mcq2IUaeeGesBWi3o9GtFIX52sE7amtnz+yzTduWIw7DyttMJ1e/84Z2m
         uvsuuZZivm8fU4FwiVLare7zPuB5hOaE00VorLfHwvYWSi9/6LDtKrCl40GK2sKu1cDt
         gVaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=iWnUCg71;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g33TC3EzGbvu/FbuUflEleAncTCO3bcpDhvdk90yNuA=;
        b=DvJQIuSDJKUrIRlKhAVky4zGiwodXQbnSEclGTEab4T4FzierBYLZ598DRhayBVp2M
         Rz3ckDD+LDOwY2KELSdePq1SErZCuQOHW21TCg/GBFZG0cGJCt11LzC2FDnci5yENN9U
         3xjSHFD/HwgRDML5n0YU8XhY8GABcxpEtYxse+IeEgKn2nIEIKLCRtCUirArJrl6Ru7P
         LakJCuMBTe1CuvschBs/LfCI+KOdki+rq4RloV6kqJP+aGTzX7MCB+ZD2iZW74oJdTxb
         B/ZG6NlYIys6D/MPuJIMIQBXlH4o0HmOnyCdhBUa9TV1w5MU0z9bU2rhuJCt5BkC/Uih
         S6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g33TC3EzGbvu/FbuUflEleAncTCO3bcpDhvdk90yNuA=;
        b=oq50RfP7hikRVe/Z+fS8W0nMcYgT2JyaVMVc6RjcENr+RuJ8iHdO/QQKcBchmPA4Ir
         Kf3BphPzeZmjOYXFx0Q+O6Uy36KJp8ybt+XcVvopfT/9ab09mrl/FIJ5TGI2/XUlqrc0
         eRQ7sXIuVS3sh6/C7DtSKxE8NYXMTVTrQx+3Pd2zPh7XUfj9cCFNb9Yra7o9tkGW9Y07
         xKj8Iu1GdBuMYqwcuAenhYJ5w8tnKGIIDKWYoAldoraXUUTXH0NPge4tetVnuGiqKwyF
         AeYP2dh9O6rjVptGdJkEdJ1XBc6PnAnHCqdYR9wMHz4rXvrlzGazQeaAmR5buAZb19xM
         BRnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R7MELM4XL5UtYv8soBHUzAGFDRFMMzmCxUNaod0Zfu7QfMoEY
	6Q/ImQmNQpiFzd7h5SEP4vo=
X-Google-Smtp-Source: ABdhPJxQCx/hfN4cvZlokC4+f610njxZHCKeC1a/BY52LbYHJcXb2SDJXG1HnSMPGro8vVouxAnSEw==
X-Received: by 2002:a25:31c3:: with SMTP id x186mr29113073ybx.382.1622463448148;
        Mon, 31 May 2021 05:17:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:38d6:: with SMTP id f205ls1365572yba.1.gmail; Mon, 31
 May 2021 05:17:27 -0700 (PDT)
X-Received: by 2002:a25:e6c7:: with SMTP id d190mr23307890ybh.215.1622463447655;
        Mon, 31 May 2021 05:17:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622463447; cv=none;
        d=google.com; s=arc-20160816;
        b=nw9YEx/vEPmFZ9CIvVObFiMPdTNppGlk1421qVubiqfAlzOieK/TJ815OFdR7rhbF7
         ic6CX2+gXR6yPBRxWSlYDvuq9tXfIAfyR7kn9j4qbNeocKmFIi1BbIECAZZcxsKAkOt/
         OJRmhsq90UXwvn9wUZ+RlKL1D/lWn0M7XL4OpTAktOf9iMb3jbmA2YjKKD1bcjTLADDi
         olF9PGHoaUPAd2tsueGhTPFuPQDBT5ojX8A5I7Xfuz98Pt2y3hvfnrmJPj0ZmuGCA7xy
         dwc8UH04g+sARW7oufEFUNaiw4oJkh5BoW9qHvBHWBjMYDxK425GkHPSjggmzpR5BcLc
         +ALA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dgNT90eNSG1wBt4tIaS2Vs12DhN1M5IN2OPueQvLpUg=;
        b=dGWVAy5uIwwVFmctjYFghFxEWqjH8txOG+MdfOWmYD6v34qsKz0iBeyhJs/6wW5JTM
         GQ7fFhojS8eYMCJqpuETYzEqnp3MSSleIrqEGuyPNd4kgwTGL3C7/X9MVHARKs/r/9ad
         PXLe9cIcRcq4M0RRkQohw8HXUd45jF8upBeM0cUKZlQK6SBLfPWuGCEc4xm8v2abi2A+
         MDAAP32EC7fgKfMX/eRYYweI9SK7CsP836zdeIOTZgIdOaqgcQS/+M8OzNDrnlL4qolu
         ND5rQG3H0YNFx0CcWsimZdBZU9v7TsqDwBiIQfk8jecVgbeNfkezmc6STulUgOa3XxaT
         Y9kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=iWnUCg71;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id q11si912934ybu.0.2021.05.31.05.17.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 05:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Received: by mail-qk1-x731.google.com with SMTP id i5so10950828qkf.12
        for <clang-built-linux@googlegroups.com>; Mon, 31 May 2021 05:17:27 -0700 (PDT)
X-Received: by 2002:a37:aa58:: with SMTP id t85mr9883705qke.387.1622463447356;
        Mon, 31 May 2021 05:17:27 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.113.94])
        by smtp.gmail.com with ESMTPSA id v17sm7967714qta.77.2021.05.31.05.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 05:17:26 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1lngrF-00H5Ro-OZ; Mon, 31 May 2021 09:17:25 -0300
Date: Mon, 31 May 2021 09:17:25 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jinpu Wang <jinpu.wang@ionos.com>
Cc: kernel test robot <lkp@intel.com>, Leon Romanovsky <leon@kernel.org>,
	RDMA mailing list <linux-rdma@vger.kernel.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Bart Van Assche <bvanassche@acm.org>,
	Doug Ledford <dledford@redhat.com>,
	Haris Iqbal <haris.iqbal@ionos.com>,
	Gioh Kim <gi-oh.kim@cloud.ionos.com>
Subject: Re: [PATCHv3 for-next 05/20] RDMA/rtrs: Change MAX_SESS_QUEUE_DEPTH
Message-ID: <20210531121725.GK1096940@ziepe.ca>
References: <20210528113018.52290-6-jinpu.wang@ionos.com>
 <202105290002.LSBHvezM-lkp@intel.com>
 <CAMGffEnoYGoNwXe75KcP8WCTXAYBKkhJ=cx3aC=4mm77stWzUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMGffEnoYGoNwXe75KcP8WCTXAYBKkhJ=cx3aC=4mm77stWzUA@mail.gmail.com>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=iWnUCg71;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::731 as
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

On Mon, May 31, 2021 at 01:44:22PM +0200, Jinpu Wang wrote:
> On Fri, May 28, 2021 at 6:20 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Jack,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on rdma/for-next]
> > [also build test WARNING on v5.13-rc3 next-20210528]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Jack-Wang/RTRS-update-for-5-14/20210528-193313
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git for-next
> > config: x86_64-randconfig-a012-20210526 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c630407c5feec818f0bb1c284f9eeebf2071)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/66f95f659060028d1f0f91473ad1c16a6595fcac
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Jack-Wang/RTRS-update-for-5-14/20210528-193313
> >         git checkout 66f95f659060028d1f0f91473ad1c16a6595fcac
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/infiniband/ulp/rtrs/rtrs-clt.c:1786:19: warning: result of comparison of constant 'MAX_SESS_QUEUE_DEPTH' (65536) with expression of type 'u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
> >                    if (queue_depth > MAX_SESS_QUEUE_DEPTH) {
> >                        ~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~
>  Thanks for the reporting.
> 
> As the check is checking against u16 max,I think we should reduce
> MAX_SESS_QUEUE_DEPTH to 65535, and drop the check in line rtrs-clt:
> 1786
> 
> Jason, you mentioned v3 is applied in for-next, I guess I'll wait when
> you push it out, and send the patch to fix this. is it ok?

Send me a fix right away and I'll fix the original patch

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531121725.GK1096940%40ziepe.ca.
