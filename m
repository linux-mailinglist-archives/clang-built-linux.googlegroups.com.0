Return-Path: <clang-built-linux+bncBDY3NC743AGBBOFJQT3QKGQEDRO2VRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 135781F59C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 19:13:31 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id z187sf10873pgd.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 10:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591809209; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzlZ+RP79I0Q6WfGLoGMA5lXohd3wuSM2y6w5hJMe3aZgdiwe4XTPS2yG5QN3AClWq
         Vzs5Bpjnw9ZkUMAk84OMBVpA7uvsUgsXAkZii0K53YS7AOrmJZ1SRXLTcSjT9R8SDwjK
         13eWLkf/zLQcvujeiBtuVc0xqZEhWmKH/5+LXG0B7sMHz+RfpmDC4+UOfkmkhTLYOPbR
         vpybYe0eilL65Xb1iEglNkkFTu4qr300uOmWk0RUalXlvI98hidzo3t+pOJO3co5aM7P
         9cW54C8p5rejxPY5dKf+BBKnFWhIGpbQVNWsjmTxEQmBTUVuMENGrIAZTrNzwHr/HVgM
         PWRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=mcEd4eh6+0WVpUCDfC/WoKMJaOHjJuK/A19zUtn6NIU=;
        b=vZyfX75riUgRpqwttjAb/L+rcaZpJ1GwKqkon8fa2uHaigKv/+qA4wem73/qSqv7SN
         WzS2NarnP3aqac9HrvcVDyIcawb/JjNxgTsQReU5uqgKAk188ROTdoarBMQTa8tkdr2P
         gWxBAM5ttncLVF3Rk2+DrnVpnA9mXVhHQc7vWXmOEb4xyK3ann3O5nYtQRRAt9gCz+Ou
         wG2cVcjhwQSMuWPYeHLLQCxV5SlSpYb2ki7y3bIrWkflVplyNcRJ2mie/UaARQVnUuga
         pNGSUN5rOnMujKr+WMuhRbT6v5E8MzlpzxZPOIk5KnPEA3WH6+SQRMUi6r9G8vz2DwaR
         uR1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mcEd4eh6+0WVpUCDfC/WoKMJaOHjJuK/A19zUtn6NIU=;
        b=gzqjzJ0Yo+51yAi2tRwBpdcXbs50osb1gqWIcGRM6IQN+/X2SwRnVZe7NdiIjlxU2N
         zgkgZdF0wiHcHdFSXPhxMr0JvW2yaXuPT/mki22l2b7fAP7yIsxfqTZV10dWkMZBkMUM
         fAeOINcLj8KjZWzantsPOaRgkjk/VAWuJ08dgL0QKy++WyxQsUy4BgFrgmi2mvn8eo3G
         nLdQv+JISNg5X2Zk7AHwkoP5bi9AgdQk1TxoxZVCRJhLDqHQDQcDnqoXxacNcv/7r5Ev
         f39BYKe4ePG/ToSCjHoVWjiRvdGl4W9TvDn1OaD3JWK6WkU++hTTBwA6EQlBgV9mRwKk
         qGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mcEd4eh6+0WVpUCDfC/WoKMJaOHjJuK/A19zUtn6NIU=;
        b=Cys931GWTiuOG1R9F7UpKk9nWqD4yE55YJZd3nteT+yJOSY7U6ro10y5SR3RKRVwgv
         vu93AJ/C/ldZL1RTEU5RtGxiV9L65JBYrRNae9pqf9XXK4T1c097o0kGbNEM0FmA4ZyE
         g+eqNuy/fYSst6qsRWyiUHIY+0dILaknpLNJoPHzkTPHOgpDXir/mYtdlgrsQM8zYwbj
         pGko0ZL2e+tARkJaerjE0K13iXKDh6OevWjzM4Y0tqvzoPCqQt8UsTYvn1BeHk5+Qe3s
         IpdiSXM8HvltTScW7KqzCZt2OYcroT0gKftn4a5juhD++UUxADNFRIrpogHuw+celuDM
         bAoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kJQo4XALwhXB24NgIjSudPzMZPADueChonZut0vPzH6kJS+Dd
	wpcpuhL2NLqeCDAI5p+Byb4=
X-Google-Smtp-Source: ABdhPJwU1h5Wx5WfhhkRctFZGGL+v6xfkiT3Xe2d48pxIHMDc3fpBBoG+OaY07054YHYJJrsHux1sA==
X-Received: by 2002:a17:902:a60d:: with SMTP id u13mr3905362plq.46.1591809209194;
        Wed, 10 Jun 2020 10:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls1447144pjb.0.canary-gmail;
 Wed, 10 Jun 2020 10:13:28 -0700 (PDT)
X-Received: by 2002:a17:90a:d17:: with SMTP id t23mr4182916pja.77.1591809208664;
        Wed, 10 Jun 2020 10:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591809208; cv=none;
        d=google.com; s=arc-20160816;
        b=TbaitDYSOQppOsGL29xBVtT/WDg0vDtzuZmbyVm5ou6x/f1WNRMbepQtEcH1kxGY/5
         +jGtmvgLa7cyqf1qJ+2fdPjJF4aBUKFxpnuTZQhradzH6m1g0XuCIe2VkVzBzyMtuNWR
         GJKWq616KOole7Sv4uTrGk3xfI1wrCV78sB+JmKnvpEapT2G2r7GGmQ9Y/bIdWY1z5HT
         eZ8Sj2XPE1vEq9mvqrW9KWgzTehxQmEtG9A8U1xpZK0wfgSRpnad2wzhh5pfyqW3ncg3
         2BVFzsz3nkwyqYN+y4kjeIsqtLT8EqUl4bfMfzV0UUO1R+DXd3sPjS0Jfh9frAT/n9DI
         f/jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=o50fD+vp7LVfEAraSyWRzixGT53zXkwWP8QivA/nDec=;
        b=mAeEeJLWzxPG4ur2tojp1EVkQCQhdpJU28ouJIDHEy/ZWvxMZ4Rwv6NexcNG5Jcq5B
         9kmT+Q+g9PWxcrDu/DPH/9bs7/BFI2EbU8OuPZeLANMQXo/CEbyshcu+syN77yrdBYel
         aW4Q/B07a/8XHAZs3mm7p7XkHvUFPkSWGkFZqJ54/N5nDUSDrpgFxwmQ/lvsCyrTmLvp
         MG5Ul18mL28toiNmezYZpNrxfAapgaOKOeJ+6qJz7VI23wOSSoMFpBa/dR4qGxEh/Vhe
         Czi6KEz5jRd3fJHL32mDI42Zg8psdUNejQQbS/3jU+RXMgQ0vrw3Nk/oSWmZ1NnIKWgy
         wxsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0028.hostedemail.com. [216.40.44.28])
        by gmr-mx.google.com with ESMTPS id e6si51295pgr.1.2020.06.10.10.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 10:13:28 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.28 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.28;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 59FF8180286EF;
	Wed, 10 Jun 2020 17:13:27 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3871:3872:3873:4321:5007:6691:8957:10004:10400:10848:11232:11658:11914:12043:12297:12438:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: coat52_230528b26dcc
X-Filterd-Recvd-Size: 1882
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Wed, 10 Jun 2020 17:13:26 +0000 (UTC)
Message-ID: <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
Subject: Re: [PATCH] .clang-format: update column limit
From: Joe Perches <joe@perches.com>
To: Christian Brauner <christian.brauner@ubuntu.com>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Linus
	Torvalds <torvalds@linux-foundation.org>
Date: Wed, 10 Jun 2020 10:13:24 -0700
In-Reply-To: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.28 is neither permitted nor denied by best guess
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

On Wed, 2020-06-10 at 14:51 +0200, Christian Brauner wrote:
> The provided clang-format file wraps at 80 chars. If noone minds I'd like
> to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.
> 
> [1]: commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column warning")
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
[]
> diff --git a/.clang-format b/.clang-format
[]
> @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
>  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
>  BreakAfterJavaFieldAnnotations: false
>  BreakStringLiterals: false
> -ColumnLimit: 80
> +ColumnLimit: 100

Ii think this is a not a good change.

If you read the commit log you provided, it ways
"staying withing 80 columns is certainly still _preferred_"

With this change, clang would _always_ wrap to 100 columns.

clang would not make any reasonable attempt to use 80 when
it should.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c8851256aa453461481233e8a7fea878f9580c5b.camel%40perches.com.
