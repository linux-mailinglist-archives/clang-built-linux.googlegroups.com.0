Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB35Q3XWQKGQEN3UIDTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF59E7AEE
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 22:06:56 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id t193sf9348866iof.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 14:06:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572296815; cv=pass;
        d=google.com; s=arc-20160816;
        b=jado1kdywbz4gjLAHFe6U4l82bDP6pAcAQmOzNcvvPThTdC0lqGE/CIDapy6x6f3GW
         c2l9kYff/Z+drkokmN5Skt8mNt1Rxc3vYBAnxBzenPJv0CjGno5kL+xMj4DekRG1304G
         rwA3UmgBatNNs5P7P0+ZME9sfUe6Z4p/Pma9azD8DExNb0F79olopXOFVmkcytA1lVI5
         nyUbvxc2+d3d1GsfxL8whHd1TeIl/ByOpXQaDpoaEf1hr44M1iDguUN95fhgKLCxRE57
         IK1+MtHtrzcZZ2rgddJB/KUq9PLAQgf33NkmaPm8Sx5dTNIzoC1VdOiFaBkSo8FA6BGn
         AfdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=YTLFRAtT2kgz76g4aRFS2njZYNQGFJY8HxvU6ShAQow=;
        b=d/ZaUDojGG3LATSt5FqBM7AZsH3zPDgBxiYApYHiMREN614wYrSSuLcUzHQW7IoGno
         JmjFSniIBLeBiygLxwzl2NbD235dApbhtemYNK8BA3tWCQ71Edvf/LvJuH7xuif0MNfO
         /ncgQA803No8pNHWQwfOERcco1sF2YBEj11CtlSQjjWWHb4mq6U3qsiE4UzRrqHDWZwu
         n4xre7pjtvooiicVn9q3BSaTrPch8j7m37kB19vkOn/JE7khdQ8GHMNzLIdBdvJfc6a7
         mJzdzWld9xntn3ZYopdBvTIQEs+EgCDRJHkbrQ3uZsSKai0ADuEQXyFjmfUc9UfTVptT
         9F7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IgKrqEu3;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTLFRAtT2kgz76g4aRFS2njZYNQGFJY8HxvU6ShAQow=;
        b=WwnSOzmz+Aa+e5HHk6TqF3UboCd288PeTa7B9sEzr76O/jh0JkAu3PLqK+GLWYTSjz
         Y9eCZcy20JIbXlHHRbm31jElSfsyZPN3kMUYOyhlDikE/ASSkygbYdIuqTQSGE87EmJL
         /gtDZ+aUW0cBQyxpkrpIyfumSMcqAwChIj8EudxvbsWCRKRIX4cc3WmDXXGC3KUKlgFm
         0MH1BwN8fRjRLOd86sdteVjf+EJFDJwbc6gP5MevT91k8ZPAzIa47IF4aDjISvmAyIVd
         DLYRiQwBgX67xiWBr/jF07MyRvcJWi94dp3YGQxlCINo5FhitNi/10LgGyYa0mTgq+aV
         YXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YTLFRAtT2kgz76g4aRFS2njZYNQGFJY8HxvU6ShAQow=;
        b=DMV7k9+3ToQ5kiMn9Fswgy7YFWPOkvuQNqsPDLVOMvgh+3I9bmHj89YteRj75QXZjP
         q5Vb0vnr3jhzTXObjARefaToqnnruGSacJ+dGsxqTCS06T5SFQNFckrAXxx7NcdAIPbF
         p1rFquFrVL5HSSGnhdDB8eQ5J9y4FMIoY1hk8REAAVgzcduvgUlkgIaD+fBrmu0F8JqM
         IXPvyKFLsXi4oxQxkGyfJzTLdVD24QKepfJNSJ5LIbcbbMsgMwSyO+vrmXJ2Ikqilvoh
         eTJ4EWq8AXUFasoZrz9HjM4CsSeW4jWv/tcwo0TazwSryLOIHMIr9yVqcx0/M8hi8kcw
         X7vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBJiOYOU5ffVHyrfPzw5NBcNSl8mJ99saPZ4wun6NDlQUmHSbh
	RNHbMtR+92/MlwAlJ29WNiw=
X-Google-Smtp-Source: APXvYqwo78MUkbKji5h3yGuvsmxCiCdotjQkN6rRZnliWw2TRU7qRqlqXAUcgFDH9eBOnMgrN1edfw==
X-Received: by 2002:a92:8498:: with SMTP id y24mr21614447ilk.89.1572296815439;
        Mon, 28 Oct 2019 14:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:bf47:: with SMTP id p68ls300083iof.10.gmail; Mon, 28 Oct
 2019 14:06:53 -0700 (PDT)
X-Received: by 2002:a5e:820a:: with SMTP id l10mr6177iom.48.1572296813744;
        Mon, 28 Oct 2019 14:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572296813; cv=none;
        d=google.com; s=arc-20160816;
        b=R2CXWmDec/bzuapqfuRgWFY3pwTjXwutlNhMcnBjPfmsBJ3u8Sa8HNmf+W7QXbMyZx
         o4/CnTkT6+hBHMO1P1O0vGI+DJE4mCJopiPl3nq3WU6dLMTFO2YnVWbBpOg9lSIAawT2
         Le1V5/uM81/Mz7xuoZzR1UFLM3HiZOm3i2klflv9BEVuP5mcSmgPaRhdNNP5KwdsuLiA
         Is2tSuO16pEcL4f4i8rwrJa2FFuYUZGhOFTsCxTO1+KXiRO2v0sCsAEz3rX10ayIJG1T
         kBBTTZPRaXqmbCk6/b2i+41kz/qqvYmUf7JcbaXDkHLabprICjkrWqnTx4LlzLE+w937
         XveA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=qs80qKEjJqjb3JocGFXcxF2DSxYMQR2JCI+aYDkOum0=;
        b=WYg2rn/gHNNyCjBrQDuwiVKIbLEGy54LNnjCBkXr1AKdxYZ5WttBeS+9yUqPbRlKrb
         ApTDCW+aRChNATK7F2qahDQNBph/LxK2Zk2OLp4/hxQduyQk5++Nvhs/rABtJ9OBnA62
         rcTAadVcLVJ/rBrcNeu0RXZdWe17aAI7gsDmoQkZm6DdHxPFdnTI+KByAFr+wQYgBdlS
         g36kxdeBmgHqhDYKuU7PPfDCaIZjVGt1oQFKKNcRIyOm/SHS2LUU7yw2k4gZn60aM+OO
         abDqUxCA0sl5wjyEGAMnrKIGmNHHf98oT/z7qf70fU1JwhiFa00EbCRs/PuZHMAWjHcR
         1kSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IgKrqEu3;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id f66si628962ill.5.2019.10.28.14.06.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-CHxv1kvuMsm_hdpji176SQ-1; Mon, 28 Oct 2019 17:06:46 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A5C8185B6EE;
	Mon, 28 Oct 2019 21:06:43 +0000 (UTC)
Received: from krava (ovpn-204-45.brq.redhat.com [10.40.204.45])
	by smtp.corp.redhat.com (Postfix) with SMTP id A5D621C92C;
	Mon, 28 Oct 2019 21:06:38 +0000 (UTC)
Date: Mon, 28 Oct 2019 22:06:37 +0100
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
	John Garry <john.garry@huawei.com>,
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v3 2/9] perf tools: splice events onto evlist even on
 error
Message-ID: <20191028210637.GA6158@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-3-irogers@google.com>
 <20191025080142.GF31679@krava>
 <CAP-5=fWoHN9wqWasZyyu8mB99-1SOP3NhTT9XX6d99aTG6-AOA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP-5=fWoHN9wqWasZyyu8mB99-1SOP3NhTT9XX6d99aTG6-AOA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: CHxv1kvuMsm_hdpji176SQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IgKrqEu3;
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

On Fri, Oct 25, 2019 at 08:47:12AM -0700, Ian Rogers wrote:

SNIP

> event_pmu: PE_NAME opt_event_config
> {
> ...
> ALLOC_LIST(list);  // <--- where list gets allocated
> ...
> https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L229
> 
> opt_event_config:
> https://github.com/torvalds/linux/blob/master/tools/perf/util/parse-events.y#L510
> 
> So the parse_state is ending up with a list, however, parsing is
> failing. If the list isn't adding to the evlist then it becomes a
> leak. Splicing it onto the evlist allows the caller to clean this up
> and avoids the leak. An alternate approach is to free the failed list
> and not get the caller to clean up. A way to do this is to create an
> evlist, splice the failed list onto it and then free it - which winds
> up being fairly identical to this approach, and this approach is a
> smaller change.

agreed, thanks for the all the details

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028210637.GA6158%40krava.
