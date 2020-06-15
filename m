Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPEET73QKGQE3AY7IWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 970801F9F9D
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 20:47:25 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id ba13sf13717834qvb.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 11:47:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592246844; cv=pass;
        d=google.com; s=arc-20160816;
        b=IAQCAISKs9b4wMEhHqeCYQir+h+mYOMqUlowX0yDqRYSOqIslv/drtc/bMHE+TfOwe
         sqRrLJH7XfE7KVyQCwaCTU/t2SnYWuX4O0OsFUXqLwPQAEKvmR4PJzBlJzvkWcT3M1Sa
         IIgjhXj+1F9lyp2Ixw3Otedvfzpzjtbpot7TX14cjKs6eRRCi0Yo8V7qHKOoflANJ9Fz
         oKqhvvrCBxRvgs3gr9aDhk4YrcQdK2XBC/H3+4FR4M/YvMqOQY/nClQtkhRNqT1P95M5
         RL89w1yvbVWO6BcwTz6g5xZ9JTUbjycYIZON0DNfR1JzU/RH9Yupd7oQIJ6jWL3gmIfm
         gS8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ca33CRpCWwePvn9lhTAlSa6gIN8Rs0yL58HAGMjgRGY=;
        b=KScBXNw7myWgY1kb+k50xTy7Cm14oLgsGlXjp6WrbCM2OsJpLg+b14Pp6fY4QrD1UF
         9RV1NN/tX8iuYavsSPFHUNgYOwRkRGC4b+pNq2EoZ/aeVenz6djRxZLSxadDzqUiOWhc
         tPIGGjSF50t49pVRRWOzYkoLGh9w+Ni1IQ5AfbERCetDdJTtvm8xP6/lSLgoZYQBWwQX
         iXbDmCR0abzYXnntHLPieEdoCR6qRYaArKlRXmeiD9TKx+wZygmq7DTPmQccqDxOcMVW
         djIN/WVYW1J55snFYERa1deAnE3EkRqxtHVTuko9rO1h+pqF/CY7hf//Ym4+HQx7nmy9
         Ko3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gdHCBuPr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ca33CRpCWwePvn9lhTAlSa6gIN8Rs0yL58HAGMjgRGY=;
        b=bf4j/XjVOUpvwsnai+jJxdSLtdbCg5FhgJxprbzazqApRAY9vGluga+gMWUVJKHJso
         CT/sls2b6VkMIy0PyVTZ/McRHZQ236hb5FgKQWtQDot4q3ocdfaouImDc7XxPW8eWDQ8
         eZgzIqpqYRstYmQHUP7P/1arVwNp/Z8aUmwjXLqZ73dE58aDcqhvjZjKxqVd1dTJUkl/
         RvbPg1d7IxRxgNyZMmYoTETo8xkmszqwU6NNrWUTdsX4HOF96ryobaPqUYa58k/gJkPB
         H9bFBqjiSpDnaaOiaI9YMUe1fz8LvMc+b7vBNM/UaWLOTyt8gtHDJZUzATx43T6SbwAn
         IYGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ca33CRpCWwePvn9lhTAlSa6gIN8Rs0yL58HAGMjgRGY=;
        b=riSVH+YFKIszBgzMMrPvEl5H7qTAVpNIfNWNjsAzErg2DQEDJSlyIfht7HasaQGhvh
         9hYEPrmN+KtyO0NTWmk6wKeOD89vn5khHp8Q9Tl4e8LL3tEvM1yuKovA6JOCi8zoVAVE
         Vzer2+mwcsryp7UFGHfyBM2D7VB4yp8rm/049V3eCNn73BxQg+pK7eDvp6aSOYYUhp2J
         9hJHCcFEYkjNnB2ebbRdHLuChBH78VXYMhi0IdUmgHorwVSoEJxmFHwa21tK3PD3JdHR
         5BafBoMR/L1Mtj22i4uUrLmkWGJmL1B89UIyAJpslPqVZLjvhcs/AvHC57meZJqLJlP7
         86rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Wv2UMr5Zx9RlItjNtRt5EUM5AigO17LxnMLlYxQeDDw8X46u1
	qV6W3RdEA2jKxHaCBMhgET0=
X-Google-Smtp-Source: ABdhPJy/aXmQd8NYHoQwwRxetmSQzo/2/1gxQROwuVjPgdcAuSofE2Nv0SJIPdNld/41MMyCnpEpfw==
X-Received: by 2002:ac8:4088:: with SMTP id p8mr17280291qtl.119.1592246844514;
        Mon, 15 Jun 2020 11:47:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:cd07:: with SMTP id b7ls3244941qvm.10.gmail; Mon, 15 Jun
 2020 11:47:24 -0700 (PDT)
X-Received: by 2002:a05:6214:922:: with SMTP id dk2mr26754995qvb.87.1592246844131;
        Mon, 15 Jun 2020 11:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592246844; cv=none;
        d=google.com; s=arc-20160816;
        b=Po+FUadogcPYQdVu/TrOOf+UkNYWCUU/pEukszUjUIF8sLFTMGvEb1TXgSOcX/HJj6
         GJShzOtFJCbFrVlxqT6NpI/UME0Cr0/Uv1PfKdTwdMZFKcbINaV3JfVqpPZIUHwuk7Hn
         OJZuqQBE5QyhxUHfiDJOxmfsigzlXxqYYLMOpsmdyI2jpsd3Ao+0MlKiI7m3kYiIN1hE
         +JDm7Bb+Q1M74ODS5dA2lSY8FCxNtOJEbfNAIzNPVHCPgXOZT/+ve3K74Fyy2sL8D5NB
         QFfdmWsUUY6kNeobuQhtWVPShRIYH1Sg/lNA7Eiw8/JXMJDQ2ABec8AYQrBeWbFDIDdN
         d39w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z30H0Qxf7KSPQ6BN5/irrwQjH65QOzZKJjP0gLp4z7g=;
        b=Z5Jms9xi1H/DhIz2g+nrV+S4jsMjkhEgw+whHaal+RGb2/AU6WQoOc1BGfVRdyaAgD
         UlizYD8X7VV12EF53LXB3Oo6ApeanCiybAmxO72wlUugb6Y4gs+KhVSO7aopqPjTY2vk
         c5G4Wix1/91A/t42R7QkyaF3xnXj4UlXpQt/834kOiaXVSQT5hso2Ee5s3+z1W2iY6eO
         faS4o6EDX4fOd/Znx7VoeF1njeSmU320lDFUgr93MDybCE7KsEzbVAsjsRTiuW82m0ed
         D2TKBLBARvRHoWJ88G0Alx9RqgUQoxq39OLHLwWRu6wcQNme+NH+siZ/iQj7dzgI4ub4
         R+SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gdHCBuPr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id a72si804394qkb.0.2020.06.15.11.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 11:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ne5so208373pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 11:47:24 -0700 (PDT)
X-Received: by 2002:a17:90a:ea05:: with SMTP id w5mr672654pjy.37.1592246843289;
        Mon, 15 Jun 2020 11:47:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x77sm14582163pfc.4.2020.06.15.11.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 11:47:22 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:47:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	James Morris <jamorris@linux.microsoft.com>,
	David Howells <dhowells@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	KP Singh <kpsingh@google.com>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Thomas Cedeno <thomascedeno@google.com>,
	Anders Roxell <anders.roxell@linaro.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] security: fix the key_permission LSM hook function type
Message-ID: <202006151144.C9E5EA2C76@keescook>
References: <20200615181232.119491-1-samitolvanen@google.com>
 <202006151113.7A2F638A7@keescook>
 <CAKwvOdkdy10K+6Jw=Sd4PxrvQgc=HssoJqJN9q8NVWkWiuZtRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkdy10K+6Jw=Sd4PxrvQgc=HssoJqJN9q8NVWkWiuZtRQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gdHCBuPr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 15, 2020 at 11:23:44AM -0700, Nick Desaulniers wrote:
> On Mon, Jun 15, 2020 at 11:21 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Jun 15, 2020 at 11:12:32AM -0700, Sami Tolvanen wrote:
> > > Commit 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than
> > > a mask") changed the type of the key_permission callback functions, but
> > > didn't change the type of the hook, which trips indirect call checking with
> > > Control-Flow Integrity (CFI). This change fixes the issue by changing the
> > > hook type to match the functions.
> > >
> > > Fixes: 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than a mask")
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> >
> > Thanks for fixing this!
> >
> > Acked-by: Kees Cook <keescook@chromium.org>
> >
> > I wonder if there is any compiler option we can turn on to catch the
> > implicit enum/int casting that would help for these kinds of things
> > without absolutely exploding the build warnings.
> >
> > I see -Wenum-conversion, but that seems to be between enums, not between
> > int.
> >
> > I see this, but it's external:
> > https://noamlewis.wordpress.com/2017/10/05/type-safe-enums-in-c-using-a-clang-plugin/
> 
> Unfortunately, using a looser integral type is the typical workaround
> for -Wenum-conversion warnings (which is on by default, GCC recently
> added that flag, too).  For warning on enum to int, the kernel would
> probably blow up with warnings. I don't know of any such existing
> warning flag.

Yeah, I couldn't find anything either. The closest I could find to avoid
one of the common classes of enum -> int conversion is the bitwise
operations, which is covered by __attribute__((flag_enum)):
https://clang.llvm.org/docs/AttributeReference.html#flag-enum

Ah well. We'll let CFI find them. ;)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006151144.C9E5EA2C76%40keescook.
