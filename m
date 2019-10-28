Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBDFR3XWQKGQEOFA5WGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FB1E7AF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 22:07:25 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id g131sf2094641oia.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 14:07:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572296844; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xyl5fZAlC29r+PQbSVG4Q/+UBrlWMYqdY48IvrRTSRUlL45DPEGy/oXmuVv0jN8HEj
         KmP+7xx7/hUXTm+oSEOu+keXUuZdeJKKnqyau4CU+a/6uUOoVWeS32t2hrl8oaFSHZdH
         B55nXLIzE6eoxo8gHioNWB6eVlbJAku0lsQX/cw6Ycfzw654xmvBXN5x3G0Iuo46pI8q
         ZnwS4GF2RnPYnbSBNWWhnX7NG2vR5ebIF6bCPm8eugcaisRe40V6vt6RC8mdnrifcYEB
         qndh4jtZkhaGPQd2e1Mzh5V3h4AltTYhtk19k8Vg8G7w3KcKdPQP2x2ajv/8o5QnFNey
         4y0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=igzf4B1TK6M3btPtITEoXHDNmFzXg5OZzBC3mftxhY8=;
        b=n6xByk9EZ5FbGLFeo+rGryrZWEpA2cPaNr/07sxSuivLyZ+5Kj1tewYhgpSANrJNja
         LkzrH4Qa5HXXUfY7Dbr14zaqMUCbcbItvi9YvyFPnuQaVk4QdH3DniV7jlBCOPc1is8K
         E1fXQ0G7BvN3RGOjKWzK/RRavndUfW9mPPqY2K1l2uJPqWJLTQuwlzAnkPUsFIaGHJrl
         SEnZNOfMcP3nDPhhC6xQ6gM8roIsWpr7iFKFiii1yFcmUqDQLmoIXOfZTLwq6kR/UfZ2
         1D2IXk/WQ7MbgtsnU5U6PGV3nuGDPh6aK8mJcdr+fWq3sLl4m59746DAKiFaXTTNFIvj
         B0rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NsYY3RCc;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=igzf4B1TK6M3btPtITEoXHDNmFzXg5OZzBC3mftxhY8=;
        b=lHHjEPBz+JQdR0pqUJhd8Vwvc9n/zCAnvCkSi5XPq4rUzP8Kn9rFnT4kua02RY0I87
         M5QsbdPuWsjSM72pHcm8jjwan4mNmXizTVDWJz9JURKPXz2989y4DpP8LyATkag3tuQ9
         6UoFmNIEm1/qVzbWpSVRc1c02ulWpa+YX/1NGO9gYKvgEmOLKL7S7g42kNRn9QgZYg0S
         9KIET6Mj1B55c/6q01XSB/R2po0ug/FelORxvSNPMqK4Ioovu9TmWuauqavkxCo3a5ko
         XiKDgmxrZFCKFajCI+46BIF7TmiKarAQdozYZIzTKFntJin9IKz93lo+tN+EnMmRFNAV
         BjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=igzf4B1TK6M3btPtITEoXHDNmFzXg5OZzBC3mftxhY8=;
        b=LI4wWMdiU2SYDfzZlB93yRwg3M/dH7XSTD4c0bRzJ6KOMoawlmESvMsMyPlF5nEmpZ
         F1WVawlqgtaYBKhZECrBThKs+bovrK0V5ewRXElgHxMyySc+B6SSRZfXAIazRqM+Of7Z
         8LdyNXVHY5uaKfkSl3BEgWPLniGT0Qn+Ss47yuX1xy+r7qPeQ0q8YKURKNVY5GVERMKO
         NOiSY0Bhqe/chmrt25J6H4k4fUCMmtot8KEhsvyoVSfj7FcHzA47sTlxgleFjw8OaeIF
         aGYGNGwgMV31TtmF3ECuBxzQW721X8G8y3+vMHUA7nqTHXTR89y7Z1ET/VuyajR+lDQ6
         nchQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcPY7XxxUjxbXqNUQrJ0ZjvNyDl6j8E+urVVMhntavN7k2JybK
	gGHn9QpdyRA6qeCbKAGO2eA=
X-Google-Smtp-Source: APXvYqy4siA6T530MqBEaoQ2M5i7IS1Ayw/D9sxs0rnZDC1Tvh4d7xNMiaXpWC/0QwwKfevOOIDIEA==
X-Received: by 2002:a9d:4d11:: with SMTP id n17mr6987551otf.134.1572296844526;
        Mon, 28 Oct 2019 14:07:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:a65:: with SMTP id 92ls508372otg.7.gmail; Mon, 28 Oct
 2019 14:07:24 -0700 (PDT)
X-Received: by 2002:a9d:4597:: with SMTP id x23mr15243246ote.199.1572296844096;
        Mon, 28 Oct 2019 14:07:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572296844; cv=none;
        d=google.com; s=arc-20160816;
        b=Dk3d0D3ReQuBiBgrk9Fp2nUUZ/zI7ZtbTUtBxyoTRl6gl+doarifbbel2veugyaFVH
         pjVmWAmypdUT0aEFOWMLymEKwd67wE/KK2nxLc51wRS6b+d2cWchUiial1FIf7/mblEl
         L1cRSR3V+8oZP3WAMrkOxc1xdQfI73G+x1X0euMMP8ejTAcryDzupPWcw+ZZu/QcgMs3
         tWVubupDVw811onHzgSh0vbkcstwoHbcGQR8i1JBXVhQp4s9kI1M6Stz/lk7tEWxtM/R
         lcAt/sIbOrhTCH3vYe3yln0CBY4k8EjXotU1cyOR9xbP6ki2qLUf+2XkExa9OVvhzJCd
         QbDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=vaN691EUnxF95m8CQyGbqME6xNGoyr91KYIIBfK7uXs=;
        b=P/oS9fsN49Am3VMVBg9UeiLDxyxlV6oEDcA2SDcw3VFq24b7JzhFFGn8w/VhZ3feJ3
         4HsN4gz14UbUEdQYDDgO+AG9JHzQS9+VS1zyWvbM5YFFUL2eJPUua94uzWWmLJ2EFBFu
         pIEVgcWmUS6aFbIAeJy5fpLbz5gkT6Ho2+2vDI10UQga20iPE4BAsF9TreHJX1ZnQ0JN
         ChYZJLTYiO6MTp0t6KMYZ07kY9qnDeC1wOVRXsqzRM7HO9jYzPT6QEjeg9TmfwNUcOgm
         aE5lZeZcR0MlB4qKmaLMZ+K1ZHrFmzWy5+WZlXyfcH6NlEsT+03Q7gXsiTxWh6hPwbB0
         TxLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NsYY3RCc;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id i19si667305otk.0.2019.10.28.14.07.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:07:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-pWsCm5gWORa93cR4oE7e_g-1; Mon, 28 Oct 2019 17:07:20 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 851AF1804971;
	Mon, 28 Oct 2019 21:07:17 +0000 (UTC)
Received: from krava (ovpn-204-45.brq.redhat.com [10.40.204.45])
	by smtp.corp.redhat.com (Postfix) with SMTP id 4928926359;
	Mon, 28 Oct 2019 21:07:13 +0000 (UTC)
Date: Mon, 28 Oct 2019 22:07:12 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: Re: [PATCH v4 4/9] perf tools: splice events onto evlist even on
 error
Message-ID: <20191028210712.GB6158@krava>
References: <20191024190202.109403-1-irogers@google.com>
 <20191025180827.191916-1-irogers@google.com>
 <20191025180827.191916-5-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191025180827.191916-5-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: pWsCm5gWORa93cR4oE7e_g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NsYY3RCc;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Fri, Oct 25, 2019 at 11:08:22AM -0700, Ian Rogers wrote:
> If event parsing fails the event list is leaked, instead splice the list
> onto the out result and let the caller cleanup.
> 
> An example input for parse_events found by libFuzzer that reproduces
> this memory leak is 'm{'.
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> ---
>  tools/perf/util/parse-events.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index c516d0cce946..4c4c6f3e866a 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1952,15 +1952,20 @@ int parse_events(struct evlist *evlist, const char *str,
>  
>  	ret = parse_events__scanner(str, &parse_state, PE_START_EVENTS);
>  	perf_pmu__parse_cleanup();
> +
> +	if (!ret && list_empty(&parse_state.list)) {
> +		WARN_ONCE(true, "WARNING: event parser found nothing\n");
> +		return -1;
> +	}
> +
> +	/*
> +	 * Add list to the evlist even with errors to allow callers to clean up.
> +	 */
> +	perf_evlist__splice_list_tail(evlist, &parse_state.list);
> +
>  	if (!ret) {
>  		struct evsel *last;
>  
> -		if (list_empty(&parse_state.list)) {
> -			WARN_ONCE(true, "WARNING: event parser found nothing\n");
> -			return -1;
> -		}
> -
> -		perf_evlist__splice_list_tail(evlist, &parse_state.list);
>  		evlist->nr_groups += parse_state.nr_groups;
>  		last = evlist__last(evlist);
>  		last->cmdline_group_boundary = true;
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028210712.GB6158%40krava.
