Return-Path: <clang-built-linux+bncBDY3NC743AGBBD4JRD6QKGQEUKEZHRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id EB36E2A5BF9
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:32:00 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id k15sf14244837ilh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:32:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604453520; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRXg9dvzX+pvPSLPPolcyq926UnVEc+5Z2zYCKhJreWQegZqKu3upHMa+WeomY7gZd
         Xy7wjwXLi3HucTiSRRRKmXecvDLyBFNKBDAytv5x4MtNbveCRPw9huiiUQX0Oj+yHhWH
         NF/1MAmDusKA5lrPkA9f15oigg2EkvVOAkZ8drnQx3H2wFihScWUtzjnizAShSEIY57u
         PbVndOmm0Tm2QwG3mrrpmlLrurvMhxC8n8DFtjJSaKQe8pBpjHPfcU4d+aSsWdQWIU4o
         GcGrM4XrzlWlDDaMn8TTPSut8U5x1apShLl0tT6/NIbtVQ7HsttsK+gksxG9YW5vWlQK
         I4Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=ZRj4Lyjsrl36T3ThfuJBCd9VXJjdqpvwZm5Hoo8J7TQ=;
        b=A8mGG8fDrUWnub3ZZ8c5KpapCrdSMs/R2XAXStugQaWjZjEuxGqNULcG8YuYOScMli
         drbRhZyjKT9GnO6aLBY2z2ujxPD3TKSPLhVIWlyhBY/VM5pvvsftWltJFpLes00M4chj
         v7pYmR0uq53ZbsihCT6UwuN+JWocPiy/w+9lF+x2Yuaw2/J+tXXY7C5HlkZQLbKUmBNr
         y9LEZoGcEj05IE3kMCP0bm3dEOPQ0V764JrRFZB3yrYxJzmeyCPnqdDymmAwZH8TXe7p
         vL0aGLczymoEDbB7DktK0W+NeiPZ+l8ZBJiz2OaOBbEZaP1BGyZEG72125oahywU96H/
         lhkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZRj4Lyjsrl36T3ThfuJBCd9VXJjdqpvwZm5Hoo8J7TQ=;
        b=i1E9peKUOAebP7o99atv29jQaEDskzXQ7cpbADYzogxXK+ZIESiMajfkokv6QtlVti
         IzvPnp2lP+cJMI3sWJyv/2lN+nlaqu/g1gDXjEJyFolqo2wXPXQmdqnIN8dKHSsbkYhw
         iET4puV2ozq7grXNF2eNbAzwqZVMEZJM/pA8NjMiIt0zS5oIg/t/kE+kznak+o5IKa4H
         mgO8PHtbQJoVVfO5MqcoeJweDk0iVRAXJWhIt6wm3kKxQF/8/Y3QrsgDoNSQZjMMYFFH
         XnghYyQF3/3DjkdpMARUvN8ZSIKaRmgV8joT+RIQApml6zk/A07whqPeGPiNtMzcIxXF
         2HSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZRj4Lyjsrl36T3ThfuJBCd9VXJjdqpvwZm5Hoo8J7TQ=;
        b=Wsug7RbNLQ87T3cSjcH8UqnWjITTI6/ecbF5N39PJB6gIqm4+PYoij43f6yb7KpsYM
         tuCXBtzUr/tmv8OtU06A/Scvz2ipl5goIH6UGSNOZXzP3IISeHTsCRdDz27fO0OiH4pi
         WnIdvbgmF3EkDr4ewUpQZOXAerUYJBrZRScY2J0Tx5pSjz99RH1Rgn1MvkhNXEFvibTZ
         WVyY0WFzoCkNELFhFiJ5lRNH3NjOtYFeJxlAy/9e2yM+jIHB+LiDYbL5B8QJAsocBGUE
         xOlFumX7JcM+HObMxkl4p6Wq4IOznKEIvPRE3eq2vuaRdye8N8a6syETlfMQaOtWRVtK
         LtZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UdvmE/BmijPecWD+cs3og8s3HRtieQJ2KfruhYahTzSFSv6KG
	aIgkj9eMGNK4+H8eRAhXStY=
X-Google-Smtp-Source: ABdhPJwWUSp6MO/X8TMYwuVimkEoB7R3NvxFN7R3BB2NHJBkErPidciSsQK6zwPsB86Hqzo1L3QD4Q==
X-Received: by 2002:a05:6e02:ee5:: with SMTP id j5mr16777537ilk.152.1604453519895;
        Tue, 03 Nov 2020 17:31:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5d:: with SMTP id o90ls61542ili.11.gmail; Tue, 03 Nov
 2020 17:31:59 -0800 (PST)
X-Received: by 2002:a92:1f43:: with SMTP id i64mr16205046ile.281.1604453519474;
        Tue, 03 Nov 2020 17:31:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604453519; cv=none;
        d=google.com; s=arc-20160816;
        b=o3Xu1Pl9FCBqpmbhmI7h6FqrWI9LOe8gNBbSmtjHEwQ3MRpVfwaaqjs1a6j6iwH6AL
         174T4j7uhBh0F2GrRPwSDLoK3TW0xk8584u6oUw6aQqLmnxtzh3ZE7NWSBIsSsvsevum
         jglGGVWkPq/QFZi41dk455y5mn2637rDrI05auqURfExA1WmJTbh612Uqm4H2vBokru1
         jhtgMoT+uhn5MqIc35rj2dvXKCaB6+DgnAKnT909rG5xcEf1wW/byjQckEJ4W41z6gd2
         k3LtCXvxQAgLbrXCeUV621VE/9ML743Y+VER+WsSKurPzfH17xo5YfLGiIuCr1QmTQdT
         wSAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=aPYFjwMFQTbf5m0vbYchRP3VknnqF6lEi4t87cu0Hc4=;
        b=sJd24cUhjPrEHDINIPrp/f4kvsXEJ29pizn+LlwPI5XMcqYZJFGsdgO3XLREeuJPZ0
         l43MAOECb2ZnxSgmr1xIrbVfWEGmZHL5fSP9zUwq3Q5VJLZ8ofT1FoIhCtyA+K1zuERd
         REXPa/6d1emN/s2T4IzhOKJlp5LTc/ryQVCHC1YEOF0PEVUoWT3+cCmEgnpm4lyhT6fj
         U5pIYgkBQzMgDlskDwihnmHKzAgPESfHmQV2uqb4EEk9IfE+SmuGUDCKJbFM60DbO1EW
         SKPzIHgLGBcO7xswBfli+jSil5cYY0B1D2eOKtx2Eh0G/LCcZ/j8w0pPhFVGZkWV5Fin
         CTIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0135.hostedemail.com. [216.40.44.135])
        by gmr-mx.google.com with ESMTPS id b21si36140iow.3.2020.11.03.17.31.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 17:31:59 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.135;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id EF1E418225E0A;
	Wed,  4 Nov 2020 01:31:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 30,2,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:1801:1963:2197:2198:2199:2200:2393:2525:2553:2560:2563:2682:2685:2691:2739:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4470:4605:5007:6119:6120:7514:7903:8531:8957:8985:9025:9149:10010:10400:10848:11026:11232:11233:11473:11658:11914:12043:12050:12294:12296:12297:12438:12740:12895:13439:13618:13894:14096:14097:14180:14181:14659:14721:14819:21080:21324:21433:21627:21740:21811:21939:21990:30006:30012:30034:30054:30056:30064:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:1:0,LFtime:390,LUA_SUMMARY:none
X-HE-Tag: bells46_5806729272bd
X-Filterd-Recvd-Size: 4539
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Wed,  4 Nov 2020 01:31:57 +0000 (UTC)
Message-ID: <ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel@perches.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	 <linux-kernel@vger.kernel.org>
Date: Tue, 03 Nov 2020 17:31:56 -0800
In-Reply-To: <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
	 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
	 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.135 is neither permitted nor denied by best guess
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

On Tue, 2020-11-03 at 17:08 -0800, Nick Desaulniers wrote:
> On Tue, Nov 3, 2020 at 1:33 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:=20
> > On Tue, Nov 3, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
> > >=20
> > > Now that the clang minimum supported version is > 10.0, enable the
> > > commented out conditional reformatting key:value lines in the file.
> > >=20
> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > ---
> > >=20
> > > Hey Miguel.
> > >=20
> > > I don't use this, but on its face it seems a reasonable change
> > > if the commented out key:value lines are correct.
>=20
> Joe,
> what would it take to get you to use clang-format, or at least try it?
> =C2=A0Beers?  Bribes? Dirty deeds, done dirt cheap?

Hey Nick.

Paint my house? ;)

I've tried it.  It's OK.  It's not significantly better than
Lindent in some ways, in other ways it's pretty good.

It can make a real hash though of well formatted, human readable
code.  I think that's it's biggest drawback.

I posted an example of it a year or so back.

https://lore.kernel.org/lkml/e9cb9bc8bd7fe38a5bb6ff7b7222b512acc7b018.camel=
@perches.com/

In that thread I wrote:

On Thu, 2019-09-12 at 03:18 -0700, Joe Perches wrote:
> On Thu, 2019-09-12 at 10:24 +0200, Miguel Ojeda wrote:
> > On Thu, Sep 12, 2019 at 9:43 AM Dan Williams <dan.j.williams@intel.com>=
 wrote:
> > > Now I come to find that CodingStyle has settled on clang-format (in
> > > the last 15 months) as the new standard which is a much better answer
> > > to me than a manually specified style open to interpretation. I'll
> > > take a look at getting libnvdimm converted over.
> >=20
> > Note that clang-format cannot do everything as we want within the
> > kernel just yet, but it is a close enough approximation -- it is near
> > the point where we could simply agree to use it and stop worrying
> > about styling issues. However, that would mean everyone needs to have
> > a recent clang-format available, which I think is the biggest obstacle
> > at the moment.
>=20
> I don't think that's close to true yet for clang-format.
>=20
> For instance: clang-format does not do anything with
> missing braces, or coalescing multi-part strings,
> or any number of other nominal coding style defects
> like all the for_each macros, aligning or not aligning
> columnar contents appropriately, etc...
>=20
> clang-format as yet has no taste.
>=20
> I believe it'll take a lot of work to improve it to a point
> where its formatting is acceptable and appropriate.
>=20
> An AI rather than a table based system like clang-format is
> more likely to be a real solution, but training that AI
> isn't a thing that I want to do.

and an example very poor conversion from that same thread:

        unsigned int key, newkey;
        int i;
=20
-       rc =3D sscanf(buf, "%"__stringify(SEC_CMD_SIZE)"s"
-                   " %"__stringify(KEY_ID_SIZE)"s"
-                   " %"__stringify(KEY_ID_SIZE)"s",
-                   cmd, keystr, nkeystr);
+       rc =3D sscanf(
+               buf,
+               "%" __stringify(
+                       SEC_CMD_SIZE) "s"
+                                     " %" __stringify(
+                                             KEY_ID_SIZE) "s"
+                                                          " %" __stringify=
(
+                                                                  KEY_ID_S=
IZE) "s",
+               cmd, keystr, nkeystr);


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel%40perches.=
com.
