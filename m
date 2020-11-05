Return-Path: <clang-built-linux+bncBDY3NC743AGBBZOJR36QKGQEHFDS7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9D2A77BB
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 08:08:22 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id g3sf376965vso.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 23:08:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604560101; cv=pass;
        d=google.com; s=arc-20160816;
        b=rE4U2Mu5ZfkyFgstb/upjBvz1idVAC34TbgHB+JwHkTHm3i8rjjHgPM7kSpBAQ3MA6
         ds04XQrll0934tLiHssoS1k9k9c8s3D2YCPDkviGwURRlskTxpoLMHyqvI8MlhVk/lp3
         I2e4lP+2m/C4pKj6hE5snxj7OaX0gUny2rks6gesfEyoH8SGysPU5Eo6MdSQ6CXe/Pp4
         dHqSDkDXLI+nNAutz6FKeHCmClls2zP8UG8zIkygIkl3Jr61l9wopRHFEewdthaPJN4N
         APKQfFbOey6oAIxJYWQcwXTEuPMDpkpFgfFjseJfDw/mLwtDdd4LdE519eZqdTUnuIHQ
         0ObQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=7D/YNhaj5UHq0kedJaomcbt6xIX68L/D9bTFhcd0ohk=;
        b=CVcRIcNu6FacDm6JGR98AdXQJoFhLHLBlKGzB4Cgv164NHGEJZkMBqgd4eJHAz9U49
         4vtb/ECJUU4N8TcvUZrS8bDR4tpd5alAXIkA8Y8HlV/EWhVTwpFLXQbBohx+EMDRgeLs
         bqx1DUIaroqntBTWjdw88KvIS+RVwKPGeLow3Vc3ZSmhobS2kU7xOprHK+z44stJlp0r
         dVOquIQw1SK4owuvJCUeP7QLaAFyZw5OsN/9T2dsXoY1FLe88M9Gf2xjqEdXcJ/K/qTT
         plneOje8LW/gv9t5c3m4bKzxW1OoQ+aMPXRMSyEA3XB6IUvqE/YAviI8cZxsVueP3uXV
         n2og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7D/YNhaj5UHq0kedJaomcbt6xIX68L/D9bTFhcd0ohk=;
        b=kCMR4GyGB5XXKl8ssbp3eZqDlZ+uPIitTUr6UmMC6fR/xfy7kNCZNi8oZfCmyoDk0J
         dXc6+fQWEl7dK/MqTrZ2BWtPdSdLu7lxLzs0ysqUAnfAFGhTbeOUFIk2qMwoSS5EQECK
         EyBXQtCadBaM8ZEbFz5tcBoecgHv6bRjBCCcAggrVHVG80ihSZS6BgTdCSv2nWpVisqm
         v6qYBp3OhQJjUoBAW5pnjgoz2zU5zU4tFhOhVoxcjWKXe/uypmnJ79ov+mN9WCIP6In5
         9RZO2V4/SCECR7RsMXtwKuxnKD43qaj1l3TFgh5j5KrC/8myVzoct7XCMqrob/9LNMYp
         a/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7D/YNhaj5UHq0kedJaomcbt6xIX68L/D9bTFhcd0ohk=;
        b=edQzWygJrL4CUXIEmTjFnZDkASNJi9tXKrwnr1qTF8SLKgms9BuV8OC1NtgDQ3O4b4
         XCuEmB3qwzQzHVP3Ga0+TKGkjiEXic+yI5fGqyFEeSXvDJmhDHiyCDAQXaEsE0z3cjBa
         NGl+Y75gLTqZq9UjRqap7zeyaQvcRCuEx6galxbaIpdm6uh7mCLrx49czY13KomHXUA4
         L8rmGEC7iEmGcd1bt/zfy6zSsla3ScdyDRFEkCUx8f6OWIrNZCOXzxU2kGo2xOqelJH2
         jm87yLwNMBj+NBpLmcJB1dfCRzN86sqNtrZ45Ib9Lwy58NCeA0SAy0rCHOGGHXL9rMLC
         eI0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336dutFdC3TrmIomG1YBTDjfxKeogZFrPaQfS/Rjgvv1zWGL8xA
	GfDR9BmPx7iWqnUXDxK7nNg=
X-Google-Smtp-Source: ABdhPJx5AsauVrOVZXJ2GcSZyRT38eIvg6ZfDpVsRCk9UEwzfz3982jU7tfA3Y7Z+ArdioT1JyXKpw==
X-Received: by 2002:a67:f48c:: with SMTP id o12mr372856vsn.59.1604560101473;
        Wed, 04 Nov 2020 23:08:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3137:: with SMTP id f23ls67286vsh.10.gmail; Wed, 04
 Nov 2020 23:08:21 -0800 (PST)
X-Received: by 2002:a67:e210:: with SMTP id g16mr441677vsa.28.1604560100969;
        Wed, 04 Nov 2020 23:08:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604560100; cv=none;
        d=google.com; s=arc-20160816;
        b=hOszqcal47OR9LMUx/PKc1LGjTWZUA1lFXW3kAWoe17gS1EhJlYWLryUjQSssTn5Ie
         GghPqdOSOxoZmidqZA/Gxc8Fayx1uFcxuQLJRvwXSgt66lL3yLttFYRnKH+rqm8l1sRd
         RfxR59BwQDLZ13ImA5Yw33F6SEb8F1VHH50KO5chNV71agPTU98xQkfmTgY/dQdApRIN
         mTe53RP2pR/4Pt5j/lprswO0QmHVOXT4qftjtcswCdN2Yk0B/QOTX2six6Y4Qn1Y/91P
         YZNKEEO5d6/4/FiTUcvkg37MeAcJ82nyJwFYoao8YycwlQsuQKTHKNQ+0T23Jnc/QzpW
         U+Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Rudq+BxmGW05/XY+i9ngxj4t7+k5n5S+27pzbC6A9xw=;
        b=ukW24MZLfmmn5iYDsH39TRKxRCW96Zo3Nn40ju2l+QLKZEYhu/yOUz6Z8DLueTzB1b
         h75kovxKaawN2WktY4XEDnxn6iJx9e/wepi2uB6IZp3imvPPSx0wW0moU6RaGu+51OQS
         iNVuBve4GeEvuh3BlW+EEF7pYzL+E0ib8jEWrPBfY1XUGb8fkrqB2eXB+xOnSahgrKIf
         3+JRpRIx9z3DRWdfGexQyPoCziPv1JLPX9REuKROeCPlDnDFkzr5Wbq+pS2CVlUg7eYp
         ZSIGVBSsCXROuvtBqPhDJ9xn+DhWnAE9DM8feODiCEbSFfV10lUacmqexL2cNbmXBPoW
         JHIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0043.hostedemail.com. [216.40.44.43])
        by gmr-mx.google.com with ESMTPS id v18si55650uat.0.2020.11.04.23.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 23:08:20 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.43;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 142CC180A8450;
	Thu,  5 Nov 2020 07:08:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2560:2563:2682:2685:2693:2731:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:6119:6120:7875:7903:8957:9025:10004:10400:10848:11232:11658:11783:11914:12043:12297:12438:12679:12740:12895:13069:13149:13161:13229:13230:13311:13357:13439:13845:13894:14181:14659:14721:21080:21627:21740:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: bean75_200cdb0272c8
X-Filterd-Recvd-Size: 2929
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Thu,  5 Nov 2020 07:08:19 +0000 (UTC)
Message-ID: <1418629172bac8fe75fee59f13e1192dd1ae5e4e.camel@perches.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML
	 <linux-kernel@vger.kernel.org>
Date: Wed, 04 Nov 2020 23:08:18 -0800
In-Reply-To: <CANiq72m0Rwu78AVjt71Ym55E_xvk6SSC5ZpMoS+WEt=ri2MgNQ@mail.gmail.com>
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
	 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
	 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
	 <ba3126e1424c578f5040c7a6f04cdd6a334b2db4.camel@perches.com>
	 <CAKwvOdmoR9xph_TK5zaKdh1qHX4Sh9MW9xYcxLJf6wZfxSkv2Q@mail.gmail.com>
	 <CANiq72m0Rwu78AVjt71Ym55E_xvk6SSC5ZpMoS+WEt=ri2MgNQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.43 is neither permitted nor denied by best guess
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

On Thu, 2020-11-05 at 07:44 +0100, Miguel Ojeda wrote:
> There are a few important new features:

https://clang.llvm.org/docs/ClangFormatStyleOptions.html

> =C2=A0=C2=A0- AlignConsecutiveMacros is probably one of the biggest one f=
or the
> kernel that we were missing so far.

There's no control as to effective column nor sensible mechanism to
avoid extremely long indents with a single exceptional entry.

> =C2=A0=C2=A0- IndentPPDirectives and

Some yes, mostly no.

AlignEscapedNewlines:

Generally the kernel uses column 72 but there's not real consistency.
clang-format doesn't have that option as far as I can tell.

> Then there are a few others that pertain to us too:
> =C2=A0=C2=A0- SpaceBeforeSquareBrackets

no

> =C2=A0=C2=A0- SpacesInConditionalStatement

no
=20
> =C2=A0=C2=A0- SpaceAfterLogicalNot

no

> =C2=A0=C2=A0- SpaceInEmptyBlock

no

> =C2=A0=C2=A0- IndentGotoLabels

no

>=20
> Others are also worth checking to see if we can take advantage of them:
> =C2=A0=C2=A0- IncludeBlocks (and configuring IncludeCategories etc.)

Might be worthwhile.  It's different by maintainer preference though.
Reverse Xmas tree is somewhat common in networking, (which I think is
silly, but DaveM likes it).  Some like alphabetic ordering, others
by order of include.

> =C2=A0=C2=A0- StatementMacros

Kernel is not c++ so this is irrelevant for gcc macro statement expressions=
.

> Then there are others that are not related to us, but to be consistent
> we would explicitly set them in the file. Finally, for extra points,
> we could already document the new ones in LLVM 11 if any, for the
> future, but that is optional.
>=20
> If no one is up for the task, I will eventually do it... :-)

Enjoy...

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1418629172bac8fe75fee59f13e1192dd1ae5e4e.camel%40perches.=
com.
