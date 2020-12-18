Return-Path: <clang-built-linux+bncBCCZHPMXYQEBB36Z6H7AKGQEEP53QFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6422DE011
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 09:48:48 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id 140sf991591lfm.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 00:48:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608281327; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcsmcgM0vjyu6pEfdKY5HPvba4sqT723n/HVN+MychGGlrJK5LggH8iWvUrQBFcG3j
         gQ/m/d4nQ1hVoVnJ2hnRL5OxfebR62utCGXmdlS4qvHCpzOwdOwfRNGuFQFXccxMyU33
         50yYJ9ME3FZQMd1XW7paLIyvS2Py1quO9a5NKYniqZX+vIbkBeyYcwsTeKMXhS796U6c
         yQaNo5fLJSx4pQkLkgINRJe2YRrdJ/piSmcCK7XFnsz7K4j6vYjxqPKXxHJgZrbvYyTr
         yeUxfq+VaUVMzxnRnHSDjsg7E/Oiz/YHyEKsmlm787nFKnEQzkMCXXK4LKy7lyDXwi7q
         Cl5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4SQeX9WNPv3wh7i/eDcDKo8jl3yvUskYnHoIDHYTLOY=;
        b=PU6H5vp/HZuVb0jEwMABifwRnKnbQjuoJyXUSpl4GB3G811E6FOxKeNR+W0pb+ERKd
         lGUpeTS7cjzzYeWORRqbaHE1Ej7g0e8K2rqW6C+WNTf8HZPyricfoSXCbSsgQKBl65Xm
         C+L3BcaZmyUbChlwXzi9Pmv8datQrXC1FY2CD3QWgB07dRUUOTpzHyziILAijM41bjGL
         5oGbgjYe2fo/FtyJTFdQb6/k+1N2boxnS6+SQ/xgegRZGCcdMi24boH/IRz9qdwOptno
         bD9s//bN2gNLS9ZV7tpf7/y2sEdPQhoPYNl3+t7Ge/pVXJxv0Exvp+CWSFf2g/Ezj+/w
         +YNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=c+foaB8H;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4SQeX9WNPv3wh7i/eDcDKo8jl3yvUskYnHoIDHYTLOY=;
        b=LP+lCpT/kgmHGVayo/yN5U1qdv6xqO9hRZH+kALCqJE2lXpEWsEo0mjh+RDRMTIulU
         AAnUhUV0urW/bVRkgWKahuyW4ruvGFcI1ULCMpQvFWGh2sXje+kIi88v5Q8rLG3fi5EV
         R2luqZ+h8LpF8UANJkyNpCrQu58Ysz3bWn4pxfMcnoswUetfhgAyZzaHt/To7H3UK/3e
         kfISqIILze8jpmyTZ0ATdRYN93kruGVGG6eqeU0NjUCKKTLB6Ct1aX4qZrETaLChwVcP
         jcuEwTlLamgVVnWcKHRoOrXlwXK0EsCZh71p0un++9FyBi7S0HqbNlf+MonpwMvFQTwl
         W9Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4SQeX9WNPv3wh7i/eDcDKo8jl3yvUskYnHoIDHYTLOY=;
        b=QDgI3nZrMzHlocW2QmJSRPf7otr5Fs2Rd6or4KyWLOy5NcU6Ggd5ZWt373ZWXzWTVa
         Ko+uEetIj22lCLQ82MpUHj0qgcBuOAyjvRTkrMi9GlXBxxiLyjnO1dnM+acgE/x4KDnb
         OeiiLD50387GVjQKqLzHZ3K16jakGtnU/yPvNatJPZSu4DTmS5/vo6Dnk7dM5OLtkiAP
         Fqe6t+3C+d+i23p9nTp2HjXfeH1SM4PPfO8cDsBu1OtZjfV5mHkF6zgN40NLM/+fHeB+
         uhy4gEkJTnEj28++CjAxyQrfiJgJWgcL1aLe9rJJYD7dVXaQyq9wReubakl9ZjBAas/S
         FghQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532touvFWuTLyNhRHszZHM08KVZSWkQHbkVa6nibh8HMo4IBQlJH
	MCktK/1ZO+muDeA7WMlxRRY=
X-Google-Smtp-Source: ABdhPJxv1ohfMOEczBhlANx2/qlA6a7WCZQYWBQHPSdo8RWm8aSpxwjZvwvDF2jE9/QLjqUwpQYAzA==
X-Received: by 2002:a2e:b055:: with SMTP id d21mr1435661ljl.68.1608281327704;
        Fri, 18 Dec 2020 00:48:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls585539lff.0.gmail; Fri, 18 Dec
 2020 00:48:46 -0800 (PST)
X-Received: by 2002:ac2:59ce:: with SMTP id x14mr1053865lfn.545.1608281326668;
        Fri, 18 Dec 2020 00:48:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608281326; cv=none;
        d=google.com; s=arc-20160816;
        b=Ecl4Z1MbVNcp5k6fgMCuMKcEwbL+qVDv0BJzcMDhz3Y58V+TjOIe2B7KwcLARPHbEV
         PjkHP4JHchfgbJjglHeKiRRfwPbSLiC4hFHA53u4BmgQ7WSsR5ywZR6XZPzVTSwt1wrr
         /XD6YHtTK6vx72vl1vDPPKDTMRQhbU7Ni6kO/PrvRhc2vA0D4arcoQjhXxEm7dAfCgE2
         +KaNLoSXjSuvpEwkacgHBpRAh4BofZtVU8ioyHfh3OZdOn7xF2fpIQkj0dQvQsRcaRir
         l6ZDhEdtY6ULD5E22kxV/ZOeuWXTqARHlXSh6u62GYpcskv4RNcKKQ0r1JrEKifeNAUI
         wUfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NmnIiSulq3AbMSCPVbOVOJIE+ovtOnBrMZAB9MaddG4=;
        b=CCk8S3U6uHlkkSeZVtRvsDf6io2mP98vfyCrT9zLS1hCDZuz9mFYfkqZKJjdQ4lZeL
         H2rafW4YAkZrfv7xcvyjTNxGZXWUwiILWcsOetplQFtPZWXIcr4Sdq7KRYr0RN4r3Qae
         mSzFxXIqLDR9nx4iSzZiFyIdDBm3YyS0hxJJLeN1azsda8Hi6x/6Q1PsC11wVKBsizSZ
         HA7drkUgc8H6PbiG8BiWcSzSmOnI3Obrflzb265cxazSq/CoocbwcQD3xZIv/4Fw8ER1
         i4tWyfRSnm+MMbT0EubRhGG4UrM9ML2Q+2EmIrRibwrpTO0oTUrdE/baZKahI4ZpYx6R
         icaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=c+foaB8H;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [88.97.38.141])
        by gmr-mx.google.com with ESMTPS id t65si28298lff.3.2020.12.18.00.48.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 00:48:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) client-ip=88.97.38.141;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id C7FA6C6357; Fri, 18 Dec 2020 08:48:44 +0000 (GMT)
Date: Fri, 18 Dec 2020 08:48:44 +0000
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] btf: support ints larger than 128 bits
Message-ID: <20201218084844.GA28455@gofer.mess.org>
References: <20201217150102.GA13532@gofer.mess.org>
 <1e9594be-c21d-88d2-e3bf-0b8e3e991aa1@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1e9594be-c21d-88d2-e3bf-0b8e3e991aa1@fb.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=c+foaB8H;       spf=pass
 (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted
 sender) smtp.mailfrom=sean@mess.org
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

Hi Yonghong,

Thank you for the detailed review.

On Thu, Dec 17, 2020 at 06:12:11PM -0800, Yonghong Song wrote:
> On 12/17/20 7:01 AM, Sean Young wrote:
> > clang supports arbitrary length ints using the _ExtInt extension. This
> > can be useful to hold very large values, e.g. 256 bit or 512 bit types.
> > 
> > Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> > case for these.
> > 
> > This requires the _ExtInt extension to enabled for BPF in clang, which
> > is under review.
> > 
> > Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> > Link: https://reviews.llvm.org/D93103
> > 
> > Signed-off-by: Sean Young <sean@mess.org>
> > ---
> >   Documentation/bpf/btf.rst      |  4 ++--
> >   include/uapi/linux/btf.h       |  2 +-
> >   tools/bpf/bpftool/btf_dumper.c | 39 ++++++++++++++++++++++++++++++++++
> >   tools/include/uapi/linux/btf.h |  2 +-
> >   4 files changed, 43 insertions(+), 4 deletions(-)
> 
> Thanks for the patch. But the change is not enough and no tests in the patch
> set.
> 
> For example, in kernel/bpf/btf.c, we BITS_PER_U128 to guard in various
> places where the number of integer bits must be <= 128 bits which is
> what we supported now. In function btf_type_int_is_regular(), # of int
> bits larger than 128 considered false. The extint like 256/512bits should be
> also regular int.

Right, thanks for spotting that. I'll give the next version some better
testing.

> extint permits non-power-of-2 bits (e.g., 192bits), to support them
> may not be necessary and this is not your use case. what do you think?

My feeling is that non-power-of-2 types are useful for llvm targets
which such registers. I'm not sure they have much use for our use case
or bpf in general. If anyone thinks otherwise I'm easily convinced.

> lib/bpf/btf.c btf__and_int() function also has the following check,
> 
>         /* byte_sz must be power of 2 */
>         if (!byte_sz || (byte_sz & (byte_sz - 1)) || byte_sz > 16)
>                 return -EINVAL;
> 
> So Extint 256 bits will fail here.

Indeed it will.

> Please do add some selftests tools/testing/selftests/bpf
> directories:
>    - to ensure btf with newly supported int types loaded successfully
>      in kernel
>    - to ensure bpftool map [pretty] print working fine with new types
>    - to ensure kernel map pretty print works fine
>      (tests at tools/testing/selftests/bpf/prog_tests/btf.c)
>    - to ensure btf manipulation APIs works with new types.

Absolutely. I'll send out a v2 when ready.

Thanks again for the great review.

Sean

> 
> > 
> > diff --git a/Documentation/bpf/btf.rst b/Documentation/bpf/btf.rst
> > index 44dc789de2b4..784f1743dbc7 100644
> > --- a/Documentation/bpf/btf.rst
> > +++ b/Documentation/bpf/btf.rst
> > @@ -132,7 +132,7 @@ The following sections detail encoding of each kind.
> >     #define BTF_INT_ENCODING(VAL)   (((VAL) & 0x0f000000) >> 24)
> >     #define BTF_INT_OFFSET(VAL)     (((VAL) & 0x00ff0000) >> 16)
> > -  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000000ff)
> > +  #define BTF_INT_BITS(VAL)       ((VAL)  & 0x000003ff)
> >   The ``BTF_INT_ENCODING`` has the following attributes::
> > @@ -147,7 +147,7 @@ pretty print. At most one encoding can be specified for the int type.
> >   The ``BTF_INT_BITS()`` specifies the number of actual bits held by this int
> >   type. For example, a 4-bit bitfield encodes ``BTF_INT_BITS()`` equals to 4.
> >   The ``btf_type.size * 8`` must be equal to or greater than ``BTF_INT_BITS()``
> > -for the type. The maximum value of ``BTF_INT_BITS()`` is 128.
> > +for the type. The maximum value of ``BTF_INT_BITS()`` is 512.
> >   The ``BTF_INT_OFFSET()`` specifies the starting bit offset to calculate values
> >   for this int. For example, a bitfield struct member has:
> > diff --git a/include/uapi/linux/btf.h b/include/uapi/linux/btf.h
> > index 5a667107ad2c..1696fd02b302 100644
> > --- a/include/uapi/linux/btf.h
> > +++ b/include/uapi/linux/btf.h
> > @@ -84,7 +84,7 @@ struct btf_type {
> >    */
> >   #define BTF_INT_ENCODING(VAL)	(((VAL) & 0x0f000000) >> 24)
> >   #define BTF_INT_OFFSET(VAL)	(((VAL) & 0x00ff0000) >> 16)
> > -#define BTF_INT_BITS(VAL)	((VAL)  & 0x000000ff)
> > +#define BTF_INT_BITS(VAL)	((VAL)  & 0x000003ff)
> >   /* Attributes stored in the BTF_INT_ENCODING */
> >   #define BTF_INT_SIGNED	(1 << 0)
> > diff --git a/tools/bpf/bpftool/btf_dumper.c b/tools/bpf/bpftool/btf_dumper.c
> > index 0e9310727281..45ed45ea9962 100644
> > --- a/tools/bpf/bpftool/btf_dumper.c
> > +++ b/tools/bpf/bpftool/btf_dumper.c
> > @@ -271,6 +271,40 @@ static void btf_int128_print(json_writer_t *jw, const void *data,
> >   	}
> >   }
> > +static void btf_bigint_print(json_writer_t *jw, const void *data, int nr_bits,
> > +			     bool is_plain_text)
> > +{
> > +	char buf[nr_bits / 4 + 1];
> > +	bool first = true;
> > +	int i;
> > +
> > +#ifdef __BIG_ENDIAN_BITFIELD
> > +	for (i = 0; i < nr_bits / 64; i++) {
> > +#else
> > +	for (i = nr_bits / 64 - 1; i >= 0; i++) {
> > +#endif
> > +		__u64 v = ((__u64 *)data)[i];
> > +
> > +		if (first) {
> > +			if (!v)
> > +				continue;
> > +
> > +			snprintf(buf, sizeof(buf), "%llx", v);
> > +
> > +			first = false;
> > +		} else {
> > +			size_t off = strlen(buf);
> > +
> > +			snprintf(buf + off, sizeof(buf) - off, "%016llx", v);
> > +		}
> > +	}
> > +
> > +	if (is_plain_text)
> > +		jsonw_printf(jw, "0x%s", buf);
> > +	else
> > +		jsonw_printf(jw, "\"0x%s\"", buf);
> > +}
> > +
> >   static void btf_int128_shift(__u64 *print_num, __u16 left_shift_bits,
> >   			     __u16 right_shift_bits)
> >   {
> > @@ -373,6 +407,11 @@ static int btf_dumper_int(const struct btf_type *t, __u8 bit_offset,
> >   		return 0;
> >   	}
> > +	if (nr_bits > 128) {
> > +		btf_bigint_print(jw, data, nr_bits, is_plain_text);
> > +		return 0;
> > +	}
> > +
> >   	if (nr_bits == 128) {
> >   		btf_int128_print(jw, data, is_plain_text);
> >   		return 0;
> [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201218084844.GA28455%40gofer.mess.org.
