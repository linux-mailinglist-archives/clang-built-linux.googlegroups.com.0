Return-Path: <clang-built-linux+bncBDPPFIEASMFBBW4LU7XAKGQEDDJXT5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B65DF8146
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 21:34:36 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id m17sf10552962wrn.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 12:34:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573504476; cv=pass;
        d=google.com; s=arc-20160816;
        b=lKhfYoseZqqfzZTuqJBJeaMacWlpqQEFtizFlr4iXX3Hito//Efs/tMbdT07Q+GMzs
         JIY1Hvz8GjyBO+TF1w1/9Wx8DigUpOfhSKhkQErSYuXmgGvut2CvQ6v9QYVmI81Eu7nb
         jc9HiW4SBRtGKdt/favp09LzbRIovmSc2s+0GYFlotVg/VifsE6PmmTlZIOlRl3mNbvB
         NkwV5eWA/uOLpXPB4gb2NZn1fzaRVlArn//maHIBJcpgbMf1PXsZExKQs4jGaOqj+lYd
         wLBo4qBMfSSP4tHT7feiSQ1RfWcdsqqYEWQ3cApAQMK6JZYQH6XOOGqoqxSjTTNB6sDd
         L+7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JdisE0a7vxzznOReeMmBMybJAMZYHLEBTerUP4zkQs4=;
        b=hY9ZP5tuySH123PsePr/KZGyypwLelpWvc2mYv5jQtpQqKu6hD5cgH6Ab2e/k+Z4QY
         3P6EMnlEi5IJ/GO8xtW+jNGRMAgHDhKFotm3R4plR+moFkHHjwTJuCS+Jru9rgazpxPd
         8wdKlyZ3bweBrTQf0+RdYRPxuZjUT3hLWildbdgiRNWuAVlLGWG8zaepthcdIUBHH4/v
         zXBBchYppRXdtevhBG0dldmdhkXAYK1TIPnqbT4LN8XyzZiW1f++5ioe3esLTY6fF+C2
         Et/7rH3iSxIzBtVfl3IBjkYv7hu3PefHIIbZqwLrCf4B83lRtUZ6anTgcQSo1Wkp+cdc
         O9fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1QOyZm7;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdisE0a7vxzznOReeMmBMybJAMZYHLEBTerUP4zkQs4=;
        b=FHcWkvw1NFcAAXABYEQyoVBdcYPbQMhUtYvBhvTOoB6leLXyu372oyT/0HAOtNv5uY
         GHf8pAFDkxR469mQLYv6BrALFtOwOuEdYfMTTrWP0Kh8Ok+etOZbdBLQtkk3w9kMlqgv
         zv37HEP2aAkIhaTQniB9pYLi/q51ivo5BtBSVwHVrQPUS7k/WPlll/g7QUsznzmli7p3
         TDs7fFYp5ZTnhn4Sda5JvD9KU4WCw1bAW4F/hAXFpDxAaH9pI65KEJNChXFRX4E5q1ie
         ZppfE5IkoUJH4fUvPrb3DAPDtkradQ6fiJqN3v+EsMnd4rgkuCtFZyZf4dIo/5+B8spS
         +aTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdisE0a7vxzznOReeMmBMybJAMZYHLEBTerUP4zkQs4=;
        b=oO1o6TpGs/geYPLFToIGi0KPYcsnWL+lCEW4IlevBxXQ6zljjarmdllK4/+avLcIyv
         c9+JEM78daQ7mtiQxF7gabH3CY7Tu6rJ5m2t/2fJjfziK2Vv/prutZ7O5cJZ0MMgJ23d
         w0QhW8rodKATmYg/S/QiunFm1TOBGOovxAuHaV4TnCM24l0riMWKwM6awQHpeFDC5v6K
         JAHH0PH0SYVGb3C3lvA4rDPPgDHgXwWDgEMVjvIrUz61B1kNCikxu+iSexbyg/eL5HlS
         4NpfQcG9+v2Oek89cnv8TgbcHMCTvMuY3guJ4ZhDnJfuUtQhLqxNl+gQjlapWyGt16fI
         fbhg==
X-Gm-Message-State: APjAAAWHzPJWgwMV4IYIKzRjvfCMo0lR4zgRdWyu03b4OonCmkMYJmue
	9ODarRHe+LqIKJJWzKkZBRg=
X-Google-Smtp-Source: APXvYqx4c14m9vyEvVsPXtF/oKBY17Z9npxwmQ87XoXe1QBS/QsQRM1ocOWCLXCLcJHmDQIGc/LueA==
X-Received: by 2002:a5d:6acb:: with SMTP id u11mr213496wrw.271.1573504475889;
        Mon, 11 Nov 2019 12:34:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9d8b:: with SMTP id p11ls80406wre.7.gmail; Mon, 11 Nov
 2019 12:34:35 -0800 (PST)
X-Received: by 2002:a5d:448a:: with SMTP id j10mr24093511wrq.79.1573504475423;
        Mon, 11 Nov 2019 12:34:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573504475; cv=none;
        d=google.com; s=arc-20160816;
        b=EBT3jH400NEUXjfW2VMSn1eWf5px/aIfw0bX5FsSp9XTf/0oI1oi1+5JS1OKzhcbt5
         4Tzmek1KWzjYO/mwTPL7No7mT3WMzOLPONKwjzSLNjjrx8nvXO/1Twyl6SzEr4Qju/ZT
         /+sYSH97ikJCS888vbTsvfUwkUvCBBadrU//7Imrh3HSJlvPZDk8bBgRx5wAa8vii9+K
         iNnQgOEdZ0msh83peH8AsXVtTj1k2p7oBXIMxdfChEQ2jlB734x2byp2xqLb5e62A7ra
         vhwXIbu66ckt2o4oz+cif/zTKW6m/gOaB4bUjA6MlEwUpqWiS0ZyqzVcM9Xm32p82mbC
         5WQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UHvLQwIVksvr5k5bLuPU04kyrWXF24MECcQaDAhulgU=;
        b=MP9fznWHIXfa3McqYv2as0G08dGIj+b79vTc1+CCfxDLtfb/Mzvsi3IYc9SZIpmJ8E
         sdUE9ImHhkYh+GBL5yd7WPXumBena6+Tl2xz5Jrfk9wmAD873ubYP+wdoKlLghezjNmd
         UguZw6kaI1tMc2IrkzqVHW9pzOd+seLZKHdTpEBGNxmZopo1cav7bFxIssqQjqIaaBMJ
         9x9RHzBj3ooSq++PodiHpDFtJWHr7YDEZUfjgkZzqflHFzUOg2ALjRSGRwrHnhmMUYtn
         D3am1/eiVRoDIdAk68LNnj+gebuJ14kbvy1AOu3pS5Gpdp31wdMt8o153HX6AfWfOKTH
         w1IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u1QOyZm7;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i13si493115wru.2.2019.11.11.12.34.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2019 12:34:35 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id f2so16070598wrs.11
        for <clang-built-linux@googlegroups.com>; Mon, 11 Nov 2019 12:34:35 -0800 (PST)
X-Received: by 2002:adf:f1c7:: with SMTP id z7mr24268843wro.355.1573504474504;
 Mon, 11 Nov 2019 12:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023082912.GB22919@krava>
 <20191111142511.GF9365@kernel.org>
In-Reply-To: <20191111142511.GF9365@kernel.org>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Nov 2019 12:34:23 -0800
Message-ID: <CAP-5=fUB-FddKaKOCYfU2Zu+AX88U9dFFmZ4Fdv146vKvQSr1g@mail.gmail.com>
Subject: Re: [PATCH] perf tools: avoid reading out of scope array
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Cc: Jiri Olsa <jolsa@redhat.com>, He Kuang <hekuang@huawei.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Andi Kleen <ak@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u1QOyZm7;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Thanks Arnaldo, this patch shouldn't be added. It was replaced with
the longer v2 patch that addressed the memory issues properly. That
was followed by a number of improved versions.

Ian

On Mon, Nov 11, 2019 at 6:25 AM Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Wed, Oct 23, 2019 at 10:29:12AM +0200, Jiri Olsa escreveu:
> > On Thu, Oct 17, 2019 at 10:05:31AM -0700, Ian Rogers wrote:
> > > Modify tracepoint name into 2 sys components and assemble at use. This
> > > avoids the sys_name array being out of scope at the point of use.
> > > Bug caught with LLVM's address sanitizer with fuzz generated input of
> > > ":cs\1" to parse_events.
> > >
> > > Signed-off-by: Ian Rogers <irogers@google.com>
> > > ---
> > >  tools/perf/util/parse-events.y | 36 +++++++++++++++++++++++-----------
> > >  1 file changed, 25 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/tools/perf/util/parse-events.y b/tools/perf/util/parse-events.y
> > > index 48126ae4cd13..28be39a703c9 100644
> > > --- a/tools/perf/util/parse-events.y
> > > +++ b/tools/perf/util/parse-events.y
> > > @@ -104,7 +104,8 @@ static void inc_group_count(struct list_head *list,
> > >     struct list_head *head;
> > >     struct parse_events_term *term;
> > >     struct tracepoint_name {
> > > -           char *sys;
> > > +           char *sys1;
> > > +           char *sys2;
> > >             char *event;
> > >     } tracepoint_name;
> > >     struct parse_events_array array;
> > > @@ -425,9 +426,19 @@ tracepoint_name opt_event_config
> > >     if (error)
> > >             error->idx = @1.first_column;
> > >
> > > -   if (parse_events_add_tracepoint(list, &parse_state->idx, $1.sys, $1.event,
> > > -                                   error, $2))
> > > -           return -1;
> > > +        if ($1.sys2) {
> > > +           char sys_name[128];
> > > +           snprintf(&sys_name, sizeof(sys_name), "%s-%s",
> > > +                   $1.sys1, $1.sys2);
> > > +           if (parse_events_add_tracepoint(list, &parse_state->idx,
> > > +                                           sys_name, $1.event,
> > > +                                           error, $2))
> > > +                   return -1;
> > > +        } else
> > > +           if (parse_events_add_tracepoint(list, &parse_state->idx,
> > > +                                           $1.sys1, $1.event,
> > > +                                           error, $2))
> > > +                   return -1;
> >
> > nice catch, please enclose all multiline condition legs with {}
> >
> > other than that
> >
> > Acked-by: Jiri Olsa <jolsa@kernel.org>
>
> Ian, this one isn't applying to my perf/core branch, can you please
> address Jiri's comment and resubmit?
>
> - arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfUB-FddKaKOCYfU2Zu%2BAX88U9dFFmZ4Fdv146vKvQSr1g%40mail.gmail.com.
