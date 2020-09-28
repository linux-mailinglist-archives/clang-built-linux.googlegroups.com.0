Return-Path: <clang-built-linux+bncBAABB6WPZP5QKGQEH6JYT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DED727BE6A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 09:53:31 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id 60sf2368782qtf.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 00:53:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601366010; cv=pass;
        d=google.com; s=arc-20160816;
        b=cZC5Cr99amMzfUMHeLeuvSb6ihcYeyhFdLscbwdf5+HWydT3y2W6CTGRVELeqzbpgh
         SIFA+buJapy1wpmPZwQj1yPhw/eVyH6r3pq3WRiz5DDg2PCraov4YWvMahW7kKPGvoe7
         cevzgarYEJRYiarEHaYjsCjG0f6vkJurMBSFFln/yJ+TCEhlFlZgeOaU+wlolAKJQoML
         GBNuw8DMTlic1tfPD57Kt9CbhrOokbWnVeE6HSAIT88ega6ICt0iJEi5PsY7fLKg6+0k
         MNhbjFQo7KLhrHbSlV+UHzRoFZx+uITkbrkRjm1xbJ80z3HN1SO5Eh7/4g8pxNrmIxgO
         kAUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9DcrVejghpezzF3mzwkmSipBFDqQlsh7ccCX+Y/O+Lk=;
        b=GpijjUi3P+GvXL5/Cr0jSV7DHxkBUe2WnfkxzTPwieKohkb8IM33HLsnOFZ+/eglk8
         H53jFU2Ejl+bWOyG0kX3RcB7MdvFWzDBw8OBl3Ei5qn5OoXX7pIvWxX4PGAeXrOVX//9
         GQrDPrrh2bNbKX9E9S/Ab0AAyIJmjv5Xukqgll5uUx1oiegWVfBr0oz0aLWV1oKNvXiD
         rqtMyBodtiz5xWvNTkKQiz7PsaCqy7rZrqONBmwR2bGzkxbeBAqt/LaUwza85i7EJIPV
         fjV3dm29kcq++BlmHgz1a7IjtvEOGNoCPvkkS5CHa/sxe9ZioQEOvnJURsWjjURATPF8
         48BQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=gIB9MonS;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9DcrVejghpezzF3mzwkmSipBFDqQlsh7ccCX+Y/O+Lk=;
        b=PIjt6UzrmN0afwge3mcf7b96VvLDZEORBi7Api71ltIWXvduqkg2998r7L8lyaQzJp
         O6quY5zPjlyNWMEoPK/T+OrumAqZQax1P/e4k32D4Ej5WvZepFgJeVlW4p5yRAzDgJho
         4bI5Sir8LUxscDjvbbG6LGj/XHRTSakojD0nboyFSaETrTAWIEDsrxiePSMpqcr06bP9
         2Sj0rSAcidyVwuBSgsUAnRBauA4DMrnMAyM8Uo+960SMqomMfYggiqGDlfu13NHogT9h
         O+EMNdeXISh66XUSWb6ZFIVLhAUNF0MajMXFmkoOLpEG3sk4ULIUHWEa4vEKE/qJ0S6W
         n8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9DcrVejghpezzF3mzwkmSipBFDqQlsh7ccCX+Y/O+Lk=;
        b=JTk9Y10khxBWwsUdb2VKvlW7ybWc/jqH6AxO9QMJ2LK3iMoOmEXeg+oQT39VQQs7Vj
         lEzRjP5mF2XzJ+W3EUx+KLiiOzjZLVjeEB2J63kbbtrCOJFxtNaSKKCHlntdlrZVzyeb
         TDuSEiOF4S52g7l8Ba6fvI9MMvwcX/ZP24Nr2wB2idGxKUvdRkwrphU14Zubn0OKBPOj
         vlfx8IWu9r4uCOIxASMsdZUL7I8Lo+mbAIG3sRMq/jQjiPDYcrnB5zMLG7UT+4bgsviU
         B2pay9d4tneDpKjcRjc+fm92OioLVnkaFwUAQlgG6XeAQh8HsfFM4ey724MKIO5v/vBO
         st+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Zh1CZfUebQDF4MrKxe1yu33bHAGkyK+LequslLOkxxWUkLyyD
	CtusLWWZyN4TjwIyUndpzdo=
X-Google-Smtp-Source: ABdhPJyGj6ooVIJ301l0lC7bt+F0R3U2bhulXQ04IHq+tkkCb73nelzBNJuDKRqf3LDKbllkA3i/gA==
X-Received: by 2002:ac8:7108:: with SMTP id z8mr2094178qto.55.1601366010400;
        Tue, 29 Sep 2020 00:53:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:146b:: with SMTP id j11ls4306523qkl.0.gmail; Tue,
 29 Sep 2020 00:53:30 -0700 (PDT)
X-Received: by 2002:a37:e311:: with SMTP id y17mr3050122qki.153.1601366010126;
        Tue, 29 Sep 2020 00:53:30 -0700 (PDT)
Received: by 2002:ae9:df84:0:b029:142:7499:cf3a with SMTP id t126-20020ae9df840000b02901427499cf3amsqkf;
        Mon, 28 Sep 2020 01:54:09 -0700 (PDT)
X-Received: by 2002:a7b:c24b:: with SMTP id b11mr546572wmj.134.1601283248777;
        Mon, 28 Sep 2020 01:54:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601283248; cv=none;
        d=google.com; s=arc-20160816;
        b=lf+LfTj9bFWHs/E6G+Dm5guXQO3LlH/ahwCLhHLY7Yqv2qKQFatDuBo1yQCcnKN8lR
         aQDss9Aiz1NUFq1jaoRLmenYQEb9g1JMBdAf0ynn8SaxLnWCRIsfEr9ajt+3VgXq2NJl
         JNBmNZmcicHTUGRMP3kw4dhBWLKaIeq68B2MiYX3cgLBxO/4JBz67vFj5j5zn2lGLfuL
         VH7gn/6ISIAnLpsOxYd1lQ2dklr3lqdKMDx8GzJx7RDlpjnjyF416IHsYN9oXaP1Q6m0
         21jfftO4mp4TdaXKsjWSmUNNP8cXcYyMVaViXqxQm/Z4D8sySGu90ZdUahuFPfBxgHEP
         JIrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gLGYiatJkGQ1A2AmIDjtk0yq6uM/smLtebj6KYuOT98=;
        b=yFknul/h4WAoWyH10C7avSnWqwti+BcTMuNK1xreC5zXDElciWSOQqRdlup5DhGDYR
         kLKDw3jZIhSjyCme33wVlbRh1hHsbuvq+KYBituSSwCoTA4EbMTN1s88ZthUGOcfNqj6
         8GuWOd90DlvtIH+8TnZ+R64Ye4FvFOLPcn5CJ1cYCJCAxdhIyEF4+mXr1AAeo8jG7BoY
         ULTsmdAZKZL5N1IjyY6JWm3OcfdBs2U9Q4YGcWQU6aI9+dnxO7AKk0H/BuKwfP5qvo9W
         7EH9E9cO2cHqSQ0JS6sBDsvkC/rfiMUYW3ZYQyyLQRyxXNTmUafhXiFWVGD8mUPIDncp
         O3eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=gIB9MonS;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id h11si136709wrr.3.2020.09.28.01.54.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 01:54:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f072200afd3fa405d8d6d26.dip0.t-ipconnect.de [IPv6:2003:ec:2f07:2200:afd3:fa40:5d8d:6d26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 44B0E1EC00F4;
	Mon, 28 Sep 2020 10:54:08 +0200 (CEST)
Date: Mon, 28 Sep 2020 10:54:01 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200928085401.GE1685@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic>
 <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=gIB9MonS;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, Sep 28, 2020 at 10:40:19AM +0200, Dmitry Vyukov wrote:
> I meant the kernel self-corrupts itself, that just wasn't detected by
> KASAN, page protections, etc.

Well, Nick already asked this but we're marking all kernel text RO early
during boot. So it either is happening before that or something else
altogether is going on.

And if that is a kernel issue, I believe we should've heard by now from
others. Or maybe this happens only in VMs.

Questions over questions...

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928085401.GE1685%40zn.tnic.
