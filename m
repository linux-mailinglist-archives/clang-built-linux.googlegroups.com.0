Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBBFCYDWQKGQESOMNYVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2E1E1456
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:36:22 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id b2sf10427993otl.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:36:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571819780; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfJrmmllDcGze6PmjpfB1alvCv+Z0UpagCAy9mtMOGkEP2VgHS91CnTlk2kk/gSuIh
         /DWQpDYheNdXICk8+71F+g9bCsRwgPoXFmXnnO/nDX2lZvB9aOICXVgvANbmBKPwMqzH
         YzYG0l4UnbpxW1JTE8dXpgraOq4oP2WYJEKPmP7N6+fspqhWaczd53jg5WsX22Y5W1lP
         GkfLkuF8jCYu2aw6U9u4F7q0nTw1DkB230gfHbqUMYAbP+DH/Tk/ygUU9abytWDI3nHd
         JwAecP2A3gXDeAp3v4SGvoUbc1STZNj6uxR/YivXyhlPl8lTtc3//A4/CxBJYccUpZF2
         MsTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=e5xAa9ami6Forlm1lA+/OJ+sDdfH7Mw3QiApf2wPlng=;
        b=0uI8Dgu/rfgJNxUYt2Wv9A0w7psx5rTB1WOkfqC4joRoOzn8GXlEPGZ1UUZ0wWycSo
         Smfs4h6xCChJ41QWEJozk5t9uUG/Z8X7lTBSXMWvz1Os9ZYE11a/QmrkT0dWBaX+9gIO
         dT8Wte7B7rf0IUHYHRMgjZea2MsHsBshr6uhUFBosy9srtSOvl0tsdMGg7/CPsDMMS1o
         U5xagMA1LIW0U7+621LfVY6gNvjfgyl5b/wnfTKT8nl88yNmAOW6qQBAdUgi6+/VFO4G
         +OJLptE21dkxRieVfDfi/o6B759ZvHAhqoY479z1c86VoldqKncHXwl+he85/597rrBh
         yj2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SJszAXdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e5xAa9ami6Forlm1lA+/OJ+sDdfH7Mw3QiApf2wPlng=;
        b=WVt9RJUOgAQKNjzjbBeeNwFbcaA6+B6VYjrICzb0gblb5aH7PQnFPvGT4hTny6yGCT
         CqqcOx1XW4Nc9q4YMjWlqr6qrE61Dl8JGRdwzG30NYYhbBXH+RfAOhAnli2gGm0KlCnJ
         xJW2ViAt5wSe1oqFH8/NSDbJ1Od7GVXsT+esj5gRKH4bc+1m6u+vC4i2C6y5iZ740fb/
         fTWLyG4iPfk4hhT4GrU0Da5MlcW1rgZJWC7GULfEW5xyRdVhVOA8rsR6eNBrSxFqaSqS
         gzbvPnnOg8AKm+PcfwKGflH7mMKOv7Dn8VRCbWwsmS6lQI1clUs9LjAzmVxZNCqpLfuT
         0EIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e5xAa9ami6Forlm1lA+/OJ+sDdfH7Mw3QiApf2wPlng=;
        b=Mey9E2szImnOKu5tEmHKB4KCw/T3Vs5kVALBORC4e00IpvBTaVd7LbMVX/lOA7rZwo
         F2draDyDY2eMtFd0jgoGvhiqJtwjJxn5zoBC+P6EclfG6DrpLpAbL34zxlVug0N4TU26
         yShceIzl2WrIXiPl5sKq4OohiV9RKNevo4lJxqiXcuypaRIv8BC92eNU6RF8sn1NITBu
         qPBREHE0yVSC1hXGD5drw29rS7PYn7+lNKtiBhpFiqsXHaXdsk/OtXZ8HsWYzVsNg6kJ
         Xg1nMH5IN3vXfxwgSDNsyovfEH8eg8WShsgtxAicDnGqoBvmnyoxZjntorr3KimrE08U
         EHQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkvCFNlzu9B51zfetDa25WyD73mfHG5iw3VVgiSukhtGzn8KxT
	p8JnK9CFSyKDic7DU2uJa30=
X-Google-Smtp-Source: APXvYqyrGBIjP7eFpJOE03YbO3bqu/97m0zObToQm6J3cz0RM21ayADeXj2RWVHYvua9AQ2sntgYLA==
X-Received: by 2002:a9d:30c1:: with SMTP id r1mr6395392otg.91.1571819780696;
        Wed, 23 Oct 2019 01:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:de9:: with SMTP id 96ls455130ots.6.gmail; Wed, 23 Oct
 2019 01:36:20 -0700 (PDT)
X-Received: by 2002:a9d:6a59:: with SMTP id h25mr6298543otn.324.1571819780392;
        Wed, 23 Oct 2019 01:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571819780; cv=none;
        d=google.com; s=arc-20160816;
        b=njcpp//BTQZZKLxJlZW2RysBO59qOkVZPDXyAZCQ5BCITnUeyzSRseYTofA706xAKf
         f7lfuH/8QyK7RTJ18/B2dKgQc3/EjotXZefuMDyZ/f+CUMnwzGj75lXzlOWmFX8NqSRz
         lO9TJpJoUMo9hOb9T09qDA3xkPlpldBT3g6icIvon4w35iLQJs7x49aJCpzKNin/gYSo
         bI4myQGDT3ycOsgUaw9tvB0d07KR2XYfLaU+sYWv+Eh3sCzgt2sVUg5Z6x6qEwvTkI7h
         uX0MGFKQ3upjsFIwjJi+0nhTaLvuD1fnJRnBKTySLrQTNlUdBLG1tqBYY9sfZsQdJkLc
         NrUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=48N02/jvRuAsgRhdv+Mi4mPU3dLRpyX+8I00gXgPOW0=;
        b=CLrlf96ye3vQYONJh0esie6YbQSC8IpkT2qwmcaVjKx45pRSH1aY6hzDL4z7rD0MpB
         Sdb/itZEpKmJYvANP2Z0Mx4N0vm/86y9ELr7t+JbPSmD0evw2FfUo9mQCdiKEYAj8M+M
         U25Ey7llcfunD+2tBBlwMyPvAbBR1oNjcC/x3GWqOYODNY3sVk8uzzSxB6a4vKinbJSX
         esdJlkmF+mYMnGk6AQ+TY47PjqSd0hLFK3bw1Lqp2uoRRTfQQ0K6jDkfenxpt98qmPbz
         1cAAvItjePPieMZFClmfAa3CQDki8SVVAgHriGTQRENHh+cF6k4BNp/VJQ/6/IPycNC9
         td4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SJszAXdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id l141si68314oib.4.2019.10.23.01.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-4xhr8qFvOJ-YzFpi8NFASg-1; Wed, 23 Oct 2019 04:36:17 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 623CC107AD31;
	Wed, 23 Oct 2019 08:36:15 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 36E185DD78;
	Wed, 23 Oct 2019 08:36:09 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:36:08 +0200
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
Subject: Re: [PATCH v2 1/9] perf tools: add parse events append error
Message-ID: <20191023083608.GC22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-2-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-2-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 4xhr8qFvOJ-YzFpi8NFASg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SJszAXdG;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Oct 22, 2019 at 05:53:29PM -0700, Ian Rogers wrote:
> Parse event error handling may overwrite one error string with another
> creating memory leaks and masking errors. Introduce a helper routine
> that appends error messages and avoids the memory leak.

good idea, it became little messy with time ;-)
some comments below

thanks,
jirka


> 
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 102 ++++++++++++++++++++++-----------
>  tools/perf/util/parse-events.h |   2 +
>  tools/perf/util/pmu.c          |  36 ++++++------
>  3 files changed, 89 insertions(+), 51 deletions(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index db882f630f7e..4d42344698b8 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -182,6 +182,34 @@ static int tp_event_has_id(const char *dir_path, struct dirent *evt_dir)
>  
>  #define MAX_EVENT_LENGTH 512
>  
> +void parse_events__append_error(struct parse_events_error *err, int idx,
> +				char *str, char *help)
> +{
> +	char *new_str = NULL;
> +
> +	WARN(!str, "WARNING: failed to provide error string");

should we also bail out if str is NULL?

> +	if (err->str) {
> +		int ret;
> +
> +		if (err->help)
> +			ret = asprintf(&new_str,
> +				"%s (previous error: %s(help: %s))",
> +				str, err->str, err->help);
> +		else

please use {} for multiline condition legs

> +			ret = asprintf(&new_str,
> +				"%s (previous error: %s)",
> +				str, err->str);

does this actualy happen? could you please provide output
of this in the changelog?

> +		if (ret < 0)
> +			new_str = NULL;
> +		else
> +			zfree(&str);
> +	}
> +	err->idx = idx;
> +	free(err->str);
> +	err->str = new_str ?: str;
> +	free(err->help);
> +	err->help = help;
> +}
>  

SNIP

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023083608.GC22919%40krava.
