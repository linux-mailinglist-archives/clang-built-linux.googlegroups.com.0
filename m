Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBVUE3XWQKGQECBQCATY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC06E793E
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 20:32:40 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id p18sf2453996ilm.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 12:32:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572291158; cv=pass;
        d=google.com; s=arc-20160816;
        b=XlbeyfnC8nIltEiV+Rk++t/2vWtlSp8IjWqQND+nL5o1I1QJA6ZNYLi22RzoSaXm5R
         8Q1vBgTI9Y2Fe0lUYoxvaaiE0GfCFY29lnk7Su3zprE48BkUXaHPEv2HTho5z9XWuABM
         WeTrSD9mDCATICukMuKW2PzKvrguOP23OY9uISG6korC8qgU29hwJBL2AHlHiQN+CuIc
         aSA69XYl4tArAAyqKsv0dq30rdZ9qFF+VBhFcZQ2lx0EK4/CDtyzOJrha8OtV55ZXvKC
         wlZa5WnDtojos+9x647m49cWWYw8tz5HpUWDBusXKCjjf+xs3wwQMagWVG2H3HO4w/CK
         y/gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fDbLN+7JwkUUXIuuj7+8EcquVRlr3WrMl9IKkaL81wU=;
        b=uHeBHttV+ySjyHqyXd7MjyNHthCDq2cyWoMZTyjnn+HJ6wbLOFalM4YQY+5AXXAqBN
         bA6uWYcsaOkRlKAcwbKxlUBauEX7M6+SBpzZvjpd9jm+suy9EEhJh8UngiZfGpY3KMYf
         QVt9Qw5n8kT6P5JTVgxmUGnsnRwBMAdOJR85OYz9SQ36bQdtk0fkQ+nBSIgUii8iXd3W
         HqZcdOPYIyJQcFulrq+3ZpFFYVoQCH4ILqMDXNTze3U81sDUPzJgzt1WurTMt5xD3+dM
         bzSyld4yBsC9eHKA0wwTmLjBVYxTufPa2hf8ujAZGb84A91OEf0xkm94nMEjW32kFZr9
         OrWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="aP/LBvmi";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fDbLN+7JwkUUXIuuj7+8EcquVRlr3WrMl9IKkaL81wU=;
        b=aFwkW6cr8gWrkfCwcHi/UrgDRJ1HtpV0XU74MyhncRf28jqnK6yCtUUEYW4dvwcf/a
         OWEf4Yb4qk/kT10Wao+Zb6oPKDuOBcpiwTexiD6BJzMW8rU1P5FejWJgvjKVzm/SycIy
         z7tZXt87FvRybiTyakz3v43sQQjIpg1xzSt9Np6JT3G8IgPmRarWeCXaMCiFa2qE0b2N
         VUnctVKos+oBLGZOYamV44zL07gR09U7SBjnIUuW+xEO1vnkw0gnYniVaDn1UsjnDyi+
         3gQuQV1jv/ZPHbmaM4Hv29P5cgMwCTnCH8Wh06MpUMc+VRYW1VRqjtWddl5XsRlLZXM/
         JYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fDbLN+7JwkUUXIuuj7+8EcquVRlr3WrMl9IKkaL81wU=;
        b=Q7eFj4JjFAvKOMawPekrMRZhljx2A8xrY2e/XF1IGtkv5UOu7fjcNvWw32YBkuvPw8
         jRQpAZYru6Bgt2LrJFan2RfDsNmMvSPSOfXEiCMIiBmbKaM4rI/A7/JMgi8WkV2DMd6+
         lclgkKBMgO/Tg02kpitA2MPyKs3+byk2bRn7bZMt6hoKbGFVE/6fzJx94XAHfD4xNFUb
         WDRYV49PiIkW15PSzQDTAmF9nR9UDnhXxyUXoIm521OwctoG4aFSN8xdJE6DUY5+4x/v
         MCYJ9bmifLGF513R7mz5bXAaH37OJgrvCPzuIFpyBdwLV852HaofEzzkIQhuchfNypgl
         CtUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZu+2g4evR8Jg3W4DcnLFsEQQxUyhiJ2Bdd8sNnRWnGrYnnlFS
	EVoYKPfGGDjArX+6Gxm17sQ=
X-Google-Smtp-Source: APXvYqw/6CLBel05EFC2qsnRE/aXyVmVwkSpqaGt0LZ9FCxHC4gOCu+Ox+v13e4Lm8+7rCJ7laqA+g==
X-Received: by 2002:a6b:fb0c:: with SMTP id h12mr12293841iog.239.1572291158795;
        Mon, 28 Oct 2019 12:32:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls3180900ily.11.gmail; Mon, 28 Oct
 2019 12:32:38 -0700 (PDT)
X-Received: by 2002:a92:6910:: with SMTP id e16mr21591096ilc.186.1572291158420;
        Mon, 28 Oct 2019 12:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572291158; cv=none;
        d=google.com; s=arc-20160816;
        b=pnylKzytiRkc6Mc5Yr+QKyoSo4e8bzGw71q47ZQVZWNzp8KLCvJzPBAO25H9cfUEG4
         JGAXh2N37t1r4X7GcwTkUwPMR7iPHb6VavX9LLfESrZ3bS7eCnsmunZhvFcv+SZdLMNO
         z1pKyz0qLbrb9OymboYAnjXYfI/TTSdK1CR9G1PavGUJ78B9TjFT4uFE4XcL+YCOdWbA
         Y6jRYGXh+Fx1bKgs7m+el3F3L1/7E8Sh78alRLUfbunCII8Hj3RPe0w0MLBq66n0iWQd
         TlxTolFA0z+qU68hVzd4HXZ4trgO9JqgYn02vMOdQNAcoow2HlKIp3rIHzOeymQ/4gz1
         5MQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=YIoVA/fFJrGQ97aiYNbpnayE4EinXi0s2gJ+zmT21Gs=;
        b=sPAma/Mu8XDY+4vLjrRxsy6yeziweeN5ruRvfIZGjznixzJdHLy/i8n2jCKP3UUYJ1
         UFELQSMh23TbECrvkmbpkuTKhh37eKSFfphORwV/vVq7kopME2GoAYwLqxuPvk+wMrSN
         XobrVKCXkNwSBdGWSK8B8x/KFL9x/ex/VhrnKxs1Fjn+tNGtT7SZx8ZrOQffiUoWEKKb
         3yXcDnu9nX3SCJtO7G3vM8ezf7Pg+j29577D6W8wicMjtZeGkrv1zPM18UEL1d1Xye2H
         m814+IkfHgmlTLXgyn4I4HJ+kODVF0yv/zIhZ1eCCSBv3Usl2pErB7ZnNuIw7n/ebkyf
         mqMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="aP/LBvmi";
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id 75si632519ilw.3.2019.10.28.12.32.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:32:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-NOa2wEhTPFy97C6tgrEGpQ-1; Mon, 28 Oct 2019 15:32:34 -0400
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D3EB7107AD28;
	Mon, 28 Oct 2019 19:32:30 +0000 (UTC)
Received: from krava (ovpn-204-45.brq.redhat.com [10.40.204.45])
	by smtp.corp.redhat.com (Postfix) with SMTP id 7AD9E46;
	Mon, 28 Oct 2019 19:32:25 +0000 (UTC)
Date: Mon, 28 Oct 2019 20:32:24 +0100
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
Message-ID: <20191028193224.GB28772@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com>
 <20191025075820.GE31679@krava>
 <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: NOa2wEhTPFy97C6tgrEGpQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="aP/LBvmi";
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

On Fri, Oct 25, 2019 at 08:14:36AM -0700, Ian Rogers wrote:
> On Fri, Oct 25, 2019 at 12:58 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> > > Parse event error handling may overwrite one error string with anothe=
r
> > > creating memory leaks and masking errors. Introduce a helper routine
> > > that appends error messages and avoids the memory leak.
> > >
> > > A reproduction of this problem can be seen with:
> > >   perf stat -e c/c/
> > > After this change this produces:
> > > event syntax error: 'c/c/'
> > >                        \___ unknown term (previous error: unknown ter=
m (previous error: unknown term (previous error: unknown term (previous err=
or: unknown term (previous error: unknown term (previous error: unknown ter=
m (previous error: unknown term (previous error: unknown term (previous err=
or: unknown term (previous error: unknown term (previous error: unknown ter=
m (previous error: unknown term (previous error: unknown term (previous err=
or: unknown term (previous error: unknown term (previous error: unknown ter=
m (previous error: unknown term (previous error: unknown term (previous err=
or: unknown term (previous error: unknown term (previous error: Cannot find=
 PMU `c'. Missing kernel support?)(help: valid terms: event,filter_rem,filt=
er_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_o=
pc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config=
,config1,config2,name,period,percore))(help: valid terms: event,filter_rem,=
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
s: event,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,frontend,cm=
ask,config,config1,config2,name,period,percore))(help: valid terms: event,f=
ilter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,=
umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,fi=
lter_nm,config,config1,config2,name,period,percore))(help: valid terms: eve=
nt,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,=
inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_stat=
e,filter_nm,config,config1,config2,name,period,percore))(help: valid terms:=
 event,config,config1,config2,name,period,percore))(help: valid terms: even=
t,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,i=
nv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state=
,filter_nm,config,config1,config2,name,period,percore))(help: valid terms: =
event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_=
nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_s=
tate,filter_nm,config,config1,config2,name,period,percore))(help: valid ter=
ms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,fil=
ter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filt=
er_state,filter_nm,config,config1,config2,name,period,percore))(help: valid=
 terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc=
,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,=
filter_state,filter_nm,config,config1,config2,name,period,percore))(help: v=
alid terms: event,config,config1,config2,name,period,percore))(help: valid =
terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,=
filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,f=
ilter_state,filter_nm,config,config1,config2,name,period,percore))(help: va=
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
rcore))
> >
> >
> > hum... I'd argue that the previous state was better:
> >
> > [jolsa@krava perf]$ ./perf stat -e c/c/
> > event syntax error: 'c/c/'
> >                        \___ unknown term
> >
> >
> > jirka
>=20
> I am agnostic. We can either have the previous state or the new state,
> I'm keen to resolve the memory leak. Another alternative is to warn
> that multiple errors have occurred before dropping or printing the
> previous error. As the code is shared in memory places the approach
> taken here was to try to not conceal anything that could potentially
> be useful. Given this, is the preference to keep the status quo
> without any warning?

if the other alternative is string above, yes.. but perhaps
keeping just the first error would be the best way?

here it seems to be the:
   "Cannot find PMU `c'. Missing kernel support?)(help: valid..."

jirka

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191028193224.GB28772%40krava.
