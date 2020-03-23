Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB65N4LZQKGQEKOC5JMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B7318F349
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:01:16 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id s10sf9998476oie.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 04:01:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584961275; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPMIn4FoXEXq/L5YHvnAzAu4U2Op6AYTTFXGr7AbrjkIaC4fuXdMWmORtw2cYuYWgb
         GY/xXnyQXCeFb5W/UVSVJ/u2sZXmmJDzb2xT3tTvPx187UFwg9fn/IWq+TednjvcuOX0
         LvyOo5qAwaHg8cm2Wc80ODrFdmcQYaaDklcUBrsrizsxSgDrlAM8IyEDYdNiJEO7ProZ
         9RSwhx09ioIdYA+V/7LBMsBdsYT5OX1F87oYiKhnoa2muPGGr91FvdwIdJJ/yK+qJ/8Q
         cnN2M1I0ePgpk9Rr8JFAU1wDR51w06XPTRvXis8Yq+eI/SGpQctJ9fxoHAF1I5rSyLM7
         4AOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=01MMwd64fx7q1brzGVly7EZqPuV0kr4WHx9KBX8I61Q=;
        b=tnzda2a5cFq/iBs1TYezFbk8TKdGO4rymMajoHOSHkuCAH3msb2Ako2CxoGDQwcY7I
         hpPIWkvdzD/5ZCrDZzJ+NF5jQgeWU0xdUvLlQoueb3uM87nhEe80ZZawb5blcsazpyzz
         lhBvs2dVmRq0DSgWqYuZZbRm3xcTaHzwo9eXNw4mMQ1MxUjMR8cT3wvg3KoKjbriuodW
         Kcks6r1oRLUBScEpe150kDWDU8Q/YDcVb6OxJgutG9GRHg45KSBfiTfYpw589mDbmRnI
         yQ5Q2GZIwOwDBVpXQe/XCkGLcttn3+al2iUIhsQZFSEOiWiBB6CaSPK637D57c6wnsHJ
         JeOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AQtK4jQ6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=01MMwd64fx7q1brzGVly7EZqPuV0kr4WHx9KBX8I61Q=;
        b=QYOboNQFdV4kUAFjQ3F2NU1Xx4q47Qk4DI6px3k9A9VoMjUL2Plp5EIHnyyxyz+hGH
         iJloIi2n4c+I1HOa2SSjnIMXiA3zrVQ/sojMOOIWVeAIREmKbR0bjAGxoAEabzb8/KIb
         aDadEFGQZ9Wf0/8tuddQfbpQH2/IdBxRtzJ4Z/BhCd9pnl3qDzaOhMEl48AJ+ILatG78
         bWG34cLD1sDvC14VLSEPwvrNXoC1jctQpVPQ3vfJdPc1Pwqo1R7RY4cWad1jfrLmB6qY
         2BbHomDWp70tueF7ZSsFdUbryMui7SMLQ7tYiKoSwYXQpPULaMQj+jsYOdcMw4SoFTEw
         GSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=01MMwd64fx7q1brzGVly7EZqPuV0kr4WHx9KBX8I61Q=;
        b=SUEWCTbUf7ZZZ2V6N2t6c5qFUMMLB9p/Q2N1VFOqQ8KghwaJVfOq9vq4KVzVFVVN3y
         FHGrceHEFESnEVk9Pi0HxEpJ1hSnRj/iRYTvIotn8Cl3KlK3Pl2hMqbvnVuYj/Te6h2b
         kjCYLn5ooXu2yg76vUi5kvjwxYQJ6bjhDu8J4dk+kc+tm9tBHwnWBI8aJfsb4GrzAnJS
         Nb1A/ayMa94dg2F/Ek+aSYnaL66jJonkkSTbEb2x7ek0wgr5Yn3TBAled9oSfBqva9YZ
         DQYP84wz0M4AvwthqhYLm7u2SkKb/50RTmdCdl9d3Ge9YkTDPm8w6vjTNXjP1iYKMjnR
         FOhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2S4jVxPne9gwBAusxQoPjvSIsSLZqrVc/Vakas0qS/R5S7PXhG
	Su236AWCVs4hSJELezI0txM=
X-Google-Smtp-Source: ADFU+vvwIgLLVCbwnexhEvi+6dPuHPOs+Foc1Rmrnqm1dZHAqxpZwUe9eOgzI2SzhzuYUPkTccdCPg==
X-Received: by 2002:a9d:3d65:: with SMTP id a92mr16365803otc.326.1584961275385;
        Mon, 23 Mar 2020 04:01:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls60806oib.11.gmail; Mon, 23 Mar
 2020 04:01:15 -0700 (PDT)
X-Received: by 2002:aca:dc45:: with SMTP id t66mr17044207oig.39.1584961275056;
        Mon, 23 Mar 2020 04:01:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584961275; cv=none;
        d=google.com; s=arc-20160816;
        b=0wU1sS8Io0m/x1c9xHj3s6eYbx+Dekzri+8FsWOpFsOGxc9dbVZDPGahU2LgKIzKqg
         j+VFcHtrjjFMTqI4jonC0x+7QMtqx0LuH0UkS9fz371RoAoYBw13y5ACYrK28Ax6Yz47
         tFNbYX06Y4zPvlXbtYZM43xpP9O7C7FQl/nTZ1Fah18eSsVioDM2FQc18hExOQ/hH20D
         MnJJSfudaUa1vTGAfHZaZxG2ar5qhuxVmH8pQnEL3QSMHA9IZn7sz08VoMyQKLFWsmuf
         unQ30Ri5MK+N+8XpO6fvS539ngQR9Zqen3pVaULYDRGGMOkEnzVLjuGZp8SD93MgBUDQ
         wUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UhvE5SsATsLb9aEaVavJjTl1Si3A9wCeislY3orrWOU=;
        b=jwdFj1qBvJJbnHnV3Y1OlYUjvBMOQfI5+jdNyACfWRz/FfoF0U5y7WGrCrhz846l/3
         juSfHgqxH7YNTGdJXLjgm5US2jDyB6c5+YJQ4pbOP++mfulAf1Zd5M43zOrQAG0FIZx7
         g2U5ap9ps2mLJMDbH0lKQu4sX42iMnbx0+xtlX2d7epUiTPz9xrjCi2JelBnhfyWz1Uh
         HhJ5WVKL3DHoe0U7WhovyMhx2sMg84a5F0h0vvgAKAlJrc4qbpniCwsX1PSlBxB2fOYE
         HIJy3pcgWMfFx/KZzNMEIDSkPGgdZElChYfNs5hyyael0FznB/eImlHpV+rojYYr51+U
         Dmig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AQtK4jQ6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id d22si351286oti.1.2020.03.23.04.01.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-u1LTdQP9O6SPU5UtK40M-g-1; Mon, 23 Mar 2020 07:01:09 -0400
X-MC-Unique: u1LTdQP9O6SPU5UtK40M-g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C71D4DB63;
	Mon, 23 Mar 2020 11:01:07 +0000 (UTC)
Received: from krava (unknown [10.40.192.119])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1651B5DA7B;
	Mon, 23 Mar 2020 11:01:04 +0000 (UTC)
Date: Mon, 23 Mar 2020 12:01:02 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 2/2] libperf evlist: fix memory leaks
Message-ID: <20200323110102.GF1534489@krava>
References: <20200319023101.82458-1-irogers@google.com>
 <20200319023101.82458-2-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319023101.82458-2-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AQtK4jQ6;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.74 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Mar 18, 2020 at 07:31:01PM -0700, Ian Rogers wrote:
> Memory leaks found by applying LLVM's libfuzzer on the tools/perf
> parse_events function.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Arnaldo,
could you plz pull first:
  https://lore.kernel.org/lkml/1583665157-349023-1-git-send-email-zhe.he@windriver.com/

and then merge in this one? 

thanks,
jirka

Acked-by: Jiri Olsa <jolsa@redhat.com>

> ---
>  tools/lib/perf/evlist.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/tools/lib/perf/evlist.c b/tools/lib/perf/evlist.c
> index 5b9f2ca50591..6485d1438f75 100644
> --- a/tools/lib/perf/evlist.c
> +++ b/tools/lib/perf/evlist.c
> @@ -125,8 +125,10 @@ static void perf_evlist__purge(struct perf_evlist *evlist)
>  void perf_evlist__exit(struct perf_evlist *evlist)
>  {
>  	perf_cpu_map__put(evlist->cpus);
> +	perf_cpu_map__put(evlist->all_cpus);
>  	perf_thread_map__put(evlist->threads);
>  	evlist->cpus = NULL;
> +	evlist->all_cpus = NULL;
>  	evlist->threads = NULL;
>  	fdarray__exit(&evlist->pollfd);
>  }
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323110102.GF1534489%40krava.
