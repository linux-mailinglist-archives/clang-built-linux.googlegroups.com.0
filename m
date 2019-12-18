Return-Path: <clang-built-linux+bncBC2JZN6WSAHRBNUO47XQKGQEDFHJXAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B288C123F8F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 07:29:11 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id x199sf656234pfc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 22:29:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576650550; cv=pass;
        d=google.com; s=arc-20160816;
        b=Brf2+WXGMa7ihJ0Ml7NBiLFn6oMo/UJGdxpgWzi/DUvokRuugcWAMst3pDHjqlSnX4
         mqbk+/O2YHoEV+jSYkeTh1D2zYSsS2qIVRRD1DwU7dXovwO0lPGQHqrzsQ0D1bUpIYng
         9hVL+8MqsJna82aJ++Z+/7AuoJm6E9P2WS5ZMX0OiWjBQl0vDci3p2jB0yYWsfkal6Sz
         e/m7T8iM+AHQR121XTNasygGeoB18PQ3EAflKQTFS7tLtFKOie6kXg1mRBq5IOcW2w5V
         RrcI4bW2ZZ3NGxztaopj8iTSeXd0HxpcMy0C4vZOJpV4oAWwUKZc3xkZGeCcx39RSNE7
         uSEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2H0QhWYktk/1rP7pIieebxQUFRTfnU26Xe3TlEjh/Rk=;
        b=YVy/XFXlghw5Mi693C70fIwQu0GKp5b7+AaJ3va9T8sPULriMjvVhzpwe8Qq0TMApO
         wQJy1ale7DCxXPEek4EmxHKy/Ue+PeyZFmiE8z9USyVNxHW7TxnKOTfVbOl4zQR3Ehb4
         y1QLyw9QQ4ThFn59S1lsuG4zhAB5qm8KnVWvKvWd4RhbBTU3uVjTMoKygF9PQqbSOs0q
         GN6L152rSV9tl0sRzfAqkw9uA54oDb9qJaVYWCufZDC4uZ9IKVyq6AmpxSRZwjGQS+Ug
         2EigHxiqsZGjyXsbCimRxb4rZgpYOjdJcgm4xu1n2BKjA5VJfzWr/bUNYb4BFipXs6d4
         Lv0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NZAI8qdS;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2H0QhWYktk/1rP7pIieebxQUFRTfnU26Xe3TlEjh/Rk=;
        b=SpIpxujVqvVKhpAxh/6PtDUDDef2wqhoD76UK9foCvT2xC3w7ykBvbuu0GYPEIH+1L
         UWPHE/wDOXzf67YetDxKuslLZFitXsMZt0qvPCgpyri+G+t2us78UhVKOKFVM4xqZ+Fx
         RPcXcGB26e7YKOgqm2sy/O7l+ovQIWUdUXbx648l1j93bnENhu+pOBIJX9KnteHol4PH
         ddLERDvD+mRKSy9cRxtt7QfLvyFNIOVVz90cjXYTxrr80HavlrqMHN1s+ieVuVIdxrrZ
         2rcCtwLaGn4oB7zmmDmIT7Xw/2u1YqGwVXAxvEc1h23H8an9Y2aprGpPfb06+BQ2RxHM
         L7QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2H0QhWYktk/1rP7pIieebxQUFRTfnU26Xe3TlEjh/Rk=;
        b=OrfZe+deEcbdEqipzzikuGAj/f96cLhHIqXLmjcXwe1dzoQT4teiG4leFjH9F7A3U2
         taWUlD2K5TABQ5E4t+YoQS7ze4Ae3TfRpT5ro4fzo0Rh22E6J/e1K36X1YV6b8IwUW1v
         PGNR343bm2if5qoRsuBWwjqwLBckr/uwci0nGmWiB/RLxEBpUf1ZReL0ZXYQjEQMtK9j
         CGxC0/C1YcnWNNfjU7mWuYAKi/aeoWNUprq7y7HCA+MEFt9ZuOjAedMlY6o2zr9jj8W3
         QvtFxNbNT8avG/zCG6qoGaLr+wGdwT3aFRhPu0kNgYfjMtK9rk8iGPg/4TIPI92065Bs
         JSNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlVifVcQxMhp2cbzYYTRFC+nFP2Cwfi8TZrgiGnrUC+jX+YGgL
	/6/+TSMzpJ8Xvnzj6GGY37k=
X-Google-Smtp-Source: APXvYqzV1ZkuN/jzCWdIvU3whtPyB1NhqGilBF/x3ETCjGyQEfH3/IXoewDu+PDYI4Nb2x7uzCGQTQ==
X-Received: by 2002:a17:902:6b03:: with SMTP id o3mr886930plk.252.1576650550327;
        Tue, 17 Dec 2019 22:29:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b1d:: with SMTP id 29ls266221pgl.10.gmail; Tue, 17 Dec
 2019 22:29:09 -0800 (PST)
X-Received: by 2002:aa7:95a9:: with SMTP id a9mr1210700pfk.15.1576650549944;
        Tue, 17 Dec 2019 22:29:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576650549; cv=none;
        d=google.com; s=arc-20160816;
        b=NkaGPz1WRP9Qf0M/LgZA8QKEGg6XMf3xl10XgXXeESIHFohVoknBxEOHSakiuSYARC
         oAw6cn8RAoPu1S5Ku9+5iYOUiA7bOupCMxWb0Jant+LEl4PcmhZt76+MXk9dRTcTROnn
         1q5+UVoZoV887LjwxuLZoTODk7/JOU4DT9H62do55GQ4IaS0coNnXTHFgWsiVo2ECb2X
         J5MYA20mqEI6GuSlrVd6X/6iLhaeBO8LqAz3ErclS4U5P/xRw/YOIgxgEUlmcxYMxs/0
         rOggRAI8L1eoqqzwEexcRCy+mtW3Wkz1/F7EPcC+sAAcMJz84qbm9GQdbGxzh3ZdcT+J
         R7zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/by+L4g/+C5m3XNVzRHVEspKs3Iozq+e4I5ji8Ems7w=;
        b=s54o7MhK6iDTBfjn/8bC7Anz8BgWemK4bimuyZPcDS61yeSJYJJc56iuaKf9lmSw2y
         QXisJjGXRrguXNjsd1eMGJ7DL2YppovGf303ufmsDTg5mZUIxJxCVVo75/TvA+8oEv6g
         KabBAoGKYumCz5HLJ24Kq5+Qat6xNG9orSK0Gow35LMI5YTdoah5FMmhS/02OKkK2d6r
         NaxzqQQ1iAo9IjOoJPZIlO8/gL/Ny7szqpIikemqV/cxiidcV/oNkrdoWV59mdtBc/N3
         BN2sJJjwBCnvc/MD7irrprCyc5V7LigD969uBcQWv/Gaiqi0YaWeszIs7A/o3+sNHKZq
         wXOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=NZAI8qdS;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 17si14035pjb.2.2019.12.17.22.29.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 22:29:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id g6so522508plt.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 22:29:09 -0800 (PST)
X-Received: by 2002:a17:90a:a416:: with SMTP id y22mr878859pjp.114.1576650549590;
        Tue, 17 Dec 2019 22:29:09 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h9sm1328913pfo.139.2019.12.17.22.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 22:29:08 -0800 (PST)
Date: Tue, 17 Dec 2019 22:29:06 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] phy: qualcomm: Adjust indentation in read_poll_timeout
Message-ID: <20191218062906.GB3755841@builder>
References: <20191218013637.29123-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191218013637.29123-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=NZAI8qdS;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue 17 Dec 17:36 PST 2019, Nathan Chancellor wrote:

> Clang warns:
> 
> ../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:83:4: warning:
> misleading indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>                  usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
>                  ^
> ../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:80:3: note: previous
> statement is here
>                 if (readl_relaxed(addr) & mask)
>                 ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Fixes: 1de990d8a169 ("phy: qcom: Add driver for QCOM APQ8064 SATA PHY")
> Link: https://github.com/ClangBuiltLinux/linux/issues/816
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> index 42bc5150dd92..febe0aef68d4 100644
> --- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> +++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
> @@ -80,7 +80,7 @@ static int read_poll_timeout(void __iomem *addr, u32 mask)
>  		if (readl_relaxed(addr) & mask)
>  			return 0;
>  
> -		 usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
> +		usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
>  	} while (!time_after(jiffies, timeout));
>  
>  	return (readl_relaxed(addr) & mask) ? 0 : -ETIMEDOUT;
> -- 
> 2.24.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218062906.GB3755841%40builder.
