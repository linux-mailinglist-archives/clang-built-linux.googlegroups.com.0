Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRU3VTVAKGQEM5OIYSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2373785249
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 19:43:35 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id j10sf981860wrb.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 10:43:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565199815; cv=pass;
        d=google.com; s=arc-20160816;
        b=ANdudse1Rs02jTg4A2bVOHcr47ZTMMgUPvHbmqMKv9d09m+XtWRmQp9Hy5B0cwTXJY
         L8ibM2IBtlR00bskRaiiY95EGXY4WMFO8Tpw9vnB5kXu7L1DQZhl0jb+dKhomztKhrnk
         5nMKUUANyCnLNu6MMT7mLJR5Qdkv9r93bwQhswTNTuWPXG+nKKuae/3HbMnTWoHmUwYD
         NOBQiU/RTnhb7wH2sHj7JJsVAWFuIdFjZ7iNVozHKOvDspA2TK4LizB2pAPQhYbAIh7I
         Jxm2CF1rktzqRzHGHO6FdC762IXPvvnriINc27stNnO7l+j5vdBIKqyhyip817ODUi9q
         zceQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=LLc4fr1TTy5U2C+LojY0erU+EDHxcCXHZEprqD9dA10=;
        b=tIadSTObPvjbZZHnw/16GIM8b7W+1ox8mAIb1Wmvsmmk1slbZYf4bKkNL4o8+iAveD
         2Iedp75UKFfAizbakBrFAJy6blqHcpQrGBpfSTn94XV0ZpmJoauEBl1fU9sLtITYhV7v
         E6+X/4PRJRgT1hQTVODcOK2QeM+nloTSa0CmBGs+d7w0pjfGXEf2dsPsnJXLwC4g5Z81
         z+VDJ23gR262yCWGUGw1yO81tnBhHKk3DnIJhjC8h4z46WpdMTqJ5/YwjYNPOxrFKcRi
         xoiVGg5OjTBTlHZ6C7+SUgPlHwFYYaKM0g20D1oHGKT2DSMekM0NL73ZJQf6TusCIq4r
         9Iow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4NMWg1N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLc4fr1TTy5U2C+LojY0erU+EDHxcCXHZEprqD9dA10=;
        b=eGet2nad0L2dFvuiMQcxRYcH+bzWpntWV1AlPA/ZVf6KNEz1U6559ZVBK5Dzfm8mC4
         OYaQiK5TTn28SZVvYutgS5ItplqlVw+tq/4YMtdybRoNAls2D4UIT2dv9bQdOmGcR4E3
         lqnh00Y/gbdrdEm7SgTs7mgI1vUILJOgqF1AKjz7Et+scQ2kcU3RmzzsBDmFRaYQ0MMy
         5gCjGH8Vy8yFpTmaHWcttDsWgQw9clvBeRsTQQNgqnRb8aZYxApdYMWsvGfa17G1DEiA
         T18eRerfvXgToF2BhZo8mBgElDKODZvTkbYt8VzVgiGhDE6BCIqPWyCp+MfZxMLENufc
         fKmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLc4fr1TTy5U2C+LojY0erU+EDHxcCXHZEprqD9dA10=;
        b=SFqN/BgsSOwHqAPBa7Lg/u2MqzNLqSZ3pBrqpZO+7fe9iYyn3WmWsk2mWEqS3vJyGZ
         sJ3QdOH4UwjzTOMOcHnT64l3YG/BV6asoDXXRluATgMqrl1a6J5yyv3Z0yNgSuxX60aF
         Sir3Qy1yI1gtGzPBbo6HDTZWrvSjDUBNW8GlWNQLAe4bf6O8B/Pqa+4GNQxwDoLm+jJJ
         2Bm6DZjecNV22rIO2iauY9P1CiA9WAnzbYzCCyyTFYV65J85rR+hMaJXrkrjsfe+iF9z
         qZ+jHjYcz8vW7S6GvEwPg508ZqI4gZ7AKzHkxY+Dx8AAKINJ8TkmCpBev2S8wIL9EfoB
         Ykxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LLc4fr1TTy5U2C+LojY0erU+EDHxcCXHZEprqD9dA10=;
        b=gsnfBAt9b8bxT/vh7MTrgb5Jz7/4ycA9EizRTuEkhdhxaTW/roj1DT/Nbk4MYKt00O
         dHiKC9VcuRmAGaPRA83gIFdhA6b/MrNbhkLHeSRLdh8LCxv7bbPnQVxw50Zsg/nTS1QS
         +NNj6BjwUIGU6CW4QKh6t3wZDxaWQKubxnGxgDtT4iL8rgYeo7x8ai+lHU3imJLVt982
         rItRrJORJO8xcMAvMLTJLpy8dr2emucPB01RevX9g9nlcYQBHvf1EZdpSH2NHAmvGXnm
         1uXDlZVDbVdFtHFU9BB1b/pQ/BnspPlg1rBwQC4qMvbdA1Yaat+/qX1cfUUV/QzZRbCk
         Znbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIvKMBPE/uzqq36JW8v6rfAFocmF3SiESx9sVxLXhuvgrwe7w2
	S/kxNZ73nJBP611VMy3fl4Q=
X-Google-Smtp-Source: APXvYqyd5w0h8FuPRxCQEpeEWTkUJF12EbCENGi8WjqTi8huuDXL9PpssvCgzxy7VQ29nAourqIZGw==
X-Received: by 2002:a05:600c:2199:: with SMTP id e25mr989852wme.72.1565199814884;
        Wed, 07 Aug 2019 10:43:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a386:: with SMTP id l6ls26448284wrb.16.gmail; Wed, 07
 Aug 2019 10:43:34 -0700 (PDT)
X-Received: by 2002:a5d:6508:: with SMTP id x8mr12748722wru.310.1565199814487;
        Wed, 07 Aug 2019 10:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565199814; cv=none;
        d=google.com; s=arc-20160816;
        b=XpA2x6s510sV/2nSKpIs/YbQeRTIqk3REs+GtXjylFfFwQqnEyyjYcb5hllugqcQHc
         kuKuWEJ+K3VNGbdrvC6BZ2bui7XGaGQG+UJflPasi2sSwn4rbbSglIxnSzLsPpIKjW8R
         G15VSoYkfl8lAgmSkZ+ZFMPA/P1f7/lmWR8UZ2vFvIaxqOS6jPjyjRWQs4Q6ydu7Nl87
         KdZ6Q172NRV5IVTVY9pJrdoApLPZPqTDNpKgo5+rSlkKtGY1Ex/Is8G91lBPAKchfF5g
         fpN1IixWZnRYQ2KJFJNtNmD6yRVIYuh5z0Brqw4/BlkkU7sSwFM1GggA2bPh9GHJaqXe
         21Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oUroBdbBIc0mMVMq/3yvtorIuVPyt+ybLB1clwYeByc=;
        b=hPo0bDHSK/MzCuaFuR2aSI6TObcY0rnkA/RDF5e4LWhlWBFRFrphEBtnuuJrOuriOx
         8TS0elYd4bXzpizvysfq0tr1ql3i4oGVNYZKlOb9WWJSoLSprFG9uA+p0viMoKuTwsRX
         789bIqD35LLcdtuFWONEKmXXkfyZwYCuSKJQnymSvm6nqByWMgZ0w7eSHkuyb0po+oCV
         oX6dBRDV1CZKMTrs+Sxx97moIUu2iesvKeVJ/Ov/9/o0P2ZWDe3w3rB25xOj8tXD53SB
         o8llkNLlGX5zTSWKikDoYxBlUAWjMvTaIjTmfKiN0Z6HGneYy2Ht1OYjS1khFtZ/JGVn
         VQVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a4NMWg1N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id p23si35612wma.1.2019.08.07.10.43.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id u25so864548wmc.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 10:43:34 -0700 (PDT)
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr882132wmm.5.1565199813964;
        Wed, 07 Aug 2019 10:43:33 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c187sm1024927wmd.39.2019.08.07.10.43.33
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 10:43:33 -0700 (PDT)
Date: Wed, 7 Aug 2019 10:43:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "kernelci.org bot" <bot@kernelci.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
	heiko@sntech.de, Robin Murphy <robin.murphy@arm.com>,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
Message-ID: <20190807174331.GA98617@archlinux-threadripper>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a4NMWg1N;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Clang Buil=
t Linux wrote:
> On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wrote:
> > -----------------------------------------------------------------------=
---------
> > allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0 s=
ection mismatches
> >
> > Errors:
> >     drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anony=
mous bit-field has negative width (-1)
>=20
> This looks new, and only an error w/ Clang builds.
>=20
> Looks like it's been reported:
> https://lkml.org/lkml/2019/8/7/320
>=20

Guenter reports that this is also an issue with GCC 8.3.0, I am going to
try to reproduce now:

https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/

https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/buildcom=
mand/logs/stdio

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190807174331.GA98617%40archlinux-threadripper.
