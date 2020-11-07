Return-Path: <clang-built-linux+bncBDY3NC743AGBB2PPTH6QKGQETK26P3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 853A72AA46B
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 11:33:14 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id i11sf1795228otr.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 02:33:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604745193; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7frvZVax8gueGGDS4BHzOQ7A1SYi0JLJ1PF6hK2CTxzUOu479hehPLX9YMCke/IIV
         PIzu8rUGYquvyO4YwVt3upL3eZa23I0YGPPVHc3hRAC2rAOxSJUW/bJA2n/fnRhV56OQ
         UAOyjlyU5JToR9I0GBzrLSeBSIrPH3/TX2kaoAcHn8Kk2ohJAi7a2Djbt8eZqN8l5NrC
         BIrinCCLKGTaW3zLBR93IzHZo7q23CESmbkFdMzvNSW3T2u1+dqzrIkRi663kapzeqcF
         y8DwtyMZPLKRASUInmayZxPenVcYoCXHzmKICGsWCtzpRDqhFBwmfuCghCUzuJhtaoWx
         sVng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:date:mime-version:references:in-reply-to:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=jr+zR4DzfbOQa/haYDCZfpJTqdylSIjB4xyxfatrMQE=;
        b=E6bxiGAP9G4I6l0gjQLpfM0ksUzGKR0+KTYpIdCclWkI2UQzUrhy8jj+qpasLdWKH4
         2dL4/2g7NLA+MBVqeuYH9ulI7qol2dUSgawBph/bEs6G7j8aRCGlu/pV9Pz540IqSufR
         V8whsEt7C87H2fIL/oO2Fjcb2xFfVt9MDv/1rAwzE9NoKug06f/egMOSPs3IfrR1BpYB
         ZIM1cvnMDs7eWkiw4dg5XdyslIo18Ii8RXEtSmZKZKbwQSDllBQhx5YRAd+Y8eOOTNQj
         CslN6+r7GBd5KFhSg9wHe1dsP26g0Z0fpt9w4aYTIqUJlT4t2SQeDI0Y2vNnadjBmdXO
         0PwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:in-reply-to:references
         :mime-version:date:user-agent:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jr+zR4DzfbOQa/haYDCZfpJTqdylSIjB4xyxfatrMQE=;
        b=QjIgERtSiraI/nUHfoYeUVN9IzkNObZLj/cQX+gG0PkRjgFb+Il1PFByGG1F9bVRGS
         GdxdD+BT5gAtD+9E3kKo9Eqq53ImRGybTD6YjgSBWabpMAYeErKrFeZuooBjWqxjhOLA
         /ZUJ1i9RSSyPi/ky8K8tvH/CFDzS7ZAlGuKvxDUdzLkXUf+eWBkm400SaYVS3OE0oZg9
         aM98qVE2qdc2Hj5H8FRJATvOcLtJZ6hd3Rma/Sz6xhPVpsvB+BxDgELIfB4vOdDspWTy
         PpyRPTYh+gF4WCEs5dQWmFovMo2LZ4wZaiWge8SQuYyCgCJjRQzxMBdeS1sj9G1n88D9
         4Ysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:in-reply-to
         :references:mime-version:date:user-agent:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jr+zR4DzfbOQa/haYDCZfpJTqdylSIjB4xyxfatrMQE=;
        b=lN7wGgHmQqQYOKtpB0HmzgKOteBDvqRz7U4/xLIkLa+fYI90iGrYlKGi5xXLeHUeY6
         itXdJTFR1JdsXDsVenWfvSL7A/dSazIv2ZFav0LKCv2HROt+smrzEEXYqWeCrbxUTn++
         7qM/SQpTHnGckqO3o3FzZwGo7AZY+ehvl044GoCTqRKG1wCkeOoLGfEWGSOLtNMoPh6X
         Tp/XRRVYeMnol0m7rvNgex27+hFq6UbuAzSEmh50u6DXW3sXPTdxxEkqJVCHx/ixFYED
         zGUCd/UtqgHi8a/JrLyaDA52ZOzfxzA3DQeIsll13RU3TcMQ9BjNer3qtMLyx+N5RnaN
         YQtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xobImm/k8kgMnvvijT1AtMD2g4hWY97dUhFn6WwONQ43vLRwB
	kyiLZyxArLgB6Z+DaCPBS0c=
X-Google-Smtp-Source: ABdhPJxaCD0IEOpII83efJX/o6ZFsNkZCta4gyfyUh2pINuze+btZLJATW31Z7rQmtI4Ki4LH0M3cw==
X-Received: by 2002:a05:6830:1647:: with SMTP id h7mr4164176otr.281.1604745193559;
        Sat, 07 Nov 2020 02:33:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6b0f:: with SMTP id g15ls928287otp.0.gmail; Sat, 07 Nov
 2020 02:33:13 -0800 (PST)
X-Received: by 2002:a9d:2c68:: with SMTP id f95mr4093665otb.300.1604745193280;
        Sat, 07 Nov 2020 02:33:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604745193; cv=none;
        d=google.com; s=arc-20160816;
        b=fMOe3Ly6HAl2/odIrmDXs2tMzHxMhT7tqpq1Y4ER0HaXihkDlLGXjIj1JD9l3LLHcE
         6hNLvS9mr2g8BNSraLpIVBHFZWl7kdX1tgDfr77iiZLdy+zqPx3Ghvm5BuXuUAzhTav0
         ArXmCHJx1DL/rSq829iXDq529uVDwh/aE4B8AKowfZzQHHxubEAF2lGmkDP6SeQTB3iU
         COEhQRBnDda8XQBJfJrmaetnyN+9jaGIQ+X5gK+etOzE8UCciJ2SzKyXynuQg4iLWg8+
         VtgdW6Ezn8Mxfnp7g1JakemeFQEZCEo3WQq8YCDWi8v/VN0IEh0qCKs+AXdvAK2IA9sB
         gmvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:user-agent:date:mime-version:references
         :in-reply-to:cc:to:from:subject:message-id;
        bh=vjBCRR6WgRZiQ7E4SQXYrdBF66vHMPZydMP5sJ0GU9M=;
        b=N0NA/p/SBb9IwWzIP/F6iDIl6if7ItwnYh+zyN7NK1pweG7WxNg0Zi3NhG64bHm1BX
         D5SAisNHx+lQwOHk+ac0hqjHn98ps/YellNcEm6vIPU8AeSCbe1R136GB3xfDM9fw54x
         66aU7VqFeaKCqyUIT0cVY0f1N5itkTHmgeaVjZdxkr4qtMj+TRFcyTxdyAkdEp0SV425
         0X9gVID3QLhXTXx4xZIpDNQJzr/4d5Mi0g1riHYk2aV9MKtB7Ak6w51VR6faWXl3A1go
         AGl6Z+vEJFsYp4YKVSIfcu+o/i/V13CWvpciSgPoD2/WcfCEdxd+68BwXHGqtR3Xwv/w
         sViQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0069.hostedemail.com. [216.40.44.69])
        by gmr-mx.google.com with ESMTPS id e22si368494oti.2.2020.11.07.02.33.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2020 02:33:13 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.69;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 66342100E7B43;
	Sat,  7 Nov 2020 10:33:12 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2565:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7557:8957:8985:9025:10004:10400:10848:11026:11232:11658:11914:12043:12048:12294:12296:12297:12438:12555:12740:12895:13069:13095:13161:13229:13311:13357:13439:13894:14181:14659:14721:14777:21080:21433:21451:21627:21811:21939:30012:30054:30080:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: tooth45_310a6a7272da
X-Filterd-Recvd-Size: 2830
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Sat,  7 Nov 2020 10:33:10 +0000 (UTC)
Message-ID: <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Pablo Neira Ayuso
	 <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, Florian
	Westphal <fw@strlen.de>
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>,  Nathan Chancellor <natechancellor@gmail.com>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com
In-Reply-To: <20201107075550.2244055-1-ndesaulniers@google.com>
References: <20201107075550.2244055-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Date: Sat, 07 Nov 2020 02:32:20 -0800
User-Agent: Evolution 3.38.1-1
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.69 is neither permitted nor denied by best guess
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

On Fri, 2020-11-06 at 23:55 -0800, Nick Desaulniers wrote:
> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. Fixes 8 instances of:
>=20
> warning: format specifies type 'unsigned short' but the argument has
> type 'int' [-Wformat]

Likely clang's -Wformat message is still bogus.
Wasn't that going to be fixed?

Integer promotions are already done on these types to int anyway.
Didn't we have this discussion last year?

https://lore.kernel.org/lkml/CAKwvOd=3Dmqzj2pAZEUsW-M_62xn4pijpCJmP=3DB1h_-=
wEb0NeZsA@mail.gmail.com/
https://lore.kernel.org/lkml/CAHk-=3Dwgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4T=
C=3D20e0Q@mail.gmail.com/
https://lore.kernel.org/lkml/a68114afb134b8633905f5a25ae7c4e6799ce8f1.camel=
@perches.com/

Look at commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use
of unnecessary %h[xudi] and %hh[xudi]")

The "h" and "hh" things should never be used. The only reason for them
being used if if you have an "int", but you want to print it out as a
"char" (and honestly, that is a really bad reason, you'd be better off
just using a proper cast to make the code more obvious).

So if what you have a "char" (or unsigned char) you should always just
print it out as an "int", knowing that the compiler already did the
proper type conversion.

> diff --git a/net/netfilter/nf_conntrack_standalone.c b/net/netfilter/nf_c=
onntrack_standalone.c
[]
> @@ -50,38 +50,38 @@ print_tuple(struct seq_file *s, const struct nf_connt=
rack_tuple *tuple,
> =C2=A0
>=20
> =C2=A0	switch (l4proto->l4proto) {
> =C2=A0	case IPPROTO_ICMP:
> -		seq_printf(s, "type=3D%u code=3D%u id=3D%u ",
> +		seq_printf(s, "type=3D%u code=3D%u id=3D%hu ",

etc...


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel%40perches.=
com.
