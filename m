Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXEOQ7WAKGQEWISJHOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FDCB5B73
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 07:57:50 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id v15sf20716ybs.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 22:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568786269; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWuxsoT4L7TR3fKMxSNWhJY6UEn1H+nkrpKM1RgwVAUVIrU+97m6uKJujMqFWxlXt1
         1Ug3FyQtLtYwvVyIi0tyLETnueRM7NQpVgDUxkiSe6AAqg1Uj8odnUo3TutEwAM8RYiS
         GwCAj3GLRQBTVVXlcZbwKmAWG0lT9WLbOcOkCtqD1pBgVKVe5XHH/Nxp1OQb4NiEKUZe
         j7OmaHHBAr5RtwVEO7KsUsBabKDMqHRt/qgGe9mWYdY76cAhUoy4F22v1JRXM0eBfVj+
         ByyC6fwYsooT6MK5Mp4MVBzb1WVT7/9lFBfe01ELC5l6MzOvdFOZ7PUXdKbodEMcIeuL
         6+Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=K/lyt/GKQBZj2Ml1F7rP99iGQ2A+3MzkVqw2wGvL0DQ=;
        b=X+DIudD8ZQUsVemuCjeT5PuNztsNFXr8VIjP+xaFuRG4GVrAOfT25YKOglXSDusnPR
         iq4NMAYwvdz/iC85LnUFNzAskTASVQgiCItfUejRUAk71PLbbpmIY1RJYSEFG/aF2hcA
         VTalz1xXsqWq4hi9D0OrMo0aMBuZGzt41WIPieCZVIBqE+RfXik4ByMSx8cRJh67DrsS
         gLmyLBjrRIqmRcAbSEnKY4TvW0cI0O6SJ2sZ1rYQoQmNXrFhJCbGZmaUmEBuFOvKPXlB
         6S2BpX9Wh6aAyaF79SijJGirhH+Hza5U4SSeJOssPbbNsWrb/W4xFqdEL5HITD+YpKc/
         Ec+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tpT5yJrv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K/lyt/GKQBZj2Ml1F7rP99iGQ2A+3MzkVqw2wGvL0DQ=;
        b=V9ncXFg4tm2iIaz5zmg/fUOR1+L7FwCgOgAHRyQXA0jjt49X2z3PoR8R8l40e8KW30
         SVdGJjDD+2ji7F6lprU8p6cm7K/GAVQFzn0re/UdE8x+29BKYBOgJxg8CnEN/ids+wm1
         CBSx7YPggoU4880BxpY//OiLf90YahG7MBzlet+9q91+qJsvQfzMNq2yVovWsaLcg/al
         X0pQNzxYnFggLTh1gfBm0EcvcSVd2Y1eLPbnXBWq5mImDC97vn5y+EK0LbJ25TjPI+Mn
         hKfZ8O6y8hSUW5oaoO8vUIt8JUmwLUF7Jl2GxcihRCjydiBZLTcMmGwVUeAvAeAvznEJ
         ieyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K/lyt/GKQBZj2Ml1F7rP99iGQ2A+3MzkVqw2wGvL0DQ=;
        b=pQMppm4nUKydC8Jl+yLPXiLxsJf3H0zWUptSn2qlQZWfKm/bqXGmGjN3SAmMR5ZtFK
         Ym7x1xgyDTsfnfz5IFFRKMrAfsj1nYRRTiAn43uu1PBJUY9/3WXNigKrli17BXo9gFpD
         X84lXkOQXHDRkxcmGhipBMq8O7rTwmzqKgJhsFJWu25CiTxnoBTXvqTPy2llyFoGrmFO
         22LdmY/Z4lPBkxJsCDZdbHlCNDhimQfC9eM4BO5e8Cd04pJCwNcAaI6WxgICojTee+uW
         1ubb+kaFiVfXIwcQi3vAngI4dMlryWVS+lbRzk4uBECdxgf8QPf5cc1ZgdwFNZ4ecx7B
         uJoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgeBUIQNaDzptwjMD/SsET4wduMrk8M2lKflbQzP0XxzhN9o7F
	ltt8ck3gKtUDRIABIMO9gXQ=
X-Google-Smtp-Source: APXvYqyIJ+xnQ4G1QQ2ECK4sI7P/AN7GZNDZI1Ngcx4SI5r9tUD+xq7g/gU0hWWAmIt0252Nt/hItA==
X-Received: by 2002:a25:3c86:: with SMTP id j128mr1438746yba.225.1568786268863;
        Tue, 17 Sep 2019 22:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:148a:: with SMTP id 132ls1004415ywu.16.gmail; Tue, 17
 Sep 2019 22:57:48 -0700 (PDT)
X-Received: by 2002:a81:9b17:: with SMTP id s23mr1864719ywg.497.1568786268543;
        Tue, 17 Sep 2019 22:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568786268; cv=none;
        d=google.com; s=arc-20160816;
        b=dcdMf9izLtUp8SzMcCYI01EJCQNF3EPqMEdYjduLCmVo7Vv9CHGaz3kSE4zyNt+ilN
         hRWrh3mmusdAO0f90Bn6ZsL/Q5Di2wWxPa6R3aKeQ2miDNpzLKIYyMIckHognPFWkRHu
         4b20Q03IfQMgtqmtVW6NLvSvXOF+tUlwbr62vVgMVOsm8uw4c0IyM0q3/2/3LaFJYyjr
         Yk0AEIbvErkkC+lTalMELZM9a0AuLxJ8hKJv5oeaaqCBCdDV3a9Sv+c813H4NEDr8q4w
         7ygPNl8ZdDERWlPofeAFP5YFrju5DuUR4btq0gehMcEW4M48g/HdIZjoW9ElTpMycc+x
         3mww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aJGEnxh6YjizuNMdI5MfbhUJ0ypj3q5dDyazkWhLe9g=;
        b=PK1rZKw1MB8Qc87uVFfXbbfTMT+CpbYEDaLPc1otYZwjZC60yN9XZO7qn9ztc0GYhM
         y6/NmMcxajd6hz89MXtwavs+GvE1+Ihz4lqExKYpKNoq12Il8J0O1RDcRM0pqhZtQr6V
         RlamCak9eW0z7WxwhiV3DzMNs9JaY72zhbUYyArHl4CrbyHdeFXTTZQQWxHYC+lCa+WN
         7cs4/eVF3gpoznr6IYx1rcuYDyCM/Mtqr8Jd2P7nUAF/Cg8oD8JY5VzlHjS5eAGp42bB
         hisz3Mf01H8JHJn6VNqpY5fNBUbWChVAhh2fXRHshKDeBFHBlck65YIscrQNCYvzftJ6
         cmhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tpT5yJrv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g203si122699ywc.5.2019.09.17.22.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 22:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E8207214AF;
	Wed, 18 Sep 2019 05:57:46 +0000 (UTC)
Date: Wed, 18 Sep 2019 07:57:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Shannon Nelson <snelson@pensando.io>,
	Pensando Drivers <drivers@pensando.io>,
	"David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ionic: Remove unnecessary ternary operator in
 ionic_debugfs_add_ident
Message-ID: <20190918055745.GB1830901@kroah.com>
References: <20190917232616.125261-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190917232616.125261-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tpT5yJrv;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Sep 17, 2019 at 04:26:16PM -0700, Nathan Chancellor wrote:
> clang warns:
> 
> ../drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: warning:
> expression result unused [-Wunused-value]
>                             ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
>                                                          ^~~~~~~~~~~
> 1 warning generated.
> 
> The return value of debugfs_create_file does not need to be checked [1]
> and the function returns void so get rid of the ternary operator, it is
> unnecessary.
> 
> [1]: https://lore.kernel.org/linux-mm/20150815160730.GB25186@kroah.com/
> 
> Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
> Link: https://github.com/ClangBuiltLinux/linux/issues/658
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918055745.GB1830901%40kroah.com.
