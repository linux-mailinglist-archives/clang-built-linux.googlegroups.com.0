Return-Path: <clang-built-linux+bncBCU77JVZ7MCBBEMT3T7QKGQEB72NC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEE22ED06F
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 14:16:01 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id y26sf1155584lfy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 05:16:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610025361; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/nzd5WcJvoMZ4lu42wNlpE1hLVFYQ/PHkzkh0zSY0+PHCcr8KL3ooBI1GhcIxd9Kr
         pMy65XQ5b0kuupMKiWpBWMyR9h6dWsrWlL2xHOJPuEfCeUgPV8wYW9Jano7C1xwSzeFd
         2bPxMlozR0lW2X4/G7k4MIHh1MgKpPicOi8uNHJbTp/AHVd+Mkva1ymadejfEvXPdwwA
         8twKy1+ovVv54IqIwGGzZWZCgQuIR8odMAsAz194sjmWu2I77BZ1aSoeO7skSyQhb9lE
         mCHRPpvCMDj4lDnusHbpsah9qMPC2DwJ8IfsuLmc8R4PmhQHVazve64CCWKOJYrSbimV
         bbvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Jd8ZrRhj4lxJWlCX/AWwC9KNgqrjcVYdbkFaPOE/LVA=;
        b=VcT/eil39pyukIGD75RPdvZupsGvT4bLkY+787P7i+aD7DhwCM2apOdHpXVSzVacoE
         ffkRnrUhjvXhq/HiyyQmTNQHy5q+Qq1KYunLJCWgg2JCoFt24fmEJNOZvtoPr1uxEy8F
         l9gCIn1SvnFpGnbuTOUZ1f0eqxOo1wflc6J+0mI/UCZJYNN2BiGetqJxEmLPw09hQ6KI
         C1+fqodkVD9C+Tuax+tyb/mUx9zAC06cMaRJ3mFKNtnASyNTdQocBs+YlzbVJ2lFPd3O
         noLqufh7GcsYwg9G20iwwMWiRWa+X49EmRB4/AsxKxm76y9lq1BB0uBfPRtgUd59Dpi3
         RYKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aoW0rSnu;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jd8ZrRhj4lxJWlCX/AWwC9KNgqrjcVYdbkFaPOE/LVA=;
        b=oNQI7IMtJROl5aNv/RFC8kII442fR8w9aVjeXw9LBpZRV6x2VY/mKbeqnzyHENn939
         SlRlpTucVWsdBVpRZcBz/fVyVahXRUi+jumCk9bimGDaWVnF5OF2RIt6ayKvgl2wxT5S
         G5MuJ+nlg50eCrwZWD2x/QXqcLo7OjkotRevwqcQfnSNNXMAREsE2LY1ic2U+UG2ydlB
         JLUxnh5M9E0rRIsn/50nI8Np4pR4DhBNirFlKagf6UP6JwEy5ZHQ1HiPgfhmAGsy8IGP
         1ivJ/2HvrmzIXvh5JNQR8n/zat0lmXMlieFPy2mEVVFNde5brVZDw5n/DOPAfLdwG1Xb
         bgNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jd8ZrRhj4lxJWlCX/AWwC9KNgqrjcVYdbkFaPOE/LVA=;
        b=VEW+cfObpj+WxHwqp+ZB1SM2oUnBJxWdNIkZTPAiD54xt2mSwqjzeswkaWQRIGHNeV
         Jj8qLvdIiTy2UZSzE2sf3J/9WzR+jr/VmiobMEHh145rC/5xz67dyDY7sttV2KkWnA/f
         3eExxsKR/z0EO/wlcHBV0JNRIchF71oSZ+vM/CmxOGxZU/WOzzfq+Gwe9PTUPmlClplY
         14wL5bndGgrpZkIBcv1TikSrrGb3FYRfqElHRdNMci0143dfZqsmblwplxXajANJiRmY
         MIKR75JYrAKBx/RGG6eXIIplN9NPp52tQjR7pLgNVcxbSa29qw0iyCtN+FfB7kwZlMTh
         d2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jd8ZrRhj4lxJWlCX/AWwC9KNgqrjcVYdbkFaPOE/LVA=;
        b=WxnCGmCCy5AfqlSiltmStMkMhSTqjhyJZjp8omEJyFVXPZK+wU4PxNbtA9BZuZDxe4
         GSIrTAA4YwCvE/l4F0AzcVx457+xBwVGZNM0yifmTL1XayJY6woXfZw0eVk8wkCaEqA7
         1Hiv9bTrt6pecqcXASTOjcrDeC9letcG6IcUMsumSuCFxT0kORzmbc4w+ZoPdAOYl8Jj
         wxPU7NKaUN7F/sutlIozl4KCSdQPzyFCXNY28bQSlJ7nybgzqkt/eLlZGZWwjOZworhS
         bTVEEmRRTceeeklUiZkw8cmZqxw/WjXGcpo6PwFnjOHktFbF9XjqMj3As2oA5pXf4nD/
         qURA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fkdwMlMsM7EDCBtlG0fS37nUKm9WqX1gay3ZdNC/Z1Yf+icay
	T4cbswZQfYYSZZwbPIZbwbU=
X-Google-Smtp-Source: ABdhPJzPJFi9Lh1zZrnCQb2FF/MmMS//SFbcJryyT6SgGT8OeIk0hy+4hOsKnybCo3K8f94+eev4xA==
X-Received: by 2002:a19:cbc3:: with SMTP id b186mr3781881lfg.554.1610025361263;
        Thu, 07 Jan 2021 05:16:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7806:: with SMTP id t6ls1166960ljc.8.gmail; Thu, 07 Jan
 2021 05:16:00 -0800 (PST)
X-Received: by 2002:a2e:8297:: with SMTP id y23mr3950488ljg.177.1610025360371;
        Thu, 07 Jan 2021 05:16:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610025360; cv=none;
        d=google.com; s=arc-20160816;
        b=OFVJM6/iFkV2K2jIHdTICdSCMFSCFdMvJoAUZg+fD4EFTp9Ra6UpchAL6bMLBENtx9
         Q748LzzXrkhNKA9TN3TJxXCYHKQOOlWWRWXRRegwFrgA5vsc0b9gSL4Ii1nBguvwgCpB
         MqoKYpYjNrsQWvYhui9Vu+5EPPLQ8iQju3rr25vo5NdmOWW9p3BculEySxBYJlBBmnx6
         82l5QkJDXjqWLdLQiGxyc4XEOmohPqFtVdyjVz4NxO5GpRG2cxjqtBhA4bEPtEh5sOZk
         FKpBlxYAzpdiFqoxczeCTtNGwQz3xPE94+i/G3VzJ4pI2VE5knCFInAD0KipH4Re/A2t
         dwsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JfkvmCFs3W/VNw/Qfhaa4/5mzwHO0EiDklMuBt017hY=;
        b=KuILjeNU/O875JfBkBG3zghKRtiGkwZw6Olgzf2f1HB9aNvNoLrMOPZ402zWw+GpFC
         Dm/3tdeim3LWz4hgF+7yU98zGDuFrXbfkhbeogdX6UEn5uxxwCGsOq1lwioWgkEpJQyj
         zjMLfMRxsSufyy7CUO3gWvQSQoHUv7ON/WnRyUP2+tMn6Qyo42CyDYQFK0HlhTkgFRUO
         xYSbwDMbHDClelrwM7DawoeswHwq8saD6YkxbcJ0cwhu0KFla/PJSpqEnf2WbUR56sju
         tMYByqOJPOwOgSH4+274Pimj1HJNynL7OpMhOWfmEEkTNyLHBHF4VGDCLwx3kkBygO18
         Se/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aoW0rSnu;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id i22si277429ljj.8.2021.01.07.05.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 05:16:00 -0800 (PST)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Received: by mail-ej1-x631.google.com with SMTP id n26so9625482eju.6
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 05:16:00 -0800 (PST)
X-Received: by 2002:a17:906:1199:: with SMTP id n25mr6102489eja.293.1610025360142;
        Thu, 07 Jan 2021 05:16:00 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
        by smtp.gmail.com with ESMTPSA id t26sm2464383eji.22.2021.01.07.05.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 05:15:59 -0800 (PST)
Date: Thu, 7 Jan 2021 15:15:58 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: "David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Stephen Hemminger <stephen@networkplumber.org>,
	Eric Dumazet <edumazet@google.com>,
	George McCollister <george.mccollister@gmail.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v3 net-next 08/12] net: make dev_get_stats return void
Message-ID: <20210107131558.lcmuhqymqvtos2d6@skbuf>
References: <20210107094951.1772183-9-olteanv@gmail.com>
 <202101072035.p3B0IIfz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101072035.p3B0IIfz-lkp@intel.com>
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aoW0rSnu;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::631 as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 09:01:03PM +0800, kernel test robot wrote:
> Hi Vladimir,
> 
> I love your patch! Yet something to improve:

These are not scheduled to run on RFC series, are they?
This report came within 3 hours of me posting an identical version to
the RFC series from two days ago:
https://patchwork.kernel.org/project/netdevbpf/patch/20210105185902.3922928-9-olteanv@gmail.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107131558.lcmuhqymqvtos2d6%40skbuf.
