Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHFSU6BQMGQEWHDXTMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E12353891
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Apr 2021 17:19:57 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id w8sf397812qtn.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 08:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617549596; cv=pass;
        d=google.com; s=arc-20160816;
        b=miIny3teqtWcoJs3KUPQTuN7TpxPe5GbIacMTbrSfH5cn23B3x8DfC8cl9AdV5zkxp
         Sojy1mHfp37GHxEk1l4urePJs0JNkYUHdPpgJzSFRje1YGa5e2t1ST4Fmaxcp2Qrw0FV
         JdCPNLokGz+x05RbeO1unvxWnAAkmhtiJMpZrUBnakxKyD4d2JyVMgqx+gay6NfD+YO9
         BcvjfbNYgf9s6BGMvB9WtaN6iZEZKuuwnhgea5k0nBRA12tAnGW7oM/WV0W19x62eMGI
         CHg1TcdkOjGYlxoomuQTXzQN81Q6/JLvtD0hOXoGBXUasTwmQTer2OqzggGStNjwb+5i
         OqtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YpXSmlpTJYVhL4MVfmvoOBrZWx0YeoNokfqaQySk8pQ=;
        b=mC/xGB9Xll/uVBe6FXpyx6OnqIAptjfyPwrGTQT/A0nAkVrSAmvNejcvfU7EeBHdq8
         BgNikc/RLekKM74pgL8z9kPkLQqSi6rHDpGGWkbs0ctmyl/Iwb6WTlC3Xty7a8c7wG1R
         qVEQbx5rSyiF4Xat6z15TsHvw1kUN6DRdUbuvPcnRl0YiH9DeN3wk6lvL7gTDOIb7Lbf
         RzS9jaDv3659Bk5t/f0oEUnjmraD/zE3zdex9G5Yls6b3jyFAHY6wYelYeYAU8qTkKCJ
         3vALhbiGV2tCbBxYoECKohwTFm65L+ULFy7FjwMM7dbgietPADNy4ymjbea5guvESDV5
         5vVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ke22id8k;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YpXSmlpTJYVhL4MVfmvoOBrZWx0YeoNokfqaQySk8pQ=;
        b=Ir7PIQL8Jja0Btnjh6mJAP+mrgpJqM14g1/8nFm0jvhC0r1sHzYWOa/E7G3dGyI7X3
         H8qfHY0laAoD+vliRaYWV96uvLhdoSAspseD66x6LIwvQMnyeHiHilESCD91ZA/5W2am
         JI/hx8EdabT4Yn+yWnwHrYWq3NIGBM0X6Gk2dsJuCF8ixeVkUCG/c/YkiJ9Bj6hwZXYa
         JESfOjAnE9bEUcDPEHFYUsYdBWAONzipT9Il5q0puZ9lH+4LqATipMIL18IHxa+FSb9E
         wE7Bh6ji1fvyk9SbDcut2uWDPUQnW22X9JBYZEUfn+dXZSM6NycmehduyQrEwGih9s99
         Ypcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpXSmlpTJYVhL4MVfmvoOBrZWx0YeoNokfqaQySk8pQ=;
        b=hWAUA6VC0A9llwemT6VWmAShZBXKaB6FwQ+M+rdlktzrSg5KcaENqwDnQF81/J8k7R
         KQcSb9F6RsM2BvT6mqqU6IM6dkJCVg+3zxIMW0WeYmzd/xTP0HVZKOanondPsicvl93Z
         T8brkV4pIiv7/7Y7R/rWtstrH4sFs9yVPoLEr7wpSt90JvO29Cj/QVtlqnp8qv4zmOSM
         FeP9Deu2rhEaZ+TIPaWtwWgTJYwW/FM72QfhirtIz8BglAzIDId4wm659+FiOjoLczhS
         JdcA+tZ8wJSiOikxhC5pVbb4z23DkUlkphCDaFdEPLRXPW5fDydFMRQNEZuzB4XeBzHj
         kKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YpXSmlpTJYVhL4MVfmvoOBrZWx0YeoNokfqaQySk8pQ=;
        b=cyMdbMJ51XjlQYALWnsQa8djLRkDN5qvkkS0WaE9o+kM2txl5ulIDmIOsHqwG6uTyg
         7HD0QrDsowi9326gsCbm+9/XsGoMSW6eA8HkrG+2JnXZhPZWS13yyYJc3OlhmccmFIXA
         6/+BMpqs8UenYYmS4zh4fr56UYTCJmVCU1ZcFqkyYCL6Pf5G9CMstIi4SYvWYxXGwnpi
         b0SXvWcDiGHUnFyEfxZ+TYgI6V/gqXb2UP2AyRHR2txZEv1+eXEorpBJ0jI5F4JnEBmt
         uwDQq6LPbGas6NH71S6jiA8KoEj1fef7O3AQIt+mg3AmooPScQbmifBv1TSNq3+49Xus
         sGrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tXRYo/lzKT93/Ve4q24geX3imAS7qp7BezszV/pS6n+QvoH6N
	j2N6+ed8oNJLzj/QSGqTVTQ=
X-Google-Smtp-Source: ABdhPJzVWkdMaADhxDrw6EhoFF39jk7b1qiBMjePRkk1Yi+/uEl+HnLKo5pTew3aOW5zdaOcybg2ug==
X-Received: by 2002:a37:a008:: with SMTP id j8mr20785896qke.343.1617549596410;
        Sun, 04 Apr 2021 08:19:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls7495894qkc.3.gmail; Sun, 04
 Apr 2021 08:19:56 -0700 (PDT)
X-Received: by 2002:a37:cc7:: with SMTP id 190mr21115077qkm.99.1617549596007;
        Sun, 04 Apr 2021 08:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617549596; cv=none;
        d=google.com; s=arc-20160816;
        b=XgmiSnDENjGw/T1VwR6Ut8WMDZv3zihvOlQAEGxUi98pdec/L4wC8WRddF3FEw8DJA
         UU3M81D+5NYdL4klR/fqEGZdmwmNtl56NGtBAi8iUu1sgW7uPI8KsmQXeDX+iT63ohRL
         8PqnFAi0HAU/yxTASxcQUx/g2ZiGxwFzCHzymjhJYfUagsTsdhfOHWm2+491DKeP3GaX
         K2sU22aYnlvKR4x6hLe5BSKCBerXu3S1I2J9+W1c4o4qmmwpZba1C4NzgljKiCzDDbW+
         RuxzZWVHoMAgEyfiOnCFvdpF0A9hr5UbbGQ8KjTO0leS5XchZE2/R/XOr6g9JUt4dhO3
         8K3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oorif4U10p1gj+stQZVhVCmGelEmfcPvRUrY2NK3cBI=;
        b=ameL64vTYZcBnFf1ltO+zo7BG/jIv8RxYll/3Ou+pf1omJkmECZLaXW6EwWkQ0q/RK
         IOnBLg1dcwyHPtIcV3hLYKwPy7/gQBOrPS9vWFA1UfMLUGYKCC2YzAKYOS4ccOw1HkAb
         N2+li8eyWztIC4Z9t3LRfG8lr/3WP/cNz6okx/IPPlHVUJZZ6G5nbiLmyzR/486qr8Dw
         y1rrPv/T2TUT3DP4hhgp1XcpMBtUy6psvpgzIDvYMqUOsn8xy0Ta6Kx1izV//IboRFFu
         DJKaJcrqEbf0myL8a6QzBHutbF9aHF3iWKxXT6JOOiDCX2HrJdsegSeSpYKqD7gopBCw
         HQ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ke22id8k;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id d3si105393qki.3.2021.04.04.08.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 08:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id f5so4383212ilr.9
        for <clang-built-linux@googlegroups.com>; Sun, 04 Apr 2021 08:19:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:12cc:: with SMTP id i12mr17468978ilm.10.1617549595570;
 Sun, 04 Apr 2021 08:19:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210403184158.2834387-1-yhs@fb.com> <CA+icZUVxpkCJVnibqm3+OYdfdh5U=eU_u7pPKUZMoPm3XzZWPQ@mail.gmail.com>
In-Reply-To: <CA+icZUVxpkCJVnibqm3+OYdfdh5U=eU_u7pPKUZMoPm3XzZWPQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 4 Apr 2021 17:19:21 +0200
Message-ID: <CA+icZUVYiX0PrxPddfv-RfGnkOUTFW_Xbv9LvPkuu+ZH3X_MCA@mail.gmail.com>
Subject: Re: Usage of CXX in tools directory
To: Masahiro Yamada <masahiroy@kernel.org>, Yonghong Song <yhs@fb.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, David Blaikie <dblaikie@gmail.com>, 
	Bill Wendling <morbo@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>, 
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>
Cc: dwarves@vger.kernel.org, bpf@vger.kernel.org, kernel-team@fb.com, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, x86@kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ke22id8k;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> So you need to pass CXX=clang++ manually when playing in tools directory:
>
> MAKE="make V=1
> MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> CXX=clang++ LD=ld.lld LLVM=1 LLVM_IAS=1"
> MAKE_OPTS="MAKE_OPTS $PAHOLE=/opt/pahole/bin/pahole"
>
> $ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/ clean
> $ LC_ALL=C $MAKE $MAKE_OPTS -C tools/testing/selftests/bpf/
>

Correct:

MAKE="make V=1"
MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
CXX=clang++ LD=ld.lld LLVM=1 LLVM_IAS=1"
MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVYiX0PrxPddfv-RfGnkOUTFW_Xbv9LvPkuu%2BZH3X_MCA%40mail.gmail.com.
