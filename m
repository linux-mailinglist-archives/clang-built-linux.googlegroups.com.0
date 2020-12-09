Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBBFVYX7AKGQESX6ICOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A42D4E95
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:15:17 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id i3sf2818680ljj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 15:15:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607555717; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNBj4ZMe6XMl5O2gYO524jmQbiyXwhjCem724t08e9oULR2LiQJZQ3+taOWQZFuk9B
         3NeEGlPCvM583vNsIWnANbXMXkoMQfdMz88GxVYv0vGz9CWTGyLeMkAyh72tj+5wlt2i
         Q7fy4Hc5kHOb8Npxtsj9rrEsgf0lDq1q8YfQz41SxHBx+kew+a1edKa3YVcvrP79ZkqG
         qRMofR+lcCtXPylwQA+5NCnVLFlPPiKHnM8YoQbLdcwvSAyCjHaBEqIHHymKxImHgqNp
         yRxcCA0zJdx/x6xVlkv0orajkhpIQ6yKddFnKwUylc6WSd34Nj2YTB/wIh2b4bP+0HfJ
         pcXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RrFKBRVUBVQpCxkwPYpBl2HFEhZDQ9Nw1xHXPdBllZU=;
        b=akNes0PNQ4rgGv35Dz1H0WU2Ix0C4Bwl0LlZyOXy1XGCTtogMVcxpzZUYk0/bKqiMg
         GL8vJIcUHk7/Nk8/IvWYr8z3I6IJMxgPbUmR3j31b9HG9khuPLBSfvoHbP+RqaS2yCP6
         SRyzY7f90Ojq4NglKpoMH5Mgd1NBsjxi+DFbbJvqjPnmjQYIBy7M8RRxK9GneS07B+IX
         TmdPh2l1z8+H8AJY+f1LZuy5rQfEzPbjoeQV7q/i2Y8T0EwrhTZsfsGZR47Z/C+FWP84
         IUhKaouOcKJeXdP/LWSvOAGdpZwLKta9seWfzgDJraFXG9wJmNhE4cQMpndH1BVopqBh
         DbpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RrFKBRVUBVQpCxkwPYpBl2HFEhZDQ9Nw1xHXPdBllZU=;
        b=gnlLY0JbaCWCOaNAuYBWayCWDQYZepR4l1XUqOqct3Tf8nefcP9PWz0B4zP80YVu6r
         FxgorfZsvw144WCR/WLkch+uSwToW/WqmVLcGPMIdYjWNcGFKECVO56yvq3untg6aBdb
         3xCH4+PU9klxoH7bHU0QKppMCFNNF/PJ3Wb1s+yVj3FOw45VAsYuEYGaJ76oY4AIvm+l
         T+kVSeg617+DIAYV9n0oTbzkK02HMPkKU6SkFOWjsG6Q5GwzAGAPlCGhRfb0rxHCHtId
         Af1OARgz+uPKya8ezTy9/+Rq7zuViFMXn43U60/flei2d42KPURSQPawHkcQcvPB0G2i
         nFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RrFKBRVUBVQpCxkwPYpBl2HFEhZDQ9Nw1xHXPdBllZU=;
        b=aDvVIx36KzyH9tFdS8J5GfShlitjiG1/PTx+nYQo0EKLcI96KxYuj98bHAv2GhiuJl
         2quj7jCrdRrM2s6LMkpGCrPzYpNZDCbp0JKo2kDlQCLNdsNz3RqsTcrBEOBuUCGtzFus
         A0fO12Ghmkp02qOXXt115IH2D7DpuSeiS8Tu0QTgq/2MLT5dVN5sWZK5jcCcN7ZC5nbx
         /NhnWHVA9xU5UDK8LT2Sh5uhI0sWJza28sQuIUHukd9NIgy55Ms0hpCA9376y9VVHq4E
         6SuAjbLHbeQelStG5TCxsc/k192ypYVECC/ryJn0jApcRoIsJHK4qzsZLp/Oek2yJmaZ
         lRaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eKc4uF7hyDeDNtLzjl4wILl3B/tB30ESqt/wueVdadqWQH1ST
	4JGmV/LpmdTBz/zLMLyu5ec=
X-Google-Smtp-Source: ABdhPJzzQ99HRJzW4UiQVxYBu1f7xxwl6Nx0U/P/TG7W/dWCYccWtgCSCyU8AXAvbzjLrHz3onzDoQ==
X-Received: by 2002:a19:384d:: with SMTP id d13mr1800857lfj.548.1607555716981;
        Wed, 09 Dec 2020 15:15:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls552431lff.1.gmail; Wed, 09 Dec
 2020 15:15:15 -0800 (PST)
X-Received: by 2002:a05:6512:306:: with SMTP id t6mr1574441lfp.576.1607555715829;
        Wed, 09 Dec 2020 15:15:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607555715; cv=none;
        d=google.com; s=arc-20160816;
        b=G+0F3sCYe5l6ro05LPRUM5XAOsskiNLiXKCZ2ZcFhRiudnoPyKDzwmAhFOTyu/N4Gc
         geecRQWwVBDgSfiiLdQ0PpIFNgipZfWRs1OSYxevJ+oxc2e879nbwLiRfwFgbINmTgd6
         UNapgmBnc0uymC6zJThzg+E6JgYXYR7IeIskfJppREiDDDoNE/3I63uK7/cx1wF5P9gX
         TASWAQL6dJ3xXJqzUIiW3Xcls7wiLi0cXYrlhhhZj6GH2jfrHyr8hOV1ycQOa1gKKXPl
         n2uKasOW8GyxaMKdo1idB+UF+tDHFEYal5OWpaWW6uWbabPkcPaH/wz0NJLvOymDjX+/
         sQlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=aJD+h7ro3UMi9H0+p05Na7rO3g8A7j4v8TKXHMm7qy8=;
        b=01gpGIISvJ6VwC7nx8u/XgXQg66Sefc1cXC8hU+njjJj/iFYwBrCzaH7DqKR6RJ3Wh
         +GUcihA4ReSCTosSplYr5cOsA1JcLLCocWuAKdJZcp7NkANzWvJk8wHKLM3A3jaMf5Hc
         r+i6or2lOODyYcJOiZhOhyS09yjGJFjZ8lneuQqxLyv32T8YcBpf8KmxZayzaI+U3Xv4
         CG1Rcr6pibnUZu4nRWHLxQazJRWLQ6qm+19pM96H9IXGr5WVGRJGopUDfRetIAJboj74
         owoWKu+Vc9FiJcrfCr2lDH66KI3e6G8Bb2BsXzBFWJHDh/maGS6S0nf32AUVGCwqEylU
         r4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id d3si117374ljj.4.2020.12.09.15.15.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 15:15:15 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kn8fw-00B8L0-3O; Thu, 10 Dec 2020 00:15:12 +0100
Date: Thu, 10 Dec 2020 00:15:12 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
	davem@davemloft.net, devicetree@vger.kernel.org,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, lkp@intel.com, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: Re: [PATCH v11 1/4] dt-bindings: net: Add 5GBASER phy interface mode
Message-ID: <20201209231512.GF2649111@lunn.ch>
References: <cover.1607488953.git.pavana.sharma@digi.com>
 <0537d23a6178c8507f3fda2ab8e0140b6117ef74.1607488953.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0537d23a6178c8507f3fda2ab8e0140b6117ef74.1607488953.git.pavana.sharma@digi.com>
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

On Wed, Dec 09, 2020 at 03:03:47PM +1000, Pavana Sharma wrote:
> Add 5gbase-r PHY interface mode.
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> index fdf709817218..aa6ae7851de9 100644
> --- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> +++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> @@ -89,6 +89,8 @@ properties:
>        - trgmii
>        - 1000base-x
>        - 2500base-x
> +      # 5GBASE-R
> +      - 5gbase-r
>        - rxaui
>        - xaui

Hi Pavana

For v10 i said:

> What value does the comment add?

I don't remember you replying. Why is 5gbase-r special and it needs a
comment, saying the same thing in CAPS LETTERS? What value is there in
the CAPS LETTERS string?

Thanks
	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209231512.GF2649111%40lunn.ch.
