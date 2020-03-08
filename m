Return-Path: <clang-built-linux+bncBDY3NC743AGBBYVRSLZQKGQEMLFJA7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08117D221
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 08:04:04 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id w184sf1471275vkb.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 23:04:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583651043; cv=pass;
        d=google.com; s=arc-20160816;
        b=i05ezH/E1IKqDboHOUAcC4KdYffl+huHKl/xE/RPeqmGgTCs72y1prHBSpr+VYbBYU
         0wWJO8Hr+tQlYyUhXD4TSESqoXmbicdYEjU5UZlrvEQnqH1KTeP9BbdguwUHQUuAI4bo
         XosU4QEl/+7D43yqPpbxLSBM7aP3L8G65QPh4xnoG1ze+COf0TDJE2xohIDygpiLmvSK
         +Lm+nLwApIzS4n7rZ7Frs8Hq/kSa6y6A0/AT0kn6sA1rPF3JZPPuOaFrpsTKhK7xJdgD
         tLWzuuHG4zg1AGWpDibfMn4WWz1Lj+nWcOyV/jrn3vp6HKpnPaKo8ZdCBkCij7Fc/bPh
         9MwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Ncx2X75h3/FZ1YNiQMcGoFtfsFQnK75BKREcXBEYC/Q=;
        b=gMqDq9fSSfJNc3DFI4d8PPY0ow/C/WQE/E99rNEp2TmlHdVOeAV42OiAEE1dwvJXTH
         F4aGA4Ci2YsymKNiF6dZxYC9K4YlJILQ4kXw2KM/FteNUpO30Ku9tC7qklZ3gphpNii9
         Y0Bp4R0tsDxUtFghUVGn7+mmKMjgHkkgh+luadGzV+x4qGiLgPMC6XnBqNfPrNujdkXL
         boKqctbk8oTOCCaI0L2WLq024ju1BAVkcJMkbIfzFSh/5GpUzR/U+Abh4GOKy712m2cd
         SJdzIkHq0XRhTQUEpbg9Ii5aRNKxrRnJu3kJ4L87PT3XJWUO40BvIfTxcgMzx6B/0DjD
         lU/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.241 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ncx2X75h3/FZ1YNiQMcGoFtfsFQnK75BKREcXBEYC/Q=;
        b=EVvHUWEUJ7nrNvDzwPxE9C4u5lNWcV//BywxAGu/Vh1AGjjFGl38WeIkst6cXL8S+P
         qcCM85fB0oPNH/l1X0jHpu7VNEPV4fuThQBMiM8mcVFTnEZv0Oe1FJfP8mXBA0bTGqmn
         9WPGvK09nYm+kRuvMjy9+qakmRJEsMf+0fOq6OBLf9LT+sD2RbvO64MXmmve3vlTRNHi
         S9Cqd3RzOOPbhNpEbOve5N1R0V2n3FMxw6ldfyiKE1fb+8BOKFhCSWGp5/cAvm7ZgJ/h
         PnP+KWAts9InicwGHCoFUPnyiRhiDNZr2xPbPIBZSunp2wvVsM0QSK5cs1szQ0c1v8zG
         WBCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ncx2X75h3/FZ1YNiQMcGoFtfsFQnK75BKREcXBEYC/Q=;
        b=fuQDn1hBsyGpq+FJbuP0v7O61y1yQ+FQTz8CeQ+gjU8CYk9QfZNxb6C+pSjcV4Gnlq
         5lMhgbMQYitbP7/bLYe6g0Za9LcWkeYrxtN+QIsm1e+zs6q3lOjHDwdCMtedKDRPjJmH
         5NRFd9g6V9Z/jOY01kpkwx+btS3HMbmdBEGySrLA0dNEqNK3hlhJPxBxgDfB+k+CKA/0
         LEwlLoAjjeEiSueU1yF1ZacRYaz6ONR5jeBgCaO6KaqiS9aBPCvQEJKVq7wS0iVjaMex
         m5FVwejSFOHOfwAAyEMTf8ungjuds/xnk5qkG0gsSWl7MGS+IAUp4qG0jvdgVV2kDuzf
         LRng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0yQ8HL5mbFs4m0mx5ieKQwu7bjldTiAweztOSXPIfJChRkXcWt
	PwDYDb4pxEF45b2Jh6fIHCc=
X-Google-Smtp-Source: ADFU+vusaxD7H57WzlVsbYsi4STD3OEhI/s0/ptANaBlduYL5Q3KehyNnRGpsJgQwccNOlwbNrE7+Q==
X-Received: by 2002:a67:ed4a:: with SMTP id m10mr6993790vsp.82.1583651042693;
        Sat, 07 Mar 2020 23:04:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7112:: with SMTP id x18ls456020uan.5.gmail; Sat, 07 Mar
 2020 23:04:02 -0800 (PST)
X-Received: by 2002:ab0:3089:: with SMTP id h9mr5907313ual.48.1583651042366;
        Sat, 07 Mar 2020 23:04:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583651042; cv=none;
        d=google.com; s=arc-20160816;
        b=zjoTjT3myryoE0xnww135CCL708YIVcw+e0bz7pO9BOpNbre5GVurG5EhKF3Yvy1Qa
         sy2tvjPiglFWbmW9dGDzd6V9Qxg0qhJZud4vTRU9WG0wFxBXLc7gov69hLtKIEMjpRsy
         fKTrKfStkdmyCTCzDE1hlJOpaRebNCHcBBcvC8rE4+KwKRfXBctq5HYGFwhl52Gy7QKM
         Z/o2RwbF7YqHyq79uhaKmGQhnkxEvZL48v7Sk4s7GM83Jk0jx9ZZOpXrMpUr8dpqhUsR
         AXCqakAXq5qWfWKUm0+is0BjVtfZXBm2kjI5QqhK/L8P9eTtWV+g/exFeHY/aBJu8wh9
         HaWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=1ZKlowfXTuUQXF4vWRur71+YD6KOFGygXPc3SoI0dk0=;
        b=Hy74fmBHXFUPj3/m1fEauqilkIAi/FPdsOc0ZChTuy3rM+7VdD9H+lnCkpX1cLh+ck
         B0RkG/4qaVJDXqS6U2c06HNXu+Zo4wy3fn4xZVQnpvujp4biwqvuRWr+zfSROjbPNhTb
         2V1Tj96oIOJwP8frGAHwHuKJ7kUXADlPZI+F2yl7GSHQXn/uvUdojIAf1lJklry867KR
         mn++npLRB8BOrOLYwWNnlYebJ/fR1+XpOi2PY2gHGxdSgR3ra443XnTjecksVfWRPFOP
         WtzIrVDgohDgT9HbfqOSCzhRSRwrzRFGQX2ar1moHfMEudADnqtXlDhbUB3yERMJf68q
         jJiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.241 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0241.hostedemail.com. [216.40.44.241])
        by gmr-mx.google.com with ESMTPS id o21si376467uaj.1.2020.03.07.23.04.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 23:04:02 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.241 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.241;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id C87A4181D3417;
	Sun,  8 Mar 2020 07:04:01 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:968:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:2895:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7903:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14659:21080:21627:21740:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: form16_5f6d69e56317
X-Filterd-Recvd-Size: 2200
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 07:04:00 +0000 (UTC)
Message-ID: <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Andrew Morton
	 <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Date: Sat, 07 Mar 2020 23:02:23 -0800
In-Reply-To: <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
	 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
	 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.241 is neither permitted nor denied by best guess
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

On Sun, 2020-03-08 at 00:46 -0600, Gustavo A. R. Silva wrote:
> 
> On 3/7/20 21:01, Joe Perches wrote:
> > On Sat, 2020-03-07 at 15:30 -0600, Gustavo A. R. Silva wrote:
> > > Some people consistently add blank lines as part of their code style,
> > > and if I were
> > > one of those people, I wouldn't like to have such lines removed.
> > 
> > It's a patch generator, it's not perfect.
> > Nothing is nor ever will be.
> 
> Wise words. The thing is that this is feedback over a proposed
> patch.
> 
> > It's quite simple to add blank lines if that's
> > what any maintainer desires.
> > 
> 
> I'm not sure if you are saying that it's not a problem to
> update your proposed patch,

It's not a problem with my proposed patch.
Consistency is good.

Nearly all uses in mm do not have blank lines
after break.

> or if you are suggesting that
> the maintainers will have the predisposition of applying
> patches that will modify their coding style and then go and
> willingly fix that. I doubt the latter, though.

If any do actually use the script, I guess we'll see.

> --
> Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/259f405155a948f90229d3fc8cad928d434b46f9.camel%40perches.com.
