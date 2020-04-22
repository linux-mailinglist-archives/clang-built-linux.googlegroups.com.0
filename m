Return-Path: <clang-built-linux+bncBCVJB37EUYFBBY4ZQH2QKGQEJH6RR7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 785181B46AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 15:55:48 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id s206sf959087vke.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 06:55:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587563747; cv=pass;
        d=google.com; s=arc-20160816;
        b=G9AHuGpWZeLRuguFkauA1uJwL25TiynPnua1Y8Mt2UvnvJbCauL0h8SOqSJLcZBj3w
         KelVF4LxDtFbdVg/P0vU2dqChFRzZiElxySdz6zL+RxFuQp5535J+WAfxEgRBQbCeVNj
         Fh3wbMvnUgAY33bFG3smPfRAY+/53s21WBUp8zvR7zA8SyRels1jNrxUFV3sp2Su3tb6
         rWmLrSTVWsyJD0+AAYTc6BgKW7A+EeCR7KVMQZwTtm+aPZyGY88RIFrexRufADQlVnMF
         p9qVZXNW7sJas7g288KqURdziVqPbEG2xpQC9cUu5oQT4JidX/AQRkF1GaWyhPjQabWa
         67tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=PBBRFTzyGZOaJ1T/T+GcxCTekIllQtQ7Xu/uL32GX58=;
        b=kHD7RzIeNUZC/H+7BqlkcUDkBiaNmTSVUQflpz073Uaweu72VaTfPeNN2h3iGZzgWt
         nAHsrkQmGhNGic5ZUHU7bg7iMwgzDaFVGHDJ8+wjVBEcHYymdYn6o5IwLeaGhgqK64fY
         uBXUFEJTlJXgvr/ndvyv6MP8Ji/Wi6JO692wXmWtb+6HxijSfh3X6AM6rTQhS+NCLLQ+
         Gc4Wi8akNOj1t9XpiQhH0JbUzRg+CSnedw/Q//vlstmCEGUDxcq1JbCZKAcicVH4zeOg
         FeVLx6qobAGqOBwDAfSebFuHQS56Wwkxr2dgpat1hRIZHz6VXkO831Fbv35Qt6MQbv7+
         FaQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=csbhtIs+;
       spf=pass (google.com: domain of jakub@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PBBRFTzyGZOaJ1T/T+GcxCTekIllQtQ7Xu/uL32GX58=;
        b=s4WRFqFEN9LU2GtuoVpLtoxjSw5N2BU0xwmdraCEmegA5EdBnd8N5OeXh/lBDgjPG+
         ffN8D/namrA+nadHyW1rha1CoA5H8tO/s2eiqTyJwhi9NzjxMYqjQq+/fLi80EGNwwgc
         CdcQj4aghbqmOXdahbziWynzNwlA6k8mqRWEFSbecAB5SK9chmVRv0EXnYy/Q86ncbV2
         08+WqGIhmDKZuwOeQjpZUJ26/OKGoUyeQJrrIgQ8215Mf/wagYxbKpnGmi2/VO2RkIhI
         LOO56/7S8qwMll3goxuImjnBz2K66GOjS7nLlx2zFQYZ/oAwfqw7HhTCC8+iApjqH6bG
         h+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PBBRFTzyGZOaJ1T/T+GcxCTekIllQtQ7Xu/uL32GX58=;
        b=FdZE+BsEI61kTNx916P+8eNtuy7+LhAZTtuo8mcnq7Zm+5n3czlJC6iZD2avE+Tay3
         eHVdrdzxj3jruCqtP8MeAMP7nB2c1uJDD/UI4NHnr/5a3J7zRMMYWO20yBiBJvGCMVUV
         lqcOSQIYAEaGVm1uKJcrmw/iIQVDLrx7WZjvoKoBUW/wFqZH/rk30Z7H7ed1jKjUP2xU
         96DiiLgQUpLUPQ+nxcYAzL/bqR/jSb9R6P88fT4ySknriPV5WE0MLOI+LRwCsRdDroRH
         /zzTSp9rE1YpxnWegvx7FfSrX1bQuEMgf6wzUXLPcyuWd2gVyvKDm2rqBP+szVvqDeuj
         4QUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZD0qH1WpMus0OrloMc1IG8IjAVrt7E4OFuyyP3+DNz4JB/ohga
	zbr3ZeHeViTmB904V+ueT1k=
X-Google-Smtp-Source: APiQypKVNJikTe0Np9pNfx3+/BxIMIewleF7H/D83Z1mKNvQrAxGwmOlVi9w4vR/hKwiYt4DnPUiSw==
X-Received: by 2002:a67:3343:: with SMTP id z64mr19434139vsz.108.1587563747247;
        Wed, 22 Apr 2020 06:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:26d6:: with SMTP id b22ls167281uap.7.gmail; Wed, 22 Apr
 2020 06:55:46 -0700 (PDT)
X-Received: by 2002:a9f:27e2:: with SMTP id b89mr14682459uab.97.1587563746874;
        Wed, 22 Apr 2020 06:55:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587563746; cv=none;
        d=google.com; s=arc-20160816;
        b=OS1/Ct4NdUZHUyX7faznfMmBOsSuCsu+3cHRiBEASsbwSEi0X2y2MmqJvnpq4IA7y5
         P5kYvew/gObIUl8qJTYhfWcrzYU+2SIHG1bAndQx0WCfqC93yprKutcYKJcx/LaXZ5Lf
         sxxjHrg93nyvz51Hr+O6lTvxKCaxdDJrqCr3VxyUILlLQ2Sdf7MLrqNLyY9W0uSZgfVG
         Hmav0/Eolkv+S1voY3lRJXx3J/g88lMEJghTizZSRPcESmX0NK1Dp7FcTDZqoeuZ82Md
         +hniI4M5WQm+DUhNcoDn0/0dTRFnL5USKnoSVQ5jfzu0kIXm99wxj0XWg/gGUdqB7gJ/
         n4lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=YpE39E0ldMec6QTYNVZpMsjRjumdc9ypXwrtK5zGWF0=;
        b=d0tT4BQLcu4dRjKwzwRRwK0BjnFeVhCq8T1ZZZoAFmnPWOrwZ2mdHPJLZRp2AVe0N4
         cE6cqF3/JQcGDR/PwypKPAuwPMw0G8ay5oJzbKcvM5p/47tfgdTOhdN1RC3h/5XtM458
         EGXaYH2iHiJqZCYjMGN8So8gZisUDHInfTOCdTYM3CidVMqGHeAu+IRsGrHXpl2UK4vO
         d8DPISsY2kJsqlh2gP8Lguk5fshOb+YBDf/5GsvB/vPzrW/BVpB/TVP1eQe09qpJhD7I
         EF8/Z2KCgdc/4tmgPA5axqQhR4wQQ0gAbEoRuoWh2kvm0PyGPAm2/B0e0LH5lJ9gqqst
         ORCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=csbhtIs+;
       spf=pass (google.com: domain of jakub@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id y11si480076vkc.3.2020.04.22.06.55.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 06:55:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-Y9yhyo1ROQeyrZpss2vJew-1; Wed, 22 Apr 2020 09:55:44 -0400
X-MC-Unique: Y9yhyo1ROQeyrZpss2vJew-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 054C318C35A0;
	Wed, 22 Apr 2020 13:55:42 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-104.ams2.redhat.com [10.36.112.104])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D5FC5DA82;
	Wed, 22 Apr 2020 13:55:41 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.15.2/8.15.2) with ESMTP id 03MDtcqP019898;
	Wed, 22 Apr 2020 15:55:38 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.15.2/8.15.2/Submit) id 03MDtVop019897;
	Wed, 22 Apr 2020 15:55:31 +0200
Date: Wed, 22 Apr 2020 15:55:31 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michael Matz <matz@suse.de>, Sergei Trofimovich <slyfox@gentoo.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422135531.GM2424@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net>
 <20200422134924.GB26846@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422134924.GB26846@zn.tnic>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=csbhtIs+;
       spf=pass (google.com: domain of jakub@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Apr 22, 2020 at 03:49:24PM +0200, Borislav Petkov wrote:
> On Wed, Apr 22, 2020 at 01:40:07PM +0200, Peter Zijlstra wrote:
> > You haz a whitespace issue there.
> 
> Fixed.
> 
> > Also, can we get this in writing, signed in blood, from the various
> > compiler teams ;-)
> 
> Yah, I wouldn't want to go fix this again in gcc11 or so. That's why I
> wanted the explicit marking but let's try this first - it is too simple
> to pass over without having tested it.

If virtual blood is enough, AFAIK GCC has never tried to accept volatile
inline asm (asm ("") is such; non-volatile asm such as int x; asm ("" : "=r" (x));
could be e.g. dead code eliminated) in the statements between function call and
return when deciding about what function can be tail-called or can use
tail-recursion and there are no plans to change that.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422135531.GM2424%40tucnak.
