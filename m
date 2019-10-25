Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBJ6WZLWQKGQEFWUJT4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA72E44FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 09:58:33 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id l7sf744554otf.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571990312; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJ5G3GtmaMbfT+auhcU3ypezDf0MdtoUuqlOSbSH1iR6CcXPIybMJecpnCz3K3SjvT
         dkX0F/ZcQ+8JsTF5FlezsCoMBZmXIN/cUcTv8wACL2TgrAsSJfGpQHAU5mcvIy2EZA72
         cL1CSjBBSamFE+equPpy4dmCtM1XWSZH/FBXpk5ka2WSRwpTpWM2B/wHAWebBVFuPCXM
         TbNZCsxWHC9AynjaL6IJTBWU3p91r7rQxjL9b/m4rCRqf0wGWCMY4ZNaZ/0BJwwL5L9+
         /fSMssqH2mfGPCc9tz8tzHBCDqiALqhC0W0FNK1GB5tLs6M1JsHZDkgUbBHxeQePjJqW
         pGVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DyNETt8wp7VawLjjmq29DVri2ATF3VChAxlCdrTxOi0=;
        b=UsdxciKcgsEKg0xLGQrKZKrUjQCkTyawnxUHvc9LTlFbkFu/QRtPG3FPPyGF3EFGT7
         xPm4pYJpn81GsVtSamcPKqYzVidBgXznwD82MmlseOwKBrP4VGOfj4b1SsKTmwx+REDE
         WJrWTOZIOjfAiu9SMtGfNSqgEz8wZz/Wr5t0pW+jQymaMlNsBQjGoxROtIsC1B4VGW48
         4zdOmLxRdDccELUpltsnzKscz6DVaWwBowB3n+qG3KvLWRNKik5GJ+PoCMCL9Sqnkzf8
         QKqXOmzIQaUHwLlEG52yjvgZY1hhZQ7+Ukb8RPmtwzHnDe+6JIHOCPIRPmhQON52q1Oq
         Njzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bDCx05ga;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DyNETt8wp7VawLjjmq29DVri2ATF3VChAxlCdrTxOi0=;
        b=PSRBWn9cCDHo0YRFgBVtogTyeVixkxKTFfA3EzSoKJyVGpPR4IgvuCk5cYCuxQIhFL
         ELGALlCrk/f5kiBpZLgCZGyLGgluogKp1JlsmEl7PGgRbLEonA9H8M27fJBOlKSDFXu/
         /SpBWL5GzAbsZ02ftf180Sh1zny1nWzzdzTFPBsY6McRfsut809MeacdrVj0JnJoiElx
         IdWQ5VFMsiLLaiweyi+WQ2HTZ+NnsxSfPVIE+PLYDD8i3Hdu1IFCpaOrrc61RHtfN98L
         jAhGXKvMrYBaKUv8hpPqwRcP24jHQxXDPBjvPzaZradAXEfEMqpIME6JhPLEdiqkbWaX
         doBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DyNETt8wp7VawLjjmq29DVri2ATF3VChAxlCdrTxOi0=;
        b=M6DcnhH0VRe42JgpAU761DoXIdATyQNJlYoazmoJPjUIdSHHcGh0bIVqGyIWWgYpJK
         kpocmFffNWJIoGBVLRBH5ismcu/sQvGrwt0su3qV5pT949RvxVpiG3nXpZp/JfHQwG5G
         8WCAAgBTjy2fp/Tuj5cUWSZUUdmMNNgewinBewBiTJjXSNMbVwxIIJl0I/CyWS3BDdOq
         5Pi+lNI/UGEMssZoY+4f/MB/7ILHFxQIXmfPSIVugIVc/CJ+A+qsgtQOgCHLFE3sOe3v
         ytlVtyijKeoI58RtBv2s5h4d7oQo0JtoBxybHvwzMXvpHhRo6AmJSWRVLSplSL8HUvNk
         mX7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5cTyCaMPCvZcUNiZ42IMz/UH++jjRt+z0FS5O35Pjuxen8sqU
	21IphlNIOzteW1cbctqijmw=
X-Google-Smtp-Source: APXvYqyWTT1/q4a2GuiN/tEDUo1iHTMr4A3xE57VLB3RdFKEVQdOJXfmzZYBHm1/zp44+e9zUMf/Jw==
X-Received: by 2002:a9d:6d0e:: with SMTP id o14mr1578502otp.354.1571990312032;
        Fri, 25 Oct 2019 00:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls2191444oib.14.gmail; Fri, 25
 Oct 2019 00:58:31 -0700 (PDT)
X-Received: by 2002:aca:5f0a:: with SMTP id t10mr1912676oib.20.1571990311569;
        Fri, 25 Oct 2019 00:58:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571990311; cv=none;
        d=google.com; s=arc-20160816;
        b=c4vz7RIERu/gu9+bv2ET9YcvnPwVZYBB83NKx7Sq4sdihz24dsxr0Bs2KDK3SKEYRE
         9s6shRIuW83DThDIJy69OAb/WNgWQyu4ZEHDHhS9daYEI94utMqqd/SYZwlzfop1RDOl
         ioKJAJ0fiIsiNLhFmEEuRqysTRF9rBRJZz3uuPEbOElhV6jDWWivL/rak/Q3O+Lo2SBM
         9wJLr+gpaq1Oon1nVahYM8oIj43V0ZIRFBpOYBO0U5JEwHoSthvzwdVuccq20X9YrfR+
         subsxKn/4j5EQe6BtHtlGLbnvtLZsN1gw3bWH0nIM48mzVkDOrkTGAFkK+XKxRu0df0X
         Q+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=U0ko/BVEzCYj93aODTSwA86Zu6VChd3QffxuWil40Js=;
        b=N+K4uuma+kNh+6F266mC3VRwyCzgQAwh7FXDMRyKmYARLfbmwAAGFV+9fAfGknnU63
         TnUfTvYmnnoNarWn1rw3XPotl4hNyURgqEVuArHEDJGYW9IXcuCN8tXoKB9TfZcmSdct
         ce8KNpEkYmNgTyxu1LAmrNc03zJUYFCXQ7HN9ePjf0Ui8etN8EcFhVODcymDCdIrM21k
         XJh8VzZm6EVkSOI5a02Xrssx1+jXgCOFWnlSGzHO0oI4xxQcoCn5YCNHA3kXwL26qz8E
         XWiBPMilPDpgqcYv4ray+keTjHyFnl3gfPmJDCg9UD6pD/xS1bb2vulgBQGb+QPdqoZE
         CZmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bDCx05ga;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id k184si50721oih.0.2019.10.25.00.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 00:58:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-PuZYC8xtP8CRRMLZwwmWYA-1; Fri, 25 Oct 2019 03:58:27 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A79D801E5C;
	Fri, 25 Oct 2019 07:58:25 +0000 (UTC)
Received: from krava (unknown [10.43.17.61])
	by smtp.corp.redhat.com (Postfix) with SMTP id C2E8A1001B20;
	Fri, 25 Oct 2019 07:58:20 +0000 (UTC)
Date: Fri, 25 Oct 2019 09:58:20 +0200
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
Subject: Re: [PATCH v3 1/9] perf tools: add parse events append error
Message-ID: <20191025075820.GE31679@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-2-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191024190202.109403-2-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: PuZYC8xtP8CRRMLZwwmWYA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bDCx05ga;
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

On Thu, Oct 24, 2019 at 12:01:54PM -0700, Ian Rogers wrote:
> Parse event error handling may overwrite one error string with another
> creating memory leaks and masking errors. Introduce a helper routine
> that appends error messages and avoids the memory leak.
>=20
> A reproduction of this problem can be seen with:
>   perf stat -e c/c/
> After this change this produces:
> event syntax error: 'c/c/'
>                        \___ unknown term (previous error: unknown term (p=
revious error: unknown term (previous error: unknown term (previous error: =
unknown term (previous error: unknown term (previous error: unknown term (p=
revious error: unknown term (previous error: unknown term (previous error: =
unknown term (previous error: unknown term (previous error: unknown term (p=
revious error: unknown term (previous error: unknown term (previous error: =
unknown term (previous error: unknown term (previous error: unknown term (p=
revious error: unknown term (previous error: unknown term (previous error: =
unknown term (previous error: unknown term (previous error: Cannot find PMU=
 `c'. Missing kernel support?)(help: valid terms: event,filter_rem,filter_o=
pc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,=
tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,con=
fig1,config2,name,period,percore))(help: valid terms: event,filter_rem,filt=
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
vent,pc,in_tx,edge,any,offcore_rsp,in_tx_cp,ldlat,inv,umask,frontend,cmask,=
config,config1,config2,name,period,percore))(help: valid terms: event,filte=
r_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umas=
k,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter=
_nm,config,config1,config2,name,period,percore))(help: valid terms: event,f=
ilter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,=
umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,fi=
lter_nm,config,config1,config2,name,period,percore))(help: valid terms: eve=
nt,config,config1,config2,name,period,percore))(help: valid terms: event,fi=
lter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,u=
mask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,fil=
ter_nm,config,config1,config2,name,period,percore))(help: valid terms: even=
t,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,i=
nv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state=
,filter_nm,config,config1,config2,name,period,percore))(help: valid terms: =
event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_=
nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_s=
tate,filter_nm,config,config1,config2,name,period,percore))(help: valid ter=
ms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,fil=
ter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filt=
er_state,filter_nm,config,config1,config2,name,period,percore))(help: valid=
 terms: event,config,config1,config2,name,period,percore))(help: valid term=
s: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filt=
er_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filte=
r_state,filter_nm,config,config1,config2,name,period,percore))(help: valid =
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
e))


hum... I'd argue that the previous state was better:

[jolsa@krava perf]$ ./perf stat -e c/c/
event syntax error: 'c/c/'
                       \___ unknown term


jirka

>=20
> valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,fil=
ter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_=
not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore
> Run 'perf list' for a list of valid events
>=20
>  Usage: perf stat [<options>] [<command>]
>=20
>     -e, --event <event>   event selector. use 'perf list' to list availab=
le events
>=20
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/parse-events.c | 100 +++++++++++++++++++++++----------
>  tools/perf/util/parse-events.h |   2 +
>  tools/perf/util/pmu.c          |  30 ++++++----
>  3 files changed, 89 insertions(+), 43 deletions(-)
>=20
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-event=
s.c
> index db882f630f7e..edb3ae76777d 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -182,6 +182,38 @@ static int tp_event_has_id(const char *dir_path, str=
uct dirent *evt_dir)
> =20
>  #define MAX_EVENT_LENGTH 512
> =20
> +void parse_events__append_error(struct parse_events_error *err, int idx,
> +				char *str, char *help)
> +{
> +	char *new_str =3D NULL;
> +
> +	if (WARN(!str, "WARNING: failed to provide error string")) {
> +		free(help);
> +		return;
> +	}
> +	if (err->str) {
> +		int ret;
> +
> +		if (err->help) {
> +			ret =3D asprintf(&new_str,
> +				"%s (previous error: %s(help: %s))",
> +				str, err->str, err->help);
> +		} else {
> +			ret =3D asprintf(&new_str,
> +				"%s (previous error: %s)",
> +				str, err->str);
> +		}
> +		if (ret < 0)
> +			new_str =3D NULL;
> +		else
> +			zfree(&str);
> +	}
> +	err->idx =3D idx;
> +	free(err->str);
> +	err->str =3D new_str ?: str;
> +	free(err->help);
> +	err->help =3D help;
> +}
> =20
>  struct tracepoint_path *tracepoint_id_to_path(u64 config)
>  {
> @@ -932,11 +964,11 @@ static int check_type_val(struct parse_events_term =
*term,
>  		return 0;
> =20
>  	if (err) {
> -		err->idx =3D term->err_val;
> -		if (type =3D=3D PARSE_EVENTS__TERM_TYPE_NUM)
> -			err->str =3D strdup("expected numeric value");
> -		else
> -			err->str =3D strdup("expected string value");
> +		parse_events__append_error(err, term->err_val,
> +					type =3D=3D PARSE_EVENTS__TERM_TYPE_NUM
> +					? strdup("expected numeric value")
> +					: strdup("expected string value"),
> +					NULL);
>  	}
>  	return -EINVAL;
>  }
> @@ -972,8 +1004,11 @@ static bool config_term_shrinked;
>  static bool
>  config_term_avail(int term_type, struct parse_events_error *err)
>  {
> +	char *err_str;
> +
>  	if (term_type < 0 || term_type >=3D __PARSE_EVENTS__TERM_TYPE_NR) {
> -		err->str =3D strdup("Invalid term_type");
> +		parse_events__append_error(err, -1,
> +					strdup("Invalid term_type"), NULL);
>  		return false;
>  	}
>  	if (!config_term_shrinked)
> @@ -992,9 +1027,9 @@ config_term_avail(int term_type, struct parse_events=
_error *err)
>  			return false;
> =20
>  		/* term_type is validated so indexing is safe */
> -		if (asprintf(&err->str, "'%s' is not usable in 'perf stat'",
> -			     config_term_names[term_type]) < 0)
> -			err->str =3D NULL;
> +		if (asprintf(&err_str, "'%s' is not usable in 'perf stat'",
> +				config_term_names[term_type]) >=3D 0)
> +			parse_events__append_error(err, -1, err_str, NULL);
>  		return false;
>  	}
>  }
> @@ -1036,17 +1071,20 @@ do {									   \
>  	case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
>  		CHECK_TYPE_VAL(STR);
>  		if (strcmp(term->val.str, "no") &&
> -		    parse_branch_str(term->val.str, &attr->branch_sample_type)) {
> -			err->str =3D strdup("invalid branch sample type");
> -			err->idx =3D term->err_val;
> +		    parse_branch_str(term->val.str,
> +				    &attr->branch_sample_type)) {
> +			parse_events__append_error(err, term->err_val,
> +					strdup("invalid branch sample type"),
> +					NULL);
>  			return -EINVAL;
>  		}
>  		break;
>  	case PARSE_EVENTS__TERM_TYPE_TIME:
>  		CHECK_TYPE_VAL(NUM);
>  		if (term->val.num > 1) {
> -			err->str =3D strdup("expected 0 or 1");
> -			err->idx =3D term->err_val;
> +			parse_events__append_error(err, term->err_val,
> +						strdup("expected 0 or 1"),
> +						NULL);
>  			return -EINVAL;
>  		}
>  		break;
> @@ -1080,8 +1118,9 @@ do {									   \
>  	case PARSE_EVENTS__TERM_TYPE_PERCORE:
>  		CHECK_TYPE_VAL(NUM);
>  		if ((unsigned int)term->val.num > 1) {
> -			err->str =3D strdup("expected 0 or 1");
> -			err->idx =3D term->err_val;
> +			parse_events__append_error(err, term->err_val,
> +						strdup("expected 0 or 1"),
> +						NULL);
>  			return -EINVAL;
>  		}
>  		break;
> @@ -1089,9 +1128,9 @@ do {									   \
>  		CHECK_TYPE_VAL(NUM);
>  		break;
>  	default:
> -		err->str =3D strdup("unknown term");
> -		err->idx =3D term->err_term;
> -		err->help =3D parse_events_formats_error_string(NULL);
> +		parse_events__append_error(err, term->err_term,
> +				strdup("unknown term"),
> +				parse_events_formats_error_string(NULL));
>  		return -EINVAL;
>  	}
> =20
> @@ -1142,9 +1181,9 @@ static int config_term_tracepoint(struct perf_event=
_attr *attr,
>  		return config_term_common(attr, term, err);
>  	default:
>  		if (err) {
> -			err->idx =3D term->err_term;
> -			err->str =3D strdup("unknown term");
> -			err->help =3D strdup("valid terms: call-graph,stack-size\n");
> +			parse_events__append_error(err, term->err_term,
> +				strdup("unknown term"),
> +				strdup("valid terms: call-graph,stack-size\n"));
>  		}
>  		return -EINVAL;
>  	}
> @@ -1323,10 +1362,12 @@ int parse_events_add_pmu(struct parse_events_stat=
e *parse_state,
> =20
>  	pmu =3D perf_pmu__find(name);
>  	if (!pmu) {
> -		if (asprintf(&err->str,
> +		char *err_str;
> +
> +		if (asprintf(&err_str,
>  				"Cannot find PMU `%s'. Missing kernel support?",
> -				name) < 0)
> -			err->str =3D NULL;
> +				name) >=3D 0)
> +			parse_events__append_error(err, -1, err_str, NULL);
>  		return -EINVAL;
>  	}
> =20
> @@ -2797,13 +2838,10 @@ void parse_events__clear_array(struct parse_event=
s_array *a)
>  void parse_events_evlist_error(struct parse_events_state *parse_state,
>  			       int idx, const char *str)
>  {
> -	struct parse_events_error *err =3D parse_state->error;
> -
> -	if (!err)
> +	if (!parse_state->error)
>  		return;
> -	err->idx =3D idx;
> -	err->str =3D strdup(str);
> -	WARN_ONCE(!err->str, "WARNING: failed to allocate error string");
> +
> +	parse_events__append_error(parse_state->error, idx, strdup(str), NULL);
>  }
> =20
>  static void config_terms_list(char *buf, size_t buf_sz)
> diff --git a/tools/perf/util/parse-events.h b/tools/perf/util/parse-event=
s.h
> index 769e07cddaa2..a7d42faeab0c 100644
> --- a/tools/perf/util/parse-events.h
> +++ b/tools/perf/util/parse-events.h
> @@ -124,6 +124,8 @@ struct parse_events_state {
>  	struct list_head	  *terms;
>  };
> =20
> +void parse_events__append_error(struct parse_events_error *err, int idx,
> +				char *str, char *help);
>  void parse_events__shrink_config_terms(void);
>  int parse_events__is_hardcoded_term(struct parse_events_term *term);
>  int parse_events_term__num(struct parse_events_term **term,
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index adbe97e941dd..4015ec11944a 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -1050,9 +1050,9 @@ static int pmu_config_term(struct list_head *format=
s,
>  		if (err) {
>  			char *pmu_term =3D pmu_formats_string(formats);
> =20
> -			err->idx  =3D term->err_term;
> -			err->str  =3D strdup("unknown term");
> -			err->help =3D parse_events_formats_error_string(pmu_term);
> +			parse_events__append_error(err, term->err_term,
> +				strdup("unknown term"),
> +				parse_events_formats_error_string(pmu_term));
>  			free(pmu_term);
>  		}
>  		return -EINVAL;
> @@ -1080,8 +1080,9 @@ static int pmu_config_term(struct list_head *format=
s,
>  		if (term->no_value &&
>  		    bitmap_weight(format->bits, PERF_PMU_FORMAT_BITS) > 1) {
>  			if (err) {
> -				err->idx =3D term->err_val;
> -				err->str =3D strdup("no value assigned for term");
> +				parse_events__append_error(err, term->err_val,
> +					   strdup("no value assigned for term"),
> +					   NULL);
>  			}
>  			return -EINVAL;
>  		}
> @@ -1094,8 +1095,9 @@ static int pmu_config_term(struct list_head *format=
s,
>  						term->config, term->val.str);
>  			}
>  			if (err) {
> -				err->idx =3D term->err_val;
> -				err->str =3D strdup("expected numeric value");
> +				parse_events__append_error(err, term->err_val,
> +					strdup("expected numeric value"),
> +					NULL);
>  			}
>  			return -EINVAL;
>  		}
> @@ -1108,11 +1110,15 @@ static int pmu_config_term(struct list_head *form=
ats,
>  	max_val =3D pmu_format_max_value(format->bits);
>  	if (val > max_val) {
>  		if (err) {
> -			err->idx =3D term->err_val;
> -			if (asprintf(&err->str,
> -				     "value too big for format, maximum is %llu",
> -				     (unsigned long long)max_val) < 0)
> -				err->str =3D strdup("value too big for format");
> +			char *err_str;
> +
> +			parse_events__append_error(err, term->err_val,
> +				asprintf(&err_str,
> +				    "value too big for format, maximum is %llu",
> +				    (unsigned long long)max_val) < 0
> +				    ? strdup("value too big for format")
> +				    : err_str,
> +				    NULL);
>  			return -EINVAL;
>  		}
>  		/*
> --=20
> 2.23.0.866.gb869b98d4c-goog
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191025075820.GE31679%40krava.
