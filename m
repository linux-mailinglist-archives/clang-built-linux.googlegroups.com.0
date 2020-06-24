Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZVPZL3QKGQED5MZEYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3C42068BE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 02:01:43 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id u128sf190508pfu.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 17:01:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592956902; cv=pass;
        d=google.com; s=arc-20160816;
        b=bD1Bm78RGvibSRiyIc2jRBcdeq9CMbi63XEmoqopDhnVthVEZ7AZcRJdN/2FbQ/TEn
         vEBRKNgumOyizqAphL+TGsHFdLJKzYXWvVzLcdzlcOaYhxi98Y5uGk6a4sWiDEYBS1kp
         p4o/BePy0KjXWTEWDGi7iHIFmXugvVgL6coAqOJOri1U6pWUhF81Uuu+W8FR9JCtga9f
         YqtUwhvTbiyo0577M6mi0EHaykq7j/VAcfbo7ZQscRTg9ibojvEzMaqxA9AZ5k9BFR7a
         2o6QP5goHMEw6ez49C2KjnwZzGGPAeoM/MXqU2l55NgsKIF6ScDIrLQLFhGuoSuJuDDS
         Zt4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fINvJPcx2Jzo9iOc02xtq37ht0embXRBinH1YdeOJJ8=;
        b=qvtoemBlnfQGHOg5/jz+fFOrddrBRLDIveAPANFWnXK+l/228oWTko6sqFq/9GydCy
         u6V/JZS+QH1YEGB5hDXs/Ca5GS/0dbg0yRvS6jxQomZgnwjYeqBEKAzLEuYeBKuIB+sJ
         EG6jTTMI2mMV7z41awCGAd8Ypf3J/d+AXYqSRi+GuXvCw4apzyeetuN/XSrKHjOSJW6E
         Vcblx4JrP1qQ9nULt9jUjCaZUIdC6aWxu68QQ6xmNq/NHKs8C6OJ56T2IEBYNIb3S2Lf
         B12eGX9i0SErOEZFttPh0i/o5e4f3Rya875ygmuWQ7vBG9eytIhbNVpUDWaUPB9jVRU4
         1hmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DBQeiRGu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fINvJPcx2Jzo9iOc02xtq37ht0embXRBinH1YdeOJJ8=;
        b=pdlNAFCfUa07lTVN34Wjsl+Eh41jK1DSp8W25jxOKdaFPhHKH2+y4cOt9BNMZLZlG3
         Sfo70hPJhOs7Pbquq5g1HHjOpQxrqr8XTOX0Tzea9VAKxzvrzywDbMVlWaD7tyvbBKPk
         C/wNeTCx6vN8oKvB8J3okapVr1ibdlSWF8TIFuVV5c/4CqM1WBjEg1Dwen6x8JivJddv
         0CnSEb144TM0j5YWRLvFLUOCI7LJeDg9R2JM1bwv2ULz+oOvdaFqb5qQdHmu0vpPl067
         mvU6xO4z+w/+IbadIDyexERVNtz4MVdE8HZ7X9cwVYNn1v1W3B39kWLn1pvCqyTK7bGX
         IBbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fINvJPcx2Jzo9iOc02xtq37ht0embXRBinH1YdeOJJ8=;
        b=pMoIOlLllDFPet5dN59OYWPd4wexh2B0Hm6+WSyOQp806K7wigik8VJDo9nWFglFxF
         VOl7M/oaSmqV34kY5byr098MgRxX8wHHR9IVoLpEf3H6ztNB2NQDweKmp5EtnaAO4dg9
         5kGHwFU6WfSqcHuWlSy/KIiLtmAUtOKpiSdKktp+UdotaqCfUktFwhLQU+Cq0MwKt8wk
         Sr+eDbHVv03iyoY3GMhFnVgPi7CzCLxwBS0v18TR8THgAMD4ersT4NdLpzkq4TG7mjnt
         xwak+djuf+42xqrnMWc55NzG8yZACbu/swu3ar4UJCzElQ2y7Cqfq4pYNB+OGAMiDK/T
         ZzQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YC9t8V+N9hNa4ZWro/vCiXQ27zuw2HIWoYqoN5B66wEVOa4FJ
	RSjyZejpEPoDveMK6ukIfFs=
X-Google-Smtp-Source: ABdhPJxxZQrNAsRHY2k62AciW0ZWbN/bGXufkR7xyNhNsxb3xcPsEkvZdNzONbSR7ag98mxcmJqaxg==
X-Received: by 2002:a17:90a:e506:: with SMTP id t6mr27020958pjy.35.1592956902541;
        Tue, 23 Jun 2020 17:01:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls166572plf.2.gmail; Tue, 23
 Jun 2020 17:01:42 -0700 (PDT)
X-Received: by 2002:a17:902:a714:: with SMTP id w20mr26531921plq.125.1592956902033;
        Tue, 23 Jun 2020 17:01:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592956902; cv=none;
        d=google.com; s=arc-20160816;
        b=TULRKiLmeTOkvP10HJq5ic2QXUu3DfvPrElwuS8Wb0BlROvcbkTlg91o9+j/3BUkx3
         paVtUfYX0IldAMI4Jd6dsxoLXpfAJk72/sKenSsFGXSyuHk9wkuG/RTNbKp0g4WqsFVp
         TTYHmHt0nG0rk8u1eYpPIq767uvMMDukfpJsEyBeSo0QsWBDlDLNArX9aMOlC3Jmwaby
         T/jOrTm5xzvnXYsx/pKvT4OiYgpMtHY7wjf8b5r4paqW++lOh/Ottxw/hHx1lfvymqG1
         tVjg8x0alI43Mk9EWcM0fss9h5NmV+Xnh0QQ1plWtSqfGpGIJYHnpj7hQdbMvgpFCBlC
         0dMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bLqWa8D4a1aW1RT9kraxn7fj5TtxyMRknVxZIyfvPbs=;
        b=uX0D9NiOHyCuOP0f3ko0z0jyVOLg0+3GrpWfOJLrT6KSZ4b77/tuSgCi+umCNRHF66
         WBuIrwJHpCxsQ7VOzjYZr/lxgdb+aZHW4xIEoechqP7LNLzdgsSf/spRo1ylq3kyIpsB
         pp4/1dpukK6Ohoc0QaWyXHEeSUxQQLYqwOsdwvpcgygTJQUYJreD7dqnkp8VOe+kLgZL
         n4lNiuu4f3bAciP0rNCNAp6CuKogDP6yiZlNwvTnnCtymA31pIAktys/9CFOXVcQ6UzE
         pVkgy8a68Z+wjEYQ31qF0Pfz3WpMftEjOIye8XgWvoPvC37l3L+h0zBpC3CLRmbO/wOV
         sRUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DBQeiRGu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t72si1188307pfc.5.2020.06.23.17.01.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 17:01:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id a127so200205pfa.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 17:01:42 -0700 (PDT)
X-Received: by 2002:a62:1a87:: with SMTP id a129mr26864467pfa.95.1592956901676;
        Tue, 23 Jun 2020 17:01:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id jz23sm3378905pjb.2.2020.06.23.17.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 17:01:40 -0700 (PDT)
Date: Tue, 23 Jun 2020 17:01:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	richard -rw- weinberger <richard.weinberger@gmail.com>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
Message-ID: <202006231701.DACC6F2C9@keescook>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DBQeiRGu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jun 23, 2020 at 04:32:12PM -0700, Randy Dunlap wrote:
> On 6/23/20 4:10 PM, Kees Cook wrote:
> > On Fri, May 29, 2020 at 01:03:43PM -0700, Kees Cook wrote:
> >> Hi Greg,
> >>
> >> Can you please apply these patches to your drivers/misc tree for LKDTM?
> >> It's mostly a collection of fixes and improvements and tweaks to the
> >> selftest integration.
> > 
> > Friendly ping -- we're past -rc2 now. :)
> > 
> > Thanks!
> > 
> > -Kees
> > 
> >>
> >> Thanks!
> >>
> >> -Kees
> >>
> >> Kees Cook (4):
> >>   lkdtm: Avoid more compiler optimizations for bad writes
> >>   lkdtm/heap: Avoid edge and middle of slabs
> >>   selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
> >>   lkdtm: Make arch-specific tests always available
> >>
> >>  drivers/misc/lkdtm/bugs.c               | 45 +++++++++++++------------
> >>  drivers/misc/lkdtm/heap.c               |  9 ++---
> >>  drivers/misc/lkdtm/lkdtm.h              |  2 --
> >>  drivers/misc/lkdtm/perms.c              | 22 ++++++++----
> >>  drivers/misc/lkdtm/usercopy.c           |  7 ++--
> >>  tools/testing/selftests/lkdtm/run.sh    |  6 ++++
> >>  tools/testing/selftests/lkdtm/tests.txt |  1 +
> >>  7 files changed, 56 insertions(+), 36 deletions(-)
> >>
> >> -- 
> >> 2.25.1
> >>
> > 
> 
> >> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
> 
> > True that, we can rip the file.
> 
> Has anyone fixed the uml build errors?

Oh, I thought that had nothing to do with the lkdtm changes? Should I
rip out that file and resend?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006231701.DACC6F2C9%40keescook.
