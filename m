Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBWM373YAKGQER77GTEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF2813CFCB
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 23:10:34 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id m5sf11393019iol.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 14:10:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579126233; cv=pass;
        d=google.com; s=arc-20160816;
        b=EpIugHHwRG65Q9Efm5zd+HG973z40+a7LSsS/1wXmSicq9gr0bznp0ToE6/8fME7/K
         ejChlcsrE7/OnhExaEi3sPB9agdJTFRCdBp9yXJyzk1uEltePxwvkY/Fl222Gp1iO4Ag
         JsTAbCr+DBjo4q8rOovHU4rbY2mAIZS3oyLuDMYttV8uShRB11DyYWri6RRXv+M1TCL8
         0kavarHlWZjkBgjEYnXYwFOgSkPM4Jobl1o3I/guXKI3LZuHnXpJk5F4SHeFy5gHHz6L
         N+AmHB5MpEECNmybrMx//TO7HmEVCh9uayQde/OhbE+Rzby557OYhuZYD7VkHHqxPAcK
         naKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=w71ehFVNQ1ojQk6AdxN8awcSD4JwLPhVcVYC3n+7YIQ=;
        b=DXQ0idrD/mKHhRkSYFV5o1/x5BwJsUSv4SFusv9OIqGawonNS0QTGjcUdTeOZZ0qdW
         XA/o7MQxP5YiNpCw26HgSydkKCD0lrVAIWO+to4uhwKk460ZNIvriqZ1GMxEWTELqmPd
         VeEIypfxbkO9a/raPIUmpGD2vMFH9bJ/gZol545wtkZiEyf5CPrBD5BN+ApY5Bvw6LWj
         tt+d/xUjcmD+jOA5yKka+1xF5SsXeewbYH2/QzyiOyaDTzHBEo7raF8LHz2ezQR/x7MS
         ltg4L+HjIz+2VljTIGI+KstPVGKVX4C4vS+t3g27M+S+CZs1joVtjSDghH/0g05+YXbF
         sAzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=coPNMhCT;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w71ehFVNQ1ojQk6AdxN8awcSD4JwLPhVcVYC3n+7YIQ=;
        b=Hq2VljY29e27bEsSq1+b/JUl0nPv7Mu//QEDpQh6IVhQUvczU/ACFFK8TvCo3kGtNK
         x04Apm47Md+AMQudPYDFNraTc94rTIUbVN+liq0DL/g10rCvz31gSeGP0N5VvbRfpjy9
         bEQx9ue9nk7cYtQMC0oDGhTIg6M77tN13XJwObqScjeHd4t8NH4Pmw9FAgAo7i/4xnrm
         sSDSqKGSjwAM0ftlqH0RE9bbi3+M92KQVTIS++iIl7iLmMyJIcB1EfY/igOSX6DACOSM
         G0XryZP+r+yb51Kv3hdCo3vccgay7suu6PBiqoTVsMwSJ7pCuTm9hL4gJpXQZ+60qTMJ
         ZIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w71ehFVNQ1ojQk6AdxN8awcSD4JwLPhVcVYC3n+7YIQ=;
        b=qAAdY3G/CCwta+vUlXs4KsjZ3LBG3vq/8mlOD9z3QndY4Bvw7ULXOGLvQwOiWftt3G
         8q9EfqjRTmf+mpZj8zVgnaRsL3MC+2PhlJBmqvLOGKwcyVVxGylhk58A/LqI86zDyVPF
         h2R7wonjeS02qkta5rxezJFPqp64j494SA9gF2xcN2kG5P4wKuG/v1maf9V+cqZbDRIm
         qz2jraB/KOp/om53YjuDP2ISY8lAzQcaNN6BmnD+oWzQY1V1Tn03g7YjKNU+gXgcATUX
         JxgG3fPEn1bld74vb4Na1UJA0kUbAKaMpNEToWHLZcPZGXWECcNsXRObYa5kBHJWbBYW
         vhgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHkwafXtks6X3mTHn+XvvDN1EftfH+PCnk5gwQEsy7sVqhozT8
	FxbiSUs/OrHje/NGNeHPo8U=
X-Google-Smtp-Source: APXvYqzB/LPY7nYICht2c/1nalSUM7ITs4aHlbezi9ZQ5/nDZP+xGCAlbKrlyJR2eHWskhX5GtpLQQ==
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr24401277ioc.204.1579126233742;
        Wed, 15 Jan 2020 14:10:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bbd6:: with SMTP id x83ls3614108ilk.10.gmail; Wed, 15
 Jan 2020 14:10:33 -0800 (PST)
X-Received: by 2002:a92:7509:: with SMTP id q9mr664970ilc.67.1579126233449;
        Wed, 15 Jan 2020 14:10:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579126233; cv=none;
        d=google.com; s=arc-20160816;
        b=PYlVzD2XNKo9nXDtoViu80xmqBc4SjOyCOVmZVpKY3OB2G/tCMYi73qey9qwH4nyDK
         ZKaca48b+JGCn8D0kHBS0rWRt85tXqFWtaBJRDoqFQxdHgt8ZLAur171UV7rYMuMCf99
         3jP0gmWbTl2FlmgeZGQ8n8FZoM5bhSP8iQkRTZXG0SQ8S3BhAvneUHvka8ivjw98yv+3
         6oe1mdCdd90TNb7/y6oJSa9GKuaQ2fPCajzzHgLeOVZDLu1igyWJeerh6rJF0sWHdP6m
         5io7cBaY5qmlUntZORG3XYqXu+2K0i6a/VHUBNeYb+2utY4jNm+cVuZd4UNFXOMO6D/k
         al8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=k3juEqvOdpZBoFHF9pJH7aVo4DZcrDHO5B6F+UQ5MYw=;
        b=v5969ACUZWHz41NJOhRLb4Ijzt+WTHiikM8SDN7j+cRBLn7z0bmchsIDXpWqG+Fp3C
         I4pNaj5Bg180rpLlzprjLtHiQpBwLqxIyF6+F3aZueTdXeZ3lYRiz19LfV1YOe/anD54
         iuqGKs2yk/9GsW9DrotTZ2wxKUWBH06KucMIdcQDtpPZW6Mifhh8/vX2a7xl5GURj3Ig
         8fw5MgSi4eaeNHyx9g4ZUwLVgAC908pA/4NJeHbpBKF1tCbLFXoV04oFvYmnbYBkzB9J
         rd/zRFu3oVqZW3A8PBa/QDThNEfTxqTmqK2GIhLBPlNQyBIySOh/nCubLdOIODMty6Pr
         skjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=coPNMhCT;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h4si1040965ilf.3.2020.01.15.14.10.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 14:10:33 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-kPDPS0AVO4yoF3vDtH7k6A-1; Wed, 15 Jan 2020 17:10:31 -0500
Received: by mail-lj1-f200.google.com with SMTP id y15so4458479lji.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 14:10:31 -0800 (PST)
X-Received: by 2002:a05:651c:102c:: with SMTP id w12mr309532ljm.53.1579126230100;
        Wed, 15 Jan 2020 14:10:30 -0800 (PST)
X-Received: by 2002:a05:651c:102c:: with SMTP id w12mr309523ljm.53.1579126229909;
        Wed, 15 Jan 2020 14:10:29 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id y1sm9734405ljm.12.2020.01.15.14.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 14:10:29 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id A09761804D6; Wed, 15 Jan 2020 23:10:28 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko
 <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <jakub.kicinski@netronome.com>, Jesper Dangaard Brouer
 <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter
 Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa
 <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan
 <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf
 <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK"
 <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v2 00/10] tools: Use consistent libbpf include paths everywhere
In-Reply-To: <CAEf4Bza+dNoD7HbVQGtXBq=raz4DQg0yTShKZHRbCo+zHYfoSA@mail.gmail.com>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <CAEf4Bza+dNoD7HbVQGtXBq=raz4DQg0yTShKZHRbCo+zHYfoSA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 15 Jan 2020 23:10:28 +0100
Message-ID: <87o8v4tlpn.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: kPDPS0AVO4yoF3vDtH7k6A-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=coPNMhCT;
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

> On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h=
 are
>> taken from selftests dir") broke compilation against libbpf if it is ins=
talled
>> on the system, and $INCLUDEDIR/bpf is not in the include path.
>>
>> Since having the bpf/ subdir of $INCLUDEDIR in the include path has neve=
r been a
>> requirement for building against libbpf before, this needs to be fixed. =
One
>> option is to just revert the offending commit and figure out a different=
 way to
>> achieve what it aims for. However, this series takes a different approac=
h:
>> Changing all in-tree users of libbpf to consistently use a bpf/ prefix i=
n
>> #include directives for header files from libbpf.
>>
>> This turns out to be a somewhat invasive change in the number of files t=
ouched;
>> however, the actual changes to files are fairly trivial (most of them ar=
e simply
>> made with 'sed'). Also, this approach has the advantage that it makes ex=
ternal
>> and internal users consistent with each other, and ensures no future cha=
nges
>> breaks things in the same way as the commit referenced above.
>>
>> The series is split to make the change for one tool subdir at a time, wh=
ile
>> trying not to break the build along the way. It is structured like this:
>>
>> - Patch 1-2: Trivial fixes to Makefiles for issues I discovered while ch=
anging
>>   the include paths.
>>
>> - Patch 3-7: Change the include directives to use the bpf/ prefix, and u=
pdates
>>   Makefiles to make sure tools/lib/ is part of the include path, but wit=
hout
>>   removing tools/lib/bpf
>>
>> - Patch 8: Change the bpf_helpers file in libbpf itself to use the bpf/ =
prefix
>>   when including (the original source of breakage).
>>
>> - Patch 9-10: Remove tools/lib/bpf from include paths to make sure we do=
n't
>>   inadvertently re-introduce includes without the bpf/ prefix.
>>
>> ---
>
> Thanks, Toke, for this clean up! I tested it locally for my set up:
> runqslower, bpftool, libbpf, and selftests all build fine, so it looks
> good. My only concern is with selftests/bpf Makefile, we shouldn't
> build anything outside of selftests/bpf. Let's fix that. Thanks!

Great, thanks for testing! I'll fix up your comments (and Alexei's) and
submit another version tomorrow.

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87o8v4tlpn.fsf%40toke.dk.
