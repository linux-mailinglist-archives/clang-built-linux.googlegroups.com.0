Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB4NIYDWQKGQE66KW62Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 539FAE14B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 10:50:58 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id x23sf272007wmj.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 01:50:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571820658; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqJOEHyRC/UXRaRHnLsz1Iv71z1ziSfQK6NrltO3CLcOJwpBY6sPmXVVBUrMuP0zzC
         y3/BiFQM761QqVu1IjfWIO1zOKSqJmD5QlJjEKRpt3mTNV7gyjrUHJ2axZDDDaszIewm
         X3eJCH7RuMqoVhoXwT1LPWl6rN/UxS9im+7SbQaZHemR5htcxTKgTixe1j+Bkjtzp/D9
         ecsSjxdeY9HRWRpQP42cw/7QW7hzuKBNuVsRmtzUW3fw3h/MApJQUHzEuYWYhB/1CaeC
         bRPH7dNk39YPNG1ummud0tnfBaQzMrWKaC3da7y7T+BtZM3Usu8HX/kgqEQNd5XfZfVt
         NKMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=9w4AYwyzF4Ws5gim3JZ6QGHrkoFVw6NHMPPwIOHWaAQ=;
        b=K87rEQx/XjOTii+9eN77R5mecmxH3I8Ajuiykj5ruFEG9Gj0eohCPWTccX+MCBQf+K
         xOJhM7zw3e0w7MVxULLQKN4yrZd6CE8Sf5yIGe/LepO6tV1o0IrPyg15yvslo5roZUKK
         sBlkcpKwBUV6Leaihd/ll3h7kxgJ43ULOaBsDhH7VfkHNTHb1JGPXkc7HaHHJGV3Z/qp
         BKNAB66cfsZut3mnJFZqd4lPVlggamNzV7k+0ntDN5uYhT4Yc8n7IUgICoE5UbJfc0ZI
         Fwo0C4KYJta5TwWu5Ylcx1p8DNgIuUxlT7vBXg6uJ3qKYHh3YdJhnB+wiigDAIOO1J11
         VhBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IcLeuCI6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9w4AYwyzF4Ws5gim3JZ6QGHrkoFVw6NHMPPwIOHWaAQ=;
        b=SaXC8tU+BCui6wRxTg6kS4rrS2/qPhNu3gGrOgcv/O1O4wOpkJP+a6Cs8cEjwzA+Kl
         z3d5GP7OAy0cx5tQoXECAPcb7rUsf7z1XzvIfpmQNa1eROXcTy7esU0AzlfoJsEi9+P5
         vYxSdA2ZDWKNXrBmeFwgb7gFl9sAAjpfaRm9OhQs7fStOT5/11lseEabD12I3FGIBR3T
         cD1f99cWwTmt5FuXZXSTsP+w1chV/S96akBHzrp8DPREC3hvq4n+azjG9/EMyq91Pi17
         PoTc+YcJWDtWLuXasrhtUXiZ7RSx5rU9N/uqs176wrJZNDxJZZJCdShMPDL9ZhPNwFsr
         xtSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9w4AYwyzF4Ws5gim3JZ6QGHrkoFVw6NHMPPwIOHWaAQ=;
        b=BfLUpfRYhJD+oKTgvyGeiy43b7PUxWipja3OVWJdbIzmklzPbh3ksYJVqGtppXmJmJ
         M3cySaa8VdLRphKSvzlNGQr78XUa+DKgho/E9fOhtgMnc18D4OrF2PFW1rnsZdrF/Gk3
         YkFbbR88nyi4KtqVWOXVHnbqHFHVSP3zsVBD70x1WekStM36n0gOJXXDKPDlQQxJ7GIA
         K+dEPqED24i8vpi9k1E2EnPx5FkgDqbT510APBk4t03W9soj30Mm3SgEI6Ss+Dx0IrLx
         EKXGh9syV//rkHxi7FNzf+hFZjVtyNtY5yn1tuUiJAv7JiIG5mRmPr83lNuMaK2Ltz0q
         ylEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGio2MQFXCg9oh9rwAM7kMbAfg5Ef2WEt7N1FiJaHe1zEw3ZTT
	J4yYrsffOPOxMHmPEl7g2qo=
X-Google-Smtp-Source: APXvYqwLTmeoWlXo+1QCNRmpqo9Mx8ZLaBEPVjvLfNGXlm/4E5mUIfsfQQrY0KzHwYEypteGVXrrkQ==
X-Received: by 2002:a1c:c28a:: with SMTP id s132mr6695217wmf.162.1571820658015;
        Wed, 23 Oct 2019 01:50:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ba04:: with SMTP id o4ls546376wrg.7.gmail; Wed, 23 Oct
 2019 01:50:57 -0700 (PDT)
X-Received: by 2002:a5d:6787:: with SMTP id v7mr7557366wru.392.1571820657401;
        Wed, 23 Oct 2019 01:50:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571820657; cv=none;
        d=google.com; s=arc-20160816;
        b=l0JnBM0NDK2ZhqzQqVReVl41RE8lzVmelJ1DrcBJtVOkeSi9oYWgSFSDLYg1H4WzcA
         Mi1aAdwYA2Wg7DWRcOgi0031yFm0AUXl8/Kz5eOsKtGW0GHNI8RjMIiYZeJjMY/ViVbu
         7/bM70EQFpl9I1iAF0pTFWl/Bps+0Uk6kgLkJPt2tnsyjP5ab0IsokGqjWDnq6VM00m0
         IaUiOxIxRkoqR0Aw/LDkTJTId10I9LBxqaknTbrhwhnSvWhtPlGbbOn1ANybKnOi9Dyu
         l0TaXkQKvsu0vU6AT25fvKuGNzIEy26Mh7GQJjFPAF4mlxYN65oX6FG1iZl7dz4eFvMP
         nVyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=YI79mYRt92nE/8ezIrvSVBz+DsF7BXp0cmzQIdyUOA4=;
        b=qJm5SJsmCN9PZ9qGhQ741ehKNmkd6Y/8ufixqJXmnGlIzCphVtAg/+H4Ue+YkqCesq
         gW34nyJwkit77dKGqjCMYg7tA/QoPpC00fjkCyZliYiQEE/IrndS/G6ySPX28XHrDmgp
         DuEY0I9Z9f6byY6TlB+odpO1F5VJVJFlPJ6NGlWqDPxwKFfNf0E03PWpicmse2d9lTd3
         uZZ1cyQDdqn537xhD1mG6lbeluZz0ZQ0hnL2FyYurCHtq7386ZREUeLAb0XsFGbWlIev
         lfuZW453PZEBGUeVb6fWhAL/UqLr/jaSxVoFHKoHmzbpMCf7sxhnLCkmsS2eimOeTQDr
         sHkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IcLeuCI6;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id a14si712937wrm.1.2019.10.23.01.50.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 01:50:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-U6V1Un5eMgiryiQC6QiOAw-1; Wed, 23 Oct 2019 04:50:53 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5BD0476;
	Wed, 23 Oct 2019 08:50:50 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id 9C56C1001DC2;
	Wed, 23 Oct 2019 08:50:46 +0000 (UTC)
Date: Wed, 23 Oct 2019 10:50:45 +0200
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
Subject: Re: [PATCH v2 3/9] perf tools: ensure config and str in terms are
 unique
Message-ID: <20191023085045.GE22919@krava>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-4-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191023005337.196160-4-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: U6V1Un5eMgiryiQC6QiOAw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IcLeuCI6;
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

On Tue, Oct 22, 2019 at 05:53:31PM -0700, Ian Rogers wrote:

SNIP

>  					return -1;
> +				}
>  				list_add_tail(&term->list, head);
>  
>  				if (!parse_events_add_pmu(parse_state, list,
>  							  pmu->name, head,
>  							  true, true)) {
> -					pr_debug("%s -> %s/%s/\n", str,
> +					pr_debug("%s -> %s/%s/\n", config,
>  						 pmu->name, alias->str);
>  					ok++;
>  				}
> @@ -1462,8 +1472,10 @@ int parse_events_multi_pmu_add(struct parse_events_state *parse_state,
>  			}
>  		}
>  	}
> -	if (!ok)
> +	if (!ok) {
> +		free(list);
>  		return -1;
> +	}
>  	*listp = list;
>  	return 0;
>  }
> @@ -2761,13 +2773,13 @@ int parse_events_term__sym_hw(struct parse_events_term **term,
>  	struct parse_events_term temp = {
>  		.type_val  = PARSE_EVENTS__TERM_TYPE_STR,
>  		.type_term = PARSE_EVENTS__TERM_TYPE_USER,
> -		.config    = config ?: (char *) "event",
> +		.config    = config ?: strdup("event"),

there's no check if this succeeds

>  	};
>  
>  	BUG_ON(idx >= PERF_COUNT_HW_MAX);
>  	sym = &event_symbols_hw[idx];
>  
> -	return new_term(term, &temp, (char *) sym->symbol, 0);
> +	return new_term(term, &temp, strdup(sym->symbol), 0);
>  }
>  
>  int parse_events_term__clone(struct parse_events_term **new,
> @@ -2776,12 +2788,15 @@ int parse_events_term__clone(struct parse_events_term **new,
>  	struct parse_events_term temp = {
>  		.type_val  = term->type_val,
>  		.type_term = term->type_term,
> -		.config    = term->config,
> +		.config    = term->config ? strdup(term->config) : NULL,

ditto

also how is this released when term is freed?

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023085045.GE22919%40krava.
