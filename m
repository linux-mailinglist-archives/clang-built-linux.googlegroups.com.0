Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXNQ3XWQKGQE7JOBCPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27523E7AD0
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 22:06:38 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id o92sf7274792edb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 14:06:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572296798; cv=pass;
        d=google.com; s=arc-20160816;
        b=DdZ2EN/47rvr35LatMFvyvITpiyvBESfmkybPMd/LT8ywVaLlBPtdFzoIgOxzyHINX
         DpxS2NS1qys6VnJ4IfZwu5Tb/SKZZKb0Y6m+UreyQ2NIE0R4BrauwyVAPBMsHsxu2OUw
         /iJ7RfGy5HPWCt7eneN/VcrDP5kGT5QcIVbaUWWSpwHK0gQLpEXdk0KmqMPyV+rzOFMl
         qVUdzuLfItkL7/wnm/U29n4FGzboqsB6Tc/Ha6y4nmB6QRiKIjGnV6kCsErSJeo2ChCM
         KyWJJNQgswlvGqr6lXulmFFtSclh+CPM8V8XveS7XsxLfioHCidJLb+wLefyTMzJE22e
         Z6TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I+FCqXccugwxUzUGsOF2OE/XsGPfH4SO2JabnCYDkkw=;
        b=DLtZbwPvExbzOh5vBCxPZroC6/40bKfWpIDtW1s7vTEVFrAl/BJrbPBjWv8VJ6J7mp
         DRTVdCpMK5bSPWRSN04AvgIuBRFQ4gHPWyxp5pdXScrOzmyXXYaCOkbMYeKJSlH6NFC5
         hjdVlBi5wT05bkYsdrCXyd9tIUpv9qGvlBZBE722IC5XA4W8dXX+E2i0/yXlW0kdw/4e
         RMSA0I2e2JGkWgbwzaqQm4es7yb+s0vHdySzdl355P8B3GPV/tluUTFY8U2yWwC99eY3
         XCB8ADxub5jZV2Z7rvppD2ai0YyPkLf5pKq/FUc/M97AHv8wwEZpWxBoqDm3gLbx001X
         adPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VM9Fmn7y;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=I+FCqXccugwxUzUGsOF2OE/XsGPfH4SO2JabnCYDkkw=;
        b=NSV6JSEr4Q3wipIrmS36KjX9/TlDfpPH5fZuyqSCMqpub/ykg1l9ktoy+xTmSVdsv3
         7h7n+UrQi7TiDmrG5111VBnM7y/idSYMVjI1RDSRSZpThjhDwr6SPEwQUOIRcARMa7cU
         1xID/GH/nMefGVV+lopWZVyK0c53QfF6dcMxfYXydWVDPN6GvjoBwbysQYFWhrr0NxrS
         rO1yfI9EAKqF9/3d2jqaYXhaAI9GKzLhKeUEYtwTY2gb7XhXkvBRjEOz3Z8d0ueNuMGV
         HxG8dfE9/hG+S0elHYnwstztD6bCl17dOU3YoTWD3oODalHgWWUC7Hwa3ABBQjj8jpnM
         CJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I+FCqXccugwxUzUGsOF2OE/XsGPfH4SO2JabnCYDkkw=;
        b=PpQf0KzJKABOtz7Q8Wd3kKFGNL1QLLR2WKQv3b83l2sYij5D5K4iP34m2ihWbcoo5g
         w1kSDUfL1SPQ3EBGLYyKvkikTRHLOXWRezyAQhztQdTZoiB1z6Ep9M+rwRywdhWaBeLX
         RInjyeyMQKhJdsJIllqgerDuX4I+TUIRaCWL4gO1N8gijlm7cK3zrOMe8kMrxyGCunr8
         89BEaYJRsX28qYyg+gLUm6cCp1rCm4552sxHFVUkAX/CEqh4gLP/ytUKW35RXQ7Va0cS
         k9/yfC1rVC8wlLRR/bX0bk/EB/fGqBGUgmbY+qMoTjaqCMsEhV7R7wFm6Y1xagBagCyG
         5ctQ==
X-Gm-Message-State: APjAAAVVMrnkJRi2Fp+FsxFGi8qz8fabhw44SpFz0BY9xmycCw/28OpX
	Sixt7g8nCjwSCpujgCPdKto=
X-Google-Smtp-Source: APXvYqzHmJHH2I2yzC0QahoDMbSYKcVmlrzBCi0uu811U9bIhVcAYPuE6U/dFFECQY/H1k6eOQT7NQ==
X-Received: by 2002:a50:9254:: with SMTP id j20mr22757038eda.0.1572296797903;
        Mon, 28 Oct 2019 14:06:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c0cc:: with SMTP id j12ls2050327edp.10.gmail; Mon, 28
 Oct 2019 14:06:37 -0700 (PDT)
X-Received: by 2002:a50:950a:: with SMTP id u10mr22264431eda.68.1572296797351;
        Mon, 28 Oct 2019 14:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572296797; cv=none;
        d=google.com; s=arc-20160816;
        b=nMQhbQzTR/tLit/qQKy4NKO+JHGUMVWlr3/ckY5bsrLKwUhh4gVhLL4bZnjHj6hTBL
         qjZnP6g6EMJTHq9AU/JzVitx85po21Ge+QwygtECUDd16PuKEh0gLcVuqzu2XsALwW6M
         Y+vnRcLl+pCdFd8hJPHSJBSjCiQI/6EXgD/aiFpjLEJICN+Su2krt+gFmorfTMTJFnyU
         DuTrx8esV1X/CnCmCgl4dux/vLFAM8lVI4K6Z2wCwyxSoi1ckbNtP/8x2O7WpbZffDcK
         V2S12KF1/X3hX43nVzXjx1+J2ZcZ5LyUsQ9zgraxd4Y4UeIVPvxKGs14UV10E9kiw9uR
         UoGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kmLbG7xlFIRZD/3ijO96lnD7meByS4x923IZvFm+VaA=;
        b=i6NXDbZw0m/OgDc3F/bnsWHzat+OzI/3/79sZHebRp8O85vAebYP0+TwpZIHOeyaaA
         TO782tx15sUDP5oq9UmZD7XFuTiKslKGtLKJNztjU0s59pmx+kGVhWuN6fLUMnp5m00M
         CRfhwaHtP6lM8yUONwbiBInj73rAy/Y/9VJB0SRNibcGxNB/mGHlHH2q7oRa3V3Wqbf9
         cTl1Aba2f0+crkYBBo6Uqfau4eHE2j8mjrQ0rye901/WxX4REFF5FcB23X3JzeN0q+CZ
         YB7voz9fbYlH1HijHiAJtGJMqz8w4RiookF3WU9H2i+EnhVHrBZIixXcbg+dLjPik3bt
         bMcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VM9Fmn7y;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y21si416710ejp.1.2019.10.28.14.06.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r1so11377285wrs.9
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 14:06:37 -0700 (PDT)
X-Received: by 2002:a5d:6785:: with SMTP id v5mr12529813wru.174.1572296796532;
 Mon, 28 Oct 2019 14:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com> <20191025075820.GE31679@krava>
 <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com> <20191028193224.GB28772@krava>
In-Reply-To: <20191028193224.GB28772@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 14:06:24 -0700
Message-ID: <CAP-5=fWqzT24JwuYYdH=4auB0EB2P4MMw4bvqGd02fTShXnJfg@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] perf tools: add parse events append error
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>, 
	Jin Yao <yao.jin@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Kan Liang <kan.liang@linux.intel.com>, John Garry <john.garry@huawei.com>, 
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VM9Fmn7y;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Mon, Oct 28, 2019 at 12:32 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Fri, Oct 25, 2019 at 08:14:36AM -0700, Ian Rogers wrote:
> > On Fri, Oct 25, 2019 at 12:58 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> > > > Parse event error handling may overwrite one error string with anot=
her
> > > > creating memory leaks and masking errors. Introduce a helper routin=
e
> > > > that appends error messages and avoids the memory leak.
> > > >
> > > > A reproduction of this problem can be seen with:
> > > >   perf stat -e c/c/
> > > > After this change this produces:
> > > > event syntax error: 'c/c/'
> > > >                        \___ unknown term (previous error: unknown t=
erm (previous error: unknown term (previous error: unknown term (previous e=
rror: unknown term (previous error: unknown term (previous error: unknown t=
erm (previous error: unknown term (previous error: unknown term (previous e=
rror: unknown term (previous error: unknown term (previous error: unknown t=
erm (previous error: unknown term (previous error: unknown term (previous e=
rror: unknown term (previous error: unknown term (previous error: unknown t=
erm (previous error: unknown term (previous error: unknown term (previous e=
rror: unknown term (previous error: unknown term (previous error: Cannot fi=
nd PMU `c'. Missing kernel support?)(help: valid terms: event,filter_rem,fi=
lter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter=
_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,conf=
ig,config1,config2,name,period,percore))(help: valid terms: event,filter_re=
m,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,fi=
lter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,=
config,config1,config2,name,period,percore))(help: valid terms: event,filte=
r_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umas=
k,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter=
_nm,config,config1,config2,name,period,percore))(help: valid terms: event,f=
ilter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,=
umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,fi=
lter_nm,config,config1,config2,name,period,percore))(help: valid terms: eve=
nt,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,=
inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_stat=
e,filter_nm,config,config1,config2,name,period,percore))(help: valid terms:=
 event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter=
_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_=
state,filter_nm,config,config1,config2,name,period,percore))(help: valid te=
rms: event,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,frontend,=
cmask,config,config1,config2,name,period,percore))(help: valid terms: event=
,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,in=
v,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,=
filter_nm,config,config1,config2,name,period,percore))(help: valid terms: e=
vent,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_n=
c,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_st=
ate,filter_nm,config,config1,config2,name,period,percore))(help: valid term=
s: event,config,config1,config2,name,period,percore))(help: valid terms: ev=
ent,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc=
,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_sta=
te,filter_nm,config,config1,config2,name,period,percore))(help: valid terms=
: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filte=
r_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter=
_state,filter_nm,config,config1,config2,name,period,percore))(help: valid t=
erms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,f=
ilter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,fi=
lter_state,filter_nm,config,config1,config2,name,period,percore))(help: val=
id terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_l=
oc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_n=
m,filter_state,filter_nm,config,config1,config2,name,period,percore))(help:=
 valid terms: event,config,config1,config2,name,period,percore))(help: vali=
d terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_lo=
c,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm=
,filter_state,filter_nm,config,config1,config2,name,period,percore))(help: =
valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filte=
r_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_no=
t_nm,filter_state,filter_nm,config,config1,config2,name,period,percore))(he=
lp: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,f=
ilter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filte=
r_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore)=
)(help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_t=
id,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,f=
ilter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,perc=
ore))(help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filt=
er_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_=
op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,=
percore))
> > >
> > >
> > > hum... I'd argue that the previous state was better:
> > >
> > > [jolsa@krava perf]$ ./perf stat -e c/c/
> > > event syntax error: 'c/c/'
> > >                        \___ unknown term
> > >
> > >
> > > jirka
> >
> > I am agnostic. We can either have the previous state or the new state,
> > I'm keen to resolve the memory leak. Another alternative is to warn
> > that multiple errors have occurred before dropping or printing the
> > previous error. As the code is shared in memory places the approach
> > taken here was to try to not conceal anything that could potentially
> > be useful. Given this, is the preference to keep the status quo
> > without any warning?
>
> if the other alternative is string above, yes.. but perhaps
> keeping just the first error would be the best way?
>
> here it seems to be the:
>    "Cannot find PMU `c'. Missing kernel support?)(help: valid..."

I think this is a reasonable idea. I'd propose doing it as an
additional patch, the purpose of this patch is to avoid a possible
memory leak. I can write the patch and base it on this series.
To resolve the issue, I'd add an extra first error to the struct
parse_events_error. All callers would need to be responsible for
cleaning this up when present, which is why I'd rather not make it
part of this patch.
Does this sound reasonable?

Thanks,
Ian

> jirka
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAP-5%3DfWqzT24JwuYYdH%3D4auB0EB2P4MMw4bvqGd02fTShXnJfg%4=
0mail.gmail.com.
