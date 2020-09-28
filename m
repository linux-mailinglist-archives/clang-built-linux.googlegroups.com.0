Return-Path: <clang-built-linux+bncBCMIZB7QWENRBIXYY35QKGQEWXV62QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED8D27ABD7
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 12:34:12 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 135sf545086pfu.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 03:34:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601289251; cv=pass;
        d=google.com; s=arc-20160816;
        b=XeKcig0GHsRKLy4OLU38Qc2jiP+mUDy9YuABqeqmV1C/J+IVAkIUMV/IxPWDhU35ks
         e4X7Ynat2sRCCB/wzMWjiYd3DeZVC6XeQ34XM+s6JrJyeDsyN9xSJ1x4SCVTDVJUAbjL
         suvTBI7gvHDOV4CmPb1fW4ESmkDsaREWIkBu1da8+hpcwW0+auSXp3okO81SS00BWN3p
         PIbbKFkcLif3V1ap2C2NZRFGCSVJt3vbNkiJtpcelce45UhVuZ7NyKJPELgveSRCAj6p
         b3MhLlzNWljbrNd9lzXmnyXwrEB6IPskDFX1fwinNhPB/CIJLgBCqWRmuKTaZEQcJ9mO
         C2Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=v3F/1xKUrctCTwFrYCr4WGyqwxsRUVdk355SHv8Tclk=;
        b=R0abIBaKSSkgLdsFf4XLLzCZ084bKf+IxpvsRhuhVvosxKowyuqAuhZyrI3r2BR0hM
         1N9pmbfxFDGv1ItpKLM8B3wnNyl3Yue0PYUktIFfHF6MmEAeYxtAIi01B/hjxK6SiUIg
         QdhUY8UmobnRfuKqionrNeSQP6NJmIgzcXqZ4Mye1PizE12RwuMi/JGsDN50rXLB9ZsQ
         RTVZ9hVD87aaEZxV9s00l6iMOlLRCSOI5yLmRLf/+sjX8R1vjkAU9Uo+wD0zTZniAiAq
         nW7HWZpx1yTepBR6l/HSKrGKSYWiuacxmDCcVWaNV4qYzscHj6y4i31I78dBeKag6NNa
         FDhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QhnOwDpF;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3F/1xKUrctCTwFrYCr4WGyqwxsRUVdk355SHv8Tclk=;
        b=JzbRZoG7oJ1In6+3TQ79YH7KPSb2XE3p/BRuBHfP4GmQet1bOy2Zg1afwS4U8C/ttp
         c+0V2a2qUjvf8rfdGgBL1RfTXXkJRMunPwcPoicFIXsEjrUi/O3X205PkVP5EPBaYH4N
         onxUlgT/f9RP3cubLqKGs6acCold+Zi5o+1yzwltFbadwSGYInE0wh2G412iHhdJ3+aJ
         KrUExJYCnfNkMnPpmvrnATRO0vVfX6tIcEzsrw+Ucu4ki68KzKv1zTfHR36v1sc23osH
         cVJqVM4krpy7Betrp0QdEToDzXfKqfCpZBRk1IhIRbF+igDdXJTsbn4NyhW2L8KlALo7
         f0gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3F/1xKUrctCTwFrYCr4WGyqwxsRUVdk355SHv8Tclk=;
        b=d5h6WkBR//IYDLhIr+f05qDudjGxo/esTfGgHUmRS6s+fTbRKU9ijOeUaw6W57JhGw
         HIx7dz5MGwC5lmAd+0CVUjudF8HT2IFYTNW+srGHjNTG8Zs9+t8UZO/5wdB2nQzf/W9R
         xtjqjo/2cNz+IciD/ul93jzZGRK0wa6tc8Q0nDGbmI3eifXAFH5Y9pd8hlgt0bFirOm5
         44xe2FHVsG1oqPKkZtqIITdfmc9qCYvq+ssdfWhIUj7GDxIfU6wSohRJrH5/0pCpj2/E
         +sZQiR4A8PQCQ+9GO4nETqPyf4VTAFZ1O7wdC4rJfCoSyIGlN8F1LVQeLxBxvA3Ec2MM
         nOAw==
X-Gm-Message-State: AOAM533pgVR2cR3G7PNC/xRl90e77CAuPT4ebIRF/LTgADerJXPT1ISr
	HJAeBAXqdKb86xhz/cwZC/Y=
X-Google-Smtp-Source: ABdhPJxuNAIdeyNvHOJ4fcunZ/YtYWKsocnXwef6Jkdhe9ktt9XICvlW0h+qwZZYp9RVY8U/h61D/g==
X-Received: by 2002:a17:90a:5292:: with SMTP id w18mr763217pjh.72.1601289250800;
        Mon, 28 Sep 2020 03:34:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls3094899pld.2.gmail; Mon, 28
 Sep 2020 03:34:10 -0700 (PDT)
X-Received: by 2002:a17:902:67:b029:d2:564a:e842 with SMTP id 94-20020a1709020067b02900d2564ae842mr1011393pla.4.1601289250307;
        Mon, 28 Sep 2020 03:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601289250; cv=none;
        d=google.com; s=arc-20160816;
        b=R8A3DIBa5AO3689OHfDVjleiECC6eoE7qWFkNzoGHp+T4923+2cnSMWxRhAIpN0LW8
         DIbc0H+R8YZ+R4/+YThdPCCX26CwYvta2RdktM+ZUUUURwpTP8dOkQcIyM9HPGxaPGwa
         9dZPdS6NJ2S00E45lBd6AIsXYccIsyI/hbkYrZC80EChPB+InMmWrbbLv0BJkzjLz1mp
         tRj5GzBR5gLRJAaC/ojgSJCxMi/3jx1daXR1WErYzbYDZU+/sj2UADBBS/nC4e95sAvX
         d7rbOhSP578MQ79bOaeKlXqqM9Dj+WTB7hTutTpCxj35YRtgcxBEvsHg8SNArJqYh77z
         mkZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UdVN0rrYz23qDEhgShYkCgw3PoQ861jSenFQlndrMFY=;
        b=PvpE9AY4u8EGXMp4KO6tnz8l7WifgErJD39pf9Dw6a+YyzN7WBYOncNbSgNe2tEsJV
         7qOU+fynV6lJ4ftBByUh5Kfk9PmGIMU1ZEP+b9sDbdQ9hj4RNyqW3C8VsOHezVeFJb/H
         VSQhck8b03VEZI5voBYGKwvv3Tj31IKlCiyHa6WUX9L4szBeBFRa4y7d00fR+pPZP4tE
         HQz/8ORXu0oT7cv7A2CjTvAmS07sQtIanAwsxgZC4ToDbeuZW4JFzLlWEeaXAZ+kPWHt
         80SJIYnRpPSD7kNIVbdDxL8lNrgw3F18H8sRzMAUwxk82oqCDxdrAUP5y8Y70pPFGUtP
         9GBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QhnOwDpF;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id lj12si381545pjb.0.2020.09.28.03.34.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 03:34:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id g3so297984qtq.10
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 03:34:10 -0700 (PDT)
X-Received: by 2002:ac8:5215:: with SMTP id r21mr784396qtn.257.1601289249260;
 Mon, 28 Sep 2020 03:34:09 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic>
In-Reply-To: <20200928085401.GE1685@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 12:33:57 +0200
Message-ID: <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QhnOwDpF;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, Sep 28, 2020 at 10:54 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Sep 28, 2020 at 10:40:19AM +0200, Dmitry Vyukov wrote:
> > I meant the kernel self-corrupts itself, that just wasn't detected by
> > KASAN, page protections, etc.
>
> Well, Nick already asked this but we're marking all kernel text RO early
> during boot. So it either is happening before that or something else
> altogether is going on.
>
> And if that is a kernel issue, I believe we should've heard by now from
> others. Or maybe this happens only in VMs.
>
> Questions over questions...

I don't have answers to all of the questions, but syzkaller produces a
pretty unique workload. It has found thousands of bugs that you have
not heard from others:
https://syzkaller.appspot.com/upstream#open
https://syzkaller.appspot.com/upstream/fixed
In particular there are hundreds of known and active potential memory
corruption bugs.

It may be related to VMs, but also may well not be related to VMs.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZ4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA%40mail.gmail.com.
