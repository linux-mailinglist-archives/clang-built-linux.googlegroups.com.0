Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBLVPRPXAKGQEACTTHSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A9EF1872
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:24:47 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id a3sf17406254eda.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:24:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050287; cv=pass;
        d=google.com; s=arc-20160816;
        b=HAtwtMSiq4xcAUcqi6AHtfODMf7TNM/dsvKSYfIxdt35beiltfIancsN8ercoLpqB0
         rkD8Q5iXB2GtjDboZU6VoSGwntX5ku1LvQm9U6LVGifhlFHQ4eVf8xGXZUdnR0D7xFhy
         crKOu4fdK5Dpb+MkNKDqZNIE506lJvvStKc3QPSbU0Aumq7F0K2zdy90RjZDPsBwjiSs
         cYrgmexPTYQSRnn1Dr/UR0aeFBj5+UwxeabogOOAvjd/wInZSnDrIVkr4nS2/tptxfwP
         2ungC0dxMfCVdTwtKaBIqZ9utPjLhsQGdbnqD7w3qK5qarrnF5bh3fGXOodDgXUqWPsw
         NFDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hhZKL1faktdnprr7mwtgQPikSn/9meawVzOMzjPlJyA=;
        b=iTRDn4Fcq0DD6glY59vEyhLolAY4vHStaRul8q0XJfPzabqVgVuEeBt8+KlN/vSRlJ
         l2KL11MUPSKiY/NN0cXTRCZguVZVTHDQvNINFaGQBD87/JdsQPgrzcoDpcahGFY8UwfB
         pbL78hRSK2MXOduuJ3VRF0G0tDp4PQ0LAuM/S4R7g9QzZuAdrV/OPf7MWNbSdZ9X5psQ
         Yt89YZ7M5LcW2cvuMJTasTWNbmrT4dLgNra9wKfhuJGYiJJuwxf8gzQyi/isnKhOY980
         pWoaNKoV+mRkEcEf+mFURzsS44zruLe7r6Z4J7SAPrskYDzj5QzIjb5LnRVNvzl/Pz4S
         QAgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aXXAMZXI;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hhZKL1faktdnprr7mwtgQPikSn/9meawVzOMzjPlJyA=;
        b=QgO+xC8BWRJuncjKna9jPWLOdSSXdm+wklPesvtnd0qTNCye9qN3zr7eTivjifL4Q5
         pYrH3JoX5aczwyGyQgt8lqZsU2NEHtVkqintZ2bkFUEJ5Fg3Dm5Q9odzViJa6n+LdjhH
         K3BLQPVd9+dXO4cmtoQ+qNOJfJEI4G/UDlzXz7E4oc+mHOXQHs+sW5ybzuZhKzaM8cyE
         fg64fnSulYt8W09y3w6Q57ed/ic/iiG/H9oRJ1/D/IDs4B+orjMAgb/qeUX4DCoYnb7m
         0L60HPfNp7a+q9SnRBBv4cByulUnS3I8HsokAHOHjTCkn4pWFriUdj6ieAVP6vT4Yazu
         t/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hhZKL1faktdnprr7mwtgQPikSn/9meawVzOMzjPlJyA=;
        b=i9UI+MTgrkweEz18Qp+WmNoh4OY3QJKZPSE+VgECcrtQ19DVutWl1gR0lshc2UACxR
         wC6GGGSuJ/jNfVWOWCHz0P/UpMQMmYNAuCzV7+YkPYmzii5VDsLgUa6a6+RXwXryJYGr
         iCD6+FyPMPmnWzQ9bGqhG47S13CPLq8CLFmL+BZbwnwfYYjYX2GktEmgFETBiRBNEmFk
         POk5eVRvrNeMiiHBHC62as8Q7clEpSoVz+SMI/ZH/vyTD1oXjtjiBA6RMUQPlinebBOz
         43cjUdBEWswSm3xsgLsE8SppkPPoyh4NH2W/LyJUWdkbIPMtTDDYTaUotM20P3SRZlKL
         JVZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1UXKsascJnt0aYOTSAxcBvypJpeck2S90VCunX+IxmaSfYyC1
	zstqPtGlrhipodcOEST+KKY=
X-Google-Smtp-Source: APXvYqxrJFn3vGSxYRzbL50RoFlkQnFU2l2NYZRfwIRqtgEStqYGh2BKeOfmNTRvl8kNlmvip5HYEw==
X-Received: by 2002:a17:906:5786:: with SMTP id k6mr7845948ejq.294.1573050287006;
        Wed, 06 Nov 2019 06:24:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:edc6:: with SMTP id sb6ls609363ejb.1.gmail; Wed, 06
 Nov 2019 06:24:46 -0800 (PST)
X-Received: by 2002:a1c:a751:: with SMTP id q78mr2904216wme.129.1573050286396;
        Wed, 06 Nov 2019 06:24:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050286; cv=none;
        d=google.com; s=arc-20160816;
        b=xggSfXmB6np0IOLX4Fd0f48hgMO81vCfdaGbv7JGunJAn/FioN/6xrg8VKN2UblOpK
         zy0r5FmoIQRIPiLmV0smnBOElJFbW4y3XxZZQz5L5EC/IfSpuLtzhAoRzUeO7WLDFHUG
         bSfC5rND9KysVq3iIb9hJ3+FPWLGHeXUU74odB+EUedHkXqvmvXv/kOTukfNod78kJcE
         SlLQ7laYYbxhnkwxRrw9iHUN60auTLbGoGxPEbJb0qF8FaFv6iVgnAfuGOGko6e8Q/Pf
         Raq4l6EVZYk9YHW2hxtQkGqVBNU0xk212vyG8kMMp3tt34jkl3vpB5ap0DNaZMtLdFdc
         1mKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=N2XxDjFDA9UptvX+jORI71qobLiI/obRRQh0sftH/IU=;
        b=rlH4m+xVZ6C+wX4+8y56vapXChOJfrkjAa1fq1FQM6khLd0WCodzEV1RiQR4hh/wEW
         cGuYsHP+Is07aLrvC/kMdMjYl60p0VCkQ2EKQevV85VwWapvx1/LZrKjdQVG2LbBLTnc
         KsvNXXDFASo9RGwRzc+7gz+IXel2ExNsDwJyEdYxo7VeAjtXEhUadNO3pQJaY7xI3lQl
         XogVHvbqdRH4emfgjYyEzBdHK9np5ncenB5438dI2QQEIv0QZa45dmsheT+80koNeu6F
         r25qqVBqBHalJF3vKpd7ewg22mrRQNZU1SMlzoPrstx4XrZGDpC4bRWAgHpT+gDvCrdG
         VBGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aXXAMZXI;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id s126si321817wme.1.2019.11.06.06.24.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:24:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-wJB3O13zMCqib-iADYVcww-1; Wed, 06 Nov 2019 09:24:41 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEA4F2A3;
	Wed,  6 Nov 2019 14:24:38 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F20C6600C4;
	Wed,  6 Nov 2019 14:24:34 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:24:34 +0100
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
Subject: Re: [PATCH v5 10/10] perf tools: report initial event parsing error
Message-ID: <20191106142434.GH30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-11-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-11-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: wJB3O13zMCqib-iADYVcww-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aXXAMZXI;
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

On Wed, Oct 30, 2019 at 03:34:48PM -0700, Ian Rogers wrote:

SNIP

> +
> +void parse_events_print_error(struct parse_events_error *err,
> +			      const char *event)
> +{
> +	if (!err->num_errors)
> +		return;
> +
> +	__parse_events_print_error(err->idx, err->str, err->help, event);
> +	zfree(&err->str);
> +	zfree(&err->help);
> +
> +	if (err->num_errors > 1) {
> +		fputs("\nInitial error:\n", stderr);
> +		__parse_events_print_error(err->first_idx, err->first_str,
> +					err->first_help, event);
> +		zfree(&err->first_str);
> +		zfree(&err->first_help);
>  	}
>  }
> =20
> @@ -2071,7 +2104,9 @@ int parse_events_option(const struct option *opt, c=
onst char *str,
>  			int unset __maybe_unused)
>  {
>  	struct evlist *evlist =3D *(struct evlist **)opt->value;
> -	struct parse_events_error err =3D { .idx =3D 0, };
> +	struct parse_events_error err;
> +
> +	bzero(&err, sizeof(err));
>  	int ret =3D parse_events(evlist, str, &err);

this breaks compilation:

make[3]: Nothing to be done for 'plugins/libtraceevent-dynamic-list'.
util/parse-events.c: In function =E2=80=98parse_events_option=E2=80=99:
util/parse-events.c:2110:2: error: ISO C90 forbids mixed declarations and c=
ode [-Werror=3Ddeclaration-after-statement]
 2110 |  int ret =3D parse_events(evlist, str, &err);
      |  ^~~

thanks,
jirka

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191106142434.GH30214%40krava.
