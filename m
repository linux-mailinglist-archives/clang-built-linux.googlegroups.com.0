Return-Path: <clang-built-linux+bncBDG5DB7V6IBBB2OMUCGAMGQERFDGO4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 89962447539
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 20:18:02 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id l9-20020a2e8349000000b00218c7c981bcsf446437ljh.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 11:18:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636312682; cv=pass;
        d=google.com; s=arc-20160816;
        b=T8rNjO5N6HZeGVetDH/6s+3kHwZ4ufOJ3XyXjtZ46kpaHD1HLIt6Dng8AzVq/4fWN3
         FX+RPknNdoie/uZ6WcMN9Lp46PjHtiKHPrdORFu2QcUxzZeNsj/KO5XVwn38Y8cDU+xY
         FV1gN8hOCsZ0Oxv8MyOAlS7qPmz0Kgv6+6t4GH4Nk6YdYuzQSslxVK3xIhJmQRA4lZKd
         iBy0m1O0nkwTAsyayA+Z3D7RIvZaycGYb5JbCSCvusjxNZ5N1fypnuWwu0NkInm5UyW8
         2JeYkjI4qNkkhndVTmURbBJ8GoO+t1emW0O0nd8sncMvm6dsX2F0AyEcBCPJeli6FPuS
         XG5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RSIe2HwnEwEOTvt1TdrRUPu2ElctCPtqFVnP5huOli4=;
        b=aTYRmktVHIb1tb3hYVErM1eoOu013PVy9ACqBf4OwnTWG1vdyU+qrwae8vhA8h63jL
         1PSpHaaGtxaCM+eig2cOsIpGZJxm5fTbAlx7aMJnsqQTcACzEVVIy4i3c+VlmZ5lxq1f
         z1avLWRjfCnKHAY/77PuL0fZ6dMbALmUIUM+EXQWkXcaBw6VUxcaMPuykrhyVB5p58N1
         TzQaE3RDar7brqWeSJJ2m4yy7+87o09aPahpL9DIqMS3DLRr2lz0u/3yTTfL6/mvLNZx
         +vpIoPjRnDaQWBkGNYStompKkiFB/ZVwfKEX49WzMAtQlNjIL8aBLCLXdoXHfK8yfts9
         vWuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.221.196.215 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RSIe2HwnEwEOTvt1TdrRUPu2ElctCPtqFVnP5huOli4=;
        b=f23V4rZ290fWgPqvzRPK4ySeAFBbWJ9KjefgxEUMYOZG3NEUTIMRd+UPQ84fcwXi8s
         LqJ5o4OtvZj0Z1ciRriVBjzix4WwcRo0N04TffC1ZtGAJeVBJ4LoCoLs2MI6brPm2avX
         tKAhsQ9Qez79xxLSCLLW6pcI65iqWwRPaL1aa65FH0AhTQdNSTu872BYxT6wu/kzUFRs
         banhGMIEdR38988/V17eTL9LoKQtPt3eXEyK7FKJNIfbrwlrlmYpJX3ImW0SldNDU8/g
         FuOaROdZWsuA30IJ0uCJopk3nWbq70REz4UVsTLPqRFCdtRFqGlhsuUgo7xCWiZgolry
         iD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RSIe2HwnEwEOTvt1TdrRUPu2ElctCPtqFVnP5huOli4=;
        b=ChHUCMM9cRjRSWN+R0jUwTPQqMsonL3zcqI7co1A7smFTDL2zt1mx5TvHhVlzamTKJ
         QbQRIOkAIGnxnoDIgLDddK6QMG44RqdsdYAlGmdQtjYrusTverdaK0DyKRzIQKaPoju/
         1i/1NC+0wZzGmGC9jiJtXZuHVAWONNTYP9lOSw1n8dBeVgWEo2chRU8BUgb8N6zVRxXi
         YV8sbME8525qrQiuyQUi+F5QMEPEVxIOBGHebstiF76DGculVzvaCAEDPIlrzBjQ8gGE
         gJlIPq39KqH0UP2Eeb6eDYu1kulPFLUiHMab70N9g/IsknbsIlBalfdqqWkcv/zQ+l43
         3EHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D9YBLzRRiajlRwKrr/qWO6awTQLK6m2YaPWbnKm1/1zJlBk2f
	6ssAnW4kuXBVYPlYq8lfcME=
X-Google-Smtp-Source: ABdhPJyHVFGyB6e5I5d8h7reC4yCh8FC2IvBcN5qG4Hn7kj+GN3wvlJ/AhicuvlGHvuIabSoIkf/IA==
X-Received: by 2002:a05:6512:10c9:: with SMTP id k9mr20273689lfg.448.1636312682038;
        Sun, 07 Nov 2021 11:18:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a378:: with SMTP id i24ls85074ljn.3.gmail; Sun, 07 Nov
 2021 11:18:00 -0800 (PST)
X-Received: by 2002:a05:651c:218:: with SMTP id y24mr7364798ljn.50.1636312680885;
        Sun, 07 Nov 2021 11:18:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636312680; cv=none;
        d=google.com; s=arc-20160816;
        b=wqndz9c+LrF9Jvjt9IktCw6/OW9VFqZn4F2ENAsVDE1JUKy0e7QiS5Z+h+DM6KhJyR
         YnQfqeIzNSoH1aXZ+JPFfxWZR3xKWBtfZeNiDeon0iWDiSPGelgcTVcyYxF6Os0HlNIq
         M4Hy4URT9PQ8GCWRXluTTBGlZjZgI0u+e2go9pmMEpVAGdwbXuBUrkjytgPjPxn3MH2J
         yc/KyseUcPVvmAdI/VpBMTOku7N12XKsAeikY+mPRkf1pb1w6eNN+tDs3eK1ayAxP5NQ
         t9RCVe5SPOsDt15Gqgly/sZS6t+BsMEGGBHrT42F4CcGQI0nrQ3w+MMYn9UTGSma0kkY
         hA+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=XcQyW9ybmTvGkCq1L7O9kvMSXkHUQG/TH4mlvDp5Yq8=;
        b=CR6vVxca5LOt+qFfDF4QHgPqYvSkwSyLONomgPnyT0dN3A7d/T1j9cYH6rRDtQ9LMB
         K9hDyDtdFir8r1SNaodYRFUyp+g1E08gm2eALjaQlL5/eWK1e2pRw1esKBmKjVp7pIg6
         ok1kpdWg68oBZR+qXNENO6D450ObYZqbGv3UWtMQOSlmbv1VqHU4xc362CIUkmK/CGfj
         gYWOVdElMBsPyJR+oss2pRwdpYUOqGav2fgFFkApAG2i7s9U655rMVzGnz4NI4XINb62
         IXAvA5ao8Dg/0Vx2lyAQ74t165p0AnlFDLB55SM9uRWMXAiT9iehI2ECVccFlQ3zOgYE
         gvMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.221.196.215 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com. [91.221.196.215])
        by gmr-mx.google.com with ESMTPS id t71si664374lff.6.2021.11.07.11.18.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 11:18:00 -0800 (PST)
Received-SPF: neutral (google.com: 91.221.196.215 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) client-ip=91.221.196.215;
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
	by mx1.smtp.larsendata.com (Halon) with ESMTPS
	id 7478f3ef-3fff-11ec-9c3f-0050568c148b;
	Sun, 07 Nov 2021 19:18:14 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: sam@ravnborg.org)
	by mail01.mxhotel.dk (Postfix) with ESMTPSA id 742C3194B77;
	Sun,  7 Nov 2021 20:17:57 +0100 (CET)
Date: Sun, 7 Nov 2021 20:17:55 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: sparclinux@vger.kernel.org, clang-built-linux@googlegroups.com,
	"David S. Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sparc: vdso: remove -nostdlib compiler flag
Message-ID: <YYgmY+zGHadW0EXO@ravnborg.org>
References: <20211107162157.323873-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211107162157.323873-1-masahiroy@kernel.org>
X-Original-Sender: sam@ravnborg.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.221.196.215 is neither permitted nor denied by best guess
 record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
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

Hi Masahiro,

On Mon, Nov 08, 2021 at 01:21:57AM +0900, Masahiro Yamada wrote:
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
> 
> Since commit 3c2b2d9408b1 ("sparc: Really use linker with LDFLAGS."),
> $(LD) is directly used, hence -nostdlib is unneeded.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YYgmY%2BzGHadW0EXO%40ravnborg.org.
