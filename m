Return-Path: <clang-built-linux+bncBDPPFIEASMFBBGEYQLXAKGQEEQHZ4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6CBEE9BE
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 21:37:44 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id f8sf8102168wrq.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 12:37:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572899864; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQd141vjSKoLBFxp7BCuQLgi24QZiiNa2Gkd/+rE3BD6kh6EdbpC4xukHpyyG7a90g
         xLfq98aXRUOFHlxNaCXSi2ehMl94RjtOTcpfBamnZ+Elt+/89o/XXe96kJxbyjWtV4oR
         Isv2LoD5rVSH7HRkVVAkT2oQK1S/FpNojza0DmkuB98t4how7sK2dUegPbC/d4J7DYJU
         v/q+ATJLqa2rZ8YbPWdONjk6iixNTMQGIzTmPDb7oRx/n2CZJdBm0PwwTsQcOrEM/gKi
         FV7ch94TYx6m4icPfPx43vmN6Ge+BU6JraIeHy2l/bZDmgyCRBkaIIFz8IREUTk30xaj
         mWgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qSJoMuw5ij9pRAl5Te4+ymZDHPkeQeUAZBN5vGqTFJQ=;
        b=vcTFECUNU4YQ+zEg3K3xkuWC4cUwp5S1nLvtR06iI0dNdRFOM1vUXegatWwzrrfajw
         /U5Gs9w+OEA9qE7LzCmIel0i+LxvD9BRNrRikSiGEhsD3EuViWbbUemof0GTOaCoiEpH
         gAGXpiYhRgT7qQRN+TDX2dmrLt3NOps6vEMBIXG4/slQzQNK8UPsUEsg8Aw99JumPAEM
         Wlj1tEIj2luOWNyWR6mBPOQDavG8Hjc8fOv/eAuCdMnivsE7+Eee688Y8HcVa0KNoqpD
         BwJ5wX9YLw/Uc7WNV61WMtOnVnMS/Gk0rJWaykovDTcLw+7AXCg85mfsfQEAp3ZgOUWM
         Y7pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="I0S/Z4qe";
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qSJoMuw5ij9pRAl5Te4+ymZDHPkeQeUAZBN5vGqTFJQ=;
        b=R6pWyrQGisihz4Ut0iTh9NL6Q0utH84JIU0cUWegB22IWbFWt+wqLHN7SfWVMrmNfs
         yWOZYQp1UVJltaQ0dPk6alhD8bRMF7qz/LwfrkeDc6ZrDHwofOSMtzOLLj2zIKtDwTTJ
         7ov7DuFQJ/gPb00T7gzAeL11RQ/K83gHoYtcL4hookb+5C68LFAdWp/FP8TTx31YUBgi
         /8T0v+UxXlH+QKxQua70YwH2QPNr0Ft6a0VMSsGHTtwHqb+bw1x23Lry9jEN7ENdnmsW
         UerfwPShx6BszJuQbSZqLYVP3C2fMeu2gXNOAdu5pOxs+M++GZgPSnzuETRhKz/VPL7H
         VB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qSJoMuw5ij9pRAl5Te4+ymZDHPkeQeUAZBN5vGqTFJQ=;
        b=TOTLpUtPRMP9ugdQeIL6aiNDBOdFubzIGOjpzZgKzDDKmgEE2BNd2MR9qViLYu85id
         FHRNw8HHQ8ZZvdOApNGDCM9RAoj/k3pxFRDoqKAsSbAYlJQcpl7MRdHy0vY6tUnC2IFT
         VoYmfidlHdyRRIRoy/y4sYiePD8V8jZmBOkPtCtzPVKL9zL2vLu/NW/JZOmXsvwooPU0
         g63GlYJfxlx5lHnkSMFru4smtfmZJAEVpRGdUDzwLf3Zj3zom42SQ8mlIyQToxOsywGv
         rfGPO3RmsehLrJcsZX0V75P9SDYZWWD+LLYkrvu0rpmGLTmAgNXEgeuJleNYcnxvUaJu
         kaLw==
X-Gm-Message-State: APjAAAUtbZTyOwUIqaRIVz5Rcf8SKlzxQ8nZNCSGTaGrbXfwAoHJJrBE
	pYYhDNrqWCedGiPDwr9S1z0=
X-Google-Smtp-Source: APXvYqwMPk1nXJjhGu1VWSbLGi//UzrB8jkBq/UAuPlntjiKeKl0Q/sTmtxWnkLbmjpXnfyIKky6MQ==
X-Received: by 2002:adf:e68d:: with SMTP id r13mr11282583wrm.199.1572899864307;
        Mon, 04 Nov 2019 12:37:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:690e:: with SMTP id t14ls14526079wru.2.gmail; Mon, 04
 Nov 2019 12:37:43 -0800 (PST)
X-Received: by 2002:a5d:6b04:: with SMTP id v4mr7778672wrw.219.1572899863801;
        Mon, 04 Nov 2019 12:37:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572899863; cv=none;
        d=google.com; s=arc-20160816;
        b=BAv4W4/cPnR9oAMozsV66JDFHRc+gzPI9RV3dOozqulYhQ+gSHFy5jwVemT12CzhdF
         ZmcEeCbAI9HiN3t83fUCh5g6G393QbMRa9e/hPews3iwtXJAKWO3eZAFCBlwMzalbsEe
         BA6NRgnaq6z9mmkhkl6vVePG/IzjYrFOWFC2onufqo4btiqGphuRkvwLfBsGw6hptV4M
         +fSnS+4pko6k66s2iZSnFEqhzBeFtFysogS3K6NnNzRj+vD89Jz8RrZUoX7luf5bEj6u
         KZXKBlizmc9qvEip+qShKs3MONjWevvMd8GfxDzOKpwxeEgYvG57YGlm1dsE3Jh1xiNC
         Gn9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GpUcO+HZZVMYH5LohMRACc2HKfc/rPPQs8QWFr3WsFY=;
        b=QWlPDnYf0zQhJKmm5BNZiYJvkaxr0+HwfmIepN8sM4M0TNhgSvZCKqtc/8zRztVqLQ
         X8AbGiQk2UbiZaGLDJy1qP6W+Ol/DoA6IlWayNyl3Mfr/Ck3zMNCjZbJBtStmGb9E807
         AVfhyE8/PReUCcYL987W3BOoCRUxd8cHb1bAvQp50gG75Jb2L6f5+dST41kN0LH6EOeF
         gR1G3Kb3R/7LJPDNeETtrhL5l6kUI+kFr7d/WSQmejtuEV+oMBc8qYtsOMP5WJ+8mDf4
         KW5skJXnMhl/sTkNSQfLNo3jVYySyBD5to0p10VeiMEbTJYS39Zm4+8Lo6XMhAQAcaKR
         V8gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="I0S/Z4qe";
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s126si1333983wme.1.2019.11.04.12.37.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 12:37:43 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id p4so18660035wrm.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 12:37:43 -0800 (PST)
X-Received: by 2002:adf:fd4b:: with SMTP id h11mr6821093wrs.191.1572899862821;
 Mon, 04 Nov 2019 12:37:42 -0800 (PST)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com> <20191025075820.GE31679@krava>
 <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com>
 <20191028193224.GB28772@krava> <CAP-5=fWqzT24JwuYYdH=4auB0EB2P4MMw4bvqGd02fTShXnJfg@mail.gmail.com>
 <20191028213630.GE28772@krava>
In-Reply-To: <20191028213630.GE28772@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 12:37:31 -0800
Message-ID: <CAP-5=fVmw1xT+PuuV+C4Ma_PYPt_jWKB6DyCscd7FWui39L_Rg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b="I0S/Z4qe";       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::444
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

Thanks! This is part of the v5 patch set, specifically:
https://lkml.org/lkml/2019/10/30/1001

Let me know if there's anything else blocking this. Thanks,
Ian

On Mon, Oct 28, 2019 at 2:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Mon, Oct 28, 2019 at 02:06:24PM -0700, Ian Rogers wrote:
> > On Mon, Oct 28, 2019 at 12:32 PM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Fri, Oct 25, 2019 at 08:14:36AM -0700, Ian Rogers wrote:
> > > > On Fri, Oct 25, 2019 at 12:58 AM Jiri Olsa <jolsa@redhat.com> wrote=
:
> > > > >
> > > > > On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> > > > > > Parse event error handling may overwrite one error string with =
another
> > > > > > creating memory leaks and masking errors. Introduce a helper ro=
utine
> > > > > > that appends error messages and avoids the memory leak.
> > > > > >
> > > > > > A reproduction of this problem can be seen with:
> > > > > >   perf stat -e c/c/
> > > > > > After this change this produces:
> > > > > > event syntax error: 'c/c/'
> > > > > >                        \___ unknown term (previous error: unkno=
wn term (previous error: unknown term (previous error: unknown term (previo=
us error: unknown term (previous error: unknown term (previous error: unkno=
wn term (previous error: unknown term (previous error: unknown term (previo=
us error: unknown term (previous error: unknown term (previous error: unkno=
wn term (previous error: unknown term (previous error: unknown term (previo=
us error: unknown term (previous error: unknown term (previous error: unkno=
wn term (previous error: unknown term (previous error: unknown term (previo=
us error: unknown term (previous error: unknown term (previous error: Canno=
t find PMU `c'. Missing kernel support?)(help: valid terms: event,filter_re=
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
rms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,fi=
lter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,fil=
ter_state,filter_nm,config,config1,config2,name,period,percore))(help: vali=
d terms: event,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,front=
end,cmask,config,config1,config2,name,period,percore))(help: valid terms: e=
vent,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_n=
c,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_st=
ate,filter_nm,config,config1,config2,name,period,percore))(help: valid term=
s: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filt=
er_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filte=
r_state,filter_nm,config,config1,config2,name,period,percore))(help: valid =
terms: event,config,config1,config2,name,period,percore))(help: valid terms=
: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filte=
r_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter=
_state,filter_nm,config,config1,config2,name,period,percore))(help: valid t=
erms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,f=
ilter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,fi=
lter_state,filter_nm,config,config1,config2,name,period,percore))(help: val=
id terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_l=
oc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_n=
m,filter_state,filter_nm,config,config1,config2,name,period,percore))(help:=
 valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filt=
er_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_n=
ot_nm,filter_state,filter_nm,config,config1,config2,name,period,percore))(h=
elp: valid terms: event,config,config1,config2,name,period,percore))(help: =
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
percore))(help: valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,=
filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_=
all_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,per=
iod,percore))
> > > > >
> > > > >
> > > > > hum... I'd argue that the previous state was better:
> > > > >
> > > > > [jolsa@krava perf]$ ./perf stat -e c/c/
> > > > > event syntax error: 'c/c/'
> > > > >                        \___ unknown term
> > > > >
> > > > >
> > > > > jirka
> > > >
> > > > I am agnostic. We can either have the previous state or the new sta=
te,
> > > > I'm keen to resolve the memory leak. Another alternative is to warn
> > > > that multiple errors have occurred before dropping or printing the
> > > > previous error. As the code is shared in memory places the approach
> > > > taken here was to try to not conceal anything that could potentiall=
y
> > > > be useful. Given this, is the preference to keep the status quo
> > > > without any warning?
> > >
> > > if the other alternative is string above, yes.. but perhaps
> > > keeping just the first error would be the best way?
> > >
> > > here it seems to be the:
> > >    "Cannot find PMU `c'. Missing kernel support?)(help: valid..."
> >
> > I think this is a reasonable idea. I'd propose doing it as an
> > additional patch, the purpose of this patch is to avoid a possible
> > memory leak. I can write the patch and base it on this series.
> > To resolve the issue, I'd add an extra first error to the struct
> > parse_events_error. All callers would need to be responsible for
> > cleaning this up when present, which is why I'd rather not make it
> > part of this patch.
> > Does this sound reasonable?
>
> yep, sounds good
>
> jirka
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAP-5%3DfVmw1xT%2BPuuV%2BC4Ma_PYPt_jWKB6DyCscd7FWui39L_Rg=
%40mail.gmail.com.
