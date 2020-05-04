Return-Path: <clang-built-linux+bncBCUY5FXDWACRBUGTYL2QKGQE5AGCE4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345A1C4A92
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 01:48:34 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id q43sf22100qtj.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 16:48:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588636112; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2FYzt7eLDqlltJz/sJlaArGk4TpNpb3QLoEHg/eRS4+WSc56dKgU2SzWWYY3Qs6Cv
         GJQjSOh2j3p9gj0c9jEZA1t349e0u41lG7BwyrVo/UBNHFF/lL3SOMdDV0kZojPD8mW5
         Srdkn78g9ycdLGLEl677a98kjru6ENZYG6aNt6EIAdOA3N6ncaougfcYYdUSeEGk2zSP
         1R3a0PJvCviMMnJC8GgvBiRqNplU3LCatYB4oCZZ6diF6YBasZobTN71k2RJi7WB7qJg
         RFtI+eEcviMDz1ONLK2ljzEQpoHh60EXRRpVBv1ov6YyF7nK41EGM+wSA0aCIFd7qN4j
         uP/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Axs80BKEAujpBlV9WbD6ygppBl7o6yRfS8Jxwe8QCs8=;
        b=KDcGQ2gFcFnjzLrGxyr6UAZOyRvqL/ucb0+Fh4EV4ryS7MSskvRzCnyWdNuzfb/FI1
         y9Z30kfF26MSweg/6NK7SvoOXRyCmCRFFqbdEs4Z2p9lBTQvlUkCQMryhjU4zu9wSZt/
         uaxzDpnhfx5o2NUSvxTYMr+F5gfnshZt5OD15ppggaJuBrvYlk1Ot8fIkGbs0DfxmF8v
         ecl+vT5B+DDEQdI6BgrAwU09eaKuCl2JWsdoWfpaw7yrlF3tzOeEf80r1e+YCCnY3O4Z
         12EoBZPazrOGDxkZXx7CnP4rhYQuw1rCyTv9+sDSaZgto8zOgb49mXMsHxi3lVlFp0Py
         u5Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Hq/36UR+";
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Axs80BKEAujpBlV9WbD6ygppBl7o6yRfS8Jxwe8QCs8=;
        b=AOEXX4wksYoQgcaldcGgGQeEU+osY5YGIoLORz1uw8R8PSPILoiyhZeRT5pOReL8zr
         0KxF3EdR5Ne5pIZ/aq2NnbDBPq8DtXqHHb4owvRB1Oxy1N+RkdtdYTr80jUMvq7WSkmd
         u6qsOd+tOvuxk0YMXwRUSFhjiL7Kyyv84GsZXDXomO8rxDE3ZHEQCz11G4SPwXeqlDBS
         /vtG1xd7/xdtbBPK2ISuO5OMSLHq7CU5MeEV4qTt8XuyO38j1v+9sUVrBPKlXqOB9Qs2
         USoLTMOJ4V/z3FAkmVLzHr++vDS6d4XM2C1vP8oK1PPGEGjzJfQNtGdWtCXsdGjn1iQj
         ITPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Axs80BKEAujpBlV9WbD6ygppBl7o6yRfS8Jxwe8QCs8=;
        b=aQQxj1iO48nMdIElRwLo8Ztu/ApH+5D2t0jXW2wIw5lJlgegh54R7c7GwGDqxfDKOu
         h+qIdemMDU1FoAENcaEaROhJSsIknNbeIQsbF+qlLAsDYFro5mVDb2QRUBtTsaCHPwU7
         kGY2aK4uDluFT4s+BzdjvC0ArKrQE5W2UjB33lljKa2QIjiEFqeuH9/Oc2oLkG9+RuVi
         fQ1MDhmNgnHWo5uCAfHHSQUZMD3YKDwtc0dhsLMDBLSn2LPyVpVEauDa5ctzM8DYsRxf
         VtJnerz6LT1oV8z58pqnj5P+iKWT0e143adn6LudwJmbtEOgvy+tOvFAD41c/Dsn/ZTM
         tw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Axs80BKEAujpBlV9WbD6ygppBl7o6yRfS8Jxwe8QCs8=;
        b=k56gg7clXtIctQbVP8jf6fbY5ALukvVlMEk5AQToclvjKbkRUcTNM5WCr6Ta8gR2wM
         IrBvRXfrsnQLPjRvv6Ek0YGAX5BMyTVeI4CxMlTx8fvCpwjtteQSzFd1Wzzm8XxV8ACr
         9GNj4M8yDLnpGBQvEmWt17Ha+4qzr6f69TuudtX80EP65RZNbFB2CzRNgJSaweiJ6/hT
         XqFVHQG2/ECR1VNIU09boHoPiorUWg1bdfj5pg05+dYqe8fyLnLUsoABRgMeDd95xw61
         mZnR63XNt4yMyhr2eyFBqo/XCPPZwR34PPWxjhB7jXNwZZNiMqzu/iW2FyD97AbmUqq+
         HJYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubOrzyqIiueAjbIra/xVbMCN+nGM3q9MaOpcKLbHdcCFWh380Gx
	YsQFtgqmlG2hOFAqgBKT8sU=
X-Google-Smtp-Source: APiQypIuik7vdyRt8mFE2z4IeXmbq+qNaDLceo2NmbYE5yg+iERAm/FE9M4PdxBLn+RbBi7ipPsl/g==
X-Received: by 2002:a37:3cf:: with SMTP id 198mr944782qkd.172.1588636112629;
        Mon, 04 May 2020 16:48:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4a74:: with SMTP id cn20ls8826qvb.0.gmail; Mon, 04 May
 2020 16:48:32 -0700 (PDT)
X-Received: by 2002:a05:6214:130c:: with SMTP id a12mr127048qvv.192.1588636112074;
        Mon, 04 May 2020 16:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588636112; cv=none;
        d=google.com; s=arc-20160816;
        b=Ob+pyrWg3Mscm6xaj1UP4rhaw9giavQd0FwvvSArzI64BrEs2xSdz37Q3v237iKtR6
         3fWm9dVSVkYLVL8ezC03j23FuqJdoBDNEuJiQY4mLRGM/jNHTMmVvnKadHgZdgNqdkbI
         ODqpfh69TQEIs6UGjuuc0aQMhjwa34JUwg/4pGUOna51WeWE7rKHC0x7nyAyNvscY3O/
         7xB4XtFMmCA/GmFvB+zkK1QpEKmIcfRuMgQMNFySOnDWJrgfZHFCvjMY5v/A9cdT9m+V
         uDqt6Qp4b4J8JXCJ1ilNQebug8J4YvAKM3oStaOy4J7jUpOnM6eUXHOjY2KEfN+ssT82
         pTGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cfGiwA9LJRPCF3MX+zGph8ephlPPnJi7faJRy6NmTEM=;
        b=0O7/M+Edqk/aJxFZK5FWTsXaRy91uuGtiez2SL2QXQYZBl6exN7//NyIy1kbYg6GU+
         Ef19skyqU5f8iOvtAUsV/Jbu6Evsj1XT8uNQsYn+LRXclsfuZdIZIwwb8VSOim99sa9T
         mx87iI4hSD9rvZ/7vJbTQwP5zI4trkXABy/NuwXX0rCOUVq4V3YaR/Q3F7esO+qbUEtX
         WG8TDg6DSDwGS7ZWZuLr4urqayOZFcPcJFIUKixJngS1qi5jrN8aCeDsuQF8bpLhZ7dD
         dOK9ryLlBuLTBBQo+5j5oP+4mMGFlQe9ROfiPs2MbNJDVm/7UP3YWrxye9oX1F1WBZYR
         2LXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Hq/36UR+";
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e7si54207qtc.5.2020.05.04.16.48.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 16:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id ms17so196964pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 16:48:32 -0700 (PDT)
X-Received: by 2002:a17:902:fe09:: with SMTP id g9mr416924plj.65.1588636111122;
        Mon, 04 May 2020 16:48:31 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:1bad])
        by smtp.gmail.com with ESMTPSA id b140sm191542pfb.119.2020.05.04.16.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 16:48:30 -0700 (PDT)
Date: Mon, 4 May 2020 16:48:27 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Lorenz Bauer <lmb@cloudflare.com>, Shuah Khan <shuah@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Theo Julienne <theojulienne@github.com>,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
Message-ID: <20200504234827.6mrogryxk73jc6x2@ast-mbp.dhcp.thefacebook.com>
References: <20200424185556.7358-1-lmb@cloudflare.com>
 <20200424185556.7358-2-lmb@cloudflare.com>
 <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
 <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
 <185417b8-0d50-f8a3-7a09-949066579732@iogearbox.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <185417b8-0d50-f8a3-7a09-949066579732@iogearbox.net>
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Hq/36UR+";       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Sat, May 02, 2020 at 01:48:51AM +0200, Daniel Borkmann wrote:
> On 4/27/20 11:45 AM, Lorenz Bauer wrote:
> > On Sun, 26 Apr 2020 at 18:33, Alexei Starovoitov
> > <alexei.starovoitov@gmail.com> wrote:
> [...]
> > > > +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
> > > > + * or not aligned if the arch supports efficient unaligned access.
> > > > + *
> > > > + * Since the verifier ensures that eBPF packet accesses follow these rules,
> > > > + * we can tell LLVM to emit code as if we always had a larger alignment.
> > > > + * It will yell at us if we end up on a platform where this is not valid.
> > > > + */
> > > > +typedef uint8_t *net_ptr __attribute__((align_value(8)));
> > > 
> > > Wow. I didn't know about this attribute.
> > > I wonder whether it can help Daniel's memcpy hack.
> > 
> > Yes, I think so.
> 
> Just for some more context [0]. I think the problem is a bit more complex in
> general. Generally, _any_ kind of pointer to some data (except for the stack)
> is currently treated as byte-by-byte copy from __builtin_memcpy() and other
> similarly available __builtin_*() helpers on BPF backend since the backend
> cannot make any assumptions about the data's alignment and whether unaligned
> access from the underlying arch is ok & efficient (the latter the verifier
> does judge for us however). So it's definitely not just limited to xdp->data.
> There is also the issue that while access to any non-stack data can be
> unaligned, access to the stack however cannot. I've discussed a while back
> with Yonghong about potential solutions. One would be to add a small patch
> to the BPF backend to enable __builtin_*() helpers to allow for unaligned
> access which could then be opt-ed in e.g. via -mattr from llc for the case
> when we know that the compiled program only runs on archs with efficient
> unaligned access anyway. However, this still potentially breaks with the BPF
> stack for the case when objects are, for example, larger than size 8 but with
> a natural alignment smaller than 8 where __builtin_memcpy() would then decide
> to emit dw-typed load/stores. But for these cases could then be annotated via
> __aligned(8) on stack. So this is basically what we do right now as a generic
> workaround in Cilium [0], meaning, our own memcpy/memset with optimal number
> of instructions and __aligned(8) where needed; most of the time this __aligned(8)
> is not needed, so it's really just a few places, and we also have a cocci
> scripts to catch these during development if needed. Anyway, real thing would
> be to allow the BPF stack for unaligned access as well and then BPF backend
> could nicely solve this in a native way w/o any workarounds, but that is tbd.
> 
> Thanks,
> Daniel
> 
>   [0] https://github.com/cilium/cilium/blob/master/bpf/include/bpf/builtins.h

Daniel,
do you mind adding such memcpy to libbpf ?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504234827.6mrogryxk73jc6x2%40ast-mbp.dhcp.thefacebook.com.
