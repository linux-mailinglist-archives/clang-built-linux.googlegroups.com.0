Return-Path: <clang-built-linux+bncBDY3NC743AGBBUOEUTUQKGQEELCGXCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610C6772A
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jul 2019 02:14:11 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id s22sf6035454plp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 17:14:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562976850; cv=pass;
        d=google.com; s=arc-20160816;
        b=AImJOFY3F7CxRv1XHqOr35uxj1cQ87mK2pIPAb0eZbhEVdvgQFv5F8VZzqKR4DJiI7
         nDXl3eTZTYQTr4DPrJda1zQeGyKl1LYBtwAzPX050yDtcrY8jF5MIx7R8f3FXvn1o36U
         nBj6V91wWCbBBhGvbsawFbGn9XBA9KpbB8P4rXrwXFOmctxGgcy8C6Jk6XcaEVyHl+t2
         4KCUMz8nvOsVrsTETD0sn7Ie+MwBQzChdxbEDih7BdSzwrFHeXPbCggFcKq6aShkx0zq
         2wzrGl5fO61TQLRxb13IGsyk26Vqu3o6zV8osxbKWcLfFEVo1WvxdVEFsWa6fFTeO5kD
         RmMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/Bu2WzpXCaycROqbii0d+ZzmFi+u8bcHaqD48CosMT4=;
        b=xR4hslXBJnSXmY+RyK09WUFoQ1kkuDeseVq4Pbz9afKrK3NZllij6xk6lmpVmLrvQX
         tGS2Z2xPTK2dWQkf1fnd5SSDsARJnyrXzqwYxXARkfpwb+j44ZgtHIRcP5y3nP2hvLUj
         FLuTGP8zBB8loThXKCJrr9qZOrgVl6SJYqD7ZMae2SJszD5JJbgbYQ0pfk2moVxTb3v6
         eWirN5/RGp2MTzH+20/XX+UVHG6B9v9d7MclkXsP5XdEFe3tRZCCTW/AP1TCz0n4LKx3
         dkFdZmDVPeLIy+RlnsY2PInxIdOlqHYVqgLQcSFE6QClpu6TO9DRX/IughVvAV0IyAg0
         iIrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.199 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Bu2WzpXCaycROqbii0d+ZzmFi+u8bcHaqD48CosMT4=;
        b=EAIBszWe3E73yHciWZ+yRUoKeAt0c+XfFlga8oF3Vkc8Nb7dZMmW5/mlvlpA8l5tGb
         P2twry2lle4QVjnNXJFI4esDSdrpF79fjLu/AJGFCP8xa8PdRrAvVePzuZjQwIYahL9k
         aL1iHcHOCoKjXNGNiGQcpsQdxs4irJpYyRKrZFCQLR8xrkyiwoWfc9MLLj5Y6NQubXBo
         HVhjBpXmFZB14xatzaKP7VQeJq7dYh/fsXVXMNEwBqGZ1Mu8Z+ByU+hGvAulw0CuR0OA
         G15IN4ycQ8AZTv60UGlP3UjoekrU0s/BzVZk0JioSzvRa4Fgv50rL8zLRrHUQ1CB2O6l
         w/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Bu2WzpXCaycROqbii0d+ZzmFi+u8bcHaqD48CosMT4=;
        b=Z1o232qR1ABvTTCr+Kz4g4ceQMM0YFZpXt8vXj4rCc5ot3PE4K6ujoZjrH7IEiMUVV
         0xkNDsL427px2np92m7rKRgWEnXoT4AjpRiWUcH1yKcoWg+uqRO81XSoGLjXR/AfrYh1
         w9Y8VAPTgYmCq6Hgx4EcI2lOVXPUr7uSbcN78qh4yaq9EtCZD00179mm16oEhvFAMdfh
         OQoNBBa5tn9qDnOl4wR/r/rLwRg2zceE73g851V0nYee6mIHUQ3nU3UnnvdO/yqcTBny
         swao11Qkh3qjoarLVBHQ06adu46I1cxiHlPvrI5eIretkQVsnGg9ruFgTtkXhsI3I00Q
         NOvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVO3EdB1H3hihQWrMg5BTIZqHQAr+1rkdGRDT2sXy1PNN21S7w8
	B0mTIo5U+jZBZI95Dg5ywTo=
X-Google-Smtp-Source: APXvYqyJIsbR9p37pOClHnvUDV29M3oSPPaeZJCckL0C6jF9J6RwgqFkUKI8VXLTOPQZgtr3KDkDmQ==
X-Received: by 2002:a63:ff20:: with SMTP id k32mr14154014pgi.445.1562976850100;
        Fri, 12 Jul 2019 17:14:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc1:: with SMTP id c184ls1805526pfc.4.gmail; Fri, 12
 Jul 2019 17:14:09 -0700 (PDT)
X-Received: by 2002:a65:55c9:: with SMTP id k9mr14389605pgs.142.1562976849579;
        Fri, 12 Jul 2019 17:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562976849; cv=none;
        d=google.com; s=arc-20160816;
        b=uAxPCiEj3X1Nw9tDBxOqKm/oBvMVCZxu8Jc9brzVJozHCdpdo48DDPdVkIz8fztf7Q
         2EWIKkidmPa2WZQRhA6FPK/OK4pmhT+vv5tYXXkQ5g6STDiriXEA3ZYRehhgbJIO/3iv
         akhQ1Xcs2oON8xtETFSt2zLhYFlUlhOwW+ozsU3/sFLHfUo5qQ1+AVX1VKMGXrZAi3VN
         C4X8SaV8eSjyMTymbWzkkCJZLe14ZfqoDwCqV6v6wf0ka/F8AR7jADCozUXGX2lUPJ0L
         MyfTO4PHZT+m4QksDZuO/gdHBCNq/iA4/+hFCsG2/HTVSea/4jd6HnlsdrMsEyNN15TA
         r7cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=PHUwIGYC3vcAWkmBysw1tIJ9QtP0ycFmyLzsK8q0f7M=;
        b=SPjfJkvqQWydts0hEuH48g3R3n+uKxGhCDVIUL5zbX0LiuYx4XCz3APSyQMnoqHVNF
         dDvPK0Y6ZomRLKKMB0D1yMxzPZMzmxwuScepWhUR9l8rcEXoK+gqKk70yu2NtpOvlomZ
         Jfg/+1jKf780DDR44pK8hBKt/kGgy9vyuhEI+j/yUI8aUro6MW07MSHRovzPfvuRC22I
         iT6RaSKl16wYjXKaQK5WoTXx3RvI+7060n+2sp+VBOIqOxZXVIajuPuaIJgsv/Wg/Jda
         taGXVyFduODwjBdBy77OwfQX3URQ33X/spgNpdsZElseHiaRoHe/+N7wFpbmEIBupObb
         u4+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.199 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0199.hostedemail.com. [216.40.44.199])
        by gmr-mx.google.com with ESMTPS id cl17si418925plb.3.2019.07.12.17.14.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 17:14:09 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.199 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.199;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 26E19100E86C6;
	Sat, 13 Jul 2019 00:14:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3868:4321:5007:7576:10004:10400:10848:10967:11026:11232:11658:11914:12114:12297:12438:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:21080:21627:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: step13_7b009126cd010
X-Filterd-Recvd-Size: 1404
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Sat, 13 Jul 2019 00:14:05 +0000 (UTC)
Message-ID: <82ccdd83d2a18912bb8cf75585e751c0bd39a215.camel@perches.com>
Subject: Re: [PATCH] [net-next] cxgb4: reduce kernel stack usage in
 cudbg_collect_mem_region()
From: Joe Perches <joe@perches.com>
To: David Miller <davem@davemloft.net>, arnd@arndb.de
Cc: vishal@chelsio.com, rahul.lakkireddy@chelsio.com, ganeshgr@chelsio.com, 
	alexios.zavras@intel.com, arjun@chelsio.com, surendra@chelsio.com, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Fri, 12 Jul 2019 17:14:03 -0700
In-Reply-To: <20190712.153632.1007215196498198399.davem@davemloft.net>
References: <20190712090700.317887-1-arnd@arndb.de>
	 <20190712.153632.1007215196498198399.davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.199 is neither permitted nor denied by best guess
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

On Fri, 2019-07-12 at 15:36 -0700, David Miller wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> Date: Fri, 12 Jul 2019 11:06:33 +0200
> 
> > The cudbg_collect_mem_region() and cudbg_read_fw_mem() both use several
> > hundred kilobytes of kernel stack space.

Several hundred 'kilo' bytes?
I hope not.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/82ccdd83d2a18912bb8cf75585e751c0bd39a215.camel%40perches.com.
