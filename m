Return-Path: <clang-built-linux+bncBDEPBSN75UNRB2NVRPXAKGQEWBSPFZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 04094F18D2
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:38:35 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id a1sf19146954pfn.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:38:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573051113; cv=pass;
        d=google.com; s=arc-20160816;
        b=kREqhAoFpnT8u+xjOriGgUmK4i/v/LXSGEVvl5uWVvlk+5DhFiI5m4owXHU6WFNVBb
         KdXb6tnk8dUjCuzQTbRWtT9Z4gdnbkYKwmStLSFLsv38qcDrVC+49GIekBnR1OG7HgKp
         E/3S35dJSlCqYug57vrS1bh2gla13SW2VXePQgri46QmLvzzb9tcW0w6wbE3s5XmiOUq
         iFTBceF1FBgyMeJlxxzZOb71QRBByJF2/1Jhy4UslsQ48a9qVetvq48YuITZCzOpZvVi
         iYYbH8PNJhGxuiOHqJ/8yGh8LwriovfIl5yMxxCQAddYwP0JQfEQhelbogIWFuF/fUwi
         4h3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=3bPa4m7PpL0YSiYNQWpSaWa1lzDvM6Rgpju1eXxignw=;
        b=XnCdkLd+CT3ICFPZJ1rCFwV1ZIZ8RtuNzyG1J2F6/jVpANoYUrstc3NIl9ay+5agdL
         EPOvVGXF8nneUhHpNcxS1GXjelkIRhK5OwQsW1WmbOrjkTQiTmqqh3MUE3wKwbQt0ynG
         07+wT3phNY5imUUzzowvgAAE5ZhLIO5YEvPTAnGS/cSeK21K3fRPjgH7fVkuov4xCpg4
         XfsuPPaZS4LRJtWhRYvIHpins+xsp99+Df9jKE4ANIKkvWMXGTKpCmWRJ4UByHMS79UV
         FsgSQeZ6fwOimMMTF8ng6TQXPV5NndKLTqOm9MDHBGUKreKdi/nbu+7MkSBDHetPDtv/
         mRbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Stc+piij;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3bPa4m7PpL0YSiYNQWpSaWa1lzDvM6Rgpju1eXxignw=;
        b=Y882WAAtH4RlXGJdne394zeqs59c7YCnSmPYtfkBoU/YSGwusvVY88ZYT+SzaiBziJ
         +rvnKaQOmghOV99xdgwt5rqPqTVVqVqKyWIReLj9Of4BIoRM5zgiNEAhCmOfyHl9RvmK
         bHjXADxUaOI78Dph8WXMHVPIVZU7l013JqKTTd7/JXxGAnCyXcr6YFekhkX4uUoOj8+X
         27uArFBuvBLYoF11yXuL1OC5IgCezYOlHSEmWKJSMMEtrdNHCnsQGxqzd+y5bvuPeLuD
         NWOcIOpoqbyj+Uc5Fi6Q/8gjvq0KGvbSu8fLxHR6P6RQtzytVu82+3Z+kLsbLif8Xzty
         Qmyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3bPa4m7PpL0YSiYNQWpSaWa1lzDvM6Rgpju1eXxignw=;
        b=irj5UUvq20GSd4w5ejaXQJgt4Cqs2bjPLcM97CunHGUjhQaH0vFG/LFddaUEaU0+Dg
         CwSg8tmYff9yrepzbDoiTR9mDUnkTi3YlWIhRqdsljb8whcsoXQnmVBql5jXl/AX+I1c
         41M0K0oGlc/6HGSCQIRs2PV2119IYVwVLu9MFQo/XAr4Q7Dhbx1EOPoZW+ZW960NyTCW
         uMof6kcTrW5Kui1+ShZ66CQEbPdfvEQqp/ioJ2eP2t7x9FWosdrw8IXpl36J+tzsjFGN
         yl/z4q+NFsbA1fZJw1bBRxS4SqmGl9UrAIOUwqIQmrLVk7MrIw+KPns6DcUch56yU/fG
         NOsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3bPa4m7PpL0YSiYNQWpSaWa1lzDvM6Rgpju1eXxignw=;
        b=EskscJ9gqz1Rp8k4w8M/Pj1ohwR76MhL5pZOvGzJs5tGi9KOEKaE7HcWL28Xs1JXY6
         IxnNdD7qAdgTrxduj1OoSC7s0iXXjGINBq7QGqEM0lajYpFzYnRaUGfJifxjNIG9LhDR
         8G+dPy0+VoFmqDzX0dKctt4AQYgQjQIpv+KUFvBnioqH5cVxHZTJiAeYm93a8VOofboj
         /3PILyN/EwzdU7F666DXnP1gDhEnxKFAdaPtoBTYM7FxeYpFGix6k8C9BhHxkfUMTr2E
         Gg+aqNlueH0bhpWcoGjuMecwC7zoNlepaamDIUh+MlWS6cb3G1lAVUBeC5VnM13wzNXN
         i1tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMQb/Cjwz/WPWlsra/i/a3IVkuwBd1Vmw7Xw9zJCI6xEqcOLr0
	kS5RsxYXmsNFNfGTnoj8xoA=
X-Google-Smtp-Source: APXvYqwAjq2zrmkku9fuOJEKJELyqb7p4q8LFHJ7i++EEeG7SA07brbfYr6bJxDII0+JM0TrcpUinA==
X-Received: by 2002:a17:90a:741:: with SMTP id s1mr4256655pje.122.1573051113712;
        Wed, 06 Nov 2019 06:38:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9725:: with SMTP id k5ls654371pfg.15.gmail; Wed, 06 Nov
 2019 06:38:33 -0800 (PST)
X-Received: by 2002:a63:5417:: with SMTP id i23mr3299995pgb.305.1573051113203;
        Wed, 06 Nov 2019 06:38:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573051113; cv=none;
        d=google.com; s=arc-20160816;
        b=ob91wOC4BubRcT9tL6tadiHe5g7cSzkJlcD3CIYBndDko+AWOPcPPptgxhXk+WxQR8
         ZGZSAS7K0AvsTguI40y0CKG5zIpfXxxbxfF0HKLmwWWII0EOb49I5pu8yI2qFhayGKwQ
         HJjl7/muP0GRoHcMYZj6fk+CAmZjauD53aM6ZfeWLjW5YjS1A0pamd1Z0e9Kqvd6vFV8
         Q3V80H9dtDPQMzh9Ud0JBFP6O9euVcynoMiZIasGNblaRZ/UDbXysYQRy5vHvnKoAsxI
         Rh60eiFJ+FCApwab0+VmAnRqir4uDqXvIlJRTa5c0TAf+R/uK0MV9XNZIkGSaW5B9Iu5
         s9Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=2Tb1/hKPm3+F/7SxGWBVse5bTUY23XeqNi5ZvlET660=;
        b=o3GhKIUoi6p482Baby6ymkNrZ0vKBR0/nSUJkxwwoZ/jVutZ9Mi5d3OwR1XvvF+AZR
         2YilWyziOdDDhgdJSwy+fZ+HlNcMymP9KG12+XLTEN3uiHdjj6LsqRWacTirQfp+KEgk
         XoMoB6miqhC26PN5msDZlDF8f5f2lUmtyOpA27RnWMiBRxgH1k4BnNmSxk9bsSQGf7bl
         YVNIwcpSlaazjkGJbXAVcr3ejL4C/bszBtT7YfgCgbyzDcdyfutHSxSGwqz8K3emq9La
         gLwVb29/ey6nuiZkvljEqyBAvQGuIUZXthMWh2dnhPIpmTglvIuvUQBoDBCs4XmPJ/QX
         gjjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Stc+piij;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id r20si43015pfc.3.2019.11.06.06.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:38:33 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id g18so1488184qvp.8
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:38:33 -0800 (PST)
X-Received: by 2002:a0c:fecc:: with SMTP id z12mr2430282qvs.189.1573051112224;
        Wed, 06 Nov 2019 06:38:32 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id r2sm14873968qtc.28.2019.11.06.06.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:38:31 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id A667740B1D; Wed,  6 Nov 2019 11:38:29 -0300 (-03)
Date: Wed, 6 Nov 2019 11:38:29 -0300
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
Subject: Re: [PATCH v5 08/10] perf tools: if pmu configuration fails free
 terms
Message-ID: <20191106143829.GF6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-9-irogers@google.com>
 <20191106142408.GF30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106142408.GF30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Stc+piij;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f43
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

Em Wed, Nov 06, 2019 at 03:24:08PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:46PM -0700, Ian Rogers wrote:
> > Avoid a memory leak when the configuration fails.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied,

- Arnaldo
 
> thanks,
> jirka
> 
> > ---
> >  tools/perf/util/parse-events.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index 578288c94d2a..a0a80f4e7038 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1388,8 +1388,15 @@ int parse_events_add_pmu(struct parse_events_state *parse_state,
> >  	if (get_config_terms(head_config, &config_terms))
> >  		return -ENOMEM;
> >  
> > -	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error))
> > +	if (perf_pmu__config(pmu, &attr, head_config, parse_state->error)) {
> > +		struct perf_evsel_config_term *pos, *tmp;
> > +
> > +		list_for_each_entry_safe(pos, tmp, &config_terms, list) {
> > +			list_del_init(&pos->list);
> > +			free(pos);
> > +		}
> >  		return -EINVAL;
> > +	}
> >  
> >  	evsel = __add_event(list, &parse_state->idx, &attr,
> >  			    get_config_name(head_config), pmu,
> > -- 
> > 2.24.0.rc1.363.gb1bccd3e3d-goog
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106143829.GF6259%40kernel.org.
