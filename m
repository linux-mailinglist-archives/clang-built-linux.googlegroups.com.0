Return-Path: <clang-built-linux+bncBDY3NC743AGBB6XNTP5AKGQEH25J6WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 710F2253AC8
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 01:57:47 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id w14sf1900125otj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 16:57:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598486266; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZ4/XWH7DfK2phL8EFCvtgISfP89xXOPhXPaiMtIOMTrbvYEgOk0uSG70z9fAhGlzR
         4oXb3BymxKBlSC+RazqYhLsJLUwxuSnLEStUQVnsT+SsblCFAcuDvUXG1V0rw/Y028JR
         0zE8SEH8oD/knhfnJcAH/ktkDHyTrxpJT/030Hgs5qnPP9nn9raq1ntpyieDmyn+qQxN
         RD6bdz522BqfYYdh5eQupeM7mgKYj9JO8bWuG2ZkKh197RGbCrTmm4xNkwWH+2fxSW+F
         oTiJwgkolEj923mAvwiQ18jTbyOVCFv+0FSDouyKNgwbMLFCzvXeVuUdatHr3+RxhT98
         rHxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=OcpjXKm0WnWg7wxKKZq7NNpu5lqR0Wa5utUJm5SlsbE=;
        b=o1myr6zFdBRm6mjzt4P5dnljD3gOAzKRSCrg/bx9iuhkapKv2fB8xqd1quB/3tLabt
         cwS7ehWJKk2ByDnOKZK1x39KkhRHfoloXgtZfh+CgniVNN32DEO610nzruTJURwhzBK2
         Q5emS9WY+DJhUlvBu8VKL2IaMF4e5Yo4zuKxLuOGBtN0ybZSh8Ezvfle20CdodOkDXPN
         LxfHJhSJDhQtZ9lggsc9qbD9EbFpWZwH5FEHkLsTxG1e36e2dDr7pq5sP21nAjpPpPrr
         5Zz4HFNxHzg9hkecUDMALhONutSIIf3LBHsWacebDczglRFAh026pSmA1Df8+VHMDJwA
         Xo4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OcpjXKm0WnWg7wxKKZq7NNpu5lqR0Wa5utUJm5SlsbE=;
        b=LVyLKitbG1/4zTBZMPs4d1UVcNXKJQDCOuN3jJ5Z1nn/uPZfgT/Zw7DEQOPsEqmrE3
         IjEnm+S/OpRNffHOwCTwNj17K3bmfG54zdSz5QGUB3m1lQ619nXYv+bZ0w7sZ2T/a70m
         /VZunNc6YCCilvpxbdcqmnxQiN5msKuhTlPekOOHVBG14B1SkpvYmpujUvYNMA/7P5oH
         pGSkHjq/oJ0LuGd0icQg4boaeJiwbZz/Q+rWRlBnPgStLt2cwrkkMGnJtzpGz9/kzMsD
         3tE1qDGIwrq56bici2OZZJk5kCDur2k948Rry13wZ/bIM+w2w/QKKioj1GAIxx4e79C/
         sdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcpjXKm0WnWg7wxKKZq7NNpu5lqR0Wa5utUJm5SlsbE=;
        b=QZ7oKmZcp54vRpIb75HNQhJV37XOQ/xXRcVwXfJOfWDG5ZGABuqYNrT1BUKC1R2R4M
         5Iuj3wpnKQjlj/rALb7aDE1SwaFB7OlikWqoKwOa1JbErRqrN8bPoFNN++IfN339v7bn
         ah0y+IR6rtzjd82YQYIQ52zVgZX0YNr3xZYmTSpP9rMUuAey6mrDaJwG6B+Y7+UD5JwP
         99fWoHBjLAkwhmUNm2OEROYlVW3kBoD1pd8ilZHl8zqPBbvv4IxFTONElqMxoMGMYcPA
         RWfHe+xsfRsL9PMMOMl0jOa2h/g+uXMUEae743zhugNvFrppox56Eg1wV6QVlt1yfC0j
         Dtow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533goCpbbFZTETCOlRIdiMUnJH3OWmuqYMbTMzysZ6czByRft/5X
	U2EfnAV6qb9MQDEuPd3RtFI=
X-Google-Smtp-Source: ABdhPJy8hZx9sUNv//CAhTLuKrXtoktTNlOR+rqyiSWjwVzQishRPlzYmvTb/udBTanpclNFhMU3eA==
X-Received: by 2002:a05:6830:20d1:: with SMTP id z17mr178943otq.179.1598486266248;
        Wed, 26 Aug 2020 16:57:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:de07:: with SMTP id y7ls35478oot.6.gmail; Wed, 26 Aug
 2020 16:57:45 -0700 (PDT)
X-Received: by 2002:a4a:c3c5:: with SMTP id e5mr12461602ooq.52.1598486265904;
        Wed, 26 Aug 2020 16:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598486265; cv=none;
        d=google.com; s=arc-20160816;
        b=sZzFYz0pnD6dR4iNPQaxbiGdeTCAAk4bLX5SI/hFoiVZJohETNftxVLadWHOSr4JTQ
         teOofgWrGH33t1o1qzrYf9pelrDN05mFSbpY0usa8u4riPhKNX7Z1jshnl8kAUmHtYyT
         eLwUTePYRvZfuYS6/zY1d7OagtN7wlH+Jn9Wywo+Tqoy2hCBK6V0+rtA6+RvV30/zFtM
         wb24OHQMaI6N1ysjcoeP2W7d+bxBClm3absGplae+UZE6e/NG9V0SiT+MywM+NLZD1OZ
         3Dbm0ZY1s3X22YmTQ91KnAYmSz2CmxpZJltkFs5QDvA3ltvs0DTsuKmE8Wd7gCB2/s4x
         4XAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=XjRtqeVmeakk413zBti4BrZS90+U0yu+BD4CWPb1Ld0=;
        b=V/IdXKV3n6/41LHbzn+JzJK9sWYn50Zy24qBnNhGHWnJvxr9htmF/WNHBFoUsXcVwK
         Omr5e326eBLHH2EbJjopDyeK21Crs91tBFfqQNFlAvCJgyJeppZKXCesETANrE2fXW0N
         bK29k+E/hnkyOtcshbtxpdSZvFajTslGxa95ijrDA7d/nQFbCqzJNrPSJEkewXu/Lk9Y
         Np5aiDpDjJkCpSnw0GSWMZ2yEvNIb1g4jYGQAVNtozwBDFrlW59BhCfIbB7iCfJpgqOr
         nBHB6WaNL8uWdDvzsVdN/w/LhWIaOLn5qLZfFCd7GYHYvn7eQP0WZ0FcwQ2IFaCQfk5I
         VKjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0227.hostedemail.com. [216.40.44.227])
        by gmr-mx.google.com with ESMTPS id i19si30045oie.3.2020.08.26.16.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 16:57:45 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.227;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 132A318000BE0;
	Wed, 26 Aug 2020 23:57:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2568:2628:2682:2685:2828:2859:2898:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6742:7903:9025:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13161:13229:13439:14096:14097:14181:14659:14721:21080:21451:21627:21990:30054:30060:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: ocean54_1a016df27068
X-Filterd-Recvd-Size: 3604
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Wed, 26 Aug 2020 23:57:42 +0000 (UTC)
Message-ID: <77428f28620d4e5ecad1556396f2b0f8f0daef41.camel@perches.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, Andy
 Lavr <andy.lavr@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, Sami Tolvanen
 <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,  Alexandru Ardelean
 <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>
Date: Wed, 26 Aug 2020 16:57:41 -0700
In-Reply-To: <202008261627.7B2B02A@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
	 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
	 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
	 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
	 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
	 <202008261627.7B2B02A@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.227 is neither permitted nor denied by best guess
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

On Wed, 2020-08-26 at 16:38 -0700, Kees Cook wrote:
> On Thu, Aug 27, 2020 at 07:59:45AM +0900, Masahiro Yamada wrote:
[]
> > OK, then stpcpy(), strcpy() and sprintf()
> > have the same level of unsafety.
> 
> Yes. And even snprintf() is dangerous because its return value is how
> much it WOULD have written, which when (commonly) used as an offset for
> further pointer writes, causes OOB writes too. :(
> https://github.com/KSPP/linux/issues/105
> 
> > strcpy() is used everywhere.
> 
> Yes. It's very frustrating, but it's not an excuse to continue
> using it nor introducing more bad APIs.
> 
> $ git grep '\bstrcpy\b' | wc -l
> 2212
> $ git grep '\bstrncpy\b' | wc -l
> 751
> $ git grep '\bstrlcpy\b' | wc -l
> 1712
> 
> $ git grep '\bstrscpy\b' | wc -l
> 1066
> 
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strcpy
> https://github.com/KSPP/linux/issues/88
> 
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> https://github.com/KSPP/linux/issues/89
> 
> https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> https://github.com/KSPP/linux/issues/90
> 
> We have no way right now to block the addition of deprecated API usage,
> which makes ever catching up on this replacement very challenging.

These could be added to checkpatch's deprecated_api test.
---
 scripts/checkpatch.pl | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 149518d2a6a7..f9ccb2a63a95 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -605,6 +605,9 @@ foreach my $entry (@mode_permission_funcs) {
 $mode_perms_search = "(?:${mode_perms_search})";
 
 our %deprecated_apis = (
+	"strcpy"				=> "strscpy",
+	"strncpy"				=> "strscpy",
+	"strlcpy"				=> "strscpy",
 	"synchronize_rcu_bh"			=> "synchronize_rcu",
 	"synchronize_rcu_bh_expedited"		=> "synchronize_rcu_expedited",
 	"call_rcu_bh"				=> "call_rcu",


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77428f28620d4e5ecad1556396f2b0f8f0daef41.camel%40perches.com.
