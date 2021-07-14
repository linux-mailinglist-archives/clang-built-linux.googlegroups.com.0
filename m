Return-Path: <clang-built-linux+bncBDT2NAOB24NBBPUBXWDQMGQELVTY6GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 772003C8EC2
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:53:35 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id y15-20020a5d614f0000b029013cd60e9baasf2087465wrt.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:53:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626292415; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/ErBZ1tdyyxAa8AJIdBQYs46TRUlyrXT8hotm0vVK0obguuSkJJqKG9vMaB98Zi5q
         8yvkjnCTNYgO4UgxjNzOQckZ4J/jMGf7jZX2qzZXr59rm/V9Qk4vQ/2Oz13Zh4zPVhQF
         i262Aqf2ahA69GgbfaUnLeP4MVNFyLVvPlzoi9ez+NG0g0dkNEKSJMWKGMUF/FicGtaU
         S3MqyolQNHZi+oOuLlKx9Pd7vkYACsiSuA50WDpOHfl7gQEm1hjDTRPrLQmYgq2ih3V0
         /XvzAcXL8dt46zrwkUS+8WXk0rgdDVaiSBl4jv22AkkyAl4SBXIv5l5VE7ZNPqK20WV6
         Umxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Uz1BrnJxoSu7f+b1l14tr5b4/iN9Bbi7r14tVFkybEg=;
        b=X0UATFhnyc9/ITmPeD0MAQ3p6b76d5zSjDoJ7MPYE5ifc5DLItfQ8S/dFdkSqSkdct
         j+XxLh/ArysPCSbFcaynCzpLkfzBoGE0rI/rFy/mY+pmXCJOqRqEgp5SoNgEV0ksD4yC
         lmNR+4WDhHIIC1GZpvkGouxXAwIfMwbV51vshAkMKfUz029yY5WTpG70UhSxI63BVRsL
         ANtYJdBOfwOYIfiqqYp5KDXJEIVuV8kpTde/IZBWQturqFWCJxvHI10bboIiAfLchCCR
         qc+4ZiXUvu8iUOAIb6/rnWiW9vsTFY++sNTbAymC8ZeUUUwMPNt5S6EZ93RVkWNCzS65
         9M0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uz1BrnJxoSu7f+b1l14tr5b4/iN9Bbi7r14tVFkybEg=;
        b=c2ockY7O/GTpDK9aZMtGfoyv7jIaneVeo/2y1pAyoG2WPbUdbpM6kFwiaujsnZWtE0
         cw7Q5h0YseUx3SrwxOLW8eIHU3Yt3vvU4nGH1aBEgAqWpFbvAfyJxbpuGTtes33Vytlb
         E4WEUX/xu2dW0O2OEPKIfdK5gTBl9lJBHKw2QRgFyIOldopzXazjLp15tVnl0YJIgfqy
         2/kqN48zA1r/cEal0v93ugCthhRhJOgIANFILvrpKdhmPZd+c91h8T8BKojlVqM14dvK
         ekiVtLxTFC3Ggx0cXj9tWqYRp3wxF/8XZJCL/kYiLFj01RTwy1M9KkOX3QXPFsKtd9F7
         WKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Uz1BrnJxoSu7f+b1l14tr5b4/iN9Bbi7r14tVFkybEg=;
        b=SUFbmhnYvwdK1uHlH5a+4v2i7+l1wBQ0w/RsZ3m/hhuG6NTB49C6tfUJBHBLpazwbs
         dn7WfU0b4HXbU3xHy8/4uXbQeBQCTpJxsLrzykxUALRItoNxsWUnyDLQ/WLEaa4TGHsb
         ffBXkuNXTMWO4DoOOERApUhCXWyjNbCDfYZvXA+VBFxviUkELB/A4doheDHv2TOu88FH
         APhglGjL9iaSVK8y5iZB8kq35rwfAEqHv0tL4JfGySH48bpogGVohPJLpSg+MnByuhWZ
         3pvipW7esLEvyu+brXI1LymaHNYx7fSyGCnWAeyF1IUbroqHtQPhdKPHfTNkkdQdzVWG
         fV0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fVn4ofejiXcOASjuDZ0Q9N4sJj/C1pn7VnHsUhcaIn/hBZFIS
	FRhpeWo/hXjEaxhRvQmIXzg=
X-Google-Smtp-Source: ABdhPJzSF2CL8K/+MapCxvGQ8LlQqB/bbXwrLn9IwEwxjXaYStdYY8tp6fhMve1eSAVlauPQmnyawg==
X-Received: by 2002:adf:f50e:: with SMTP id q14mr15033118wro.183.1626292415175;
        Wed, 14 Jul 2021 12:53:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:511e:: with SMTP id o30ls2913451wms.2.canary-gmail;
 Wed, 14 Jul 2021 12:53:34 -0700 (PDT)
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr5974821wma.185.1626292414246;
        Wed, 14 Jul 2021 12:53:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626292414; cv=none;
        d=google.com; s=arc-20160816;
        b=gY23KiXpdHP00G9KxTdi6vx8vcif7TkOuV348aCL1AqJ4fpC1xa03/5iBX9wEiinm3
         ENqdamfBfo3xI7Q5CDvQfcim/Y7F/c7EgZEMGrRYHp6wTfHyeQJPGAB5D0TC6i2GODI/
         1miSgd1xn97pk88G/6mIP6zhrgSYHxl4TRJU7FHMV0VFTfOrzEwMXTkwnfy3iP0xGEiE
         crUa4JfanK6lW+hc513/uVFRkStHiyEnMFkK0QxooAap1+2Hz0jZHqlM0Z/GFdnK3Wxe
         1i3AlRNNkrHwgwzjqGo44oFjy20Ee7++U468bnarvrswzEc4Klkpm439H3NU9mYAId/z
         8Lsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=8surr868Qm309D8Kwipes0IpGc2XRM8y5/C6VvRCmPs=;
        b=XUW6tqzbHpAX2oUFt559d5q27eTlNyDhfVCTqSzO8pH9MD1k0Nc41e3X3jdVAa7Hry
         aSCWmGekwHM2BTwbG7tcsYE/lJa6dpaqG3gEXWfMzw8UBrrqyLkY9bh3Lg2s4YN1quEV
         L+1AFK1Jpcj2LQGRoS6X65c2pJQKbiO0OkyRN4u5K/nx3CUA6fgoFG7BUqexIYhiCc7x
         K11Sgd91M4IewLlTr0o9JyGZAquib66EbSprHuWwCwa0qrA8GHwto18U/CKOKtEb1vz4
         HpNK30e53k7NddDSofB5EHbBDvNEcEYZDhhEWGjpK2G87lCIBOSe+AFgvp8Iw9IdwHF/
         IqSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id f17si351123wmc.2.2021.07.14.12.53.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 12:53:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1m3kwn-0008Nu-P4; Wed, 14 Jul 2021 21:53:33 +0200
Received: from pengutronix.de (unknown [IPv6:2a03:f580:87bc:d400:1d5a:f852:d9c2:1ad3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id E3E8B64F5AE;
	Wed, 14 Jul 2021 19:53:31 +0000 (UTC)
Date: Wed, 14 Jul 2021 21:53:31 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning:
 taking address of packed member 'hw_tx_obj' of class or structure
 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer
 value
Message-ID: <20210714195331.gr4lmltpcdtjm3iv@pengutronix.de>
References: <202107011516.MsGsARqy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dd6rdoeq7clnjxwp"
Content-Disposition: inline
In-Reply-To: <202107011516.MsGsARqy-lkp@intel.com>
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


--dd6rdoeq7clnjxwp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 01.07.2021 15:25:24, kernel test robot wrote:
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   dbe69e43372212527abf48609aba7fc39a6daa27
> commit: eb79a267c9b3e608e7762a1b221428f37ace3aa3 can: mcp251xfd: rename all remaining occurrence to mcp251xfd
> date:   9 months ago
> config: mips-buildonly-randconfig-r005-20210630 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
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
> 
>    In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:19:
>    In file included from include/linux/netdevice.h:37:
>    In file included from include/linux/ethtool.h:18:
>    In file included from include/uapi/linux/ethtool.h:19:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:28:
>    In file included from include/net/checksum.h:22:
>    arch/mips/include/asm/checksum.h:195:9: error: unsupported inline asm: input with type 'unsigned long' matching output with type '__wsum' (aka 'unsigned int')
>            : "0" ((__force unsigned long)daddr),
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is unrelated to this driver.

>    In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:26:
>    In file included from drivers/net/can/spi/mcp251xfd/mcp251xfd.h:14:
>    In file included from include/linux/can/dev.h:21:
>    In file included from include/linux/can/skb.h:17:
>    In file included from include/net/sock.h:61:
>    include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
>                    M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
>                                            ^~~~~~~~~
>    include/linux/poll.h:140:32: note: expanded from macro 'M'
>    #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/poll.h:126:51: note: expanded from macro '__MAP'
>            (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
>                                                             ^ ~~~~~~~~~
>    include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
>                    M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
>                                                        ^~~~~~~~~
>    include/linux/poll.h:140:32: note: expanded from macro 'M'
>    #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/poll.h:126:51: note: expanded from macro '__MAP'
>            (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
>                                                             ^ ~~~~~~~~~
> >> drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2267:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                    hw_tx_obj = &load_buf->crc.hw_tx_obj;
>                                 ^~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c:2269:16: warning: taking address of packed member 'hw_tx_obj' of class or structure 'mcp251xfd_tx_obj_load_buf::(anonymous)' may result in an unaligned pointer value [-Waddress-of-packed-member]
>                    hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~
>    4 warnings and 1 error generated.

These warnings are technically correct, but the driver never
accesses this pointer directly, see below:

[...]

> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2266  	if (priv->devtype_data.quirks & MCP251XFD_QUIRK_CRC_TX)
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18 @2267  		hw_tx_obj = &load_buf->crc.hw_tx_obj;
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2268  	else
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2269  		hw_tx_obj = &load_buf->nocrc.hw_tx_obj;
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2270  
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2271  	put_unaligned_le32(id, &hw_tx_obj->id);
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2272  	put_unaligned_le32(flags, &hw_tx_obj->flags);

use put_unaligned_le32 instead of direct assignment

> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2273  
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2274  	/* Clear data at end of CAN frame */
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2275  	offset = round_down(cfd->len, sizeof(u32));
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2276  	len = round_up(can_dlc2len(dlc), sizeof(u32)) - offset;
> eb79a267c9b3e6 drivers/net/can/spi/mcp251xfd/mcp251xfd-core.c Marc Kleine-Budde 2020-09-30  2277  	if (MCP251XFD_SANITIZE_CAN && len)
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2278  		memset(hw_tx_obj->data + offset, 0x0, len);
> 55e5b97f003e85 drivers/net/can/spi/mcp25xxfd/mcp25xxfd-core.c Marc Kleine-Budde 2020-09-18  2279  	memcpy(hw_tx_obj->data, cfd->data, cfd->len);

memset() and memcpy() should be fine, too

Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714195331.gr4lmltpcdtjm3iv%40pengutronix.de.

--dd6rdoeq7clnjxwp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmDvQLgACgkQqclaivrt
76mGtAf9F6YJKTBhnqgu/SWO69/xUwxK3NTIVzOR2Q/j1btfJJ2j/UowSn5mVbyj
YBaZ0nkkv7EzpmQIabhzztsYAa488TquSLPebpZu/vVnU04Gd2CSjaTBuyHe8qC9
dYvIgqdmnunVJK0ZO+1dPtYkzFKusZAYZ7we68TyR4u6/QheJ+06v2ZPwHCTxRQt
Hyod76ruWgaY2Q8c/675e4VI5lFqg5I9h4rdBolXiZaiuKCJQAlO+2+Sh2RKfX1/
yFhbeYk/L9fhlkjQTuMgPiGtn+k5caauXwLcWUxgYSZkoEEkBQ1qij/mngLkjSiS
5l2O5BHwjTt7/YvXOvu52EYb+DXTAg==
=kOn3
-----END PGP SIGNATURE-----

--dd6rdoeq7clnjxwp--
