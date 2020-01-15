Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBFNJ7XYAKGQEJGOFLXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4824213CB9F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 19:06:14 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id z7sf20149076ywd.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 10:06:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579111573; cv=pass;
        d=google.com; s=arc-20160816;
        b=MxkfkiOrdlqNYRmCFgQDSef5+qu1LiR+07v5HVBzSbtFk2UnrRyMo0BFtCmYOpmSnc
         1ijqln8d+gI1KfnmGlojW51eMY6lWM9FThRi5NHZqhyToDYfo9iK+pj4tu3Tk+aTZWQF
         fR3jgEbdC4dIITjRBlRKHdhGGmUbWS854ar0VFIsPTlw0cJQ4Sh6osQYlGu/P+VhSIxP
         NPvPWB8CGBDxytAoVhKjGHEHonyBXkueYwrhyF/E3kKu8rJb9YLpVYCMmsEhsNTvS2hU
         dqtFAKSKsnrKtM9HdnO/lb0UbPRGY8SGiESR6x8/xsTs7FgBVqmEDYLwz8YdgyuMG+UK
         HHug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Al8bKdzpr0i8ymjElgkar1Pkrd3n6gAZ+Q49/XNngyE=;
        b=YlAPGwectdPm9cLO3MaHMCZ8qxgt+3/JeQBJTB4eUYLj2/TVt1E5CXiW8l+kKlNZ3O
         RY+61L3XgQJ370EUlEdP72pT/X/6hCbVUJpvmqhJgoij4GTgEinh0UgjLLtc3kRZsdnr
         G2vDCLrrYEcIXl1r8dEF44LuZJH/zgrLWqFy3LsRPBVn/ZxqYSGHg1mYtvv/eBdWQcTO
         uM3dr3foL5Ks6DSPwdVXB5fdGX6MNmXF9N50uW+Ru2fmg/juM1WHb0JUdIW1q1cV87eO
         kubMW7qpgaGu8xPi55Fs5MqclgFWgfr6rI076AoSihtwYv226F0HWdfFEH9+CEhvxoWz
         g7og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mSPCnteK;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Al8bKdzpr0i8ymjElgkar1Pkrd3n6gAZ+Q49/XNngyE=;
        b=tYMp3KJftQAh+HsEjxLiqJoSiCWJujuNXFHVHwCwfNCAjVcKDRTvL6+BV1TeYobE4i
         kE18hL+oxmB0da9V4JTU35s0zFFFXAgmqDKh3mpnmxiLEuiQ+gKUb31fwgTa4RZwNIEW
         1LyDpp7VqvXrhtvfXLFB5xtdIoIfLCo5xYHTPYWD3q97Q1bKUIq+OD9Zj4QIBTMkXZWI
         j7HFoLMCidpHzin7bekG/HvDooy7XaFVgwQXJSYc0Y5gnVi/A+IhMGNd1cMrGE4uV2tb
         6amNDrM383l2trMWgZrJ9tlcGSB3ccGiOxv1DfKLvtp3AHnAIONp/ZPco6ItSWYKw8IE
         7rNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Al8bKdzpr0i8ymjElgkar1Pkrd3n6gAZ+Q49/XNngyE=;
        b=Vh1SUIZuXc4WgqFYU0MQfRrN0yEAQecwYQALjDM8AScXhTJRVvfoMUTTZ8SPqNM172
         8o9+YxbN+tG/HrzLwgFjCYG1uK0tnBHNFEmWgxnXK8koMo56DMfxebgROB35VV/Cn5fO
         G/AgZJY0R2E8EiwlQrzuOLG7thNlmfPtGx4ODJVPgPX86bh6zP70iCHaZ3LitlttrpLA
         r5/iNk3mgJpgr2LRKErUEwhc/Il0ro0Aba13IFCPphR22qhMiQr8+AIZXx7n6MpHSKtc
         XX/phd6fQPNjYdBp2q2QkvjYZAckNV+YQIuiFmX1F3EcnPpYulg+C0gY0Qtg10HROh42
         S4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Al8bKdzpr0i8ymjElgkar1Pkrd3n6gAZ+Q49/XNngyE=;
        b=U96CcBdWe025wfNVW6LT7sdWS7EN0Md2aZnMRMQkJpQsq2YCnXLboZSAQdHg1V/ghT
         zHcrMkyppXr5q0GLSwn0d7XKOVkWlfGOYwEZK+cyD82Lr4wcIGafOzDD1iYL0ZJawmcx
         7NwqoX4FobnEd1ppK5ImecU9kwBPGUr5fFAaj3GCpvQAwmjs2rgeM4Aj17rXRCNzQJ/B
         QQrcQDkCiXSUsdHiGcNdsDFrEuv+7dnBM8JmKLVy8mvR9KghHIApdvd05r/wN72b4NfL
         M36HyPz8RiTOnwC4SqVaEwuNvlQWPwa/A1jD+EdN74EJZdCwcXInbYHjTAhbWkMZgFY1
         OViA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5t/apBahUeSL0oSNe8pBg80+wbz3j5TTdhc9KWD5T5GUoNJq0
	WUCZDSoQmYGDCm+JCfwnROA=
X-Google-Smtp-Source: APXvYqyb8q6qP5JOFkDLg9l64UlUMapNd/47a86E1PWnFOosYbQM18uEOrPw+nE/tz7UlgIz+q9Evg==
X-Received: by 2002:a81:a6d7:: with SMTP id d206mr19520371ywh.324.1579111573242;
        Wed, 15 Jan 2020 10:06:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls3136005ywg.5.gmail; Wed, 15 Jan
 2020 10:06:12 -0800 (PST)
X-Received: by 2002:a81:f00d:: with SMTP id p13mr22195875ywm.275.1579111572859;
        Wed, 15 Jan 2020 10:06:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579111572; cv=none;
        d=google.com; s=arc-20160816;
        b=V5LVrRU3jN2Io1idObOozLWB7Abpp3M6A5msEHnO3414gd5bJozu7tf6MYZRC1hwH5
         gAlWDPCr13+427/8JsID0uTtI9Ik4e1qLSR4wC0K6xWkTMvHj6/nBc7QtTgzUfmhwDWp
         XiI5d504Njot7l2X7JZ+gZFRsOQ3DuRdePcDbOQh/PgibRSu4X1LI7FBCJSCN5gXWK/i
         udXoHNBiqDysLyIMaFZyURCaaZ2DY1cqkoq3PBc2l9dw0npMt3tPExIAA5mbBDhiqnBC
         O+hBne5gINq0SHyzEXSlusfj8H1pbW6+3blfMCZIfxuPilakeTf2JZDiem5GjV257U5H
         /GIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ELr/XxVqul6D20WrUY/+l7F3oFFhw69GAu+JHpk3Rbk=;
        b=FqAuaj2ibUiaR8fs4SSqCEc6+Ra1vgVqT+ffNAWc8IEJvlcSAHih2MjuQATEWmpIgu
         vIY+i4F99PHp2WqEhlR7f4318l45XQQ3p/ELN/QJ8FRYHjKNyMDD/xDJa3gEC2LyFARx
         nkpY309CyrJ4+XniFsrBG+afM8v2iNDA9pRxH/+U1JPK+wvLHci9FLjaXUYIWyKCoIL+
         L2qpyjUgYJp3wyzlTTt5gMBe63pNUXBsoOhH5mBgt1XIt/4IY8K5iuZDIxLbb3p0AoNd
         0b8UHBSFSN9hmTmM0coUG+52rS/MQsbIjE4aXKDW1IlGNbg8hrQhA97RoY/F2T4PAr6K
         h1oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mSPCnteK;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id p15si768979ybl.5.2020.01.15.10.06.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jan 2020 10:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id w8so2149112qts.11
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 10:06:12 -0800 (PST)
X-Received: by 2002:ac8:1385:: with SMTP id h5mr4640404qtj.59.1579111572469;
 Wed, 15 Jan 2020 10:06:12 -0800 (PST)
MIME-Version: 1.0
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 15 Jan 2020 10:06:01 -0800
Message-ID: <CAEf4Bza+dNoD7HbVQGtXBq=raz4DQg0yTShKZHRbCo+zHYfoSA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 00/10] tools: Use consistent libbpf include
 paths everywhere
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
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
 header.i=@gmail.com header.s=20161025 header.b=mSPCnteK;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 15, 2020 at 6:13 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h =
are
> taken from selftests dir") broke compilation against libbpf if it is inst=
alled
> on the system, and $INCLUDEDIR/bpf is not in the include path.
>
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
>
> This turns out to be a somewhat invasive change in the number of files to=
uched;
> however, the actual changes to files are fairly trivial (most of them are=
 simply
> made with 'sed'). Also, this approach has the advantage that it makes ext=
ernal
> and internal users consistent with each other, and ensures no future chan=
ges
> breaks things in the same way as the commit referenced above.
>
> The series is split to make the change for one tool subdir at a time, whi=
le
> trying not to break the build along the way. It is structured like this:
>
> - Patch 1-2: Trivial fixes to Makefiles for issues I discovered while cha=
nging
>   the include paths.
>
> - Patch 3-7: Change the include directives to use the bpf/ prefix, and up=
dates
>   Makefiles to make sure tools/lib/ is part of the include path, but with=
out
>   removing tools/lib/bpf
>
> - Patch 8: Change the bpf_helpers file in libbpf itself to use the bpf/ p=
refix
>   when including (the original source of breakage).
>
> - Patch 9-10: Remove tools/lib/bpf from include paths to make sure we don=
't
>   inadvertently re-introduce includes without the bpf/ prefix.
>
> ---

Thanks, Toke, for this clean up! I tested it locally for my set up:
runqslower, bpftool, libbpf, and selftests all build fine, so it looks
good. My only concern is with selftests/bpf Makefile, we shouldn't
build anything outside of selftests/bpf. Let's fix that. Thanks!

>
> Toke H=C3=B8iland-J=C3=B8rgensen (10):
>       samples/bpf: Don't try to remove user's homedir on clean
>       tools/bpf/runqslower: Fix override option for VMLINUX_BTF
>       tools/runqslower: Use consistent include paths for libbpf
>       selftests: Use consistent include paths for libbpf
>       bpftool: Use consistent include paths for libbpf
>       perf: Use consistent include paths for libbpf
>       samples/bpf: Use consistent include paths for libbpf
>       libbpf: Fix include of bpf_helpers.h when libbpf is installed on sy=
stem
>       selftests: Remove tools/lib/bpf from include path
>       tools/runqslower: Remove tools/lib/bpf from include path
>
>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bza%2BdNoD7HbVQGtXBq%3Draz4DQg0yTShKZHRbCo%2BzHYfoSA=
%40mail.gmail.com.
