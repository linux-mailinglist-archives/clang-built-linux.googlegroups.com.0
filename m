Return-Path: <clang-built-linux+bncBAABBLGRXD3AKGQEALD3LUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEF41E3C71
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:45:33 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id y22sf13111211oos.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:45:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590569132; cv=pass;
        d=google.com; s=arc-20160816;
        b=QNaWGIBJBMuYoivinUbef9b8vMcO1vqijvSfxui2T2CSWIQ1Mc2TpZMwH0Q01CZp4S
         GUiRzg/2My6+u3onW7fZZSrJmF3goipiaM72x/hx8l+Ynl+RiQALiLk6fHQF4yVinH+1
         5C3bwbnyWpMbreTjrOVKspHU5RlJQlYxJkhFYdqQQMTtMSar83doGa6oWTgvSVg8wwNs
         T+IwYxbr532eOc7S+Mn29qc1hZj5bOSjxqFXWOxM5DTzkCu+lXufwYT5usWq7v0Zdd2d
         Xgf0efOINywLkrZGwkTmawChL3szeKNUE4auf2hVM5vFcgtztgsp6OfC5+ylCTw+NZt9
         Bfuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=AW1V6w7eDxasyEqT/ecqnlZmuzDE4+g8jUOVROlt8l8=;
        b=f7n3cC0UwvFPxKEXJV05lq3dBf1BG6ehMirLtlxn+QrGeVKkwFeIEUUfIeBxa8rOg1
         H9w3A73q7aP5URFnMJ4+MZbtBf43+9tO728WO/gqwuzQFPfdMMIy4OhGV/0X6UW/F+FZ
         gSJzRBmTa7b6m0m6GXUkR2i7TJZDWFCE4+aKvy3Kmqp88rDM46J9dI5c4i0oPSUH3ugH
         HQqHTp2X5wwTowt0P5msg3mLhLIjiIyXgZWv5wX2D6tBYP3JMdVHVWFZdgaTt4w2pnTt
         x2wLN2/6T2k7c+diWhC0JLsX2ikpZ+6awV+LDtngmtzYB3MPZONdXBHTx1gxnvmF+U35
         mkkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BvL3nr0E;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AW1V6w7eDxasyEqT/ecqnlZmuzDE4+g8jUOVROlt8l8=;
        b=EyKjDUVOcXlN41VA7ie8bG/TTk2WyeLzC8ZMgcZSrY2KGXmV0MTBb22XMjwA+Vw7Il
         7eWVtf/QWTPSXHQx+R653Y3SfU7caP6g5Ts9LEhGonhbZDq3gKi3In9mDEAmEJsFMFLd
         paSbCj2Pg1k9/6ocvmVY0OwgabBItUjZAlM5XqV33fiVQpDWrEr7VS5cVB4wExZjzldT
         EFNr9CDyr2x0ip3Py3zOkgs7pwb89fx2wB82QHWlOCaAM1tjVCSmj55LeIcPF6jQYpmr
         IBUCqsfsYwDg6OcrfUi76toXCIge0i4rwXPPR9kXBoZi6Mu6NsZM983sDfi03G5DccN+
         iOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AW1V6w7eDxasyEqT/ecqnlZmuzDE4+g8jUOVROlt8l8=;
        b=I8iDdUJAVZUukTZWy0zEHE7FKA74soVXYmAPUpItO6uXFc4z3YTxdYieUXkngk+6ul
         nSDKMPgklJLTewk1kQbPhhpitY675xTMUMnVfrRkzQPoF5eG/uN1TY2iLM1qZuNl79K0
         gkszdV/Pyu8GodMmCTTCK763z3LOva05iHa6T+SwZF8OGvqJ1IuGYRqZwW15Er8clWJE
         Rgl9peQmuoI8pwNloxcS0gjcn4/pRUkqa+k1/VBsN2Ls2QjpEAmtYAIl5fT9Zed1VpZe
         cPnuk02XItnTgeheaarXFh34GxXMztNRzOmxsRx3/pvIawzYfoBdO75+6fBa7hfO7Cb0
         tQdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R3bld071vpHwqi39YQjld4t66JpnhJAt+/kDR7lmJ62IL0VSc
	91giE+58Mpt4gUxWFKwWn1g=
X-Google-Smtp-Source: ABdhPJy0Pa8h5SfraF1C2QnlHVJ9QcvOAeZDz7fTVru4T+s01lLFqIgkIQbaJPNVr3reAlYqAhilpQ==
X-Received: by 2002:a05:6830:1e46:: with SMTP id e6mr3984843otj.363.1590569132149;
        Wed, 27 May 2020 01:45:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:148c:: with SMTP id s12ls1552809otq.5.gmail; Wed,
 27 May 2020 01:45:31 -0700 (PDT)
X-Received: by 2002:a9d:1d61:: with SMTP id m88mr4010112otm.300.1590569131902;
        Wed, 27 May 2020 01:45:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590569131; cv=none;
        d=google.com; s=arc-20160816;
        b=skcDchZpCJjlq5btJDxK3SiVo/O2GR2YIRmLAWCfLO+qNhiPHuIdWsvxj6dFzOE7gg
         8mCuUlQhhIkmRBWZ/m37tBe/kmMbnbrv1CahTj6jgNguxgqTAmhdr8IMnXtu1ExfOaLK
         c92CR19+6kG1Ve0OMbmEnohmq0i0RETj3dKy/lopjpocyX7A41SHHga+JiV6TdIms3eJ
         3LlaMe56jNeXyErC9za9jQsyVgGQpB5mR9CWKA+SFh2kokUQoDvhEV45ziNaPwZO0Y/p
         x8MVfFvcwuW9++p66/Kp7qK57M3FQcwIUXQO/ZgTtoedku9rONE9ez/H0v7QIfzWQEhP
         9+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+yajX07SZTeoBwXBVFh/Dd0/LKHxWSAv1UJTY3csuCM=;
        b=dOuL1EANGD4ZRFWg7TyELilVwByJokOIAtZonTqOftxoFV7q+XvuYc+Wquw7d5SShV
         sRK7wlS11ywBOhGN1HKWS+VhzQ99IYL8JHh9sSIYR1lxkgqp8jmT9+S12zEYxyym1jXQ
         qrZt2VF5n1g0ZFCowjkrHhO4G1x7mx+eee/tBRtzm2eJFLGfiUgn+z4mySgka6saz03T
         J4SXmCv9+PCTh0SS84rVsXoqIks9iBJkdUx5FD5LThD1kZjNaoFbkISP0t1w7Ob+I/Tx
         u8Q9rou7mb85WhGNLk2JbzgOblTsdPs3AU7o8iuIIhIaxMao93N47xUQGBEXXKjik+SH
         a+bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BvL3nr0E;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k65si243200oib.2.2020.05.27.01.45.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 01:45:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7BE9B206F1;
	Wed, 27 May 2020 08:45:29 +0000 (UTC)
Date: Wed, 27 May 2020 10:45:25 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/7] media: atomisp: Address several clang warnings
Message-ID: <20200527104525.5e6cd93b@coco.lan>
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchehab@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BvL3nr0E;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Em Wed, 27 May 2020 00:11:43 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> Hi all,
> 
> This series aims to clean up the code while addressing the majority of
> clang warnings in this driver, some found by the 0day bot and others
> found by me.
> 
> There are several enum conversion warnings that happen, which I do not
> really know how to solve without understanding how exactly this driver
> works. I would appreciate some guidance or a solution. Below are the
> warnings, sorry for not wrapping them but they would be hard to read
> otherwise.

... 
> ../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
> #define CSS_ID(val)     (IA_ ## val)
...

I actually wrote a patch getting rid of this ugly thing:

	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=atomisp_v3&id=cf6a15543ace1e99364911c0b7a2f6b8f2f43021

This one was already submitted upstream (not merged yet), but there
are also lots of other patches on my working tree.

I'll try to apply your patch series on it, once I'll be able to
fix a bug with mmap support.

Thanks,
Mauro

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527104525.5e6cd93b%40coco.lan.
