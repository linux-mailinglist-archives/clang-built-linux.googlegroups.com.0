Return-Path: <clang-built-linux+bncBD4LX4523YGBBDNC5SCAMGQEQKB4CRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D1937B263
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 01:19:42 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id g93-20020a9d2de60000b02902e3d740ec6asf9218999otb.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 16:19:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620775181; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0vfFcbiFxzN+SagYAR5u0RLze/ic/CGCPVL8bQVmDgMShfx44Vy/09I62HIH1rVYy
         vmUTAJN7+ADvT/qg6cbXLWKg6yPgBTU4wfO0LUicfVxGNT+ICVFdiVSxoL7x3kwYf0a9
         I9TACrD+wWwh7yQwvq+C/9ucVpV9W8aupC5SVVMV+ebzYeYjsk7j1mLtFhKBoyToU0G7
         37RJd1lRVjyoGo4bqzPmqtNA1TZjQiTk9FJsuYbyil5CB/BB4ybLC2p5MvavynzxFNxV
         YRouKqTOJsy1hkPd2TBoAogpDaAuj5S+ghroOrekjsuii46phIyy7YBSyrWpiZ1O3o6j
         P49Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jmtD2O+IcHfm99AMGi+NONYIybd7P3BDOytIh6y44ck=;
        b=wUsiHJ/VfFVhT+RPZhBvVo1GqGY8bhD+73naHrctDOwaOOS5kbCEFs4x1p91PlHRH3
         VEDRYxuouHYFkUXWAL0Uz3za8xSDlywumUr5EPynt1CvJa5vzayhlkNABpXBeNY/7Kjy
         n24L1OlLPO9d/m/ia3nlApfKVNLg28Cby0HTqYZMU/Mpb4vB+jM+d2F//ravb0+iOuAy
         3PHYlDkjUKemRVlPNgOeCygOfH9+/h4QSqogvGY6wnLiPTlithZ5kWsw/raKJWtG2eOb
         OwAQ3UBRQhTXOVN59X7OMSUMpOinM9CEVP+mwuGYFSqLwW5JOvwch/M4iP5T6wlgUNN0
         owyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jmtD2O+IcHfm99AMGi+NONYIybd7P3BDOytIh6y44ck=;
        b=XEwb7O1YlM6sZzXx8lv8i+ZMfeYLIkyLiAA+88bZRYzuThl9uDs5c0+ZuVlAfQSG8B
         DBiQW4md1ajAShDqU+/VjZdmJR2AHHnZoKjHy6yhgtbjYbxXI5lgzpDR90plMGFB5wvU
         EGO+1OJ4iIbt4hTFWkGbpTEL/AmOS9tU3DQKohNTex3zpqwUlAJR0FN+ZItYRho+cSFU
         lso2sdDQQndHk18aekozN/4zCIUcdeHWkigJPyRymPRyvFij8iQzgKmaHWL7eD4EbaP5
         e0XSltqJGoPy2IN2beYcnOJXkM6U6eBWmdlQLekWycRsodVDquho2SExpJM6tRkpIO/F
         CVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jmtD2O+IcHfm99AMGi+NONYIybd7P3BDOytIh6y44ck=;
        b=l04LWDIemCq9QaHtEszZE4+Ao7mLj1TUwLxMMlHdCS1XMsuRwCJqRt47r1yNlu5OHj
         C1+c3+ZjHywJrgwDMsQjFBcLZ5Cf70GdkJYR+g3WqBayC7x312fZTR0mrXJ+jPgJplgn
         Gzng4KgAVNKM0bs9yFfzHHK/SpsYF4to3lc/SalkzsfOJ0sVtoXxnGXkEBhhK1LApxgm
         ituxPlH+gX9SxnTqb4i6+GkPs9JdEUwVMELMt/Rhx/GX/ubMLNLDvBZA0N4kHk2GxYd1
         N4gNBHgIi8Hkd9uQ/jgjlMk3KocVtX/iCYfAflXQaG6eE9/qgQ4Y6jNlI4bYFInK4CBk
         WDrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324iPfvdh5OMXaRm1EQSAoN5VpOgRd8rxGjYdcI9D3sFZPFGL8f
	9sHPvx2pjliyCQcBJAt+EXE=
X-Google-Smtp-Source: ABdhPJyZ91MFNZCuV1VJKxETaPTnPttgm5JRQm6NnAepg4Vr9rR/3yblprcrhdGWwnmC7etr1mxkxQ==
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr27955577oto.205.1620775181370;
        Tue, 11 May 2021 16:19:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d6e:: with SMTP id l14ls131797oti.10.gmail; Tue,
 11 May 2021 16:19:40 -0700 (PDT)
X-Received: by 2002:a05:6830:124a:: with SMTP id s10mr28223150otp.300.1620775180879;
        Tue, 11 May 2021 16:19:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620775180; cv=none;
        d=google.com; s=arc-20160816;
        b=cbBzwqqmIO6m5BUwLKnYRcd8R9cs204Oly156ZWQeke5OcgHpTtlTPgMcpQj1cwoYG
         2hbmEhuqsMexR1Ayxa8mHdupyFTArWiDjODSIA252QxBPg19UUfuOEHTcB4MwzQ8F7Ch
         q/RfVRndNC20mGhG3qj+INHfEOBx1hka7ClM+xp88mJpjX1JJuOtvh+4roGR3G4NYcrD
         omrKwhhaWJI8u3np9yLIFgbvVXVefOqeZ1oKHy9ct8Q18EtLhlJ/UKclfRiaPIOZA35j
         NMsceAfJVlHUyKFZFlaYxCNQvJxGDk/5D6iVOu396BN2LJb1e9gy58AwkWduNYPxdK3F
         QhFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pqG4flh7w1ZGuOdx+/LMGNzkv39ONsziCDNaEZ/nIDc=;
        b=TyoQ1NiW9VyorJT9u4z2Wb9AMWZJqy27Tk/HoAs3F8WdhpdmGOXQiZCDDpl1lpPMLx
         s7QP8rVYg0C6wobzjO1+XmZKQstWTzc2hKM0CBFT8GuNIkCHcFnsz8I6VPZN2Byc2DGt
         pb0sZnG+YEJhbDq9L5aGODy2HUHOn01zrRrVX+uGvFBi+y43w8PzBChwnjZUpFjEN4Tr
         zBzZjTTz95u7kocczUY+zUmqJKmVrPbqS6qrGjT8MXebjiNw3vCQ27mpWaMiYCGu1ssi
         CFYg1CIJ1ugpus6z+VQGaTJa8i6PW4kGx10ETqbU3JfAuOHbN/Ggkc4YnS19YNUwhwqP
         ri4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id l24si2292417otd.5.2021.05.11.16.19.40
        for <clang-built-linux@googlegroups.com>;
        Tue, 11 May 2021 16:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 14BNGbGN018678;
	Tue, 11 May 2021 18:16:37 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 14BNGZlW018677;
	Tue, 11 May 2021 18:16:35 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 11 May 2021 18:16:35 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Alexey Kardashevskiy <aik@ozlabs.ru>
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, Nicholas Piggin <npiggin@gmail.com>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Message-ID: <20210511231635.GR10366@gate.crashing.org>
References: <20210511044812.267965-1-aik@ozlabs.ru> <20210511112019.GK10366@gate.crashing.org> <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1795b9efa40.27bb.1ca38dd7e845b990cd13d431eb58563d@ozlabs.ru>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, May 11, 2021 at 11:30:17PM +1000, Alexey Kardashevskiy wrote:
> >In any case, please mention the reasoning (and the fact that you are
> >removing these flags!) in the commit message.  Thanks!
> 
> but i did mention this, the last paragraph... they are duplicated.

Oh!  I completely missed those few lines.  Sorry for that :-(

To compensate a bit:

> It still puzzles me why we need -C
> (preserve comments in the preprocessor output) flag here.

It is so that a human can look at the output and read it.  Comments are
very significant to human readers :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511231635.GR10366%40gate.crashing.org.
