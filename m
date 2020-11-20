Return-Path: <clang-built-linux+bncBDJNHL5JSEOBB2VX3T6QKGQEU5ZUTFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 074F92B9FB2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 02:29:15 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id z19sf3029469lfg.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 17:29:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605835754; cv=pass;
        d=google.com; s=arc-20160816;
        b=PrFyrId7nynAjH+3cPVup2bTJotnWBjP/T5PaXw401uEdsWCZznAY7KJawHfwqTFKS
         kpr3DmBcyWQFJyGCHyqCtuJmI2qfpJ4t6pAENz+5WHw4NA9vKvc/g4C2Y+DUYFj+QV0T
         /GRIwlBKAyZUOOZRE7n9SsG4jnjvYDzSnLSdQVBkJuFB7r256VqX5J4JhzBNZkgzlW/4
         jjhIo/5sqt14TqO8CLq4wDvl0M7IKZb0i0X+tKheRofViRwBxoPSZsn2/Tb4VjAEDJHA
         p95CC6Kje5idkbdwke6iY8VvNHBP+S0x0EmfmhYUmj6pMO010IW/tv+hupKsClpKo9mg
         o+nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+MHCSVH+8Ju44+lhYzzAQ9Xl9aN6oYYpRpQLUsevGdg=;
        b=bpi3eo5E3wwlr9fiMyqQoOhmWr+wes5qlevRpagY1A7Aiu/dWbnHKeNFD63oAtih1J
         4rDQKrRlGK/ExYmuQsPqYMWLQ9WZ54z80HZv7dcgDP06bM45iw66mWyOH0GzEHqILGsY
         X3T9lIXT2AHxn1dolSeY/hne5zefadk1JGhAn3TJ/FS185IosYbDyGU9CsF6Y6XyEiik
         3t/5kZPYkttm7ytO/waEvZahcV0Z06YnSN5X0KyOemEPxglqkjk6RdKlS1f4xRzAOTSL
         6SAaniuWLX9RIWQM3lIN3v6v5+firPsq1/IZcan7oI9GmbVu29fAIn/P5EJrqGxsgEo1
         4pAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+MHCSVH+8Ju44+lhYzzAQ9Xl9aN6oYYpRpQLUsevGdg=;
        b=d0VGhrypJvPts4UHd3/TQQOUc0qgd8BUd0UMgBgErmIF/qPrtK6GX0oHy3xv/EaaUF
         Ufb6/eJwuUMVkxH8CnY05GwLPPurmzDR0OOiJ5aNrVao2tz0uBapcT5w8NYOrB14d3/g
         rtPJrHPixlyzv+WW0RteY6J8kw6eFP6IxbmJKetbaHdWjpoP6BdzchWEj2E8r5tpeLqH
         jdEwEbgyYFX5+SDlvPzcdxmj87LyhrTp0ZKUraMyB23X6g9EUtDcsgsej1hREywJI/c3
         qVwlUlTiJwGVWQ/PLKbVythCXM/FS1Tbv2mXkrFmVCzP2Tq6xP9upYkmufyYZ4alnbEZ
         kKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+MHCSVH+8Ju44+lhYzzAQ9Xl9aN6oYYpRpQLUsevGdg=;
        b=QyfUgq4nn3M7FDCaIT3XbGKkpvhKfIEaAuQfMKfvJndhmzXy+dtN7yXB5Nle1GYXgb
         FLAxjHfoTVC4ZqDIA8SaAC8pFSOURItwbJ/s9YaFGJkZo6RIF4o5JLSZG7wC9Qpbz8YY
         eD6qYwOQVc1yGCmrcUQvuVj3bz8P1Il8q0W3f7X91CGt0cOX3YkSBuxXqdl9CZcPM3ld
         HL324x1BnCxazExKf+xmcBzPiU3EcXm7XBU2SB5lLaCHZeRVNWDPra9fFoqA0ElG3f0c
         ZJm5tTzxvrGjjZA8yVS2pJKDGF681HV8OTVxYXRG+tgKBJ40pRu7QFHJjTTMcurQDesH
         djPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FgS2yuLhMjk+t55+nNKx9CeVPlshrqmG/SvM3oliA0Bgb8Fcm
	G6wD3QJbsDiz87ks0eBGwKw=
X-Google-Smtp-Source: ABdhPJyzrAnECLWgb3O51dXfqEFKLz6DU2bbCYZ3RoMnuCXWTGtrG6oT9Gim9ek7PepidWmVoL3siA==
X-Received: by 2002:a2e:721a:: with SMTP id n26mr7417667ljc.366.1605835754459;
        Thu, 19 Nov 2020 17:29:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls1818944lfg.3.gmail; Thu, 19
 Nov 2020 17:29:13 -0800 (PST)
X-Received: by 2002:ac2:46f2:: with SMTP id q18mr4467728lfo.229.1605835753293;
        Thu, 19 Nov 2020 17:29:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605835753; cv=none;
        d=google.com; s=arc-20160816;
        b=UFlig7TEslIqABiCyWOQrw2cxPaW5+o5V8zNt2dQnABqDjKpIChPXQV5wBTD+rbtcK
         POyLV2s12ZyPhYS5jG6EN8sIzm/qpzKXcf3YQ/qfPsCq6zqy0yEd0hllXBkacOkAgNpP
         qUyalVoKvGb6hbWCuYLvnr79T4EDpeV1K90lcC2QAQ3xa55pRx4DU+QX3ykx80FvSH1P
         jDjtsF7ZlVyz7VRL9aVnkmajw4K5otLNojhpYGK7vjv1Ygs9ZcwXC8gQT/I97RsQkiKW
         rtDow2nnWkV983e47jA6wT70sTIO5mSwRTWTfhi4BRX3PBCva45q3Z/j5xY0wbO9zALi
         5wiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=utirl0DE58O8Mrm6DUN+5oNrnFzEGe602zAc/yaXNcU=;
        b=lfc5UHMsxPWAwLfO3SDB2IQT58tKhETZ2tYOecTjm6coZokF6g8fiv8PaUidMVmkYd
         826rHrnKmuXrLmDMqYWWMXZ76EB4eX9GIokTCSv4vuB0zUbQ1uu9vhsygtd+3Z4Hpqtu
         jz5K1rKk8oL1K7izNoZbYlFaX+Uk3kJwnJ8xhI9+W2qd08kHQbo/ixy+vRj60nOS/ChK
         NNlHakjqCxMf2rOMjgyu1ngnotHEMy+lxfweaoC4bWhzrBIn8I49CrxVn0iKdn1xyGts
         qXDHssg2mgAh8v4mVTYZT6cIMBZ5/I4ldpvc2+NlNgfm6u0E82YG5//qloPhdFRzP8Pj
         XtLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id v2si25876ljd.5.2020.11.19.17.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 17:29:13 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kfvEY-0082d5-4S; Fri, 20 Nov 2020 02:29:06 +0100
Date: Fri, 20 Nov 2020 02:29:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: lkp@intel.com, ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com, davem@davemloft.net,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v10 4/4] net: dsa: mv88e6xxx: Add support for mv88e6393x
 family  of Marvell
Message-ID: <20201120012906.GA1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
 <df58a3716ab900a0c2a4d727ddae52ef1310fcdc.1605830552.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <df58a3716ab900a0c2a4d727ddae52ef1310fcdc.1605830552.git.pavana.sharma@digi.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

> @@ -222,8 +231,8 @@ static int mv88e6xxx_port_set_speed_duplex(struct mv88e6xxx_chip *chip,
>  		return err;
>  
>  	reg &= ~(MV88E6XXX_PORT_MAC_CTL_SPEED_MASK |
> -		 MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
> -		 MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL);
> +		MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
> +		MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL);

This looks like a white space change?


>  	if (alt_bit)
>  		reg &= ~MV88E6390_PORT_MAC_CTL_ALTSPEED;
> @@ -390,6 +399,84 @@ phy_interface_t mv88e6390x_port_max_speed_mode(int port)
>  	return PHY_INTERFACE_MODE_NA;
>  }
>  
> +/* Support 10, 100, 200, 1000, 2500, 5000, 10000 Mbps (e.g. 88E6393X) */
> +int mv88e6393x_port_set_speed_duplex(struct mv88e6xxx_chip *chip, int port,
> +		int speed, int duplex)
> +{
> +	u16 reg, ctrl;
> +	int err;
> +
> +	if (speed == SPEED_MAX)
> +		speed = (port > 0 && port < 9) ? 1000 : 10000;
> +
> +	if (speed == 200 && port != 0)
> +		return -EOPNOTSUPP;
> +
> +	if (speed >= 2500 && port > 0 && port < 9)
> +		return -EOPNOTSUPP;

Maybe i'm missing something, but it looks like at this point you can
call

	return mv88e6xxx_port_set_speed_duplex(chip, port, speed, true, true, duplex);


> +/* Offset 0x0E: Policy & MGMT Control Register for FAMILY 6191X 6193X 6393X */
> +
> +static int mv88e6393x_port_policy_write(struct mv88e6xxx_chip *chip, u16 pointer,
> +				u8 data)
> +{
> +
> +	int err = 0;
> +	int port;
> +	u16 reg;
> +
> +	/* Setup per Port policy register */
> +	for (port = 0; port < mv88e6xxx_num_ports(chip); port++) {
> +		if (dsa_is_unused_port(chip->ds, port))
> +			continue;
> +
> +		/* Prevent the use of an invalid port. */
> +		if (mv88e6xxx_is_invalid_port(chip, port)) {
> +			dev_err(chip->dev, "port %d is invalid\n", port);
> +			return -EINVAL;
> +		}

        /* Mark certain ports as invalid. This is required for example for the
         * MV88E6220 (which is in general a MV88E6250 with 7 ports) but the
         * ports 2-4 are not routed to pins.
         */
        unsigned int invalid_port_mask;

You have not set this in the info structure of the 6393x devices, so
you can skip this check.


> +/* Only Ports 0, 9 and 10 have SERDES lanes. Return the SERDES lane address
> + * a port is using else Returns -ENODEV.
> + */
> +int mv88e6393x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
> +{
> +	u8 cmode = chip->ports[port].cmode;
> +	int lane = -ENODEV;
> +
> +	if (port == 0 || port == 9 || port == 10) {

Maybe 

	if (port != 0 && port != 9 && port == 10)
		return -ENODEV

> +		if (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
> +			cmode == MV88E6XXX_PORT_STS_CMODE_SGMII ||
> +		    cmode == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
> +			cmode == MV88E6XXX_PORT_STS_CMODE_5GBASER ||
> +		    cmode == MV88E6XXX_PORT_STS_CMODE_10GBASER ||
> +		    cmode == MV88E6XXX_PORT_STS_CMODE_USXGMII)

Indentation is messed up.

> +			lane = port;

	return port;

	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120012906.GA1804098%40lunn.ch.
