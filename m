Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6DXLXQKGQE6H4N2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 378941175F8
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 20:34:45 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id v4sf8243189otp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 11:34:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575920083; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxYhGQBdeGynB6HkbSoaf5gXWl2ZzTZUMI0PcL3iXUcTyba8HD5cSt5HCY7y+ZnsqX
         Ex1uusXK24Vf+hs8DueZ6843oDzwbxz9MYd1qqSpB01aDJMKGIvwirR4yiQsUF2E7wr7
         J7XzbdpG0wfPGTYVlun6oLlRp+iOEQw/YOaFtYJUed1jlXtOaC7rzPiKsTOazauqyD/N
         B8pvSLbeXZeGTDTIoqrJNE3BqecxwAnBqyjUSBc2DZhyJ142bbkNAOUfw+WbhikX4JSG
         mBuIOAQht+0VRZTbcRKi3oqoVrUxcD659cUNxnxG0Od5uAFOw/P4YCDCD66TclkDH+Ig
         O87A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jtJ0GiM7VZjzrbhoLRT/UwT7LctRpOAu3O27LxQlK+0=;
        b=dzcpeZzKPCUZB4Ccb/v9Ybm013TuwVNjT/2rUP9dAGm/OJMqfmHwcNndp602ICcPG+
         tK7LHk2xUaJ0IPJXuX0QxZSrEth8KGAPxNCDkYbapG7KdXnjUOIE1WmcG6WIZviRY7Sc
         acQ21U0bajUGjhsWMKHvqBiIBOXXfo+54xuA64w7ayozFe/qyIKEw9LmUxp2T7tOhjvh
         iAN/8X4ytUmkP/OIRz9JnDVJCFfqtqVSbXABJAH1sYx+UxdFmMoA9EsaCXAG/0+6+6yp
         B1naQ0emSzGQd156acbdJ4DepWnakB7yenOQMZQ1gvcmuvjsUdcuCaC3toFc+eWSwpUf
         iVow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l57bR7j5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jtJ0GiM7VZjzrbhoLRT/UwT7LctRpOAu3O27LxQlK+0=;
        b=Rp3KuwE1l4hn2m+tWPk1FZrgIKUY25W9Ox2HNs5jh1nJsZN98XsND8CV5wfGS1x4ll
         lN8EsZ5xmyMWhYPw1qx01h4y4bxIpKv5Snolvdmt2B08Cq8zKVWzQKjk/pMVX8LK10Bv
         R1FKrceX6t9kyNA9m89D/sgIZmli6LS+DlOmwrpRgDptMxbCVrSuqzfhDr8RJHlawYhu
         EFX2hRxHFuHT0ICv4HsxGSn5JtDlqRQZ9nkfN5MnDle5Mxnd5WZ2FQncVV/gHuVECgsn
         K6XyJ4Ctarr8zY+IG0z/ZFrOAQthjyJXF5ON5Dk31sR8VORbibLJST8HNIwpKia6YJX1
         2kzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jtJ0GiM7VZjzrbhoLRT/UwT7LctRpOAu3O27LxQlK+0=;
        b=sv3ArMV0uSC3oJ0h1/Tlz4Bt+TMYmf2C7SWNvl5D4mwECXwmcobGmP6xb7rLMNpc5G
         VvTKFaK9bK3ynmjkoOHpjMYoYZ8f1o7a7xFZLfTeyH1pLrWNqWTVQ0kEcdBWKNASebE6
         yCCUiRrzpp4RWIl+0xSZELRPSKZVSRU0jJp0gTD461/N5Je6clqdzDKEo4F49QvH3QHJ
         T9Zg10v/vuj1WGu42J2Rqy0f2Nzp/ib0pLTtMrf6Rka3EkXDzUokFSzTG0x9jmewS4j7
         +4t+lTxbiWi7LRSA7vcl8yMsWa9oQrkX+fs8jikS+m7wp3/WdlB0S1uJyH8Xf/839srd
         ZuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jtJ0GiM7VZjzrbhoLRT/UwT7LctRpOAu3O27LxQlK+0=;
        b=Ylq70aCBQvPh5JjruUalEMnpJcCHocXBV01adijaHIA/xSM7JD38lqKOs/rorJJhIZ
         fdGnYYp7oIcNFdaMx5j0VgYkLKF4RN0ThU/TaHFBZlDK5JN5lV9EnCAFYgMi7dM/J31X
         OD2IYLJNfX5hrDCdnVJW2aVQwiaZTpn5yRtroOJmAoKRXefiiiKdYVzfq8rj5eubhMqa
         zMhUXUA3Q4psmapbEF0GqKPV8Km6OYAKByTcrkKAUG8aaDrkpc2QoYVqKZcmQOpvvXJ/
         /O5V5zttHJXzru1Ha1gA4mdgLZRP0M2Fw+/wY0OB2RRLTehoQyOk+Cs1lb3Yh/NEiEfE
         wQ/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4ZPxXvbD8StEMSc7eN1cl3mm/V/iDNVxamf0QKzmunvjMOtcR
	9SsO24Umhf3vJkZ0SmWREpI=
X-Google-Smtp-Source: APXvYqyJmtLarAbd25GWdVdFzzO7kFO/500CkX5HgDRDnItWmbHs2uQ11JXmtSO/2bScOl2brXQYVg==
X-Received: by 2002:aca:3012:: with SMTP id w18mr697043oiw.33.1575920083599;
        Mon, 09 Dec 2019 11:34:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aaca:: with SMTP id t193ls1484708oie.15.gmail; Mon, 09
 Dec 2019 11:34:43 -0800 (PST)
X-Received: by 2002:aca:bd42:: with SMTP id n63mr712691oif.70.1575920083274;
        Mon, 09 Dec 2019 11:34:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575920083; cv=none;
        d=google.com; s=arc-20160816;
        b=ix6AW4K7qEmf7VnYJ3G4KPWoHxCXrmrMOEQFfVMnggLixjR02+bgWDBszmpb4+e/bh
         apwlUPcvvj0RrBaVGNt1x0vam4+bqYOO/LMDrCyPg+VTOUBLjnQqQYHDSikexXHAZKsI
         30mzZ4lOXyYBIiZBoY/qW9zYmk1mJZ2abqahvJvg9enhIRCcdg/Bo8m/TGzoJr9bajIJ
         K2+rtKBqbT1smETKT0PmfNMoZ26TWP3sApI7mXKuGr3KufUBzZyfhaLLSvweoRc3Y+MM
         u/MzApny/HiTQrQXv/n58ZtkAduPw/kV5VVgaEzTNP5wqswlhBK+ICGY5+xzLqSSMaDL
         0PTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PFE1nWxTiyfBRgn/J6q9Y8I6dNPJrpPO2zwkS+e8TbI=;
        b=cm45tp7TEw4oDyMgERoYxm6CAl9CcrnacYwt1THY1WxQ0cOAGB0H7wgtUBAaavggW6
         6hDJWc9Wv9LUA7WnUVNIRsqWqfmCGwjC1ih8+imxd4R0+8PcvD1lSGqlCo7DYZWSXMIa
         CAyLuCHXkBkHoWsLM/e0eFhSzS7NDt05lsjOaPYCLp60VGnZoGPRoJgvuYvdy90vtUVd
         XyqVw1RkYM5vgQZSlwFeiNU+B3tT3uCF+kpRhF0FIsEFTBLaQs18HNt8/EaY67auTFuB
         AJJzU4LRqtm1SiaiHebfd4wQ4jA2GW2zDX5Os6JM+4BN6PZgrpbj16uLuX9LgV3U4TgT
         BVEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l57bR7j5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id w63si57507oif.2.2019.12.09.11.34.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 11:34:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 59so13244294otp.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 11:34:43 -0800 (PST)
X-Received: by 2002:a9d:6a92:: with SMTP id l18mr23312145otq.37.1575920082851;
        Mon, 09 Dec 2019 11:34:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id x16sm296462oto.41.2019.12.09.11.34.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Dec 2019 11:34:42 -0800 (PST)
Date: Mon, 9 Dec 2019 12:34:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Michael S. Tsirkin" <mst@redhat.com>
Cc: linux-kernel@vger.kernel.org, Julio Faracco <jcfaracco@gmail.com>,
	netdev@vger.kernel.org, davem@davemloft.net, jasowang@redhat.com,
	virtualization@lists.linux-foundation.org, dnmendes76@gmail.com,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Shannon Nelson <snelson@pensando.io>,
	Martin Habets <mhabets@solarflare.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next v9 1/3] netdev: pass the stuck queue to the
 timeout handler
Message-ID: <20191209193440.GA15189@ubuntu-m2-xlarge-x86>
References: <20191209162727.10113-1-mst@redhat.com>
 <20191209162727.10113-2-mst@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191209162727.10113-2-mst@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l57bR7j5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Michael,

On Mon, Dec 09, 2019 at 11:29:03AM -0500, Michael S. Tsirkin wrote:
> This allows incrementing the correct timeout statistic without any mess.
> Down the road, devices can learn to reset just the specific queue.
> 
> The patch was generated with the following script:
> 
<snip>
> 
> where the list of files and functions is simply from:
> 
> git grep ndo_tx_timeout, with manual addition of headers
> in the rare cases where the function is from a header,
> then manually changing the few places which actually
> call ndo_tx_timeout.
> 
> Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
> Acked-by: Heiner Kallweit <hkallweit1@gmail.com>
> Acked-by: Jakub Kicinski <jakub.kicinski@netronome.com>
> Acked-by: Shannon Nelson <snelson@pensando.io>
> Reviewed-by: Martin Habets <mhabets@solarflare.com>
> 
> changes from v8:
> 	fix up a missing direct call to timeout
> 	rebased on net-next
> changes from v7:
> 	fixup leftovers from v3 change
> changes from v6:
> 	fix typo in rtl driver
> changes from v5:
> 	add missing files (allow any net device argument name)
> changes from v4:
> 	add a missing driver header
> changes from v3:
>         change queue # to unsigned
> Changes from v2:
>         added headers
> Changes from v1:
>         Fix errors found by kbuild:
>         generalize the pattern a bit, to pick up
>         a couple of instances missed by the previous
>         version.
> ---
<snip>
> diff --git a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> index 6a9d12dad5d9..ad0ecebb1b34 100644
> --- a/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> +++ b/drivers/net/ethernet/freescale/dpaa/dpaa_eth.c
> @@ -288,7 +288,7 @@ static int dpaa_stop(struct net_device *net_dev)
>  	return err;
>  }
>  
> -static void dpaa_tx_timeout(struct net_device *net_dev)
> +static void dpaa_tx_timeout(struct net_device *net_dev, int txqueue)

This needs to be unsigned int, otherwise there is a build error:

../drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2622:20: error: incompatible pointer types initializing 'void (*)(struct net_device *, unsigned int)' with an expression of type 'void (struct net_device *, int)' [-Werror,-Wincompatible-pointer-types]
        .ndo_tx_timeout = dpaa_tx_timeout,
                          ^~~~~~~~~~~~~~~
1 error generated.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209193440.GA15189%40ubuntu-m2-xlarge-x86.
