Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBONIVXZQKGQE2SMRX5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id B95201843E4
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 10:36:58 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x189sf5918490pfd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 02:36:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584092217; cv=pass;
        d=google.com; s=arc-20160816;
        b=KWk9qyZFY3+1OTjK89zGFXndEVJE9AwpLaJ0BhWn7wP64y6/O1UaBCBhfztuW0DST3
         Qjgvaq1rf1/IX6DOSgFdwdHZsMdTWvOCM5Tjz0EHmJ8jpjQEGqScpxCZW0b2pqOuZDVp
         qo8l1hWdnbyKsZ/R6lx3C8Wf/ZOUA9tyisbpXZMWDMYapCBwN8/eYUimFvOWpKhQIxee
         6gwo/4cs6NWS3D15QgI9qp3cBzZKqi04Xw+//FXY62lE+yGEB6YtC6f/z6D8xX7rmU7g
         tBtZbubTflHR0lhDx9sNp342UffSEi2276a3pbii0WRzURxvOvQLNRxj+snJvbTXKkrk
         spCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rnXIlaEKnlUXsAhseIPB8ashjy8unzrBY2p/74GmIKY=;
        b=QedPISadATEF34b5GD1gYnqAJRKlmNASJKgaELakH4XMUzbKoAcBguGOJaiAOkL7O5
         Ua8UdRZw+NBfXp58XT578gYzOhN8eGCcENIt5V4y9bNCTvZN3RmULYatIR7nICIrJYe2
         Zrxy+j42j8Ar6T6+ui2EFHmRw3Ff1V22r6vXdX2ffFLma8ifPVRTxU6cJwxPJCrQm1J+
         dnVXaWCAWEmYx8jq7cc/qnAWuQfQCcUIAZ5/c0rQy6uH1dWKpc8mKpEtSLS6UQrrFRI8
         D275gr5+lDZslk7b8iCFYqxFDaPw80vDJaRBMFgV2pAw5myEtci6YcXoowXB7GV7UmVt
         qhcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HRMm81ke;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rnXIlaEKnlUXsAhseIPB8ashjy8unzrBY2p/74GmIKY=;
        b=iAIL/QrUZRQha8hrbwtqoVviLUnfmwy/9ohroGHpIdhIzfO9OypTSqnm2Cg+ZvOOtu
         bBNHezsPSlNN/1+yl2WS4U3mJNpfoW+AiQjRf8AaIv20UbfkDapvYk3AwUZPA4FQDcYt
         21icwhjhdt8QH2tOaX9o29xlT5V1RS5yuwRJaTGcDbPpLcZejxC+B5s5m2AV3ZO/U8gn
         CZ86X1a5KeA70f1JADFAfwYFk4zJcU0K6UWyoYeDKd3iWfC8IXaXDo1pC8ApHMv8CeL/
         qXRn/vAQOwymxDeUKKCM3T6YQOYvFe63hrhnrHKcwcgxiS4HQk1z8SQltq0OAwQjHGxj
         880w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rnXIlaEKnlUXsAhseIPB8ashjy8unzrBY2p/74GmIKY=;
        b=dX7KXBI9cN8AiFL9e460sxLl6z+qIvSMolr4yCYNwTarvo/tkns70dZaZUNwLyypWq
         AFGwWcGrxM4SeSzULmLWoM1E5Vu2VpIcxp3E3AeCLuvNilHTWDd/FUydLIkFZAzYHRZO
         loFauvV6ox6Y2LPpnNMfJw6kUcg2H6rGg1kcidMmJnBPWxkdcP7pj0rne8qA20gbtjJb
         FjTKNauHH2hX0tPc1zwvSvi+8LTPX8DfeIh8jMW7fb/5XRBIhGAt22k8SV6SX626iz0E
         JqKdK70pDpEO1NEjQvEo5fgNo9uzju+u4WcJprNMWOhXrhfOrbqrnyb37uON1fN0gx8c
         vbgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ11KpASxKvDdBS3ZTwbxbNJOAqQPPk0m3zb0PU9W2xAqV8pd4nF
	JcaS9R5O8gch/9T4zdqKtSY=
X-Google-Smtp-Source: ADFU+vshcuv/PEkxgmIuZ7WKr1wgLI8j6C1wWbKJoR3gEqTTFjI1ySnlQeGDwv78IkrYawdbf5CqBg==
X-Received: by 2002:a17:902:9b8b:: with SMTP id y11mr12829161plp.189.1584092217211;
        Fri, 13 Mar 2020 02:36:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3851:: with SMTP id nl17ls939036pjb.1.canary-gmail;
 Fri, 13 Mar 2020 02:36:56 -0700 (PDT)
X-Received: by 2002:a17:90a:264f:: with SMTP id l73mr8597632pje.92.1584092216727;
        Fri, 13 Mar 2020 02:36:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584092216; cv=none;
        d=google.com; s=arc-20160816;
        b=UU+yVfHYsuj3swKB1yuWIeUAtB2GCenYyIF3Zz4Mp4mz9lIM01JF6/QKj3X6hnh9J1
         MmFMPSWptn+kiqITKV18fKQHnN6jAM+HIb0G3l3pOgs/xaziENeA5Xx7XNoanOHu7nYA
         Szx8CaenZEM3pmqjNrGatvF1qAzrIkKiVtAefmM/nCmqI7OpfeY6gIIe1ZSk5EvZUGTh
         5TofzE3yPu35LzmEvNS8mcCgRUTjV0Ujq0QhurXTPq36wf9/lMspMzl3mHVAQu5YCgej
         cOkiP7KYdMJFfyX1QQu8cEfAow+0rxzxWD0TSVb5r83Uk5ghmeoihWNr/mVEGdzgUcQj
         i1Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/YVL5fqwYvvQ09XsGkNDNlhdUIVPU2+BvIMWamHoRn0=;
        b=yHa+842CiElIA7BxN4FVTLvE1SRG3xmCVRCuLPv2boZnK4+X6Lyg2bZDqEGTWt6imJ
         4J/fMmL2KCEtAPYglT+gIC1d/suU4hzGVa00gBJ8bRDjaSpe06yV7jdXwBBYFVtTPRBx
         6TSTp+mcI+TTVM5XXeV9Ei88Zc5QpmXTk7YfnK7RhWnt8LofRfvnDLiwWjbtTriaSRyc
         ysMY5OAL7IB2e2uyWuYRpeBQIt/+kHWpN/nDCPdfBcsW955U9tefmnvTgTQGMFATieic
         +mjbynfVbijRIwbxuKZ+LaTxzawsNg97rpqR7yJm2g8fn8s/8Bs1VZioWxuik0dP9Dcw
         UGhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HRMm81ke;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id b10si487499pfo.6.2020.03.13.02.36.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 02:36:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-7q_MAR4gOG6R0lSNhVBwzw-1; Fri, 13 Mar 2020 05:36:51 -0400
X-MC-Unique: 7q_MAR4gOG6R0lSNhVBwzw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B57613F6;
	Fri, 13 Mar 2020 09:36:50 +0000 (UTC)
Received: from krava (ovpn-205-229.brq.redhat.com [10.40.205.229])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C1AF60E3E;
	Fri, 13 Mar 2020 09:36:44 +0000 (UTC)
Date: Fri, 13 Mar 2020 10:36:39 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH] perf tools: give synthetic mmap events an inode
 generation
Message-ID: <20200313093639.GA389625@krava>
References: <20200313053129.131264-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313053129.131264-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HRMm81ke;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Thu, Mar 12, 2020 at 10:31:29PM -0700, Ian Rogers wrote:

SNIP

> 
> SUMMARY: MemorySanitizer: use-of-uninitialized-value tools/perf/util/dsos.c:23:6 in __dso_id__cmp
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/synthetic-events.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/tools/perf/util/synthetic-events.c b/tools/perf/util/synthetic-events.c
> index dd3e6f43fb86..5fddb64ec8c7 100644
> --- a/tools/perf/util/synthetic-events.c
> +++ b/tools/perf/util/synthetic-events.c
> @@ -345,6 +345,7 @@ int perf_event__synthesize_mmap_events(struct perf_tool *tool,
>  			continue;
>  
>  		event->mmap2.ino = (u64)ino;
> +                event->mmap2.ino_generation = 0;

please use tabs for indent, other than that

Acked-by: iri Olsa <jolsa@kernel.org>

thanks,
jirka

>  
>  		/*
>  		 * Just like the kernel, see __perf_event_mmap in kernel/perf_event.c
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313093639.GA389625%40krava.
