Return-Path: <clang-built-linux+bncBDY3NC743AGBBCGKY3VAKGQEVF6BANI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D408A4CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 19:42:33 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id k125sf93761783qkc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 10:42:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565631752; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7x/wNaFs6TJaZcj3LL00J3KfinMkY9q2yKaYqAYVsBuZPxefq76mXjIg7VKDQI2ca
         LjoaDOT9NBe128sOCOWTJRHmv7tlhbeS869pXj4nxStDwVe1cOqcMwQNoEBXG1+ckTGB
         783QujA4WxrLQreMtp98NQnVP44fc/WV1NMSZ/ZGK+OJms9VlC06c9IkDnFqcxEa/5tR
         RTYDRU3iQjB3oXDiq0scRd7sIeIBiWGDRGjhocEzRy4LJv271ei/9/oOgD5tYLDn8E13
         aGvf//H9GuRWqfKkfki6pBDqnu6OzjpGeF9QJSWdk0Jfu9L4R9YBY0vbqaApXROpjh6A
         AYRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=tzSRHXXE21EMW7eIoZEOHdUBjVo2X5DL+a/XYH11xy4=;
        b=A+v2ZksrnguZZbpUcF7YOCvh1AL3Dd29AgUW4ppvg7xMviujnSnkH8+WPFpIFLXXka
         ZQ1K0dRZOjQPSvQ4iEVh2m/YRb86K6n3TI+Z6zG2TRd/piJrRu6HqaFVsJVlfisNqPVE
         tFOEZR+4XOTbYoc5TU6h7RCrSi2pNevlxUaTzYB1wuX4V3KwYJxoa1X33KpEV5IQ6W/d
         E+tqXz+IEBnHLIPzM7xEA/TXWnOgRHxsGOyjXbMWeaw13ZwgQLbPQhswy7hmmLARYIZ6
         KlfuQ2eyFfH1LLNfjqZc34PpR4gOq9CXClqk8xFSJhjRGPofCGZVqatp/bRMUzmQzOrG
         G0Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tzSRHXXE21EMW7eIoZEOHdUBjVo2X5DL+a/XYH11xy4=;
        b=qp45XyYhRG64id+AAtNbAUdlxSWZ+d7vXK2WvZLREe8KORfpbDTPVwoi4bGzoZqo/d
         icvqjmID9e3VG1jc3tPas0I9ZNyb8lKpRrAjq8rsM9O86UnkFIYe9bOoDa5PurlIMV9O
         opJGKzTk++ScZg72uNknbK4OiQb7/h9rACTEJwqldRNpC9vp59wJ7ZfrOGbw4u6Iv16F
         YEj0x5xr0+r/BhuHuklDeESZeuKQWwvDPMoN8rpHDGuof3I0+vXi4qqj8XZER4pgOWFE
         hLgwaQjOvnTUIILR0YCBrtI0MCTZHlz9mdLYjgtVQkddkeuW72+rb/O/vadRDRypoY+8
         tVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tzSRHXXE21EMW7eIoZEOHdUBjVo2X5DL+a/XYH11xy4=;
        b=mKyCIrOeKQY6VdA6NkrkAu5MgNh3176rduzg5hDZmW4Vbpf3dfayHJHjTHasRWD2GZ
         tXQusp0xHRmbryydWQ0mAGfzVrqtKCRsdEHWnreKvMX9OIaQEWf1PorGwrx8+68khY4F
         7D7+vjWpLIOf9a+F7NbI1YBtbOgLd1CCLSqYsY+nIGCYDpEugC/LvShM2MiMu7Bg92o1
         csLbZ8cWYyXcWaHtAjqWSqDRtrljASby32F6Y/EM0+DH4DAOnNXcbqQBHZ/jaARMA04E
         V6OWwQ/+b3H+qgRAuLIxGqquJa98Ui+DZy1xf6msrIJK8MFe9YNpn+bFtqTZX1uDp6X1
         GGBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXxWo5LonSh+fOngcNrjETrX9ztL3HUlSkSXmham/inwL6Pnsk
	6yiiErVKQIuA33QNleSLXKI=
X-Google-Smtp-Source: APXvYqznF0An1Tm+7i4/QN+S5SfR4FYSgYpa1R0nrlENepKgxaLZ4P8co8hqb0cmTQVTFh75zXxBgg==
X-Received: by 2002:ad4:450c:: with SMTP id k12mr6349112qvu.1.1565631752490;
        Mon, 12 Aug 2019 10:42:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51d9:: with SMTP id d25ls5006754qtn.3.gmail; Mon, 12 Aug
 2019 10:42:32 -0700 (PDT)
X-Received: by 2002:ac8:4a83:: with SMTP id l3mr15484661qtq.46.1565631752228;
        Mon, 12 Aug 2019 10:42:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565631752; cv=none;
        d=google.com; s=arc-20160816;
        b=xeoszN8gu9MjO0S2pYmI8eQWzf8BHvWwoS2cGq5o2kTCciLd0ve7FI1T7OlUtj8Vfe
         SmYbXYZn6JxWUKzzGt+FokM0/SCD3xaNAidPVo28Kc8ajRR5Ju4+xr0AvBAr58Wcf62N
         EUfI03+OTMZmP5UsjuyOyrx6TsSix+sgAfxwYc8GkOfCy8HGiomyI05uc4NwoIoQUUrr
         RsEzGSMTBjV15doJflp0IGN0XvQ7nqfgtoXqPPvQ5wjppmPoLOAqaP7mU49xAXxT4+Ed
         x1O/MrRQyrqA5HK4w8TNxSrZRxvveitZq/Ui27NrQWrm1k2iBhh2nnRglmT9xhdbx4o/
         KMGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=9n3rD3aC8e+Tu9JHIraTpdDNaNf7InJBqszmdj/65Oo=;
        b=Lkg2BSHGBgFo5RGtQj6UWlMzvCcxOlKpbf4DfySCftoD46RRrzgOYslKjdOGv5DAU4
         RskuIZu8ln3XZLYMaCZiD2mwtRmjkEMiPGk66SLi6ZGFu29+1qvELEqJz9NM5Ul815X8
         rNKL/x/qHV5GDSHADG5m4s3TqoY8gbpKY9cRHQKtaFnSjjZWH4me8hOR6nol8aYQonoo
         SjsbpEn44BQnEfkpgv2cjU0wcCofL7cDGijQ/TYNp1swPlJio78RjG17366r9+8+OQmE
         iY06Fqx12z+Z0cD7mXyw/pBQX/kwNy5rEnWX2aVKtGkTqrtfg/qmxlQNpX8ZNT3T+9si
         rhWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0005.hostedemail.com. [216.40.44.5])
        by gmr-mx.google.com with ESMTPS id u204si4737987qka.6.2019.08.12.10.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 10:42:32 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.5 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.5;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 83FA9182CF666;
	Mon, 12 Aug 2019 17:42:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:69:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2693:2828:2898:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:5007:6119:7264:7903:7904:9108:10004:10400:10450:10455:10848:11232:11658:11914:12043:12114:12297:12683:12740:12760:12895:13141:13161:13211:13229:13230:13255:13439:14095:14096:14659:14877:19904:19999:21080:21324:21627:30012:30054:30062:30070:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:37,LUA_SUMMARY:none
X-HE-Tag: truck80_6d27145108e3b
X-Filterd-Recvd-Size: 3646
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Mon, 12 Aug 2019 17:42:29 +0000 (UTC)
Message-ID: <b27facb8d794c58353736f88a60c24f7b2c001d7.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 10:42:28 -0700
In-Reply-To: <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
	 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
	 <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.5 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2019-08-12 at 09:28 -0700, Nick Desaulniers wrote:
> Isn't [[fallthrough]] the C++ style attribute?

double brackets will likely at some point become the default
attribute style for c as well.  It is not now though and
linux will continue to support gcc 7+ and the __attribute__
style for quite a while.

The minimum gcc version just moved to 4.6 which was
released in 2013 so likely linux won't move to something
that requires [[<attribute>]] for a decade or more.

> **eek** Seems to be a
> waste for Clang to implement __attribute__((fallthrough)) just as we
> switch the kernel to not use it.

clang already supports the __attribute__((<foo>)) style for
gcc compatibility.

This is just clang supporting a new <foo> type which would
nominally be required for gcc compatibility anyway.

> Also, I'd recommend making the
> preprocessor define all caps to help folks recognize it's a
> preprocessor define.

It's more a matching styles thing.

I rather suspect that the c committees would choose to add
fallthrough as a keyword if it was possible, but it is not
possible without risking breaking existing code.

linux source code is not constrained by this requirement.

In my opinion, case statement blocks should always use a
terminating keyword.  I think the best option is to add
fallthrough as a keyword, but there are other options:

IMO the best option is:
	break;; goto; return; fallthrough;
or (slightly worse)
	break; goto; return; __fallthrough;
or (even worse)
	break; goto; return; FALLTHROUGH;


Generic arguments pro/con for each style:
----------------------------------------
fallthrough looks like normal code but could not be
used in uapi headers.

__fallthrough is underscore prefixed, so reserved and
generic, and could be used in uapi headers.  __fallthrough
is rather unnatural looking when used to terminate a case
statement block.

FALLTHROUGH looks like a macro, but could not be used in
uapi headers.  It is also rather unnatural looking when
used to terminate a case statement block.
----------------------------------------

There are no existing uses of fallthrough in uapi headers.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b27facb8d794c58353736f88a60c24f7b2c001d7.camel%40perches.com.
