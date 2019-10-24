Return-Path: <clang-built-linux+bncBDPPFIEASMFBBMPEY7WQKGQELCJRAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D4BE3B50
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 20:49:22 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id y20sf7833719edv.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 11:49:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571942961; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPZF+ePDHLedzJv6YF3wd111beaYNH+BN4xiRzUnIRjyK4rhf3IfG/tT+TA0uTHEf8
         Kv4WtbS77568nKtLWTsSVLlhZTuITDNtYX+aYwXaX/7nlAEgAw3Uh3CdGN8df/HpdrI8
         r6buXNJeK0AbwZoQlKRvUPHE/FPNNNUtCijfU83B2vrYVPZze5k8CL8MwKXNlwJmYDwr
         /ot5bcuVUn8f24BuKrVFqi3lSbpABHgPqsQ+lDUKFT2kwFfMEZjegal+Fs3HPfah5ae0
         +2ty8VIhH1RemIF2bLQNJGP1Tq8kvjpWv1MpYfGAPrfg80AXGL/MlKyYjmnBHhvINmqm
         vTLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d5ZIUYtaRdgML2i9GPeMPTB73cYvBsXX9cFjuxTmNOo=;
        b=jn6BNa/2MyUdBvzy3q0fMxf2wdOy8c1nIYRjYT5KVn3QUpOXVPPFtOR8/T32/f0DZY
         DJWfucEL4MD0rgYPXZmoxwlei+HUD11c6QYKIzXIEAOD39WIN0Cay7NRV+GqoJeHu4Yd
         Ztil3PSz6ijunKWyaly9VHn336iaAohGf9dZzhvYDOlaSmB5/0FTQjke5WqOInylmrHa
         RvM/9P0s2UDvceqIJiV6x5W5gRooRj2+8qLNrspMEYxdUujyr4834fXKZhAPFLXQPD29
         kZEj5uGq0pydyrfFklCJb/jfzHt79o/5pkBxB3khgV7TqxCeiyDQUk+169Ei5f+8q4uB
         ZR8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dJ3S9OxN;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5ZIUYtaRdgML2i9GPeMPTB73cYvBsXX9cFjuxTmNOo=;
        b=qy8FnTAHhwVM7TbRXaTorLGpuJjHmyJue2Jnt6Piw5OrBkJr1UkX6sZBHP+fSSmodP
         dnX1NwtXqCJfZHZ22CmqYS/42lpRAumdJbZQDnooMYtpNlbecYo/rkHPX7IklfKjBOK/
         Qnuu2EDQMNDHYjHV5/SFdeSnvO9f1tcoLrePCooYwua3auxeoXQLP+o4KSAiVlqFpiRR
         FvUep2M2lOSS37ZIVPNFns1i1gPK/uXbXkKsPtppX3wsrLGxFLlLVPnPZ86sAYzM9MuJ
         EPZ7I8XmmZmqc6qMxDvV9xoFmpDFe5vKVbKO+avc7guq2F3XCgauifkAM9RAvP0keJd/
         0G9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d5ZIUYtaRdgML2i9GPeMPTB73cYvBsXX9cFjuxTmNOo=;
        b=XPMfbDsgHGz1PgrPpMubLTFPwbFKxTBrLJcw9+FNA0qs6k4n/1ra7y6F6cdAeV/Xbi
         u3/G0aSslvwc8YQK+kh6KKM/HXq4Y7VactAgCJmnV9RwiPa/xLD2oV/5SIu7xSQzhS06
         B7HwAcxm0Hryl6VBw2MjHEI6opP1Z2GyxzTvUFQWTBam/FifPUdOzTeQ5PRs2I8Tj2xL
         S5P6PZUivQkOFPC+GeLjbx4zY+eG3eNGwd+ItGwzUwqqwEeb5tm0dbBwuJKMdJ9cNpJ4
         7pg25fUuPjUEX0UQVFNb0bch3uP9u5Yrdnt04aGAmtzlCOAnMGmQ4SlDgsnmRyAx/kJb
         d9Sw==
X-Gm-Message-State: APjAAAUZzBlAr5sTu0IuI74qxj++hu4EHh/3olnqsOopskzaQJ41JVbH
	QjJ0AJgVNDF57prJhdZCgDI=
X-Google-Smtp-Source: APXvYqyfvXITMr0OdQS/aEI07S03KT7+NpmqoRUyIVYOxn+NBjCoJSDa/zqbYlKnhjAJSVsBlFrtDg==
X-Received: by 2002:a17:906:d72:: with SMTP id s18mr23467696ejh.29.1571942961746;
        Thu, 24 Oct 2019 11:49:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cd1e:: with SMTP id z30ls1626563edi.15.gmail; Thu, 24
 Oct 2019 11:49:21 -0700 (PDT)
X-Received: by 2002:a50:9254:: with SMTP id j20mr19845956eda.0.1571942961302;
        Thu, 24 Oct 2019 11:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571942961; cv=none;
        d=google.com; s=arc-20160816;
        b=r4Dvj8Ytp0UougBSyTYofXAEIQb77yjaqXDnoCauJoNpggDvtLT9lpvJYoyknO8ksL
         53CgGHi5uOECUj88mQ/0238HxClQdpyE8UMa3b3Bt2YK8M+okWtZzC+ny2OVjE2eq1fG
         XiI+NQSjtKY2w9PEaIoS+UO/qV1i/ERmnnmiSl9RX/Eg9xRSZzn09KgWAbr3GRAgO52U
         lOXh0qvEBITKjgcNUDMXzjQv7kIem5z8g3uLaSBh5MW/ydWOEwgcdEz6NTZQsx8ZHaaU
         M5NW0w4yBy1WeXnOA/bcp0u096D/+YVv55Q8ftP7BZQ3s/EPF8yk4f0Tm4mR6mQm2XaQ
         J0aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ITwmhF+SfhXrttHS8dPYpR9ZuDrzsKrnQrQApgmQKjg=;
        b=OJFrbj0OYjcMSAncKs7RkkSIsxwFhD78JDdIKu+RM5LU9rltuuWTGZrMHnePSHbEg/
         QX6nbLWOGRILob5uN8C3f4QOUyRLNoWBL09kPL6x+aV0+aQjIlZGUwepn7NOgjeD7n+2
         JCdFzAswVPpO6qBOHreDWgqEwbaN+d+VXIlH3fXK9u36xfD5oWKmdWEFHarQziD2jYrk
         qfeuL9gfZcP+ozMIoRW7WrY75WYjSor/Vd8djcoWcCkacyRdoMe2wPDBy/kHYZwfyWAe
         +nCVDMmQ8Xntyf7akMUS03Z8PUEl1ovlZ5rhPTvNPy+TD2ApzP+yZyi0r9Gssni8dt4z
         EV4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dJ3S9OxN;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b25si461288ejb.1.2019.10.24.11.49.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 11:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z11so3854512wro.11
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 11:49:21 -0700 (PDT)
X-Received: by 2002:a5d:4644:: with SMTP id j4mr5507194wrs.355.1571942960507;
 Thu, 24 Oct 2019 11:49:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191017170531.171244-1-irogers@google.com> <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-7-irogers@google.com> <20191023090131.GH22919@krava>
In-Reply-To: <20191023090131.GH22919@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Oct 2019 11:49:08 -0700
Message-ID: <CAP-5=fWodxON9uuO5g0fh_4daJZB=8YfoBed08VmUQ=kKJvVFA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] perf tools: add destructors for parse event terms
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
Content-Type: multipart/alternative; boundary="000000000000c54a410595ac7df2"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dJ3S9OxN;       spf=pass
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

--000000000000c54a410595ac7df2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, the intent here is that patch v2 be used in preference to the 1st
patch, it looks like you've applied both. The first patch split apart
tracepoint_name to avoid accessing out of scope stack memory, the second
patch allocates heap memory that is correctly destructed (and consequently
needs 1 fewer struct tracepoint_name member). Please disregard the 1st
patch and just apply the second series.

Thanks,
Ian

On Wed, Oct 23, 2019 at 2:01 AM Jiri Olsa <jolsa@redhat.com> wrote:

> On Tue, Oct 22, 2019 at 05:53:34PM -0700, Ian Rogers wrote:
> > If parsing fails then destructors are ran to clean the up the stack.
> > Rename the head union member to make the term and evlist use cases more
> > distinct, this simplifies matching the correct destructor.
>
> I'm getting compilation fail:
>
>   CC       util/parse-events-bison.o
> util/parse-events.y: In function =E2=80=98yydestruct=E2=80=99:
> util/parse-events.y:125:45: error: =E2=80=98struct tracepoint_name=E2=80=
=99 has no member
> named =E2=80=98sys=E2=80=99; did you mean =E2=80=98sys1=E2=80=99?
>   125 | %destructor { free ($$.sys); free ($$.event); } <tracepoint_name>
>
> jirka
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAP-5%3DfWodxON9uuO5g0fh_4daJZB%3D8YfoBed08VmUQ%3DkKJvVFA=
%40mail.gmail.com.

--000000000000c54a410595ac7df2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Sorry, the intent here is that patch v2 be used i=
n preference to the 1st patch, it looks like you&#39;ve applied both. The f=
irst patch split apart tracepoint_name to avoid accessing=C2=A0out of scope=
 stack memory, the second patch allocates heap memory that is correctly des=
tructed (and consequently needs 1 fewer struct tracepoint_name member). Ple=
ase disregard the 1st patch and just apply the second series.</div><div><br=
></div><div>Thanks,</div><div>Ian</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 23, 2019 at 2:01 AM Jiri=
 Olsa &lt;<a href=3D"mailto:jolsa@redhat.com">jolsa@redhat.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Oct 2=
2, 2019 at 05:53:34PM -0700, Ian Rogers wrote:<br>
&gt; If parsing fails then destructors are ran to clean the up the stack.<b=
r>
&gt; Rename the head union member to make the term and evlist use cases mor=
e<br>
&gt; distinct, this simplifies matching the correct destructor.<br>
<br>
I&#39;m getting compilation fail:<br>
<br>
=C2=A0 CC=C2=A0 =C2=A0 =C2=A0 =C2=A0util/parse-events-bison.o<br>
util/parse-events.y: In function =E2=80=98yydestruct=E2=80=99:<br>
util/parse-events.y:125:45: error: =E2=80=98struct tracepoint_name=E2=80=99=
 has no member named =E2=80=98sys=E2=80=99; did you mean =E2=80=98sys1=E2=
=80=99?<br>
=C2=A0 125 | %destructor { free ($$.sys); free ($$.event); } &lt;tracepoint=
_name&gt;<br>
<br>
jirka<br>
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP-5%3DfWodxON9uuO5g0fh_4daJZB%3D8YfoBed08VmU=
Q%3DkKJvVFA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfWodxON9uuO5g0fh_4daJ=
ZB%3D8YfoBed08VmUQ%3DkKJvVFA%40mail.gmail.com</a>.<br />

--000000000000c54a410595ac7df2--
