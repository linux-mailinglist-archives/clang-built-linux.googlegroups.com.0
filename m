Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBIOHS3YQKGQEYQQQQCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C40142B5C
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 13:57:06 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id m18sf17889673otp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 04:57:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525025; cv=pass;
        d=google.com; s=arc-20160816;
        b=VWJjsvG73sknipWWgnX0dYPpgJ3q0lbXQleZ9tb4axse3sDXgxu0UWtAO338R70dkJ
         eV4jf5Sq883fvxiwrYhn7K0S/vkcBWJSKX59e9LGKu93fg4yIioxEinV16VAl1WvYEw9
         M716JEJ0mmgIV0hR5QvOsO/lUOH4DDkXsovzINIIQgf1uxvR5e7eCAbKA1ZAc+K0hnx2
         wes+2zuMoZYvF0KWGvgEmajc8HXEZTshRW3qS4b5y9QD0rM4wpFeiPOS85dyk0sNDS8j
         ongjIz8XsZsfvtp05ekVqUQASrPT+EkPu2TCczwZZEMweVzklPGYqGL/VCw7M9P2WCnM
         0lvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=uxuHcuQpI14dv0VaKmAx97cokIHPI77fQLgWIVTOBlQ=;
        b=J/sTxbSxZ9QNItJTasjx3By8N453yyJbpmN3Z725ogbzjqfwreLxGmimU95oLuOoDg
         CdjYrfJ9UaRKnGErIzqwySJpnIXmhzZzwd+QLpGf7lEkp57lgwyM/bpmWG783iKSOlCt
         APEvNEK/6pfKhqoeDxVwSpgoI4Ih3nin4l8/hlyp02tulP9d0wpc7xhu/A7Vt5w6gpDc
         E0gOB1ZJSIDw7ftz6giBobxQ531CeYamPdtBmuRSofP6SAH5/TEGc7Ryx4fGv60/Oqnr
         nvNsldRsL9VqmJkISyY41EmTthtl7+dBftjZQ1GXwlL6krpP7KQLNl1d2YzOpFjEB6Gb
         OQMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eN2L3cmf;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uxuHcuQpI14dv0VaKmAx97cokIHPI77fQLgWIVTOBlQ=;
        b=Koo0SeDS2NogKZHOumaQez4MyXHuSU6cDJij9+3xNUdY7l6oyctJu2XSAwOvmaP64s
         AptIlj+U1SUdRCtys9a7JHAPyDeVOeCrjDv3cS+g//yFLnP67S9wA7YzC6nIfU5zo27D
         XwZcgzLpfpvShja4pD+bFKpQxcaTwv1Ikr8PIHS9H+WlaFh5YCg91owNhjo6Xx5a/W1u
         jZhBQdhYEkCoBchvKu1AD9pRZqRVHSz0XeLaIIR5HEgRK7Fvw/57COY/qxLMxS+sPbtU
         50eE7CClafMzuTBL0ufxr6irbx1wPKc8zBHFEdpgslgC2vwy6UFVkSzVGB93sei4EvAi
         TjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uxuHcuQpI14dv0VaKmAx97cokIHPI77fQLgWIVTOBlQ=;
        b=ZRcUhFrZ0b5F0jmjqnGvZM0QJkMbimBQyucUH34yYRTqNbhIV+8ttXfAIr5H8aeITC
         Piu2iRVo6q5WDaDiWciHnYhZj12I5G6/U3XPLD+IpKhAarS3/cNmGX4VXG6dRJvoG98c
         gRHCrMZ3PWDlGLexkjHmtiZpX0mlk3MunmAmbIpj017VEWiLKxMGyjIaV6U+Kv2D+lYO
         PaSN1H8mtLBPaQR2N2Kdmg7nqPZMFb7xf3i4yZ/gYIHQ23g98j48/UfNMIQAh/eI1osz
         4l002AlG3I5VP6FI/fsqh48MimAGXAM3oQrmZHLi7FQN0d/z6B2WYitLXsj9HCy8oxHG
         Icbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7MD0Cr2tCDXb8+OhTmZI2WOijQ0bbnpWljlY79MgvBqEbCPaP
	P4EYboSZfakoaKPhXqB57hI=
X-Google-Smtp-Source: APXvYqzKtua1aXbdu9KCBFR9MGYwRTDZs/64Z7DyAS5xl/b7/oT63coilhw+ssyA2b20h2JlGmFMxA==
X-Received: by 2002:a9d:730e:: with SMTP id e14mr15138026otk.62.1579525025288;
        Mon, 20 Jan 2020 04:57:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls5766950oig.7.gmail; Mon, 20
 Jan 2020 04:57:04 -0800 (PST)
X-Received: by 2002:aca:52cd:: with SMTP id g196mr12676285oib.18.1579525024831;
        Mon, 20 Jan 2020 04:57:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525024; cv=none;
        d=google.com; s=arc-20160816;
        b=unsWr711pHVKyw/hi7U0p9Q5A0AQLP3eb49WGxj11b3bmH5eJQXiFF/6ERTEhFcjhZ
         +/YcroWpnpBPwugriiqdrWNbm8aDbcY/YFzE2NWor0gFqlWfUuNcx7jy0wq8RRej8eOO
         HggdZQQ/a30N07WXSKAJko1fuB+ImXGBePXRxR76NCfwY78WxHjYLh9WGVHqlzL2x7zg
         V1b52eMSKzVAnNTf1UaKe8WCBVu1DOhi4vpowZlmOpLlQ5QzHo3HO3nDmvpnmmiLYiXi
         yEJb774hSG2Xj12cMzeauy6SO1tWYzUAgIq7mfiMwgVvE+ZLef6qpj+4guykC1ns3tJa
         jwpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=FEDkrujKlTJc5+7hmDpzcA7gq/UPeEUXrVOs87I/0F4=;
        b=z+aWr+9J30UriK8g0FiYnMNWE6syMLZJ2EmEv4M0ePhvgidF5Jc+POg03K5DSUz/hb
         mRd1o3L5pO6kajlyr6o2ECcwmKdkeRiMAKDAI8tIURrQ0hop5iPTjB1B7KAhN41DQ4Eq
         0aA/mDc+83jR3sxDZcyUNArLRjfHCRFNLJB6bJgWVBwSr8kHVXiSAGXA2FBK8XRlfwCS
         3my8Y5btR1Ee3wwX+oqPurp06S4NtP9Ov4Qh+N67YgjpZqZY84xqlK2RveeaM5Y3O2mj
         RDLD7nzJDsqtWtOMbcRUxH5cymTS9zq1pFUUcpwP5zbT9tnG1keQiujISQbf/1vOPc2K
         yS2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eN2L3cmf;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id d6si1189555oig.4.2020.01.20.04.57.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 04:57:04 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-it_OJ5eANuuWdip7FNiNxg-1; Mon, 20 Jan 2020 07:57:02 -0500
Received: by mail-lj1-f197.google.com with SMTP id f15so7538221ljj.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 04:57:02 -0800 (PST)
X-Received: by 2002:a2e:721a:: with SMTP id n26mr13678543ljc.128.1579525021239;
        Mon, 20 Jan 2020 04:57:01 -0800 (PST)
X-Received: by 2002:a2e:721a:: with SMTP id n26mr13678516ljc.128.1579525020966;
        Mon, 20 Jan 2020 04:57:00 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id 2sm16813782ljq.38.2020.01.20.04.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 04:57:00 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 5785F1804D6; Mon, 20 Jan 2020 13:56:59 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v4 04/10] tools/runqslower: Use consistent include paths for libbpf
In-Reply-To: <CAEf4BzbAV0TmEUL=62jz+RD6SPmu927z-dhGL9JHepcAOGMSJA@mail.gmail.com>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926820131.1555735.1177228853838027248.stgit@toke.dk> <CAEf4BzbAV0TmEUL=62jz+RD6SPmu927z-dhGL9JHepcAOGMSJA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 20 Jan 2020 13:56:59 +0100
Message-ID: <875zh6p9pg.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: it_OJ5eANuuWdip7FNiNxg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eN2L3cmf;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

> On Fri, Jan 17, 2020 at 5:37 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
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
>> Acked-by: Andrii Nakryiko <andriin@fb.com>
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>> ---
>>  tools/bpf/runqslower/Makefile         |    5 +++--
>>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
>>  tools/bpf/runqslower/runqslower.c     |    4 ++--
>>  3 files changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefi=
le
>> index b62fc9646c39..9f022f7f2593 100644
>> --- a/tools/bpf/runqslower/Makefile
>> +++ b/tools/bpf/runqslower/Makefile
>> @@ -5,6 +5,7 @@ LLC :=3D llc
>>  LLVM_STRIP :=3D llvm-strip
>>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
>>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
>> +INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/=
bpf)
>>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
>
> drop LIBBPF_SRC, it's not used anymore

It is: in the rule for building libbpf there's a '-C $(LIBBPF_SRC)'

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/875zh6p9pg.fsf%40toke.dk.
