Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBI6C7OBQMGQE3RMPCEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C166A365AF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 16:11:48 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id q11-20020a5d87cb0000b02903ef3c4c5374sf4379506ios.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 07:11:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618927907; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgM9/Op47Ee9CwooCDQvhof7ULMGPiqBfjW9wemRMN7++NydJ9veJWgSy1ttXwGB8o
         /7mqlYwvH16TFbkocS2Ff/ifOqHDp8L3JdvwOZlopBztXQQrlI0O2DhbozObgTkhKuwa
         N9IextR1En9Jhm4lP8Ev1GAcUWv76XchKBzO4o8fGsNvcJzwtCoUpYAguFocQhv2dkFb
         D+HdSjuxyL/seZu0ws9nEkcWQ+lOKP0LZWUTHcUMZ91vU+sfkRFQtCAn7CVlGIQy8Vet
         PtCyoDcashSIbeSDWBBG5wXDdL8MEpyeDDinG8BwrD3V9J1OPQJcU73+zSwWGnX/aJyh
         lDhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y76rcndxNTEBNFuirleWtJk6MaFBWiJXF+/nL4J2l1A=;
        b=n8klfhl07jbwLIiDuzdqcMmf4nk0nFG1Qvmt6/Oxp8kbVXWP08K8xD4qfSOViABa8W
         vqyQ0x7tfvIufS0xqDcfTQ2EoeAHI7RpRtDYngeQhp7nKH1oxnYSACp8VelPszTlRpsj
         XIjPzRchTLYzM/rGcLdXfDC/loJb9R5Fqdw8RZTkpzp1OLYBApHaleSqLPeV68BS9TJ9
         Dw7tsdVOkll7h5q/gJhDSJ4MXP7jVYNaeW02iRrG4MDyF2RHP5HrzQNiuVM+A/bVcETr
         c6d7/nwCDrBll9Uj9PYeLVGu5C4nS1o/CFQoERw/4naGYq3iaPp4TN40tbGcAK2kEQQU
         7gvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eBZZRV3B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y76rcndxNTEBNFuirleWtJk6MaFBWiJXF+/nL4J2l1A=;
        b=VmS9h54KmdlQrfVBaA4NzwAlsMaEma2HaYlzqHBjlGqTJpYy1bJILvAuHsDLyIuDZY
         PseEa70q3zYzYzN67s0vwUGHh8Os4groVY72ljiSZBf/sqmX80njNkUgrj3UML7FC8eO
         cMuZ8PtdCeOAJAzzJgZ7uZWtEygWDvJv0mCi71tQU+Vf+cEHqIBfDtIPDJxtTDF+juEL
         SOilbF4Wb3Zg6JUjGyc9Bi4BroRRue0O9Nu5VAiOQy13tyv6ToUcO069E3wjQR9RtQ+S
         hFbsrYLeOfY2OvPsVT0WWgOxpNnSRQVXy38Y8ucetHs9r09xMBG1+QbLxn8i72J5prWM
         9ypA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y76rcndxNTEBNFuirleWtJk6MaFBWiJXF+/nL4J2l1A=;
        b=sOGfSN2g5IlK/yVx0XKnG+1zPOxtFISuyV7FvZiXe1yM4XwG2vDIOgRe32SrliuGGj
         nUeHnREaCiXcFZ91CuermOZ5GFajj7cunOpgpNHpurSDngOR/BCAxb48pruASfty3dhj
         PxI0QXWltb7TtfOWG54lY5Xs1Ux1Qk8/B0CyzhTyxWxoYMtLTnMeCzrrGA0kZ31cTiPV
         S8wnt48VguBMtWNjkmxp6UQ6ULVzY0szgpJvGgegBiRAd+npCvM3qTWc2W+EBkSDEb4u
         lGS7leLAURXD6d5d6CAu5TWgajLNk6RnXokRCnK1xHa9IM0PZ9EU+Y/60251jkbXcUcK
         63nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XAlnVtlvjdGwQri4zZnxsnsMM325o1w2/qQbxnsUfC5MbhVen
	kXmZ/3pq6zSuXETS55AqVoQ=
X-Google-Smtp-Source: ABdhPJw+pxaXop0w0gNMbTq9oI/l2WwGH8cC1NUhq/MVxumrV3lto1UZwZI12z0NKDiq51d623M44w==
X-Received: by 2002:a92:d2cb:: with SMTP id w11mr20831226ilg.225.1618927907264;
        Tue, 20 Apr 2021 07:11:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2811:: with SMTP id l17ls4829296ilf.2.gmail; Tue, 20 Apr
 2021 07:11:46 -0700 (PDT)
X-Received: by 2002:a05:6e02:5d1:: with SMTP id l17mr20657035ils.78.1618927906862;
        Tue, 20 Apr 2021 07:11:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618927906; cv=none;
        d=google.com; s=arc-20160816;
        b=KvTr+kymVogMnOM4ORC0G3xetQfWhcgx6vNs1FZGHP3W8y6/0JwjoQE80pfcv1FFBQ
         y8qjlfrW2xKLAtlmCKhNP1zYLj6/UOwYHNfP1Tz9DQywKXFUT5LjJrL9vZ5AVdlgkS5b
         ldBzce/HLJ4Qb7u53TBokwVJkb+meJHglzUmFDgL/qDCH1xIpav+CZ7nIlNFl1uOUKtz
         DOh4gqgx0gWDR5jxrcfZlCmCvz6GAggVhjiBvQvymnup0EteXz7gvGQW6XgGi748YneB
         l97OQ8SceEPSlNNiJ/DqfaeyNIlCzFxqsSlZ18ffUEOh3MYGK7c0CETOPjmCDPUgPXy8
         JWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=53kuAS6fHnYJ1r6RDDBsF1SOFAr0NUkEXw8S9SiVP4Y=;
        b=sIoL66m+otGE24xPhPc5K1C5kzRm7lZVLZeGaGXFCaon1opfRT8PJPluJ9q0fvoipq
         yVA0HNwa1Gpl+X2iST5X5UBGm82hlW+gHPEWuYn4FpEvxbZlNHeQmFdCwA1+ZSn0MR5O
         VJyyxiyPQxmE98sF8m2Kh9rGWt9fQiTixG1ie3/dfIZrM2C1tiTQJDTyO7w76gTtXlxT
         ibYrmJvo5/t+LDzN3q2yVHcNJTSASnrDSVTe01UWNhuoGBqO7TjcRF/aDOp08wDBHPY0
         LEE5VrH3nSm91vylIs0lisBjYBdZrai/p6DfPNIMB5FiTMCCNWpEcHoGt/U5dDQ1TbY3
         2m5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eBZZRV3B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a13si634254ioc.1.2021.04.20.07.11.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 07:11:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B62A613B0;
	Tue, 20 Apr 2021 14:11:45 +0000 (UTC)
Date: Tue, 20 Apr 2021 10:11:44 -0400
From: Sasha Levin <sashal@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH AUTOSEL 5.4 13/14] gcov: clang: fix clang-11+ build
Message-ID: <YH7hIK+7ujuJaClU@sashalap>
References: <20210419204454.6601-1-sashal@kernel.org>
 <20210419204454.6601-13-sashal@kernel.org>
 <74494183e65ef549fc5596f314db43a8e792d2ff.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <74494183e65ef549fc5596f314db43a8e792d2ff.camel@sipsolutions.net>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eBZZRV3B;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Apr 20, 2021 at 09:01:19AM +0200, Johannes Berg wrote:
>On Mon, 2021-04-19 at 20:44 +0000, Sasha Levin wrote:
>> From: Johannes Berg <johannes.berg@intel.com>
>>
>> [ Upstream commit 04c53de57cb6435738961dace8b1b71d3ecd3c39 ]
>>
>> With clang-11+, the code is broken due to my kvmalloc() conversion
>> (which predated the clang-11 support code) leaving one vmalloc() in
>> place.  Fix that.
>
>This patch might *apply* on 5.4 (and the other kernels you selected it
>for), but then I'm pretty sure it'll be broken, unless you also applied
>the various patches this was actually fixing (my kvmalloc conversion,
>and the clang-11 support).
>
>Also, Linus has (correctly) reverted this patch from mainline, it
>shouldn't have gone there in the first place, probably really should be
>squashed into my kvmalloc conversion patch that's in -mm now.
>
>Sorry if I didn't make that clear enough at the time.
>
>
>In any case, please drop this patch from all stable trees.

Will do, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YH7hIK%2B7ujuJaClU%40sashalap.
