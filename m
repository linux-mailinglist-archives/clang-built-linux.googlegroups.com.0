Return-Path: <clang-built-linux+bncBDY3NC743AGBBFOUZHVAKGQE63PSXYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF588B155
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 09:43:18 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id d33sf465174yba.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565682197; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYGytDYvbeh/81neExnhHEGCYIU44u0FHW/x6VBSE0dvf0q535syzMtGhqLFXCJJLg
         XwCHpWUuDMbErbJylVRkahLMHTN5SAw2+7a5NJd0POK/XffA7MscVzLW64/sdMcpc4d1
         kgWjWeFDWZnDQKamudnEOhFy+LIjffFy7O0j7FMvnsIi2Nb+Ioy6sfVQfyNXpno1a73t
         VAk1Dh6EBWAZNxtDXPAO2qFsstCAea+Hg2FdILxXTUjh9XZzGOjkjZSLONFBZ/agwHVR
         onYF0EOCxEvYW0Zw568wZhzBTCE/9coVlL0rgOm3elzJxipLnKv48uWTZIDjdHmJnhRp
         stZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=skPVP8WLnx7wHnPiIShQYZZMV/AAVkbiFIibUkIVSnM=;
        b=GPxjfS1cUzOnJ1xe20d49VXSCniJrLIbqg5Xo2u+9q0CrbfPRk1UFIvmKVwUHssS3l
         XUaxUeIvbE8CWvMaoSBAbUyJK223sPbpTbl05mZDNZiGolqaRP23SlHliEpRTrA4BC4j
         +GphxM3wjYA+UzihFa7HGsP2AaltQuCtoaonia0SszajCX2N3mp1WcEqki0Z0iqv3tYE
         7X7DFBh2csUluSRumFsd1VBqwWs3XWQar7uhErq1KaWHmMi9a3S4ZrEWAR2xx7FQc1KL
         ZaTa0Gf+WMmZOb6nuY1qKZDG+TxZXPtKyCEKF7fIZZVNO3tkRAo5V0t8l12XrmPc2M3I
         kiUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=skPVP8WLnx7wHnPiIShQYZZMV/AAVkbiFIibUkIVSnM=;
        b=Cl7He6nEp/jFfkjOzgSTegsQYGSl9HYPctgm4W8sub+Xq+BcIwnSDGED9NemHK6WCX
         DcxXp1/AxGBf6p9cAiGcVfkp8Np7RgehOKUpuBjYMVA79JgbqIcufO8q6tssrV6t+CmE
         le5oXI28mHwkC6OBoEHRnb3Jsh2y+pqNBhHkh1x8DmSJKo/Z6Dn6V6hLKdqmZKfggpXK
         DG0WIsjDHWycbWmC+v0JA88J1hK1YJLt8GyBc0vmJHcl/wqgd4pO+RdYIQi3DdBKPxWb
         tqbrh2rtMzEFyYy1l9sDqml65/EOTI0z8iMtTIrVpSwWRS5Dbr44Va/vFfbolZHO+I4p
         AzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skPVP8WLnx7wHnPiIShQYZZMV/AAVkbiFIibUkIVSnM=;
        b=ieFoHZD5w+3d0wVBHGBXzwOZe3D2ZdjIk7Y+D+1G7pUSVbKwSXdogv/CfbOYTITgHd
         7aWtWzBx2pfi/tjhREJBXLrWG13GvoLy+Y9H6cL4+DtWdc1yTuWyNrfdxMbIHvUqnzm7
         g0HbfTFwoSoOCjJRIKEVnoFFH5kr66ReYPbqE3sZk+ecgq8iGFJ/SDf527KNWNoVdWcB
         OZwssHSxQTEQQsYWUY6k48xAHEHcSX2esPprO8S0449oI6+DrVf1Rsd5rDxASWfzM/qH
         4h0VBCHFx163BwIPGsRaYxl1tmS6aOnZg4UbnQOL/OqvtdsBJ8fTNpnPOBfE018QV4pY
         sTRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcvdz5ijlgLecl8pZIidSeNerUBWRDJm5o8K0SvARo1uUauIow
	sezmbmBgb0f9w0UYNB17FZs=
X-Google-Smtp-Source: APXvYqxNwDAVA65w+be2S64qxAxjL2dMs/EoX812w7DXpJ2iTO3qpRUvXd0/90CSnnFH/4eK/w/PRQ==
X-Received: by 2002:a25:d143:: with SMTP id i64mr6336685ybg.111.1565682197509;
        Tue, 13 Aug 2019 00:43:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:5255:: with SMTP id g82ls4139237ywb.9.gmail; Tue, 13 Aug
 2019 00:43:17 -0700 (PDT)
X-Received: by 2002:a0d:fe83:: with SMTP id o125mr7702648ywf.401.1565682197243;
        Tue, 13 Aug 2019 00:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565682197; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4AT+5kQ80/FUl1A/p6GXsPiynSlIsTJMw/jBei16yC8K7cbxkRP1FSrMi6OG+7PF4
         /zUrUptDJSaylde4SMSVd69jnppaq27Kw+FWl0x1f4yhjD2dtWn5DsjSSx8E5gAazIqn
         fEqpDGiNSgdakSMxkZFAKUfUuKDtUlT31uAP5PU9mo0kQRjGihiyjFkmn0YbCcldQs2d
         pmRULUtYnYE44EDfZ/9R0o9VKWkIiBNfIXT/mzvJsXjh5b89z4OL12fWGkcqfhsdT5NE
         Vfpg/td5sG1hLzkq8aZU8L7iMO4mglsgzTugUAR7irdtCwLTpHzuUh9NX463Ut6L3u0g
         zdLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=msZq8Y1zrvwSdmlTQfxCiTMdkbgOtYrcYO9PByg5t/4=;
        b=jD8L59lSy/9QjKurJNIOmkvsd4/cl+mYWiXlBUbU0iGcHg6gJA15NmmChzJvS8DohD
         25WTBLrt6qu++nHI1UtybNmabaRBMu4dFJmhMGKv5VMYvHS5KinQA3CqGNfNj1H+tdPc
         wJbO+3XbTX2MdfUZeFzFTvI+RpD/0keprh9dSLIsfXes7enIAg0SLeBKDdUL+KzKVCdE
         UrJQrSEQVuaLqD65xOasIEubXxwvhqjT549gLIu+ph9yLf1Vq7ndCm3td4L6cWdSX7hc
         glAnZzXq6ZonI2Z5UMtpLvYpHMIJUVgy5ilTuVv8YGyXFfHzXDCT1rCB+JM/qSsOTqvP
         U8bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0208.hostedemail.com. [216.40.44.208])
        by gmr-mx.google.com with ESMTPS id g15si1964917ybq.0.2019.08.13.00.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 00:43:17 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.208 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.208;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id BBDD75009;
	Tue, 13 Aug 2019 07:43:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2559:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:7903:9025:10004:10400:10848:11232:11658:11914:12043:12297:12555:12679:12698:12737:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:30012:30054:30060:30070:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: van78_1c3a8abe7f93e
X-Filterd-Recvd-Size: 2204
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf17.hostedemail.com (Postfix) with ESMTPA;
	Tue, 13 Aug 2019 07:43:13 +0000 (UTC)
Message-ID: <2a6c7952793a7973c7edc6b2c44ac3c2587562fd.camel@perches.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, Linux Memory Management List
 <linux-mm@kvack.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>
Date: Tue, 13 Aug 2019 00:43:12 -0700
In-Reply-To: <3078e553a777976655f72718d088791363544caa.camel@perches.com>
References: <20190812214711.83710-1-nhuck@google.com>
	 <20190812221416.139678-1-nhuck@google.com>
	 <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
	 <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
	 <20190813063327.GA46858@archlinux-threadripper>
	 <3078e553a777976655f72718d088791363544caa.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.208 is neither permitted nor denied by best guess
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

On Tue, 2019-08-13 at 00:04 -0700, Joe Perches wrote:
> On Mon, 2019-08-12 at 23:33 -0700, Nathan Chancellor wrote:
[]
> > a disagreement between GCC and Clang on
> > emitting a warning when falling through to a case statement that is
> > either the last one and empty or simply breaks..
[]
> > I personally think that GCC is right and Clang should adapt but I don't
> > know enough about the Clang codebase to know how feasible this is.
> 
> I think gcc is wrong here and code like
> 
> 	switch (foo) {
> 	case 1:
> 		bar = 1;
> 	default:
> 		break;
> 	}
> 
> should emit a fallthrough warning.

btw: I just filed https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2a6c7952793a7973c7edc6b2c44ac3c2587562fd.camel%40perches.com.
