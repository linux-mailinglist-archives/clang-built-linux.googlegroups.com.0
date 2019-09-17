Return-Path: <clang-built-linux+bncBDY3NC743AGBBFV4QXWAKGQEYZ52V7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id C52F1B57F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 00:28:40 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id m20sf5878925qtq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 15:28:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568759318; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwDSmjsuCqNMzoUvbrXmCI29R+HJEkdkAvdltt4/O7xIExOgHGHYzSBFHFgHG1F2mv
         5NXMxzCCmvCG/9t0Ng0JoVtogreWfwn/ziG2s+pqM4Z1RcHk3HFVHok0El8v5+5+d7w4
         2sheK1ICwN0ZsX+ckP4NIxmm9MKFVjRf6p5LknSZAyQIhDlIyid72KpDWTLkzYqIe0P4
         Niktr4UH0T8+ge78pQh25qTCiXOFISkwEsjqL7qqvJHUg0HW2Exa+jfJuHgKNFOuxo4i
         dBCY9vS/y1gx2WpzcbgMz7IIWh92t+lSE9FNOezWi3v2CxEmfVCfP6nd6mCGSScBHX5c
         BrKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=Q3Vqag6Q9hqj9EXbeSogC3gjF7Yhu2bZCyIvBBl4Rqw=;
        b=GMPAz9Y+JdkDoY8QbZ5ida2MmhYWH6UWwGujyZLWTCYYYhnyglZ8S8S+Xc0yZRFeae
         K0LS+fDDnFxuM9n6L7ZTwyCa3xjQmrWW1NmyhO1VZSev3ljBjvvd+0m3VwCKQyAKPMbw
         CJywPcv/PXbUDdMxoMy8r9N3W0Rcz8n3PMWCfX2MGRghMq/D/NYw4II0++Q9jb+GbA8f
         w5dFpxTHQMGVS02TtnsTMbWajPAvF9UQiOQsREJtR9RCucY8Ko8IsTWJ5iidwmZ5mHyH
         PVotkDGWw4M216nZsE/nkNazHumma+jLb4W98RLxptoRq9l947g/ljeAx74PLpxxmiI1
         4x4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.39 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3Vqag6Q9hqj9EXbeSogC3gjF7Yhu2bZCyIvBBl4Rqw=;
        b=XwAlqMCf+tokmOegocaoZ2uhoLM+qhwvLA7EdL1y0plPopqgf5yS6wInzsOmvfQBD8
         beRdBHZCD3CoLMbrV9K1QJk7Vux8nkxCbfMTqRVPddDEoHQXeCKLeAeazoq4MYrAw0Wt
         VoC+Zcc8M7D+OsaLznUvp/mcLE7C3HPs+HaV59AxT9KMF3DHI7oZVkGxq7SHhNcFOH+3
         xzqQHEYUYJhzKsqrrQpkQA6lOlFDealSdirUxW5+nQ2GKYPZHmcLOEl1c5XuPmh0dBnM
         Chnn2aeZTqtdNsaE2e0TE3AJvah0H/Ua9kPT/lZNko4W3FoHnVS7yEjjtRiwCZO3j8+H
         hPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3Vqag6Q9hqj9EXbeSogC3gjF7Yhu2bZCyIvBBl4Rqw=;
        b=K0gwt/m1LdfOr5KIksbBqJnSOkxbTqmrx18v42XFmyPT57r0oFN4/Iz63bnKY2P6rI
         aF7aooTKszlB04nmbpltg9/IWTIL+mt9MhIrZQzf6QKvAteXv9hwBkEOeWuuukAxF+hE
         NC0pNPZj/si4Pg6P0eZTm7cy8nbPFf0Rnz/pm9fFncfSuGWhSbeb4AyFkxKNEVgp25by
         brS9nYokgJ8+eujE1glcDuVsydpYhPGNrjOj3FQmxdVjjAV/LHGe0/LrCjnpd45CqQPT
         vkQFQqUyQpi/pb9F8/dNB9ADJiWVI8jFaMavi+3T6UGARxZN1UA1Tk17Fhec4ND/Tbn5
         T6Bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0cytQSKZXXIHPBO4OF3pLQs8yCv0lrRjv/ZkM6vaQAHQ8OJ4D
	vfXoMHcH5Adw0NTHJyW8pHU=
X-Google-Smtp-Source: APXvYqyPraDdp/RJuDsd2wTTZyeHCf71K27RSXiGt1K/hSQwrRhbi+m7GnTFhTjtGkIE6XiQyMSszg==
X-Received: by 2002:a37:a842:: with SMTP id r63mr970662qke.34.1568759318514;
        Tue, 17 Sep 2019 15:28:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls1428051qtd.12.gmail; Tue, 17
 Sep 2019 15:28:38 -0700 (PDT)
X-Received: by 2002:ac8:51da:: with SMTP id d26mr1339122qtn.2.1568759318259;
        Tue, 17 Sep 2019 15:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568759318; cv=none;
        d=google.com; s=arc-20160816;
        b=slx9V0DX5x/+66iJd+rhWrUkqPyJcqITojr5YCnU4jxllXDf4NXwd49Rw5Zak4OQhG
         cPBjmEnuVZl/xMpJEKkjg3aDgH9GeK05AllsrBulbZLKEvIJLBq1LT9D0RcCpp4NJ+A3
         ExhwL0diYGjm/3wTQ7b0kqzQ/qyYxrdW+8tNjko26qEXfdR5v1nxZq+Wc0qRO+cRtzN0
         2spxc5yyHzKx4n0qxfzGouTfZL5q/aMxhEqMo8JL8CmSCmauKFCFt/tUCf3NAO39xSD0
         0OLJAwELAnpyrnkwX+sqpL2tdDZNJtwg0HvZVtBq7PtecHa5F+v6FUTTsPd+NugXZt/A
         lUPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=LpQyK6DwUv3YwS4skEAkDWPkpB3etwFNIyLdhLjFtKg=;
        b=lOi/8tXf0t1kPJuYj5Fb0QwyN0Nx4BGRptA6u/u68yKu7qHzRyP419wdDxgHhp6biK
         nJi6jl6Bz0Vjuk3XTsuz5qnNqOeU9U02wryO/35yPttUFSLk0P8RgtMDgeXV/09pDRfK
         Mr17h53pmPYZEMAy7byaoe7K7vEdsXsQLOPh3SP5ksw7OlHk41SUnbXRziCMQ0HKCCZM
         QGHaCG4u9zSr+77N7+ppMx4q8y0q2b7x3sNIezoRKYZYC2MmwtuCju3G90J0W4iyNXku
         bIfISve0pmUfGcZKpEMG1FOnUMupI/QnLbGsi5g8DoTV2i2eovfvDxTL2Y26Pk2SpBLT
         U0XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.39 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0039.hostedemail.com. [216.40.44.39])
        by gmr-mx.google.com with ESMTPS id t187si274qkd.0.2019.09.17.15.28.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 15:28:38 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.39 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.39;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id D6F1818038B43;
	Tue, 17 Sep 2019 22:28:37 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:4605:5007:6120:7776:7980:8531:9025:10004:10400:10848:11026:11232:11257:11658:11914:12043:12297:12438:12679:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:14777:21080:21433:21451:21627:21819:30022:30029:30054:30079:30083:30090:30091,0,RBL:14.161.9.139:@perches.com:.lbl8.mailshell.net-62.8.241.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:36,LUA_SUMMARY:none
X-HE-Tag: doll51_2dc9165fbe829
X-Filterd-Recvd-Size: 2939
Received: from XPS-9350 (unknown [14.161.9.139])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Tue, 17 Sep 2019 22:28:34 +0000 (UTC)
Message-ID: <d6d30d81aa73404cbb5479b373bce2b14850577b.camel@perches.com>
Subject: Re: [rfc patch script] treewide conversion of __section(foo) to
 section("foo");
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
 clang-built-linux <clang-built-linux@googlegroups.com>, LKML
 <linux-kernel@vger.kernel.org>
Date: Tue, 17 Sep 2019 15:28:31 -0700
In-Reply-To: <CAKwvOd=uzQJ_098ua5VuUuDaWqGQHncED4WWjNwNS0-CdE5mfw@mail.gmail.com>
References: <7ef58eb00bc46b4ea3fe49a8c45cd2ff06292247.camel@perches.com>
	 <CAKwvOdn6bMGZFAwH8iS5xD+Ce7oV8U6Fgi_SrFpCjo2-1hEUrw@mail.gmail.com>
	 <a8290101e2720cac8b06613ec4cb91ffbfd69f05.camel@perches.com>
	 <CAKwvOd=uzQJ_098ua5VuUuDaWqGQHncED4WWjNwNS0-CdE5mfw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.39 is neither permitted nor denied by best guess
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

On Mon, 2019-09-16 at 12:45 -0700, Nick Desaulniers wrote:
> On Thu, Sep 12, 2019 at 4:50 PM Joe Perches <joe@perches.com> wrote:
> > On Thu, 2019-09-12 at 15:45 -0700, Nick Desaulniers wrote:
> > > If you want to email me just the patch file (so I don't have to
> > > copy+pasta from an email),
> > 
> > Lazy... ;)
> Says the Perl programmer...http://threevirtues.com/ ;)

Everyone here has most of those.  You too.

> > > I'd be happy to apply it and compile+boot test a few more arch's
> > > than x86.
> 
> Looks like arm defconfig has an error:

Thanks.

> arch/arm/mach-omap2/omap-wakeupgen.c:634:1: error: expected ';' after
> top level declarator
> ./include/linux/irqchip.h:27:43: note: expanded from macro 'IRQCHIP_DECLARE'
> #define IRQCHIP_DECLARE(name, compat, fn) OF_DECLARE_2(irqchip, name,
> compat, fn)
>                                           ^
> ./include/linux/of.h:1304:3: note: expanded from macro 'OF_DECLARE_2'
>                 _OF_DECLARE(table, name, compat, fn, of_init_fn_2)
>                 ^
> ./include/linux/of.h:1284:10: note: expanded from macro '_OF_DECLARE'
>                 __used __section("__" ## table ## "_of_table")          \

Thanks, I stuffed up the # concatenation.  I'll fix and send the
script again.
> 
> and modpost is broken:
> drivers/cpufreq/cpufreq_conservative.mod.c:12:11: error: expected expression
> __section(.gnu.linkonce.this_module) = {
>           ^
> 1 error generated.

This one is because:

scripts/mod/modpost.c:  buf_printf(b, "__section(.gnu.linkonce.this_module) = {\n");

Easy to add quotes here,  I'll add it to the script.

> Same problem (token pasting then concatenation of strings).

right...


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d6d30d81aa73404cbb5479b373bce2b14850577b.camel%40perches.com.
