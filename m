Return-Path: <clang-built-linux+bncBDY3NC743AGBBNNMUT7AKGQEFIQ4BDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C2D2CDB78
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 17:45:42 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id r16sf1994110ioa.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 08:45:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607013941; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDcyPgPVYkuQX7hJj+y0oconJ2mrE24n3yP1hK12NZ3eo+JsU0Qzm6GCZFYqiPUNng
         R3LR+sQ8Vw5EHrCXGydRcNVRE32kt8mvb1XhNnuz5ZqAEH7qR67Cc3nX6+SHOre9ipX6
         zH8YX39MsMZk36GVGAtJUglid5pqnuxdpPXUcA82t+Jl9fgNFoIJolHZaoPhbLZjsc1S
         CErRwBOqHsGBcBZtKbDtb9FIZcBRApJkFQBDnKwNdjb4z9/WLbZ1sqfww9NIX+QBrjdV
         uG3zKBmoxZk8pdAuU+sj6GXvq07fzKdhOZTrpYZsFyTZpy2XnnUl4lKY9rcag3wRwzHD
         K8cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=riBO0FQwaen41Fc07N2O64oQv+5wvvS+aHwOYL3c/Io=;
        b=ybpCz53sETk9CXxJIe/o1pBDRUkuKnHoPDtYmSPCOjbCb+puakyHGeiQXTK3n0aqBC
         Rhr3ifdZS4WzXcD4A+DKD51h++ix+4cK4DDBYhLEaIXiDCzceR4Kdw8tFrVrXbod0JcI
         bboIECW+EdwXAVP7a5xHJscUMXWeH+In9YaEzPwLloCi4QMfsAA1Ic9QtNReNCilWjah
         Mk6+5AJIMbFagUn2vjBVXc1l8v6Q6fNNACJlipWEDBQ158zMKUx2jPFmjdogUx8z9lmc
         c68r68vNFcAnxW+08AlXj9vKGihB890w4Lot11F4k+RKljsILIzXd/Dl6LvPvoQrLIcZ
         hCSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.189 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=riBO0FQwaen41Fc07N2O64oQv+5wvvS+aHwOYL3c/Io=;
        b=NpusStw5T2NEYetPLADRfLHC87LquG9+uv21tAXUQCxoeWS/wAtAm6LyTP26+1i+8Y
         Ih0JZjHOGdYyVxlwDTAkrDFbxn9eFLlJzVn0GrkWM30JbEtqraJOsAuvZ7bv/7HJQEXG
         BwjzpNUySyvXFey3G/Hg+kupXW+STFOqDLEO6VGq0hSwTOMR3e9Fomm0StZQLH1krntP
         WXJXIynqwT5r+UC3w9ueGZDEeRhdSMHdw6Z8y4MjYyaymCmBYhc52oQWYf0Bdu394VTY
         e9UY83CYXBMGrE6nDp4Hx1TW9uku4h/1VS+B/9s8vH5gfpbmvdDZf9mWIUKwOAQSmIpL
         8ATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=riBO0FQwaen41Fc07N2O64oQv+5wvvS+aHwOYL3c/Io=;
        b=cRsOM1KXjxgLzSwbVBD5y3p7WX9VwqFPCzcyfcagHqmBo5GpPLQDopLRp4sAEcW0dq
         EWK82UnjpYo1vzQXIqKXmdKJgVvJUFcdcD94hz6/Uu+S5ibULXrafos1d55Qk2YbkQIC
         VrLCzl3NyWVPsj9ugf00z9+Y+cmKYdJp7ae+47o0w9IAvwLH+oA6CcNBKMCPM7d31yul
         HPvXiCKXmcWhQUMffrzL/HR1ZqKPeJaNQlk+t1R2tbZg16IjlJfFY+Ggi94ckWux/eSG
         WLjn7OStNWHlWv+E2tJRxsxv/1JjRuLYtpuk3Gm3jAGEHoLqy64JrSkWA+BLoJMuiOXa
         FihQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FIRKpTa/nd+Vo8rtZ+WIixW4fq7u2RpSGfXjf7IOxcfXca4Er
	g2e9R98FSTChvu3zIqRTCHw=
X-Google-Smtp-Source: ABdhPJya+eVrn5y8jaKhCablFp3VfjhF9EWM4rlSye/Br4f0FijXhtftzttsShIwFxjFJfGjf1M+ZQ==
X-Received: by 2002:a92:2801:: with SMTP id l1mr3691740ilf.124.1607013941257;
        Thu, 03 Dec 2020 08:45:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls303890ilj.7.gmail; Thu, 03
 Dec 2020 08:45:40 -0800 (PST)
X-Received: by 2002:a92:cec3:: with SMTP id z3mr3741132ilq.256.1607013940841;
        Thu, 03 Dec 2020 08:45:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607013940; cv=none;
        d=google.com; s=arc-20160816;
        b=sp/jjsZ0ztCuTVv7TKvle7OJ0CgMJlUAXBH5Vd4htfdl59hPkctl5KNCHIe/VYilIS
         XIa764kpCCp2q1FpydJEUMlwSzgaKCwcUsyfRzSFL3UBrmhkJ0tEUZe1j3psNDijnB40
         1EDBJQLUQq8EWG/GoQ5ib7ziDN3LHYdYCXzTZRCXuCF18iWdxApUe505xFboA2TiL17D
         RxEDzQuan5Lj2raKblsjSB3Frac28+imn6dRoNYlA9sGUUZ5zO756X4EqBLflJW61afD
         tB3/vEwl0+rqCxeKn6tzlC2X8H2smHJ171l5JpHcJvWiHBcgL4g7+JixF112362WGfXq
         uLoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=tczd7tk4IJb1s4381mHQQjpiuJay0NoPuxsHrPknLKo=;
        b=F4c3PVwSWDagBrdGAnj9DH2jN3Ma3IWKGQw2ogw6EJM6wL/LcqZHdwJCmi6VWwofqf
         fWcnQXVFDK7UKDlVY1EOoCmKS8IbPa1j7vHKKX5iWoEMv/16VWjg5yo3JjZ/1Kqvqvsq
         E75dS/nrhGCOHv7dDy2FJvVIJb2Zi65y1ndnJXadohS16reoZG2dMwhlFVWzvFWs/bRj
         3k+ncORc3rmOsBHv/zXU+nrNh8bkh8tkCj9KSnjRzpikHEmBSkWiQIwFN+vaaOk9vGsP
         8CF2sdCnDsKQcavG2TpDo8uEJ78uFBB5ciDt7tpjU/C+bWPpK7c49pExAlFOC4JgxHJr
         4hJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.189 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0189.hostedemail.com. [216.40.44.189])
        by gmr-mx.google.com with ESMTPS id j1si118095ilk.3.2020.12.03.08.45.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 08:45:40 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.189 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.189;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 2D823182CED28;
	Thu,  3 Dec 2020 16:45:40 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:2892:3138:3139:3140:3141:3142:3622:3866:3867:3870:3871:3872:3874:4321:5007:9108:10004:10400:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30054:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: shock56_120e5e2273bd
X-Filterd-Recvd-Size: 1871
Received: from XPS-9350.home (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Thu,  3 Dec 2020 16:45:36 +0000 (UTC)
Message-ID: <e9edd473b8bfc576b8b274c64fd74d021bc4f4d0.camel@perches.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
 <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
 clang-built-linux <clang-built-linux@googlegroups.com>, Dwaipayan Ray
 <dwaipayanray1@gmail.com>
Date: Thu, 03 Dec 2020 08:45:34 -0800
In-Reply-To: <844b0184-a74b-4d0a-8470-69d58323391a@redhat.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
	 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
	 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
	 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
	 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
	 <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com>
	 <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
	 <844b0184-a74b-4d0a-8470-69d58323391a@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.189 is neither permitted nor denied by best guess
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

On Thu, 2020-12-03 at 06:39 -0800, Tom Rix wrote:
> I agree if it can be done in checkpatch it should.
> It is good to have multiple passes on cleaning.

true
 
> checkpatch is best at fixing new problems,
> clang-tidy-fix is best at fixing old problems.

checkpatch is a set of brainless regexes that operates on
incomplete information.  It's not a real parser nor compiler.

It's really only useful as a way to avoid trivial style issues.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e9edd473b8bfc576b8b274c64fd74d021bc4f4d0.camel%40perches.com.
