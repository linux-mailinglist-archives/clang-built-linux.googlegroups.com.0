Return-Path: <clang-built-linux+bncBDY3NC743AGBBG7ISLZQKGQE5NR5T7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E12417D2C2
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 10:00:12 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id w72sf11140398yww.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Mar 2020 01:00:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583658011; cv=pass;
        d=google.com; s=arc-20160816;
        b=iFP4m8vQmdCoVAjZNVpkF7mOXDodux2Liox5AUM+WL8T7In5msG+Q4Cu/A/v3qBpce
         gcXk8D3cFad65llz/ABF686EB0SwDAvDJ1ymGFbGDbywdX0ec0LodvGaWHvJPvhyCmHB
         8z58nUZM6hf8ynmlCJ849rjds+NDBYMRVCiZi02E9DjCgFqtAwVGI+0hKHBC9Pxoc/Oi
         xIISpMRl0nhOxpvwvsJS0arVsGrMKySkZFDYNWKXrGfjQk4BE8uee/iGTPiVIaX9zMVm
         lKOgIW33IWYdUe+eD047cLDYpYhKqfHKxe7Tp1f2GT9qcnY3DCxewkpo61LE4Abql+Tf
         XUNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Q527xoYJJBQO5lD6tny9FgG0uRlEMMXTchqmanAz9TU=;
        b=ZYP8aca820eFXfMWOb1DHO4H6JZVVoC2T4J06kk47Q/DoDrUFZ70o38ygPr3G8L251
         gv1qFvYGWYZHnisOeufHCh+mnum1R3SgO97PeMp0bKBI7XnCpwI1T4IUfa83ASr+Og21
         1jbSbDmnWez4oc+gABLA0N2jlCa3O6BTRg4TGd7I3Yy3CwIwe/5ZZWMs6CTz2LLC05Oo
         7/KD2otfNqY6ErDKf9rvvCnriB+VZaz9URPVlNWYBYY35IwjYoQ6/uV3i6J8oQkMX8gH
         jzwBDg3ectnD2jj97Oi6siKGThW1oZXHR+AXYxem9dRHKendcxZU0tVN5q21Zd7jc7M1
         4nEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.58 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q527xoYJJBQO5lD6tny9FgG0uRlEMMXTchqmanAz9TU=;
        b=myERi5Etrsrrh0EQfP9T5K+XHvrz/DryV3acPYKO8042KwAOt6tw8m8mUR9he6B/zB
         hUqk1+lYVI+yICePa7Gyxy0s3e2S5OEgTyafp3xNQlxa9wRThHHKUzXDDa1UwSMBs5pM
         uIFUPONfn+kewuG5vTcBWORHRh+eBpMwlGfQfaGkPVw0MxX1qsDoMwQ1gCHGVg5Pxwlo
         vpBFDBP5csrY69eRewJKo6IFpcxDUk4k2Z2UYK6uw6iq1/y+Bxxxe1YWov7jzqSAvAOO
         bbF/2nqGBC5zdsLWQDllABR/M2VaWJ4PnblRdFSWURqXVa26oVikF55dMUPgj7HgKkyx
         f/5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q527xoYJJBQO5lD6tny9FgG0uRlEMMXTchqmanAz9TU=;
        b=KWvqqgBThGQkTsDPu22fvGJyH4e9uHCZfm/YBi0Iv0vaDozfZR6S8+1fgHK0XJUcod
         vkZU3xel9A/kcwWDIpCiA3h7gJDygvj+CNg7TxcOVdvKwVWAyB2P1XaVG6jg0OdSuGw8
         bg/EsMYCeYEdys/8FvIIY1ufeJpZeuip1Vd+y2b4PoELayAhWB0yJlRrgSTcgsOgqAAQ
         tTq3DBEgOkExrYIBALSF4j2WrHU7v3Ox1IDt2Ku1ILBto0hvHizhMYGSKnJZ/wOkiMeF
         DBjbpufDOPKfkj8bCxPqs4dPRNZgJNNqMepKxNiHeMiqgsQoHZwEO+Kfnaf8qpD6Umqz
         74Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3lgixFd30GV2jBiaWyvLhRWvM/xQR2SLKDIB8qUyzrNFScFlh4
	gGT8drF3YQTEN5duiql7GU0=
X-Google-Smtp-Source: ADFU+vvU108K3WPT8FU6DIT4OjvxVBQcAp9WJwLfkivyueKl4aols6Pm2O2weAZEuqburx0jl7uS/Q==
X-Received: by 2002:a81:4b4d:: with SMTP id y74mr9594076ywa.271.1583658011558;
        Sun, 08 Mar 2020 01:00:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7801:: with SMTP id t1ls546218ywc.7.gmail; Sun, 08 Mar
 2020 01:00:09 -0800 (PST)
X-Received: by 2002:a81:9bc2:: with SMTP id s185mr12627685ywg.55.1583658009619;
        Sun, 08 Mar 2020 01:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583658009; cv=none;
        d=google.com; s=arc-20160816;
        b=voudwZIX2y2WPFafu5wC6h97Qn2sOmrcMlXf3tj4Ye8llxuI9rw+CkQ/9L6/aLQSdx
         /sXEJ/vWbbx99vkZeQpfSUXViG75LUuirXKzWxXGapivVyNCq7Hkly4ULGTFrHaV1fgD
         OQlmyYe/mzeFIrN2XjB6VfNHsrGD/3VfbRtcmXmoTTBbr3HCl3SxO6AdXRMlgoUUKUpB
         6wP/e+FUk4Acid0Wzqpc7lZRZCgN6OyDCT8dqSy9gO5Vo/PmbonZwNOeZkLgY2NoVSPl
         4OuWmE3pX+16PMZJi+aOhGjBVYJsuebfkaB8/GGLxY29j1GWlsUrpWUksoelOx6yoBve
         ndmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=YU2QrtcH8MFqMfIIMzBZy1azCNGzFHBSgTQ4knY012Q=;
        b=vllo5s5C9q5QrByLFlW7XCxAw/Cd1C7aE7PFdCiYBY0FHSE53dgbYxsExwBKg0zatp
         Ki1sqtOEv0Xd/glcWD6Vr3y9uNjMUaPkPuQhbBzx+0NHFQwzXIL6KQ5W+vm/iqUwg+Si
         8D9LnDRPt2WhENnswHA0oMKAyMpzAHEn0G3eiqU24WVeipVlaUGSNp7nJrw+9jlEmp7O
         dGA250Eji8bF6qaBHIYQdvpglkTuC2R5i88qF9SSusczjHyl+acVkL0bkYeW9YX5VKlS
         E/dyrcwlXB4Np1qnX/ryhIBmIoboi70pKfgQ9qPfTJj7KSTPzX9qNpMg0QIMqut99aQc
         IbqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.58 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0058.hostedemail.com. [216.40.44.58])
        by gmr-mx.google.com with ESMTPS id m136si394323ywd.1.2020.03.08.01.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 01:00:09 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.58 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.58;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 0C66D1004E724;
	Sun,  8 Mar 2020 09:00:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:1981:2110:2194:2199:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:5007:6119:7903:10004:10226:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14659:21080:21433:21451:21611:21627:21740:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: sign64_1254e082133d
X-Filterd-Recvd-Size: 2023
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 09:00:07 +0000 (UTC)
Message-ID: <18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Andrew Morton
	 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Date: Sun, 08 Mar 2020 00:58:29 -0800
In-Reply-To: <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
	 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
	 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
	 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
	 <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.58 is neither permitted nor denied by best guess
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

On Sun, 2020-03-08 at 01:11 -0600, Gustavo A. R. Silva wrote:
> On 3/8/20 01:02, Joe Perches wrote:
> > > or if you are suggesting that
> > > the maintainers will have the predisposition of applying
> > > patches that will modify their coding style and then go and
> > > willingly fix that. I doubt the latter, though.
> > 
> > If any do actually use the script, I guess we'll see.
> > 
> Yep. In the meantime is a NACK from me for this version
> of your patch.

Generic code reformatters of comments to code are not
particularly common.

Instead of suggesting a nak for something that works
pretty well, it would perhaps be more fruitful if you
were to try either to write something else or try to
improve the existing code.

I'd be interested in seeing whatever code you produce.

cheers, Joe


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/18d7df753cb90d6c6f5a6b5e2a12b4c102ac8749.camel%40perches.com.
