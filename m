Return-Path: <clang-built-linux+bncBDY3NC743AGBBJVF4H3AKGQEK6H2T6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id E98B31EDAA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 03:47:19 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id s7sf3454876plp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 18:47:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591235238; cv=pass;
        d=google.com; s=arc-20160816;
        b=IsOAl84/TFrpMFLvfknQJC3PkegLtxkeepk+2/gT+bQCnOGV9x8UghzfEoKRikJRd0
         sWwfo//QeNAwdtvYCIcHO4OqVUdcbArjJkRT+UERskuw83ShrXB8ulfa/TKyk6goiwsp
         vHnFs1JIJmIQ2EVnSmAx4gie/2n5uXcu4yaXg/DFS+aadeoSNmeviZfEOgkC+st2tXO9
         tCssQIa9XcfjfEeExm2kL9B7dmYZmFxToUOzCA18TL/rYt1WEu20GX6iE5paLG50pU66
         ZU8P2LMfD4koCLYGm6XWTYQ68lxc2c9T1Q6yYS8+kMwh8LC7PBCrK8NmDOfmVRWf4MQn
         4NCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=iG4Cz/fV9shbtAcWvhGkXplXA43ify167MSEIBDkg18=;
        b=UW1ZYmZiS60Aq8mGSlg17eGGEEuSvbYS7NFCLbK/tH2ecPefX8MRG0NOSmukIljHRm
         lBwr5eiHoU69ZKRmD2PLHgq78wJq7/N4ZHIVPK8oeIynr5J885X2cGl/4O3Jmf9fT/A6
         OzDateKWMvAJTXeo6bk8sIKCFU+FZlgBuiUhmPa9XlWb+6yxG82yu0kI26nOqUkZlgfF
         s51eJuz+6JreAyBwIaVniGp/MveO4VBSfyU0BdeVvn2Aw7JzYHyeebFpl4eRPVciMNf8
         5SFPAIdhRxM7V8iBulVzFq5N1km0OLhnza25zmy58eUOywvOCpoNwOOVFrD4XTeO/TY+
         RaWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.122 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iG4Cz/fV9shbtAcWvhGkXplXA43ify167MSEIBDkg18=;
        b=Tk1SgZLSNP1cvdRrOuBpIr3VOPRb8zxuvRBqUzcRzmHIstUZdomLwtkEFTWXN6ba/v
         xwgEZf+Cb3L585vxm9R9ZIKBDOQ/7C4/IRyBRFt1cQVnHWF9Ynlp5o2Ye0bjzSH3B6qI
         XhzAUJ19c9ZNM56mbQwUmsltLN5UbI7BB+tLG+2UqTl85cK3r05LzfgsWOKpsFaULrBh
         mdoA6bvlzCRIqJyP7f4/xyO3kH8Fzzyz7DdRMKDfi+2r5MHP/l4OAphqakWhoI8JcI6+
         KfixH/ktmwvNZlDfSD/UAei8N7D/27XrjcVCR9OOl0/CW0O7WzibT23lD3YM/J9rMHnq
         00kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iG4Cz/fV9shbtAcWvhGkXplXA43ify167MSEIBDkg18=;
        b=jqGvu+/KUtm76Tnhg1VsCJlzYSsarXh0wEkVwjHQgjso3e+h8fFOST1mydKHE/Q8u/
         Up0QQbV8lcfdvhc8tNCguGjBOp0ishkNbAAsjDbfC7Pbz0kSkgDw1bCysuVZySkIILb+
         m+EihgGUgJ7iH0uXc50+ftCAfNinF7NE7NRsgb8HSTG0DR+7PuhE1eFaf3RvcK1Me/j+
         aJ+xqJlJcmGN+yMXiXWJYfDJsd7hAqSM8YsgHDlntuC3dvlhkE6oKi3Xk2K6j+ntLkLU
         qeZU2om7W8aVlvod3jkfWcJu7ARSwZGGLUcRzS76SFHLc8lv2+DsY2pnHqr+P2lpB2Rq
         UAqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531drBWfpRQJdMsbLDujHWt8p881KTEksa5+XHxCk/h+cXd9Z/8d
	i/upiKCBEV7AHvY4I6z2WPg=
X-Google-Smtp-Source: ABdhPJy8nfKD6Wq8Q6/X8J5Rh05lOTbKwGZVpa8ut99ftlRRJq/SP0P0yetawcGeDfbsdZSZHPy4/w==
X-Received: by 2002:a17:90b:2042:: with SMTP id ji2mr3228165pjb.68.1591235238558;
        Wed, 03 Jun 2020 18:47:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1415:: with SMTP id u21ls1138324pgl.7.gmail; Wed, 03 Jun
 2020 18:47:18 -0700 (PDT)
X-Received: by 2002:aa7:9599:: with SMTP id z25mr2010348pfj.176.1591235238049;
        Wed, 03 Jun 2020 18:47:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591235238; cv=none;
        d=google.com; s=arc-20160816;
        b=c8zOEpfwuiFqVKGN6+adanz0b0wzdzTaX6l6EReXZb+WDNzPBY38mYTCTSjVa9CymC
         LtcAFDxIFUxikxor2bPhcmIo+DAOIeT+tZ0hCTn9KKnf8c6u93BzVf25QxIcdluwYHI4
         dBJNvKmYHeJ8/gMENYbswzUSkIomJtjCLBRTZJEnVx4pitsC54GmUfybHxIG+qZZOjav
         0go/DeQWtn3EBzXEaeEPD6zU2XxXMX8WAHLSTjS3PH61GULNqYZlYnLjwPudhyznMAer
         SMRmXrL4i9WHT86VleTaLUv9BIrcAw3N0mV96M8pkZgf7CGByzqi7tRwIb3ESbCP6KgO
         WTFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Eesj35FWwmQfQqHTsi4/Tz1pJuctNgykv6ui1gaeo4A=;
        b=CJxIOAfrPNXI+yNZX/18MXQt/posOt5/9fFO+QcfFouD9wy02l1meIXxI7HKkjCBnN
         u9LapWvMAeHFo9ktdl+QnYh4N8AoWDvFpTlgZfU/YC8XQ8t7qBKfvH7Yl5dW1P9n9bGz
         vtzvzrk+XXEkgnZiU/yNagasHTdsANJDo8xXWGvC4yFco4TAJtB5mtWvJ64Za5vz3SXW
         JH4z1MeU0vxtjg3etgtid6sob8WVsHQ2VW/jDm12uAuffYlk7TP36sTWQ5MHyl8jp2uc
         8kpWBaxf6RwfmFqRTJk9t7mCBkYIeXSR19S9jv8RXSSzjQ/AYegNVWdCKVDiSdzdzBGI
         gPVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.122 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0122.hostedemail.com. [216.40.44.122])
        by gmr-mx.google.com with ESMTPS id ds21si368274pjb.3.2020.06.03.18.47.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 18:47:17 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.122 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.122;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id C6C99837F24C;
	Thu,  4 Jun 2020 01:47:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2566:2682:2685:2692:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:4605:5007:6742:7903:8531:8957:9025:9040:10004:10400:11232:11658:11914:12043:12295:12296:12297:12438:12555:12740:12760:12895:12986:13149:13161:13229:13230:13439:14181:14659:14721:21080:21324:21611:21627:21811:21889:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: actor89_4e0069c26d93
X-Filterd-Recvd-Size: 3931
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu,  4 Jun 2020 01:47:14 +0000 (UTC)
Message-ID: <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Linus Torvalds
 <torvalds@linux-foundation.org>,  Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>,
 Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
 drbd-dev@lists.linbit.com,  linux-block@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, 
 clang-built-linux@googlegroups.com
Date: Wed, 03 Jun 2020 18:47:13 -0700
In-Reply-To: <202006031838.55722640DC@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
	 <20200603233203.1695403-9-keescook@chromium.org>
	 <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
	 <202006031838.55722640DC@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.122 is neither permitted nor denied by best guess
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

On Wed, 2020-06-03 at 18:40 -0700, Kees Cook wrote:
> On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> > On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings
> > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > either simply initialize the variable or make compiler changes.
> > > 
> > > In preparation for removing[2] the[3] macro[4], effectively revert
> > > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > > and remove all remaining mentions of uninitialized_var().
> > > 
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > 
> > nack.  see below.
> > 
> > I'd prefer a simple revert, but it shouldn't
> > be done here.
> 
> What do you mean? (I can't understand this and "fine by me" below?)

I did write "other than that"...

I mean that the original commit fixed 2 issues,
one with the uninitialized_var addition, and
another with the missing void function declaration.

I think I found the missing void function bit because
the uninitialized_var use looked like a function so I
fixed both things at the same time.

If you change it, please just remove the bit that
checks for uninitialized_var.

Thanks, Joe

> > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > []
> > > @@ -4075,7 +4074,7 @@ sub process {
> > >  		}
> > >  
> > >  # check for function declarations without arguments like "int foo()"
> > > -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > > +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > 
> > This isn't right because $Type includes a possible trailing *
> > where there isn't a space between $Type and $Ident
> 
> Ah, hm, that was changed in the mentioned commit:
> 
> -               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> +               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> 
> > e.g.:	int *bar(void);
> > 
> > Other than that, fine by me...
> 
> Thanks for looking it over! I'll adjust it however you'd like. :)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6f921002478544217903ee4bfbe3c400e169687f.camel%40perches.com.
