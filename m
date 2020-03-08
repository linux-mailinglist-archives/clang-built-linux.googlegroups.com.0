Return-Path: <clang-built-linux+bncBDY3NC743AGBBA6BSHZQKGQEVIPWXQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF1C17D0F5
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 04:03:32 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id c21sf4135728otj.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 19:03:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583636611; cv=pass;
        d=google.com; s=arc-20160816;
        b=VoJXzL8Tu1c0ybnTjft/IZ+bwHuaOLYQkOUuiNDCPUe1x6zN9nO7o46+DC5mHExNS1
         KaTidXDJNgYDsrM6YwOr7uR/RFX7edReQcYCVKq2JUK0Z7MUl/kaoI9IQz9SbWBXs/bi
         WHH0AKj20fvb2WItgkQXLalHvR+cQ9ITfkfO73fSqt5ygpKU18YlzPUVM7DuIR03mgpw
         l6Lmn4LWEnx16ZF4HtvfdePGr4Kp4Fruw/oeZd/3a/jre0gGfxPqCUZeR1SYfC58Jz7o
         0Jygq43Ho427zGSWYI94xNr8O2ES+civftTR0ilHqLeT1KuRxQMK6oJmxwfFqg3Dv4NS
         NMeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=SclBL9YYOr7m3UAq1/bl1ils6M1Kz3uA7sdg14fcc7k=;
        b=ZJv7ly0EkmSqa0aD/Z6ll2Wx1DBpKyg96EtoYcfgO1WFNka3MnZoJRMaPLpz4fnf9g
         T8xfyqh1OnM8mPBTMq9r1AN1Beu7gYDC44sXWPPQUbP/OkZkDH9FEirQvPXOkTQjspQD
         tGcUufONKj7YgW50wtnV3AFyNCvK/gLGt5xZGhCQF73hxzzDPUffLKZAkhPOBUtq8hfc
         4X0isRVXgLuHnzctmamomOjeyNcbUIdaDNw5LVqWLzvRrL6YkJIbDovgHNICwYmBoL5v
         PGnRU2RHuKRftoTNl6tcON3g1b6gdBAxgtD3Eohk1qxvt1fePe/7nAY7vxA8tYaTzjxJ
         GNrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SclBL9YYOr7m3UAq1/bl1ils6M1Kz3uA7sdg14fcc7k=;
        b=MCX1RASYuhHGXy+wISmAMcKy0UQtErZvfaTvA+OWUFUFPytf8xws3f/yXkLpKb8QOY
         wwoIE7bhjt+7AYWEJk1gtCwDmKOVTH9tFkGJOG6fepszOsGCNtBueXAaj9OqWn5NRaDr
         Yd+abd7aLMiyZsVCtwZ8PhwfAosLCJ47mD5kkuXMP+vwa65Rf9NvWEPiNkmBPoRQTWtg
         XcSTlC1+oXZP7JFleR6m4dtf8MThLCiEZrRXsVIKKOvTs78+4beNxaxCxGD1Ey5UOtLW
         D4nPNYO4HGemq2OxQqnSHTtsMJOIf48jIWH1UmerWywNA2aXJJEDPftarXJ8djEInkvX
         0uSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SclBL9YYOr7m3UAq1/bl1ils6M1Kz3uA7sdg14fcc7k=;
        b=f/6QOvAAx6BJ1/TneIJNJZ/LoiDzQ3E8kgz++CfaNCxELqYk1/W1gCce0SM036w56h
         93DaGt0b5HQZaCZJTv9uLxYH/9inbTG8LmqK+xJIzsX50PaiRLxI9EtL1yGRIcjTgeWM
         Bp2pGJETnrXR2zsCSDZFhx6T58SnNn5G39U4BrIi649kgOYLMEeptDwtFcSh9w8v2052
         kRzrpcahJ81eD9HGlH5U38JM0VvJNzbT2UEU6utr62zaDxaW6z1MluMgYBhh8uchkMTa
         skPV7Qmcz4uoZVu68nxyzGO0bws2gI0r98FdOJvQ3mTNyIJ9i33FxVxpfY6YIBatP8KZ
         155g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2JS7hUsPCPn/k6iQhuLbj81EPFS2WXEFy+dharpDE9e96SKVe2
	vyHywQxmyxgdSD8uBV/E270=
X-Google-Smtp-Source: ADFU+vsDyvH8a8a6rfJazfr7QnwLIi4IWsYNRtKstVXXHhPTHkjf+XBVsTe6+9JCmX/EyIaxySsWaw==
X-Received: by 2002:a05:6808:1cf:: with SMTP id x15mr7687673oic.44.1583636611432;
        Sat, 07 Mar 2020 19:03:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2097:: with SMTP id y23ls2036694otq.0.gmail; Sat,
 07 Mar 2020 19:03:31 -0800 (PST)
X-Received: by 2002:a9d:6457:: with SMTP id m23mr8531707otl.162.1583636611023;
        Sat, 07 Mar 2020 19:03:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583636611; cv=none;
        d=google.com; s=arc-20160816;
        b=GZp+WvSVUDc5T/8rFpP1DnHzyhgKByPoh/NDbQ7j2jv652ssZtUsicVQEJVoNacMVR
         +W7CW1NHrTL/m92oq+vPG5+y9vGZsvAl2+/0khgL+DbN0wtKjpt05oqc3dQl9a9uPxww
         gqca/S5uIPTMO2MvB4uhpWGfe6bTiqXwggME7tHy357fMVqqw14rWlM9QlXy8CbQexhs
         zGthKZna1sbzhslGGQcxwveN3iJsy7e1wyqeCKq1ixby6v+SmDcAMps6QGkPi9b+YrhB
         esy93DYcFdd6W/E0eWkWNWL2BgQOgyxwzom9ZNtQhfgiqVsYOi30bdLdaDcuekcQDXnU
         /d0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=YaLcfBHagCpvXk/13m1pyr9AMF0AKKjlBNhQFTL2Ho0=;
        b=MfUAxyb7o670pSPKO3nzIFT3hqdgxjoT84VAkdZnP4dmgEAtrhSXzYP5NXXWWQFUad
         8+8Ucs+qd67m3XfgUJ2J7Sz1vAGRqr8E9xsXqgmr7JlbC7T3TvRHjL1TxBgmuwBojwgD
         1YouEnVBuMAl0vFd5RlZmQJxSKIq7AFw4CT9wpbzE/emaueHIFB+6koy3mX3TMl+rjxX
         PDB4uFYO/+6l/hX4wqa24S1kHYZRkBsy2oIV6cqkm1k6KiuEei2CHaWJ+175dz5PO7gt
         Mt8xnGc2yjiav5S966i7fo1tx6Umb0anvY21rFEX+Suv3I3YQwEqm4IPzCxhX71Wc8W/
         XjFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0235.hostedemail.com. [216.40.44.235])
        by gmr-mx.google.com with ESMTPS id u22si378598otg.4.2020.03.07.19.03.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 19:03:30 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.235 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.235;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 22264180A884B;
	Sun,  8 Mar 2020 03:03:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3622:3866:3867:3868:3871:3872:3874:4321:5007:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14659:21080:21627:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: paste19_58aa84c038c29
X-Filterd-Recvd-Size: 1337
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 03:03:29 +0000 (UTC)
Message-ID: <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Andrew Morton
	 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Date: Sat, 07 Mar 2020 19:01:52 -0800
In-Reply-To: <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.235 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sat, 2020-03-07 at 15:30 -0600, Gustavo A. R. Silva wrote:
> Some people consistently add blank lines as part of their code style,
> and if I were
> one of those people, I wouldn't like to have such lines removed.

It's a patch generator, it's not perfect.
Nothing is nor ever will be.
It's quite simple to add blank lines if that's
what any maintainer desires.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel%40perches.com.
