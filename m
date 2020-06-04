Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB45O4X3AKGQEASITIMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 107261EEBC6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:20:04 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id a2sf2358337uaf.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:20:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591302003; cv=pass;
        d=google.com; s=arc-20160816;
        b=N1TFwWFqucLaaDdg2bb2vEwAbgQe+QLp/AzRJmUJ6j1tQ5S9SwYUKuw81qzwvFzNfV
         +ptmhkiWhJ0L1bojd3f9ZcmdHGkCFLVq5WAYmKkq3oVeMOnoZEAEqCg8b8akPx8ViwXc
         3tIg3zCaKofiIofshJNpcxA5kFGT+FeNOu+E4Tv8h2Wq/cS9kiUA9xhI8DtR4btqNi3S
         yO6/lA4ft4nHTXyqQyBv3j0tso2zbMNTPqvIr43zpcN9YtynjmIepO7E5grBaGaLzfLr
         OAlszh54+G3LvDd2zRLKGgLFklBolHzZZ+JKUWVMzhbnnZJmzD6O17Jbjbc/g/KGLPz9
         nfFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fALzwCnHHtWA+88XI2BvKBDKGKiSha1EWurqFVndmVA=;
        b=McimNwEsmwmtQRdgHJpzFm264RTpK7f0CrveQ3yZdg5o5k9BuhykRW1+bc6biQ4Kqq
         UCsMBPyKsnHFXYkUCqQnZ6+gRn5EJgqOsGVSFAfymbLEK7504v6smFsL6WGW4Atw3RPq
         fH0/t6YbSNPaR/eA5x1CoCa7WYhW7qLDfY5V1WKpGy2XfE71yNCO0i4bERVzvJpneJPg
         JZbcw+KHhUVYYgph448WX7aupL8ZuWazwfGwgF0SEvXoiuqenGjLZfOb3eGzT/RxGB46
         dBTP633sJep0RsF115PTG1gGxpF3B0TEn+CQZrYpi945CagM4UjIo9BtxtxrkuNiZywC
         fThw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jAmWlkIQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fALzwCnHHtWA+88XI2BvKBDKGKiSha1EWurqFVndmVA=;
        b=gusk0DLt8MqcSdyeMVjxYIaLdylaEho/8eQX5f6RiGyKQg6RPHg2CM0ejH5VVTdIRg
         L5cbVPzPWX1EEqkfkEFPNpXVf9xpEBR03lQ8wCEqn1MDvSBPKQcqscNrDcKDzpsrVJj0
         AouK51WI8+snVF0DETNc9XKyUwVTG2EZKX6hYYK+ZI4xzDZeX8qNcJqWot/uFTHAB9yU
         631duXR98v5K4E7GOeWWTEnbZsSfJ3azZYyBUM8lkbAxqLzy5/HUCqyTsnpG7q9cxPUK
         HJ+XpJVMVYEmymYIlpBvQyqyUliuhW9yDQUuVXuQIlFExCSPGIZKeoNMqUsfEh8CyWaG
         nU7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fALzwCnHHtWA+88XI2BvKBDKGKiSha1EWurqFVndmVA=;
        b=JDNOSZ9XvPTh26QF6+kAD8KaAHDNuC77PYaBX9Xs7AMTHtrYp6q8LkoEmRSwny15ph
         pAdaKCdrQBKgdpzQC3M2L7vOapNXuBBW+LAIelccE56SDz2MHl+7EMe0K7Ps4u48Rav0
         05vZ9Skx9hIUQwm4W/o26SMmk/rAu+MBQ8I8O6Hln36cpF7DCSmwatocokMwGcXsOdsf
         UpN8SQgJ0WFgYsml1v4XnIfLJ6kULd9qPbdcGm5oQNnX1eszLv/coLJS/8C9Y2duK70m
         lA84qQw4P1fD8+dsXavMKH8xjFaezS0O2ib7tgNbsIhZHKN3FH+TVLaGoe0iQ8jaYJ/x
         DIxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UrHKO2mDPiJ8AiwCDgJ+za04224IhDjh7zcebcim/Dlqh1zDX
	DXor9losIZKOHNw6D3Wkps8=
X-Google-Smtp-Source: ABdhPJy5Q/YMg3KWhyOTBElt8WcxSNQOlrFHBMFzqUXSXOge7cYf9kfjUerahke+gOIJjop7coBLBw==
X-Received: by 2002:a67:6686:: with SMTP id a128mr5088645vsc.83.1591302003129;
        Thu, 04 Jun 2020 13:20:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls575412uak.0.gmail; Thu, 04 Jun
 2020 13:20:02 -0700 (PDT)
X-Received: by 2002:a9f:386a:: with SMTP id q39mr1385892uad.71.1591302002725;
        Thu, 04 Jun 2020 13:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591302002; cv=none;
        d=google.com; s=arc-20160816;
        b=B2XnMbMiJdrz+Mb3/5Jza9OZhtMUKR/JVTvQ0HQewD2kv6BJfK+VJFgfqDr6gONQsS
         UxYDHCNlOt54wZkoaagVrB8QcazFvGr88JpuiFE+9jUHMTYEqfvEzWbIJbTKwUtIZi+g
         Zhm0dGbCN/XFRIdduPKwWv1O5nCVHmUY6YISfkovUn67IM51b+FyLFpP96js5AGHUpbm
         coVziQzYtPrQWlQVWRtINLUbK26V1eMdB2N5CNYgopgPwSOt6twp5N1XhINYqCaskIcA
         MkUGdClTuoq++pA4F8IPMJSSgEHh8T1wyeBgYVvE1/SabM5Bn9Pa/pGwvVXdhVKbVDhE
         bPRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gz66RqxXF5KGuRHQ0GYBuygtpEJiPzNI0sTLh4Vu69Y=;
        b=disC84g/lNtXOrySNfZ2hJ30IStHKLHQNGdlCTcUmwVE5mzRc/O9tr3+giwcT0eFaZ
         T9B00Ev9NuyVbQ/mBRG+DLk0DJiGjlwtsuJ3qaMwG5V/BaIcXIxBzmlL7E3Krf/occmQ
         6bN6uxr17fIhCg6WEfT983Kg4LngYG0IK0WWHqwQGYiR/oI0oFWYTnTOeXCtil6JuD/D
         rBRJMzDG6cTuIAhYFKc9g0vSAdfjuH0+N6qBny4G/WSH3i5UJO8WSIVTZTMLRI9Gfqi4
         CiuVfEHZ9XOYVwSn/0oc6xTIT0vUxTCw2b8um5z//q2kmh8UtUJ0f0Fu/CTaNLAEseHI
         ay3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jAmWlkIQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y7si285456vko.5.2020.06.04.13.20.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g12so2655264pll.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:20:02 -0700 (PDT)
X-Received: by 2002:a17:90a:7043:: with SMTP id f61mr7838452pjk.140.1591302001916;
        Thu, 04 Jun 2020 13:20:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g17sm1432553pju.11.2020.06.04.13.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 13:20:01 -0700 (PDT)
Date: Thu, 4 Jun 2020 13:20:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	Network Development <netdev@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
Message-ID: <202006041318.B0EA9059C7@keescook>
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org>
 <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jAmWlkIQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > "unused variable"). If the compiler thinks it is uninitialized, either
> > simply initialize the variable or make compiler changes. As a precursor
> > to removing[2] this[3] macro[4], just remove this variable since it was
> > actually unused:
> >
> > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> >         unsigned long uninitialized_var(flags);
> >                                         ^
> >
> > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the reviews!

> Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")

I originally avoided adding Fixes tags because I didn't want these
changes backported into a -stable without -Wmaybe-uninitialized
disabled, but in these cases (variable removal), that actually does make
sense. Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006041318.B0EA9059C7%40keescook.
