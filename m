Return-Path: <clang-built-linux+bncBDY3NC743AGBBFME2TVAKGQET4SPINI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 529AD8E50F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 08:56:23 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id d190sf1045467pfa.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 23:56:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565852182; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9l+fxeaqkqW0PNXNTBfdwmNDczoEZKqBx6vfjkR3PPoVn/o99dP8fDGZLYkzgTo7V
         D5ar9heQMSlZ2GswiQMRHaP+KVeG3k7GMDUCHxt+lMh3o83X2WRcidvWrIlF7Ld2w39Q
         CjCFlBSb7wZ6wT4BkJss665EOho1WIb+AoHhggEf7BTuMOJvzN8+BPjYWpATmbOIKeul
         Ng3rDAN5DI5As2CIt/n9HuQS2NGF0mueHfhyIp8WYdKy+PK5unCw4Lh2e8tdee7bR0A8
         0m9XnbiyZTdvRd4fjwkIgyvX9Q5YIvCaO8tt7P/WO0PCn55Joce2tk7nFxeKmXaZTVrh
         hCsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=0CJBsZ+06i6NjwYsXwgq5N4YIsWFRm8Lhsx7xCyyGxw=;
        b=0c1B0JnrSN+JpgxmfAHudRXw4Cpz/osnE1nRDSa+q01cSCkc/sPDnhj0dii2/IaJKy
         Em2dmnNKj3/lBVozRD1gvh8RXXBscjMhYiuRNVlKS4ulbSEEi0i1DpvgxOmu5FKicXQ6
         u4XcytKITloJWHwfbAXSipZlHZ4QsiBYuzbV30ZT6XNGO0OzN5An2/WJMoSgYodXYBpF
         0GqZQjfi4vN98oo6JH2aCSkjyyxp/ETemrHe/4syH9u4NmBzyUSqUqcltanl8oArBkP2
         AOOuGMbQ1XKnVRxPSLcNojyeC8B4Eb4nFnyZ5PhErcE2BNCIY9c3YxWLFjfDXIXsVpiM
         MEwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.203 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CJBsZ+06i6NjwYsXwgq5N4YIsWFRm8Lhsx7xCyyGxw=;
        b=hwffdw/Jt7BOb7elTcQoKfbh8v+TpWyhOe78qk0Qzw9qaSYGsAIEMvNA/Ssx5+aaaH
         kAWUlIjDiRvAkUUFdfNOnA9dmFq18gD6SsqomRD7ROe9h0mPscjy8SK3DeizqXiFe3QW
         TdZLqrbRWZEH5H0GdiuEzVGsBYqSBut+5vuHAZQY0ygOWl+5sA5tX+AsYMpmHioKboeh
         TTs0DKyn42bxcdcrle4fr7cQM4D3imcbZCfaT/eRWYTCU8AV+Fo4sVpadxnFDWEKwmq5
         vI4qYQLzZHazi1Jsd6mzs2EnO2M03sjlUAROQ4mhV0knqKJu481dojQilipeMz1wV8jE
         D3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0CJBsZ+06i6NjwYsXwgq5N4YIsWFRm8Lhsx7xCyyGxw=;
        b=cHeIwlZThLwGVD+ERj3NhQFMrcw9KSkuNpWbgPlg66b5NiUaPfyc0b2wtPaYuQbY7W
         KHCuxfrVLmAnwQIXJPvzNgnsFLbUeTy8NnnoFzfeADYx80oX4Te2s2DKK5U6494QM6LU
         Lw8sw9yqgJhKfnQZahMVeTmzLyqBfjU+REciz+hx+ZEuGzGmaLMo1FnwVr/3yV7qL+Jz
         xsIf+wPhHEP81vcle5MDebVyPywDqqpuUiRmTeizfLGY5kMmPd9tTL023axxlzu+cGhN
         q+hbHrB9IQFwbw2W/Pex/8fU1gp/JALIuMM/EPABbcBGjStRlcXho9J+aFtr8h6SM5BP
         1iyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdNGmTyhIY82zSZMdMVMqz6ilfH8RbcxQS8qGmXk7mNwJwCZQG
	suJlyaaGpDFzdxKVaPF9pQs=
X-Google-Smtp-Source: APXvYqzbjSi6oXs04xzZBDphrfVgpVrhMJqDbdiQ+0WTFPoJ/+d3wOzr5TG3DGl+UPJton1GhTa4aQ==
X-Received: by 2002:aa7:91ca:: with SMTP id z10mr4008685pfa.30.1565852182015;
        Wed, 14 Aug 2019 23:56:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2acb:: with SMTP id j69ls1065859plb.9.gmail; Wed, 14
 Aug 2019 23:56:21 -0700 (PDT)
X-Received: by 2002:a17:902:7781:: with SMTP id o1mr3004079pll.205.1565852181611;
        Wed, 14 Aug 2019 23:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565852181; cv=none;
        d=google.com; s=arc-20160816;
        b=CAAUyWNPbyNk2BCZ2UfNj7cZZXCrqusogu2Hm+/xMryDBYc86W8xuwhTUs+A14Wgkl
         veMgiDcep4jcEyyorOo5R2Gz7OoCrYnYqxbGtV6fEYO5tqw41C0bj8AWxeyzva2FmnW0
         blMvEr+P4FgYjRlaY09WSm39JebbsWSdkrVeR7SMA81nb9Be7/WA3wvYtYFbvZ674j67
         CCbmF0wRwvH3t3e/zej2+XZONaJ5Oq2Y9bpCwlkX49I2AUUvO/I5cyA+h50dEt5KmGZ7
         mcVnjM18+01OQ0viegB4Qm0npfbQoPygPSGPYfpRP7L0gQEh1NvUF/Gz1fQ4iv6OV//5
         yHuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=PA17FEKJvigD9CvyukIJF2phJ/QdKWp5Zm0Wi8c63bM=;
        b=WCrYq/kMRaSpNyYJh9ssR5GVOl+9SGn8YJGs2ohnog82+H5+9WUTVpmFhb54cw30Dg
         Ig2eqmwf/PByviarBf2WL+VV9MNBfwTAukSRjjgJT/UipJwL7BIQx1SHLqIFCjUrT+qh
         Y1pOBPzyHdDe1Myj4jRip8iEebQWZdSfL8PegaoomdkTn2hWUygOasc+sgyOHe+qb3+V
         LRaYSTts+y8RypCUWR0goTgOmayP/8NQO3y1Nefvy3PFRli8BzpAqK/l0nzwQQ9jCek1
         OlRtZnGHMcsd+CA7O871IgW1KPDdx52Emlh8sk8+mhNO8O9LtRo6cgBRvqbSLJQuGy7G
         WJdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.203 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0203.hostedemail.com. [216.40.44.203])
        by gmr-mx.google.com with ESMTPS id r202si173599pfc.0.2019.08.14.23.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 23:56:21 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.203 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.203;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 381FB8368EFC;
	Thu, 15 Aug 2019 06:56:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2559:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:7514:8603:8660:8957:9025:9149:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12740:12760:12895:13018:13019:13148:13230:13255:13439:14181:14659:14721:21080:21451:21627:21939:30012:30034:30054:30064:30091,0,RBL:error,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:27,LUA_SUMMARY:none
X-HE-Tag: shirt04_19e6b128f1714
X-Filterd-Recvd-Size: 3207
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Thu, 15 Aug 2019 06:56:17 +0000 (UTC)
Message-ID: <9973b4a89e54296a6a033c790fc0837397a14a5d.camel@perches.com>
Subject: Re: [PATCH] netfilter: nft_bitwise: Adjust parentheses to fix
 memcmp size argument
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Pablo Neira Ayuso
	 <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, Florian
	Westphal <fw@strlen.de>
Cc: "David S. Miller" <davem@davemloft.net>,
 netfilter-devel@vger.kernel.org,  coreteam@netfilter.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
Date: Wed, 14 Aug 2019 23:56:16 -0700
In-Reply-To: <20190814165809.46421-1-natechancellor@gmail.com>
References: <20190814165809.46421-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.203 is neither permitted nor denied by best guess
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

On Wed, 2019-08-14 at 09:58 -0700, Nathan Chancellor wrote:
> clang warns:
> 
> net/netfilter/nft_bitwise.c:138:50: error: size argument in 'memcmp'
> call is a comparison [-Werror,-Wmemsize-comparison]
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                       ~~~~~~~~~~~~~~~~~~^~
> net/netfilter/nft_bitwise.c:138:6: note: did you mean to compare the
> result of 'memcmp' instead?
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>             ^
>                                                        )
> net/netfilter/nft_bitwise.c:138:32: note: explicitly cast the argument
> to size_t to silence this warning
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                       ^
>                                       (size_t)(
> 1 error generated.
> 
> Adjust the parentheses so that the result of the sizeof is used for the
> size argument in memcmp, rather than the result of the comparison (which
> would always be true because sizeof is a non-zero number).
> 
> Fixes: bd8699e9e292 ("netfilter: nft_bitwise: add offload support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/638
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  net/netfilter/nft_bitwise.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/net/netfilter/nft_bitwise.c b/net/netfilter/nft_bitwise.c
[]
> @@ -135,8 +135,8 @@ static int nft_bitwise_offload(struct nft_offload_ctx *ctx,
>  {
>  	const struct nft_bitwise *priv = nft_expr_priv(expr);
>  
> -	if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
> -	    priv->sreg != priv->dreg))
> +	if (memcmp(&priv->xor, &zero, sizeof(priv->xor)) ||
> +	    priv->sreg != priv->dreg)

This code should use memchr_inv and not compare against a
static uninitialized struct.

Perhaps linux should introduce and use memcchr like bsd. 
or just add something like #define memcchr memchr_inv




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9973b4a89e54296a6a033c790fc0837397a14a5d.camel%40perches.com.
