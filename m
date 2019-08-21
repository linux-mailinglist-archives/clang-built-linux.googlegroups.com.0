Return-Path: <clang-built-linux+bncBDY3NC743AGBBX446LVAKGQECFFCZQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 902A596E2F
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:20:49 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id c199sf132596vkc.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:20:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566346848; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYW7QzkEUqYtdTWBmvniQl+6d7gOsDfSR09xOMCGp8/2Tz8BHeq+Pc/PWAYIaEsUxj
         PljFwnWfMJRv3zhukkJTv+jSyJp55g2Ds4wPceYeWMilUqO3m7R9vtadM7pzxXudcDmB
         oQZE9E+LI1cIjfR9bM8fQCz6wUOD3UNP28r+qXzczHEAKiwMpnDjaRqyeM72jSWsnJkH
         4S1LSK4X640/cAkE7w6S96fF7Hq4XAtuBsAJenjExMSVX2A2MMr0pe/GryV2xqxLySMd
         FVJ6tt7i9m1rS5SNTQwDOtN3t2sWDOPwd4f9VWOg5rjGh4OvdhPyQyz96J2xJa4Oaueg
         BLow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=mFOKLnDcACyESsd5bKd4sd+Y/nlmyixFEoKC20fHQEg=;
        b=lT8h3n4YWRLJf6nreatSbMDUXXI8wgezS8XRfeZsKH/IcBLl4wyxiwRzjFz1n59dxT
         jIOfeHIAE8rt9GyB7saPWGVudhD9xXA0+EdEDDLkPpLztsI90WEFUXPA5t1PthN5ENAw
         YboHZZl/QyNCSm+OmxksqCRVrWAcQdYxFsT+Wxb/6N+OBKHRI9v4j0ZGi1nGmIwRECTB
         2pHOaiXhRv7rUiw8t7Bcrunq9RAbvWvCRQs+LO/iH/2q9pgXWrvDMtUJplIVuGhP9GM5
         0sv60zBb7zNmKEv3tq33zd3y1bZchIS6wzlsxCUN4t0qRgREcg9VFKPVLVQzOMH8QK7P
         FLNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.1 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mFOKLnDcACyESsd5bKd4sd+Y/nlmyixFEoKC20fHQEg=;
        b=Nm1oSthOAPBX8Nv0Z6lPPAJuB9scP4PMvs66vrx9DMysH66oBC1q5vjtG66jWzYrpe
         jBaA/4Jsx8Pj4t9EOgx/YUQ19WIGVEvU+pzwBThHH5oQAEpjb/BRkmRjnesIjOvCSImz
         ThsvuWmTvHgRiQWBTmGqp5h0U+QFnCxpu6Vcsudi+CnG1I18qHX5HLafle1sYkAiijCQ
         1Q7Ro1M5V52Ed3qUmlg1HzO9j3gx7ujLng9bfTO//+jPt3C/s7RxoqvZTA52kl8acVnr
         aSvqxnUFocZAQLK6QwvSl0roDZeWZudn+jHTv9QqgyqfrEY0J0JuOUUW87jTsFXJOJrw
         U5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mFOKLnDcACyESsd5bKd4sd+Y/nlmyixFEoKC20fHQEg=;
        b=mlIr3Mt7nps28Wmvp8cQrQSwQb4hwJOQ484wBF7zykdLOgkOViNTMh8HQ1bTDKArE0
         0UggOZYtnD5WwiPiKfmuOB9mmPqjyb8sTQxU2WvMjE/f0hZ5ccD+7eOZBfpA/UdYFks3
         QV1OC4YnUvgD0CPRrk8xPd35qLV1soae1rkQQpfjSOWW5L8QxA03btKDXAZKZyVbNFP+
         cT1iRPV868cQmmo1IApzqvHbIZnrAPYlRIRu4U+PMxgFca0g5FScGXTX7zudKy8669N+
         yVtafCNWb+87g3do0usYk+nRxEPfapahUxAwQyOxzOdM4gpnNPV/PLRlwV8Wb4ldC0St
         nvig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUU1qIzBLIvcTu0AYczeyEZAMSt1ffVKWlPk2tohEISKhqMcE5L
	ua7epA4gqsTKicifGIbwkS8=
X-Google-Smtp-Source: APXvYqxENizkGB7ddPCS3sD9z/TsTwXU2lsh1y3HW2E2NHOBvAoTBNL00FArbkIRX8TvNy6BiJAYvg==
X-Received: by 2002:a67:3192:: with SMTP id x140mr20207101vsx.185.1566346847240;
        Tue, 20 Aug 2019 17:20:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c4cd:: with SMTP id a13ls11730vkl.0.gmail; Tue, 20 Aug
 2019 17:20:46 -0700 (PDT)
X-Received: by 2002:a1f:f282:: with SMTP id q124mr9229117vkh.4.1566346846879;
        Tue, 20 Aug 2019 17:20:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566346846; cv=none;
        d=google.com; s=arc-20160816;
        b=JenrHnK1B2EXMdHKiuiJ3LWyUF+nv5uuOBmzyXHYDCKVCW9YatwTg08fAPNR2acWic
         xK3GoNJY0FfJUQJQtxWrgC3DNk33nTOjI7Vu3icbldrxlRs2RRcqzNikKHQVNKFJmrkF
         Aj0aopwVcrQS4SDXoW2Fpbdj4m82zkjvIgC4BgEWGQAhGj2FNC0prjYHLH8j00dov6oJ
         u1k8j6C7VgEdF5/rYHOr8dNPZgrxlOWr8JAne+CO1wPIVtNMOx52CiWYxpqRkFeogvGB
         ugiNFu4nL2xYItCGi8KL1utxUP8f1L8Yi+/jWB35/x7X5daXewRpBjv36lM6y9Npk9Rt
         NJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=M1E1noHBlltqN15nAQ0B4qIlBHT2yyKnlU3WW9WEyd8=;
        b=PYPyubEmKGjDvm6OL5j2JcQCe+uc1T5iELJiQ4eml3lzxuVc0sWh+vuO3bZ08MWT4c
         1IbvoMX1eq+mdKtyRsIcugQLz0WP+IuTOCVaxciF1LIS3OzXrnFh/KWonqeBgSMn3IN0
         tb+K/54nmXcLhmFIn4To5spEuuTUkciM6rp+LSftCy91jIONQILrCclsJNn9aOTN1cUz
         69w31rFtMNMAD0uTvCZWFlVqfclSh65OvkyJTcJt1ubg9X8ciu+Kt+JXOhbSMwhYwee6
         5zGCPaFn24qguiQxCc2wq0eGrHXVxd4rBDWmpH9d++oJylz2lnu5IxpFb4oam7Nd+83C
         zRgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.1 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0001.hostedemail.com. [216.40.44.1])
        by gmr-mx.google.com with ESMTPS id a8si1138685vkm.0.2019.08.20.17.20.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:20:46 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.1 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.1;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 3D9DE181D33FC;
	Wed, 21 Aug 2019 00:20:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1963:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:3874:4321:4605:5007:8603:10004:10394:10400:10471:10848:11026:11232:11473:11658:11914:12043:12114:12297:12663:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21451:21627:21789:21944:30054:30060:30070:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:31,LUA_SUMMARY:none
X-HE-Tag: crush78_7af148c290837
X-Filterd-Recvd-Size: 3059
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Wed, 21 Aug 2019 00:20:44 +0000 (UTC)
Message-ID: <edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel@perches.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall
 <julia.lawall@lip6.fr>,  "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>,  clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Date: Tue, 20 Aug 2019 17:20:43 -0700
In-Reply-To: <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
	 <20190820092451.791c85e5@canb.auug.org.au>
	 <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
	 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.1 is neither permitted nor denied by best guess record
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

On Tue, 2019-08-20 at 16:28 -0700, Linus Torvalds wrote:
> On Mon, Aug 19, 2019 at 5:08 PM Joe Perches <joe@perches.com> wrote:
> > 2: would be Julia Lawall's stracpy change done
> > with coccinelle: (attached)
> 
> I'm not actually convinced about stracpy() and friends.
> 
> It seems to be yet another badly thought out string interface, and
> there are now so many of them that no human being can keep track of
> them.
> 
> The "badly thought out" part is that it (like the original strlcpy
> garbage from BSD) thinks that there is only one size that matters -
> the destination.
> 
> Yes, we fixed part of the "source is also limited" with strscpy(). It
> didn't fix the problem with different size limits, but at least it
> fixed the fundamentally broken assumption that the source has no size
> limit at all.

Umm, btw: have you actually looked at stracpy?

It's just a convenience wrapper around strscpy
and dest must be a char array and its size
does not need to be specified as a somewhat
useless argument otherwise prone to misuse.

#define stracpy(dest, src)						\
({									\
	size_t count = ARRAY_SIZE(dest);				\
	BUILD_BUG_ON(!(__same_type(dest, char[]) ||			\
		       __same_type(dest, unsigned char[]) ||		\
		       __same_type(dest, signed char[])));		\
									\
	strscpy(dest, src, count);					\
})

I sent several patches for those misuses.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/edd8efd53fadd07992f804cc595c6ae5fdb60e73.camel%40perches.com.
