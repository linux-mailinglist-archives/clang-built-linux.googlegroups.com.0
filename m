Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYEHTL3AKGQEPA66XDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C5B1DCE3F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:36:38 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id a69sf5817781pje.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068192; cv=pass;
        d=google.com; s=arc-20160816;
        b=uc5F1HIQ6cSfyoTSQuemROXefuGt3+jPo7KigJ5qyLAmCxrZfpDHN265VUmz2cKNAk
         U+g0CbXYlG5pWytVDIAtzSjWVLvXsQa1rRm/27mCCS8qRCu2ckayFfpvjtMIqBPrW41o
         1vZvmNAhcIl33X+wl55VfBf0IWRBoydb3UjfeGAgfUNJdN4ohO1Nh3eaHbSEAogJ+vhn
         9IdK5Utp/9g3r0KhKdXS/JkzVzJ1dzTfNuXclyG8OtM0M9Xfkm2SdHCkCpI1sSR8LvMO
         g2FIHwKXT82AVtLEiTss7QtEYdpFl/46wTJ1LFGLN0tgNw7tpLQDwx9s2Zr1Epzqv+Bg
         cRIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=57xBgB1ael0OtEFV9FqFQ1lGFXIlK/TPpC+xz3tV7gA=;
        b=Q5DdhQKR7cVTixaO7GB22N82TIwhRyGam5GL56zQ0n4b11zWybwtWfW7jAWOct/5Kv
         evIyauGE9ECSSvQ2vKkx0bTAvrgWBI7Pz04boTuB0PQRWYZYPY72N/28O1qoauuZru8M
         ScSJ00fz+hOL+MthqWk5dRBqOn2ZEQMLDj3Tonzbcjf7RmBwXlU83mnA9skj+bnIBuyE
         ajyqHVGX8E60ANcc56HECKrl7uS4S9GueNxcT91LBP8c2LvVU9mdJ1Zm27/PhdmXhtOg
         rUH5CfB/dsXx09YY5tHoBXCZ2w4OhhyFbLXl2sx9ZBGccCPWRsd3mXrOD6Nc7ga6slM1
         y3yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fiiMcKpG;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=57xBgB1ael0OtEFV9FqFQ1lGFXIlK/TPpC+xz3tV7gA=;
        b=PA6Il/55tcQ1dGUEniYmjlgQrMlC0hYN8EDG7dXFhW57wjNGOjQ83AYIFWS+AXpCbc
         /S0aXFSPD1znL7XX46auiwB7PYtyqba5vmorpEfHz41Bx0gNUq0CNj7tYbXAM1X2fYS9
         5fVLb5/LNyg4ZULhWQq9zo/zbBhLuylED7f5PUf3XTDQj9A6EYwK57YhWuiwMB1D3SRM
         m7F1xuj1/e3SeWsisB21UibGCpu1MLIBzeCQVCn4BaJJvDCar/WaX0QN982EYxfEEMMC
         /cV5P/25n5CvXbCJ/H35qxIxTgjKowBv+dXv3QXgB6uoAjlngBiRoV2OH6mc4+TrcBo2
         V9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=57xBgB1ael0OtEFV9FqFQ1lGFXIlK/TPpC+xz3tV7gA=;
        b=OJxJqX0n7THfcWAK9GJwbncoqfUnEqqTQamYCv0mVfzkPK+F1TkZ3ctnoZtcxyw5g9
         OFP9uJw1e5nxD5P6YkOndw1J6NRU7FTrKrrr7JPiNcZlIsgshc3gijLPAvlRRdav262l
         mG4PfnDjtyWvq8VZ65iGW5xn+yd6t0d2rpsyPblJnpggwxlwPOZpvFogJSqcKupIDri0
         EJBZ5g7QGxS42AlLZrfDaMvXk5TKW2nz/6qf2ih93Hgs/9r+pliI3e2CdpCLWjyRge+0
         BnoLNW8u6R5axaiEecL2FdjgBj45Byv2NAxh5zwekQbEmSVyw/yKXhCIujVo2DoFp6io
         eXVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531H57WNYrhLJYiA1nCyJLajUfyx/Ka46M9/tAuykGqpr51lbExg
	xp6HedZVu0Xi7NjL0lVlB+8=
X-Google-Smtp-Source: ABdhPJwe8ZzuHuFywm1xlQQVxTct7OHmR35IaYBGCrAKPiDO/53/xqaNvQkKJApGuiynEFIB/JL0sA==
X-Received: by 2002:a17:902:ba8e:: with SMTP id k14mr9449281pls.308.1590068192585;
        Thu, 21 May 2020 06:36:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a717:: with SMTP id w23ls842375plq.7.gmail; Thu, 21
 May 2020 06:36:32 -0700 (PDT)
X-Received: by 2002:a17:90b:1482:: with SMTP id js2mr11708938pjb.54.1590068192193;
        Thu, 21 May 2020 06:36:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068192; cv=none;
        d=google.com; s=arc-20160816;
        b=MoXr2SGt4nwGNsz+7OvK2xjRPAg9wLwXBvu1mWlfSFyFw/THQmeTmKRCyPMWFMBjqo
         /FuO3VLLEi7LHVSwVeWGfY78YZP8OsE/u1K+srj+Oq6i6TgXUygwoIx1qwlcb31RqP/h
         bPmjf/eEBUac1l9UcsLoYLGltOsuOgw5lOWJNKfjVnv/U2hRww21C9zoFShr7eRgpn8W
         XXl9l8ubMLqYkDGNEmFW8UgHZE/WVfatQGQueNh5Vf0PnGh1AicTnBESahRg8wgVE2LI
         xcP5h1xtQEc9qWvw1FPAQ9N958q9GfxRA0ETNCZtGMx//qgpZxrcdyG5dACoDA9lsAfW
         3DaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TrxgtGTSAC7ifLG9JVpgD2MapbqmJasl4O3XfSPPhiw=;
        b=aXBblP8qarGe95kAXm44wlBDdi9XdBvbSbJbzxy/HgU7HucxiAdHnl5EAuTXdRqCHs
         S9PB01VRvZ2P5lEZqNb9xk467khyfpug0Y6v4CrbiaT4WINlQC9ieMtTw+0CXtMjuw9S
         2H+kiBGP+fPwcUwrUdCRRCf1R7c7Mf5VyDhnewnLbOd7k+XCVtmOItk6rOfMRdaidJnA
         pszCUJAehsGcFjfz7N7FxaBF3T5ywTsN1tLkYOsHlhwygXmKPx8sfk1Vqz8J9R4Mx96r
         bKkC08gAJ36vXjuT6+MOxMvgMdljMKlEkgT1VS6Xp9ZHhoUBlHP0Utr525PRkVR7Dl4U
         aufg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fiiMcKpG;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si369452pgg.5.2020.05.21.06.36.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 06:36:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 02B1720721;
	Thu, 21 May 2020 13:36:29 +0000 (UTC)
Date: Thu, 21 May 2020 14:36:27 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	bp@alien8.de
Subject: Re: [PATCH -tip v2 00/11] Fix KCSAN for new ONCE (require Clang 11)
Message-ID: <20200521133626.GD6608@willie-the-truck>
References: <20200521110854.114437-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521110854.114437-1-elver@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fiiMcKpG;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 21, 2020 at 01:08:43PM +0200, Marco Elver wrote:
> This patch series is the conclusion to [1], where we determined that due
> to various interactions with no_sanitize attributes and the new
> {READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
> sanitizers are largely untouched, and only KCSAN now has a hard
> dependency on Clang 11. To test, a recent Clang development version will
> suffice [2]. While a little inconvenient for now, it is hoped that in
> future we may be able to fix GCC and re-enable GCC support.
> 
> The patch "kcsan: Restrict supported compilers" contains a detailed list
> of requirements that led to this decision.
> 
> Most of the patches are related to KCSAN, however, the first patch also
> includes an UBSAN related fix and is a dependency for the remaining
> ones. The last 2 patches clean up the attributes by moving them to the
> right place, and fix KASAN's way of defining __no_kasan_or_inline,
> making it consistent with KCSAN.
> 
> The series has been tested by running kcsan-test several times and
> completed successfully.

I've left a few minor comments, but the only one that probably needs a bit
of thought is using data_race() with const non-scalar expressions, since I
think that's now prohibited by these changes. We don't have too many
data_race() users yet, so probably not a big deal, but worth bearing in
mind.

Other than that,

Acked-by: Will Deacon <will@kernel.org>

Thanks!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521133626.GD6608%40willie-the-truck.
