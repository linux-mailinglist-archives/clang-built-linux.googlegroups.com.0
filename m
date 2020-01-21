Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBGMDTTYQKGQEXMEBXZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CB2143E94
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 14:50:19 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id r189sf2262990ywf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 05:50:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579614618; cv=pass;
        d=google.com; s=arc-20160816;
        b=LIuNXhj19JZz9vCfD6gXm/MPA3I1Ak8oOVADDZl3e0HrLTkXbmiwcfPYDqA2mM/v7N
         Q67PmYI3B+i96ZF9rwLIYuvBCOVqdqPIx6tZkaK5X+6K4YHGUFVQBghVXaQeBlbl21aO
         DADoRU7qsd0N3u4i383h716WMnAGi56gmyHlcAvbRLwdDs5PwfJQWUJQFW7E86hQYh48
         W/I9hzq4Hhr03jaKq/x9W5GIYphLPdcqgdAr5CbOVjsXA+JDps7WECBfUf/l2CblBb7Y
         WXzyEMzIQ9SpKFjx4UmdOwtwuqwGqxlRWFhjoymtl5a6gCVG02TGwbIUKo/HoiW3Mrk5
         QxKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=rV7KZ14G4cfT11ekb1VRUQLy5ipz1slMHqvkm8C1k74=;
        b=Eea3giTre+CyaYQ76jXlsXZ5BUwYIn9f7f30qocYkCTxI2gK9vcNqqra8O5jC/hnqk
         u1wHtgcEan99HO6HCHejw8NSGacbbVY3/zWej1sChNEp4CVAZXHWfxwk8PEAQEId3AcP
         IgMw3vA8Ac0DqYUCDDTutTBm3AS7awMhUtzUzbpI8DrNYrGmf0cD6B29xcboDZY1sG55
         9RTYx4GcNFf0P6yKnjsDE7ZpQMwi8RE8SB1Ok+fLt08UHkkfWw6rkdynTOmdtPLu9Z+H
         2WAkkcAeSuOFqHSfyRFV6CChKba9+Nm1b/tMz7rM1WnCSuOWfqpRViuyC02KJUqVp4uv
         exHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Zp/VRWWq";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rV7KZ14G4cfT11ekb1VRUQLy5ipz1slMHqvkm8C1k74=;
        b=bKij2qqPvqzGE30BQXMPCo4SlFBcKRFyZ6gsrzltsRmd8pTWCF4ifhqu/rWzwhozJ1
         qqos4LXUE63oWFAuNx7AVZDv6FU7pdVpLkGamzt0pRvkCNKZeypCcFuZvHrh72CcPGh0
         NpY11+ISE4+cY68J61DAb+CDnx2hLvFT3sX2MjoB4Cl4E4xtq0pXNn5X2tXBO/DtJReI
         WemoteqQ/ecGG3LWDampzf1K6jkBuOI23/tKnnuzKs3ugh4WIQUBEmsbXe6YYCXrXO0K
         RwxLBO3gbBaCcA1LQgI63QMjUDhuLtusKA78/gGXKY5v94hxZftPUntaInMCtvWqxthU
         NMkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rV7KZ14G4cfT11ekb1VRUQLy5ipz1slMHqvkm8C1k74=;
        b=ECuT5ubLi0Wo12kzfkdvslNBokmwOmgo7Qi5nvwxpsAW/yLPCHDJsZ7My8Ehl43Lof
         mz5YWSvI+lhTMsyYMNKfuBCUfj4YPF6GxsnIuJhLn33Z3/dYNCXF3hy9EStZ7oSdnp28
         6BBqTJkCBOfLdiV3jMCX5yq7S4K2IUG1ok7dahD4YI0GmFRJrF3ljraaU0+L671w8MSL
         gFFf8bmPS3LajpNec+RLuGpdKVy9NUANJZe+1FMspllkZxiaSpY1QvFSDjnn4QADFTjl
         Gf4857PC1EB7fBTFzk14uKd1SziQfYtJP0yGrXevsQo74OOLHidZaHx2nwWp57moFPP1
         kKNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXl4Js2jGvA3GOiGvBQcioCv3gMKPT1dHUA1lCiJyMAd35tT2OG
	INI0jkr1he7ftOAzmOoN52Q=
X-Google-Smtp-Source: APXvYqzGT3lQgA00QP74Ud9wM7K5Fga47AG+cmMklZjfyEGXJoekZpwOB5oDeAlLMjMHqske+odk2w==
X-Received: by 2002:a25:dcc8:: with SMTP id y191mr3690424ybe.103.1579614618084;
        Tue, 21 Jan 2020 05:50:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dd82:: with SMTP id g124ls5853356ywe.13.gmail; Tue, 21
 Jan 2020 05:50:17 -0800 (PST)
X-Received: by 2002:a81:6d91:: with SMTP id i139mr3582306ywc.401.1579614617703;
        Tue, 21 Jan 2020 05:50:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579614617; cv=none;
        d=google.com; s=arc-20160816;
        b=pdtQWyrib1x/hkjPp9ZQGueo5k6/1UqUnaM40keYN3PwDbqf0n2a2LaPhpYkgL+UTp
         luqJ+t5yi68e+wrHOJmomHA7MoXJygXWiaD/eSy5mv7MOs69uZXyh62Ub4+acyCtNYQf
         k6YoihJdhoUcbFdNJ5/4VgwUkDeE9nYe6qzrXfl4YJ39g2C7CaIhfp3xXLYG7pPoZO9k
         agFn60gqlYjMhUjwKRbAT34eTQJ51KUOShXmgf69CIR82T7jK8ZCj5R/3m29zYOlHA3b
         MmZCaM8nLEz5xsNCy4XA23P6xBE2KtFGUTWnCHP42GG6YV0xojcjRN4a0d6iwaw3wPN8
         UN9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=4rMjuYMlhz5ZVpsQjvQu9VTU44UJy4NvvJBwQr4iSJU=;
        b=dxjmoI3m1YJT0D7rEvRGYdOWb27ksDs0WfyGhsJY10yh7NO5de1RsyziRZB0PqLINH
         AQN6R2Yyq+7KLhDNdDnHUOPUnT2HYqLXMaygSqx0jdNHPl2dSOdioFAMy/vwp2EMkiZR
         +xWOVKLLCZ4U16Jc7zajLKe/reWNCsc3jS9JIZ3Of/hqdfKGY4LLcLPCaSAgprh9qIF6
         uGkib69ixagoBXjtQ6uZS756yZVYu5DlVl9QVWIN7y+y7suizbXrrwbk2/shGpBNj5pc
         pUHYiz1vTKttPvklqFasxYYNDMJ1h2/GdaLfPvBW8pYGoKEeEEonovp5nfVjsBOsH91o
         vfZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Zp/VRWWq";
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id s131si1241023ybc.0.2020.01.21.05.50.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 05:50:17 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-kLgkzriwMe6QkXBlbqWBGg-1; Tue, 21 Jan 2020 08:50:16 -0500
Received: by mail-lj1-f198.google.com with SMTP id g5so314169ljj.22
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jan 2020 05:50:15 -0800 (PST)
X-Received: by 2002:a19:48c5:: with SMTP id v188mr2838238lfa.100.1579614614301;
        Tue, 21 Jan 2020 05:50:14 -0800 (PST)
X-Received: by 2002:a19:48c5:: with SMTP id v188mr2838216lfa.100.1579614613963;
        Tue, 21 Jan 2020 05:50:13 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id r2sm18840207lfn.13.2020.01.21.05.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2020 05:50:13 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 1B9471804D6; Tue, 21 Jan 2020 14:33:47 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v5 00/11] tools: Use consistent libbpf include paths everywhere
In-Reply-To: <CAEf4BzYNp81_bOFSEZR=AcruC2ms76fCWQGit+=2QZrFAXpGqg@mail.gmail.com>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk> <CAEf4BzYNp81_bOFSEZR=AcruC2ms76fCWQGit+=2QZrFAXpGqg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 21 Jan 2020 14:33:46 +0100
Message-ID: <874kwpndc5.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: kLgkzriwMe6QkXBlbqWBGg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Zp/VRWWq";
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

> On Mon, Jan 20, 2020 at 5:08 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> We are currently being somewhat inconsistent with the libbpf include pat=
hs,
>> which makes it difficult to move files from the kernel into an external
>> libbpf-using project without adjusting include paths.
>>
>> Having the bpf/ subdir of $INCLUDEDIR in the include path has never been=
 a
>> requirement for building against libbpf before, and indeed the libbpf pk=
g-config
>> file doesn't include it. So let's make all libbpf includes across the ke=
rnel
>> tree use the bpf/ prefix in their includes. Since bpftool skeleton gener=
ation
>> emits code with a libbpf include, this also ensures that those can be us=
ed in
>> existing external projects using the regular pkg-config include path.
>>
>> This turns out to be a somewhat invasive change in the number of files t=
ouched;
>> however, the actual changes to files are fairly trivial (most of them ar=
e simply
>> made with 'sed'). The series is split to make the change for one tool su=
bdir at
>> a time, while trying not to break the build along the way. It is structu=
red like
>> this:
>>
>> - Patch 1-3: Trivial fixes to Makefiles for issues I discovered while ch=
anging
>>   the include paths.
>>
>> - Patch 4-8: Change the include directives to use the bpf/ prefix, and u=
pdates
>>   Makefiles to make sure tools/lib/ is part of the include path, but wit=
hout
>>   removing tools/lib/bpf
>>
>> - Patch 9-11: Remove tools/lib/bpf from include paths to make sure we do=
n't
>>   inadvertently re-introduce includes without the bpf/ prefix.
>>
>> Changelog:
>>
>> v5:
>>   - Combine the libbpf build rules in selftests Makefile (using Andrii's
>>     suggestion for a make rule).
>>   - Re-use self-tests libbpf build for runqslower (new patch 10)
>>   - Formatting fixes
>>
>> v4:
>>   - Move runqslower error on missing BTF into make rule
>>   - Make sure we don't always force a rebuild selftests
>>   - Rebase on latest bpf-next (dropping patch 11)
>>
>> v3:
>>   - Don't add the kernel build dir to the runqslower Makefile, pass it i=
n from
>>     selftests instead.
>>   - Use libbpf's 'make install_headers' in selftests instead of trying t=
o
>>     generate bpf_helper_defs.h in-place (to also work on read-only files=
ystems).
>>   - Use a scratch builddir for both libbpf and bpftool when building in =
selftests.
>>   - Revert bpf_helpers.h to quoted include instead of angled include wit=
h a bpf/
>>     prefix.
>>   - Fix a few style nits from Andrii
>>
>> v2:
>>   - Do a full cleanup of libbpf includes instead of just changing the
>>     bpf_helper_defs.h include.
>>
>> ---
>>
>
> Looks good, it's a clear improvement on what we had before, thanks!
>
> It doesn't re-build bpftool when bpftool sources changes, but I think
> it was like that even before, so no need to block on that. Would be
> nice to have a follow up fixing that, though. $(wildcard
> $(BPFTOOL_DIR)/*.[ch] $(BPFTOOL_DIR)/Makefile) should do it, same as
> for libbpf.

Yeah, I did realise there was some potential for improvement for bpftool
as well, but I got enough of Makefiles for now :)

I'll see if I can't circle back to this at some point...

> So, for the series:
>
> Acked-by: Andrii Nakryiko <andriin@fb.com>
> Tested-by: Andrii Nakryiko <andriin@fb.com>

Thanks!

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/874kwpndc5.fsf%40toke.dk.
