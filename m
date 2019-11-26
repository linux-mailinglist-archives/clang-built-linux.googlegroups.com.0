Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBR636PXAKGQE53Y3B5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB36109AFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 10:18:00 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id n18sf376861wmi.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 01:18:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574759879; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlAPUAIbimLDWGG/24ekU45UhxZZvlqyXarxtB7c6kB4+nLNDKfyYPZX3ewpd65Lck
         MFrieChziK3YPQJGYxkt8jYwNJVTNmh95yl1iVa0AnGV54xTf9dId0/pQGYlDRalvlDC
         L9pJ4OHSCHhoyT+cFN9eFe7bSCo6hdyO+6CKVpb8I1KNTJ2iiERRLReX0LkQZIBEHoSs
         jDBMALx3Q2FVDjswEEqKhi/qlQNdOCvWuGmC/K21BvGqxCcdIb/ZpNTT9bwtoHyHAjLK
         Ef7z1uQ5xMlkZzPNGNza8G1oGFxpSX+ui/Go+QDoScd7xr56OyzDp8XzZzUE9UCbwX9L
         tKwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=aRRsSh5Xwi1VkqDIfCoVk7Z1oNOWq15+7sOYVOUF8GU=;
        b=v3Qkd4N0vMTumHZWGoDwfmLltQvldex8VVZ0BkEXpV+NxiuVSFz+mpRavnJhY085Kf
         uU6rztKUHUg9ezILijut+2A5k9HZOz1WAVn04HLTol/Cvg37kIm5sUIevW1KLTfgO3JZ
         x/DLjUnpLQYOS/kDz4lhAf3fW9cnkugTadyznuJ/ViXN0cw6UVk3oeNzJ4sYJe8teuW7
         UaYsmeGwmuwxJUg5R1CpvD2z9lT0k6bpQJ6v9EKmbiJdDyI3tEIo6iFLslI+6w1jeesi
         wRwaUZcAD5EaYYimpQOlc9eAwtJQq8ChxRgMzumB/45iTFLEb2M+A1p1p/twTYsmr9n3
         D95g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="WpRY/Oue";
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aRRsSh5Xwi1VkqDIfCoVk7Z1oNOWq15+7sOYVOUF8GU=;
        b=p5iyazDM8C2JUJ07J5cxwkOt1LbgPX3ETjPVb/RqPjSolG2SR+L7xO+PtADKsBX3if
         QREN6CNFDOEYzej0rCr8Cdui6BSDLuW89CUnaJZPRIRi9/2IYXM34i3s1vDxq3dxO9L5
         NZPK8Lz6kfnK1rRbpIp5T++WHZhlOY52qO535f6a9OeVv7NZ0mc4rpmixSqUjRfD71eQ
         czfzIdIlRn6wsm/Znu5XwintO0OhnLezx2hr0lYWn8u/qcqGO6NNWPThfYI7LwCbP0hg
         e2G0DXhC5eDle+I7IY2CvAcRhYnaEUcsnyRvYM9sikkoXB/BAqCguq2cMn7vEfvgG8hX
         fSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aRRsSh5Xwi1VkqDIfCoVk7Z1oNOWq15+7sOYVOUF8GU=;
        b=ne+e5uxfg5hZJlrqVpomxxLu5L4Lx+VzpMc30+vniKa60naxe/ii6XHLV9UtfroYUP
         gb7/D8kaE+RwcD7hcCAy4Y/GUcpu3gDTSkHM1LpnlFtvnvuMK0ylA/ZQdaLQUn42ztQ2
         wdetevg390eDw77So3G/rTJCgrUMPax+FAKH4BLp/7o4on0FsBfJUWq+lGrztDz01wNQ
         W9Xf8jSLkPtLv365/qN/ewS/Gr4TjOBK0qW0BbOfE7pkDUKRvIWSm8pScwKXf9Z7MQPh
         GNFphYWA08G5lQ/I0uDT70bDig5u4YBNKReZ/ytYVqSewliR/FBd/ImM/72ocKDc6Bu5
         lwYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1o8yOgVW5oTaRiwGW4Bqg4wppwAqGVhakLsdxcK1BPlrbrxhl
	ycnyR5n24XEIia3rQLoPrYk=
X-Google-Smtp-Source: APXvYqxHV60lvHLheBmBZrZEwhsOevg/JakqP1YuynnssBzoHnZCZCp/MTvLNGlOdOoECt4At8thKg==
X-Received: by 2002:adf:e389:: with SMTP id e9mr3679492wrm.285.1574759879690;
        Tue, 26 Nov 2019 01:17:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5446:: with SMTP id p6ls264392wmi.2.canary-gmail; Tue,
 26 Nov 2019 01:17:59 -0800 (PST)
X-Received: by 2002:a7b:cf26:: with SMTP id m6mr3191637wmg.17.1574759879085;
        Tue, 26 Nov 2019 01:17:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574759879; cv=none;
        d=google.com; s=arc-20160816;
        b=u+ErAwrLvCHIC5dat99RTzXBpv6zMECqrar3Y0gD8yGWJtFzRxVhnCANzLO371W+hK
         kFV2lIUIVCiyecGEhBWnTo5zGt/atB3X6zG6H5Afkj+MdkHCj8riCbMsWL7wq1rw+6Jc
         wqQ+BBO2dYERWLZAZZS06l2hZdsR0VfUX+nWwVnZA2PBtHj9+qMJRaFyGDCi1lmtRNgx
         K7N0JCJIW+hTpMtcd5AlA8Y+V2BvCZIWo8GQMxjdvfCDVUcxplSPcrlxDuHgnx7VzJ2u
         FhNpcFSRSGKfE5WYNj1j0hrFbDvJOWdd/hUqoe63lAwv0r4EXBBhHo3DAntXiFDHGpQ5
         1Ivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=acmtuqpCwRmzVm+0/ZLebQVZLAfDVu2Uv7iUsPGGz70=;
        b=J7qgf9PHDX5k6Q8pftMv4ZmOUv86pGDgP/6lMfgS8ZASGgRRZG52BnXJC7s7ytYXhv
         I7mPUQYqJDCPXP9qiV27+h7leVXYVy1YR/9ugFfnMkJlnOwTh1UZWUOHishz1snM8yKz
         vbEZbsNE3rXqBMKf7UD/lwKwsHyt8eKlNcMq/B4o8DBhlJCGmXfGJbTANePE6XMC07Dc
         5eksB5jaIGR5OyNwdMf6SCaC+0Md0eHSkmZuSJLaYvbJfTleYxNU0KTTdhxpepN3CzAY
         AcsAEuTz23wfrS6oE9Jeo0ESZ3DTIUOByoGlJhCWtIpL4lsmMpJwnH6geEQWLis1yOgV
         3mow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="WpRY/Oue";
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id u12si78272wmd.4.2019.11.26.01.17.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 01:17:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-395-sBo3jGggPjGrHsAXadaG6w-1; Tue, 26 Nov 2019 04:17:54 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9E57810071FA;
	Tue, 26 Nov 2019 09:17:52 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 246065D6BE;
	Tue, 26 Nov 2019 09:17:49 +0000 (UTC)
Date: Tue, 26 Nov 2019 10:17:49 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>,
	John Garry <john.garry@huawei.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: avoid segv in pmu_resolve_param_term
Message-ID: <20191126091749.GA32367@krava>
References: <20191125174136.95893-1-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191125174136.95893-1-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: sBo3jGggPjGrHsAXadaG6w-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="WpRY/Oue";
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Mon, Nov 25, 2019 at 09:41:35AM -0800, Ian Rogers wrote:
> PE_TERMS may set the config to NULL, avoid dereferencing this in
> pmu_resolve_param_term. Error detected by LLVM's libFuzzer.
> To reproduce the segv run:
> $ perf record -e 'm/event=?,time/' ls
> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/pmu.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index e8d348988026..1a6e36353407 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -988,13 +988,17 @@ static int pmu_resolve_param_term(struct parse_events_term *term,
>  	struct parse_events_term *t;
>  
>  	list_for_each_entry(t, head_terms, list) {
> -		if (t->type_val == PARSE_EVENTS__TERM_TYPE_NUM) {
> -			if (!strcmp(t->config, term->config)) {
> -				t->used = true;
> -				*value = t->val.num;
> -				return 0;
> -			}
> -		}
> +		if (t->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
> +			continue;
> +
> +		if (t->config == NULL && term->config != NULL)
> +			continue;

hum, I might be missing something but should above condition
be more like this?

		if (t->config == NULL || term->config == NULL)
			continue;

jirka

> +		else if (strcmp(t->config, term->config))
> +			continue;
> +
> +		t->used = true;
> +		*value = t->val.num;
> +		return 0;
>  	}
>  
>  	if (verbose > 0)
> -- 
> 2.24.0.432.g9d3f5f5b63-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126091749.GA32367%40krava.
