Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBL4373YAKGQEDWZR5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF3313CFC9
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 23:09:52 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id a2sf14448873ill.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 14:09:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579126191; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvApilSXk4fGtFRrYLcbZJbEqtr76ObZTDH4LR132fOGImLSImvSiM449DZByZCVex
         aaknPqGW+7scjwknV8thfyXMORQXQKinDrC4KvipgWRDtQ9no8wjy2975wPn+ydpNcwN
         JaByPg9lUFnJTCDcgW/A5arc2zf5haSb5X3LUJ3ZRp+FB7hNR0Mt4692N1018GcvIqOd
         w5/w/RRIjEBXSLJryrj066nwr0lvo12iHhKTqr9QDffYk2D0sl6DYiNr4HOywbWxfUyu
         Kuj4SlJv7NIz5YL0dN64SnVB0KSvnM1/Jr9qQ7a6sj2TXuT7wXKzTGKwzu15SQKN8KsJ
         xWCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=a5z2NVOU73TUlJOkqz6Edt3Mj9Ipj+9ZDyXSIi6UKxI=;
        b=WdCvZh9fcCsDobpR/n/s7XgdHr8sqVK8YkMhnF3Ddso/Pv7tGFAqlZJeMENVHI9nIU
         ckkHhh7PrOZLi2oHYDbYv6smOdJ05M0pYxkMjAPYil1VeoHo1Dj3YbsCJz3hQ6FuI5Ju
         9VbEEiL26o7gf+LsWYFiyQOy6KG5apVHBGwa/bGIt2lsHMPmTO9BnCpU+INeh+AzmyQc
         NmDi0Q1Kk9auL+L+nI705S5kHBHgSDIQ73GO8a+samwN2m7374YRzLCACKcRMmCaE0bF
         1rwyJ+dSwtMSwQ0Mchdv7RYIiWv/J9LDAg1+Ag5/Ybh2GhNjF2sIc6EHVRVHlc71BnnL
         cOWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gqUJZmIz;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a5z2NVOU73TUlJOkqz6Edt3Mj9Ipj+9ZDyXSIi6UKxI=;
        b=r3xWMDFvX26jG2FiHor0j4buSesfuo/QmAQDlFlHoBd8ODV/tNqrkwgjITB0Ulh74t
         sC7Iv5IpLCO0KPO5EtTAsbyaZe+yejA4Bxk00HIomOhFaKp5L/JojbPu/AgUoKfSP8Qj
         fGqZjThQj3qsAmFrOXRkNeOlnD6lfQqzJE86UQYOGWJH9dvbE5j9M/7LNjywQ4meOJuq
         +nv+0v/UwXqZKDCbTH3xpswx5VUDI5DgFkUqxSlBDvgUA328B41C3/JA/yMQhDjpkjX/
         xbybE5TcFMJDqzUB3NLUOiAGteh3tkhS5NMgm0LExkGKgj5WZ3jSCbSWn+OuShj+v0/O
         FsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a5z2NVOU73TUlJOkqz6Edt3Mj9Ipj+9ZDyXSIi6UKxI=;
        b=NMbzNWOUNA4K4e3IYQCkY5PIa6ZW5TNy6npzYhoHzNbdBF4k9ibAjOBfapkCSnkXP/
         0Q5peDrvsHq0QlO4XDlE+n5aDB0+R7BeeitsKbgGVvg9vVLB4yG4DzQcNTqktgYgWtCi
         IaY+uUJqHAdj9f8Iu+J9R93QjaxujLjlEH4qpiG1iztDmYOS11G8GpKxOZxUCcNSCQPW
         4fdzirr9H0JbCrHY3Im2oAgFci7yIYuVBAL+R25ENIRa6Q1RDYIapxL4LHH8ttKDIM93
         /hLHnKQ0eAgIbl3DxR4z1V/AtcmcqP48eGB37l3utrRDeYIRoSQveOuy5eILm3Lr0i6z
         fSfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/SCwx7NgK2nSYBR3P+RQ5aEyzC1+CvZ4op4m/0C9i+gEnFXXs
	NO8EdjRgdOxPVMDXXGD0wg8=
X-Google-Smtp-Source: APXvYqzWpxa5dfp+whiIscnUhpOH0KpXxxSueg2T24hQxmwBIjyQbr9eNZMpvcLqXZ5fM2IhUumbJQ==
X-Received: by 2002:a5e:9246:: with SMTP id z6mr24855402iop.232.1579126191159;
        Wed, 15 Jan 2020 14:09:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9807:: with SMTP id s7ls3195795ioj.13.gmail; Wed, 15 Jan
 2020 14:09:50 -0800 (PST)
X-Received: by 2002:a6b:3b49:: with SMTP id i70mr24312168ioa.106.1579126190771;
        Wed, 15 Jan 2020 14:09:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579126190; cv=none;
        d=google.com; s=arc-20160816;
        b=gpmfvUx7DDbcqsZvIesBw9ZhjphXfUEhnQ9ZAByBH8d8eSCLilemvCZbcBsg5r+jNC
         Ae4CGVV0XLWeI+Rqi1oyg9XCv2gzxZLK+raWq5+IeiR8ihkloNrkZldkMQcuupMvsc2S
         RnMQK5z2VE0qMxY1sVAby6TCxRp37XHarZY4qGpIBlFbChZveiicsW99WM2hyPvD8b1e
         /Xtrdu0t1y+SqpZNzicDgRVpzvPBRuWvPjg7YbgtgBNnPVG2YLi3QA6mG5dT19ZmLkUT
         CubVhqeESwQtEnsL4gCMSZ5VrwQaDbOh/UqelOBWamsPR2E61tG7x74LRJE0GZeDKyp+
         +GlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=lPVtboInKieSKlOtGI381lNBNnYB1zYfy54rCR+bnU8=;
        b=aGDRlt3Duoq3ogOdOUA95d/PUxmGNh/JXdtcAOcmiA7GxtGXEVMUGSb+H18KrBERek
         /6JlUaynjejYGP09bdMXdB/wq6q4soAlxPxX6HviyM/Ls2TDemlC7yxElEwTN2Z3xsEp
         6cYwzi/9sgw1Z7d6oVw5jQLW+HYfJyjiNP98JdB0SQKWmCM6gwQ/9YJX3nseY+3zxg9w
         +hFIYZq7eZ3IaxSvmqNyzjjy8mzTUVPtJkuaXca806SpqYrVkFGu47cw4n5+4CdPkf2A
         GwLv99J/xqngByAtRarDx4dNQwYFIHla6rMjXAbaDJsMG9Hm/Ey/SprujxqbOAIjFuQi
         zfag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gqUJZmIz;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id k9si889366ili.4.2020.01.15.14.09.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 14:09:50 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-373-sgF2VRY2O3WUHP9sum-0zg-1; Wed, 15 Jan 2020 17:09:48 -0500
Received: by mail-lj1-f198.google.com with SMTP id z17so4454465ljz.2
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 14:09:47 -0800 (PST)
X-Received: by 2002:a2e:8804:: with SMTP id x4mr309079ljh.187.1579126186246;
        Wed, 15 Jan 2020 14:09:46 -0800 (PST)
X-Received: by 2002:a2e:8804:: with SMTP id x4mr309055ljh.187.1579126186024;
        Wed, 15 Jan 2020 14:09:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id r20sm9450459lfi.91.2020.01.15.14.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 14:09:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 970D01804D6; Wed, 15 Jan 2020 23:09:44 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v2 00/10] tools: Use consistent libbpf include paths everywhere
In-Reply-To: <20200115211900.h44pvhe57szzzymc@ast-mbp.dhcp.thefacebook.com>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <20200115211900.h44pvhe57szzzymc@ast-mbp.dhcp.thefacebook.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 15 Jan 2020 23:09:44 +0100
Message-ID: <87r200tlqv.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: sgF2VRY2O3WUHP9sum-0zg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gqUJZmIz;
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

Alexei Starovoitov <alexei.starovoitov@gmail.com> writes:

> On Wed, Jan 15, 2020 at 03:12:48PM +0100, Toke H=C3=B8iland-J=C3=B8rgense=
n wrote:
>> The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h=
 are
>> taken from selftests dir") broke compilation against libbpf if it is ins=
talled
>> on the system, and $INCLUDEDIR/bpf is not in the include path.
>>=20
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
>
> I don't think such approach will work in all cases.
> Consider the user installing libbpf headers into /home/somebody/include/b=
pf/,
> passing that path to -I and trying to build bpf progs
> that do #include "bpf_helpers.h"...
> In the current shape of libbpf everything will compile fine,
> but after patch 8 of this series the compiler will not find bpf/bpf_helpe=
r_defs.h.
> So I think we have no choice, but to revert that part of Andrii's patch.
> Note that doing #include "" for additional library headers is a common pr=
actice.
> There was nothing wrong about #include "bpf_helper_defs.h" in bpf_helpers=
.h.

OK, I'll take another look at that bit and see if I can get it to work
with #include "bpf_helper_defs.h" and still function with the read-only
tree (and avoid stale headers).

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87r200tlqv.fsf%40toke.dk.
