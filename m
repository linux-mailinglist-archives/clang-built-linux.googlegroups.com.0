Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB2VJTDYQKGQEGD6YAJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC64143323
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 22:00:27 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id h6sf862169ybm.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 13:00:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579554026; cv=pass;
        d=google.com; s=arc-20160816;
        b=sGhf7Zqg57VgJbsBlYaqReTu9+dyFsW6zKoBEjjs/glP70sx+M56tTiDjPb34pyrhK
         hnrTMnh7UnTg2u4xio+0haQX2X3myrI4bF7BAYudHgpc/wuNP+mvGr2zUU2N3XvHF+fh
         gWVI+UbgHqiY0NwvxoHcO+KtV4jkp1aPa+v7vZFspitFM3bq9/Ahm68j4N1/+NdMXecH
         Q6G2kKkHyma0UJbxOU+IoNwl8sD1oHT6XaGMNe/DBbnU1FrexWBItd0jyqQ/6dHaLE8j
         A9C2eUMksYqWnyqFiVMB+FIYrDxVsZgtM1dcubL4LXahVFJGyJHB6UbMj7R593E8gT/5
         Vrjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=+xSdCqa3sFTa3+QgMJZenC1LkzKjEWWzGqECW+YmwR0=;
        b=SFx/dGkOhxJ72gtOdl2Rak9mTBClAO7nlDC3WwArLK2NxGVOcK0wzlNPoK6R5hx7uu
         cygSzK2aJ8G8zyxWTfUQQvmIpa6PYwAgo2U259PNoz1W+mi9pxCWpQPH9kbArp09yLOm
         Q1XJpIHYhkHdBnVY3mcgqzmiLQqVFkKgVVdH+xIe61KDwiPYkTQBaqwhr3O+a07jbSLx
         F0OQk+yy/BDrZV2UPOOzHQGnRfIrhTQ9LuPIYyUJi44EDLruxa1DYyJTejhQ5kHFfNkr
         x53VXsgnWNpra/mdLnak4PiJJbJsHqJcWM1JEAsW3+/Ru6TqVnQuDrFvstgPU6asuEDn
         1M7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NBc2Q5ad;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+xSdCqa3sFTa3+QgMJZenC1LkzKjEWWzGqECW+YmwR0=;
        b=Lafz7tzN/akl3E9PpqLG28zo2+boOMH8qrajo53qbyMgPsMiG5R8E+mQ+Aw9o4689z
         O3zeJNEbFB0nzZw4XPOMe0qVosF3N+Jr3HncQkAs1krU+wVxyPCJgjdeXtqHqmmEaccn
         8lYJdSX6nw8Ap8dJIdl0D5lVY3kPLtWffSTXhzjP2wtANV5T8B3T4XGLLvsOuKr43XqE
         LPY4YVID97rc63SMwDgLOSzlHBP67Ppl8CAmLYxHy7ZRDQSpFeVn7F/zeVN8spU1KvMy
         2Y3S+hWy0PooDGrcwSimmhY4LK2GQrwJWQqYTrDYCtQpKjEjivik5HfhJsX4lrFCMGtU
         vCKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+xSdCqa3sFTa3+QgMJZenC1LkzKjEWWzGqECW+YmwR0=;
        b=asLtEWL51kfk/Vk72nWlLi52HFaMqjU3ig7/83MgfHFUlWksoRc7wLHT+VIl7MMROq
         jYwaowIqneJuiOYFYvHmeYBUhWMfXfnE4aW5v5nBbFfngRtqUv9lndyT9Fu2bq5RK6p6
         S9pwWQ1ieKexAMip15WjmKNbhRTnztsr7ntjZUwn7GcTu7R+8CAbvO7k1PjtOJeUhCfy
         2iqH1UBA7DHhAHlbCOQVCojhRmuB/5RcuwdA11y9KmUybn0Z2uW8aHKuNAvylEc9L6H/
         5MuQOOcAQlGG3PaVXzh6SgcfHHIJndB8r46dZj8P1vgsmu1Q/6dw7H1TR9N8BGIIaLpE
         DMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+xSdCqa3sFTa3+QgMJZenC1LkzKjEWWzGqECW+YmwR0=;
        b=pdJJRPYKcLlylkJyk9Qa58FJC/h4iS3qYcyDc/ombeCfExFBycSOer3IFudoSApSuX
         LFrKNXb9gxKbQsZ2KjmDqyD85MkdvI2vG8eg4P0Q8rbWcy2jmTRp6XJHqqSTHBg3dFFE
         zMzQVNKSvW66H9JuYhNGW64KMBaNm+xf7yY9XUHy9tMYpeO4h1cLFjzBSWb7Qv7s3bSz
         4Of0Xv4/42OgqV1yXnmm2uj6NxGblHRJtK9tBRaI541Xw1RlH3acLjPEIVfkx/RnPxu5
         R3Fc4wZLBYwP1LpVRX5tof5npueg1RK86ZOsFKg1hCZPXbs1ZXn7lQFQ7Ht+fgSax6Zg
         ufKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKFm3NPotDc8IMu3TsgeL8iIbnUlZ/RZUk5eJnaSF8ieZ2m1mc
	9+JLQJHAtzC5/G7+hGrQyL4=
X-Google-Smtp-Source: APXvYqxLj+uwtgILkLssc/rOlXKJrlrjlHny1uHo6lZVCjbbxmWtCJXLujKJZ7GzoLiKKiVjaFWgWg==
X-Received: by 2002:a0d:dfc5:: with SMTP id i188mr787835ywe.172.1579554026258;
        Mon, 20 Jan 2020 13:00:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls5530723ywd.1.gmail; Mon, 20 Jan
 2020 13:00:25 -0800 (PST)
X-Received: by 2002:a81:6785:: with SMTP id b127mr830607ywc.56.1579554025913;
        Mon, 20 Jan 2020 13:00:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579554025; cv=none;
        d=google.com; s=arc-20160816;
        b=gk6lPGL0WrYmfCvLhlJN4C53VmpRNo5Gx1mH/JyB0wOtPgqSOTK8+UFAno2xZTmdqc
         Dgfyi0+NKuL6w6U/EGMSrJV2x/YQLbtcTjIpSyHp9u4oxhulvsVUy7MfAhu222Q2+UBy
         Jf6Efh/5NWlEn9Z5ijpmhyb4wWb+J+lF0iOc///brlB0QyYiqWaQtHr0mjax44IBpOjn
         GXvDJNpJxe8wKPXKGxSn9/74FAHED5uHdON3ccGNTBkhsFqFK1nPxuYbv6iroMbIv18F
         LXt/D8FcKc8+uaxpYBRbW4SqFMobZxm7y5oed6uMebxlvaae/rmkAs6mK0EWF/Sac8BG
         bTyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VQ+GdhZxzN9nLfpgX9IxRVtlqBky78upQxgIvlUTRO0=;
        b=0b2QmyQdFnVXa2LLlZJlDfbTLXM/r5DJkFMRqLpLTvbbTfwAkfu/NMvcsZCskRifsD
         l7Kb3PVpnZgOXNi7gLEbaNNKmspiwYTejqah1vh85k9dokFsyAePZL83+2JbhRp+NUKR
         nHvE5+CiVe48ONT/eFUgUKyU+IrH4eLnO3FRoJc0ZL17B8IVKkh9aQrXW37IgZmm0oqQ
         eALxkDe84kN/GY4RzIZLbtoC6uvj8UeI4X2kFe4cox6YZW7LIgcYuOW34+knDHGheiqn
         K6jLM/ikNwfN2Fqvm0fo9IdflH4TyUmYsWcENj3xmZNnA85SMR061hVcEomLWSEUmEC0
         vnpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NBc2Q5ad;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id n67si1805508ywd.3.2020.01.20.13.00.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 13:00:25 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id c24so906877qtp.5
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 13:00:25 -0800 (PST)
X-Received: by 2002:ac8:1385:: with SMTP id h5mr1257133qtj.59.1579554025526;
 Mon, 20 Jan 2020 13:00:25 -0800 (PST)
MIME-Version: 1.0
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
 <157926820131.1555735.1177228853838027248.stgit@toke.dk> <CAEf4BzbAV0TmEUL=62jz+RD6SPmu927z-dhGL9JHepcAOGMSJA@mail.gmail.com>
 <875zh6p9pg.fsf@toke.dk> <CAEf4BzZ7x4F_-bjGg7TdzXcin6c1BAT6OKe53ujh1tx-GB6-ZQ@mail.gmail.com>
In-Reply-To: <CAEf4BzZ7x4F_-bjGg7TdzXcin6c1BAT6OKe53ujh1tx-GB6-ZQ@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 20 Jan 2020 13:00:14 -0800
Message-ID: <CAEf4BzYN3Gx2dsAoHZLxhv=oVVUgoKacZ3eoWYuwB4tW5t6W1w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=NBc2Q5ad;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Jan 20, 2020 at 10:35 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Mon, Jan 20, 2020 at 4:57 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
> >
> > Andrii Nakryiko <andrii.nakryiko@gmail.com> writes:
> >
> > > On Fri, Jan 17, 2020 at 5:37 AM Toke H=C3=B8iland-J=C3=B8rgensen <tok=
e@redhat.com> wrote:
> > >>
> > >> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > >>
> > >> Fix the runqslower tool to include libbpf header files with the bpf/
> > >> prefix, to be consistent with external users of the library. Also en=
sure
> > >> that all includes of exported libbpf header files (those that are ex=
ported
> > >> on 'make install' of the library) use bracketed includes instead of =
quoted.
> > >>
> > >> To not break the build, keep the old include path until everything h=
as been
> > >> changed to the new one; a subsequent patch will remove that.
> > >>
> > >> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are ta=
ken from selftests dir")
> > >> Acked-by: Andrii Nakryiko <andriin@fb.com>
> > >> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> > >> ---
> > >>  tools/bpf/runqslower/Makefile         |    5 +++--
> > >>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
> > >>  tools/bpf/runqslower/runqslower.c     |    4 ++--
> > >>  3 files changed, 6 insertions(+), 5 deletions(-)
> > >>
> > >> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Ma=
kefile
> > >> index b62fc9646c39..9f022f7f2593 100644
> > >> --- a/tools/bpf/runqslower/Makefile
> > >> +++ b/tools/bpf/runqslower/Makefile
> > >> @@ -5,6 +5,7 @@ LLC :=3D llc
> > >>  LLVM_STRIP :=3D llvm-strip
> > >>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
> > >>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
> > >> +INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../=
lib/bpf)
> > >>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
> > >
> > > drop LIBBPF_SRC, it's not used anymore
> >
> > It is: in the rule for building libbpf there's a '-C $(LIBBPF_SRC)'
> >
>
> Ah, right, missed that one. Looked a bit weird to have $(abspath
> ../../lib/bpf) used in INCLUDES and then separate LIBBPF_SRC
> definition there, maybe
>
> LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
> INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(LIBBPF_SRC)

Never mind, you delete it in later patch anyway.

>
> > -Toke
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzYN3Gx2dsAoHZLxhv%3DoVVUgoKacZ3eoWYuwB4tW5t6W1w%40m=
ail.gmail.com.
