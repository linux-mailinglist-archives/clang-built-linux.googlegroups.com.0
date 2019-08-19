Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBXG75TVAKGQEDRTXPUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id B2847951A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 01:25:23 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id 91sf5384696qtf.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 16:25:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566257117; cv=pass;
        d=google.com; s=arc-20160816;
        b=edQc39VLn9zWWnpa0yEd0Z/KoovOHl6Qp3oLzNgGqCKUri6lPjgTI3B4uUrShyC8Wj
         LvHaPTnFiSvqrbNBwDYekboDnry21bG84uiSqE2wtnJbeH+2eoexfL1m07zSj2dEqa3J
         GmI6b+zlnVtMmw994UIS8bGc7Or+Jwxo67sMLRQarXQu0rQiM6S0WGJic1yNDXcECFy7
         VudTPjGQmQFUC6QAvCbH3n7+F9QImfI8FE7CPZv1l3phHu+tBdozdEXKaZyDbAjtYhdF
         WvHoTuFo2pTuIS80nJlpbEaNDgFG70nW036pG+hUCrwmxbdUi69W0eJaXFoDERfjJOTF
         qAwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4aA+/SQejBCsaQkyPOtoT6kWKfRqJwvtoE9pRLWm21M=;
        b=CmFWhRIYVVUQ4rcUTk7CmlUERa/Yd2/jz8qpTmgn0a+DSbPH5Z5AazuFb2QvjTtH7n
         2uC2de/zjBWrfloZc2Kx3n/P8r1q90lkCinRJAakgIaJsf+fRyCqimZ2YTohuTGbu1s3
         f7d8UEYtXfWBQ+Gu0J4QPXtGTWXFn2tQQL7farqt8y/mx9uGdJZ7coywDTdl9FH0WAw5
         JWuuVNuDnYi1UjZi/xKTChKTRHeWZ5Mzaw/ELOeAacf0YhsBEIgMc8FFMNFmSpv6pCZM
         uIxaiL46uUY1G5cSuQbOv5HM0ktgCVqpaJgzs0W55RcehSldc9JUhgURItbU6Xy3/Cyo
         lZ3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=IzEbJi90;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4aA+/SQejBCsaQkyPOtoT6kWKfRqJwvtoE9pRLWm21M=;
        b=lIzaE1UYqdkzxsRKGyX3rCwDnbzXHWqp92RQIJ+/aRch1E19XAMpndTPojJuRH/+Mq
         KNx1FnX5ySX+XOUCClXHmN6kTyTOnk/ieoCFBDKqKG/bRWKAChsXhhyJmYw9LDOkrjhw
         PxGvIjylcY3Yvht/p+pdC2Ebeuhpn/epvlWUebJta3fmUuqmkb+AnoYsjthpooWCzNLL
         XUeeZ9G5GkrHjIpFivKcy0nXUSvdLPAyESJcgYUgxDJ5kUIbLpXOJ23g4JGMrmDgiTZh
         aOTHcYKdycDNWUbMMLrLYNo+rZcsuP4+LsPvWDauwglEryxrtSYsfg/C18ZIqkNT1tIv
         vnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4aA+/SQejBCsaQkyPOtoT6kWKfRqJwvtoE9pRLWm21M=;
        b=uj9vDhRsUwByapeB8/PCxYS9kmxu0/WyxbL/JMP4QIzx7mjxZpBb0O489Et8T3duyN
         KNpCKlpSZPZWsvbRaVCKRxehGboX/LoO3E6tkG7zOXb5qmUVEF0AUKXZkZpzVa2e8YKb
         bkN5DO/t6Bczck7BPpuRNl2in6np3qeNTtIVgdxYgI3XL0hrJHXiSM8/S8Mu26uiAxgI
         aNXcNd+VKrZ59F36UfVNUtMKBPrqzmwK4xqNnyeGIlj/IO2fHLlO/9iW7QAf0QOGgz8F
         NiVMgV+l5RWbPR3KHpseLEadIhqPz35AAt6o5nSPgG9CprARGjB0++lZLyZYpxcpuLXi
         ZB6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0mXEQseTEgN7v29MKgifqGgXpmk8keJ59Ga+Ah1/Mb7Twotwl
	aUH333i6DyMQZUhsXjbwbbw=
X-Google-Smtp-Source: APXvYqzmtP2IAbOp0JKvJ0MZK+U/kJPuNvtXO1lJ2drdUX61vlYW4RJaR6+iSSdLnsSjUelVKZNTBw==
X-Received: by 2002:a37:9ec8:: with SMTP id h191mr24356039qke.229.1566257117401;
        Mon, 19 Aug 2019 16:25:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:75c1:: with SMTP id z1ls2686243qtq.3.gmail; Mon, 19 Aug
 2019 16:25:16 -0700 (PDT)
X-Received: by 2002:ac8:550f:: with SMTP id j15mr23594785qtq.25.1566257116724;
        Mon, 19 Aug 2019 16:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566257116; cv=none;
        d=google.com; s=arc-20160816;
        b=cwJwgTylUPChsAsz1cSIuCKd3W96aeDxGCPfO0ZLkT6bJU4wzDe0F3pkdGfUqMX8gF
         zte/fPZgPgIEgbxqLTXb0SVYDkmWysJ4VRUZGt6smtIGsqah65gSNHbOFaK9I5cj8sC2
         25QcY/ksWuQW8NekVNjrshu+NcNg1i/HiNHm60Sei88dfCQhP0d4l5k4LJSG31SnSpEZ
         8cASJiRfrPj67XmUui2JXjxCVdd6lYEoy+QTYemm8/wEx3JYe2YnXiCsadUK/eor/r0R
         2bwWQsrVGPdkshVaj+njvkI6avEKMVqP8oLYtHEVDbe6CP/2cmvDcs3EWfPFna7JtJU9
         EMZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=YJKtCk0kK5H2o7lvu23PoP1AFRf2kOuKe6FaNLpsT6k=;
        b=Z3Evk2p23Ygu1kVwaDEdah1hxq3I6pj+nTuSFzwbQS/+cJ3tPKuKRmd4kY/uYH3shO
         pwcsE5Ldgyk1Godof/L4sz61qtONUneEpBMzm2/D3aqOjNapT1aSit26hHJPKrgTC88n
         wQjx+9974mHLnF/5nxG56LwqN2ystPjg8zvbX3D9QV1uEOMe292gqKofvgj7rjFGfm+r
         n9x6bcsetVx7RFwW1Vw0nKnlJnv2MfHbRGnfwXKXh+T4DTt5pVRFUck+//vbz4NL2RGH
         AfwvL/gbvN/tLS47oru0oVWsi5120KROMdijI4+0jnZwZwGxu+ccgkfOjrz7obtbT4af
         j1sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=IzEbJi90;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id g2si752991qkl.0.2019.08.19.16.25.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 16:25:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46C9515zkbz9s4Y;
	Tue, 20 Aug 2019 09:25:09 +1000 (AEST)
Date: Tue, 20 Aug 2019 09:24:51 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Julia Lawall
 <julia.lawall@lip6.fr>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML  <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
Message-ID: <20190820092451.791c85e5@canb.auug.org.au>
In-Reply-To: <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	<9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	<CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	<6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	<4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	<ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/6d1c0JM9/Va=lL_uvs+h.TO";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=IzEbJi90;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/6d1c0JM9/Va=lL_uvs+h.TO
Content-Type: text/plain; charset="UTF-8"

Hi Joe,

Sorry for the slow response.

On Fri, 16 Aug 2019 12:58:27 -0700 Joe Perches <joe@perches.com> wrote:
>
> On Sat, 2019-08-10 at 13:33 -0700, Joe Perches wrote:
> > On Sat, 2019-08-10 at 13:18 -0700, Joe Perches wrote:  
> []
> > > There are classes of patches generated by scripts that have
> > > no real mechanism to be applied today.
> > > 
> > > For instance: global coccinelle scripted changes to use stracpy
> > > https://lore.kernel.org/lkml/alpine.DEB.2.21.1907251747560.2494@hadrien/
> > > 
> > > and trivial scripted changes to MAINTAINERS
> > > https://lore.kernel.org/lkml/6482e6546dc328ec47b07dba9a78a9573ebb3e56.camel@perches.com/
> > > 
> > > that are basically impossible to be applied by anyone but you.
> > > 
> > > Otherwise there are hundreds of little micro patches most of
> > > which would not otherwise be applied.
> > > 
> > > There should be some process available to get these treewide
> > > or difficult to keep up-to-date and apply patches handled.
> > > 
> > > I believe these sorts of scripted patches should ideally
> > > be handled immediately before an RC1 so other trees can be 
> > > synchronized in the simplest way possible.  
> > 
> > Hey Stephen
> > 
> > Question for you about a possible -next process change.
> > 
> > Would it be reasonable to have some mechanism to script
> > treewide patches to generate and apply after Andrew Morton's
> > mmotm patches are applied to -next?

I don't see why not (its all just software, right? :-)).  I would have
to refresh my understanding of how Andrew constructs his mmot{s,m} quilt
series, but I should be able to sort that out.  The only other issue is
the time it takes to apply these changes and test them.  The total time
it takes to construct linux-next each day increases towards the opening
of the merge window (we are currently at -rc5 and I am already taking
about 12 hours each day).

> > This could allow treewide scripted patches to have
> > compilation and test coverage before possibly being
> > applied to Linus' tree.

Always a good thing :-)

So, do we have a pending example, or can you give my some idea of what
they would look like?

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820092451.791c85e5%40canb.auug.org.au.

--Sig_/6d1c0JM9/Va=lL_uvs+h.TO
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1bL8MACgkQAVBC80lX
0GzJ6Qf+Ioda512r7v+ci6QP5Le/DVEAd4qcYSCE3ikVUruvXUyYdEps3FTuo/9y
50D9wjZjRTTLtjiCBdxLlymA4HyQj/NMBvshKn6g+fPBxH2yAc0IUHwz8UX2gAo4
DP7HtiYKvPB4pBG/yI+ppdwtWyzzVAKT6qXc6bu4+baCXt2h/I5xhJndFYp+QoFN
SQagyZ8AbKDBC7fENxxZe6ysgBqYM+1JFcoBP7/hgP5vI+6FF/ofFReT5LgPKzRX
YWSB7NIeeEFoxGraRUYGLeJZQz1uo3ur3jpU5qGOhVasLgkc8y2ZhIJrvlzjKoxZ
VhBBvqbUHNKF6gyI9Li+gwFmYsMQGQ==
=14Og
-----END PGP SIGNATURE-----

--Sig_/6d1c0JM9/Va=lL_uvs+h.TO--
