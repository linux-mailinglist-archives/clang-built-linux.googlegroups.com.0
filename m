Return-Path: <clang-built-linux+bncBAABBYNQ2H7QKGQEABM2I3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id D98282EAA7D
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 13:15:30 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id j25sf13798668iog.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 04:15:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609848929; cv=pass;
        d=google.com; s=arc-20160816;
        b=AeYLER33RMCBsq2izWXebbYpZsti4uvNKJK2bh1izWuD3nooBUl08Tkzec5B1juZUl
         QCoqX4NB9e4rnBWYb885kORqjUdD/jyxRDZIPfrFo9MUN5FqTV9TG036GC5Zk5agSIZe
         mA2maW/y75KG06EkFKdNlFmGykkW30Ge7m0FnfZoWoG1GskzLloiebKXR51zVY5R3loW
         aMShBJp+XwyFQDPECupURJJl1v0rx9AWTguM9SConF6VC63KEquqGLFYeUNfYI6k5HfZ
         GIyce6zdvgoraDwzC1J1bqbQig3lJuw2dQgO0/Z67goTXnbbx05peqGe4r7JztNj8U7O
         nHMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=aFhj1BsMfV2RQJg8ii0YreorQyxJlvtDxubpJiLpmWg=;
        b=Li4Fe2vLPCUZFp7uFDMHs+fZN5hbvUVVyTdjiKqiw2moMrbryudDOuoXaS0HVVvSTz
         IplbFaXDFm27chdtE1VARnU3Dim4ZED50Xrb0XQi603kscNnP8uUnEM4P+cq08taPIom
         AuRImG8NqV0FjMt7CpkPUWL0H7sOcQZQpFfRUwHLXYjp+Iike+D0Xtp4o3jyyq4QZ+sk
         96huMGMr7TWVrIBsqPtJpvCabF9QgXQ5xPQZo7B+jvfKspM4BC9Rz7uKuncchrtJoWLQ
         2Kv65rEpXoul7PxHq3trPFuPfFHOQJ5WkoARhWSK+T6OfycjkaQSa1eygkAhMeh5ti7+
         ip8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JdH+68mQ;
       spf=pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kabel@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFhj1BsMfV2RQJg8ii0YreorQyxJlvtDxubpJiLpmWg=;
        b=KMwFEe+ZjuElsUGN8s2uWtFEr7NC88qgYAYSEySsfwkQsXSSeLXmSfa1IhLFoLniQO
         0v5M+dKCMmJlmKTxKIFMN26tlTZEgMLcTwuqohaO7xHx36+u0hY2dYRbcDmBaaQQdmYU
         wwtkXrAeIiZGevwgtZjVLodYBVVwNmes0V6JHuztjHbb4GosewDwH2KtNXgWiTrDjxxv
         oZkuiJb0n1r99gRyrHWS3KLjQMFVTGz1tn8rRMXK0vDkbe4cxuLAAK6AQA1CX1fwbDNH
         +Dw4Xfec5FiSDOfvjIzo0JzR3moFnopU7JxHWc9kNj1z3Aa3BVyJCYuzs50+nLO3z3tZ
         Wo4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aFhj1BsMfV2RQJg8ii0YreorQyxJlvtDxubpJiLpmWg=;
        b=iWnZzGx6ecbzpj6DgPFtJRtSB1G3D5Q+CCwoS66Z5sMIbEUedIaxxy4bZ3uIpw2bcm
         Md5/507IAEbJf+7WzmFPlI/2cep0tL2rgEIeK/YBcIJyQtkmvxpwVxHqxfJrwq8m4cgN
         +0qVRmE6Dng7IWJeJPR3G9xuKjOZ91EODloPYHokJajuxXVQ2tiu03SUOmTqxHX2d2A3
         4aQpW+4b0LxCdHHBad6GBUC5zEORFoMsEolU7GtvpZmfqIStsfuc2RLgidQP8QfAfjS9
         9244i7RsCWiQt0DQCIxdFOr3jeddSbGhdWA1/QEbV0JXeomG305uSiRffgE4FL7vx2NF
         lLyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334saFAwlACiPjROdYy2KttqaFisI7Wr3i6xRoBgsCOHyNKzsvW
	rOjSXQunBk711Dw4BXrtI0A=
X-Google-Smtp-Source: ABdhPJwjDkdJPLUmoHnGBN9P4wolhU+oLzhsbGp2imV3eLccd6KCngXYnWeV6hqduPIuBHbxLj4Nmg==
X-Received: by 2002:a05:6e02:c6a:: with SMTP id f10mr77026753ilj.264.1609848929512;
        Tue, 05 Jan 2021 04:15:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2d42:: with SMTP id d2ls12214622iow.11.gmail; Tue,
 05 Jan 2021 04:15:29 -0800 (PST)
X-Received: by 2002:a6b:5113:: with SMTP id f19mr64239777iob.83.1609848929118;
        Tue, 05 Jan 2021 04:15:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609848929; cv=none;
        d=google.com; s=arc-20160816;
        b=GqEO6eXuXZSDDfZVSuMXVLgTci6sGRZdzHygy2jmFian1kqBj1ho1nfdw+YaptGRCo
         OwAhWyiEHEW6k8GeLVliTlFHEB0PO4zz6nN1822Wy2YARszzUYDlzq82ZMEDfInMCRNY
         yi3qegi9BI1AwZr+V0eghgnuAdyiWVBVVTvXj7uIlA/zixKEkAg6fxNWHcrQj2LNrASW
         fez/Yt0zFJymWnYq3FUJDOQSxv/ufSpRxWmWQ8ibTd8Wdu3oljugd/J/WW1+uatkMTxO
         k7c07zCddar6AQOzXii+x+EFxr4jKig15+E7XfTr+0nVPPxbK9tZdab9ARp/Why2AVEF
         2jQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/5YnoqVhI0S3CbBMKMqe4zaNUHW6dbw+CzzJrloqpgU=;
        b=Ju+7JqXnJ+1KVMD+9zjSMxoxgfFerQlXPHl2RsKNkC7Cv8zoZT1OW+NQjY+zz3+Jlb
         EKh67/GL9XuPsZPtHJgasBHe+3G19aE+XQgMezagjbeZrM1TUNrLJR4JCI+Ui45g2bEp
         zyxknQzwem8OrNrop5UJpQi6hoxxxLqwCLJnlkpcd2W5kLZqB/FbnP2i3rC5JM3jIFNY
         6YtLPAnD7H1HsRfum0p5YVLC0o38aiR/AyXfFpcurCopbtLdYg1nv76ZM+sNHxWXzAnX
         TvxdTYFuvJE5J75BauiiyQV8u7bIhaPlCYpOJZColqaFdgw1xMsMnYbgrsF6/+31AI+n
         wmOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JdH+68mQ;
       spf=pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kabel@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a18si2997496iow.4.2021.01.05.04.15.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 04:15:29 -0800 (PST)
Received-SPF: pass (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C0552229C;
	Tue,  5 Jan 2021 12:15:25 +0000 (UTC)
Date: Tue, 5 Jan 2021 13:15:00 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: kuba@kernel.org, andrew@lunn.ch, ashkan.boldaji@digi.com,
 clang-built-linux@googlegroups.com, davem@davemloft.net,
 devicetree@vger.kernel.org, f.fainelli@gmail.com,
 gregkh@linuxfoundation.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, lkp@intel.com, netdev@vger.kernel.org,
 robh+dt@kernel.org, vivien.didelot@gmail.com
Subject: Re: [net-next PATCH v12 4/4] net: dsa: mv88e6xxx: Add support for
 mv88e6393x  family of Marvell
Message-ID: <20210105131343.4d0fff05@nic.cz>
In-Reply-To: <2c2bb4b92484ce21c0cf43076d6c7921bae7456a.1607685097.git.pavana.sharma@digi.com>
References: <cover.1607685096.git.pavana.sharma@digi.com>
	<2c2bb4b92484ce21c0cf43076d6c7921bae7456a.1607685097.git.pavana.sharma@digi.com>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kabel@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JdH+68mQ;       spf=pass
 (google.com: domain of kabel@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kabel@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, 11 Dec 2020 22:51:01 +1000
Pavana Sharma <pavana.sharma@digi.com> wrote:

> +int mv88e6393x_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port,
> +				int lane, bool enable)
> +{
> +	u8 cmode = chip->ports[port].cmode;
> +	int err = 0;
> +
> +	switch (cmode) {
> +	case MV88E6XXX_PORT_STS_CMODE_SGMII:
> +	case MV88E6XXX_PORT_STS_CMODE_1000BASEX:
> +	case MV88E6XXX_PORT_STS_CMODE_2500BASEX:
> +	case MV88E6XXX_PORT_STS_CMODE_5GBASER:
> +	case MV88E6XXX_PORT_STS_CMODE_10GBASER:
> +		err = mv88e6390_serdes_irq_enable_sgmii(chip, lane, enable);
> +	}

This is wrong. IRQ for 5gbase-r and 10gbase-r is enabled differently.
Please look at how I did it in my proposal
https://www.mail-archive.com/netdev@vger.kernel.org/msg347854.html
Please look at the following functions in that patch:

   mv88e6393x_serdes_irq_enable_10g()
   mv88e6393x_serdes_irq_enable()
   mv88e6393x_serdes_irq_status_10g()
   irqreturn_t mv88e6393x_serdes_irq_status()

and also at the constants added to serdes.h in that patch

#define MV88E6393X_10G_INT_ENABLE      0x9000
#define MV88E6393X_10G_INT_LINK_CHANGE BIT(2)
#define MV88E6393X_10G_INT_STATUS      0x9001

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210105131343.4d0fff05%40nic.cz.
