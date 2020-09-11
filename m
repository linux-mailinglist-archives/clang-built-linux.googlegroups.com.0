Return-Path: <clang-built-linux+bncBCSPV64IYUKBBBU2575AKGQELHDCZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f63.google.com (mail-lf1-f63.google.com [209.85.167.63])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB6426689B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 21:16:23 +0200 (CEST)
Received: by mail-lf1-f63.google.com with SMTP id w22sf919877lfl.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 12:16:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599851783; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUdY8BQYWfcHDFMDrIYzFwfzQDUkeHCGOYF+x0+cp0xnZ13+4BjkUicNd4qW6rmPP4
         Ghr/UU+e6Cg5Gtb2EppXe09fi3S5ELXBG8cJB+nDg18qEQbfDYUWqyUuGMqeKWv6B3T3
         5jYb63eoNrxoVcltJUc24Hg+dghC33ozbcILKb/YPaN5lemaufsYpdakx2RTMJLFyfyl
         AbxWm1CeuKXJLh4U74aDh/gTzCmDzUa/GuzuG+nGTU3qRxFvSC8cmyDmgdsQ9u60s6k2
         UrwDcKj/WVv12YYNvdteZFwvqwcyt+QNWF0TrzzLldxLxtU3TZQAHimN4MQprfyufRPg
         gtLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=pNGM4ebkb7f6O8Yh7qlUcTk3YsubyuAr07F+NNwzStY=;
        b=v9lJorTWe7h1bGeHNdVUp3yWdhDsPyQTAiOIHpur+H8IJM1KibRiKh/vzKwiQAKAPl
         FAlhVTJjWSeui1h/E/SNK1t/qvVlmWjA9rPdrEIo2KqlZ6EQjvg4+bERvGdcKFN6HQs+
         vtB0Ikme1HrwIiliRS+ISB0wCI6/Rf8QfiAWSVNrl3urLO6S40QELnQAyUAa3mvXhcCm
         d+v+8eECkOLgMdTWWgnC9XxNFTsNpOjvx7G+Z6foOOXj50pavoK8ORn8zmPSZNKd4XxZ
         dRm2Lpe+bASu93chEoofjkzrKrVV0jbZ9407JulJkDbrF4V5xsNA8stzoSq1EeaFv+EP
         fzKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dcbfvu40;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pNGM4ebkb7f6O8Yh7qlUcTk3YsubyuAr07F+NNwzStY=;
        b=a7Ej2q4AcJtF/KKuJpbsxIyCsVscWzZU1EDk32ZBBPvtC+0smQXXGWFcDIqxANLrfx
         jplG1NGQ0YL6Ygxnte7vLrcXn4b3SvpPgDz/0F8DkTFw5CQFVN7NkYowRQ1uxaSMsyJU
         EKl0AO3ejWr2REj19eZWCbme37pJoVFkQirdT+Fw2TvIhRj3a9NygK2wWSn0ESEG3b4s
         FDSv2y3cgtfZQIRihOWKFNb4y83Fz42wXIlAEDZsnxjA0RwQc2j7nrLYBdpZIIcMuMt8
         Bj4G6GHiaoyK/3pQ4WBdbxeURpWTwp8Vo0qXqhguNhu0bqM/ghTShd4a+3VSE2nj0dZN
         hqlQ==
X-Gm-Message-State: AOAM530p2xfmvjjlN19bN5Q5PumATEB4TQLZLBOSip8l72Kl9gt+7spX
	odQD40aOSCn/EwOYneRl52k=
X-Google-Smtp-Source: ABdhPJy5immsnlV7y4veYQNeJIPS1GbiNY2WXw++uNUrM+aDL+pPCVBK6O3uex9Pl/5G9/6S+WGrag==
X-Received: by 2002:a2e:9992:: with SMTP id w18mr1370274lji.301.1599851783230;
        Fri, 11 Sep 2020 12:16:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls491360lff.0.gmail; Fri, 11 Sep
 2020 12:16:22 -0700 (PDT)
X-Received: by 2002:ac2:5f50:: with SMTP id 16mr800069lfz.533.1599851782194;
        Fri, 11 Sep 2020 12:16:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599851782; cv=none;
        d=google.com; s=arc-20160816;
        b=xRwfw75VGr/D4g3Zn3orQ1m8dikg1FNIyBKVEs/xR/MpAflkWF/nnj+P2k+hdiNAj6
         mmWUirRMdUwdFfdEbxPsW6O4zhYc4TWGcDxzh9wBEyabO0nLIvcJt+YlcXBNYPL0lMUC
         dVHvZWe7w6npA3kcvMYuzb66JXie8nzklBrR2gqNh4yfDufShuihRM6iaYgwIqNCIzYT
         yNMIPlVmjzhY4/2CmfnFBzcyHw5k12SjKSGyNWAyT3IjffrRC5ZA1CGiiQLXr0rps8i/
         z0DN28zmG2/eyAEfQHFLxZ5rxr2YXXC64euVea0RL7w8Of9Eg3U6xZ50R4VG73NDDQvY
         P69w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=MSOm+YhchPha/Ywmk8Mz5tDd4CRt8uyIKrb/F7L6VkQ=;
        b=Hg+cJAS7bogdYQazgVXGaAJ9A5nWpVl36JpUGDvSa5Hb/Yi/RH641mNTak0Co/be9a
         e/XUyrwgnUCOGkIR+gfMeW0TAHk9vpFSS0ratAwk5tVQOrkkk8F3rFl9be9VfnmDW9SR
         m7q4TZcXX057gBv51K/lEnRDh298u57hEaDNC81Jd8Aa43mRN0XM9jNGfBUQCxeMV4z+
         kioXpTaWOtKLIlM1pdU6q/lZROA+3Rp2P6T+H0xKftbS7AU7rJOVVzv/rgeERRmWE6bn
         WUGJdNai7E6v66NNJVFPIuZCONCp6p9GvBwpc168zqW09aEkxOooUkuccwaecbcm0Bl4
         zpyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dcbfvu40;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id f12si127724lfs.1.2020.09.11.12.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 12:16:21 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33022)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kGoWt-0007qX-2c; Fri, 11 Sep 2020 20:16:15 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kGoWq-0008R2-Fy; Fri, 11 Sep 2020 20:16:12 +0100
Date: Fri, 11 Sep 2020 20:16:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>,
	andrew@lunn.ch, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: mvpp2: Initialize link in
 mvpp2_isr_handle_{xlg,gmac_internal}
Message-ID: <20200911191612.GH1551@shell.armlinux.org.uk>
References: <20200910174826.511423-1-natechancellor@gmail.com>
 <20200910.152811.210183159970625640.davem@davemloft.net>
 <20200911003142.GA2469103@ubuntu-n2-xlarge-x86>
 <20200911111158.GF1551@shell.armlinux.org.uk>
 <20200911082236.7dfb7937@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911160101.GA4061896@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200911160101.GA4061896@ubuntu-n2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=dcbfvu40;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Fri, Sep 11, 2020 at 09:01:01AM -0700, Nathan Chancellor wrote:
> On Fri, Sep 11, 2020 at 08:22:36AM -0700, Jakub Kicinski wrote:
> > On Fri, 11 Sep 2020 12:11:58 +0100 Russell King - ARM Linux admin wrote:
> > > On Thu, Sep 10, 2020 at 05:31:42PM -0700, Nathan Chancellor wrote:
> > > > Ah great, that is indeed cleaner, thank you for letting me know!  
> > > 
> > > Hmm, I'm not sure why gcc didn't find that. Strangely, the 0-day bot
> > > seems to have only picked up on it with clang, not gcc.
> > 
> > May be similar to: https://lkml.org/lkml/2019/2/25/1092
> > 
> > Recent GCC is so bad at catching uninitialized vars I was considering
> > build testing with GCC8 :/
> 
> It is even simpler than that, the warning was straight up disabled in
> commit 78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized").

Great, so now rather than getting false positive warnings, we now
get buggy code. That sounds like a good improvement to me.

Not.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911191612.GH1551%40shell.armlinux.org.uk.
