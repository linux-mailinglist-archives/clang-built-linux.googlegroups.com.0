Return-Path: <clang-built-linux+bncBDY3NC743AGBBGXU4D3AKGQEDRYP2BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B47C1ED9C7
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 02:02:36 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id o19sf3562264pfp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 17:02:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591228954; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJP+a2QtsjPJd5wx1fTvAdAjbvczuYCT3sKKo1mNMLI3P667WqzcJBiqUdu4Q4s2YV
         2kcGq5eSKowIQJjvvdPF3W+APEY4NZdrbWRNextZbXt9FXqpcxQJeVI5YQtGKDL8KoSb
         Xp/L9SQTWvYLD+UYHWUfCc6oyNRX3dqjBkppHzv/QLAEw0zHjiqUO2GVKzhGWeNdn0ow
         F5njVQxYOswtZJVLMMUqsBkE1TXekKer2lTId3W2PeBMhdDdiiVINPPdhu0Wn9GyChJF
         Hwnj8jWLkIIU67wy027Qgsffj9os2YURo7Do7JZ6oZevguKJZcSfcCAGtBby9InO5qWI
         +QmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=4aODEYG20oaa/zXpfaS1sttWpkNMqH++/IG1XjUHabY=;
        b=L6XNhQWmKd2hOhH0njYcq4QJkgxvvVvEi5plwzhWzHdA4Rb/oU7z4i48FeoFkHa2Ld
         PBV97+XlJKQZ+U1o72bkhk4lnwBbWrDYxx6nXts9o/PeXCLQX9oHiBXlDRidYP3kajWV
         hLHdK+IkUrRkA642u8fvZc8lYSzny+PfzZTYZk2ipKPsQOBlKn0mIt21H+eKGaKy4tj2
         a002DOrUfIb/QLI14cXW3UR+blq8BcfNCaDr7UhkrjNnbODkFcDBFY2OiwaI1IzyuowM
         qKdz0zXoe6wqbt/tEvVEkFJpRADP3dxgRJioSwPKtd6yiZe3kJ1kdqJoD9vcREBl/0kA
         qCWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4aODEYG20oaa/zXpfaS1sttWpkNMqH++/IG1XjUHabY=;
        b=DDd5A+4luN2aXlXWwroFyvf7cVapudT0mNR5+Viq7HSuLY15zKQJ0ihY45L8xqYVHG
         Co/3DgI4mzY2uNb5PanWvalYuvZmTTOC9736OC9r/efID9A14ReBgmUHzIRhcqiu4nDb
         utnp8PTFvY5mMaUGM2bvQUD9zZpkOk55r0JhnEEsrVh+VrfkjisQ6suOt4Khvog6gV/2
         jp1pXQ6Wm1FI8PTHfsqqbv95aIDrxUofaJTq4nnShKS6GEJjQ70+68uaqF7Xb/97RU6M
         OnV9vYg1TvoReQvDzcgSw62UkVMJ7efdLbt5xw7esAtqvk2iAEeRCkjbqzquK1Ead1+U
         W88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4aODEYG20oaa/zXpfaS1sttWpkNMqH++/IG1XjUHabY=;
        b=OBLTdh2AxKMzZ63NqBoYPNtYRKapiTHVBYxHWjzYrGR2W8UOkLTjTctJl/bviG+JOg
         wmS5oXmecwq5MjJO4lef8syca0LzyssBxhozKcxDn7yTQsPG9zbzRi6bPXSKB7hyBQgc
         g/A2qljIrUbfHLCRq4Z2+uRfk7MSAraIdeF38QQx6k4bSRCVPN9l6wA8lfVK0tWFpUH4
         2CoCg3UKdhs7erOxm+Sv6hlluNZ8RADPn15OdWxY5GzhfRyjfUyowMYI7wBPywBjABIT
         YtnFh9GHamoBlbxCmoRwpywOTM9fTMfznw1FO/PLsALGssrA/+ivgn62ujscrfFebrJn
         Ykjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53394L/cAX9mtY8ckYCbUACuO+E/vlqtLfGOycHJcnALwWCp5MTc
	QUbtAsO3z7wH1AyfkThsPv4=
X-Google-Smtp-Source: ABdhPJygU3B0DR0t+ypJgecJMwRmf+lMPLI36XdpIrUQqusTiWBOFElqLq0ehnm/7wLd0ksZ76Y24A==
X-Received: by 2002:a17:902:aa0c:: with SMTP id be12mr2210323plb.241.1591228954655;
        Wed, 03 Jun 2020 17:02:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls1763819pjs.1.gmail; Wed, 03
 Jun 2020 17:02:34 -0700 (PDT)
X-Received: by 2002:a17:90a:32ee:: with SMTP id l101mr2831252pjb.213.1591228954152;
        Wed, 03 Jun 2020 17:02:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591228954; cv=none;
        d=google.com; s=arc-20160816;
        b=nniG4I2lNjD3C6Xbtqyvo3uWhVumRmGPgB3pvqM5bHsZVUKkAzcZwPqSbdzFTdi4XS
         QzY/MTN2c5tTA79m9FTdKuMnY+w2h3c8pTttTtnFO9jwa75Tt0REpCi3wJMjseoRTTTu
         1l7NOBPzYFe50/Vbg9M7PLWzHZKHsMm27/p8RziPW8YMTusznmEGi0wD1ERLDCSNOiEA
         1FI/FL+QE1tevlFLGw4xV3dTdwDpTNiHJLR+QJVtMelTaMTyPJhWcz5dBssGNPlmfG5Z
         W9jdEeGnD3gaA/PzfKCHlXXwlkmSDqTCjVAPinUoWqL34CzQ1VjXTyK+cO4wXEy5rJV7
         7tBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ZM8F5IsPt+Dg4DebSNmaLx1cdU/Few/BZ8nMZ3NMUf0=;
        b=rYvY/qhpeII0f6zYuuDQlmI5DknW+1WCpZszb3CCpj0p6CLwrvdzDMfQVaomyDYhT9
         zeZMzeYIbEuB5QOp0Qsklr6GEVNfqJ2eCyTvS/qzbdrkIm4yHgKEENWBZtanTrLYpMOZ
         U2BuM/6N+43x5yjB/cRGijGog8kAkR9mi4RZXBwcKSudO+ZrsM2XtrUKXf4sxUzNlvtS
         75qYZHTOH6zuR25GU7wk7orGkXX6wt/j3or/KviRpqZ0ZM7BYtk9xh3J7zZfCTOsTFQp
         TtZdofQBwVVO15bzG0yKvbaF53SPKcfLRfA3zE0Az1b193kIXvwOcTSTqhBVPS0hbeDp
         KxaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0148.hostedemail.com. [216.40.44.148])
        by gmr-mx.google.com with ESMTPS id v197si280936pfc.0.2020.06.03.17.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 17:02:33 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.148 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.148;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 3A9EC2C88;
	Thu,  4 Jun 2020 00:02:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2566:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3653:3865:3866:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6742:7903:8957:9025:10004:10400:10848:11232:11658:11914:12043:12295:12297:12438:12555:12740:12760:12895:12986:13069:13149:13230:13311:13357:13439:14181:14659:14721:14777:21080:21627:21811:21889:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: owner82_280dda526d92
X-Filterd-Recvd-Size: 2813
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Thu,  4 Jun 2020 00:02:30 +0000 (UTC)
Message-ID: <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of
 uninitialized_var() macro
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>,
  Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
 b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, 
 clang-built-linux@googlegroups.com
Date: Wed, 03 Jun 2020 17:02:29 -0700
In-Reply-To: <20200603233203.1695403-9-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
	 <20200603233203.1695403-9-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.148 is neither permitted nor denied by best guess
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

On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> In preparation for removing[2] the[3] macro[4], effectively revert
> commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> and remove all remaining mentions of uninitialized_var().
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

nack.  see below.

I'd prefer a simple revert, but it shouldn't
be done here.

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> @@ -4075,7 +4074,7 @@ sub process {
>  		}
>  
>  # check for function declarations without arguments like "int foo()"
> -		if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> +		if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {

This isn't right because $Type includes a possible trailing *
where there isn't a space between $Type and $Ident

e.g.:	int *bar(void);

Other than that, fine by me...


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel%40perches.com.
