Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBOXLWOCQMGQELV7I3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F7639019A
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:03:55 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id f19-20020adfb6130000b02901121afc9a31sf7888697wre.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 06:03:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621947835; cv=pass;
        d=google.com; s=arc-20160816;
        b=CPStxKsq0evENxfIATrlaQX2+9bAEfgnk2ZSKP6XbcELlIYT3U/UbU+UsApf5DBBQq
         BS4Wthk+UZvQr6T/OZHFPYyjFhQGP7F1VjYW7FC2ojt8qaAZnAgVogNAIIDMZcM7s9k+
         /WMgy1yESQlsUtYNT+FuIrVivyv1QOaBeLdvaiP9NmDpWYT3qcYRlFoUD+4P8DQ5AkR7
         EyvEKOWy2ELA5Ycwc0YZ0Dw5Y4YPZRAFgE26SleaU+Ayx6liG2YOLJRj2GuSpDI7phP5
         ragT9QdYPrd/7QH6yPVQbbmh8cWMENlPZi0yEDICOZMbUT8rnZRChbqr67v5DSLsQgJk
         XAsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Xl3icSdx6rfHMNZF6QftcB7/JirjgDmbFT19q7MI6zE=;
        b=lUJ7frmTIR+6eteGIbSY8r07lp4i7Kinthyvl+IPvCxPK+3mrTwIqrZcanj9VPgV+3
         5xl5AFS3jI5MS6sxVeR1BruB/TfblnbIh3qT7a54gFrFT3h7pFLVGJVQo9ve5M2WwUCN
         x0m8MhWumObYIYMefU+CJncyErMZsHUj5WiMf4flr39OYZbGSb4gJtN9rCVORz2bjqYW
         Ggn7uONw9hPL9uFc5OUfuTZF/JXNyBFfnMvOWD1t+OEmBWBCQN/jzWclZ/DIdv/6LbQO
         j6lV3DroeUzNZt/xFEz4LmXp+m4TXR2lUlYgsQsh+rzOiSAIU2R4w1lCAbx/WOcaPnQh
         OjzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=lZL1cVsd;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xl3icSdx6rfHMNZF6QftcB7/JirjgDmbFT19q7MI6zE=;
        b=cJ8c5InZmw6PD/D4ZyhPxndXPklPt6XGS+mcorez9f5edplp7IbWCaqEkvBWfwcKs3
         zuutlMN7MwZg/Cy4cci6JLc0/7q3hI2Ef/34BUKuU4dnJr8uMVSrtLc2Do2nx8XuzcNj
         5f4xdhO6epMoFgSX6mnwk6cTlBcjB5EMGHyO887s3UzoUQYXIQYXGqKW//Ptr+YAhXQU
         OQH5pF7DuwmvatS8NniAXWbTIa7+wOLCWD6l5G9Sd03zMsUP2LRtHFlaJ5JXry6F/Bi2
         6YRFbhRqkPjMCeRjBptL+m0d8jusR7L9c1/V2yGADy3SWwhHbtoduJIFzJPSagjSvhMK
         wrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xl3icSdx6rfHMNZF6QftcB7/JirjgDmbFT19q7MI6zE=;
        b=ScMvBf42Qodh27Wwu4M1qfKOI6H0w9gL0G/jv4YLIkJddmxYHCP7+Q4VWtBHDGVOFg
         Mn3nTaaYu6C/PvhpGpNw/VZ+N8Mzy6V4r5clYD0VUgqkBW93MUopx3IG0bz5cRSnRe2r
         RsgxR+fJgMR0vlH81QfNCzRrK50t/TMRx9rbNE6XhTORq1brVaoo/sHhMS1KfIIeZ4ki
         0TGjIA8qqfcaFlFTdnWHW/5NQf6SP5fHeLIxvDRxd5L9mNu9rDQNOTiHH/h4RAFzALj2
         BAjjv1FI3V/FzlfsmSd9THjGfrGTrKNk1H7m2r60qb+33yxXf9xcRbXahCWPtSy3zXLm
         U3aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BX+j8yaVzZ8My3UfwkK7JoGPTziH22SYlNnalOslK9DaUPOuC
	cNKJ58m6AZc6MYA6PtAxG14=
X-Google-Smtp-Source: ABdhPJywi2njstHzBZapAYv0gkN215EJExixHyikoSlTjDT4xoM8UqiPlDNw5D3W8MIc4FpgS1pv8Q==
X-Received: by 2002:adf:bc46:: with SMTP id a6mr26741526wrh.232.1621947834927;
        Tue, 25 May 2021 06:03:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db50:: with SMTP id f16ls5667441wrj.2.gmail; Tue, 25 May
 2021 06:03:54 -0700 (PDT)
X-Received: by 2002:a5d:6b43:: with SMTP id x3mr27432006wrw.263.1621947833587;
        Tue, 25 May 2021 06:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621947833; cv=none;
        d=google.com; s=arc-20160816;
        b=Db3X+SxmUZ6qmxU9UgQ8o3BgDDss0GUzpA9kQU9PwRuPvP1XOlGDasl3IJqg65qHtM
         Ws5nj7XSvD6n9/CtBzcVsBzd+SfkxBrK5/7fdWtIsBBg2lWXM4s8T0v2Ua/uFZpRKBZA
         rxToca5UhNt6aSztKgTAqgs4FI/0RtWUqizlCR1j+IHBB75Jz03ICv7QwDfNV/MWQXs3
         z2kKpd4RkLQwC1xcD26KCM+dh3g+z6xOqVKJWOhd2azYl71Bzm5WutjddvVl3/Xc7Jur
         YFS3LwCvBDT12Qhg4lmMFxo4zbxWFncYS7tkVr1m70I4xzUmToS42jmlVL5aTa4kpW8b
         A7oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NutMlFJ/fmTgqJowgK0BEqirQCjnyHyDPGr2qQythGw=;
        b=XqbIIcNTHdUmSecki3fNAQ+SaI0BxgwhPIQ9zUltKPleSuRSC4phODgR+8UmdcX8L4
         3pnFET8ooMLAZ5HMlIMKaiTh22R6NswxAK3DZvbndcU6v/u0fl9g/IcJy9KQUAs8cBHV
         YzYIdQri9Oyw+bvx5IJOWEKIJnvt3E+MzCuXPNx6zxC+FxbYlSyIcBihXdEM/bU2SkHH
         rssawqTSPMT6uq96AHe1GskahpyyxiNOFsDrLj8Z4Ay7XX+Hjg5iIESDwjzn01BfQLtL
         /7ex4kiVAW1tBVtdRwXgxaxiEBzMJadNVpliUY0cze62E6RebxKQkkPhcHfTN89w4yCp
         p+kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=lZL1cVsd;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id j13si841664wro.5.2021.05.25.06.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 06:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1llWir-006Aha-3r; Tue, 25 May 2021 15:03:49 +0200
Date: Tue, 25 May 2021 15:03:49 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 2/2] net: phy: abort loading yt8511 driver in unsupported
 modes
Message-ID: <YKz1teE92Q3/+JMj@lunn.ch>
References: <20210525122615.3972574-1-pgwipeout@gmail.com>
 <20210525122615.3972574-3-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210525122615.3972574-3-pgwipeout@gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=lZL1cVsd;       spf=pass
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

On Tue, May 25, 2021 at 08:26:15AM -0400, Peter Geis wrote:
> While investigating the clang `ge` uninitialized variable report, it was
> discovered the default switch would have unintended consequences. Due to
> the switch to __phy_modify, the driver would modify the ID values in the
> default scenario.
> 
> Fix this by promoting the interface mode switch and aborting when the
> mode is not a supported RGMII mode.
> 
> This prevents the `ge` and `fe` variables from ever being used
> uninitialized.
> 
> Fixes: b1b41c047f73 ("net: phy: add driver for Motorcomm yt8511 phy")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YKz1teE92Q3/%2BJMj%40lunn.ch.
