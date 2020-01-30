Return-Path: <clang-built-linux+bncBDY3NC743AGBB2PUZHYQKGQEZ4ZUUZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BD114D6AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 07:40:43 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id o82sf957587ybc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 22:40:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580366442; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7fgfC9cfplkUKrHNLthUkCqASeSvJA32Xa4bKPwSmCm1MyFkNP6C7E3ZJydRzjNNm
         0IO1otDfNJ5rP2KdZTcdX7hVEGr0g/T+bvc33BQnDptCt0pyrAUQodpD8HE8Ogu4pJFA
         5kA5yPKDJj+WDTM+EY/vyFnQ2YDBopKGb19QQAlXamSMJPbQKP01+hYvhoOJQyCogl0T
         /97nXDpHllp3yCvrZtAx3WDVOM+OUQbskUJQ9w0JO5QcrUgMH0Hvi2byUURwg5eiy/Bn
         SrkGT2hCaZQbDmP7vvVO4aKVdU5rtfRyCsXqMMVsV2gVii6Q4nZ0WSLABBGhrflsr+KX
         YKYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=vu4wQv+97Cj2411QaN8XgVnF92CXMZMhBLHqYV5PGUA=;
        b=G1LawPZzDh0CPhfSa8Te6+Sa+NFwCU2Ewq6sNRv2y2OmkJvfwQujZVhEwpUi9Iq0xL
         j8gXIZoMa1aOZStjCJpNOgqw4xS54PHpqp/Zwlkn3nQo1NxEVG46gtdyNaykj5e5YnAW
         08V8iv2IiOlduLzJtapbM9zxMdm+9z9SfLoWTyPxnfnu1e2ytY7/Hhq4iwESOKGdIeF6
         1EkZx54U41/u3zVOVUtpkeNMKekeTqGUzUpqXdW62nt9QYMrJq03yosHq7Spdapu7Vrj
         ROyYKNxo5pNjiCSR/MLVfdkNBC+OXunN0pwSTl3MPaSsMPfMSPA0DRqzDnCPn1n9W+7t
         llVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.129 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vu4wQv+97Cj2411QaN8XgVnF92CXMZMhBLHqYV5PGUA=;
        b=iAnxCTUxYLkt8H0nYJsec36JRCyOUR8f3hC7UtiB0TjLIZb0xMiO1s8NgMA8nQz3Sh
         Kz2ZOS55JXxpEVOn0hRYL4Kou0HpdI1vzWeeVyHvTfGI3jmMhI/UXubBbjbG9wf365WI
         QWvNinOAXTvo8T+MZY5Swn0RoYCTYxTZ6bSNUiVmkCq0LXN8NtwOYMViZTs7lfHdZWUF
         L+1ZFHnlfRFyjrpHPfw55/uj8ZXGAgUSQ9izxW9engnWytdXpXPxYMbZ5CAi3ixlqbAM
         z28bXH5Ra6lcbeSeTfLdWCWN93nsRRQ6ZMqkUfNUh/+P4WIWcb58E/67PHf/5Xtb6bu3
         ModA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vu4wQv+97Cj2411QaN8XgVnF92CXMZMhBLHqYV5PGUA=;
        b=nq4v5SOxMo9VUdBrg5VKrLXdH3w4w7MgdN7tn9r/pU80/zCRg8V1S9hbKkwhLH68cc
         mEa2y/aUHy6U4IxstrOt6bcz/JDqa8vxGLVKTVZYHxTINsVq+vSCGVoXwO3/S7TLcXiV
         YacJRjqqnAV3VCpGTKJLbe62Qcorknv56r+weQFX9KidFxgJcRpB6ONHWuHP0nD3gHsT
         ScXWhbc6LwGa3oHJIRMQWXb0mBCwfXm/ENMtgx8YMPJlRdynFWIhacXXEekQIFTPYvb6
         g3bcrWvn6jneJf0DeEk/XbUEHQusRqcp7NPUDXYG1KxZ6BaMb3UuOr+scJQ0wbJwi3Kx
         5+Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQOcmtrBtFm3G5oSzF+5MRflAyQhwGO6D9n1Ez9sPolEaQm5ou
	4F9X7+Jhe9Omtl2OKfGsHDY=
X-Google-Smtp-Source: APXvYqxK3617rw72PHeH59KdTpBi2Lo1SMx09PLltowyq0/t1RjcFwTym27B1PmWcVy50vMrN1rNJg==
X-Received: by 2002:a25:804f:: with SMTP id a15mr2848318ybn.37.1580366441976;
        Wed, 29 Jan 2020 22:40:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d883:: with SMTP id a125ls498894ywe.0.gmail; Wed, 29 Jan
 2020 22:40:41 -0800 (PST)
X-Received: by 2002:a81:34c6:: with SMTP id b189mr2361848ywa.106.1580366441586;
        Wed, 29 Jan 2020 22:40:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580366441; cv=none;
        d=google.com; s=arc-20160816;
        b=ocsAn45NNjNZUd4r0O9wyxJIyXDnSWMuYnZ8XS46S3EY5w8Q9SIrwOBM3HqsEwnwpc
         FTneaflIzY1Qn2K+CPH4wqqnIwChQfSVxreEDY7QHH93t9J+iho+blyAa5h38FPVqlEQ
         nwOuKziVrNJlH33LEpzpDDKKKXoSehNKapSVb7uQcHe9SnjKTI9dWyiRpBRZrpTXtDiQ
         ncuHK57WhDh4m0cBb0Lb7LI12twWkj//fphtvMl8GzSk+l4AFUwy/5dakC/9oOZreDR6
         Ved2QR7zGyu6HKZJFRWEDoLg2A/QVxNKMuNRsxFs9JMEcHtZ4dqXvaq4Niltic71fgzV
         iv1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=mmPZBRpUoRlkFfGjSezK8zZBpQs+MzOblyWQM+tBpyk=;
        b=uiofwCHKrsBWXXSD6NcnLBPJ/KwqbzfwCyLNUrQSAr8vo4QcmXBVuCEceh+9oungHi
         uRyjcMi9FPSHWRzsAqOC7R/cc9HAFikvcSjMTkExRzOSIWNbs2dG8EJGitk06MPAszqi
         GtHKWHqyX1V4Qi0ShVTzdayNWA5tPZMygmaQZgg0WqRe0J/P3KtBaTy4waJ2Wy5ep/vc
         pOemNUdN23em7cya3CXgtk8nxsA4cOvObOlxmrRP4la+vX4K2v1kYOt9EsS09eNCmm78
         fFLG0uBvZeCBO6ma8jCVr6GSOvu8TtDGJAbZcPiQ28ck2B8KQhmZCo1cQXHWsOUqNpDA
         H9aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.129 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0129.hostedemail.com. [216.40.44.129])
        by gmr-mx.google.com with ESMTPS id t82si281543ywb.2.2020.01.29.22.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jan 2020 22:40:41 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.129 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.129;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 187D6182CED2A;
	Thu, 30 Jan 2020 06:40:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:966:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2196:2199:2393:2525:2560:2563:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4385:4605:5007:7875:8603:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12663:12740:12760:12895:13069:13095:13311:13357:13439:14096:14097:14180:14181:14659:14721:21060:21063:21080:21433:21451:21627:21795:21939:21966:30012:30041:30051:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: chalk31_40013548c1333
X-Filterd-Recvd-Size: 2693
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Thu, 30 Jan 2020 06:40:39 +0000 (UTC)
Message-ID: <f099965dc5de82fc5fb60ba10371cd9f1aed2d94.camel@perches.com>
Subject: Re: -Wfortify-source in kernel/printk/printk.c
From: Joe Perches <joe@perches.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>, Nathan
 Chancellor <natechancellor@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
	 <sergey.senozhatsky@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 29 Jan 2020 22:39:32 -0800
In-Reply-To: <20200130051711.GF115889@google.com>
References: <20200130021648.GA32309@ubuntu-x2-xlarge-x86>
	 <20200130051711.GF115889@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.129 is neither permitted nor denied by best guess
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

On Thu, 2020-01-30 at 14:17 +0900, Sergey Senozhatsky wrote:
> On (20/01/29 19:16), Nathan Chancellor wrote:
> > Hi all,
> > 
> > After commit 6d485ff455e ("Improve static checks for sprintf and
> > __builtin___sprintf_chk") in clang [1], the following warning appears
> > when CONFIG_PRINTK is disabled (e.g. allnoconfig):
> > 
> > ../kernel/printk/printk.c:2416:10: warning: 'sprintf' will always
> > overflow; destination buffer has size 0, but format string expands
> > to at least 33 [-Wfortify-source]
> >                         len = sprintf(text,
> >                               ^
> > 1 warning generated.
> > 
> > Specifically referring to
> > https://elixir.bootlin.com/linux/v5.5/source/kernel/printk/printk.c#L2416.
> 
> Good catch.
> 
> > It isn't wrong, given that when CONFIG_PRINTK is disabled, text's length
> > is 0 (LOG_LINE_MAX and PREFIX_MAX are both zero). How should this
> > warning be dealt this? I am not familiar enough with the printk code to
> > say myself.
> 
> It's not wrong.
> 
> Unless I'm missing something completely obvious: with disabled printk()
> we don't have any functions that can append messages to the logbuf, hence
> we can't overflow it. So the error in question should never trigger.
> 
> - Normal printk() is void, so kernel cannot append messages;
> - dev_printk() is void, so drivers cannot append messages and dicts;
> - devkmsg_write() is void, so user space cannot write to logbuf.
> 
> So I think we should never trigger that overflow (assuming that I
> didn't miss something) message.
> 
> In any case feel free to submit a patch - switch it to snprintf().

and/or make the code depend on CONFIG_PRINTK


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f099965dc5de82fc5fb60ba10371cd9f1aed2d94.camel%40perches.com.
