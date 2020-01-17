Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBF4FQ3YQKGQENG5JLZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA841406C7
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 10:47:05 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id m6sf3612450otl.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 01:47:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579254423; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ia6DD7O76VkadowoJoOK5UpKKGTO6/kOwvmESjhiuy3Yys2kiWJfav3yGlOUqheuQE
         KUb2VYpw8+smC9EzSJqhwUQhUKQqm4NiyWLMCsVDT4LD9HvgBLoTVfoZBExpLvsrNShq
         KOo/GrsdIuHrfjCh2IKwacMIFGylTyqc2D8CwcqAX3+OvLF2pxjslrifpCzFVBDhHo6R
         bndRkMkBsKvuBTqyw5lC3NGh9FAZ2rWnv5L6gSVQOdLct+Ct2m7n0yruqkISqk//3rvD
         DjYazozhaUPLVs7YWEXNZzxMjwqREOUzF8yGjCJR2pM8KiomYBHe7Fz2ODmgeXO6Qijr
         DCmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=yqrAYdCK31ekUZZd7PbQuWlIRNq7dXfUsLApt3+iXKE=;
        b=VMEPj3o6Tt3nabACr0VzyOPYMwWhYrK9ETegPZl+ifSRWXDeBOIfNnm2cTbxR1boPS
         W0U2KqThyvatP1vrIJ0n+CBB2J51m3yHkzdLm89wXWfha5XuqKBPjamscbr/Mg85sQhq
         PmZflpmHU6rNrv2ueWGM21ip9G1LT7E9Z8+fHjEwsXgLsFoHucTn5OY6Bg71FhsZuotx
         8W1vSz9sKMlxnAWsULaNzZzOGcEUyAzXv8A7imDLou5Jc9g3Frg8zCSjsQLXjKEWaw1T
         7QqQQngD3T85r4SYJKpyCkNlGozCbX4ORCH0KkzY6w3yc1nrVraBH8JC6ucd3sMKJ4Y+
         Jw5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIeXKXao;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yqrAYdCK31ekUZZd7PbQuWlIRNq7dXfUsLApt3+iXKE=;
        b=EiE8GULdCd+RK7zvNifUtWk73WnHGp3sCfznKsR5uO2tP5/awdqhpfOgodeLS4pBxv
         LEKzK5LcnKtc8jBWawyMvhWLL5PWBGD9fE1jQKkEBBcxJLJYuk3FIrv3VsAtaELCKJ9O
         FNrA6da6y7hrXCajkK+e1X06n2KH3ZqxJlRVVxfMrMCcvKGRz/5lhsO6ZGtGyxGmSRDC
         Ht6pLsni0aCfjrMBPoZaOl+FEwgecKf22BFhgBTUQDAtBFpm58llix0dm0j0e5lIdGWB
         uapGHdbTZvmBOE3hCQGAwevSvuolTMf8B1ZN8kPvqVA+6AbtkSY5DdRYN2b6qQRUBkSs
         /jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yqrAYdCK31ekUZZd7PbQuWlIRNq7dXfUsLApt3+iXKE=;
        b=KmbT+4gZ4I9e/wguwTqYorYX4Bjc4F0S/d8Hj+av64b5sDoRKNBK/ErSV2jUDvHLfc
         GwpBIRIxGfd2rOf7hK5b/k0KFqx6jbLENy2G6kuVBc/uEauWc/BFpWI2f8Xfj7uPE79Z
         pbVnPCum0cjA2gRlCUyDoUYwhCiK4EvSl0kDTzVT2Zdd3ptDAO/mIS2NpZQ8+6t3TozM
         29ictsxxBgTWbGYx+3Ia/qU6j0PEy4wGH0K1bluSRg0XhgSrvNgVOrWYtIITJkruyLWo
         2Ch/ZjvvyzXV3sEx5APGhcu4cCWX2F2HFEZF/qi4iDaPb6EMW9abs76aUmBC6dCRv8Jz
         khyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWzxVQeakJKCPGFf+R/iE0NsAwCLCM4YzUPMEaEgDH3TwIvDv2
	4U0UQ7SxD869RPrJSYzFD7o=
X-Google-Smtp-Source: APXvYqyLAtCb0OgHWQFHngK4NEDUAaYi+TkUuRz/OEuAWPUDRvN67oE5qaETkGSkzD6Oy92kX8YEvg==
X-Received: by 2002:a05:6808:3c2:: with SMTP id o2mr2755334oie.145.1579254423558;
        Fri, 17 Jan 2020 01:47:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d615:: with SMTP id n21ls4516489oig.5.gmail; Fri, 17 Jan
 2020 01:47:03 -0800 (PST)
X-Received: by 2002:a05:6808:a83:: with SMTP id q3mr2892852oij.0.1579254423162;
        Fri, 17 Jan 2020 01:47:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579254423; cv=none;
        d=google.com; s=arc-20160816;
        b=e4GtUAoFzIkkw2Wb6QlEGI0ewLGCjXDevllV8VEAvxtuWrlFQtUWKWR+z2bwLQQUGF
         +7c8IQT07qDlg8GHuctwGxmSBgFAbA1A3qvNzQSL6X905+n+YErLI9+pRPrrrbnBv9PW
         aGgC9dHvOhDN0zy2PySaltMFyPN5X6yMmKfmY3D7TSAdal/CpXnaYB1zKcX1mQYyRUI5
         bB/SwON3AqwWbvkJdPitlFiWGj8SK0FGyNJhLa9JmqmudX4jn5b4JQujd+s7ASH1AsmO
         +7oOkuMNuIvpuWJ3FO0pTP9d425eotMEhWLp36Shk6wQ9QjTBj3Y4L5hyv56V7q0v1MX
         unNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=MRdZZz9P8UIoKzsy8bUaagOkve384w9nZaJDimC4aAA=;
        b=Tm/CWtyCcFK7Wr1caVjtoJwcQw53XCgOYshI9Eb5zwphFUhsoHZBJop/HhNenVa95V
         251z+gB+Pv7YLz80HCbjkL7IVSkXgDFH3kscQ5xtZ0XOyoQC8noiUzxlXI9w91fIeDxn
         OS8dCYrMdsqByDDg13daWkL8Ae/AAWwTYhv67rFBh1kWYpq9lJWw2Wg8bOn9KYG37EQk
         M6TBixV2fjnPkpevS3RLeyao/F46U2SjCXseM6yXxoMtpGCSx5+6DfZ8lSL6nTKXqu6o
         6j8dJsivX2EyxYvs0QPRaJp6/9j9WYYbHmgJLo7qFzZj1LRWsR68Ew/W6qljOXJc+pY3
         seQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RIeXKXao;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id h11si1277662otk.0.2020.01.17.01.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 01:47:03 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-6m2TRnAkPJiqCBqcslOC3Q-1; Fri, 17 Jan 2020 04:47:01 -0500
Received: by mail-lj1-f200.google.com with SMTP id g5so6038452ljj.22
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 01:47:01 -0800 (PST)
X-Received: by 2002:a19:7015:: with SMTP id h21mr4868735lfc.68.1579254419648;
        Fri, 17 Jan 2020 01:46:59 -0800 (PST)
X-Received: by 2002:a19:7015:: with SMTP id h21mr4868705lfc.68.1579254419486;
        Fri, 17 Jan 2020 01:46:59 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id r15sm12041957ljh.11.2020.01.17.01.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 01:46:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 3553E1804D6; Fri, 17 Jan 2020 10:46:58 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 04/11] tools/runqslower: Use consistent include paths for libbpf
In-Reply-To: <CAEf4BzbJZ7JUyr8p3YKX-Rrth_B7OMbih50xxyt_YNBd--107w@mail.gmail.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093613.1357254.10230277763921623892.stgit@toke.dk> <CAEf4BzbJZ7JUyr8p3YKX-Rrth_B7OMbih50xxyt_YNBd--107w@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 17 Jan 2020 10:46:58 +0100
Message-ID: <87tv4uqust.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 6m2TRnAkPJiqCBqcslOC3Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RIeXKXao;
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

Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:

> On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>>
>> Fix the runqslower tool to include libbpf header files with the bpf/
>> prefix, to be consistent with external users of the library. Also ensure
>> that all includes of exported libbpf header files (those that are export=
ed
>> on 'make install' of the library) use bracketed includes instead of quot=
ed.
>>
>> To not break the build, keep the old include path until everything has b=
een
>> changed to the new one; a subsequent patch will remove that.
>>
>> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken =
from selftests dir")
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> ---
>>  tools/bpf/runqslower/Makefile         |    5 +++--
>>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
>>  tools/bpf/runqslower/runqslower.c     |    4 ++--
>>  3 files changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefi=
le
>> index 89fb7cd30f1a..c0512b830805 100644
>> --- a/tools/bpf/runqslower/Makefile
>> +++ b/tools/bpf/runqslower/Makefile
>> @@ -5,6 +5,7 @@ LLC :=3D llc
>>  LLVM_STRIP :=3D llvm-strip
>>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
>>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
>> +LIBBPF_INCLUDE :=3D -I$(abspath ../../lib) -I$(abspath ../../lib/bpf)
>
> I'd probably put all the -I's into single INCLUDES var and include
> that one instead of mixing -I$(OUTPUT) and $(LIBBPF_INCLUDE), but this
> works too.

Hmm, yeah, not a bad idea, actually. Since it seems I'm respinning
anyway, I'll fix that up as well.

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87tv4uqust.fsf%40toke.dk.
