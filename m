Return-Path: <clang-built-linux+bncBCYNDXU6WYMRBPHC2OBAMGQED5247TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA3B342509
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 19:45:17 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id h5sf22171061wrr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616179517; cv=pass;
        d=google.com; s=arc-20160816;
        b=xAaIMQ1J6qZwFo2WVqGDtWqS7uAdbnAkXFM1Hsnkd4C4QMJDg9nVdkBh29nwS2oXsn
         +aenUpEeJnbCDgUn334ejSHj5S7xmimgZG2tTcnLJap0QgfT/fG5Z5nG2MRaN/xoyVCu
         up1n0J2EUtyYJ+TSI/ejKTjyDk+9n1EhIQ/l5PxhBK+5tPZ4LFFuWtGdG3snQjCb5a0m
         78nly+f66zCGE+0Y3/U9XWoV3G7HRqekHEaE6QMNEHtcfNYQtHpKwOHP8H7oLc0yOG9z
         9XonHHFkjd9ccGMMPlErMBhgjPnCb1ZlSXeYzGtj4M4+EwHiA2yTlPYaMzvvdHPFQ28q
         etCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=a0achiUNmT54Wukw2FiDe3qTGVUFBtjEyD+Du8KDvek=;
        b=tGO73Du5xSKC1zp9qhTy9TsOYI+BH5s7Lb1XHoEEK6i9u98D01136cI64h0NQogola
         9r5FKaxmAtlz68fNFS2w+2J0tUZfuphuouI6H3HfoKMHykeHUXiw7MjBzvPlDIDN3rl5
         8+vP1aODQwxwOEXSHwlZNkmZsZRcbTbtVc86BwF2Pm4APNmG5QL2HmGUfB9O0YET+0so
         XizJvMSEFmd6mIIpdJPP+RgIuCUoXBR57YNDexsjHvumoXxr4AG4WehKshAVwKLo9NzF
         BFkRObyHFs5oEU+XVQVEfjkDhgpp08wBTWzfPnN5NymYDOnDKNDQ+hlKyC6bQjsH44jV
         xRMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAu4xKRl;
       spf=pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a0achiUNmT54Wukw2FiDe3qTGVUFBtjEyD+Du8KDvek=;
        b=JFoVn1X9ksNVxq9PVj5dEBASyzPWMLoPxNlSKZoO58M3fJqQ0NB+EgVakVeL4YUELp
         +Fs2NL31SPlTGdErfsefI3QRSKjierr9ryannVDhQ+P76CoRHNu/OTLytMy/71Mz6ZkG
         wSkuV4t3nH3M7ypNw6ooY9VjrrgwTsn09OYZz8d1xoZOcw+BcrIsv04Mg7/Kr/XLt9zr
         vTHj9y/C+Ydk+NNgnwwaDk8v/bLShZN91nsLx6TNxf1e2qlqELRzouDnbr5zcIQP2xY3
         6U/2lWoIPhnuAV2+IgHB3GWKJLBnyM3mVQSZr2ZTP5UMYdnmTMiuX0jbPWJg6+Kb74aK
         gngA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a0achiUNmT54Wukw2FiDe3qTGVUFBtjEyD+Du8KDvek=;
        b=OULaihpPsQpSF2OYleqMLSAcbHHIWiMzO3BLu9o5wwYUYt9VoDkLGz3pwqXOkckUyh
         Gh3hLT4oaOqM0M7XKEctSeYKdlfx9soKlPQATrb7BlkglVeatAPwxUFkvoREtEtwmJC0
         rjZBMzqzlZcDQyX+ulxl3jMZSzj1GitT14sGfndxu/AI5keR2TXLPSpcoz81zi1virZp
         GmFT09RT6Tb65LVvgGqf3nJeI6KPr9BBRm0DBl48QpwccSWNCp6rP3kMjZYV306Dfc5I
         k6XQyZgvQNBIB3ZeE9tM/ZGVBL8A4zqHw9MZFiEcqoIb/zGxzUZywtuY+xq8pygEC5Cu
         p2pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a0achiUNmT54Wukw2FiDe3qTGVUFBtjEyD+Du8KDvek=;
        b=DLNAHzT8Qv/4tOa1KlakZk3aZRjdFeMt2VVQ7wyrKct2NlcLYUxD44ttWYGJjWjBwC
         KI3PvQ4OVw8/r2yJgLeEPbH4gznwOPfbVzo6KHU4Bgnxgexi9FriOkvv/rmebSVZzi1o
         XtVDwSVEfjsmII22ZBNP3BsdiRb+cfcIv8/oUtQRikZTBs1QeuBxjiF2wF8eNRPSwDQ1
         t3Q29XNI+lllhZ6tER3pmkvJi77Lam/8ZP7Bx1ZD0LX8CfB/dAu32i3Wru/uP1E3dw9w
         wU1VuKuPhTeKxiRZzEiGdzcz3ICJAF2IrIU9/XODfireMtpbKRUI9feDEzBWBcGfZNDR
         BNtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531J5yYyTPiUY3MEja0ve3hZWls1JyvYEnijwCasXP56Np5P15Tb
	8Xjf8H0GDjTGnEa6HIBEyVE=
X-Google-Smtp-Source: ABdhPJzaWnon5WJXy262+zrsVg8eHeAL+rtXF+kViAjoDueJgHgPWR2PbBvcfMTjPQZq05bD053WBA==
X-Received: by 2002:adf:c752:: with SMTP id b18mr5871426wrh.233.1616179516914;
        Fri, 19 Mar 2021 11:45:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c763:: with SMTP id x3ls3104576wmk.1.canary-gmail; Fri,
 19 Mar 2021 11:45:16 -0700 (PDT)
X-Received: by 2002:a1c:7714:: with SMTP id t20mr4833116wmi.107.1616179516074;
        Fri, 19 Mar 2021 11:45:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616179516; cv=none;
        d=google.com; s=arc-20160816;
        b=SOTOPCgJ19/82t6xOKFztgJzyb16EjUh+Ec8NQlg4wURS+3l6IuA7ttrRuv4SSbyFi
         CuBeqpNJV/Nel0taidAA38YSAI7WRFrSw/vcm5GKMOCd+k3mdivXPa1TQnnow6NkORK2
         3bYMgAJie123iSFS+AFzYDXbFUN4EE2iJutLZuLXmRVsdaO3A0hwnh3bjLM+UDBVtY1J
         V8yWbr3BIYpgl6j4Q2MgBZyatELIe2bB/2BvDQlqTP4oH8KeWp6+T8ryjnL4aMnyW5ad
         69+hF1+CSHvosKBLqsqXTYKE+8O4SEc8jRvIb1exyCfUy2HTqedv9vI2rLvqs6pXFRLf
         Lijg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=piEZSb3bJhSqagMYdxkJ6f3yXeKXOaHvDayc4eqtmSs=;
        b=yZQi59NM5jWMuMSK5MXbkbVH4pdYY6ST4FTTrx4Kzq3WgIJWOkINBMAJtuVciL/1SE
         O7jloH2O+VRHqsmXQcftEH9zMwpPQ9LIO36xGIFVOIEBtTklTSLBCh6XswmAv7/iyjbz
         Xz8HuhbJnhB1YjMar6neark2mwqgyCrbVU4oe4qs315oU/wG4XZwsaT3MfCkqvDt1bTB
         GEXJzPrVe0Dr+TIMnkP1HdRXB7Uw7szZ/Hh0EKO8I3Yv5iEX2ZPAXIEB7PAcPQG8Izl1
         3q+0k0Z4MZuZYPeZsZ/G6cXJfYGrL5ZOdlL1jHg60Sr2vZ0JdFNORWhTT+uFXAMMnDth
         ekJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAu4xKRl;
       spf=pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id r11si259087wrm.1.2021.03.19.11.45.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 11:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id r12so11326096ejr.5
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 11:45:16 -0700 (PDT)
X-Received: by 2002:a17:907:9863:: with SMTP id ko3mr5989956ejc.543.1616179515766;
        Fri, 19 Mar 2021 11:45:15 -0700 (PDT)
Received: from Ansuel-xps.localdomain (host-79-34-220-97.business.telecomitalia.it. [79.34.220.97])
        by smtp.gmail.com with ESMTPSA id m9sm4086461ejo.65.2021.03.19.11.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 11:45:15 -0700 (PDT)
Date: Fri, 19 Mar 2021 19:45:13 +0100
From: Ansuel Smith <ansuelsmth@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clang-format: Update ColumnLimit
Message-ID: <YFTxOcf56lPBi2sb@Ansuel-xps.localdomain>
References: <20210319183714.8463-1-ansuelsmth@gmail.com>
 <20210319184234.jsudy6solmtrq6vz@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210319184234.jsudy6solmtrq6vz@archlinux-ax161>
X-Original-Sender: ansuelsmth@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oAu4xKRl;       spf=pass
 (google.com: domain of ansuelsmth@gmail.com designates 2a00:1450:4864:20::633
 as permitted sender) smtp.mailfrom=ansuelsmth@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Mar 19, 2021 at 11:42:34AM -0700, Nathan Chancellor wrote:
> On Fri, Mar 19, 2021 at 07:37:14PM +0100, Ansuel Smith wrote:
> > Update ColumnLimit value, changed from 80 to 100.
> > 
> > Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> > ---
> >  .clang-format | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/.clang-format b/.clang-format
> > index c24b147cac01..3212542df113 100644
> > --- a/.clang-format
> > +++ b/.clang-format
> > @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
> >  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
> >  BreakAfterJavaFieldAnnotations: false
> >  BreakStringLiterals: false
> > -ColumnLimit: 80
> > +ColumnLimit: 100
> >  CommentPragmas: '^ IWYU pragma:'
> >  #CompactNamespaces: false # Unknown to clang-format-4.0
> >  ConstructorInitializerAllOnOneLineOrOnePerLine: false
> > -- 
> > 2.30.2
> > 
> 
> Not sure how opinions have changed since but this has come up before:
> 
> https://lore.kernel.org/r/20200610125147.2782142-1-christian.brauner@ubuntu.com/
> 

Sorry, didn't notice that. Considering that checkpatch complains and
some reviewers actually state that 100 is the new limit, I think it's
time to update the file.

> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFTxOcf56lPBi2sb%40Ansuel-xps.localdomain.
