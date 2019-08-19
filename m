Return-Path: <clang-built-linux+bncBC4MX6WW7QIBBDVY5HVAKGQEMVU6WMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D9491EC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 10:21:35 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id g127sf381387wme.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 01:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566202895; cv=pass;
        d=google.com; s=arc-20160816;
        b=0LD7t21VX2qSQ5mxXKzP2q2EFgFdYo+qUfPTYXDyiw84YLYicMtQ1adSxbhWqhm+3U
         dvCUH2qW2XSyJUzMedvnXNslPJN9bFqfVySQh0jaaOOODGyPBaDrXJKp+Yh5OjLtfUjj
         FwpdoR/bSo0oEVFb6TcHpez+YgRZLBEgv6p8gADnZ6fMrk6gL+Gdb1olkqB15SXPtT00
         BlQAoq9HI78h6vHP9BKaDXDQ/wT5DL/C9kOF7XqXLrVwWUea0n0q9MBf9bP0JjhU9MN5
         z0a6PBbee4R6llBpLQqPvsSDk+XAntDSq1K44XDSmRutfzZ5yusF257Yy4prqfJppc89
         wjnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:organization:references:in-reply-to:message-id:subject
         :cc:to:from:date:sender:dkim-signature;
        bh=TLdDgzp0IfIourHrzzz3+IDRHxqOOqsLSgPinqgwNp4=;
        b=OmK/RmnkGtnAuf4q7m3+25c+AGOWDhw3h6C/XuH7+cy0r0isgBvFuWvYkO6JDBxBeP
         72b7wF4ybEc8OGLlXtUmCDZzUS0MB0rYvRyExb00Q3G6Osu5nmjKfsKr9kPz25HkZlQd
         JRtsJ44AOW8sREu0sc5owr7NaT5emg2x0apsLJRc2amIFNM/eFm8Jbhjj7ci/sTTVFK5
         pjqIp3h1wX/bj3LtWWRcxR8fQTD1oQ2ZLNFx/j32RviBSaRfuuwGFIbYGjqNc4GYp7BL
         56iWqnMOdFg6FLiIgWXZ7Yr9XYz0EoO8QEtKiUtBlJkozx5RLHNDZKCzhxqIUSSLqIoU
         1csw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLdDgzp0IfIourHrzzz3+IDRHxqOOqsLSgPinqgwNp4=;
        b=e8y5SxYVLb8ZzBroBkZ6KbRbTI8cV85Qk+URG6D6PPf1zPPe/7zLt7HgMlfJXUMkaf
         bUr7mY+xm4joKNiNeMRjtELsjWyD/L14PtB10nQ2HUMxObcN81Zg3lSOOmzzzA0N0FvL
         SfczH4SaYTf+EaR2klXQUEa1c7sPa5zSNkkGvDQeUH4P4WgePffAtpoYl2u/2HLQzpPc
         eYVFcCnYlqTSDGrY9zykiprUt54V6JtDwpDjkpI0fjzIfk7cVd2GoQnybCZ1z12HcfUp
         KN6I5occRGbzyS9R2snEuznXs4EEdyUPXccOWrBd0YxGRI3sUpO1tveid79Otu5xnjjU
         6Pmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLdDgzp0IfIourHrzzz3+IDRHxqOOqsLSgPinqgwNp4=;
        b=Eldpf+Do/lwS3ZEHM5QTLXCqvE6tY1T9sk9P3YI6fPo+yfG+Ahzv6nhZzP+E+Leo60
         Fkl9Hb4bjJV2KwFlbqH+mAA42p3VThmTek1P8pGtUfgFlNO6+3gAhPCkeNBlImUthtVt
         jfrJJkBN4Lfn03ZgjcAuQXbrCM6fn/dsG5UcVOUE5fyudlSUZDo6mWlMZmYH5vjd0Epv
         9MUJ8l8Iotn/PMtOGUlw5MoniT7Xb8zLEWP5DQKE2/r4LN++LRflIxgnI8MGtuSlJg1w
         bPflmuESRnZ9D23LtK8gRoKdQ+hPoButGgSiXxRcTxNEv6MR5Tv4fVWmKGttj8kywptP
         P8gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoA6SuHzVXBHdYMYl2jgCelzU5NxzjkURoKCjhBxUQ5Fn+II7v
	9CaBQKR+X/K8UUZagKAo5yo=
X-Google-Smtp-Source: APXvYqwAgP2GeF7ziMF5TCb3m/nyV1Aq/xhTM4DZajMnybOnNeijusRolGePG42xrvlCQET6aWR+YA==
X-Received: by 2002:a1c:1b42:: with SMTP id b63mr19427384wmb.46.1566202894979;
        Mon, 19 Aug 2019 01:21:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls3673266wmi.0.gmail; Mon, 19 Aug
 2019 01:21:34 -0700 (PDT)
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr19644142wmg.111.1566202894205;
        Mon, 19 Aug 2019 01:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566202894; cv=none;
        d=google.com; s=arc-20160816;
        b=FOwHZI4SIxUL/Ffq1hJKP7DKES9hmFIehgZr2IBiAthKhrCBy7vN4l2uF4wnpcHTWA
         kLwM5fUNIDUYwq+ZdZm5WTNZEd6E4tsx+jgrXGCdVqaQfMhIXiVfl4nC7EElyB7GR+jX
         K0wIz7X+uqfwdBZ2gBW9eYFjyigA8+Vo9qxa3hyqfaK5Z4vafy9fmIkAz91YwyxFQhB8
         J3iQfmwoSQWZauhGXd8gTa0NnGXZdx/Q29/i+EDggjhlrjXxTmWH5WL7K2njyw59dGnl
         +HWbeUd2/LaKmaDMGSxUeK6rJYBqMoPuC/vwlE77W4ZmfL9p8h0K8HuRGgN1gASb88pG
         esAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=ZWSbHZ8V/8Bah1idZZU6I1xJpCl5RMN044OT6vPrjZc=;
        b=yaTiEwJl2kIhl7jocB/B2rZccjIiMrsB2ETQS7VyBHm8zoUpU6LUN9OwZsLJVWB5Z4
         KEIkf3vwuUcwTySonVABFMtDrpJJuwgC5AOJPJDn49TVWJqVf/8nb+nd0+wQAeBzTCD6
         chi+Y+/aOcQ13NYi590jAqAF0ErWurUeOWz5y1VO7ejUYDenFRb+e/WIxREU1KpaVx1B
         +mwitP6LMlTWf8Yuq8fvWL8BJH+rezL8LXSaqmT3/nvtcipQpXXCleElPkX8v6o+1CWR
         tVYydPy9HCnq+bl3/bqiFv8yX9n2U5KlJj3J6yXwr3/zCp7VRp9fEwae7fBBSRj4sWYy
         Y6Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net. [217.70.178.231])
        by gmr-mx.google.com with ESMTPS id r13si778144wrn.3.2019.08.19.01.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Aug 2019 01:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) client-ip=217.70.178.231;
Received: from xps13 (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay11.mail.gandi.net (Postfix) with ESMTPSA id 7A828100005;
	Mon, 19 Aug 2019 08:21:32 +0000 (UTC)
Date: Mon, 19 Aug 2019 10:21:31 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, rui.zhang@intel.com,
 edubezval@gmail.com, linux-pm@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH] thermal: armada: Fix -Wshift-negative-value
Message-ID: <20190819102131.41da667b@xps13>
In-Reply-To: <c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org>
References: <20190613184923.245935-1-nhuck@google.com>
	<27428324-129e-ee37-304a-0da2ed3810a0@linaro.org>
	<CAJkfWY4X-YwuansL1R5w0rQNmE_hVJZKrMBJmOLp9G2DJPkNow@mail.gmail.com>
	<CAKwvOdkEp=q+2B_iqqyHJLwwUaFH2jnO+Ey8t-hn=x4shTbdoA@mail.gmail.com>
	<c2b821f2-545a-9839-3de6-d68dfee5b5dc@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
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

Hello,

Daniel Lezcano <daniel.lezcano@linaro.org> wrote on Thu, 15 Aug 2019
01:06:21 +0200:

> On 15/08/2019 00:12, Nick Desaulniers wrote:
> > On Tue, Aug 13, 2019 at 10:28 AM 'Nathan Huckleberry' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote: =20
> >>
> >> Following up to see if this patch is going to be accepted. =20
> >=20
> > Miquel is listed as the maintainer of this file in MAINTAINERS.
> > Miquel, can you please pick this up?  Otherwise Zhang, Eduardo, and
> > Daniel are listed as maintainers for drivers/thermal/. =20
>=20
> I'm listed as reviewer, it is up to Zhang or Eduardo to take the patches.
>=20
>=20

Sorry for the delay, I don't manage a tree for this driver, I'll let
Zhang or Eduardo take the patch with my

Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>


Thanks,
Miqu=C3=A8l

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190819102131.41da667b%40xps13.
