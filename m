Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBGHGS7YQKGQEM6ELT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C15A143187
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 19:36:09 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id z24sf232299vkn.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 10:36:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579545368; cv=pass;
        d=google.com; s=arc-20160816;
        b=x/3lj8jLX7AB34dC2F6I6pJpjcWNRLwUoto8R0/4ixlqHj3zmoK0StbuosbBzwAPXL
         znoqRckViwQRcBUgDYfQZ0oqxUQSo0UrlE2J9EqSWfjbUS2X8VbpXHZeT6knb2YEnr+K
         Lt6PEe9nGoaEfrRfHVMaETw85+c1zj+iWywppYlGzc8uP0e8Cupp2RiAYf0BXjpEM+Qb
         NMnZYAUmYulIUetZtxEVPW0n2zwrSj5JaY35tjHOkNE0TPz1HupVD1Xg0hhQAIwZ4fy7
         /lH3YYVbUbLhhh7M3/b2TbyfV9wfnAK5zIHSt612Ce40hyQCD5jZwpicDbxEYsGiDnKG
         OVww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=8fIqdPwF9mzz/qieYcWXaxr76LOrAJmT2K9WDg2ZTz4=;
        b=CVujdQknbsOxGlLomaNwA9mFhxdgpzWIn2CGENBaqQfIJf6c9cIOEXzldGrIY0U53a
         JRgazQC1tYu+OSZU1CD0waz55m8y4bMC2AXJfe8pHLne3EQrJWqkVKMinJRTeoR+ATxf
         S9eeMZYJWW0TkfjAf/k3ofMJzcES+sa8VUFELY06zbnZ02mzfDkFT/Eb7haJYxajZOgi
         pUMogowwbKWGHh7HZhxK1H4risqdnia01jWruJ72SAclFfQ/yAa2mwySz62i3ZY2nR2p
         kGwfPODgGSutMhhim3UXN3/UU04PHphpTjdLZguNtCEfX854MnEMCkA9fSNfuAH0hAGe
         RZdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n6OHQmi2;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8fIqdPwF9mzz/qieYcWXaxr76LOrAJmT2K9WDg2ZTz4=;
        b=mhtrYJk3YWqI1weGC5CC0yRC1o4vBUTqtaFtFqboRo8w8kCHtsBNnr705eYLowckr2
         pKA2Gs4uNjJY3JbG8+YL3P9GOnala3Wr2JsW7fD8WhgD+EObH/kb4pI014KOmDEH1JGr
         h/uu8noV3XM+ZgYmEjGceUlnsNefmDSDEh5OvTxtJaqwMexLJpaRVJRDcyPWrEupOQ5h
         RDNmyBQcVpnGmDj/qE5sQZQS40sfkE4aVSG6cSi4DlnrKft7u+DngrxBn5dYb+7fJzMk
         VHxhjsstL9g0vugXtxnXSo42mYS3+dbbblmAdjq3G/KSYm/0wwvWnYzuLdNgJW0WV2iR
         LPAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8fIqdPwF9mzz/qieYcWXaxr76LOrAJmT2K9WDg2ZTz4=;
        b=s1/CH7ifRFD3qlQshrIX84MNX4FlUcZsvz5ZNj+Q20aQt35GFAYESfj9ZBYrLlRurt
         brBnW4LXs0VCKkF37SiO7Lejg14yqTzfi57hLT2CX0Vm02nZz2kh1zBVLXYGHVVBjW3j
         un31V8SurGAq4kLj+hQk2s2VBtkmbqSA3eVFvEQ79veAGkSj98a30oKUGgTO0XYMJLmr
         dt6exeKT1dqn2wlSB2EaiD3lm1QYjT2eZopELkrn+YeJxgPRZscNV/FB2vETEWJz7r7N
         CR+hvsizb4HfJRVTuHUmbyFdbdG5lFEq1h5P63Haq3CdL7qlV0plkP6c4Erp2ECuPisz
         lNBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8fIqdPwF9mzz/qieYcWXaxr76LOrAJmT2K9WDg2ZTz4=;
        b=WJNFuGV+tk3QWzp6SOV3x6hy7MTBqMEvMcj9mQ2lOXqVRMuItG+021s6qm9dt8jS9o
         0zTGlL2xk7GynZZZx2ca1NmRIbq6ejYKtTAOrVYIGaxy/3abyPOK1Xi2Vq0AxTKj/ftA
         4Eu3s8hZ2K7QlCpMeEs3LSn61k5g4zrTDzwEGS1T03A/M37pXzfscilljz1bKQYXLbDQ
         4RzaQeWNoMVk2ylSO9AjnDSzFGRLe8avmETwckNqYLMX4lXPdJW6jH/xxaqYP8IGq68g
         of0FvNrmL02dek5U2r/wLWPfGcidq9rRF+s3JE8x3hTQq7Fx/PKKmH49ZdVvYBhuUX+D
         ZTwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWY0fBilw6+gWC+1b+b6mctTf/75XO9oRBc5nq/iuI8bCEwPxfj
	BejndLULbwNryiSNl23ZOm8=
X-Google-Smtp-Source: APXvYqzos0s3ltE99Hy0cK0sZPS00VJVQuTp+YG6AR0GZTQazEAPcL7fjZfQbSKDCEJ0rtyA2wHvFw==
X-Received: by 2002:a67:c185:: with SMTP id h5mr305831vsj.211.1579545368216;
        Mon, 20 Jan 2020 10:36:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c107:: with SMTP id d7ls2911340vsj.16.gmail; Mon, 20 Jan
 2020 10:36:07 -0800 (PST)
X-Received: by 2002:a67:e9da:: with SMTP id q26mr368689vso.34.1579545367814;
        Mon, 20 Jan 2020 10:36:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579545367; cv=none;
        d=google.com; s=arc-20160816;
        b=OHpGWeZC5/nW82C61aHmRWU7xblYQZZe18V2xT3NZNKgsfQkFpQS4o43ZjLHAwxFGn
         94p2LzXt0hfHF5eDlK/6Dyp5rEZO8GjS3NnuFuCoQn5lLErur0yb7P0TL8LvRSf/kRbD
         YQ75uHdNhuMTpQzicsxlVHUS+BRFQhHVcGm43IyKn+lyf4NguSutl4C3LLM33rWfvGsF
         F3fL8RLwpkevgHSORg6O9kiySoyRWPyjdp7C3JG4XYewdotveFJ6GkiNZdR42piKq70A
         mUuaty/BT3rBALG+zcDiAdQPPb0NO3C/Q6puBk+B1peoBvhv1CGvJLhBDM0wnZqeiDhh
         bakg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nypa0fmcU1qrcDA/69y5vVyGSxEYCTlbnT0MYvisCOY=;
        b=e95WKCGwD5ryCBuXuwOr32ZjrL3ppb3QH+t+mfTbMsEnxyTOJ95ipJbJphLAWqTO9g
         OH4HxvQnXIOee0kGYdsKnU0RuaiWMhmhaBHqYYd/aV5bFhjExrnfqa6u2XYgAqSk7JCX
         /Cww8ZmVLsqOTNSsxMoBqw5YP4D8+i+Gxq2fwyFf3+XzqvTMO/tSkyYymQ7tcqzOoR8/
         86NlGfxsJuQ8mTOn3WAAJjbX/CSVDu5Sjh0+9yQLpGzMngfAWGonq3k4xBhrxvLa4ZmM
         XaccmXaFD9MU6Dzpwv/KAgyVUw7hEmtQKLMSBReHcNWLI5afPs8601t+ktObGey3xpeJ
         3eaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n6OHQmi2;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id i27si1398241uat.1.2020.01.20.10.36.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 10:36:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id 21so190264qky.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 10:36:07 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr871914qkq.437.1579545367408;
 Mon, 20 Jan 2020 10:36:07 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
 <157926820131.1555735.1177228853838027248.stgit@toke.dk> <CAEf4BzbAV0TmEUL=62jz+RD6SPmu927z-dhGL9JHepcAOGMSJA@mail.gmail.com>
 <875zh6p9pg.fsf@toke.dk>
In-Reply-To: <875zh6p9pg.fsf@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 20 Jan 2020 10:35:56 -0800
Message-ID: <CAEf4BzZ7x4F_-bjGg7TdzXcin6c1BAT6OKe53ujh1tx-GB6-ZQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 04/10] tools/runqslower: Use consistent
 include paths for libbpf
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n6OHQmi2;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 20, 2020 at 4:57 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
>
> > On Fri, Jan 17, 2020 at 5:37 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@=
redhat.com> wrote:
> >>
> >> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >>
> >> Fix the runqslower tool to include libbpf header files with the bpf/
> >> prefix, to be consistent with external users of the library. Also ensu=
re
> >> that all includes of exported libbpf header files (those that are expo=
rted
> >> on 'make install' of the library) use bracketed includes instead of qu=
oted.
> >>
> >> To not break the build, keep the old include path until everything has=
 been
> >> changed to the new one; a subsequent patch will remove that.
> >>
> >> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are take=
n from selftests dir")
> >> Acked-by: Andrii Nakryiko <andriin@fb.com>
> >> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> >> ---
> >>  tools/bpf/runqslower/Makefile         |    5 +++--
> >>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
> >>  tools/bpf/runqslower/runqslower.c     |    4 ++--
> >>  3 files changed, 6 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Make=
file
> >> index b62fc9646c39..9f022f7f2593 100644
> >> --- a/tools/bpf/runqslower/Makefile
> >> +++ b/tools/bpf/runqslower/Makefile
> >> @@ -5,6 +5,7 @@ LLC :=3D llc
> >>  LLVM_STRIP :=3D llvm-strip
> >>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
> >>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
> >> +INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../li=
b/bpf)
> >>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
> >
> > drop LIBBPF_SRC, it's not used anymore
>
> It is: in the rule for building libbpf there's a '-C $(LIBBPF_SRC)'
>

Ah, right, missed that one. Looked a bit weird to have $(abspath
../../lib/bpf) used in INCLUDES and then separate LIBBPF_SRC
definition there, maybe

LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(LIBBPF_SRC)

> -Toke
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZ7x4F_-bjGg7TdzXcin6c1BAT6OKe53ujh1tx-GB6-ZQ%40mai=
l.gmail.com.
