Return-Path: <clang-built-linux+bncBCUY5FXDWACRBSMD73YAKGQEREJRLDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E77413CEBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 22:19:07 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id t4sf12203895qtd.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 13:19:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579123146; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieY2PGtuhyk9gVgFoks9LAfGKUbdPPC+/+KcoGkkDOiHeA3lF//29hpjD4JUP8IeMZ
         EpRSuuBeJJVWa5yyNg7kHr9VKVubCwYZQn+E3NnfeHzc/liUmViSJ+khI7xhid311I3w
         rWfGwbgt4CAMwjHdXpJiRU3Uawf2zytQWJATSBwE032cSr1NK8SdL+ARmRDfuzrzstol
         ShpYHWW1VEuKKe/CjSG9NrUwwn1wNLA0Tqxk3EOlMiAwONucddtiveXBm1sFTk+Qqv6t
         5FDg9yPdzCSs6i7AgAKiwBwOFq6XhBTSRp9ca2PMGFd0k89/TUZD+ifiOs1X+WIWGy6r
         Zdzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=yu6MbWJ/4K3UCi66D48/j64EUORFeCqJ7FwoUEunyDs=;
        b=gTBm8HNpI2E3jWBAGH9ZIvifz+zhhiMSoSW4bN+evs+1kq8bpVFco5tPIYyn1H9l+N
         3w2G/5gv8HHkNAotGh4jY7rPaYIg5PJuYLqCvBKvwCsKNLQnc/iIQzxGF+lX2gCmwrFN
         o07gPqc7hAlMT2SVQH4vUx8ecV4zjfSpVSSMVoyRLdUpKp3FMcCQBmTno/ZVQGJLpGAH
         siYSU/x3iYUrzidcBMhGaVrPEc4xqO5iWREI8P04WWhNphooAah/dFSrhx8Puv0oUOtV
         65ix92eB3lNbmSJ2F8QaovDJdB4H+fpUAyWxhVuoNUaATX0TMSJHjSL3vsjzbzPj7bx9
         N+yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnNUH7zA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yu6MbWJ/4K3UCi66D48/j64EUORFeCqJ7FwoUEunyDs=;
        b=EsYuWu1Sr9yX3EH7M3BXGqwvAscQibajyeF1QTcDKvsN7oq1A8RSXPN5LlD2OHzx0B
         XXJOwdYSsYZyHEJj4UvkS850Snj9cmCv7e8TMGtAz5bGjHn6hWwmp2s3KdM0VBV/epvm
         CTsVkpr9+WGEYIm+nYzyhRdFZMOvjqt70flJhvtgZ42+TF7y9qd+b5icSDGrdSHSF+Px
         GHmQA7WshUefRdoeQfnCQrLtHWYZI5t986QE30NtBjCkWAHH/a85iXi29mHznEmgkGrJ
         gsC1M1VlSP9Xy2nCewKULCNMtBxEh2VOxtaH81cta2WRVB4YHBJ+0hNDS86kaqnM/d4Z
         GkwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yu6MbWJ/4K3UCi66D48/j64EUORFeCqJ7FwoUEunyDs=;
        b=ZAK+ePDaNMtbVfmpEs2Culsik0eAULM9XycZrAzj2FcH4MkUKfviWFbPtOhWuzRClz
         BE3AOXeOQOxkfZ0rv/QtV5eemQJsq+c7unueBd88lET7eRtpy321lBXKEcdqpnrh4lon
         lAeANwNUyNQpwhwAEc+pLxKzFS/MDuZYyXyCHemeUDJYMVoq88u4mXEyx7CfJxBnKcFG
         Lj+MLjFXfIk47X0yJ7vKyXKJNnnsp8fmb5IQrMuN8EEEr9gT9mpIOOqcEH3VsbL21tbQ
         f/naRdLhYhUor8rmtOnQTG808eqEWEb5ITGqrEy0H1ngp9HZ8oiKyeLR6Kl74l3qJSj7
         nbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yu6MbWJ/4K3UCi66D48/j64EUORFeCqJ7FwoUEunyDs=;
        b=Yo3OdeZOW86ehGIAujQ/QNcXi0b3OnG2UOevvgS1DN4kWyRYLNb0xZA3X93PWBNQED
         yCtruhZyXyI2Nb6qdl9CvRsiT0dXcSAzxlDB0e8vvHsLJx7PLeNuR4nUJttbUnM2qHoQ
         Zfsbsyg8/R6fF85xLBbLfabmUD2EIEak0zkRuW4U3BG57Xd5s1ZujdpEObJ8Mx6uuwbl
         kF2ZcK9BpawIlG9RmcEOhHZd9/ZzcwSez7d6/bdoOHLR+nr2ZwjGpJ6wNNK/TqR134nk
         UDNYufEseQpARDTo58O7Efv2SVIzFk0r/VUzAm8bisU8wQZX41F0WMenN2jDN6fyEc/U
         oUIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmkjSljgfAFxQHGIkWD4NQOgKQsd8jxd5La2jz3J8Ko3RgR9at
	DytwN+BWtAZlbUPPUi71nFY=
X-Google-Smtp-Source: APXvYqyK4/3QvQ0n7ZdtB68cqbHy8dHZLqoi6SHdRKwzKT0nWZz6YAjqS61BitzcGrEtt/uzdEnVcw==
X-Received: by 2002:ad4:4182:: with SMTP id e2mr24498149qvp.187.1579123146027;
        Wed, 15 Jan 2020 13:19:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4526:: with SMTP id l6ls2220565qvu.1.gmail; Wed, 15 Jan
 2020 13:19:05 -0800 (PST)
X-Received: by 2002:a0c:e84d:: with SMTP id l13mr24254551qvo.53.1579123145675;
        Wed, 15 Jan 2020 13:19:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579123145; cv=none;
        d=google.com; s=arc-20160816;
        b=Pr+7hJvpftW2UBtDHfDZxDp8ytNxOJKRwgapeWDzcAekRUy908j2mt1gTvVAeWbHCQ
         tyhgz9EBP55Z+Ob3PYOxDHA8xbXPfhiTX0rpYk44WHKa9zJDM2IkHU7VckFddWP9cehj
         dG5tg7r42BxadhUQWjkXmkH3SaGISLLmYmmZ2b1zfGc45VdaYAO7DeAQt2ZAI9s5vYqH
         Jsg/IX+GTxDsRcA9zZ+9IoXEk0uUyOBwjYKMztL7ccOPRx7nQsXjNAZAdXnbSASn9Zeh
         jzBajTI595/Am4UoPeax3/WHA5lvDSbFBo+5PbCfT5Ut3BQZbdUq5GUmYyt4X6AFCtRT
         OWtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Sr5D3Vmy2L4zBjOZJ4kwZ5hGeIC3RIyoZkA5ktLyrSY=;
        b=IKoL0Ys7uZBAQT48dIniWH/V74bBPKWNjUv9UbcXgWYzP1/nKlOVxfRV7h0rBlWE3G
         2O6odVYHmpypMEHsuH2nlVBQ8LZJhHWbeO8eZTE5nQXNk8mhSriWTcFH3Xbr6K8zg2+E
         exMg5zSnSK9lZfwyKNz1OQFntHeQIWFOKG8hQoobcVPhrUXWlPiBRgEB4uJUN+ouxNHg
         rkpbDf4n/FWDmAlAdOCCn/gjLb4BAF/aeneeKUmg2emxK9DF0nFewrCkGWEDUDim3NkX
         +ZJiwJs1kniQ1S8WL21UntUzS4Go43bviQ/MXYLwdARjoGneLWTwXo0/FJBJsc4ZHhMm
         6iAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CnNUH7zA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h17si935728qtm.0.2020.01.15.13.19.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 13:19:05 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id r67so492480pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 13:19:05 -0800 (PST)
X-Received: by 2002:a17:902:9003:: with SMTP id a3mr28071089plp.224.1579123144650;
        Wed, 15 Jan 2020 13:19:04 -0800 (PST)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:200::3:e760])
        by smtp.gmail.com with ESMTPSA id x65sm24047764pfb.171.2020.01.15.13.19.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 13:19:03 -0800 (PST)
Date: Wed, 15 Jan 2020 13:19:02 -0800
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	John Fastabend <john.fastabend@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v2 00/10] tools: Use consistent libbpf include
 paths everywhere
Message-ID: <20200115211900.h44pvhe57szzzymc@ast-mbp.dhcp.thefacebook.com>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: NeoMutt/20180223
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CnNUH7zA;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Wed, Jan 15, 2020 at 03:12:48PM +0100, Toke H=C3=B8iland-J=C3=B8rgensen =
wrote:
> The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h =
are
> taken from selftests dir") broke compilation against libbpf if it is inst=
alled
> on the system, and $INCLUDEDIR/bpf is not in the include path.
>=20
> Since having the bpf/ subdir of $INCLUDEDIR in the include path has never=
 been a
> requirement for building against libbpf before, this needs to be fixed. O=
ne
> option is to just revert the offending commit and figure out a different =
way to
> achieve what it aims for. However, this series takes a different approach=
:
> Changing all in-tree users of libbpf to consistently use a bpf/ prefix in
> #include directives for header files from libbpf.

I don't think such approach will work in all cases.
Consider the user installing libbpf headers into /home/somebody/include/bpf=
/,
passing that path to -I and trying to build bpf progs
that do #include "bpf_helpers.h"...
In the current shape of libbpf everything will compile fine,
but after patch 8 of this series the compiler will not find bpf/bpf_helper_=
defs.h.
So I think we have no choice, but to revert that part of Andrii's patch.
Note that doing #include "" for additional library headers is a common prac=
tice.
There was nothing wrong about #include "bpf_helper_defs.h" in bpf_helpers.h=
.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200115211900.h44pvhe57szzzymc%40ast-mbp.dhcp.thefaceboo=
k.com.
