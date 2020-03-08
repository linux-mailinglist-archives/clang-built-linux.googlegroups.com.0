Return-Path: <clang-built-linux+bncBDY3NC743AGBBEMXSXZQKGQEDVJODBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 587CF17D5EC
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 20:46:27 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id b17sf4503822oib.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 12:46:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583696786; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXrHYLNgQGnzEnHH8/SW/c5k/QFcPamQzBuO+ybyMEb7cj8uY47S9Ox1GyQiP2ehiI
         eWj98tAaxORqwPhcfBdxXZNJ8gSp/IxQCXXjWfIphvLjpRMWzLuOQhQhychRjBOLpZlC
         2VZIJczslHTPOQ3zufN94eXVIN01Tm+EXlNtPUCJy7A0MsG1zEYSXqTENpTAXLQ1xEJR
         M0WDttU2Hfg6UhlJloJUjXRl84P1IZXgr2eIkzNVCQ/K67FIkKH1wHhqFAlwTaD5oTQX
         WLSpmwhKJM1aiQJ5Sl9Hub5dltLFhlXpekYwUOQnxN7hL1RjVlvG8ssGr62Y+i5gkaNi
         ACIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=9A3qaXAG/Erx5YpRdimxMoDafIxfivqmf1EQ/DP9AQE=;
        b=DQ8GaLAkW8TSilf9C7Omrrhr5YXYE7lKAi3flvfGw5ykaM7zVLRT/HdoSIwUrg4pLM
         G54/yKO66ULjz6FXhAEjx32FueefkVA+0bCE9pEUnFQNRL0bnYWN2bZQTmHQBDlJOc6t
         uMImUKa2KV07nR1Y4ypr3h4NqXIkbMG2WNuHnm6q+mwVRNAyL58vOAL3x0ivNVFgNET1
         lCQT0WZEtjdJemo9/lq6jnpOrMfNIAFSbpFErrkVztESrD9FlCsj7XFwpt8SwxFqAFo6
         59Dv+cvWSwBaPDrMY+mnoe7yEujM0yUXnV12Shk3qnlIu67zPSuls2lo6G03liYgiFLo
         nRlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9A3qaXAG/Erx5YpRdimxMoDafIxfivqmf1EQ/DP9AQE=;
        b=Xx/lFESb9EbSsWO5EV6Rwg6oPmoApfG4OuUxcoeRJ/BfHZgjpkUXXSUrRSBRKyrufk
         P0xJZuWqzXrxuElswLMY19Mb561tpzk4MDUx88CoknvjlTswJEtcjDV5qEtS8+pJm2io
         9cBcdmBN4E7z6PXUn40USN/7m/gg94VG/JYJ/kFoR6yWkhqk8+KatS50e7qPTJBC93HX
         zW7QKfDU760ckKX0auKR/AiXYP+YESePVV6tPB3mkcWIYT97y6C1jMTN0D9Shvm+93yv
         CFwQNesbPnpPFL1Gljm1wGqhBGwNwUpLdMK/PsA/63ylfWXFsl0G7JQ1EAlWfqeKUyqX
         gJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9A3qaXAG/Erx5YpRdimxMoDafIxfivqmf1EQ/DP9AQE=;
        b=W4rkIM6cawWFnloJCYp0AkJnYYni6rz4lf/4+eVzitp2y6bQJ/xeB22Osi5P+yG4jS
         Wf9GZk5EAxZllDbxkM0tPfeoCZoiDBqJ4gyAWquXkniL9torH6ph1k5R30ndcxjamJ4a
         J2L/PtEtYy0SY6Jt+GrT7wL17cIE/ULTMPxrg86yaAHJgzMxx7ooCZNVzLAiVsO1kpgv
         6gmaHRl+Vim41/KvaMVGKlXdT6nmcwXd0ZxxCEXcF6rZ4g12Dp5K9gGt6Jq3tow5+pUI
         B27TfNDc3BvXC7hOy6BZ8VwsVcbW+D5PbsFik0KMr0HxrN40uLgF956zvzQ1i9L06oM2
         opsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Tsc3Dz+6Sz5pENiXu/hh3zgygR78K9brzwZtVl2goVGHT0n2c
	6LLcJqgguquOb2XVHIMGzfc=
X-Google-Smtp-Source: ADFU+vtQ6xw/w9c9cf6nkQsacZErx2FoFbxRvaD0v50VU8GJGZYRrR9TgY8rh8LBpQ91dcOJzFndZg==
X-Received: by 2002:a9d:3661:: with SMTP id w88mr2439866otb.223.1583696785926;
        Sun, 08 Mar 2020 12:46:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6759:: with SMTP id w25ls635820otm.10.gmail; Sun, 08 Mar
 2020 12:46:25 -0700 (PDT)
X-Received: by 2002:a9d:2aca:: with SMTP id e68mr6694472otb.324.1583696785528;
        Sun, 08 Mar 2020 12:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583696785; cv=none;
        d=google.com; s=arc-20160816;
        b=DAiVyCc7/KFnfheKkfOF5EH+fz0MPdLWPLYwYpeo2ulGPieX5K42F7Pm8CLQIbRGyK
         mbsU8h1bkzqdf3G2F3jREQMxxoz3oVgtRiddzwEfcCEhLqlYfaqYXWrPcvvmqIH0d/3O
         Ioy45bQ3s0zaYm5+bVqYD+3te4I60jzq+cPIM/IZb24MHz6TbpLHk4TIUcGr1ygxHQuM
         +6IZhEPrk0zgmapQ+/E8e04Q46p96zwe01iC3et4U8kj4T6+LiByjSjoGuxvSYegrJr2
         u1ssysSPMqj6pBgOszAvC7dbIoTH4MVHDG2Lpy0ZFU/flHrEykuzqOycQRqCv0sWTr18
         NDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=1YPvVddZ8HzgamAWa+IG11MjXwrvcvw5VgpYAFGhafw=;
        b=0xX7LnPKEYxDGBweCdy/5cLNCoWhnkiTt1EbDDlR5kpLMSbXnJsd5l+iE2IzOwyndK
         kSIdoV1x3Q6ww6SWdr2aEIffn5JnIPC/9/olENbuHAAVjtM/xYjdZhV7mOAgbMekHu29
         BW65syDYoIsiC+IdUlyKqgZRvsidiO79zuIAAzDjpXkaGHQGt74bNXkXwuzH8H7fv98E
         CIlXOj+B7EmJozR/FsKMUsuPHevGVDgK4N4yJCfLxXZBJUY+k05JKZkkyR52R71q0GLf
         DVJDsGGhukFTDoOr7vXWqGTV8wfpioCPuQTNeZF70BUvpltabQZ//r1fRU69VrZV8du/
         3jlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0097.hostedemail.com. [216.40.44.97])
        by gmr-mx.google.com with ESMTPS id u22si490129otg.4.2020.03.08.12.46.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 12:46:25 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.97;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id D4B57182CED2A;
	Sun,  8 Mar 2020 19:46:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14659:21063:21080:21451:21611:21627:21740:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: drop48_721bcbfa29e4f
X-Filterd-Recvd-Size: 2473
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 19:46:24 +0000 (UTC)
Message-ID: <b934b12940ab50218be3b7c5d1b98f5d4f24a1fd.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Andrew Morton
	 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Date: Sun, 08 Mar 2020 12:44:44 -0700
In-Reply-To: <7a0a3e7b-9c76-22f8-8dbf-acd9960d7950@embeddedor.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
	 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
	 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
	 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
	 <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
	 <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
	 <7a0a3e7b-9c76-22f8-8dbf-acd9960d7950@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.97 is neither permitted nor denied by best guess
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

On Sun, 2020-03-08 at 14:14 -0500, Gustavo A. R. Silva wrote:
> 
> On 3/8/20 03:58, Joe Perches wrote:
> > On Sun, 2020-03-08 at 01:11 -0600, Gustavo A. R. Silva wrote:
> > > On 3/8/20 01:02, Joe Perches wrote:
> > > > > or if you are suggesting that
> > > > > the maintainers will have the predisposition of applying
> > > > > patches that will modify their coding style and then go and
> > > > > willingly fix that. I doubt the latter, though.
> > > > 
> > > > If any do actually use the script, I guess we'll see.
> > > > 
> > > Yep. In the meantime is a NACK from me for this version
> > > of your patch.
> > 
> > Generic code reformatters of comments to code are not
> > particularly common.
> > 
> 
> It's no a matter of
> reformatting something. It's the opposite, it's a matter of
> not messing (removing existing blank lines) with the current
> format and merely focusing on replacing comments.

You are not correct in your assumption.

This is precisely reformatting of comments to code.

Nor are you correct in what appears to be your
general point.  It's quite fine to reformat comments
for consistency.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b934b12940ab50218be3b7c5d1b98f5d4f24a1fd.camel%40perches.com.
