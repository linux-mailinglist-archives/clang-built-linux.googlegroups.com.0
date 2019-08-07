Return-Path: <clang-built-linux+bncBCZ6X4VYTUARBY5ZVDVAKGQEANY3P5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9177583E6A
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 02:35:47 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id e6sf42702562wrv.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 17:35:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565138147; cv=pass;
        d=google.com; s=arc-20160816;
        b=OPA5+YdnIsMIszC2cfYVJfztiEd+Wl+XjOnMqVdkE8pNgGGydE19V0VYpLPoAOadF7
         OhTXYHs5K/RKLUt1WVTvAzTsFnIDoIC7IwuCvjv6lzmnZS+OBEIvL8ISwPC5uHdDqjJ8
         EPu4Nz104DRw0ONKvOJWQRRGpA/DfROHwevCO15HZETsJslyQURJcVV10nYKE8VGKdDV
         QNIPWvVEszeCeWDdc5zdFL3Xzv+wVEltFSrCtJmpenoeakXWqPQYp+gajdOI+Nieo5qh
         z7TiFa1BS0AtiLj6ef+qpG4g6LP1UzmyuW0YiLiZJWOuLezK84XS1D6Flekch/4PHf7Q
         xYfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:cc:to:from:date:references
         :in-reply-to:message-id:mime-version:user-agent:sender
         :dkim-signature;
        bh=AQTagCGKwLbNjLuxv5Al+MvxXSKe5ntiz26OZJj/4ys=;
        b=R0yBGROBJBDzGZ+MxbCZbwWwtqsAgLFBl9ENg5T9fppWVojpq6ePGm4DFZJhy/d3Ow
         ipzDVabyIszWXWBMJALzpVboM00OG5cYx4HV/hDgSjnO6XiWa//CxStcE+xRCbEdWuh+
         spDUhETzUewyhuZ7WgAXqe1ESnxTwiPE45tTYlZTbrlpLuYJhHOGTKHT1JYDiTjJMaVM
         1izVMhdaudgs3Q6pGZSaGDNAiiSEc1g+1RDhgzNNTeCsNNA4d/NkGGSdTHrcX6Wm9/DY
         QfvWpyW/Zn3dCJzEMMqAXtckGGXI8QvPQ0Ter5CPZxwGqxMKw+Jv1qdSE7IXuvpMY/ZY
         evsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@aj.id.au header.s=fm3 header.b="TnuDr/2h";
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=NcXj2Y0X;
       spf=pass (google.com: domain of andrew@aj.id.au designates 64.147.123.21 as permitted sender) smtp.mailfrom=andrew@aj.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:user-agent:mime-version:message-id:in-reply-to:references
         :date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AQTagCGKwLbNjLuxv5Al+MvxXSKe5ntiz26OZJj/4ys=;
        b=ZhRTeSvDQ7OCCF3Wk1e/7dxsTTph4wwmvk2uHS/J2cyU7My8b+RD5Wl6/7yQYGIxJi
         MKzzqNqxvwuDKEcRD9TdcRE8iMctWTv3K1NDlAOeZJlMkRZ9lGrzZ8NzJ6lRJXkhB5Vj
         7NUzNYmTdrWh7z2ZedYh/jXjz6c6WCl0XLoSBCaHWtgLCD7fTYPFiye5kh21WQSNKeHT
         uDLncqryxKPL5+uGLXTLPL08LzhcuLptmcfeVJ+xPDri4M+EFu2pml9gO2/An4iFs4M8
         jSPVsYudyq70WwFCraP8VEkjvj57zHe2gK9HM/qx3jL0/pe886Wa2UXxB/UPJecPPkRM
         i5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:user-agent:mime-version:message-id
         :in-reply-to:references:date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AQTagCGKwLbNjLuxv5Al+MvxXSKe5ntiz26OZJj/4ys=;
        b=roSlG/78DiclA6u9hiSPHzRC6Brvg27BJ4FSTRgAuj07nHxQJYM6qEoZ/fro4TsKSa
         a2bNDwucwAr0SEdGZ7WurPCl1+zj9iXUiWAawAl6z6q14wEuTl2QxQQnfZaCxID0ADnW
         5+6K46A7Nv0HNnwdBhcatxzY5mW1SSFuJKjM6nQIfX49qr329rQxb5uaLp9Ql0t3KmqM
         UsNAWlhPfNYPw3AkA/aIsvlznbrHLNIPs6qtJXRrfn0TAiouiLrYtdc3aKEUkrSn1ORJ
         pQwxFRXy/Lds5qWzw0ANGOc3RpxyoRWwaJ2ygQ8B5dfO0wPXZ3yDzUInERLdgT0f+Yo8
         Kjzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWCt6vZ2bLg7cLEOoHpsRohahWE+YraIZVSACZujIurxlpWRPeP
	tkIagiS0n2XFSWkEnEzDUmI=
X-Google-Smtp-Source: APXvYqwc1U5i6GrRJ2aMN4mevfmpudyEDSOfjRkL+na2lMshnS5s1tabiGkeaXakhOXalWBL2gl3EQ==
X-Received: by 2002:adf:fe09:: with SMTP id n9mr7194320wrr.41.1565138147296;
        Tue, 06 Aug 2019 17:35:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2d02:: with SMTP id t2ls1910857wmt.0.canary-gmail; Tue,
 06 Aug 2019 17:35:46 -0700 (PDT)
X-Received: by 2002:a1c:6087:: with SMTP id u129mr135919wmb.108.1565138146816;
        Tue, 06 Aug 2019 17:35:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565138146; cv=none;
        d=google.com; s=arc-20160816;
        b=lgjnf/61QVwjddZaS4lHkIsVbeAr0Fh9dHNJthwN+f/O8dMFIg6PvNbhUo2wLGARGz
         R5npkzmLBcVpVb/TdvL33rbPxqlIOKL3yoKP+LAPvKmm0Xe7xq05Mmuo0P0m1Evx+AjK
         Ob6HGa5oC/QcAUazsTLjRUSeWe2SU9K1mEoDe1evyvbLk35oWjm9bF/niFkwzHyu/XJE
         jsQGzpOrZ+10UttzLPRd7yF/EAouHTph7Bh29wofZViZDUiB7QKCMiuK59rwu4Phh5oz
         RAihL+dkOQNVsIHVvDTCp8RHKB6ASEEUN+lXys+sLR2zEvDwiJAtLS7d98nJYbKazwcq
         DEZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:cc:to:from:date:references:in-reply-to:message-id
         :mime-version:user-agent:dkim-signature:dkim-signature;
        bh=CZQ9fy4bGaBJTciSXCw5R8GomHrVEfVS66D46ri1O50=;
        b=jRVtPOkKpw0ORRmrES4wHdVSxBh8S+wRpOat5yvO+D/fOlqs8Gys3e2TPHxT8niyzi
         mF1e/rEjxJyLN/R3/roqrc8pfAFh1erR2BIucnuhIulvX4ym5h3hWxL0fuVF/fu4YOxq
         EuxuyKR8mh+nWwLeNFmmREms7zlGD+x7Q8W2njf3AOhEQk4+5+PYhktX8boGi7d2NzNP
         bS0cUqyX6HkigJ7ITtvRKwHduEwfWEyfDccO0YVSUn+En7eDc31fc2SEh60Ur0N+o5B2
         +Uxb0lwoKRNEA9BRTmNYHM2lcJTpqQZRKjw3bJV2uqnzNbuA7TN3B66C1BolML5qq9WE
         nV3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aj.id.au header.s=fm3 header.b="TnuDr/2h";
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=NcXj2Y0X;
       spf=pass (google.com: domain of andrew@aj.id.au designates 64.147.123.21 as permitted sender) smtp.mailfrom=andrew@aj.id.au
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com. [64.147.123.21])
        by gmr-mx.google.com with ESMTPS id o4si1238119wrp.4.2019.08.06.17.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 17:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@aj.id.au designates 64.147.123.21 as permitted sender) client-ip=64.147.123.21;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 44A004C6;
	Tue,  6 Aug 2019 20:35:44 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute4.internal (MEProxy); Tue, 06 Aug 2019 20:35:44 -0400
X-ME-Sender: <xms:3hxKXQImpMul6c42CY4tIMPcYm4J44HTpMQ1095tL-vPyfoZNI6siQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduuddgfeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
    grihhnpehgihhthhhusgdrtghomhenucfrrghrrghmpehmrghilhhfrhhomheprghnughr
    vgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:3hxKXZFZRuRPF8Frq_zT_iscIX8zlfIzjN6kBNokq0XrZtWbJyeqUg>
    <xmx:3hxKXeDW0FfgKa1Qks8BB8DWLdSrBplsZlyO703kpmfdiBYghPpQJQ>
    <xmx:3hxKXRFwFkqHfU3wU-h0YvAIrwXW_Yb1dar4V7jXKIIHAsN6fQIWPg>
    <xmx:3xxKXdyPAINqAsQZUjaifWPOkzR80ZmlgOL4_DDtHUj2PulRsFsJCw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id CE574E00A2; Tue,  6 Aug 2019 20:35:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-808-g930a1a1-fmstable-20190805v2
Mime-Version: 1.0
Message-Id: <0e4bf79c-0e35-4cf4-b375-a023aa2cd034@www.fastmail.com>
In-Reply-To: <20190807003037.48457-1-natechancellor@gmail.com>
References: <20190807003037.48457-1-natechancellor@gmail.com>
Date: Wed, 07 Aug 2019 10:06:00 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Nathan Chancellor" <natechancellor@gmail.com>,
 "Linus Walleij" <linus.walleij@linaro.org>
Cc: "Joel Stanley" <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: =?UTF-8?Q?Re:_[PATCH]_pinctrl:_aspeed:_g6:_Remove_const_specifier_from_a?=
 =?UTF-8?Q?speed=5Fg6=5Fsig=5Fexpr=5Fset's_ctx_parameter?=
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrew@aj.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@aj.id.au header.s=fm3 header.b="TnuDr/2h";       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=NcXj2Y0X;       spf=pass
 (google.com: domain of andrew@aj.id.au designates 64.147.123.21 as permitted
 sender) smtp.mailfrom=andrew@aj.id.au
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



On Wed, 7 Aug 2019, at 10:02, Nathan Chancellor wrote:
> clang errors:
> 
> drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
> pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
> struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
> struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
> [-Werror,-Wincompatible-pointer-types]
>         .set = aspeed_g6_sig_expr_set,
>                ^~~~~~~~~~~~~~~~~~~~~~
> 1 error generated.
> 
> Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> changed the set function pointer declaration and the g6 one wasn't
> updated (I assume because it wasn't merged yet).
> 
> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/632
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

That's exactly what happened. Thanks.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e4bf79c-0e35-4cf4-b375-a023aa2cd034%40www.fastmail.com.
