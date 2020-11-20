Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBD5I3T6QKGQEM47QHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0962B9F74
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 01:55:43 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id h29sf2744010wrb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 16:55:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605833743; cv=pass;
        d=google.com; s=arc-20160816;
        b=XR1ZBXeM2MyyiGYUX2hS0lcjaEQdhwGlyv915Q+jityQNM52gKohHFq4N0iinf0K40
         k/NJxRBTLVzOPm6aqWLAaj+1jVeq57bpLaQbkzOvM2EUb/dzC0ZvSQwrH+qHaiv4VDGP
         yhBR5EBQrgPecPzCpuNRgNjbedM8a3/LLhNFbESygoUsOHwF/EdoFwQu5+KGiH63TT+O
         NrtPP7h/M3gy2CfmKuuhxYQOfJBIpelNwSDKT1OChqPsxWg0s8IHltmGKMJOYwEbx3nV
         bykkJQK3jgq4SciuCTh8szxerHH8rr8q3dh1md3bZ31Cgzv56xOoqjKf+RBcFjPrwdoh
         0qbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=E8XHvQq6KG8KvcDWkCixBobRJevaXE4Yhx0gpgn9kRI=;
        b=rPS9MHZ3Or78Q79tZ+D5eFzG9FkuEvIItUULBuDwtOd70yZ9K1Ytcm68hyZBC1h4L6
         YSX+98odyb0zTGFB71a7SPo8TrHfzevHVWfL6jFR+fmXWer2VN+e4v4D6bfXD2GxZ6wL
         OMcqd01K1LHn3EdOZ2HdsfMoyqAzZ3JMl9lBR3u8mfFreg6JFjwr9DNlYrNthxz/9yye
         0VngMWK1KmeXtF34wBN2QWIfqRmH0c4si+UJygTU7lseSUrK4b6qhgDa+UAeYLe3JBVE
         rWOTEOq93s/XT7L0K3DLf/9JnrCShPlNRrYR6QoPyNB6HBZ+0H6FTULam2JTv1vQlKpI
         jPpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E8XHvQq6KG8KvcDWkCixBobRJevaXE4Yhx0gpgn9kRI=;
        b=jA6aA9U5Q0KgREkwJH8fAsztqZgSEsoxDugOgZVTTptViEGk9yr6dYUxxm2u9bFIgm
         ajQjG1Tdb+QRXIQ/jTkxtg20PU/Za1D3R3FICuwMvUP2pXkMSfp+N0Ug4s9uvG0B6nfl
         LL3kp1ZDbXKl+kYYj/PD5LxlL2G383pCLTaOu1M1qvpHPuO8jtVDIIvL/ahGUsuwiSP+
         cbYwnzLn8J+1LzSwvvDs1crxjSCgNDoV8RjOIFyNlNUSgWAOFGlI3Rjd1vTtMMOU7N92
         emq4TTHiRjViXBP0KEsmD8ATAi5AMYlMgYwmLpMcfTMSz5K/a3AOYfheHUZ0o4ZZBN3y
         8eOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E8XHvQq6KG8KvcDWkCixBobRJevaXE4Yhx0gpgn9kRI=;
        b=d60YiBnzSuFsKzVgtaNhX2+6ov0hCFV+MF29QEj6rnZmttvTwAcyxWoii0sqI7X0ff
         H7fZHfzeTEztnGDd6cSLcDF77vwpiXU5nrZslfb8J1cJUu/jPp9F58Yhyl0joQ11L6lA
         GZ6U6S1vPPMKodyhHkf8SaRbD4cyG0QBynjpn4dwiK5MojDUCU0M0kZvSz8kRIXSxW3i
         PZ5jENSKNHP+y9Tb/vM1uKeuTiVZgpxTLfxnCURhtx8TU9fG2pyUrhT5vc6NAwo3ix8s
         lps/VhZNQU1VuvRrZ8W8j3og3E+tbrb0HJ61bmBg0w/ZYKdNAlEqe5JtWUlpUOI608mf
         vTjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53359FfwBX+oxvq3nn67NBIhbNL+l+8eLn0bNFj2z2gmmVPPy1wS
	/GIi7PIxH3DnfPj0KO6QLDw=
X-Google-Smtp-Source: ABdhPJz51KqucZNgQs8mgqlrUVbhUQuZEq9Izcm6g68YKqiaXb4TbSEHFVyNrfPQsZ7ewH6k2QlTng==
X-Received: by 2002:adf:f208:: with SMTP id p8mr13586300wro.280.1605833743585;
        Thu, 19 Nov 2020 16:55:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:67c6:: with SMTP id b189ls2476660wmc.1.gmail; Thu, 19
 Nov 2020 16:55:42 -0800 (PST)
X-Received: by 2002:a1c:3d6:: with SMTP id 205mr7407063wmd.85.1605833742615;
        Thu, 19 Nov 2020 16:55:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605833742; cv=none;
        d=google.com; s=arc-20160816;
        b=zQkt1ZGlYLB7OaOf4ZPd71PFoLJNzceo4nC0WHyI80J7CmY58pxTSfpxAWds48X8MK
         CgaroCpnIyJBJdZiS90mx5eIIsrlXxIUMSSAsiExWdKIgIgFFRJ7fZf8j8VORt8HsQxy
         aSdGHM05fUj2ZVamAI7H/6+LcFLKvhABt7+73ng3x112vJhP4RN61oTZqeUKGqkwfXr3
         4psffj2gB2J6AcNomTipS502Zf9RGPbJl0ZRnBrDR0/YVhWGj71rsRe6GjUeZG/in3ou
         b/FNe/CqvyH2MDIuyNYUs1D0UNx97FJXXF9eWR9LUqC0ICQozrVhcz79jPfT9vxoSqI2
         eAQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/EAmigTGLjmYRG707nn5ARTdnaIf5rtIfN5MHC+2tbk=;
        b=m/50MHnwl+6rl6aUfASANPB9ObUOaIf2Uc1gC7Cx3XjYoiasDIA9gD+DDorkSFuiEh
         Y+bR5Wa9LuY0tFHsqwItWTePqnuNv+ilu0QPqq5NuTIABPIMZwCQuNtO6pHo4CYOm/vR
         SanGxYGF7w2xROtS4cWsZTVToutj1j7O1vHhmHeIdaYXarL2QzNVyeudw5QAL3COwXG4
         32FAkH5f2yfSScc+e1NTkkJXMqeZ/9VFDVgtHnaHIXmyloXip3lm+vjmYXtxEjJ9CABc
         aaetL1OIb74fFi6cYkXMWDRrP0hocqtXJBAjiPD47PeDTGoM9nxrZElESnoDZwYcsa0h
         kWrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id z17si41638wrh.2.2020.11.19.16.55.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 16:55:42 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kfuiA-0082O4-8i; Fri, 20 Nov 2020 01:55:38 +0100
Date: Fri, 20 Nov 2020 01:55:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: lkp@intel.com, ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com, davem@davemloft.net,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v10 2/4] net: phy: Add 5GBASER interface mode
Message-ID: <20201120005538.GY1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
 <ce2bdff4ef9a98e47d93b3e183327f16acf05768.1605830552.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ce2bdff4ef9a98e47d93b3e183327f16acf05768.1605830552.git.pavana.sharma@digi.com>
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

On Fri, Nov 20, 2020 at 10:25:33AM +1000, Pavana Sharma wrote:
> Add 5GBASE-R phy interface mode
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
> ---
>  include/linux/phy.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index eb3cb1a98b45..71e280059ec5 100644
> --- a/include/linux/phy.h
> +++ b/include/linux/phy.h
> @@ -106,6 +106,7 @@ extern const int phy_10gbit_features_array[1];
>   * @PHY_INTERFACE_MODE_TRGMII: Turbo RGMII
>   * @PHY_INTERFACE_MODE_1000BASEX: 1000 BaseX
>   * @PHY_INTERFACE_MODE_2500BASEX: 2500 BaseX
> + * @PHY_INTERFACE_MODE_5GBASER: 5G BaseR
>   * @PHY_INTERFACE_MODE_RXAUI: Reduced XAUI
>   * @PHY_INTERFACE_MODE_XAUI: 10 Gigabit Attachment Unit Interface
>   * @PHY_INTERFACE_MODE_10GBASER: 10G BaseR
> @@ -137,6 +138,8 @@ typedef enum {
>  	PHY_INTERFACE_MODE_TRGMII,
>  	PHY_INTERFACE_MODE_1000BASEX,
>  	PHY_INTERFACE_MODE_2500BASEX,
> +	/* 5GBASE-R mode */
> +	PHY_INTERFACE_MODE_5GBASER,


Again, what is the value of the comment? 10GBASE-R has a comment
because it is different from the rest, XFI and SFI caused a of
discussion, and it was used wrong. But there does not seem to be
anything special for 5GBASE-R.

	 Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120005538.GY1804098%40lunn.ch.
