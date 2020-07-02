Return-Path: <clang-built-linux+bncBDY3NC743AGBB4ET7D3QKGQESOODHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAC621293A
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 18:23:13 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id z26sf1213118qto.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 09:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593706992; cv=pass;
        d=google.com; s=arc-20160816;
        b=Op+3rS2Hf6jAR8CC4YDwPzW1jsaX5mfr7zuKtDc9GrznDsxsgP+KIKaynd8Dm5b8EE
         wpCnnhBLvUBt6bEl3X72LwOIBBWyI7ChkE6nL1EGGkLoM17Z46xeCnQCVf41WK5JKbpW
         /gaNSLnL6MhRyla8NApcAzYE5USZcPGlYkbpBSVqnD+hOU16yxQ/HzTL7WGs8IwSxvWJ
         rDZ1R8Y+IH2P8i8C2O9zL0JTOsEE3qbbHEBKlpeR9eHdprBWt/mQ1iP5+CxIk0/ZEJhT
         P5qEJRIWrzPpbG/2UOWo3mgeW4zJdrfdBx2fLXrYymYiUBKwTAg45ymc7hFchP891eLx
         nSDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=HOrEwYn0zAhaVy7Wgx0Nwe+0YZMHAYhQAkKeQcxjfjs=;
        b=0JSSlmyczWt487eSN8RlGKvWQ9O+yNVz5eLOXHuz/bltzIFW6ee3pTUCyyevFajPL3
         gnko5j0qkeNaxU2Mu47j7nyrDazRx8tAuMpdopIbGi7jz2DY5ZAElmrIQiUbAn6U4+4w
         aq5s2vjoggJgiwHFYFo1v+ZSCB1lVO/wJggT69SbkYhmTOuE9fewLXxTyi0lyiw98qEA
         ot//YCznQMtBFvGwgWGXUbzNOyZ4ZRH6z/6I4C5hPeULlxC0pyJKXG+DhgU2EfgX6BOj
         L3TWGwkPzzRVMVRuGXZDbx19S+QViex+tx0mLCgzvy9M8gCi9eFBxqG3LHeoHqGiCaQ0
         nWeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.99 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HOrEwYn0zAhaVy7Wgx0Nwe+0YZMHAYhQAkKeQcxjfjs=;
        b=UuIpFNzt+30u5BST34IYclbfjRllF57bPPJObDtvhrFOMzvU2iyGbN/FexsDMNKeZO
         X1jF7juffnPtQL2ss7FaLH9F482x1Nkqyj/AqOLV50n+AzQtCfuNiPY7eVzvDCU8WM2X
         UdE105rtumONHtxTGBCSu37SE3os4Nqgk9Vo3omCPcCeAIuc/z7sSTNctd/pL29P1lxs
         Dyo4qL2buTGipKhlaEqQoNoyqCFSm6W6TB7xtB8RA6XWS0zc3Iy6HXl1AFVtyUbVZ9yf
         83POy0qhBa86DzCmzvA6CMo9iMH5A1OHgO+HVgxuYQtz0DkGf6vb0mJlNF6I4QjOpY7e
         4gYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HOrEwYn0zAhaVy7Wgx0Nwe+0YZMHAYhQAkKeQcxjfjs=;
        b=Xf7tbB5U7Kaop/LxDwn8I8DLY/kUJwsKi/5DP457dXrCRtcKSpqVbzqjmahS1tngGR
         sDK2u+7sOAKZc0e2UwTset8N5oT4hrqTWn56rKmmZykjZ2bckgbeySRJQEaXwQaXsXUw
         eGFdrovYUsoFdK48tpRly9BUUla56GV//uQGEFdNMSduaFbo3vWCBR4uzbasXCmVBk4r
         DnPL/BZ8g0BWiQW5eKQN+k3JLJ/73auaulDy3wTfl5RPG1mV3J6HYxYE3YGUsKh67WF2
         7YbXlo0Rvv83ockURYlJbJ2Lf2ETFfzJRxoTSYHA4s17+5RczaFlSQ8l99Dmc7xSV6gY
         fPuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OiGHRRBPjR64a4/+YFIqarz2CscXp/kK77Aepzk7jJgkW3LVZ
	hmL3Pe242/gHHFbzfo0ozTg=
X-Google-Smtp-Source: ABdhPJy1BOKFb9pJEe7p4dKqGRKGAImsSlc9y9F37EOTciOsn4QKDOCu5X8tHJBraZ3RG+nogiBy+g==
X-Received: by 2002:a37:6d4:: with SMTP id 203mr30623421qkg.62.1593706992588;
        Thu, 02 Jul 2020 09:23:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls2982847qkd.2.gmail; Thu, 02 Jul
 2020 09:23:12 -0700 (PDT)
X-Received: by 2002:a37:b83:: with SMTP id 125mr29775061qkl.96.1593706992127;
        Thu, 02 Jul 2020 09:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593706992; cv=none;
        d=google.com; s=arc-20160816;
        b=kEL1vd0gi6UGHRu2xcH1Zz7XrYV8OyH4fpiX1dPCo+E7QucBsBoN1uHEkwVc0E+IeY
         nyJ2NUJYMlum3Bfl1tptKkvlwMjp5nWi4UTvKk/lJsIvXiYbGw4zxWkBZyep0WF3nIol
         5kGrF33vZ5YI7WmHkXW73hVdE2U3L+LgPyRuKqjRV8ijRUxD5wWqh2pF4HoDoE415EiN
         vjZjoRhCRY2lRM6lnVsgukuL/FpShzbjsKe+p4X7hhXNQu4BgrXjaMrxdfby1so70e/z
         IgHPAlaP7C/yDk+QaMq5D58tRgwXhYszNrn8b1kSAbA8LA9X/TK1FxMqIwoFeJtVu9yT
         55ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=vG5xop9VWY+B/OX9T9AqOb0zl5mjTLfnH5svOmOqlBk=;
        b=HOeDjjSL//D1i3JA7bGaUNgwNtUSfy9iI2CiD9/oTj4DqAgg9a6lFqzgz+0tf/z1Tl
         4dUFY9E+NlvBMa/nFJpIIyDaUZKdUOiPmAMNcndz9dS/SYZ33LxFIk8qbU5SUOEGIQd7
         X/3npcyVC/hAUj1VOSPvG+W/hnEfGcZ1E9qeGMkb7GJg1ihik9/f9lMOC7TMSzaHIIru
         fvuj4eSgJgQAkOZaXTfIT1PPKXKDb4nrDiW34QWrJ+Hk4y93M5ejswRUClMQBaaK/9hQ
         ZvdujwqYdVCHGous/7HsfGZIA/n4UH1zBvr6Dci4wm6tpzHt+KH3QiBdBjlV1YAZ8qd2
         YM4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.99 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0099.hostedemail.com. [216.40.44.99])
        by gmr-mx.google.com with ESMTPS id u17si553848qka.5.2020.07.02.09.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 09:23:12 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.99 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.99;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 53EF6180A813A;
	Thu,  2 Jul 2020 16:23:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6248:6742:7875:9010:9025:9040:10004:10400:11026:11232:11658:11914:12043:12295:12297:12438:12679:12740:12760:12895:13069:13073:13095:13181:13229:13311:13357:13439:13618:14096:14097:14180:14181:14659:14721:14777:21060:21080:21324:21433:21451:21611:21627:21939:30054:30060:30070:30079:30080:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: eggs64_191235726e8a
X-Filterd-Recvd-Size: 3163
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Thu,  2 Jul 2020 16:23:08 +0000 (UTC)
Message-ID: <f65392bbd1732eff72d5b24c5ba3ea230ab2a3ae.camel@perches.com>
Subject: Re: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org, Nick Desaulniers
 <ndesaulniers@google.com>,  Linus Torvalds <torvalds@linux-foundation.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko
 <glider@google.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, 
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org,  linux-wireless@vger.kernel.org,
 linux-ide@vger.kernel.org,  linux-clk@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mm@kvack.org, 
 clang-built-linux@googlegroups.com
Date: Thu, 02 Jul 2020 09:23:07 -0700
In-Reply-To: <202007020839.545A571CA4@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
	 <20200620033007.1444705-9-keescook@chromium.org>
	 <20200701203920.GC3776@sirena.org.uk> <202007020819.318824DA@keescook>
	 <20200702152335.GJ4483@sirena.org.uk> <202007020839.545A571CA4@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.3-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.99 is neither permitted nor denied by best guess
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

On Thu, 2020-07-02 at 08:42 -0700, Kees Cook wrote:
> On Thu, Jul 02, 2020 at 04:23:35PM +0100, Mark Brown wrote:
> > On Thu, Jul 02, 2020 at 08:21:40AM -0700, Kees Cook wrote:
> > > On Wed, Jul 01, 2020 at 09:39:20PM +0100, Mark Brown wrote:
> > > > Please copy maintainers on patches :(
> > > Hi! Sorry about that; the CC list was giant, so I had opted for using
> > > subsystem mailing lists where possible.
> > 
> > If you're going to err in a direction there I'd err in the direction of
> > CCing the people not the list - I only saw this since I was looking for
> > something else, I don't normally see stuff in the mailing list folder.
> 
> Yeah, I've gotten conflicting feedback on treewide changes:
> - please CC me on only the one patch, I don't want to see everything else
> - please CC me on the whole series, I want the full context for the change
> 
> I opted toward "CC me on this series", but then I get stuck when the CC
> is giant. I think I may switch back to individual CCs for specific
> patches, and point people to lore if they want greater context. (lore
> didn't exist before...)

IMO:

For a patch series that spans multiple subsystems,
each patch should always CC any specific subsystem
maintainers..

A good trick would be to use the cover letter
message-id: and have each individual patch in the
series reference the cover letter id below the
--- line so any reviewer doesn't have to find the
in-reply-to: message id and then reference the
lore link.

Something like:

---

For complete series see: https://lore.kernel.org/r/<cover_letter_message_id>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f65392bbd1732eff72d5b24c5ba3ea230ab2a3ae.camel%40perches.com.
