Return-Path: <clang-built-linux+bncBAABB6FQZGDAMGQED5NOW7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFB83B0F87
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 23:39:05 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 4-20020a6315440000b029022154a87a57sf14591701pgv.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 14:39:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624397944; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+dan3zPs3DUbIMkJYHw8pCCvtIRv+UI3UDaI9ObxTAfnSXeVxbjRy8dK00wfRpymj
         O7S7wkCLIwhPsbmH2X7yiJDXgwdcY64aLDYCXxrA7LnmrFfUxrDnNavB+0/u2TdSs6bq
         JITPG5C0DetJECVJcm9/4uP5cusJnxJCjTaC3Q3E92nowTKKJzBUvfnneUT+Pvus3Kpe
         ductSfvfJ7om3yLEMp2Y/pWtBWzGoy4QbwmOjN7AW1l3rnAsh0wNa9CDdCaRd6YoJdE6
         2mImJyD4YSp6xbmWSkMlYQk0U79EIPO0SgNqHeiRHUmQVVEkcmiKeFxlGPvAc5wh2EUK
         CfJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=7VkEP0d1gHouxE3Zra/jfG+P8DDWp3MB6huRMQ2gsVI=;
        b=IvalqMv4PthW/3TXZiTewoG5jPGWzC+/Px6WbcAsd6c+srz9A3gwvScarQ4vIzck3u
         gB1EiLyxsrsOnASuM8hRhGA1/bZh3bmjrz7iAVUICF4Q2IRr+ooWkVGCOwK4wItbFl0c
         djP7Oaw30Vokh6yIwrUr8ye4X/2Twibj/S+RRaLmoXYvZz3tdgtkm8IGzWbM4p3fSWgO
         qnMHKU2Ua4XOKb8Pi3c5M5ZCINZG5XUTgU6zJ5zIKQBFJS5Bq1aDT+o5wGaWOxhr6jXv
         A/a+XEy36DS/GVXXMfVVnF04CVRD7gx79ziAMWJma1qTHtO0VbVqAAAoSjYNczYirXNZ
         ZyrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p6t2lfWg;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7VkEP0d1gHouxE3Zra/jfG+P8DDWp3MB6huRMQ2gsVI=;
        b=iDEOMsumwJ7EJdu/6aDefGYa+22YmVM2WFDhcSi9V3P8oYR0YeTSrQczg0YAT6hoZN
         IAOU12neKE+gHhCHkDFn7NilA2MSdRjLBL9X9StsUTTkSVM9Wd+oe7Suudj22HTHZ0WF
         AQ62PjVVIaIx9T091r6EdFTNCjWBAD/rrl4eNRMWKe1P61+J+cLalHDM6I8kgoBQ/zEo
         emtEDAq4/Ui6W8CGnEiwqiRNU3UVfGEZHAFDqALW4kYXKZTmKT+RgAqYr3HJCy0GcfnZ
         QAMrd8JK+X8Eoza8i65PNzBdVpeNFSk+rbcZxjcnfS0kP1GJ2owszGYmIt+hdH0ZrT9F
         U0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7VkEP0d1gHouxE3Zra/jfG+P8DDWp3MB6huRMQ2gsVI=;
        b=RpVxifHCGxixXn8VHPCr/354HpX7bJTi5jz/HYDTNHTXEPwn0KMicdApg70jSUSATj
         gShwgj/W698lPllAx/KVe4QkC2Pj3Xopl7idwzW7H5EwEPDva56UNjQRgEIlIbe0wl89
         dGvWAMq9M1Ss4wVQHsQt5kcDsOfMSEen68tTjxQ4BskHW8pO4NzwEzuo2q5kNfRglDH2
         1AjZTq31RqIqpPYLal6wED91MAopbf7mG7rkclUxy5nO+EW29K/MWrPwBQt7HeJQZUCb
         agoquadkttmvwwvpDdQiuORVU7tm0fRlMcRTlmux0ID9PQYC7d5AhJmVvbQ51Z31nX6u
         dVXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QY5u4eKtK2n4vJ7jPGAgxBrUVJDJcGhj+jWIu85SOGr13Uazx
	9Kgt9jCZSjrXSIv2Imwa2kc=
X-Google-Smtp-Source: ABdhPJyq3ut5FnwJnJAQcd/9td1CoJLRhRvmW94ai+x+JIpFBddpYWmQuU1peMuWJ1R9hxhyyqBU2g==
X-Received: by 2002:a17:90a:ee88:: with SMTP id i8mr5882569pjz.71.1624397944588;
        Tue, 22 Jun 2021 14:39:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1946:: with SMTP id s6ls60783pfk.8.gmail; Tue, 22
 Jun 2021 14:39:04 -0700 (PDT)
X-Received: by 2002:a63:494d:: with SMTP id y13mr670321pgk.248.1624397944052;
        Tue, 22 Jun 2021 14:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624397944; cv=none;
        d=google.com; s=arc-20160816;
        b=KVP2FufTLJ/jrA2fcv9oTeOV/oVBBQuzTT+kf61wjGAYjOPpi5f9/QSwc+t0bP8NUf
         UFiLoiZvlnmOC8wW4X0dyCB9zo00J/2vwq/U1wpF+81Ndv0grwRCos5o9yjZdmoFPq8q
         hxiyjUCjybnuwaN5k9FlTIovknUkeC7bd+28bxGPf9oflJSLoxwN82ewHUOAw/7L3gTN
         ssBRuJl1AVTY0E7tMXtZxbvhln4UOmkc8AfVw7BBUs9jcuDErhSxW4U/iPaxU4Vnwh+R
         BqEU4tpjlAfZhyTtaIpHe+Xg8U8o6LvVD/HJ9Kerv2Q2/JM6yNGAp/Pcmd1zd93DrfXe
         4QTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=T2jm+sX3Rx7TU8TbYd8Ra2BC8nHFs0bWoAeBlGLvdO4=;
        b=P5FjOn3DQmHHqKOmJJj7Gozc3DXOmHymvGu8UoHvKuBU6i1R0LdOvcVI5ipJyqwiVB
         N7/CAPEN79/+FgxmzJPBxgKTNzfOq/Y7OD+ZwycdPWAoGqDzdOnjTylgXzx7yvTuB+gj
         NzoZNdtY6ptaBMawz/gSM900p5kvuVVzSlhKspQZUqMoZGtj6oKV6ZzHjbhnOG5iwEcj
         GTh9Bv2osSOZ9pKWoRMyukg8nf7woJXPaVUEKzOz3g9asJlkxTgtifJK9UIDzvgdqnDN
         iE59eyUbpwi3/pGQ5LKURyxUCpC3sFG7igjo2XPRE5UhyElvl5izY1QM4G18mYGXpuq/
         Gn3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=p6t2lfWg;
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si396315pgw.2.2021.06.22.14.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 14:39:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5767161042;
	Tue, 22 Jun 2021 21:39:03 +0000 (UTC)
Message-ID: <d9121e8bf73c5d89f70dbce8e47e0bccff3d0cb8.camel@kernel.org>
Subject: Re: [PATCH net-next] net/mlx5: Use cpumask_available() in
 mlx5_eq_create_generic()
From: Saeed Mahameed <saeed@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>, Leon Romanovsky
 <leon@kernel.org>,  "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org, 
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Tue, 22 Jun 2021 14:39:02 -0700
In-Reply-To: <20210618000358.2402567-1-nathan@kernel.org>
References: <20210618000358.2402567-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: saeed@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=p6t2lfWg;       spf=pass
 (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=saeed@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 2021-06-17 at 17:03 -0700, Nathan Chancellor wrote:
> When CONFIG_CPUMASK_OFFSTACK is unset, cpumask_var_t is not a pointer
> but a single element array, meaning its address in a structure cannot
> be
> NULL as long as it is not the first element, which it is not. This
> results in a clang warning:
>=20
> drivers/net/ethernet/mellanox/mlx5/core/eq.c:715:14: warning: address
> of
> array 'param->affinity' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!param->affinity)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~=
~~^~~~~~~~
> 1 warning generated.
>=20
> The helper cpumask_available was added in commit f7e30f01a9e2
> ("cpumask:
> Add helper cpumask_available()") to handle situations like this so use
> it to keep the meaning of the code the same while resolving the
> warning.
>=20
> Fixes: e4e3f24b822f ("net/mlx5: Provide cpumask at EQ creation phase")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1400
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---

Applied to net-next-mlx5
Thanks!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d9121e8bf73c5d89f70dbce8e47e0bccff3d0cb8.camel%40kernel.o=
rg.
