Return-Path: <clang-built-linux+bncBDEPBSN75UNRBM56YHZQKGQEEWHOEIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D06518792D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:25:08 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id z62sf13174645otb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:25:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584422707; cv=pass;
        d=google.com; s=arc-20160816;
        b=pSzPepubnL9atK0KIsBiKJ9oboY3hoYGZLKobfpfI17EsNUAVzukZsR+jnkZ5uWI3G
         qtPR3lIO4d0hgnMkEmMeAukb0MGcG8QM1qGES//j8O8muGuQRh89MFBZGKqW3TLjWViN
         EqBEQY4MMKYDs9H/jWmrPFXZLznjldDouCoL4AFKLiWy/ekmvPIoOnNAuDZMTnIR8n4l
         AV+aRWVZzhumRhjY9mFzFsjrsMvVdZNEDdx9AZeTjTZ9f8xPs6T4MI3sdGwBwFGEZmDz
         QfgcAxxypoCQmMw6gznjKq02iHBeIUY2OEb5DKSjSPugxDvGHO4Jtx+fSmSlRuhU7rKc
         HQzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=UIZVmU71fKMPjOWDnG3DPDq9VNrjC7Mf436CO8GNHtA=;
        b=k4WpBzKL41C94Zm3WXe2LyIG91zJi4VmHqOE9XfA/cGDQjyyrfIJFsdO8JLzu2jo9r
         BFzM8VV1QSZXBMGi0MU4c2vOBzOxhHeqR9+ffdevkWaGUSTqj8AJEHAT6RoWPRXe1+5j
         OGq92o9880s6qr71L8/lKBaRuh2zIHiSMwO0UVrA7sQYCDZjLKgZo9tG/DRw7YyD9JGq
         GpEAp4shXaHaNAdDSA6e1+94V9FRaz0WxoXjwMI+mMUHzbbGmKjnvcaXw6/RS6r7CGhh
         JYzWWJuz/YaLvro1xKYx9Sy3cRVWNyhCqeHL0S4phOBeh3OrCon3Z2AOzZmazOQZzlzx
         txJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MvK/Xx4f";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UIZVmU71fKMPjOWDnG3DPDq9VNrjC7Mf436CO8GNHtA=;
        b=rR+yHzxaRj5cbQ2pXAJSHP81cMlj2px5wDFsPsDaKMPM56MLUFj0zJdrsj+SYDn0Fy
         EJZa4yLWSyBcqIhYyiJnrj7331r7yfFE3uJFwuJCSSqXmrEvHFmUQLQbu585DsPH2I2v
         p2FtU66krixTO9/kO1XzAr+6lKF3jbdY2oXhPq/OzMWYB3eZ1scqIWo7P1xahd07RV6L
         qBs/Rj4oywHOfYqmQygQVdmyreZNDlYMAkmTxqKDTHeR+0eO8Qsa54ULIHMRanOm8s31
         yL4ETQaS20ynk4YyVzP+eMfANes1wQAv84fVkptrr/OorbpyGX8A/UO+jxlDGTyNnwng
         /O8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UIZVmU71fKMPjOWDnG3DPDq9VNrjC7Mf436CO8GNHtA=;
        b=BSJmLe7/i1YNu42IL2wx/YlMXHNvV7T8TxxBqHbwRAypCCRbNA2Y1tg3s++Gp/unt4
         k0SkH/UvQG1DL031x7YJra9KoJBfpua/xizZCwOG51VGWWLlIwVsffdMKVn0UBTYn9Gi
         XubO/s9kBC5gKnxlrYUUC2teGgNJ9Q4r7mkD2YN1o3L1dtpg4A6mWb4cT5hy1Kq1qtOO
         Ocnrcm43OLnMI0BiGTKeUoxFO8S5N7/gotvIzNUIuY1YdDv/4LPgzhM6ZNfzrpydXkSC
         OvhFm8onTKN7OAzclGKuggB0bRuKMkzcjc7PGLz1QfZPZ9/MVaNjwB+Y8jTmB6SD1bFC
         nJSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UIZVmU71fKMPjOWDnG3DPDq9VNrjC7Mf436CO8GNHtA=;
        b=ll21INIJqmUEUS3jo2liZZfCYdNlKwsrCZytsfQhqKfl4ukvr4wgLx7+sPT8kgIc4b
         +05IUO0acaOikNhxThuYT/v0Bie0dyhf7hOcUq/xJL6xPtsAzwI4pDmjUU0d1c7vnyHW
         OgnqK/p7MHOx4C/T9AKUAiLAXGkWLVrvKgWvPeZ1ZUj3gW6diDhuUEku0+W8GIaG5GZC
         13Obm2tZE6yA53DNfUKAtWDHZo+6DD2+VysxoajfJ5fo+K9ZeT5729Vwk5YXdMgTV+vi
         P0FXyXmLehE9zGTrkwdFncDiwPk91zApiuSZAgXcChXHMz80JcP8JXo/T87rVaEF/un+
         i32Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1wZYOitYMhRALgRK4lQgOEOw4W5BEad4J8uLgZSwOGNYXfgEW6
	a4qhiTugfHedKDmw1OT1RP8=
X-Google-Smtp-Source: ADFU+vvTvXjE0zlrmyUs56f/mM6KgBO1NFLIz4Nw7yCZzKyBuilgeAXyWxSbzbWAvNlScgICmedJDQ==
X-Received: by 2002:a9d:837:: with SMTP id 52mr2225234oty.354.1584422707574;
        Mon, 16 Mar 2020 22:25:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6759:: with SMTP id w25ls7119169otm.10.gmail; Mon, 16
 Mar 2020 22:25:07 -0700 (PDT)
X-Received: by 2002:a9d:66d5:: with SMTP id t21mr2287584otm.284.1584422707297;
        Mon, 16 Mar 2020 22:25:07 -0700 (PDT)
Received: by 2002:aca:ccc9:0:0:0:0:0 with SMTP id c192msoig;
        Fri, 13 Mar 2020 11:46:13 -0700 (PDT)
X-Received: by 2002:aca:d50f:: with SMTP id m15mr7283535oig.19.1584125173701;
        Fri, 13 Mar 2020 11:46:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584125173; cv=none;
        d=google.com; s=arc-20160816;
        b=eUnLrGZX/k33x5Y6Y+lMC48NElZ+WFdqsH/3PkYoJvW9EJnJNmoihxKau3vS2XU0+I
         qFRirln46fgVTjcBtH6UUYF07vlNPM1WTxbd4u+O2L1jJJnCLoGL1+mmsXJKRF9ihdcu
         GNXmuDwU3r3PVeweXNIedOIfPwA+/0TnQJqZkwiufovaD2oFi1X1q6IFAzsLZ+uofD2/
         IjylOwlgvFx1pJXjg/xFx2z3jDwJERv1uLkBxKMJ3+7CT043iJL/GfEl8Qk8UuinIMkd
         tPRPxSOC21n5BNXFxtpmciAfpMvfsuopVB01+ELnVSax9ZkMqzgFOizj6nvWqGBaO4Iy
         kMog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=eHmI1zJjsn+RyxJ173WIfEHfpucuAGOsedaISLkubgc=;
        b=aZaIN7H+UvEOF3KG/QN5Qx4zvcnpXnISgigyYLjub5tceWKXPBdeqhp+uiQuZ5YS3Y
         ihT0pvrUSJNT+Nequ0WWu+oyzIfBn5PqdtkBjdcUWQNy+Y3Ulx4TLgYIeh+Mm1oKM0wt
         mv+kSR3UQGajgUQauGxfO5xDpt6a9TuXSJjYeilQhg/D+VGtdCBvmqyBLZqPtPid64U6
         smGVKQ8Li/6WOTKO96YK2q73LnFgRBK/yn9j9iPGI7ivXpaUwZJ50aHivFC3/ucyuDiK
         Z87fFOFGTrEInZF2qaR6TqYCNrHs0Chs7F6rwyrjSfYKWf/4BsJbIdXXSCLTfd1dFtUF
         CGQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MvK/Xx4f";
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id x23si548834oif.2.2020.03.13.11.46.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:46:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id f28so14271590qkk.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 11:46:13 -0700 (PDT)
X-Received: by 2002:a37:4fd2:: with SMTP id d201mr14801414qkb.190.1584125173201;
        Fri, 13 Mar 2020 11:46:13 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([190.15.121.82])
        by smtp.gmail.com with ESMTPSA id b10sm9070941qto.60.2020.03.13.11.46.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 11:46:12 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id D7B4C40009; Fri, 13 Mar 2020 15:46:05 -0300 (-03)
Date: Fri, 13 Mar 2020 15:46:05 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: give synthetic mmap events an inode
 generation
Message-ID: <20200313184605.GB9917@kernel.org>
References: <20200313053129.131264-1-irogers@google.com>
 <20200313093639.GA389625@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313093639.GA389625@krava>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="MvK/Xx4f";       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Fri, Mar 13, 2020 at 10:36:39AM +0100, Jiri Olsa escreveu:
> On Thu, Mar 12, 2020 at 10:31:29PM -0700, Ian Rogers wrote:
> 
> SNIP
> 
> > 
> > SUMMARY: MemorySanitizer: use-of-uninitialized-value tools/perf/util/dsos.c:23:6 in __dso_id__cmp
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/synthetic-events.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/tools/perf/util/synthetic-events.c b/tools/perf/util/synthetic-events.c
> > index dd3e6f43fb86..5fddb64ec8c7 100644
> > --- a/tools/perf/util/synthetic-events.c
> > +++ b/tools/perf/util/synthetic-events.c
> > @@ -345,6 +345,7 @@ int perf_event__synthesize_mmap_events(struct perf_tool *tool,
> >  			continue;
> >  
> >  		event->mmap2.ino = (u64)ino;
> > +                event->mmap2.ino_generation = 0;
> 
> please use tabs for indent, other than that

I fixed that.
 
> Acked-by: iri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo
 
> thanks,
> jirka
> 
> >  
> >  		/*
> >  		 * Just like the kernel, see __perf_event_mmap in kernel/perf_event.c
> > -- 
> > 2.25.1.481.gfbce0eb801-goog
> > 
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313184605.GB9917%40kernel.org.
