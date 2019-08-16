Return-Path: <clang-built-linux+bncBDY3NC743AGBBN633HVAKGQEFLEU5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 338538FE7B
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 10:47:53 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a20sf3380883pfn.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Aug 2019 01:47:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565945271; cv=pass;
        d=google.com; s=arc-20160816;
        b=W7+T8kafiD17qmzThcUzabifnao3iHB6IZtKtafkpZnE7S6dfdIl+DfVzhXdj/C1SJ
         HXICfXnwfVcb4tae7crtA2H5GraTWeE5kx+hWQr7qJtZ95/fn7vMahNJpKXnJnA0DTdw
         U+V43OGAP5mz5RhJTfSPUMlcTsc/Y24T1fJkZikLrtYcaZjwWd+gCqnSMWj2dzv/C1es
         5rsVYiD7c2C6O03rtUMtAOt0xn9wSYkHGqnwKW7EKYBlQmhdSRUb8mCtsXByP+zEYRey
         mNGshoTuWixjdvtbqGhMnXiZW0f1FZLaQbYTPtk7+Fw8t6fDeUlQma+tS/im1eX48QJD
         gQJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=gbApFb82nkFYaZw74IjqFs2bzKSsFWtOelQvAjIXzNg=;
        b=eGYaK1tZ9yf2bgmcSNWdBaZJjPW+2HBycUKkhAT+3MbxKU84R1R8H2FCJHSybPOU/W
         31+v3EW263Dojpi88VZbZnBxf5Cb+uuNgWS7tKccdXLdE/2zpwpeUXJQbumLV1SkXc7t
         MA9RYdyryTMK3+FvJyiH9I/urBjQOSfi4cZ+6fLYGo1k0MqeQwsx9isRaTig6hCvh7XC
         Kse6b3wFkZvrSbh7cYWDG1Jfb5kFwFMddEkCK/MyIUC+esIF1n1Wvf8Vi8qOTYTfmmjQ
         7D2evMh6vh8T6GhAll7wqksY6oozqEnBKpI+2iz32tuaPKknXKLVPlYr9Tq3emKV3knf
         F3+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gbApFb82nkFYaZw74IjqFs2bzKSsFWtOelQvAjIXzNg=;
        b=AVD9cT63iGR4/QKuAFA9vj5+WJm57dBFgeB6TpBOQBRXwQNXlZSKuwkUgKQJ4yGzoQ
         96P+iEaR0U3muA62YlkE4S9r/OpCq7ojF2hR71QwI7e0qhmVv4aBpR/XHUA9TVcVKYxD
         SmQ/oeU4oT6NNTfUnFFuWbcHoQr1Z/FZ5sLj7W5Bwultp9NnotoGGZGVH4PYcJXQ7ILl
         kdqWu7nVjOwNKAsxPplCHLQLYQrJmdQBB5yg3lAiy2Xd8x5TiHIXUgzAPOKz0PMb5Wop
         35xxlPAAOfedannSd0AMZOFGDpofqk7y0L+g1L0Ya0HAcdGin8+d+PCoN6wC01vLl9j7
         BKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gbApFb82nkFYaZw74IjqFs2bzKSsFWtOelQvAjIXzNg=;
        b=F7Mt1pfI7CWBwoQ++c5l454M/7MX8DMYFzbPZK0sjIA6b6GdhOlz5LLWDS82uP3kaI
         4GkTfYlqsVgBIF5GgeHQuHyOAEXXvqnnjHMd9dfnRlhespV4BiUEJPj8uTTDD2sWGq5n
         R6DSxqmWnNKwWgBpY/wd2awEm1TsD5gVt5WdHyn7tQImLIPsiWf+YIrBdOVVO8kh7KdC
         PUHkaZnJpYPx74o32yhq329toxFxssvlp4DYRrIVk73eEKiHnkyXWeK/fx+vJ3CkFE5X
         uJWi/7iza+DOSROPLZ+WkEn+HRSiaZA6FZl7wVxW1AkNp3yFlHlpulKqTZ6UtoRQ7JLC
         XCgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkqV2rqJaIKCDLZpQwmc7wSG72LrIIrvytbXM2llLiiyoLX9ar
	8TgU48MLMZAJKBuQrHdUbTk=
X-Google-Smtp-Source: APXvYqxyUL1E/Fr9bRN3ZoDcYHB17lPg8LuZCDYt9ZAoY3axbkZZZbLs7xHF87VFwZ14IU68OAp6Zw==
X-Received: by 2002:a17:902:9a82:: with SMTP id w2mr8110885plp.291.1565945271577;
        Fri, 16 Aug 2019 01:47:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6203:: with SMTP id d3ls1662871pgv.16.gmail; Fri, 16 Aug
 2019 01:47:51 -0700 (PDT)
X-Received: by 2002:aa7:91ca:: with SMTP id z10mr9768820pfa.30.1565945271257;
        Fri, 16 Aug 2019 01:47:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565945271; cv=none;
        d=google.com; s=arc-20160816;
        b=qPcueLZypUnyMOFerKfIRFgZi1bjX75PYNLxaP0bM+XbySz41DnNV2dZosfxw3CNTH
         /lJsZsMix9G4o+IK97uWGggk68x04x5jrAnFdvVjXhuEIJOZ21QwX9+I0XbPUZfKtIbX
         UtdyNYDGmxc+NkmdXO0tka5NaxpdGsEVegcdXKbY81A4UZR3tVFPQc6uUJiigaVn+v2+
         ko9hpTCqE5iakugVfB35Zkmgi01ohtnD9ww6pEd/xN0SKXng2u4dfymXk/lHgEPQtra7
         PMc4iTmQ0Hkzz1tF6V6zpjlltW+tLZ1WC6dwVePmsQQ4JQNfF3IfUwmiAYCZT/JZ9fpj
         aF8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Dsy1gLqfR2QlNa7lvWmIHeyDGZ2Mo4kzAli2k7lRSPw=;
        b=jSJMr6tEYkgse98LqyiNx+U551HL6DaHtTGyN/M8HrbCE6OGS92TkLVhSErbCtfcLq
         ZjDbvHndduCG+d13zspxxNkXHoECzx98fvqRBgCJeiIOmRydypW+f11JwStuz/cJRfPo
         n04P0mXIfaQxnsvOba6YlrbELpLfi8JDXzFyZuuAJ9B7nhZswGP1ZSnaVz620iJdBWDL
         Vq6DWq8V+rygT5RVZUscdOjSFX7Q+rvO4l+o7OGUAyKRK2sZmsDODEP40lHu3Jhi5gLe
         PyF7qHJx4ZOV9EfJ2BEIvwG7M1nLrpxgKqJBdJ+LvrC89Wy2GtUVmblx3F1O8XcG8C9A
         TljA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0191.hostedemail.com. [216.40.44.191])
        by gmr-mx.google.com with ESMTPS id d9si207408plj.5.2019.08.16.01.47.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Aug 2019 01:47:51 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.191 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.191;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 8FC5618224D6E;
	Fri, 16 Aug 2019 08:47:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:355:379:599:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2525:2559:2563:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4823:5007:6119:7875:7903:7974:8957:8985:9025:10004:10400:10848:11232:11658:11914:12043:12114:12297:12346:12555:12663:12679:12740:12760:12895:12986:13255:13439:14093:14097:14181:14659:14721:14877:21080:21451:21627:21740:21795:30051:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: spot41_26fea4e843a48
X-Filterd-Recvd-Size: 4132
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Fri, 16 Aug 2019 08:47:47 +0000 (UTC)
Message-ID: <dc21098f97f864523df808797c49c734e07e1cfb.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>, Vivien Didelot <vivien.didelot@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Fri, 16 Aug 2019 01:47:46 -0700
In-Reply-To: <128728a0965240aa5b68970d7721d857176ae7cd.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
	 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
	 <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
	 <CANiq72m5=pqHaNi3P5VAMviaoX6yxT7OPg6sys1uMDki0g2bOw@mail.gmail.com>
	 <128728a0965240aa5b68970d7721d857176ae7cd.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.191 is neither permitted nor denied by best guess
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

(adding Vivien Didelot for vim)

On Wed, 2019-08-14 at 19:44 -0700, Joe Perches wrote:
> On Tue, 2019-08-13 at 14:44 +0200, Miguel Ojeda wrote:
> > Hm... I would go for either __fallthrough as the rest of attributes,
> > or simply fallthrough -- FALLTHROUGH seems wrong. If you want it that
> > way for visibility, then I would choose __fallthrough, since the
> > underscores are quite prominent and anyway IDEs typically highlight
> > macros in a different color than keywords (return etc.).
> 
> Just fyi:
> 
> I added this line to my .emacs and "fallthrough" is now
> syntax highlighted like every other keyword.
> 
>   (font-lock-add-keywords 'c-mode
> 			'(("\\<\\(fallthrough\\)\\>" . font-lock-keyword-face)))
> 
> So now my linux-c-mode block is:
> 
> (defun linux-c-mode ()
>   "C mode with adjusted defaults for use with the Linux kernel."
>   (interactive)
>   (font-lock-add-keywords 'c-mode
> 			'(("\\<\\(fallthrough\\)\\>" . font-lock-keyword-face)))
>   (c-mode)
>   (c-set-style "K&R")
>   (setq c-basic-offset 8)
>   (setq c-indent-level 8)
>   (setq c-brace-imaginary-offset 0)
>   (setq c-brace-offset -8)
>   (setq c-argdecl-indent 8)
>   (setq c-label-offset -8)
>   (setq c-continued-statement-offset 8)
>   (setq indent-tabs-mode t)
>   (setq tab-width 8)
>   (setq show-trailing-whitespace t)
>   )
> 
> I don't know to do that for vim nor any other ide,
> but I trust someone will know and show how it's done.

I investigated vim a bit as I am not a vim user.

If this is the most commonly used vim style,
perhaps a reference to this style could be added
to Documentation/process/coding-style.rst

https://github.com/vivien/vim-linux-coding-style

I had thought that
	syn keyword cKeyword fallthrough
would work, but it does not add syntax coloring
	syn keyword cStatement fallthrough
does through.

If ~.vim/plugin/linuxsty.vim is commonly used, maybe
---
 plugin/linuxsty.vim | 1 +
 1 file changed, 1 insertion(+)

diff --git a/plugin/linuxsty.vim b/plugin/linuxsty.vim
index 18b2867..44824b8 100644
--- a/plugin/linuxsty.vim
+++ b/plugin/linuxsty.vim
@@ -69,6 +69,7 @@ function s:LinuxFormatting()
 endfunction
 
 function s:LinuxKeywords()
+    syn keyword cStatement fallthrough
     syn keyword cOperator likely unlikely
     syn keyword cType u8 u16 u32 u64 s8 s16 s32 s64
     syn keyword cType __u8 __u16 __u32 __u64 __s8 __s16 __s32 __s64


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dc21098f97f864523df808797c49c734e07e1cfb.camel%40perches.com.
