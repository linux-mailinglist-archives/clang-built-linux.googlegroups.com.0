Return-Path: <clang-built-linux+bncBDY3NC743AGBB66AWP5QKGQEUSFBHAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAB6277840
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 20:07:57 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d198sf82901pfd.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 11:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600970876; cv=pass;
        d=google.com; s=arc-20160816;
        b=aslS6TRvPIA6BDSfuSOavLJ5rwGiPOEZt3xLsQbwnk8lQsam4uPV/4XjdiWQ/SEqiK
         E1/lL2gi9ZEdfDAP1dQovnmFpB1ASoJCssPkzGfP1bmJBP7xU8LhLcNNwXxWYauZKTgQ
         nwwvxqUC80qwBJzKkQEQxvtcWKvwrioXQC3Ey9ujavmJUlNyyD/AupfCPJ4B2ZqlhmhV
         5EW/K1oRzPKCWjePlDNhKFtZV2Bqom0gk8C8GypcYxGPGlIb0g23fWGHsGRUgAlWD74n
         KgX+Ed81L4ZUZqgZg92DjWOk8+rnRNJWbPieDY+HyV0w8Vehdl34fh3oSxvthB9f80O0
         6olA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=PHKcQokDyhIJf7GRKdifEylj27Hk1rYGElF+hSzx9n4=;
        b=fd+/LoGMZFi1DNP4MiNJrHck5JWQqkmiilCXofgYFcAL/X0mZalaPu9qJ2k0OIQtt6
         VY3I7cdLNcPlu2XMB/CIi4T8f6+KGufRgXNwvPj42gg8Ps+dET+KZdSso7oZYU5OaKZG
         NVNU3wYe9eFZBYJMd0+k5BSNwongzBy8kxuo7MOOlSZu6Nae+cMLNbtr5kCwEkqyiVaz
         A8heUr1uLY6jtBpta67TzLP6KQVIuSDGvzfI/TiNVm/UD4K07RRCLCPCqBIIQhhKfezk
         936fswipb8Aar5vxfFhcVkxjrj6bha5k9iqtJ5RL6V0V+FFzGEncyzRz6ZANwYHGJD+H
         UwDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PHKcQokDyhIJf7GRKdifEylj27Hk1rYGElF+hSzx9n4=;
        b=Ts9LjoK28jMIBfN821Wpz6h5tocgHQAmF1TOcw3qvUS+0+6Y9SlveJ9cbCzsZJbs61
         Davf7CmpeUPOb1epjMTmfjB24RpQkcjEv17xgpDFq9+toJ04/Nts+qUiJ1rk+GOTiH2J
         pnavVqdU54qojthHgxtpuzU6TIp+5LDU1/BMSc609/AQcDg31tY06JBR5XHZ5Q8mRCG2
         lseSYIcMDpnksc98XF77rld3gs4LA7EMoe2R+qA/0Ma+bPJX3Wc84lZlg7/ot+DSpxF6
         39rMLAgAo2dYWtcdBv9wq/DoslESG5jl1Xxs+2pjxpeAbAeqfr/Ip+a2+hnImnb4Blbn
         JyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PHKcQokDyhIJf7GRKdifEylj27Hk1rYGElF+hSzx9n4=;
        b=FhoIgE4U1msIilWu6gxYPaiQZWXeKKXwqxiE9outr7PMhMy9Q87bGYHSt52Ru4cXpM
         KRTlTfdq6mr464oSqaUs33JxTO3G2y7aEjz67zLsMP6ZVz/d/liu6lif79YS+GpQtKdL
         A7RS0DiqSayGYofIXsipIccTIJGSqga/GU/mUat/QmbPq8CJRFS9Bx2FSLBFMzrwnz6G
         yHaJvs+xTUPnYGngVXYFxPHU1iNgpXPqlzOHiAytDZWIpqrMphKTxvDmDnBps5R079xD
         gLgZSaPOjIVZfUhcbqLu20nvnoNlZBaGgY144Fuk1hm9my/ig5lpAo/SH+KRI2yOIU6w
         v8iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hfHygcIybq2o8rpqV6cfAB72C3/QWAfS0QKC+wd8MwAxeZ2Bu
	OfZWlPECpWxdVcIeSY6W0j8=
X-Google-Smtp-Source: ABdhPJzQIqKuHLNHg+2b1yo8unGsLu2ZjNEKsYj0ZjoaEN2S17vbgyHZjYq15iKJVNTrfKbWNih0kA==
X-Received: by 2002:a17:90a:4ec4:: with SMTP id v4mr177227pjl.62.1600970875964;
        Thu, 24 Sep 2020 11:07:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7449:: with SMTP id e9ls117868plt.0.gmail; Thu, 24
 Sep 2020 11:07:55 -0700 (PDT)
X-Received: by 2002:a17:90a:ec06:: with SMTP id l6mr182841pjy.66.1600970875250;
        Thu, 24 Sep 2020 11:07:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600970875; cv=none;
        d=google.com; s=arc-20160816;
        b=0be1M4yAxADqTCw85F2LaAe7kqGydnki4J2HliGXJSsz690TqRNoeZyTui8thYfQUF
         yXbHAbfr6UaYonaEqdrwZamsfr7SGl/yyGOaHSUc6kXOocDCZE6a9hMTvK0LUxhOlR7U
         lGcPPVoF+g+eQB769f2zpCQz5gEpriGghC8lrGr7Px0blCbzwzvEEuiXwdteAB3Nfd6+
         NPAXIiyyDUOUbPJHTE0HwQwqgAFbrbHavCX/lbrhl/m4ZwkANe26tK/TGz7Eaf4Jd913
         EI5xQ7AJBzBEoYrI9H54OyvI7U5pP0mcwRbfvB1wKfSudo1oYG+DNV1zPrJv2wKMe5Nu
         Ugow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=kjQOFEZAD0FbxJg8u2ZBs0qSgfUN57F7MUkufWWsKJY=;
        b=y/h8tOpZReX/6fJJMghJrkiezHBuhHhDIAEf2pcRYnJYyfe7P+9tZQBPZnVqZznZ+q
         mmkkFaIsrQcK4XOgL7xAl0i5ZtDiBrH8rOkmbcfLT1JZwx9iKkFfKKfMVE9AV5Fw/4W7
         Zx25vi7//m4GDwoPMfJNBUV/xJ3akL5kXUfK31CwGwevRldOiFRJzO2/FZQSDB3Yb/lz
         YTDMkYRQ+6FlhloNTtqo3XZbDCXILfkoUr3hkwprZjXhxTpf66+CgEDUwxIJxNHj9ELF
         XHh0A/4YPRiUvlUAvNv8Ft1jRXusKlUsa6Wr5/xbee/kLGtX+WQBl7sLQ2DWPDpVDFtw
         azew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0080.hostedemail.com. [216.40.44.80])
        by gmr-mx.google.com with ESMTPS id m62si32776pgm.2.2020.09.24.11.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 11:07:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.80 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.80;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 4FBFD100E7B4A;
	Thu, 24 Sep 2020 18:07:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3867:3868:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6119:7903:7974:8828:9025:10004:10400:10848:11232:11658:11914:12043:12048:12050:12297:12555:12679:12740:12760:12895:13069:13161:13229:13311:13357:13439:14180:14181:14659:14721:21080:21325:21433:21451:21627:21740:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: flesh53_541162527161
X-Filterd-Recvd-Size: 2054
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Thu, 24 Sep 2020 18:07:51 +0000 (UTC)
Message-ID: <734165bbee434a920f074940624bcef01fcd9d60.camel@perches.com>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker
 <anna.schumaker@netapp.com>,  Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A . R . Silva" <gustavo@embeddedor.com>, "Gustavo A . R .
 Silva" <gustavoars@kernel.org>, Miaohe Lin <linmiaohe@huawei.com>, Nathan
 Chancellor <natechancellor@gmail.com>, Hongxiang Lou
 <louhongxiang@huawei.com>,  linux-nfs@vger.kernel.org, LKML
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Andrew Morton
 <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>
Date: Thu, 24 Sep 2020 11:07:50 -0700
In-Reply-To: <ca629208707903da56823dd57540d677df2da283.camel@perches.com>
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
	 <20200917214545.199463-1-ndesaulniers@google.com>
	 <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
	 <ca629208707903da56823dd57540d677df2da283.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.80 is neither permitted nor denied by best guess
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

On Thu, 2020-09-24 at 10:40 -0700, Joe Perches wrote:
> On Thu, 2020-09-24 at 10:19 -0700, Nick Desaulniers wrote:
> > Hello maintainers,
> > Would you mind please picking up this patch?  KernelCI has been
> > erroring for over a week without it.
> 
> As it's trivial and necessary, why not go through Linus directly?
[]
> Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")

Real reason why not:

the commit to be fixed is not in Linus' tree.

> https://lore.kernel.org/patchwork/patch/1307549/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/734165bbee434a920f074940624bcef01fcd9d60.camel%40perches.com.
