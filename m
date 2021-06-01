Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEEU3KCQMGQEEOQUJ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 498CC397AAD
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:27:14 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 17-20020a630b110000b029022064e7cdcfsf104674pgl.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575633; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+5VzXoYu0bDHBVZpV2KbS0L9NiuUA0wjI1lykzxxDbINfp3CdkFT5jMZS5WfBQDWN
         M0qvFTXc4xWAz/M9dZ8o9pcpBbZNpGI/xRpdupPHD27DXtvuPICDmyXKy13d/RPr2lz2
         14gYJBkBw/MYs/cqRye6CCwUlG6jPknKaeQ3JGuVV9K2R24u5+Tdxyi5kkfHFZrmf/j/
         6x6u4UAlulwBWD43hWZWe1QRzil4HobeVNQM2CYL7k+zTODHj6FMTYnpp9/IDA0J1OzI
         M/dqrKoKbs5CMbtRX8Bm3R6GH8wBznWANj5VuRPQg+013DS/0Q8TlCZ4iUSmSp2K323q
         A4VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mbdLEp9z2vaaDfC1j/OrzUHHXRRFEHr3au+IpWyCPD0=;
        b=mjS7L3V6xQd9YTuL1/BN7jSZASdEmS8EtJ7+fcvsvH7t7N7MWpHiDipKiw+CS4dFnS
         vWzd4x0Ufapaf8kgzTDd+fuE6tgJ1MhMCKqMjGZHuFVlBnGen3jBv8wmWSDGAkPNzKnQ
         kWvkWws+RAX0ZLt3DIz+y/m6DheCZ/PYTRMBnfrLQkU6HHXHD/WFCPsTTYxJMPIegw4U
         h88w4cZURXSgqj4B7ErVzoOcU9ETkZL+XMuPUSfQraSmNYgvrFRXqD0MrjJm1I1KgzGr
         ZU5nePriA/qGFPc0b8ME55nPlIWT4oltZT8szrBM3tNdA/okI7ovVIBsXOKtZx1vIUuJ
         4O9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=adiYkBob;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mbdLEp9z2vaaDfC1j/OrzUHHXRRFEHr3au+IpWyCPD0=;
        b=Mip5WK61II0Jia0DoocxfvPZRsvnGPp502NHkQtCgleKJKmelGXasCmEQnVzfuU8EP
         FCsdvLAZCOup2u5Emt3uxH3w55qbyqJx8TdOwiibKcoS4fEoLrRFvEwbX37dLWFxC/Jj
         do/jot/deO5nDlTPqBhtcadWZLS7Lw6/rR2ZCJogB1Je/YBnWpPkuBv8ryKSyFjn1R/g
         4wDvQblr+sE33fuVS52mWOe5JhUPX7eoBFP9bwvYn7cG+OC7d17Q/0N6L22RXvbFWFCM
         9XJ492pkW6dpXMmmsjlh498ZNym03k5Al4qFgfNGyUcC9/3hIOD8290KiUmXA9sb9sVt
         Ixkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mbdLEp9z2vaaDfC1j/OrzUHHXRRFEHr3au+IpWyCPD0=;
        b=q3tVTGZuWy51lJCGbIbn7/A2KYDVw4tvzsdOn4aKEazBIHDW45uMy1HogV+CiLlNa2
         YJ+GxbIyGrCO/G5w/Vrgq9rkQCQWDx/zViATAexuJJf/vpB/lXC49w9yQg3St/7hgDjh
         rlQWmiG1bQLJl/h2PnegcpXUL5QiMlEhfTLqpz01u74P7+mzZV3jPfqSN7diETSZCMi2
         dQPiuASpvy/2zC1vooapA/4j1ARdbr45K/Ggiq3YyN2gWdEpHfq9yMvXlkF9fhfyE1oR
         xvP6grgQ/6Lh+TMS557lDLsW+La3t9fRKYZIq4itVBZFAp15J+x9EwhsSUHB8zERMSAi
         lnuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ppz+d+pb7Iok6PFUSBT4Q5NfLRRnWHIwmJV09NQSEMNWNgceU
	edTGoHhutlhlYY+cHXCVDHY=
X-Google-Smtp-Source: ABdhPJxOXpy/xZ174ZuP5iqrAtuyZxsrzTHNQ9iOLBNJv/AaDQ7zrZbWfMojsom/xYrGVgcfkMhrZg==
X-Received: by 2002:a17:902:8ec4:b029:fb:33ad:e86f with SMTP id x4-20020a1709028ec4b02900fb33ade86fmr27187036plo.4.1622575632958;
        Tue, 01 Jun 2021 12:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b81:: with SMTP id y1ls2340865plp.1.gmail; Tue, 01
 Jun 2021 12:27:12 -0700 (PDT)
X-Received: by 2002:a17:903:3112:b029:103:6340:3195 with SMTP id w18-20020a1709033112b029010363403195mr15194659plc.29.1622575632443;
        Tue, 01 Jun 2021 12:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575632; cv=none;
        d=google.com; s=arc-20160816;
        b=pGwkmfIAO1TwDtDfr7qmltGN5RRld7uE777DJ1bRyK4o9CWbDBThfqii1bkwLUnKKr
         gvFPhFTiwxBnDbm2fw4q82GNoyYErWwmmo9gbk7TaGiXLclb+Lp8/N6YRSUde7/DDY92
         6Gi4XWljYcntl9F4SKS51h1bvbeOSdd7RBmbpAP591rE0MMCXM8045juxsjb8tb2bSJg
         Hxo6UUqtVN6qZPLT6LbnlmhceQl+bvr0L1DqySg91UoHim3AwikPk3NrSgb7zobcLsni
         Wy7bTt1ZBHukTO8BpzzoJZXqCCsuFLjLtEaBy3fZKPaEPz8yK9htUIN14HeVDXWQKCYn
         u/uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7E1pOx8xXVA9iNpfW4URDTBUBdim2lzy0P/MwTxR/m4=;
        b=Bl2niYt2WyHfKABbZOrO+YhTxg9JdjsSFu5uTeyN3fEkZlN/tyHht5NaSQ1192wklK
         d7mS/nhwy6wgbfYXf3WpQHS75F3AriRp48DCY21Gfo/jPD9+5RI5OPBwAeuXRRyHC0+b
         mVl2656JzKAHCsnh74NvHnwkqp4UaaH424bsFfXGX/3wF4oYoFdQ7poZFbxLgrAVSazC
         nLIfGsW5SyZ1eHAi4pu1cLPUbwD0PgJ8ZFzAzWjAYkhN7SHv+QE72Tc+pJ3nAZuMSfID
         b0iMQtnIShcMEsMI5gJNpHaOBsZ9EGED/AkWFFsyweRmwrZgQ3ds/07VITkk62Y4ptKh
         KNCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=adiYkBob;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id a6si1595851pgk.0.2021.06.01.12.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:27:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id v12so7419725plo.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:27:12 -0700 (PDT)
X-Received: by 2002:a17:90b:1bca:: with SMTP id oa10mr26294526pjb.100.1622575632153;
        Tue, 01 Jun 2021 12:27:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k7sm2776034pjj.46.2021.06.01.12.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:27:11 -0700 (PDT)
Date: Tue, 1 Jun 2021 12:27:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Luo Meng <luomeng12@huawei.com>
Cc: nathan@kernel.org, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	Mahesh Bandewar <maheshb@google.com>
Subject: Re: [PATCH] blackhole_dev: remove unused variable
Message-ID: <202106011225.BF900104@keescook>
References: <20210529034552.2740933-1-luomeng12@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210529034552.2740933-1-luomeng12@huawei.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=adiYkBob;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a
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

On Sat, May 29, 2021 at 11:45:52AM +0800, Luo Meng wrote:
> Fix the following clang warning:
> lib/test_blackhole_dev.c:32:17:
> warning: variable =E2=80=98ethh=E2=80=99 set but not used [-Wunused-but-s=
et-variable]
>=20
> Signed-off-by: Luo Meng <luomeng12@huawei.com>

Please double-check MAINTAINERS with scripts/get_maintainers.pl, I would
have expected this to be Cc:ed to:

Mahesh Bandewar <maheshb@google.com>
"David S. Miller" <davem@davemloft.net>

Otherwise looks correct.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  lib/test_blackhole_dev.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/lib/test_blackhole_dev.c b/lib/test_blackhole_dev.c
> index 4c40580a99a3..f247089d63c0 100644
> --- a/lib/test_blackhole_dev.c
> +++ b/lib/test_blackhole_dev.c
> @@ -29,7 +29,6 @@ static int __init test_blackholedev_init(void)
>  {
>  	struct ipv6hdr *ip6h;
>  	struct sk_buff *skb;
> -	struct ethhdr *ethh;
>  	struct udphdr *uh;
>  	int data_len;
>  	int ret;
> @@ -61,7 +60,7 @@ static int __init test_blackholedev_init(void)
>  	ip6h->saddr =3D in6addr_loopback;
>  	ip6h->daddr =3D in6addr_loopback;
>  	/* Ether */
> -	ethh =3D (struct ethhdr *)skb_push(skb, sizeof(struct ethhdr));
> +	skb_push(skb, sizeof(struct ethhdr));
>  	skb_set_mac_header(skb, 0);
> =20
>  	skb->protocol =3D htons(ETH_P_IPV6);
> --=20
> 2.25.4
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20210529034552.2740933-1-luomeng12%40huawei.com.

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106011225.BF900104%40keescook.
