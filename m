Return-Path: <clang-built-linux+bncBDUKXHHSSIJBBN66YGDAMGQEZR3QPCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C52E3AE7A4
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 12:51:37 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id h11-20020a50ed8b0000b02903947b9ca1f3sf5752567edr.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 03:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624272697; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hip+fl7dPgOcgE2njk3leU+jQDDfHcViv3oZ4LOOu/X1U/C83P4m4RXIfJj+0tL6sQ
         H/lLH3XWlIC4fTgk0Tw8i7orQRmac+Gphe6bZ+j+sUHj9z05EOVay2DQAQuu+fnD1DnK
         JtgtPBOdi6ZjajnY6V33rDzpNFbXyOvOv6fEtbQ6p/b84K5sazTLmVvumwxJtBhEdCaf
         EZv34upEd8S37aRl59A2sOUvRB7U4B4+74UHLlHz537Vzdm2GSIgDal5Pm5NeZP/kVyF
         EYr3WKeVHoz7wAQlrRtFYmoJLKJLsJVJKGeO8OQIlx2MZfhJ8TOr93P+R/xhf6lxj29+
         6DfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=RFDJ15dtu9I20XexjpqQz623WbvLLgmRkVc2IHZk0Dw=;
        b=kK+1/OTTEjW3qSwxr4Ijqz6gRwI7P0DypAcFGL6HyNg9ehPOMrErZ2lmAzSLgskdOJ
         xCYBuz+0ff7PBNxaYUMbKXjQgaPLrHzPpLfbL95f9/7QW49FsaeV+/4ioIleRQ4aFd6W
         DH9wqt5L98qA5uhlYVG0aYWN7wsG2jYP/mybObhPIAnc142zeuWqiAHwYi03IaMi/124
         9NRykY/N54jssvndPxhtx+6u1iGBy8ctf7kn2G1pwnJXXtmocXyB5jWX41Bl4QlLBIIX
         YBt/1tEgsQs0bqxpZT3S4QbG7MNbZOnPdghH96nT0AYhLQBFUgEOLzbot2+jVP2SwyFI
         IhyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RFDJ15dtu9I20XexjpqQz623WbvLLgmRkVc2IHZk0Dw=;
        b=XpWCm4WzSYkP07Su2hKsNU+zlC2JLpOQuYlSZdVRuPxkt1zbg7h7z0DVZQ4mOoFrGX
         AAkgxSvqTZ0qm2/CrniKC2ce+sYP0whZYqhNuUiBAyB7kSrCKjNUK6cxR4U5H1txCcuV
         MskemgFvtf/sC8INDrl2hOkrKkExLbNBrXMmEPs8WWNPcvnXdGIQNl5ELGlLTey8txe/
         BMbNkLPsUytL36/qy3asnK8YA9BC6tPy6UBCNJAOGBH//up/T9zB3gW9r2MifqtF5/XJ
         Jw77EuyeR9/wwo2WeOPZinR81/MDHYsAmiX0h/PfsZa8rRwOmeBrAX0558iztjAC665G
         4LVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RFDJ15dtu9I20XexjpqQz623WbvLLgmRkVc2IHZk0Dw=;
        b=Uf32tqbKUJNvWFOviiIZciuym4OOtPV91M3bKYhFTSzuPRcjuadgEC/sUp3GbnKCnS
         5saQHeBePpiH6WTgTbr5CLPOJ4VEs51U5Di9GtwBeJ5Fpo9qss2cLhX9v6xbO4Z5XK6I
         DmqcCl8qq0mjpGwX5umMZK3+I61hqCQV4gpYy668IOp0YUU3rNtA057qY0dyjPD4pTIg
         Yn8Q7IRNpvPlAiW8xU88eg/xpWbS2fpqdbNEnoruTP3WiDRafT/bjxY58COSLgudPDZC
         v8I8VVhPB6pD8JU7AiBkBGZSmAuDZ+xjJk3gCMKfUWLSsNoUw+zbKHnPopA3cAukYTzp
         dE6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SF/KEoFx4gqJc2woowrsTzUmVGehWHX9mKC6xX8DVZOJHlnLz
	Ou29wFPjIeRTt2+b4ReINEA=
X-Google-Smtp-Source: ABdhPJxfJEoqmLb4CbA0ES3hYvrIc+mFy76B5ZrbDUhj/Dxxeo51LoX31cc2xtXQis9l1CzKS2CyiQ==
X-Received: by 2002:a17:907:20ed:: with SMTP id rh13mr7079760ejb.137.1624272695986;
        Mon, 21 Jun 2021 03:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7c16:: with SMTP id t22ls4461056ejo.11.gmail; Mon,
 21 Jun 2021 03:51:34 -0700 (PDT)
X-Received: by 2002:a17:906:89a3:: with SMTP id gg35mr24648897ejc.188.1624272694886;
        Mon, 21 Jun 2021 03:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624272694; cv=none;
        d=google.com; s=arc-20160816;
        b=OiaN2vJX12vC9U+EolSB0JT1qFfXDNHWIS8YCCvTliW4NqqH2/XkwTnENrpDhOJ174
         MPMkieki0oZqpKRtqlJqqdugg0l89KPf/lFEMNa5fmULaXITyThVGpCEKdsG7xPfTV0h
         6CFlA9r7IVWrwd+bkqb6cf1y5FqvhgNdN9q8cFhsrBXnfzJM4oIO0r9Gp8/FkwD79YH5
         7oFFcaTFvD0tTeay9jpPc1H+N6YoieM/ezO9Jlrj2ndrSX5GujLSIZ3860r1wpZPUHg9
         PYl1uMq4zZdrA+7QiPPgVpnyEhdy+waIw/03cyqveShmr9/97K68hI14CZFtYgKJEF/A
         GCeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=gYR/30Pps9hpELvVnBVMFGzhPtog60QGp6Kf4QPYNSs=;
        b=G/JULrQhOjB/f++vANEzn/dRFt0Ydxa1ovr+qj9tpF+/XRwWclw2xq84G0K37aCOz6
         6Lt0/cZyLId5I5OogzFZTA+dDJy0iGGgN9fNDQt8Ayh0UHNwJxHmxvlWImM6pnW/A6nW
         AgfvnwTcZboJN54pPrByO3/mXE+m0APz8KgpRb/KfjFORJr3KUhYAB+g6XXrVuhaGp1k
         kY+j/xybbGLOQUbS6wErYjwjhQ2XjFLHRC+kDL1ZM6En48QpxuALW1p63cwL+3Pc9/DW
         aTTdzqICOn5tp8mTe5NRU1KQ8J053FLFUlS5bTmDcsWwDY83tLqJG5pgPYV5xIu39MkZ
         X2CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id e26si728065edr.3.2021.06.21.03.51.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 03:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1lvHWY-0002zO-QJ; Mon, 21 Jun 2021 12:51:26 +0200
Received: from pza by lupine with local (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1lvHWU-000737-Jc; Mon, 21 Jun 2021 12:51:22 +0200
Message-ID: <68a0278fac134b81ecc48582fd386206dd3af244.camel@pengutronix.de>
Subject: Re: [linux-next:master 5946/11253] ld.lld: error: undefined symbol:
 reset_controller_register
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Thierry Reding
 <treding@nvidia.com>,  kernel test robot <lkp@intel.com>, Olof Johansson
 <olof@lixom.net>
Cc: Dmitry Osipenko <digetx@gmail.com>, "kbuild-all@lists.01.org"
	 <kbuild-all@lists.01.org>, "clang-built-linux@googlegroups.com"
	 <clang-built-linux@googlegroups.com>, Linux Memory Management List
	 <linux-mm@kvack.org>
Date: Mon, 21 Jun 2021 12:51:22 +0200
In-Reply-To: <a9a17943-e672-2475-5e30-244283986a7c@kernel.org>
References: <202106182243.KgZxMD9A-lkp@intel.com>
	 <YMyzKmDO+SJt8n4N@orome.fritz.box>
	 <b29290ec-679d-322f-0cd0-32358533aac7@kernel.org>
	 <5455875a86b33ecbbc94156c0c799e7224bba93a.camel@pengutronix.de>
	 <a9a17943-e672-2475-5e30-244283986a7c@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: p.zabel@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
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

On Mon, 2021-06-21 at 11:27 +0200, Krzysztof Kozlowski wrote:
[...]
> It won't change the bisectability, just the scope will be few commits
> narrower.  The damage is unfortunately done.

Oh right, so the only way to fix this would have been to rebase your
branch on top of mine before the pull request.

I'll try to be more careful about spotting and pointing out such
dependencies when picking patches out of series. If I still miss them
and pick up a patch that you think should be merged together with the
rest of the series, don't hesitate to ask me to drop it from my tree.
More often than not, I have no conflicting patches pending.

regards
Philipp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/68a0278fac134b81ecc48582fd386206dd3af244.camel%40pengutronix.de.
