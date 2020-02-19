Return-Path: <clang-built-linux+bncBCU73AEHRQBBB24PW3ZAKGQER57S6EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADB5164E80
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:09:32 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id z13sf750248otp.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:09:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582139371; cv=pass;
        d=google.com; s=arc-20160816;
        b=DwXD5a2+rfBJwo3ubYBw699G5qiciF9wtLj5rIimtIPnzoksff1JDWy3MWC6IGWenC
         wZHhIr/15GEDxIt5QcgprhKLGvpNAXoHzcq0RAfuFgychVHGzeiuS2euFrV4AOe/iKP0
         IBZYaXAcCUlK75e8N+bJthBeY9jpwxwRet5SXSX0tVn4ZnMCyTUAZoQKHoVh+ZI3wGhW
         s/lpGiJOv6w+mXA6JIFIQtd1r4LOChljIptxLbbgwDGCGf8o2bBYSkLbpOvuA0SRfPFd
         chUFHPvysd7yNLrTmu3d3Mhl5DJXyfENamKr9LvN4heBk+4OamLqIibe6Z17/siff2o+
         3w6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ZLOi017S/K57WbQQNHOOixnyU22ILpojm6zZRmwXKng=;
        b=j7j6Uc0m+DQdBi+0iH+cqvxZuzAfrou5du6uKb+MauIjyRBXMvdzzY3OOftg9Z6a3g
         HiiND/WWqcE2V+hOqyfwkO0BF5vkbMhkv2uN7QFsa6Il0lOwVfvhoxGnEokVwC18aB38
         Bd6r4/9Ilh42AYj69pCR1HgwNxO7C/uZzwRcZfBHEeryIwY+DbHbUDCNavQRmbUoGEdZ
         Efdx9ZNhm4z4LX3XhrFtdGZH2pbkpaIV8OhKhK9IX9NQDFKNPCVXHpQA4VeToJ+aWe2M
         0NR7pFfNPkqlr9PD37xc8ZXVkTbMaA5K+C8KV6iJbBdt8ka6I4jSJEjewYLBwH3AHSOB
         lSZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLOi017S/K57WbQQNHOOixnyU22ILpojm6zZRmwXKng=;
        b=N90r6rUyjpQqyPcFG8TNLN3Dq9TvrxArlVfBbtc3URPa0b8KtVKjDG563ytz0KnZVO
         XiM8tXhNdixUQrhpNZvDS7PJqu+LztcNH5f8PstlhnK1UMK1Rk9o5JiIrSlty87tHASP
         s6jdadZDdJUcFKfgHByfAYmCt84m2g/yFcUkuvIM+g5CHD5LT2N7H2iAUSP7oGOSx/9L
         Ux/6Pm3KC2ulWmF5OQQRHgv+wVxrIf2yrf4XnK2EF0+MXNiO8vO/2gJ8ENXQoCju5EpQ
         koobngBr8ql/Fyzq5lxM0Uw91VOW9P88C2N36xmJYsb4Q740CK8IxUPSM5ZfLivgLhIn
         O9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLOi017S/K57WbQQNHOOixnyU22ILpojm6zZRmwXKng=;
        b=XUFQzMAFGvRCHukiFKjhGZ6WsR4aYLnl91omq2eUPOS90QRTGI9xfvlkHxK2mprtYS
         gZYswgAhJFqy73Kh5EodY1abiCSg6D9Z3/Ab+JWqRkSuEzYttdgm36JY6OQub+zJx2lU
         KF+W2B0sWmXgbc5cTL9OfZnHzAUP7QbXHiln5GiO+04Oo9oQIHR/NLFJfACbWO+D2MkW
         32Y1yHNbITLfTEync9xNL3Z4qdxrRBeZxflAGEtAJ6EzFtR1T9PActaCmDxGqSZxwL7z
         hu3b13CB1J1kpyc5bSm4jbgD0St+qFxEY/rGcZPdzgWdZHg4XLrpEnWoJb8GjrzdNt9h
         kSnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW22E/krLifrXHkITWoKMM6QEExrtjf8WsPfWTldpVA6OV5A5rN
	MoIsmNTALTjnbLI/gSN91hQ=
X-Google-Smtp-Source: APXvYqxaWe9fry8R4UjAlmi5lPy6ubJhyaI9XAO/hpKbWg2TP/cTPZqn6zubhQDOwwcnCbI8I+SSaw==
X-Received: by 2002:a9d:34c:: with SMTP id 70mr19407799otv.174.1582139371501;
        Wed, 19 Feb 2020 11:09:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3ae:: with SMTP id n14ls236397oie.8.gmail; Wed, 19
 Feb 2020 11:09:31 -0800 (PST)
X-Received: by 2002:aca:ea43:: with SMTP id i64mr5710158oih.30.1582139371176;
        Wed, 19 Feb 2020 11:09:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582139371; cv=none;
        d=google.com; s=arc-20160816;
        b=NWPZQXnD4rgXitJ6SiD4Spqn1vu2XwjjGkjq/jE0s4BzAxScySV4SZ634lHrDfV2ot
         UeuKJDBqLdofw+CeTd8pUPIkbHrV2YOAYyisR93VH7SRah836EYtnQFbEHE+afawLpU9
         +RZ0F5BfnKAglm61HaByykEGbCjWXNrsfJaIX3RdKFVWKgtk8S+pTnS3bo+CJGeS3kym
         XtJH/UVxsfuy8DqNyfhv8sumOLhf9PVzfMRK0gtOPZLqgG7xpYYbcObKYCTa43WCTizQ
         rRndmmwLnjHf/RBS8rkUj2IZhmasWg9ijP5FUTemMVHQKuZEQdicgxoUJQDEsqPKD54M
         m4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=RKu3a0Gcx7PjDpUarQHfaMJB/PW9VhT6/xWNkgJd1GY=;
        b=RYNjip8mf2YEB6XWcbPpW/jnUiHljMx72UNblOFgWTAYRzAD7YFHG0yP+5em0KXdkY
         Dx4y3xVyULzZ9A+43t+mxRRpHoiy+JNuHOUHhEpJtfOIQck/JGriilxvBfXivV8//jC0
         owFpCoZaVmPG12zJbNHpgUjoFD0/F76+r9tMY7SpxeU1VNLvOOO2BhPltjMguCneYY4b
         kIa6ILFwVoXGL/bMinC2+uX15QDzMDQ+2FrIB7sjDZMdAWgQdVHkzsD4ooi08HfbA1UV
         VOULiktNcsfMKysYifAklN8Uu6msLxvqHfswFQ4xTIYf23mpTv0FLQjVjSdcfyumoQ9s
         ZuPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d6si1134259oig.4.2020.02.19.11.09.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:09:31 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E5692208C4;
	Wed, 19 Feb 2020 19:09:28 +0000 (UTC)
Date: Wed, 19 Feb 2020 14:09:27 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
 <natechancellor@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, Michal
 Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>, Ingo Molnar
 <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.org>, LKML
 <linux-kernel@vger.kernel.org>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
Message-ID: <20200219140927.396ca577@gandalf.local.home>
In-Reply-To: <20200219181619.GV31668@ziepe.ca>
References: <20200219045423.54190-1-natechancellor@gmail.com>
	<20200219045423.54190-4-natechancellor@gmail.com>
	<20200219093445.386f1c09@gandalf.local.home>
	<CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
	<20200219181619.GV31668@ziepe.ca>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
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

On Wed, 19 Feb 2020 14:16:19 -0400
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> > kernel/trace/trace.h
> > 1923:extern const char *__stop___trace_bprintk_fmt[];  
> 
> Godbolt says clang is happy if it is written as:
> 
>   if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])
> 
> Which is probably the best compromise. The type here is const char
> *[], so it would be a shame to see it go.

If the above works, I'd be happy with that. As it is still readable.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219140927.396ca577%40gandalf.local.home.
