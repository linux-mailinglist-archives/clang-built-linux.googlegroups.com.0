Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBWEKQ3YQKGQEXYAIZZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7A6140720
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:58:49 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id y188sf24823350ywa.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 01:58:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579255128; cv=pass;
        d=google.com; s=arc-20160816;
        b=yWJE3l4plgf/7hErnRgLfmOvTKyxHOHsmDkQco9lbyjdjWjHZIaLsqfDS+S2YNBWsJ
         rydOh2jloR3F7uTfulaY4CsqjNo+4auVdddEcfo3MZ3erEaxlPmH9FEB9nnTfRLBMibb
         YPAlpWWjdkAsHtxOfMyg+bzu+r/CcoSDm2qHB7cfNhrGweSg6JwCGhelsraU/Bpk3tJ8
         nwREPFFV0l9LTGYPOMz04g9bmWgdVJLaVVSWgkzP3ehBfZMNOzPJa0N6t8Ad8/PK9JGk
         6szhHEKxVQ7MKFoHLtUZWIKvCAYN4IYMJHtBN2ckQV8RI4XCYIgMx08dq86Hxvqj/a66
         XksA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=K+6/J8FMGzSGS+z5TRvGf0+sv46eukK0EOscQkRRqTE=;
        b=EL2K3H4901qAaH8vOH0/TjpbOEeRS02Hj5frGKY2I21gQbMNFpTwGsF7VAJFNhaTak
         fXBapoMTUGy4akDutirCWI8IF4cypeUnnPtY7A7OVKcUOH4Z6yArdWGTiieNYnS2sZgM
         04LVbKe04vZDA3ePRQU5HQmxDDGXa2fJwy7+I9+j5v06PIDPjqO4r3dca1rhycBr39c5
         oBEeVk+5Ins2FIrFK69PmJs/PDuWLwABGyFTqSj/DkZOhAYRA1ls4Ter1DzTKrtOK74Q
         j6Kpbu1uwkZTUtM8B9hUS6AD4Y/DEFF/UJertgEbiQo6jvT6xZ5b5V2YQ5YN9ACubYul
         vnKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EXBuHUK+;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K+6/J8FMGzSGS+z5TRvGf0+sv46eukK0EOscQkRRqTE=;
        b=UopvooXGg5mtAt/I7YjXlV3g0Jbsku5dgXrNb0M27ByUvsExhHnjaerSEmMjn3jnTH
         yEhadoR6jjocKE4LSxrrn4XZJa1KXunCwIHXISIFOPoWa3rBRE786X8ELMoJfjALlgw8
         EkYQWtACUbeA4auI9b9kSufKZOkzSsLakG+DGWuPe7nee1KGyB97JtrweWbXMsXD6Fr9
         ujlmArRG+t084t+Xmb5j68Q8p2nRdOhk1SHB4KYkt4/1YRw5UPkEGyXAJwcIzAaTztLL
         dtiuwt8PyBwkmyaSMz8qAkJJ9CY/RiZIBf1Em3ILRTC2OxiXRa9dWHfs3lLRUerWi3B2
         sNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K+6/J8FMGzSGS+z5TRvGf0+sv46eukK0EOscQkRRqTE=;
        b=cdx3Ps5cU0J7RePLLz46qowcPpFucekxgPZrB1Rh5pDRRD0cIflbWMesYw9dTXMyXF
         XTPapCDKIcK2AhgD/bdoqoiLxX7ocoZ7XLi077AppVRQZNXu17Nn25CGg6kqurscXFBu
         TwUbvuEtES4CRE0kDdBd7ZSEFKXKTDcZnfPPeNjnACIPuu+c2i8hv3AYSmFyhdJ1ETEc
         BAh8gwjNF5IJ2T2FYw4nsdORNwSGZjbJLDe/kuerzv5+DaMJ/Uq6n4sURd//O33Z3uvk
         iJyc4akVKInYw+bbqbSCHuBzXKlwwBzwcVk5T14DiMbMgdIMV+gbp2vhFB/2rgcbXUxq
         dDyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDnVnBoMBZvCsabNgE8QQuhKCnP51mmlZZhtMFNeP6KDDplZkV
	4Yv945/9nIVfo+5LZ8XNNr4=
X-Google-Smtp-Source: APXvYqxDb2nn57gt5Eh6fR0v/eo5RScw4Y1grD/FsMNzChKW9DNafvyTS8bGi/FBiJ+RvsHj8A9eZw==
X-Received: by 2002:a25:bb43:: with SMTP id b3mr27809869ybk.356.1579255128404;
        Fri, 17 Jan 2020 01:58:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8083:: with SMTP id q125ls4031130ywf.10.gmail; Fri, 17
 Jan 2020 01:58:48 -0800 (PST)
X-Received: by 2002:a81:9890:: with SMTP id p138mr30137350ywg.224.1579255128098;
        Fri, 17 Jan 2020 01:58:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579255128; cv=none;
        d=google.com; s=arc-20160816;
        b=CLtPLoJ1qRq0W90AfRxWvJXJpz12GwgfvnX+Wl/q4B2XzRCKqJ9+E531ARkXbVJ5/M
         L9QP/srfrYg9ZL42OLRpVaqwOqCZ0q11uevOVDi3gBD4c30HagD/Y+OdEgVQSskvrpx0
         Klg4j+20XmiuLlXDveGXZIElgYhLQ3Lvx6C2AViPasA/s+QttOycgJz5VF1XhqNl7R+7
         8ld8VhSvzo2S2+AHv8fWhTKRy0Dtd3ILg6Ill8e1DqubBHQWyz3hYrJSCog6eYjHHGqQ
         +fuMpY4eioRAcu8B7Suqr1Ye1aK554ACO7MJK+i7Xx73v/cQxyPpETBe0KqKpN3nSJXX
         opVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=v0fgFQChnDFrzurwZIA1mDTi4HnLb0XWQ6akhpf6tlI=;
        b=cIlII8yPFxgNNohMMepL0091d/qZa1DjJlVNHSNk/0c61wGBG18lXmEIS+kudSZjXM
         JuTXTamTK7fKjej+ALfQ6Kc4pJCDNRnYcNEvw/EyGareYHp/e1a62OOS+G5AtQywOYeh
         XJDfiM2favsX8ociVyh7L+AQD+8G2qB1hKT0mO++/vzzNGCplSz5E0s8Uc1MhXYO6QnZ
         3x+RBdoCHTzpLRfzGNsP9+KSFWiYBKGIQGMT1cKP3ENFbOa6AI5Wyq16J97/AvSywaHl
         bj6HTrkLet8W9PDfq5AiqwVS0wJ+BL6ZRO4fnW9yImRoIAM24oId6L1S3vytcAU1m8jh
         X3yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EXBuHUK+;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id e186si284752yba.4.2020.01.17.01.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 01:58:48 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-9FP5OOOdPEKi_-HvHmxXfA-1; Fri, 17 Jan 2020 04:58:44 -0500
Received: by mail-lj1-f200.google.com with SMTP id a19so6059601ljp.15
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 01:58:44 -0800 (PST)
X-Received: by 2002:ac2:4849:: with SMTP id 9mr4975717lfy.11.1579255123122;
        Fri, 17 Jan 2020 01:58:43 -0800 (PST)
X-Received: by 2002:ac2:4849:: with SMTP id 9mr4975702lfy.11.1579255122857;
        Fri, 17 Jan 2020 01:58:42 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id r21sm12164399ljn.64.2020.01.17.01.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 01:58:42 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 341A91804D6; Fri, 17 Jan 2020 10:58:41 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong
 Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo
 Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com, brouer@redhat.com
Subject: Re: [PATCH bpf-next v3 00/11] tools: Use consistent libbpf include paths everywhere
In-Reply-To: <20200117095721.0030f414@carbon>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <20200117041431.h7vvc32fungenyhg@ast-mbp.dhcp.thefacebook.com> <20200117095721.0030f414@carbon>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 17 Jan 2020 10:58:41 +0100
Message-ID: <87lfq6qu9a.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 9FP5OOOdPEKi_-HvHmxXfA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EXBuHUK+;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Jesper Dangaard Brouer <brouer@redhat.com> writes:

> On Thu, 16 Jan 2020 20:14:32 -0800
> Alexei Starovoitov <alexei.starovoitov@gmail.com> wrote:
>
>> On Thu, Jan 16, 2020 at 02:22:11PM +0100, Toke H=C3=B8iland-J=C3=B8rgens=
en wrote:
>> > The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs=
.h are
>> > taken from selftests dir") broke compilation against libbpf if it is i=
nstalled
>> > on the system, and $INCLUDEDIR/bpf is not in the include path.
>> >=20
>> > Since having the bpf/ subdir of $INCLUDEDIR in the include path has ne=
ver been a
>> > requirement for building against libbpf before, this needs to be fixed=
. One
>> > option is to just revert the offending commit and figure out a differe=
nt way to
>> > achieve what it aims for.  =20
>>=20
>> The offending commit has been in the tree for a week. So I applied Andri=
i's
>> revert of that change. It reintroduced the build dependency issue, but w=
e lived
>> with it for long time, so we can take time to fix it cleanly.
>> I suggest to focus on that build dependency first.
>>=20
>> > However, this series takes a different approach:
>> > Changing all in-tree users of libbpf to consistently use a bpf/ prefix=
 in
>> > #include directives for header files from libbpf. =20
>>=20
>> I'm not sure it's a good idea. It feels nice, but think of a message we'=
re
>> sending to everyone. We will get spamed with question: does bpf communit=
y
>> require all libbpf users to use bpf/ prefix ? What should be our answer?
>
> The answer should be: Yes. When libbpf install the header files the are
> installed under bpf/ prefix.  It is very confusing that samples and
> selftests can include libbpf.h without this prefix. Even worse
> including "bpf.h" pickup the libbpf version bpf/bpf.h, which have
> caused confusion.  The only reason for the direct "libbpf.h" include is
> historical, as there used-to-be a local file for that.

Agreed. Also, we are already telling people what the right include path
is in at least two ways - and currently they are incompatible:

- The pkg-config file included with libbpf has a notion of include path;
  which does *not* include the bpf/ subdirectory.

- The skeleton generator puts an '#include <libbpf.h>' line into the
  generated files.

With this series we'll at least be consistent.

>> Require or recommend? If require.. what for? It works as-is. If recommen=
d then
>> why suddenly we're changing all files in selftests and samples?
>> There is no good answer here. I think we should leave the things as-is.
>
> I strongly believe we should correct this.  It doesn't make sense that
> someone copying out a sample or selftests, into a git-submodule libbpf
> (or distro installed libbpf-devel) have to understand that they have to
> update the include path for all the libbpf header files.

Yeah, I think being clear and explicit about what is the recommended way
to include libbpf is strictly an improvement. And making it possible to
move example programs seamlessly in and out of the kernel tree will only
make things easier for people.

I'll rebase and respin this series on top of the revert (and fix
Andrii's comments).

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87lfq6qu9a.fsf%40toke.dk.
