Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBHEU3WAAMGQEV4ZJEGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD46309FAF
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 01:23:58 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 139sf10209052pgd.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 16:23:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612139036; cv=pass;
        d=google.com; s=arc-20160816;
        b=kKXBnOC3J0Aw288rvX5VI4JYh47zBKa5qkOrEmzzEDscKWGhEd5pbyvsmgWHOD4mNP
         YH0CBzxHxyMAP2FxVQDW0KIj97ttv8QEORFc/EKnEaA0RmM12UYNvQhVGV9eYaf6v0Vo
         HDVKgf7uidswy9jNLIXNxFFj0gE1ow8REUwuvSgSlAIzqzvO4W4D+8JsT0Pw7jEvQEor
         in60fxF57tdRzIW2YRRnHEGV0/NKnnu7sOdE+vlPViCVnz8DqphN27JRgzVt9zptpV/f
         Jirt/1cU7E9bHzxVOBhIZNEe2QT710Wqdp+blfqO4w9AxaXrc7E73RJYrJVGeFMhhb0S
         WEbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7YZ4B3BWdcBjp3HOK/gs7O8w470VvYBHVoDOz7DaVPE=;
        b=A5QO4JH21sfhZ5YIuEEhLuOPx5fVvEUsExBhxcEskhJA/UUlLa+Nr9QCswTIjGSEQK
         4G8+J2QehlULaGBrcgD2W1FASJqiaM8ewOqMhn9hCxIX0Dl3twEiKfJB6IExOZF62VKR
         vi/ZdNG33FGt2c+bR2vYNtYNh8ZC+H3fZFZeULXMcFGpv0Y8JcM2/W+IdCOTBBr/JKeb
         HdN4lsb7VyxEL+YWCJ3IZsGDhTuhzJMQy4RfnvgrmkfU19IjnUO+hXZZ65LOsnOy8WBi
         wz+T0j3ShGrx864wLg+wnJkoSYMgB9nNkTsPKZC/oHKc6zY+Z+ccuXW30Isk5j8nVqmI
         wO/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1g6LEQI;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7YZ4B3BWdcBjp3HOK/gs7O8w470VvYBHVoDOz7DaVPE=;
        b=WGQdE7Yveh+A2rrUnt/WiJUmFwJZ6JeZY4MU9W15pXaaEslhSpvDMaFxS/IppXjrtu
         mU5Y+6SooieCiGbV5y+QzxlZIJyKzw0sGz0yHR/8NZowXTxmQPI3mgGmKgOy7jZR+c9Z
         xnEZiiZPNAStAG+l4W0Baox4IfPFUhrEjtyZhhblXhZzVHgaSH76WaK80pl8QG7CzqgK
         PjFefqTL9hgjSFetcVTNcxQ0z6mMwhSMnxq4I+AxARgoQA5seFdC5V5ZcmDMtDHF/dyR
         OhKu9qosflpDtkrfOIbI08BGCPRlvJxkvc09x4poV4g7KJ2LtPZJbpanXqLNsjY6nJYM
         JZZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7YZ4B3BWdcBjp3HOK/gs7O8w470VvYBHVoDOz7DaVPE=;
        b=YcxadAcqkaBTX3ZCiFogD+E61RNl6ZJB3GCWIyh40wDfTRhXJ0OYGkjJzfWpfzXUw7
         LR14649EnbXkX/SkbmKQjnMbTUP4kRvoVriEF1q1B5+VB5JQxJ7ye7E8W/O3Aw7+uFes
         Klwamko8vuaqGi4NqJ0CGdLGtx8T8gzGmFduMKdjRlnvsVA/yFD6q1j6yghazPi1ZHyd
         VHAGSuH2gXzP5piMzZB7W1jI5shi/MuBhP37GwkKcWT6vyqbOYgM82Ti1YXfgbYwcmvB
         IaM2Q6LQPn/XFH4yMzOBB3gqvkj0g5YcQHNJFPXYQYM490+WuzoUx9vKj1+WkT3YCJ/y
         lx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7YZ4B3BWdcBjp3HOK/gs7O8w470VvYBHVoDOz7DaVPE=;
        b=uareOY/XnqsxlUFq5NNNch5awP/yy8xxePR+C014gXwMAoKb64hVcmObmkygPGHHpk
         J1bEE+zczraB7/LGqnYH7KW9hNpzUQvyhTxw0Jf552TZ/X8a6GvsbkDxa0p9frLLWo2g
         wI8vT3V42zWwa6CdHxnSfTm9ln/5t4Asmb183Bgwy61bCUbyaxI6UFvFR1JkeSbwwHml
         KxR6mpxvz2g5uU92ZibTZgZY8Z5g5rNPjFsFwtQ/OlBYTDIDodOP13qPoKNPfO1m/gSy
         FQztSKahk68e0CpiDwHkzm5Nb0fFDhLGoyHJYRn/btpQMvQLf0ir4diZeeJeZzSrhoCS
         65Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532suTg7xUX44hJ0B7ayGq/CK6MAKmN7pNh1Ifl/9Fpd5X29aN6+
	5jbRuAdlYKrVyZhq6GI9OZI=
X-Google-Smtp-Source: ABdhPJzoRMeFtjRrnIA5ZP6016M5sY6x3YdlSYJARPJDvQkIKuPZtaw5cC4YsnPxIYBeXMx8vU8hGg==
X-Received: by 2002:a63:914b:: with SMTP id l72mr14228042pge.411.1612139036629;
        Sun, 31 Jan 2021 16:23:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls5659702pgh.7.gmail; Sun, 31 Jan
 2021 16:23:56 -0800 (PST)
X-Received: by 2002:a63:5221:: with SMTP id g33mr14342105pgb.202.1612139036098;
        Sun, 31 Jan 2021 16:23:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612139036; cv=none;
        d=google.com; s=arc-20160816;
        b=eIh24A6JjWHr5B2aEfSTwGM39VIgtYN1RWCg6ddtYz3YPsBKBbr/vnZIMsehPJLKM1
         YXNu32kcvZdQqoBgmmjK972ymsK9A1YVizeJCk6zq8u/oSq4+RanoZjFV5yIB31347CP
         C8zZeVWI93pYoEdQflbofaCcRafaQAa+4ulRsL+9ZgX2Lemxzcx6XoX4t670nhDOsxwd
         kcoiznWyw5Yr8VRGwxlqJEgkER4dUrHUv2tGTB+k3tzu1wYjY6Oym0Tzkgb8SKfnPCym
         ftXYnXDAm8Fsrw7xWWh0REMK3wyEYgazmFqnJSsLqMS/WTQ22hlQsSb4IDQf66xl7GPq
         sfCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=j+6+ulDyi6U2H4iOXB1YcmGEFxqpm4cmiSLEvcnumSM=;
        b=LalTMIrosZiQ6jtp1Boc54FtYvg4JINaOsTggC18+AHYmAiUF5cnRuBzqLqwewy9dI
         mIZdP71jqkGUq26wGg5p661XaMoBtWz2ZScljUtBkqlyKGFt5KqTTijh2moWF6iPJKcE
         N8Ej4Q/FEzcEcz+7JG0zS54WuRGZaDXvtZfj55p4sSwvhfhOr6ylrZ9g9hziiSWchaSb
         S6P/ptLT9oCKPJ1Dytq3IfkVJC8kFXAiqc0Scw6jkWssxnNdLNdaXhcnCIsZqbPY6blr
         v37blMjJ+RzXSYudWtudWNwILATVOKv3RGwc0nkw2fqdIfzRx21iuMwlo7aZCA8HNi/L
         9pdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s1g6LEQI;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id ep11si804324pjb.0.2021.01.31.16.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Jan 2021 16:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id d13so15590397ioy.4
        for <clang-built-linux@googlegroups.com>; Sun, 31 Jan 2021 16:23:56 -0800 (PST)
X-Received: by 2002:a5d:9710:: with SMTP id h16mr4362661iol.192.1612139035501;
        Sun, 31 Jan 2021 16:23:55 -0800 (PST)
Received: from llvm-development.us-central1-a.c.llvm-285123.internal (131.28.69.34.bc.googleusercontent.com. [34.69.28.131])
        by smtp.gmail.com with ESMTPSA id r1sm7874186iot.8.2021.01.31.16.23.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jan 2021 16:23:54 -0800 (PST)
Date: Mon, 1 Feb 2021 00:23:53 +0000
From: Vinicius Tinti <viniciustinti@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/i915: Remove unreachable code
Message-ID: <CALD9WKyonuPTPBzLHyLGd0V+w9SQavPdv0c_nBgLOyr6_5QnjQ@mail.gmail.com>
References: <20210129181519.69963-1-viniciustinti@gmail.com>
 <161195375417.17568.2762721732398065240@build.alporthouse.com>
 <20210130123411.GB1822@llvm-development.us-central1-a.c.llvm-285123.internal>
 <161201071009.32035.9188382145053741268@build.alporthouse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <161201071009.32035.9188382145053741268@build.alporthouse.com>
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s1g6LEQI;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2607:f8b0:4864:20::d2f
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 30, 2021 at 9:45 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Vinicius Tinti (2021-01-30 12:34:11)
> > On Fri, Jan 29, 2021 at 08:55:54PM +0000, Chris Wilson wrote:
> > > Quoting Vinicius Tinti (2021-01-29 18:15:19)
> > > > By enabling -Wunreachable-code-aggressive on Clang the following code
> > > > paths are unreachable.
> > >
> > > That code exists as commentary and, especially for sdvo, library
> > > functions that we may need in future.
> >
> > I would argue that this code could be removed since it is in git history.
> > It can be restored when needed.
> >
> > This will make the code cleaner.
>
> It doesn't change the control flow, so no complexity argument. It
> removes documentation from the code, so I have the opposite opinion.

The last change in sdvo related to this function is from commit
ce22c320b8ca ("drm/i915/sdvo: convert to encoder disable/enable"), which
dates from 2012.

It has not been used or changed for a long time. I think it could be
converted to a block comment. This will preserve the documentation
purpose. What do you think?

All this will avoid having "if (0)".

> > > The ivb-gt1 case => as we now set the gt level for ivb, should we not
> > > enable the optimisation for ivb unaffected by the w/a? Just no one has
> > > taken the time to see if it causes a regression.
> >
> > I don't know. I just found out that the code is unreachable.
> >
> > > For error state, the question remains whether we should revert to
> > > uncompressed data if the compressed stream is larger than the original.
> >
> > I don't know too.
> >
> > In this last two cases the code could be commented and the decisions
> > and problems explained in the comment section.
>
> They already are, that is the point.

I meant making them a block comment. For example:

/*
 * Enabling HiZ Raw Stall Optimization, at this point, causes corruption.
 *
 * Calling wa_masked_dis with the arguments wal, CACHE_MODE_0_GEN7,
 * HIZ_RAW_STALL_OPT_DISABLE will cause an HiZ corruption on ivb:g1.
 */

/*
 * Should fallback to uncompressed if we increase size
 * (zstream->total_out > zstream->total_in) by returning -E2BIG?
 */

> -Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALD9WKyonuPTPBzLHyLGd0V%2Bw9SQavPdv0c_nBgLOyr6_5QnjQ%40mail.gmail.com.
