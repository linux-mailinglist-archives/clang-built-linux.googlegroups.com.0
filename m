Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLMX3T5AKGQEZ6FNNWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFA226099A
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 06:42:22 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id p43sf9856188qtb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 21:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599540141; cv=pass;
        d=google.com; s=arc-20160816;
        b=ycCD7gy6YIT6ZKgYkmwrsC2DE7e4Aqu4cIRNcKL+XPWBuQQYBDvfSTfvTGbr4zOqwN
         RN0M4AZIza9CQy9FWPulLscLxcv5tdI6rYp5jwUflWmx28LgXw4GNnChJTAv6KKhUZJT
         MvHQYO4Z3QNewcGlLo0KVwWLzkSWWfcRYlwevaTWvCvmaLsqvOKgrwOauBXUNCTdsL1w
         hv883Xn4MC2xQDCBL/X4bqHAfTvQTLsXo8CxFb6CrcbN5MYoPbPUg7xz3RsAfGww3pcW
         ThtjA+cyV/UEwHhOMsLUTqBtowSxzVe7WgUQjSIoaM9ovw4LKz600iODKyM3i9xS7E3K
         LjOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=52xAJi4KggoIIt4n5Jq3gJZA4iKeG2a2BAEtK1So6Us=;
        b=EOVN1djftKKbkUi3sKulqp61o2Gt5CxitIY4zCPAtOwpPESgq5SrjXrRgaKSCnANMH
         FHHsMF8nv0lfMK0fJDs7OjpTq1QBv2kePh8KlSgO7xPYx9/JQNKsnL+EjhI2PDsca2W9
         NWGmxzTlR4/X/9LqTfAxrDbxKzR9gxDqNkizQipvafUo3kgpy5qIL/g6xXaBfSoyDRkW
         BoGaXm/twR8PQM5oXH1cdYPxiO8hagoArwUTqfM3wNk6Q/g7Mp0RC0NK5lGh0a25DLNB
         tfMBhbkSw7HN7KExwCh4lsE/xT6GaYJQhXc+sPw1WFIH4BlyGAIVQC7MJfhYbzFPW1nt
         Hlsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PL/xrscW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=52xAJi4KggoIIt4n5Jq3gJZA4iKeG2a2BAEtK1So6Us=;
        b=tfdch7Ar9Rgsougd0gKF8WDkIqXBi/VtQL+F+Zeg2pipCNjsdE63GukTbAfcnBDbNy
         J4vGLrVohl8G5NRe0y7YqK6/sPsJA78mZLHlX/RJgg0HPCqbb7j8tCzw5JoOAtLz28LP
         +keiXhFIZYcgdyEs7WFPdSexswLyt+NoAwujQ9qeeysV9lSRD/xqViJvVE9iQyZ2wo0m
         SS5fGApF5J4Xqahi2MJBppPHMtHL1HINt7FTdX+VDWd5t4fnGgc3PUWD0JbCU7LaQVcR
         LY3U30aMOLkEXfGL/N8R/dgv3nBCTjrX75yiHUu5cLA56rh1JyMoVppceQK9KPoBl4k6
         ZaFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=52xAJi4KggoIIt4n5Jq3gJZA4iKeG2a2BAEtK1So6Us=;
        b=vQpklvBBvBJTRC5C2ZpblkIuZO+/fHpM2AeVBomy4WUIs9kWZY17DYQSh0Ye+EsHF/
         ADJ1kaXG6+a3dm2KVgDfHry9BxN6Yzng1gAckXzxhgjF6jsPFdL2v5SNHu6Ej6R0tNbE
         pKGRo68K41Ru++AGinTQsFquU00dTq71ydPLMIK4KVD9qHwGYn8JE1IoxCJjn+pjSpF7
         98a/oE2eiTdw1osFup2BU79lMs978lkrdnQs0WmflFijQghn5RKIBYwyQuELQhCmEdIx
         9ZNJEuhYoFEV4C6b8nTQRqBT/FLdmoBNppaBSqnEe4HNoTH9oAs+Mr0C6wc+Lz2hvnv4
         REkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=52xAJi4KggoIIt4n5Jq3gJZA4iKeG2a2BAEtK1So6Us=;
        b=RXquaN574XaTFw572NilLGJbX5qjGhNLL4odC+A19YvCA1Dj0Kmh4ciXkUUoRd59/N
         fhe4cwAdBM82LPLs7GR+jLJ7msDt5jEYSmymoDep+dQnDJLedEkC2Wd4noAzMJHsAuPM
         IISgJ16JbXP8Mp7hVRxe4PRl9KT/HImHALnZy+Ha6W3ACtMp+/J8F1IdUqmaZuo9b2tG
         z9GGzNX+YW/58FYSvZgSJVd9/84WYSBZmRFrtFLlt7d9MgZwJeGHn5QgN0d7dUFzuYON
         qnNHVzUqofXNV/7/S2nkKsknez3tJxTFjxss3LT8WtbzFN54gWSbj6ek7zAEgEzMFxne
         0Zzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Wh7uzGues6j1WY9UUxpQZtuxZQgJ3dqhwQMd9gL2Fvm6dr39g
	GQlD6SzwzVhb1kSOTHZ01/I=
X-Google-Smtp-Source: ABdhPJxPEZYnUXA5V4csA0I5DEeSc3kdLIGsGJVmQO3zoumrIg7f2H5b6Z5CV+VCZiIXW1KaZq3xWg==
X-Received: by 2002:a05:620a:1098:: with SMTP id g24mr13960093qkk.399.1599540141623;
        Mon, 07 Sep 2020 21:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:ec1:: with SMTP id w1ls3192300qti.10.gmail; Mon, 07 Sep
 2020 21:42:21 -0700 (PDT)
X-Received: by 2002:ac8:33ec:: with SMTP id d41mr5068401qtb.390.1599540141185;
        Mon, 07 Sep 2020 21:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599540141; cv=none;
        d=google.com; s=arc-20160816;
        b=F3FUbVD0J00zJGHHNvp6gbeuV+XwadXCgdAZDU4XhSv4zi+4JR11zz7BxwzxZP6gsO
         Wl0vNQKxcWuwenss7kmZDaFPbxIGwZPmW3QHzZ9+tpNKgOYaqk4UkPzkeZKfFkOyXPXQ
         snX5n4uTSMDAEXsHTM4o6fjU3+9RrdjSUQArY0MG5ng2s5ZF60JltIW22Fdil2LhYZOE
         gkx89Y6HUGZObZJV4fF1LyUbZQ3W3R+/SobJtvecwB0ryDOQ/mWPEGKLA/GCSB6uyO9j
         dB9mYnkqH/TY2jvvX4y/+c3PepMTxQ+o/j598HbUSi8bcqbkh8Yc0rB3poB7bwXsS792
         bweQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Uq+qFUrJ5V3Owi968MrkvbmJ4ZL9M9F0MoSjvYJeOkg=;
        b=EeW3VuGFQEYAylr+4d6SVDM+oTTv9GRfUgalUBhiMIY9Kh77BrZQAlG3ETo6GeiTP6
         2GCkszEDLeJD6a8dHE0NqPKQezK+gnWl2guXmjb5J+CHfwhfdx162Y38bzv2+x0blZHV
         1uvm+idUxY9SalnJDm6JO4mqzz020+qH9KoE7NMEvr0EExz2D/aeSZ1FlUc6aJoUILOi
         LhoGR+GdOFEw6ENVV49b6E356a4OtFwIILHga934Qey6tFNQYMDdZmgiK24Bpvho7Uan
         XFAsNlFRACz28y9XAEm8w9vMHo5biwy9S4RxciYEWE2hscPvMNW1oKSrDYEQ0rvrywr0
         iyGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PL/xrscW";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id a27si955081qtw.4.2020.09.07.21.42.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 21:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id w16so14220989qkj.7
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 21:42:21 -0700 (PDT)
X-Received: by 2002:a37:9c55:: with SMTP id f82mr15084616qke.123.1599540140881;
        Mon, 07 Sep 2020 21:42:20 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id q35sm13514397qtd.75.2020.09.07.21.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 21:42:20 -0700 (PDT)
Date: Mon, 7 Sep 2020 21:42:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
Message-ID: <20200908044218.GB1422621@ubuntu-n2-xlarge-x86>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200907161230.GA2149325@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200907161230.GA2149325@rani.riverdale.lan>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="PL/xrscW";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 07, 2020 at 12:12:30PM -0400, Arvind Sankar wrote:
> On Wed, Sep 02, 2020 at 03:59:04PM -0700, Nick Desaulniers wrote:
> > Adds a compile time #error to compiler-clang.h setting the effective
> > minimum supported version to clang 10.0.1. A separate patch has already
> > been picked up into the Documentation/ tree also confirming the version.
> > 
> 
> Is 10.0.1 actually required or could it just check major version? I have
> 10.0.0 currently and at least x86 seems to be building fine.
> 
> Thanks.

There was a decent amount of effort put in to testing LLVM 10.0.1 and
making sure that it could handle the kernel. I know of a few backend
errors that were fixed and backported to 10.0.1:

https://github.com/ClangBuiltLinux/linux/issues/944
https://github.com/ClangBuiltLinux/linux/issues/954

Plus there was this rather nasty ld.lld crash in 10.0.0 that just
x86_64_defconfig triggers with mainline:

https://github.com/ClangBuiltLinux/linux/issues/962

I do not have any strong opinions around checking just major version but
I would prefer that we stick with 10.0.1 because it has been tested
against several kernel configs unlike 10.0.0. However, I know that Kees
mentioned that Ubuntu 20.04 shipped clang 10.0.0 and there is no 10.0.1
available yet. Presumably it is coming down the pipeline from Debian
since 10.0.1 appears to be in testing? I suppose if 10.0.0 is shipped in
multiple places without an easy upgrade path to 10.0.1, we should
consider softening up this version check, at least for the time being. I
just worry about duplicate reports.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908044218.GB1422621%40ubuntu-n2-xlarge-x86.
