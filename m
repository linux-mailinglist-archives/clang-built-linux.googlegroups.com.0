Return-Path: <clang-built-linux+bncBDT2NAOB24NBBXP6QWBQMGQEZFLL4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id C973634C4BB
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 09:18:53 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id l8sf7165753ljc.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 00:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617002333; cv=pass;
        d=google.com; s=arc-20160816;
        b=ylfMcxd7wEODavh3xpz4e4BU4Qm2OZdj5SRH8SK4Zkr/A5FKvrfQgpxo9ONyWictl6
         UE/7+p6n3eJYxmACX+GPix+FFJpRxy99vxS9zT97j/gYzT69TFEIPCIJwIBE/dmYPOlP
         6ubw/V2qoQ0T9WwP6vTEwyyAaAnxNwjmdp5hTitZpMcAkkw6rG+yVdOklV5lhE/vjGa4
         CyhcSj7IC+LQRcY9hABceZotO8BV9joEw9QTjMRC8h5UW1geLN6nVzl2rJe0GVgfgfeC
         VCh5reYEnX/Sy8wNSfpPjg/fSOetPpCrdPELFkmYetH/VPlju6LfJ9ARomh2OcEbxjfj
         /nTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XxJC9COj6EZdeNnonjTnS098ip05GdLYM2gmzvOeqUw=;
        b=uXFPW3r1yndOO9WvcmDOKYv8/NPl5E5laPw2Mca30KRZ+hlvuUh36vVDU+e5i26tB7
         h5qanoP2l5Cdt+zXivr232jtp2IiJOE0HsNoHIuBDRV7t9RbyyaPh5jfgOv4LBk93rhR
         Epgb93h5mWCL81nB32+j91XRmzX8XsV3V3fWoi0nuG3yORLMM8P5HHsxunEXKjfadEKn
         GfuGr75m7QU4F2atSAi6TgHVyZKkmcKgY2OyYD1NCv4vXu6AByGdc1CwpC8dfNqCZKwM
         RWUsOEFau/mblv1vTJxforv2LS0ynfzyUPYaH2OwsLxL5ka6tQzw50qpqbDkI3B9bJsF
         gBuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XxJC9COj6EZdeNnonjTnS098ip05GdLYM2gmzvOeqUw=;
        b=RrWZJqJf4z6oIAwgiGT5a07wEYSMJv+qM0fWbDHfU5CE+r9TpnXmvQfX6SznNPluXK
         YCtdUfp53YcMAp1FpN2aLqn9XxDxC3ApmJvyEsGQtuod66adJaaL6VcmH6o7tkAlNI56
         lijtAoXxmFz8SnN3kTmYVl87uga0AOFlR0gpTGz88gTAxyHjDM9yl2mA8RIA6UIua9Wb
         ilRuZiBhn9boa+ZzfPo9/Bc72GuLudAv4tZozC5fHh6cGewukeI2OyRUH2hAqnz7XLqb
         KUjoxb/TUNsXetA39g1JKHs2CF9dkEaQtEhivpzpFq9DNKor3H9PGzX0sA2KfBm32COe
         p3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XxJC9COj6EZdeNnonjTnS098ip05GdLYM2gmzvOeqUw=;
        b=QXTUOUb3S1xz9vuPVAldq7VR5nKMQFMX23Zx3P+ecty2SLvkY+8gqjrhQgHQ6iqjIY
         RjY4FVWgKFfaYFMXOw50KiMsSk/1WqUU4dqSWN/ftOKtUQPIoZAHu7i8ASwpTJ0IJ7Aj
         8XTN7eXqoxjP5ScmwpvNGmO2Ei8Yi5c+tKafS17J4EF2/2p62P5/fw+6MLIIveDqXrMu
         B3n7aIDinJ6mlMJlCuwjUiA2TAgC49DwWmyPUbTLWr9ePaEaBxQWxATfibiRTCaPoPVo
         dmgFEl8uJhgz/eeCv0ouhTxWOQ8SjQPgP273OVgEglXTqGlog8ZeAezv1RtHq/9mNv11
         gWxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EjRMLLkz6hTHXp8PnnLGRelViXwJ9puoExbURY9sm5/6TaaUD
	3z0kSf04SVmGP7gY5UoYhJc=
X-Google-Smtp-Source: ABdhPJw+0kFcIU8tbF2Ob2goRJymFy4Wy88DamOVSdjbH+bgKxuu7/gBaUGQ7O4XSRF1zT07lFB3iw==
X-Received: by 2002:a19:380a:: with SMTP id f10mr15197710lfa.294.1617002333277;
        Mon, 29 Mar 2021 00:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3474606lff.3.gmail; Mon, 29
 Mar 2021 00:18:52 -0700 (PDT)
X-Received: by 2002:a05:6512:49a:: with SMTP id v26mr15604207lfq.211.1617002332282;
        Mon, 29 Mar 2021 00:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617002332; cv=none;
        d=google.com; s=arc-20160816;
        b=F0HZzO738edKQillCs1gPgWCTTZCpTUi9jUENWc9JQxJeM3aneKBHw6aNS+sBzwYlT
         ggk17UT6OaJwE2OmBfZo6+jzqbwGJOPKMx9Vx18fkSFj8gxoJ6SWxcb+8CcjM7+AwvLu
         PhDP13uWM6nObkfytTq7f02aU/9SUApJZ3N8cLC862v+kxMyZKjGiJkn4Jyo0qF/xpsd
         Lp2H3qO1q4ieuyBj+vSy5w7MC/suVCwAAu4tKrgsP9pyWq6U1vfTWbGBvcuNIHt8rSNp
         P7H9jYPJvtPLnWdg7xkiiuH4IVzJcIJsdgOo/hB65g6iJ9bdo+NJAlUyMXKP33Olb2e/
         41zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=dPp+7iP4eY9Xhl8BI9lg5C11K379rPNoQCizHGziDL4=;
        b=akWunvmditfScXMIf4FHg8qddcrzY/6ddfZIySoT9vKkXbcZEnk8nfc2n+haLh81It
         o9/u7HpaA9c2SHWufKQpZkap4g7rKyG6ZotZUsbojnPq4RsmFrSICKWm5HqJbDZvSu/9
         wd73Gwx5GHnK9Otqsi5lXrE3645R/u0lJ9XFSShjU0bt+wCmlSBQaP5q/M4AC0tOlP80
         M9/t/Z2Ht4Wa/8PK43Xo9pr83vK60kvkK6WXpnDmCd4jjzsh3LpPjNrG8deSchRnuCQ6
         I6OnOLnhd42KDIpKheOHuFpZ4uDj1vS/XEOO9ZAkm6lFSMmthMl6ZupOjGhm0vwzm72q
         IFXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id 63si553789lfd.1.2021.03.29.00.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 00:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1lQmAl-0008RT-Ba; Mon, 29 Mar 2021 09:18:51 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:44b9:f06e:1c40:69b1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 7C0B7602718;
	Mon, 29 Mar 2021 06:48:51 +0000 (UTC)
Date: Mon, 29 Mar 2021 08:48:50 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning:
 taking address of packed member 'hw_tx_obj' of class or structure
 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer
 value
Message-ID: <20210329064850.vh7rlwh7oapjqucj@pengutronix.de>
References: <202103271812.xDwl25lD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="llupkarg5grkzwxh"
Content-Disposition: inline
In-Reply-To: <202103271812.xDwl25lD-lkp@intel.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: mkl@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
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


--llupkarg5grkzwxh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 27.03.2021 18:16:14, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   0f4498cef9f5cd18d7c6639a2a902ec1edc5be4e
> commit: eb79a267c9b3e608e7762a1b221428f37ace3aa3 can: mcp251xfd: rename all remaining occurrence to mcp251xfd
> date:   6 months ago
> config: mips-randconfig-r035-20210327 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=eb79a267c9b3e608e7762a1b221428f37ace3aa3
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout eb79a267c9b3e608e7762a1b221428f37ace3aa3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):

[...]

> >> drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                    hw_tx_obj = &load_buf->crc.hw_tx_obj;
>                                 ^~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2269:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                    hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~
>    4 warnings and 1 error generated.

That warning is technically correct, hw_tx_obj is an unaligned pointer in
the first warning, but...

> vim +2267 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c
> 
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2215  static void
> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2216  mcp251xfd_tx_obj_from_skb(const struct mcp251xfd_priv *priv,
> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2217  			  struct mcp251xfd_tx_obj *tx_obj,
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2218  			  const struct sk_buff *skb,
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2219  			  unsigned int seq)
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2220  {
[...]
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2265  	load_buf = &tx_obj->buf;
> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2266  	if (priv->devtype_data.quirks & MCP251XFD_QUIRK_CRC_TX)
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18 @2267  		hw_tx_obj = &load_buf->crc.hw_tx_obj;
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2268  	else
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2269  		hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2270  
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2271  	put_unaligned_le32(id, &hw_tx_obj->id);
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2272  	put_unaligned_le32(flags, &hw_tx_obj->flags);
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2273  
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2274  	/* Clear data at end of CAN frame */
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2275  	offset = round_down(cfd->len, sizeof(u32));
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2276  	len = round_up(can_dlc2len(dlc), sizeof(u32)) - offset;
> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2277  	if (MCP251XFD_SANITIZE_CAN && len)
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2278  		memset(hw_tx_obj->data + offset, 0x0, len);
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2279  	memcpy(hw_tx_obj->data, cfd->data, cfd->len);

...it's only accessed via put_unaligned_* and memset()/memcpy().

Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210329064850.vh7rlwh7oapjqucj%40pengutronix.de.

--llupkarg5grkzwxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmBheE8ACgkQqclaivrt
76mb/ggAialDT5Q0UmXvRXviok/u+ts9aKl88dZGDQGiTbj0pgWdC1XGgfaJfF7g
sQEYSG7g9ogJP3hgFMx4NrtWEG24GPDFK7UzHp6adWsyKnAs6vopnO/Q0GZ4fNti
ZpUL1sPkOgsoblQPQCcj6OQX43wTW+n+QM14/6lZovYO5WrClaXwRROH+zeWvsCH
ENfZ4GhnGPkRHOqRh5hPBUIEhwrhfCAuyqn9OtshBfGw9hVkp5WliVkztej8e0OU
O7TbswKA9vbEq7ftxKxiZNFXEPaNUiwxy+yB6Gz2TffkDRfW3sSqDjS51+OYPkha
HEarrb0BuRtbHxDnLb5lnENlyLssLA==
=k7CE
-----END PGP SIGNATURE-----

--llupkarg5grkzwxh--
