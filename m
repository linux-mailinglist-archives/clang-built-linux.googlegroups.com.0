Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBA5ISLZQKGQETV6ATPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 794F217D210
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 07:43:16 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id i81sf10690364ywa.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 22:43:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583649795; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZTu5njkeJ2J+qjTIaOR16gDeldZPb1fiautpUl3Eu2ywN4GvDJrQ4QRxK41hwfjsaF
         dUfPHRP9AEXy9lIcERy1Bn8he2oH/mE+tOmvdKoK7YjNh5QeVzZbl10iBPTR/MJvuUeW
         211cO5oczr3reiM8GoJIRx3p/hbYzpB09g4sCGZKSlyBb5JzZZbvT0zLBYscODned+HM
         uGvvQhhuOPVwQzhWh08LGsV4L7a6WTRUFtDMH4XwARvxUXOVpVz06n+RSkd2xZ0RIgMn
         BirnQojB5XqluIplzU9EUBe39//MZC3n3M02lWRGwG/ec7frUpX98xnzD+UxlMgp1yx7
         eHPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=YbAwXECYTDXhGEbhuByuXz2Ag+MC2qlYs4rxN3Rz0VY=;
        b=ZDRoNdllLZHabw8DfBCx+lBgJSNOwQrs7xkTxZqmGYYAjj7AwWyp1RaTYU/+E00lZH
         JRdiO41b+6XDeG/ryauePm8ubHkZycEK9lzlzjjrQrpdowUXRmM+cZkHwkVGzNjay2k2
         4tK8eS4cttKboQyAICLmHjyG6x7Vv1MGAzrmRbKApyXRAx17fexgw7pKxIscfEXPxlf3
         cxJ3BCFHF7lGnLuD3pp0vlKJL63r8YxTYObheIKLCTSbpdhN1mz6AzAWMXJjkOrwJpzF
         CsM6zJraehGOz/+cEdGdIaAFLIw3C2aO9YOPfJ26RBWEjYIAc08M3QhgxCOnpjvIYxHu
         5cvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=YytqQvTP;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 50.116.126.2 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbAwXECYTDXhGEbhuByuXz2Ag+MC2qlYs4rxN3Rz0VY=;
        b=FtKlgsqcPaKoQBNRsfs9fyBHqfi80JuT5usKGcIpnc4iz2Qj/B2o3ogrQ0Nj4xGTKc
         Zyv1Pn7sSDTjJ8rAPWOZPwXZgPVTq0ClydgDkFG0nZcAoGlr5pTm38iWowyyV08pdVI2
         KSQBH716NSx1Mpmw3pcO+f78B54d4IkukyYT0S/zlysP/8XLRF7+PkrfuqmITPR/eDRp
         oo42MmwYMyMZhBKdnazl7Bit93f0fzBmdd1wjpbAy3gUbSU8P5uiVw0YovuTXDuddf4I
         NKuBw3xWa5O5B6hq3SnIscIHzR44aaD72AR2KD1ud8AK0dBvY/g/W2xRyX0aKh8V52vl
         KNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbAwXECYTDXhGEbhuByuXz2Ag+MC2qlYs4rxN3Rz0VY=;
        b=ELIO7fIM6kIamNuj1hiFmiQtMivwVN9BTlrIofaBFQ9q7yKCnk4u2ADSDTEQaWYno1
         DHzf01A5DQB1v6ejukebIwiyQrqqrLX5Oyz7dEbdqJOkYpV1t3LBTUW2WrucTUo0QJIu
         UQKAK0bm95z4ZQdkudDijJ++oSg59HRNPBz3l4Lnw/+iAsyOKjIDkDSLtq+fOCRHVf2y
         ARb1V9KTNPK9b0fWq+BfBGB1lSa+BqhTxJIJSXI0m07FxIMlRXKpVXHjrxyNCLUl/qky
         cfh8+xyGJlFX1g1QGOs/LI4J4BSoXz0EzklHJ6aCSXpq4s8Rht87WHwNPgkm3KZuVyFO
         a73g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0yWpZkGu316udlrj1fw1/ttLOQgzxBU9DIMETE3TkFQkLW6QQQ
	BeBCyeaMqhXUCZxGfDLecNg=
X-Google-Smtp-Source: ADFU+vuBa8+uY2IjKYAhVLr86xOrMLXf/vQNz8SBvkx0IOrdmQAdsbtdMQimFpOMmWafY+tWQ1/hBg==
X-Received: by 2002:a25:ccc3:: with SMTP id l186mr12152703ybf.229.1583649795221;
        Sat, 07 Mar 2020 22:43:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e691:: with SMTP id d139ls1694008ybh.4.gmail; Sat, 07
 Mar 2020 22:43:14 -0800 (PST)
X-Received: by 2002:a25:8381:: with SMTP id t1mr11560650ybk.266.1583649794854;
        Sat, 07 Mar 2020 22:43:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583649794; cv=none;
        d=google.com; s=arc-20160816;
        b=lT5WhCWiYByohsnJezAOznG30wi6069+OZbLvtN+/ZfflG7BxB6fMOPinj4+alY82l
         lgvV9PAZD/y9C+mUpLg1lYjCPp9Gg6Ds89W9BXYZdLCKl+nFZAT2squN/nx/wB/G9bDq
         fOcq4qrjJoQvdsNcKgSq2zafE/KGNSMYRUGdSkHfMwCbVL1PqrGL6VYc7cot+4egF7fd
         U6rze9BlTW9k9P+HedIYnj3CrHWBbxKyhWqYNIOuRP5a40dDafkQanL19V4eujdQaHlC
         T0IInaqIZwxoztD1K0euehoJjbmmGAyFVeoyZG3wPsSOrkkMQfl40uqw1qywC+werBol
         C6OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=ktHGEyhcgp3aw4ArMPWHcrGw64bu26lB+fZatzZfI0c=;
        b=ecYCI5PuFI/5RgmvZv5FQ5sWprh9t4j/uCz62ySBRgWV2MDbvoAxvEQ9bfS+GCcltR
         dTt8RXiuLxQT++NHlevqqcSGpne/kjciZrmsKfGuTQdeU9KaXxsuHFV8hpi7iijepIT9
         LG8iqnmFgafsXH+WsFhoT5DTBfv/w43fZOa+LX4sJABoZ4boc90vCGW2fRK5U0Z3toVv
         dFBnJ3XDGpcxAhUQ0EBMAg/3+wsjv2TJyut5HqEA6Y3vOSdsXvA7KboYYDmjGm5t0ZiR
         Kuf69Q9M3p7VzopXqlmPG70ToioYtDyDVvIQ4hDiDEOUzqh+58moE8GOw2lLmNcKdZRQ
         +/4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=YytqQvTP;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 50.116.126.2 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway36.websitewelcome.com (gateway36.websitewelcome.com. [50.116.126.2])
        by gmr-mx.google.com with ESMTPS id x13si560959ybs.4.2020.03.07.22.43.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 22:43:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 50.116.126.2 as permitted sender) client-ip=50.116.126.2;
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway36.websitewelcome.com (Postfix) with ESMTP id 30B914022311E
	for <clang-built-linux@googlegroups.com>; Sat,  7 Mar 2020 23:58:39 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id Apecj19ZpAGTXApecjTDJr; Sun, 08 Mar 2020 00:43:14 -0600
X-Authority-Reason: nr=8
Received: from [201.162.167.15] (port=17590 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jApeb-002vxz-LH; Sun, 08 Mar 2020 00:43:14 -0600
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
Message-ID: <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
Date: Sun, 8 Mar 2020 00:46:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.167.15
X-Source-L: No
X-Exim-ID: 1jApeb-002vxz-LH
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.167.15]:17590
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=YytqQvTP;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 50.116.126.2 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 3/7/20 21:01, Joe Perches wrote:
> On Sat, 2020-03-07 at 15:30 -0600, Gustavo A. R. Silva wrote:
>> Some people consistently add blank lines as part of their code style,
>> and if I were
>> one of those people, I wouldn't like to have such lines removed.
> 
> It's a patch generator, it's not perfect.
> Nothing is nor ever will be.

Wise words. The thing is that this is feedback over a proposed
patch.

> It's quite simple to add blank lines if that's
> what any maintainer desires.
> 

I'm not sure if you are saying that it's not a problem to
update your proposed patch, or if you are suggesting that
the maintainers will have the predisposition of applying
patches that will modify their coding style and then go and
willingly fix that. I doubt the latter, though.

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887%40embeddedor.com.
