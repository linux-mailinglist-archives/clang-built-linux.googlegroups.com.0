Return-Path: <clang-built-linux+bncBDEPBSN75UNRBW5SRPXAKGQEQER4TKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3E3F18A9
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:31:56 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id q20sf5099581pgj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:31:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050715; cv=pass;
        d=google.com; s=arc-20160816;
        b=GWc4qIRiUonsmu7opOMH2+KTPG92NCp5aUQOZbFFTxT4hC+X5tR52zpRfe3GXLu6Ed
         zXhJYBPe6+vgzEMWlb+q3WWmRu3q4CfbMLVazURnVGfFnurpATw7eLWwFkrsHCG8tI2q
         42NCC0lB9rk16fv3D1NIN+gmjkG/7O3mBFqEsYwAvlP+XCril5F08rh9x0mpOaYxVN33
         hBGJVA2dcZ9YWn6widCpgYf+KKf0Ye7Iw5PjH0ZGXplW97ufeN8+60mnXtc+HkARXIey
         /7HU6VcCrcX8c9T80jJGchBG3xc4yL3UhpC6RZ985j8+MpiXFZMlrjmEfDhzWV0hkpDb
         haMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=VeRJ7VkX7cTuVJuUK9Ry32WL/jehsPduMqM+JIFVfD4=;
        b=jPDe448iCf6QdL5/pADpMHhmGXGjajKFYDQJtqHH7Zvl7MRWa2mgIr8mzj0217wbDv
         yrZTQgQ5vifxQHpklZZBh2UI+nO8eX/DTl16hoCRV9z0Q1joCpfRUVGUE59zrKBPu7TP
         FJH4lj6H03jMP3B9g5LoKdYGDrvS+8FFA4dXPNiK83AxA36LoZ7EnhRQRn5CwKgP3eSA
         3znXoL0jOW9a6/TQvBHjKT5JUyINi8PuNUNrHVElorE6QWy8f1WWl55z/PYEAQv8Snoo
         tXkCaxNoouON0ROvuNnPUn4Rmep1KCyeFSLYyHRn/1Wc585DV7gOkXxBmRld44gWvm8Y
         TC/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkpwWNqz;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VeRJ7VkX7cTuVJuUK9Ry32WL/jehsPduMqM+JIFVfD4=;
        b=Mvvldc2H4qndtLnVu51BbUVQ+lpelQTkjt2hY+vUW7USlj05jEZXHhJmighdI4vUd9
         25wVZiygIaWyvkhmgvSSmj93YkmC4u0EY4HIeCjh6DLlWU8fyMqxy561vycZj4EG7NYK
         T9tRMzAgNIsoj9eEHfRhhOqe2O39g4CYSGCrvEn6tkUyloqCr/YwSYqy1HOOx3d4DNJ+
         BWT1tfU0McEEjkIKOgPZsKNIyRpzxDjFly+m7I4SkdH8JWk/HSW/p/bEYiPxJ5/+V1DV
         OZvQDCtTdtaKk6MX2zT8r0buoGBU8NLonI8kw/3SjSFZOQgIhV3sw0MaC5YmEtB+JGuT
         dXQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VeRJ7VkX7cTuVJuUK9Ry32WL/jehsPduMqM+JIFVfD4=;
        b=OyvFoubR6+0hfo77Tl/iU/WdS9sU163DAhtEnMdQ+oL+v3i5WgnbFy1bVWLwmnEhGI
         2r/eYDbq82qjR12bVjaWzcQ3tFnKdIP3qYBh+6C1KEwKmQvelEwJbgkPAYoZdRMhjURf
         lHc2IRFeGHqk454uXm1ZYjs3fidtzhyI9wQVNxA4X+PMQtS1G5BfkX+RPlIjnT+2Yi1p
         1FUSNT/NzfI56QInOfOCZpojU5EqIHUnNDi645vgEcu7ziLznZcaUTgDNcawixKSsK7c
         aKOeKcSYH2lvAERumoYhVNevTZgF8RBMOY9oeZBDpF7f8BtczUlHMIs6qEj6omB9rDOV
         DKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VeRJ7VkX7cTuVJuUK9Ry32WL/jehsPduMqM+JIFVfD4=;
        b=D89wq+B6n6hXl6k2ZeI4+r+tcLaiTNJ72RCUAD0JwBPXLyp61ERqhe9HyEliOEpJqB
         LQSjLuGb2FpkPlUNVVN/JwAPJSUPobm78HgRy9+RYCdUUFUbY6f5sT1L4thhH8y+8KOa
         njiDaClhN2xZZ9G2aEsxBO0WsVWpSfqQCaxjBeH5TdiTHhsxRZdDhw5dY1eB75MWAML5
         6oX/WR6YCBUt3coXSGH6oGf24RqFYFRQEXYSKattEbPsAhibnS25sLgbXFUB88T7+Dhn
         o8l0avpQiLlYpmUA7R5t/bFNhdqpUVQWNx0nFBf2DlWEekrWArUg6cYgQSgQ7l/g4CiM
         P/yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCxXGaijnibEacXVB3XyeZunFyGr/c37Dt2qMXk6VSUBDrPvEl
	4tfgnhrwQOdtBb53JmZDurE=
X-Google-Smtp-Source: APXvYqzLWTz79R6KWvz93R2qm4gsqS9rsiGXMekfvAWu2kxUqIw48xVF/Xe2bLJ/ImU0jJjbAFaKBg==
X-Received: by 2002:a63:2225:: with SMTP id i37mr3289858pgi.62.1573050715284;
        Wed, 06 Nov 2019 06:31:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e517:: with SMTP id n23ls655221pff.5.gmail; Wed, 06 Nov
 2019 06:31:54 -0800 (PST)
X-Received: by 2002:a63:471b:: with SMTP id u27mr3147913pga.96.1573050714810;
        Wed, 06 Nov 2019 06:31:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050714; cv=none;
        d=google.com; s=arc-20160816;
        b=xJrYVApF+lHn5SvTjtPbGj6F4inyKHSVgZwi86XdTT4+7GCXuv+exshXV42HvJr19H
         ZFzUEV8RvfbqSErTAAoAhBvIRCwv1W5Rj7t5TZDS3yzCShmMeVQUTxkxiUmGKkuoMfZ0
         wCPu9pG1tea4r8ioCBPIXV7Asixa97O7j9q+SCuq17l4WA84zAQu7GLaLebXaC0EfCdw
         noW47dIFB23Yo2s6awpD2ySdjQZBPvJ92pw84Ef0QCz1sIglwtM/2tekW618HxGbERTZ
         bXBnZ9geHjwyLPehaiexs2mP02OpW0BJXMK7EqgB++SLjcuK59HG6HUlGzUTGSxXrfkI
         poMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=JggrbZPVaiVzXbq+DGZI87bNjE++01il9vOKZ8JWpJ0=;
        b=w5mYk9u0dfWl4kIov2JLWC4mdiJFX5tm53jKtc8C4C5gmp/cZ7if2g8IkXkD42N/tW
         2vzE4v31ihPorSCB/2chHyZjHjwIRPQIDhhg4RGPbLczs9JPEIapHit3k4EJwZA1gnOn
         +OWT+A5Gi4BAak/5dBT1QkO2YfGQxaGQXOxSG4KDOHC7/lL2KjXU0d1n3OSXzyJUd9DZ
         6IHk4+SRkRhYqQ4K3D+ZjU0l7AjYbHIWW5iYjZ0Zod5Jjw3q4BseBet8a0TQObr7atku
         v/1g2wyVFYKs7zq8x5bsOcEEDmkdN6VanWWfon45KC0gY8FcSRqs4TAxynNSOWUJvzF5
         xB+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mkpwWNqz;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id q196si1339687pfc.0.2019.11.06.06.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:31:54 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id o11so28835867qtr.11
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:31:54 -0800 (PST)
X-Received: by 2002:ac8:31c1:: with SMTP id i1mr2652197qte.197.1573050713934;
        Wed, 06 Nov 2019 06:31:53 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id q3sm12827090qkf.18.2019.11.06.06.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:31:53 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 5EB2940B1D; Wed,  6 Nov 2019 11:31:51 -0300 (-03)
Date: Wed, 6 Nov 2019 11:31:51 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v5 05/10] perf tools: ensure config and str in terms are
 unique
Message-ID: <20191106143151.GC6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-6-irogers@google.com>
 <20191106142503.GK30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106142503.GK30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mkpwWNqz;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
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

Em Wed, Nov 06, 2019 at 03:25:03PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:43PM -0700, Ian Rogers wrote:
> > Make it easier to release memory associated with parse event terms by
> > duplicating the string for the config name and ensuring the val string
> > is a duplicate.
> > 
> > Currently the parser may memory leak terms and this is addressed in a
> > later patch.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106143151.GC6259%40kernel.org.
