Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB3N63XWQKGQEET5KP2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE9CE7B6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 22:36:46 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id 6sf5646348oij.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 14:36:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572298605; cv=pass;
        d=google.com; s=arc-20160816;
        b=xjwJ6rC55NyIUp9wjyT1c7x9Hb74UGigvZeIA3IL0rDhG8JpynurtMxUrHkdgVb40V
         70sQ9XYDQ29xhKDWyQeWtu4M0t0ZavF0EFqod3S4urEifet61YplHF4pNfjGotgM63ey
         hwoPMGtCNnU6oYOeeOcnQSJr4MyaaQSC8u97snBbLH1DaoklpZ5g+iZxJkHDp+fj6bs3
         BPdzS+ogE9pqXYOrxn/XvfsdTq30h6hPlLrO/Wy4wxHC8yovZW6csPlci5g3FhYgumgZ
         KjjoVDBVChOfNmP678P8gKGit48h+7Obhq7tnVGdI0CVvvvcz89Ybd79d43/xWCRTuRU
         cBMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=KnGmhUiVShn1NFMBfxv2BFLz7FdHZwP987bZgVe2y1Q=;
        b=w924t5fz0OMPLMGI+9EFf3KDogUElgd2pTUFZixkk0o2phkae0M6c7EG3hsX0/+pVZ
         iRo536dalKF/8GYJO992lJT3nme4fMcMnyTqyLxIE4hnMB+NBygguchCAsYcG8zD+V+V
         QPkRdQ4YrSxOnVxbrlXDSTH2xYpz600Ue+3x9QOVM2VVLn968Zi6Vdj0MNg7bTcHXvlL
         VViyBiV5xq0jKgwOSs1gXF6G/E8RuerAWXYUQzOtZcriiZrDv1g0coazqPp/Ximf/Vlq
         d9TdbnLulFEio8OBEyLxRdBw20ubMPRHKgpi4Zn9jSqot8UHdKAlu9Hy9jUAFxVkThXS
         sVDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="VRe/8OtZ";
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KnGmhUiVShn1NFMBfxv2BFLz7FdHZwP987bZgVe2y1Q=;
        b=knO4zAs4REGXTWAe7CnsYTd55xuimbjCaePVBsxh8L8sZFX9I8DsOl6B0TK3geXHY6
         HxEdAicrikATDLeYHNXhZ31lVV1hjCXptJWHA/vKyyIVqnFTQ9sK1WEmYGfAh4cMAJqt
         k786DgE+2f0iSYRpBZHa6Egdoz6TwZ0o/mB772LAfeRDS0CTt2zX4V91B0JHMs2mUH/U
         pxjfVAUYkqzzPjEt1NiofL+d3pH9Y2mPD0NKd7o7zmP6t+1E6uuMcBEqZyeHuDtZJ3oR
         4inYbosFHaeWlUbqzYOo3EdXGoxKUP08yb7qJUlpcPP4AWjNRJ9t6CchjUX5GxaxepN8
         UNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnGmhUiVShn1NFMBfxv2BFLz7FdHZwP987bZgVe2y1Q=;
        b=ZkLKb6U5o5L71BwOiHTnJVdyOFWBxIHvVKFU3hu5oqj5G2bVYDbvaHe2vXeBNeaIXS
         7RndUP+gp5jsdZetDDh0+uirsXhdplRtqYpn8cZ/BdmVQZCJW8MzQbKNgvua04hM5Qpd
         rbMkMLh2kCrEAS4N+2az7pOGnQw3BQ8y+JiFzMl8RywzRTne3GVnB2Y94J34OUsXBCfW
         MLRKEhdiDc0oDCb2FLz444ZRsu9GQ2JhQzKT0HN79aBKpy/3YLgvMqipuxcVmxegJ2u5
         /AwyTBq3M/RIBtc9MntmOcTh8JrlrFW7A5UmWjq4lQZPaIznuDiW9sp4U4PD0P5qNR2x
         Au0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWHlyPzlyG84ZOzVP7xyAsAKLTV+O5JCUB6NrmTm+fQVElJKCUg
	+UTfvUKee9PmNykN7vXngW8=
X-Google-Smtp-Source: APXvYqycotJke6D45p0TEVrCvOJxdKw4q16x2MrbUtc7Rv7OswhQp6npycIEGUgZmc7SeCdGQZpo6A==
X-Received: by 2002:aca:c50f:: with SMTP id v15mr1217369oif.5.1572298605072;
        Mon, 28 Oct 2019 14:36:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1211:: with SMTP id 17ls4114768ois.4.gmail; Mon, 28 Oct
 2019 14:36:44 -0700 (PDT)
X-Received: by 2002:aca:5116:: with SMTP id f22mr1230721oib.30.1572298604684;
        Mon, 28 Oct 2019 14:36:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572298604; cv=none;
        d=google.com; s=arc-20160816;
        b=rUgEOxe4Imm6i2gisCI6dgdYDgVBizqjSVctecwFrWO+1TpCWGT46BNV6/AwDUMklM
         OOLYubJtt8PLXD/jGBPhzee00gggG8LLGG8koAeomK3F8ID5BIxejAdxE039B9eGsRCe
         O35xaIpuaSCVmpgD6Ge60h07mflqHd0AvXSnHdgfC3mts7AMl3JXw5CHKYqRKwtTln5H
         9JLMtLCT/pRYOJ+Y7NIspaKFq7tHjxcA1jw7G0EXyqA7gV4z7DOJa8VwyPteaTspCkgk
         yNuY+0j4M2JiKchWEv8IOBLcfpcm6oSvSnIzYgNzsf9N7RLhNta0Plq1R2Xxy7bmF1VL
         gdgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=Brfy7mrD97bCpvfB3FBCa9L0t2S1CRB6c2tZSeFAi8A=;
        b=L5EWa0bqwPCIOGcXA6S5M2EOVvNlt17RSKC/FwPnk97/v/E6BXP79EWtJlLFB9Ibc8
         Mq6M3Z/r38eZMA1quBCSrJEoWUGfu+0RbV4xtM+Rdgb/aC7c1w3Y597NMEDRQFkTvkH2
         UqJB6rnwBUqVYbAB3mLP29F92/MAUCDw8gRxyAnFdzb29F1fVBt2iKcpMO9P94U0rdLL
         mEOumZk2E88qRvdjLIb3lTgDTHeFXb59iojqUlfBKmvKGWXWCRc0o/YUH6YMQJz1RhvT
         9V9WuEU7Qi21KXGsT3YiZ7Tv/d/N5BBgelXgjL7qzWc6BWb3k7dBbYbnS/9XQWeqxrkU
         oXaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="VRe/8OtZ";
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id l141si571871oib.4.2019.10.28.14.36.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 14:36:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-ae2TBSuRM5GBbekG5sh_Wg-1; Mon, 28 Oct 2019 17:36:39 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C11DF801E5C;
	Mon, 28 Oct 2019 21:36:36 +0000 (UTC)
Received: from krava (ovpn-204-45.brq.redhat.com [10.40.204.45])
	by smtp.corp.redhat.com (Postfix) with SMTP id BB6515D9C8;
	Mon, 28 Oct 2019 21:36:31 +0000 (UTC)
Date: Mon, 28 Oct 2019 22:36:30 +0100
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
Subject: Re: [PATCH v3 1/9] perf tools: add parse events append error
Message-ID: <20191028213630.GE28772@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com>
 <20191025075820.GE31679@krava>
 <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com>
 <20191028193224.GB28772@krava>
 <CAP-5=fWqzT24JwuYYdH=4auB0EB2P4MMw4bvqGd02fTShXnJfg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP-5=fWqzT24JwuYYdH=4auB0EB2P4MMw4bvqGd02fTShXnJfg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: ae2TBSuRM5GBbekG5sh_Wg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="VRe/8OtZ";
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

On Mon, Oct 28, 2019 at 02:06:24PM -0700, Ian Rogers wrote:
> On Mon, Oct 28, 2019 at 12:32 PM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Fri, Oct 25, 2019 at 08:14:36AM -0700, Ian Rogers wrote:
> > > On Fri, Oct 25, 2019 at 12:58 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > > >
> > > > On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> > > > > Parse event error handling may overwrite one error string with an=
other
> > > > > creating memory leaks and masking errors. Introduce a helper rout=
ine
> > > > > that appends error messages and avoids the memory leak.
> > > > >
> > > > > A reproduction of this problem can be seen with:
> > > > >   perf stat -e c/c/
> > > > > After this change this produces:
> > > > > event syntax error: 'c/c/'
> > > > >                        \___ unknown term (previous error: unknown=
 term (previous error: unknown term (previous error: unknown term (previous=
 error: unknown term (previous error: unknown term (previous error: unknown=
 term (previous error: unknown term (previous error: unknown term (previous=
 error: unknown term (previous error: unknown term (previous error: unknown=
 term (previous error: unknown term (previous error: unknown term (previous=
 error: unknown term (previous error: unknown term (previous error: unknown=
 term (previous error: unknown term (previous error: unknown term (previous=
 error: unknown term (previous error: unknown term (previous error: Cannot =
find PMU `c'. Missing kernel support?)(help: valid terms: event,filter_rem,=
filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filt=
er_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,co=
nfig,config1,config2,name,period,percore))(help: valid terms: event,filter_=
rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,=
filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_n=
m,config,config1,config2,name,period,percore))(help: valid terms: event,fil=
ter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,um=
ask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filt=
er_nm,config,config1,config2,name,period,percore))(help: valid terms: event=
,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,in=
v,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,=
filter_nm,config,config1,config2,name,period,percore))(help: valid terms: e=
vent,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_n=
c,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_st=
ate,filter_nm,config,config1,config2,name,period,percore))(help: valid term=
s: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filt=
er_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filte=
r_state,filter_nm,config,config1,config2,name,period,percore))(help: valid =
terms: event,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,fronten=
d,cmask,config,config1,config2,name,period,percore))(help: valid terms: eve=
nt,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,=
inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_stat=
e,filter_nm,config,config1,config2,name,period,percore))(help: valid terms:=
 event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter=
_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_=
state,filter_nm,config,config1,config2,name,period,percore))(help: valid te=
rms: event,config,config1,config2,name,period,percore))(help: valid terms: =
event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_=
nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_s=
tate,filter_nm,config,config1,config2,name,period,percore))(help: valid ter=
ms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,fil=
ter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filt=
er_state,filter_nm,config,config1,config2,name,period,percore))(help: valid=
 terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc=
,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,=
filter_state,filter_nm,config,config1,config2,name,period,percore))(help: v=
alid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter=
_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not=
_nm,filter_state,filter_nm,config,config1,config2,name,period,percore))(hel=
p: valid terms: event,config,config1,config2,name,period,percore))(help: va=
lid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_=
loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_=
nm,filter_state,filter_nm,config,config1,config2,name,period,percore))(help=
: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,fil=
ter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_=
not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore))(=
help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid=
,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,fil=
ter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percor=
e))(help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter=
_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op=
,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,pe=
rcore))(help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,fi=
lter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_al=
l_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,perio=
d,percore))
> > > >
> > > >
> > > > hum... I'd argue that the previous state was better:
> > > >
> > > > [jolsa@krava perf]$ ./perf stat -e c/c/
> > > > event syntax error: 'c/c/'
> > > >                        \___ unknown term
> > > >
> > > >
> > > > jirka
> > >
> > > I am agnostic. We can either have the previous state or the new state=
,
> > > I'm keen to resolve the memory leak. Another alternative is to warn
> > > that multiple errors have occurred before dropping or printing the
> > > previous error. As the code is shared in memory places the approach
> > > taken here was to try to not conceal anything that could potentially
> > > be useful. Given this, is the preference to keep the status quo
> > > without any warning?
> >
> > if the other alternative is string above, yes.. but perhaps
> > keeping just the first error would be the best way?
> >
> > here it seems to be the:
> >    "Cannot find PMU `c'. Missing kernel support?)(help: valid..."
>=20
> I think this is a reasonable idea. I'd propose doing it as an
> additional patch, the purpose of this patch is to avoid a possible
> memory leak. I can write the patch and base it on this series.
> To resolve the issue, I'd add an extra first error to the struct
> parse_events_error. All callers would need to be responsible for
> cleaning this up when present, which is why I'd rather not make it
> part of this patch.
> Does this sound reasonable?

yep, sounds good

jirka

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191028213630.GE28772%40krava.
