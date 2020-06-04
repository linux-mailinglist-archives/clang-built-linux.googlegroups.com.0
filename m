Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBPHL4P3AKGQEMZW7Y7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C701EE537
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 15:23:10 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id b63sf1336303vsc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 06:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591276989; cv=pass;
        d=google.com; s=arc-20160816;
        b=XIfOnfVCANL7IUSDDduJej2SkEcK3pXEfpn5KnzxMIBJ2F5V/aJ1dc2Uw+DMQQHpXd
         WorFbnoyI3QwoLddGT8Y9fIqy/R8qCSBt3Nz1F0bZ5ke5817Q6081ipv44r1DZhorHBo
         cA2VuHBTd09AuGylmM44vw5CYzo6+2tX/oiKMYf+bn/JwMfN1RRIsXrwgpsD7l0pUOHl
         jPnmU93eWn8aq4NMe0EL3xFIRga2LxPx8tv6Qd2xTASv1oG5UMIuqqfKcTFUZ1KXS9k3
         tyU1Da++hy7oBL9Eo2FozgWUYbyR5pMSdwD6AhLo6NeTAey9OQTPFMalaqOedwvw+H/n
         6Vvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UE9oxTXNqHWwujSQ75u/6prrUlVQISOKlK/NbCl14BA=;
        b=y9WL8KCDM1WhfEv0hjh/N02fpF11dFymFdF8gpbMwtsCgB18peo8+78O4cq+qwQR8c
         2eXJtPZBqJJrkSNHBXpxU9uptt/Ea2+l9uUNCY8Czg9ZufpopouKaCFS8BvUkUrqk/pn
         tu3c5xColmWggzocrcSvX6ahJHOlnqM9lZ2pLyJe5wUW4m2rW9Z+tqpq6DM4mXkCMjVs
         AUiyNBOcGBBNFXJvnZxkOZ/g5kBGPeLXa3B3MraRJzPVkxA4qZNaZLutk4liMEOxCEET
         7DmFNpLSr/4FBXIrXIM+nR5EsCUoM8Xe7uw40+LNaNjJf3AygQgf9oa5znIHOoRKynZB
         rsRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=Z1SifWi8;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UE9oxTXNqHWwujSQ75u/6prrUlVQISOKlK/NbCl14BA=;
        b=aCFaitD3nEjEmaC3Oe+Svzcb498cj58/ndUHmd5nYw3NdYWSfX5L7Hn5VX2Gg+52kr
         UvHrvo+SgGH/YoufZUMVkLiOWrwrpC+7Y2CdwbPuSuGxmRiVZ9w38tkKWb86Wl3ENn0a
         XKE/fNzBPRgZqq6j3tz+wRFcPuq8aCeqdfTLDHiLgtw/R5Oq7fAq0vm9s5aLnEY83YQD
         KGhCfl/0v93Gts9798ZSCtqp+GBUerN48K5CsXxgM31hZmzdMr9lYHGUC20Ve1RhZ/7U
         Pk+1KNh9IigtHBbgUvkraO0x5n9MRX+gL8k75MaAqtsrt/QttC9sPNYaANMpcXaK0tDK
         l6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UE9oxTXNqHWwujSQ75u/6prrUlVQISOKlK/NbCl14BA=;
        b=iIZEn12j+98bi9T0h033ovai1bWC7e52it3L7tc+hzeFfSmXrG5WtDIbTNYZWw7U6F
         aah+g2mmz+mQGYqUi0bKTupgIC84b39DMiNxV2RjquHLoqqpPhxPezGPvTcZAoiXnCYq
         3w5+VLR+aPKqBm5vvCDau2H5ZQtjd/ZToqY48njbLNFLjLt32KRLApK5z3zp6wOazvr5
         RD9nSRk8XGdi+ODJ5iOqtDf6OGfyDAhfA/7nKq7KK0j9B/e+8WYxwVaRsiO3PrxxpwWm
         pDPBARQgFjY3k34KSj61/aPtrl8vtKbYmDcGUbz0tjII+0uRZPjl1Va78+caMUW7uTsO
         EcCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xZO6r0+b+uFtEE0ifkOR331+Z3E3n5MfLxmjemkAeeW0Vp/qx
	qMpol6sQvVpjgnUlDqvRCXw=
X-Google-Smtp-Source: ABdhPJy4hpZXfY6NQuNJFViCDkNQuUQrv06CZwllIDn4NQk+wHFtS6oWHmNq0t3HZlZ0M7OZVKRdPg==
X-Received: by 2002:a67:19c6:: with SMTP id 189mr3377539vsz.184.1591276989075;
        Thu, 04 Jun 2020 06:23:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a04a:: with SMTP id j71ls290369vke.3.gmail; Thu, 04 Jun
 2020 06:23:08 -0700 (PDT)
X-Received: by 2002:a1f:f28f:: with SMTP id q137mr3447879vkh.79.1591276988640;
        Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591276988; cv=none;
        d=google.com; s=arc-20160816;
        b=h9KURAS7W7Hqw+YYrV9QMkaY9oO7Oj2mmLAMOYfUWmlWt592a/oj+nq6BVC6lFEi/y
         3jcjx2HdEO4AVFRQt8WGp6CMvY3PBHwHMxTupyJTSxaLRhF2h5i1Oe7CNLbGc/j9OMkZ
         /pJGRzLlK/6GHVK6pcS3GJcFEJZF6wENu6djtBkswNWD5mPWUEc5u2GWhrc0yj2sIj55
         brIW5Ofv3hp41uEbd9/tk15+dpToCwPxvwq4ncyyM21lGg31oqPAIiRUy1WetH04OE61
         pHnV8kvpEKPKmH2CBre+QM1lP09orQdEw7Q2X6z+XXI597xYfdIBw1LPcGIf44OaxjJB
         Auaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Zd56CSP9N2M4FrfN9ySWd7Nzjr+sOLOVU8sX9ZsvxYk=;
        b=UYhI2OBLHPMzn2SKr1i8E3IWpLLUQMhKaXdKn3oZEoxYaziDlPpnPfcg87gR+xBe25
         IhIz83pDS56nh5iNkkLKGJ/Q0Qm8w23GUq5UUtsFvS+1GCo404YEWp/uh9lkpPZogW4S
         d1Zqkc19U86EXrT+fDZ9czCOfSdofAikI1OCnSrWfI+3VL/aXaPxtzDf90rqMf7od6MF
         4KWi1iiDHoSmNwtZd/eCRiHSIvv2fI4GCZSr+AcRl2jBUiWnZT4u4CD8N+o5ln8D1BBj
         9R4BcyEWoahQsmaIhziYirfPFmq+KdmqyMKohs8MJdJm4JEzQwTZsMlYoSez5wErL3dp
         DE7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=Z1SifWi8;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id t9si315882vkb.1.2020.06.04.06.23.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id j32so5116870qte.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
X-Received: by 2002:aed:3fa5:: with SMTP id s34mr4444014qth.343.1591276988114;
        Thu, 04 Jun 2020 06:23:08 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net. [156.34.48.30])
        by smtp.gmail.com with ESMTPSA id 126sm4330150qkj.89.2020.06.04.06.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 06:23:07 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93)
	(envelope-from <jgg@ziepe.ca>)
	id 1jgppq-001CIj-Sr; Thu, 04 Jun 2020 10:23:06 -0300
Date: Thu, 4 Jun 2020 10:23:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
Message-ID: <20200604132306.GO6578@ziepe.ca>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=Z1SifWi8;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::842 as
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

On Wed, Jun 03, 2020 at 04:32:02PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
> 
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
> 
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
> 
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.

At least in the infiniband part I'm confident that old gcc versions
will print warnings after this patch.

As the warnings are wrong, do we care? Should old gcc maybe just -Wno-
the warning?

Otherwise the IB bits look ok to me

Acked-by: Jason Gunthorpe <jgg@mellanox.com>

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604132306.GO6578%40ziepe.ca.
