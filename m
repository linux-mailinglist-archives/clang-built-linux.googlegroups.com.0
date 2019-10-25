Return-Path: <clang-built-linux+bncBDPPFIEASMFBB2NCZTWQKGQEWCASBQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBBE4FE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 17:14:49 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id w24sf1632994edx.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 08:14:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572016489; cv=pass;
        d=google.com; s=arc-20160816;
        b=QicYNI0cH+1gow2+Rfsdb2kMcaCQNVYldZ8zeibL3gDwYhrIVa3hhfnf+m8kBN7rpZ
         vqT6aq16YeUpzQDpzo/zglCISMd0y55Wfhh7/WUR5o4/RonKdJbNgsZp3hsPRaZvxOXh
         yLNXlqVcMIJhAGkT3qU3QH3DGb0DDXWMtOhRmDr2cMwV73U2HnjTd65U2iw4ertyyFKw
         yq+2ByFHlHbD5Z3rMP+cr+dJGXtREqCkmQ5KbLMSvAI7xrcJBBnv8btaqDAkeTCjIjrX
         CrepKRupc+aNUR53N89vBaZGpQ43O7sSjbqJxWQHO9D+Dh/aVZzEtnVqwmrFTkHnymH+
         Uh8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hZeIncGOaVyOX7Fsvlsnfdqm72QeQJWks8bPwizvrjQ=;
        b=JWUJ6/+LsPa6tiQGR5/EFaf2SyPKXcLyAI92dLFyvBlLNkVViTfQ7KxZKb0Vc2ggu9
         IF0/cTq5ajIZW1e1ju6Vp7Bk3ofNy0dCDDD9hGXPXyiVm5lgfzxRwN5RM484BKIpJbm9
         iP8v8/NO5Z5qsvdzAMQ9p565ItwwUkDTJA1K2vPw9kbxcQdYNBqiOKA26KJwWQ6HYaxp
         SztHZXRZuQIRbMWs/dAXC7/StgoFza9W7pemeQ6rvJpwBuVmxHpyPkImpYFMLswfyHjY
         wrkNLVOfN73y12n8QxANx5sA3mi4aevHsnyi3Lcj8NdrhMiaiFXPdG8XJ0RlQ9aGjtCo
         ehAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HTlq9o3+;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hZeIncGOaVyOX7Fsvlsnfdqm72QeQJWks8bPwizvrjQ=;
        b=IvUw8yTgGNHn65khbQyXPBTNPnO1aYzYoU0y31WRFvts8R6itYCEgJnjdSyzpegeJl
         enOZz/y8oj6Z8qrbSJXjLuA4/9YhjQWqsVQXaDwnnYSSSBiNCw8BL1JaqG8UGMzkDcUB
         Ln3E2iqH4bJzSWR9soseIgQe2cN1wOkP8TqvqpaiUoh6Vb3Z6azDadacRv87aai3vBbi
         nhTrkxYnWTAqvkCpsB1XjzdnZmRF5303X8UAKC43klkcjpXIvoOVnLMmx9nOwxEQJIx4
         OwFSWcvSM/iZKtHholazq3VcOeMIISMi9yExN/lSPduKx3Jq4ciViHI9PIU4usbmrO5d
         JuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hZeIncGOaVyOX7Fsvlsnfdqm72QeQJWks8bPwizvrjQ=;
        b=IFf5Jbsuy+w1neMkV7d+WpdqhPBv1uYI4FT/m4yzKePFriscWek4quSQ+3hppRvyDB
         RJzWHANbGCHWHBck1BgrCHeJSnPoOTtAUtwTO9FRVSoAlkDJAEpfalrQUI0O2QcSQksz
         a24tRTR8lInTWuLj0vNEMsVJM2CbpoDWS7rOQHPM2Y1MgyWtwWvNC5nzaSnm6snibrDs
         bmu1Z0QMF6eG4hzZoQ8B6AVjiFXfmWk7Ypl6ImKmkv18lwn2bc/WztRaALah/U1q0/NB
         q5C7t4IFJwGHRPmMyTdLe+qf1UyZFy5157GpXEJGtRpnqPR9vb4VwGRwMX6/R5aA73Ia
         VFzw==
X-Gm-Message-State: APjAAAXFp7jDh9qohUkrkvUwi7h0PNiVwN4BvRcHwwTT1F3GJtYDjIid
	2ZExyKvgpLtZWLiPcbmnqKA=
X-Google-Smtp-Source: APXvYqwR//1Xqu4lniJudhT2oXGrhPGByc7WSgD4HYdq+wQn5dYu4fcRRLVOUGB9P2819m4sI/7USw==
X-Received: by 2002:aa7:cd79:: with SMTP id ca25mr4570008edb.33.1572016489125;
        Fri, 25 Oct 2019 08:14:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d98d:: with SMTP id u13ls2336343eds.12.gmail; Fri, 25
 Oct 2019 08:14:48 -0700 (PDT)
X-Received: by 2002:a50:b63b:: with SMTP id b56mr2874506ede.165.1572016488622;
        Fri, 25 Oct 2019 08:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572016488; cv=none;
        d=google.com; s=arc-20160816;
        b=FP44XVoDxbZCRSuOVp+4DLdaQrFN6dIZAVoRDh/ngOG20G44SXU6BTHnPiGzpPOjmq
         5FECSg+5ckPW1f5LxRnWIeErk1IvQeHbGWedib7LCjaVqutdDHq0ctQs8Jnr6EfomsHd
         NPR6jC2ttbuth5tcytQn7bVFIIxBxzPib5fNVu3T2eYB4BahE+r6sCjC/K9qXtDUEjhB
         0UfQUzSusQd8MifAWq+9531DW4jfAWbkU5j/h2kH/ZHkyy+BgBcvqk6Gl2dLJpFX5ESS
         SKRjzAn9vqYzkUuVJwZQTuAt1RiMTSKuEpQGwvPG1shbno08vwowXD2RbV9QzVcL16XO
         hDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=T+Bv0KDvuw3zXjFcMykuhlzsgcG5x86hqhsyWGKJAKE=;
        b=mf31UjmnZuHMeDuFwS6pRgYZNZZ17OfWw7S8l4en2Vb4J9iyYt1rEIvcMDIGDyIuiw
         uxifGB0qeBmdEcdfBW8bCSCsPLzxddmNlJRPcSQpkAUx6S9dMaidZgQYiekzf5hS8DNK
         s8T5IUtPqjpvfPFenSNcsn/NFykTeRGP1zG5t1QJ0iF9c5pX0aOUMNbFZGt9IMsLPwm+
         OOOqpqdgEgOdKFpf9UzMw5on7p3R3SrvZ62VDItq9GhksGQjiA9Htr7F/DQhrcfxb36K
         DyBmQiHzQe/mdToiOw9AIodYTNMzrrqouKXhJqF4WovrTEHSuiU2K+RyiMqwmE/h61RF
         1a0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HTlq9o3+;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c31si151683edb.0.2019.10.25.08.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 08:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id v9so2763760wrq.5
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 08:14:48 -0700 (PDT)
X-Received: by 2002:a5d:6785:: with SMTP id v5mr3524578wru.174.1572016487559;
 Fri, 25 Oct 2019 08:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191023005337.196160-1-irogers@google.com> <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com> <20191025075820.GE31679@krava>
In-Reply-To: <20191025075820.GE31679@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 08:14:36 -0700
Message-ID: <CAP-5=fV3yruuFagTz4=8b9t6Y1tzZpFU=VhVcOmrSMiV+h2fQA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=HTlq9o3+;       spf=pass
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

On Fri, Oct 25, 2019 at 12:58 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> > Parse event error handling may overwrite one error string with another
> > creating memory leaks and masking errors. Introduce a helper routine
> > that appends error messages and avoids the memory leak.
> >
> > A reproduction of this problem can be seen with:
> >   perf stat -e c/c/
> > After this change this produces:
> > event syntax error: 'c/c/'
> >                        \___ unknown term (previous error: unknown term =
(previous error: unknown term (previous error: unknown term (previous error=
: unknown term (previous error: unknown term (previous error: unknown term =
(previous error: unknown term (previous error: unknown term (previous error=
: unknown term (previous error: unknown term (previous error: unknown term =
(previous error: unknown term (previous error: unknown term (previous error=
: unknown term (previous error: unknown term (previous error: unknown term =
(previous error: unknown term (previous error: unknown term (previous error=
: unknown term (previous error: unknown term (previous error: Cannot find P=
MU `c'. Missing kernel support?)(help: valid terms: event,filter_rem,filter=
_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc=
1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,c=
onfig1,config2,name,period,percore))(help: valid terms: event,filter_rem,fi=
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
 event,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,frontend,cmas=
k,config,config1,config2,name,period,percore))(help: valid terms: event,fil=
ter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,um=
ask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filt=
er_nm,config,config1,config2,name,period,percore))(help: valid terms: event=
,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,in=
v,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,=
filter_nm,config,config1,config2,name,period,percore))(help: valid terms: e=
vent,config,config1,config2,name,period,percore))(help: valid terms: event,=
filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv=
,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,f=
ilter_nm,config,config1,config2,name,period,percore))(help: valid terms: ev=
ent,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc=
,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_sta=
te,filter_nm,config,config1,config2,name,period,percore))(help: valid terms=
: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filte=
r_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter=
_state,filter_nm,config,config1,config2,name,period,percore))(help: valid t=
erms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,f=
ilter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,fi=
lter_state,filter_nm,config,config1,config2,name,period,percore))(help: val=
id terms: event,config,config1,config2,name,period,percore))(help: valid te=
rms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,fi=
lter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,fil=
ter_state,filter_nm,config,config1,config2,name,period,percore))(help: vali=
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
ore))
>
>
> hum... I'd argue that the previous state was better:
>
> [jolsa@krava perf]$ ./perf stat -e c/c/
> event syntax error: 'c/c/'
>                        \___ unknown term
>
>
> jirka

I am agnostic. We can either have the previous state or the new state,
I'm keen to resolve the memory leak. Another alternative is to warn
that multiple errors have occurred before dropping or printing the
previous error. As the code is shared in memory places the approach
taken here was to try to not conceal anything that could potentially
be useful. Given this, is the preference to keep the status quo
without any warning?

Thanks,
Ian

> >
> > valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,f=
ilter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filte=
r_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore
> > Run 'perf list' for a list of valid events
> >
> >  Usage: perf stat [<options>] [<command>]
> >
> >     -e, --event <event>   event selector. use 'perf list' to list avail=
able events
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/util/parse-events.c | 100 +++++++++++++++++++++++----------
> >  tools/perf/util/parse-events.h |   2 +
> >  tools/perf/util/pmu.c          |  30 ++++++----
> >  3 files changed, 89 insertions(+), 43 deletions(-)
> >
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-eve=
nts.c
> > index db882f630f7e..edb3ae76777d 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -182,6 +182,38 @@ static int tp_event_has_id(const char *dir_path, s=
truct dirent *evt_dir)
> >
> >  #define MAX_EVENT_LENGTH 512
> >
> > +void parse_events__append_error(struct parse_events_error *err, int id=
x,
> > +                             char *str, char *help)
> > +{
> > +     char *new_str =3D NULL;
> > +
> > +     if (WARN(!str, "WARNING: failed to provide error string")) {
> > +             free(help);
> > +             return;
> > +     }
> > +     if (err->str) {
> > +             int ret;
> > +
> > +             if (err->help) {
> > +                     ret =3D asprintf(&new_str,
> > +                             "%s (previous error: %s(help: %s))",
> > +                             str, err->str, err->help);
> > +             } else {
> > +                     ret =3D asprintf(&new_str,
> > +                             "%s (previous error: %s)",
> > +                             str, err->str);
> > +             }
> > +             if (ret < 0)
> > +                     new_str =3D NULL;
> > +             else
> > +                     zfree(&str);
> > +     }
> > +     err->idx =3D idx;
> > +     free(err->str);
> > +     err->str =3D new_str ?: str;
> > +     free(err->help);
> > +     err->help =3D help;
> > +}
> >
> >  struct tracepoint_path *tracepoint_id_to_path(u64 config)
> >  {
> > @@ -932,11 +964,11 @@ static int check_type_val(struct parse_events_ter=
m *term,
> >               return 0;
> >
> >       if (err) {
> > -             err->idx =3D term->err_val;
> > -             if (type =3D=3D PARSE_EVENTS__TERM_TYPE_NUM)
> > -                     err->str =3D strdup("expected numeric value");
> > -             else
> > -                     err->str =3D strdup("expected string value");
> > +             parse_events__append_error(err, term->err_val,
> > +                                     type =3D=3D PARSE_EVENTS__TERM_TY=
PE_NUM
> > +                                     ? strdup("expected numeric value"=
)
> > +                                     : strdup("expected string value")=
,
> > +                                     NULL);
> >       }
> >       return -EINVAL;
> >  }
> > @@ -972,8 +1004,11 @@ static bool config_term_shrinked;
> >  static bool
> >  config_term_avail(int term_type, struct parse_events_error *err)
> >  {
> > +     char *err_str;
> > +
> >       if (term_type < 0 || term_type >=3D __PARSE_EVENTS__TERM_TYPE_NR)=
 {
> > -             err->str =3D strdup("Invalid term_type");
> > +             parse_events__append_error(err, -1,
> > +                                     strdup("Invalid term_type"), NULL=
);
> >               return false;
> >       }
> >       if (!config_term_shrinked)
> > @@ -992,9 +1027,9 @@ config_term_avail(int term_type, struct parse_even=
ts_error *err)
> >                       return false;
> >
> >               /* term_type is validated so indexing is safe */
> > -             if (asprintf(&err->str, "'%s' is not usable in 'perf stat=
'",
> > -                          config_term_names[term_type]) < 0)
> > -                     err->str =3D NULL;
> > +             if (asprintf(&err_str, "'%s' is not usable in 'perf stat'=
",
> > +                             config_term_names[term_type]) >=3D 0)
> > +                     parse_events__append_error(err, -1, err_str, NULL=
);
> >               return false;
> >       }
> >  }
> > @@ -1036,17 +1071,20 @@ do {                                           =
                          \
> >       case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
> >               CHECK_TYPE_VAL(STR);
> >               if (strcmp(term->val.str, "no") &&
> > -                 parse_branch_str(term->val.str, &attr->branch_sample_=
type)) {
> > -                     err->str =3D strdup("invalid branch sample type")=
;
> > -                     err->idx =3D term->err_val;
> > +                 parse_branch_str(term->val.str,
> > +                                 &attr->branch_sample_type)) {
> > +                     parse_events__append_error(err, term->err_val,
> > +                                     strdup("invalid branch sample typ=
e"),
> > +                                     NULL);
> >                       return -EINVAL;
> >               }
> >               break;
> >       case PARSE_EVENTS__TERM_TYPE_TIME:
> >               CHECK_TYPE_VAL(NUM);
> >               if (term->val.num > 1) {
> > -                     err->str =3D strdup("expected 0 or 1");
> > -                     err->idx =3D term->err_val;
> > +                     parse_events__append_error(err, term->err_val,
> > +                                             strdup("expected 0 or 1")=
,
> > +                                             NULL);
> >                       return -EINVAL;
> >               }
> >               break;
> > @@ -1080,8 +1118,9 @@ do {                                             =
                          \
> >       case PARSE_EVENTS__TERM_TYPE_PERCORE:
> >               CHECK_TYPE_VAL(NUM);
> >               if ((unsigned int)term->val.num > 1) {
> > -                     err->str =3D strdup("expected 0 or 1");
> > -                     err->idx =3D term->err_val;
> > +                     parse_events__append_error(err, term->err_val,
> > +                                             strdup("expected 0 or 1")=
,
> > +                                             NULL);
> >                       return -EINVAL;
> >               }
> >               break;
> > @@ -1089,9 +1128,9 @@ do {                                             =
                          \
> >               CHECK_TYPE_VAL(NUM);
> >               break;
> >       default:
> > -             err->str =3D strdup("unknown term");
> > -             err->idx =3D term->err_term;
> > -             err->help =3D parse_events_formats_error_string(NULL);
> > +             parse_events__append_error(err, term->err_term,
> > +                             strdup("unknown term"),
> > +                             parse_events_formats_error_string(NULL));
> >               return -EINVAL;
> >       }
> >
> > @@ -1142,9 +1181,9 @@ static int config_term_tracepoint(struct perf_eve=
nt_attr *attr,
> >               return config_term_common(attr, term, err);
> >       default:
> >               if (err) {
> > -                     err->idx =3D term->err_term;
> > -                     err->str =3D strdup("unknown term");
> > -                     err->help =3D strdup("valid terms: call-graph,sta=
ck-size\n");
> > +                     parse_events__append_error(err, term->err_term,
> > +                             strdup("unknown term"),
> > +                             strdup("valid terms: call-graph,stack-siz=
e\n"));
> >               }
> >               return -EINVAL;
> >       }
> > @@ -1323,10 +1362,12 @@ int parse_events_add_pmu(struct parse_events_st=
ate *parse_state,
> >
> >       pmu =3D perf_pmu__find(name);
> >       if (!pmu) {
> > -             if (asprintf(&err->str,
> > +             char *err_str;
> > +
> > +             if (asprintf(&err_str,
> >                               "Cannot find PMU `%s'. Missing kernel sup=
port?",
> > -                             name) < 0)
> > -                     err->str =3D NULL;
> > +                             name) >=3D 0)
> > +                     parse_events__append_error(err, -1, err_str, NULL=
);
> >               return -EINVAL;
> >       }
> >
> > @@ -2797,13 +2838,10 @@ void parse_events__clear_array(struct parse_eve=
nts_array *a)
> >  void parse_events_evlist_error(struct parse_events_state *parse_state,
> >                              int idx, const char *str)
> >  {
> > -     struct parse_events_error *err =3D parse_state->error;
> > -
> > -     if (!err)
> > +     if (!parse_state->error)
> >               return;
> > -     err->idx =3D idx;
> > -     err->str =3D strdup(str);
> > -     WARN_ONCE(!err->str, "WARNING: failed to allocate error string");
> > +
> > +     parse_events__append_error(parse_state->error, idx, strdup(str), =
NULL);
> >  }
> >
> >  static void config_terms_list(char *buf, size_t buf_sz)
> > diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-eve=
nts.h
> > index 769e07cddaa2..a7d42faeab0c 100644
> > --- a/tools/perf/util/parse-events.h
> > +++ b/tools/perf/util/parse-events.h
> > @@ -124,6 +124,8 @@ struct parse_events_state {
> >       struct list_head          *terms;
> >  };
> >
> > +void parse_events__append_error(struct parse_events_error *err, int id=
x,
> > +                             char *str, char *help);
> >  void parse_events__shrink_config_terms(void);
> >  int parse_events__is_hardcoded_term(struct parse_events_term *term);
> >  int parse_events_term__num(struct parse_events_term **term,
> > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > index adbe97e941dd..4015ec11944a 100644
> > --- a/tools/perf/util/pmu.c
> > +++ b/tools/perf/util/pmu.c
> > @@ -1050,9 +1050,9 @@ static int pmu_config_term(struct list_head *form=
ats,
> >               if (err) {
> >                       char *pmu_term =3D pmu_formats_string(formats);
> >
> > -                     err->idx  =3D term->err_term;
> > -                     err->str  =3D strdup("unknown term");
> > -                     err->help =3D parse_events_formats_error_string(p=
mu_term);
> > +                     parse_events__append_error(err, term->err_term,
> > +                             strdup("unknown term"),
> > +                             parse_events_formats_error_string(pmu_ter=
m));
> >                       free(pmu_term);
> >               }
> >               return -EINVAL;
> > @@ -1080,8 +1080,9 @@ static int pmu_config_term(struct list_head *form=
ats,
> >               if (term->no_value &&
> >                   bitmap_weight(format->bits, PERF_PMU_FORMAT_BITS) > 1=
) {
> >                       if (err) {
> > -                             err->idx =3D term->err_val;
> > -                             err->str =3D strdup("no value assigned fo=
r term");
> > +                             parse_events__append_error(err, term->err=
_val,
> > +                                        strdup("no value assigned for =
term"),
> > +                                        NULL);
> >                       }
> >                       return -EINVAL;
> >               }
> > @@ -1094,8 +1095,9 @@ static int pmu_config_term(struct list_head *form=
ats,
> >                                               term->config, term->val.s=
tr);
> >                       }
> >                       if (err) {
> > -                             err->idx =3D term->err_val;
> > -                             err->str =3D strdup("expected numeric val=
ue");
> > +                             parse_events__append_error(err, term->err=
_val,
> > +                                     strdup("expected numeric value"),
> > +                                     NULL);
> >                       }
> >                       return -EINVAL;
> >               }
> > @@ -1108,11 +1110,15 @@ static int pmu_config_term(struct list_head *fo=
rmats,
> >       max_val =3D pmu_format_max_value(format->bits);
> >       if (val > max_val) {
> >               if (err) {
> > -                     err->idx =3D term->err_val;
> > -                     if (asprintf(&err->str,
> > -                                  "value too big for format, maximum i=
s %llu",
> > -                                  (unsigned long long)max_val) < 0)
> > -                             err->str =3D strdup("value too big for fo=
rmat");
> > +                     char *err_str;
> > +
> > +                     parse_events__append_error(err, term->err_val,
> > +                             asprintf(&err_str,
> > +                                 "value too big for format, maximum is=
 %llu",
> > +                                 (unsigned long long)max_val) < 0
> > +                                 ? strdup("value too big for format")
> > +                                 : err_str,
> > +                                 NULL);
> >                       return -EINVAL;
> >               }
> >               /*
> > --
> > 2.23.0.866.gb869b98d4c-goog
> >
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAP-5%3DfV3yruuFagTz4%3D8b9t6Y1tzZpFU%3DVhVcOmrSMiV%2Bh2f=
QA%40mail.gmail.com.
