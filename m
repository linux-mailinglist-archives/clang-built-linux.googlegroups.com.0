Return-Path: <clang-built-linux+bncBDAMN6NI5EERB76T4X3AKGQE67X6ZZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 779AD1EED60
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 23:39:11 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id g84sf2365538wmf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 14:39:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591306751; cv=pass;
        d=google.com; s=arc-20160816;
        b=QctAQqNhxoZWI9VpcvMXrO0N6mrF1VhmrDIecYIAVDF48aarusnx7YnMWG2enBEOOy
         JYyYYXV/Jw0YIzzal17Sut/q8/YbP+uU2kakUIRYMsgp+cnqBi7mvgqzbw+TUoeNRseC
         DUYTgzk+s+2DEX6X57m27nvqtR5FBwVblX6iHp6NcEGSYzstFXu2e+opnshjqDv/Qlh0
         LqYyi4QXwlD3qImyoqA3YJvmnwb+xOmJacg3zmTO7rPlYlfXOYAzm0B/C42kfbt3kWHh
         Yuxm3gD3Bh1vqSbM3SSYnbxR2qXnZUVSUj8X3emdO5z8oEOZk4W/pqujF8A/pRIrLbxi
         s2+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=upPH2r59hZ0fJIU5o6jkxSvefi63L1EgdJPd4A1J0HM=;
        b=wifSnAGiVz/j5vyQyOnyCp65YdQ/WDDuFY4FFKECJUtDwtuKr3qeI6QRTCRQNg28pg
         JjdlyIAryGT/EovjefuRqwnuNADzrYhO2PoNq9/dbBuPleQF02ZAdZUOqRKNMUB/t9nr
         HrLixHgB7aCjTrGMGsz8IHIfxXagtaBhoUuJeOPi2WiWDgnwOV7sJmS92gSuCYWEZwVi
         chNUYydlm9g7zGpPRjxjg+YpagvbAfCR6ykPROyEJj+0r7eHrwK21SnZYOifMPS+EHmG
         H4Hxb3W8XkZSwYS7WQfIBCzLEr1iBe7xWgkJcxcOLr8wojqrOTE7cKNV8z4Z5CdoyvE5
         6vKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upPH2r59hZ0fJIU5o6jkxSvefi63L1EgdJPd4A1J0HM=;
        b=OojjpyxKhyRbgXXfMshLTZvOQdUXCebnbley64jlU+7zASy3Q3VkNl1GuDga4MBV2F
         OOiKQ0b33sEDRRKsnkopu3ddiYe2XYTZe9zSoxPaPHwJtq0kGz0L8d6wOAtAQLL4uXuT
         UnuHiiNuzSRo4zO4e3dzZWXmm8SQW52QZKnQzV8VbLS/OaBdYK+lCjgwf1L12QO2gFeH
         HQ6nFl7ZsrDoBYZPoEHF/hWlYcHclTOaYTC4kf4TLXfT6A+rxZYOeAMOvFK4bGOkrdMI
         mZAcIbdthDFwbmrwSpGEVlDFvRxA0p4wcvBCNx3jWtmmQbf1QQgKzgESSXmQkweT30pk
         BGrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upPH2r59hZ0fJIU5o6jkxSvefi63L1EgdJPd4A1J0HM=;
        b=cqTO40Vcz55lLhkBj3yo/mLH8LRDlIDI7YWQerD0cYZaLvT74C+RHmF9EU/KHdc41T
         hc1Ge0G7wd7HvT648ONbZepnpgASYr5/YVZPGk7/Fdg2SjOcM8Y1aJNBoFNmCyWesn0d
         WPK7grfj4RXo2V4nwJHnp4wU5YE4zW1zBXbO+tdLFsX5E26V3Hbz7D5m/CnHpjzELjHg
         AMfPg3C6ugTk1ahuNMaVtYKxSSaD2ujC5Hn36PA/qzTWh5r0lQZ7J/wF42kHROO15i9H
         jVaC64l23DyVHgS7hiLwPirSlNsrko1aeFHkEnflzZh/OkEI8tU7mnPuRuVA1qKm4el2
         TosQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53223aFhoN6Uytv7uYNBHhMVP13qlzYsufHcfP1iEbNfAgfwPIbe
	sEpuzrqkc5uTV6bONwwKaZ8=
X-Google-Smtp-Source: ABdhPJw7GAp/2zvqs41gW3WPDGHTEr3aQYdUIE9V/ObzGHCZjbkFACpNZvIBDr9vaFxSIq0kSiAnMw==
X-Received: by 2002:adf:ef47:: with SMTP id c7mr6830729wrp.57.1591306751145;
        Thu, 04 Jun 2020 14:39:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d84:: with SMTP id d126ls3455405wmd.1.gmail; Thu, 04
 Jun 2020 14:39:10 -0700 (PDT)
X-Received: by 2002:a7b:c158:: with SMTP id z24mr6166696wmi.12.1591306750700;
        Thu, 04 Jun 2020 14:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591306750; cv=none;
        d=google.com; s=arc-20160816;
        b=J3Q+PzKiuPEVXHSL1B/XmraL7Ehm8OfaMaFegahE7SnLxiSxQHYSm9XpLuVxoqeUXu
         nOiiy5JPRuWJnIu+lMpUtlUNBU0vkDDOqlbrmXVD8TOq+4sU2QfTr3mKMQ6ScWF9bf84
         jAhcq3HZ5bQZp2cz51Z4ydCktLwc9fjWP/oxL4Zqi14EKzh6hC216aql2rGaRzHNqDK3
         885ZJl5c2fRiv3AVe1Mxawo/fG0uijkJZUjdncRW/UMXhsZa/GzCnchthWTPcZGMjVkD
         Z9nGCX+UFYWR8JHHxaRJwemlWpASq+i2CMhosceBNd8NqTNt3K+n767KGtIAXD6JWURv
         Tb2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=EJURT4SMM5RFVtYvkGpafF5q0/k/tbkIdIs3fJmqyXE=;
        b=yvLO6kv2w4bTg1c9Ua+2WTN5Hxghpe+yafKbULEnDNa2DD6kh+ihT3uxht3lzzKlIR
         r7va4ABvFB78L8rCidSOe8rKFTYYojY+3Bb8hn+edOBKQLEN4xZCL3H3lbz5tl2JaEog
         vyOpXmlU/LegYvdPRVt8+Fy+j/QLGEbYaZ2exEPxuZZLbgVHgmpQfc9g/qaYF8BAeENT
         10Xt4Q242SAthh6Sbfbzcznyf1F+KBcugtglSatbyVEWYLx9h0ar2R+uoxActC/9c0Sa
         un7JItLY3Bj7CVYIWf8FfWRm3dfS3es/MRmFFvveCJzwrqnSibwqikqlS91s8W7ZDCv0
         AOsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id 61si250868wrm.3.2020.06.04.14.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 04 Jun 2020 14:39:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11] helo=nanos.tec.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1jgxZr-0001Jg-Vu; Thu, 04 Jun 2020 23:39:08 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
	id E240BFFBE0; Thu,  4 Jun 2020 23:39:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
In-Reply-To: <202006040728.8797FAA4@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org> <874krr8dps.fsf@nanos.tec.linutronix.de> <202006040728.8797FAA4@keescook>
Date: Thu, 04 Jun 2020 23:39:05 +0200
Message-ID: <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

Kees Cook <keescook@chromium.org> writes:
>> > -#define NODE_NOT_IN_PAGE_FLAGS
>> > +#define NODE_NOT_IN_PAGE_FLAGS 1
>> 
>> but if we ever lose the 1 then the above will silently compile the code
>> within the IS_ENABLED() section out.
>
> That's true, yes. I considered two other ways to do this:
>
> 1) smallest patch, but more #ifdef:
> 2) medium size, weird style:
>
> and 3 is what I sent: biggest, but removes #ifdef
>
> Any preference?

From a readbility POV I surely prefer #3. i"m just wary. Add a big fat
comment to the define might mitigate that, hmm?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zh9i7bpi.fsf%40nanos.tec.linutronix.de.
