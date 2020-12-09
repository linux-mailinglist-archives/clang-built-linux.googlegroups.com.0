Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBNVWYX7AKGQEONZKDTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id A930C2D4EA4
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:18:14 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id d2sf2839308lji.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 15:18:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607555894; cv=pass;
        d=google.com; s=arc-20160816;
        b=b1CGoGtzS47My256qcG0Bf2yc3hy7MwmftiCm0Y5kLZPC/cSuc6X34/oVUbPQ6RuZj
         il7M0EBb+jCD007lTj9vEphKGy0k9adPyWmDp77iOLZEoWpOSJZexbB8l8GZvliIDNO3
         kz/DOZJSDauEV4plORsNa7hF3shTz6Y/hYFYopKzwfS5L9HrKTsd7VV7A5Z89axt0dBN
         nBdClGg67NrYXYusAOFnUMChpfvsJhO44SyKTio2o+N8ESpkF2eAwMcfSKb+TeQSGEPm
         WDsoFZjVCorVDSwAzcXIvmkd3FSb2VXMTiIPlB2xr8W6nbhgdB8bWaC7YH43pHQT+jjr
         sR2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cGvEgVpK1fLLRFu8+sH69sAifObOgAMSxRPFCuAmIfY=;
        b=BGj9sfCpl4jjbbgrI1/onh3b/rSsn6zR2i1VNZAs6nQPLdYtgBWgggnF7eKmwA1i43
         YsaJVks8nhHRZdSr5qvnnnW413cD7LUUDj3zrmcymLZWLy/mf+tUNYla9jdKLdyUa2Ti
         KTvbjMSCtyzHfo5fX4LDpGdd2Q1r2sS9/3VCN+X/21qxxGrsVAxnQuE2LYprjx+N5PE2
         2qyXdkH65spYRvtkDAoHxHEjwfp85PSg27sZuWaS6nuNmFyzGFf8KAjAfuKMRR2mtXC+
         DhqGzrZJJs1S7jyF+TJ4dU7+cyFBb2O6hz/ERhDJ23FPAymXTkPqzcq+55KClEvf9uiw
         aBlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cGvEgVpK1fLLRFu8+sH69sAifObOgAMSxRPFCuAmIfY=;
        b=Rc5T2vykOO3a7UbOCswOUdRChuKw1Uq5kb7eHhYdHuopxCwoBVxRCId3l655CPXEpI
         rU6m/QNEdqC7O8LVr0S4qBGlfOwiczkzgUMK0xy/PskGB43aStFKn+ksxKbKs3qAX8uw
         IVoGxGZlxPz57C6jKMmCw265QOCOhf7JBEDn4L3ceED0VPdcfY1pPEPMydhPIyC1SFCF
         B6eloN1EjLfKDDLkTRGyKtABscfT/cSZ2wKArR8eHw8G7ZWbVYckvHFA7OFG8nStkOPP
         ji1dbrnFH9q2st5EycV0FP4HGGqblZaGHxZsEqBsv8FXEdVt/m0rioZOqSs0Ggj2SkUe
         zvwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cGvEgVpK1fLLRFu8+sH69sAifObOgAMSxRPFCuAmIfY=;
        b=KWYNtN6iNmZE0u2jo5F8u0KZnD2HI2H09vCi8+V3cN70M4GcvKnKElhuluvDLxKqY1
         rOCGfFA16u/dVdPoA7Zx84t2Yya7Jf1HbSO3Qiq+a5ErPghagiptppALHToQVq5aHnnJ
         fu0qOvPikJc9JDrNIBlrf/e6uLiDrlk4zgR3peKPR6o/p3/7qF4bFY6OzObU1rqpK0IF
         mDlYsrM5n2TmMxD4bppY6J+31UBxC86zLkICZYPAHWS+STNfVdDzaSekFI/TCKclt2Ec
         ziJaBL6Bw5Uo2MxLo37Pjn81h0PWNRpP/jUxv454drwuPYq9UEMTEoZEl8yknV271fSj
         8Vwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WgHpHI4dvn/c1KVcPMDaYvFG7g0+er4KwLbNzcptSfMDwkoiC
	LyoHhKo46AhupLkZOaxdNY4=
X-Google-Smtp-Source: ABdhPJxkHn7wTny+2ieGnn0YxutuSE6BkO3g7klJhAjcP1cZzTSzZDPHzfpaV0YbNEivdh77ZQLNlA==
X-Received: by 2002:a2e:b538:: with SMTP id z24mr2110862ljm.478.1607555894248;
        Wed, 09 Dec 2020 15:18:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2ac6:: with SMTP id q189ls639057ljq.9.gmail; Wed, 09 Dec
 2020 15:18:13 -0800 (PST)
X-Received: by 2002:a2e:b012:: with SMTP id y18mr1878729ljk.396.1607555893127;
        Wed, 09 Dec 2020 15:18:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607555893; cv=none;
        d=google.com; s=arc-20160816;
        b=UAny71/GBgaRj57FDRHPifHM7Dia5Hk8Ce/YIu3cvXBFC+uL/IVOyxbupCGAAW1tx9
         vSju1HyBKKfVG4M62pxikZ0DfgqBxHiQjRlsOulOtE3yVQUBFuAlLLSjcK/PLnvvwcCO
         IY5lcQn5T36hG+g5IqmPINLLK8MUPhpfcXQkaxX49nTDM4camKWocEPeAsWG4Jt7DJr4
         XbPPNWScJDpZv4U6re7UgPyW4me8jrEw2v6XAIOZ/VvC8dl550OFO/e9FPzF90agilN4
         p+bERs4QdvKJ83kFntlGcTJY70VMxrOWPWFS99cJP9y4ra5n6WmtzKN9Vd28pL+2GKHL
         hr9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=qQuGxz1uT6s0QU0jOSFyTOOeUfVcUyS/7fTqoMv2iwY=;
        b=lFaXTkh3GL4T69M6H31BKL3EPQGc2Yf7PCaBvvoT/7w9dCAgdDpMsuhODRc8kerBRs
         35/8U2SIiRPun41wMWpC5PbjZNkZTYtnjr0Gk3IoYxjc+29oe+SEiU5VU9u5hNLt/f9E
         hIaWrq5exZdIOuswjXBq2GrRWRDTPZHOjSZF25tNIJRPQaLJetHaAOifOvV8cDuhU93Y
         06HFGCH+jHjH+FqB0DHgRAogQsoOAfk719pbDDK6iF+QcFzOPHe+SIZJHSFgdywSfTE7
         2DXjLGIL0dduk055yqP8a+dJ1NfKYSNeYfRPx8R/M7SP+LV0Pa9GGPIufq0rHFtSHNoA
         +hyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id f5si125131ljc.0.2020.12.09.15.18.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 15:18:13 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kn8iq-00B8MX-Mf; Thu, 10 Dec 2020 00:18:12 +0100
Date: Thu, 10 Dec 2020 00:18:12 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: ashkan.boldaji@digi.com, clang-built-linux@googlegroups.com,
	davem@davemloft.net, devicetree@vger.kernel.org,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, lkp@intel.com, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: Re: [PATCH v11 2/4] net: phy: Add 5GBASER interface mode
Message-ID: <20201209231812.GG2649111@lunn.ch>
References: <cover.1607488953.git.pavana.sharma@digi.com>
 <7d0e7609149c4e9c3295eff3323fdea92a4abc89.1607488953.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7d0e7609149c4e9c3295eff3323fdea92a4abc89.1607488953.git.pavana.sharma@digi.com>
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

On Wed, Dec 09, 2020 at 03:04:23PM +1000, Pavana Sharma wrote:
> Add 5GBASE-R phy interface mode
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
> ---
>  include/linux/phy.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/linux/phy.h b/include/linux/phy.h
> index 56563e5e0dc7..8151e6ecf1b9 100644
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
>  	PHY_INTERFACE_MODE_RXAUI,
>  	PHY_INTERFACE_MODE_XAUI,

For v10 i said:

> Again, what is the value of the comment? 10GBASE-R has a comment
> because it is different from the rest, XFI and SFI caused a of
> discussion, and it was used wrong. But there does not seem to be
> anything special for 5GBASE-R.

Please don't ignore comments. If you don't understand, please ask. If
you think the comments are wrong, please explain why, so we can
discuss it.

	Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201209231812.GG2649111%40lunn.ch.
