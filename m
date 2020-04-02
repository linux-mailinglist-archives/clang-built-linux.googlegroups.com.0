Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3W6TD2AKGQEALSVPEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A72319C8CC
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 20:31:12 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id a188sf3671985pfa.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 11:31:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585852271; cv=pass;
        d=google.com; s=arc-20160816;
        b=b/juK9J1johH2X6bNP0rjp2A7So33j5TFPBmYksdZr9G1kMDkATM5lpoy6yc3PXOZM
         jo4VCvH+KiQ6W5ovk+Vo03V1lSIkkJjfsOpByMe5mb0QmlnHznLqb0IvD3V6AdWAlOp3
         WIZ5GIyzV+AF/VpBezehrSZ+zikdpviL+kOYNK1WM3M0PA6TrfDk+UKNuMV8DqY9KuJ6
         9QqUJ1SPMeWymcipOIi3mGGL79CmWvdc0iQVhBWmBcQtpbqs2HA9Jt27tctP+8kwqxXD
         wakTuYzriXPdszcawYV4kKLLucBHuQV1o7ifXhQax77/ky9hG9o9ud+1dEf63EWrjGbR
         /Qsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=29H5cl4f9MkymF37zCCf/0ZFBKOMja0DL6BvXaoqAj0=;
        b=jINdiUwTlTfK9rOr/CjaWkxMF9k27oiiqRyz34YuTzw6gPmVoVQtWouMmKXRgdmLix
         fhX2IOTzEYyeLRstM7ftMp18e0xZjt8trO5f7hlGq59IjtAA0ePmGTnvvG011xUSMT+S
         hwUfuR1D81KNgslOtcIQ0LAku340A+Vtgf37cPFScrEV52I9giCFkMCD6lydj/YBRDZd
         lSXkDjTzdXZk67gDTQx8jUDvIZDnDHD7IX+JNYQcVzOaMp5MCt6dBrlkhGNVuj4OY/O6
         wFTqkl9FvuzIIErVAhUxlclyk+Hs87iuPZq02lwkpaUIjBnwE7ICLG6iheTU+JkWSrrt
         vVBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jHiZcgy/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=29H5cl4f9MkymF37zCCf/0ZFBKOMja0DL6BvXaoqAj0=;
        b=nA5fOwwi4UBScaodU3n89Re5iSDC6T1qKab5mrtjRzI2GiIrUyZJDCCk+39+gwez9i
         bfyxSsr93z3LA7HNZjDz2IAtEynyvICFWElztyVxTChSRqpux7rUcg05Oo9LNsaOO1LO
         lNjIG/ROICPGfTEMbvWRRa01y5vs27WElqqdFgUSAnqdOJ+YFIjtWNivhHYP49gx9FDO
         /KjAvn6PEH/Xcym2m9C07qY3XCXMXwjiuy4DYjPO7g1eq8xqz0jjkk+4n8OSKxPodEwL
         VxfXvdOg7xG+JX9jnJovnwFdjEAEy3rhrK/61mhCZBUIrEmtyHwiLtsMC+PE58rf4QLz
         7oqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=29H5cl4f9MkymF37zCCf/0ZFBKOMja0DL6BvXaoqAj0=;
        b=HBqoA2GQoUQNJcCcJuS7wA3cSpULLUvu/ghHlZJyYLgbJiWjU99WilxQ8yrx6p2XN7
         05orOYt3VuY3JElYPthM9EiQgm88VEiVpsZ2udu+Vdzd67sjTC+dxsNTQg71mUHgRfqR
         JTu19n2AqcRkceTDJWwyqVDecYsKixjkSPgJtYWD5g/5n/ggGbFEGjNBUWFN7+Km8Vp0
         oD8myTZoXieIaaMR2gGdaHPgJ+1zWDBPvxAvzJm7MczHuITsv2pbrVOHz4PQpJTzlOW/
         kAhpWSV6g6mejJ72WjeQXl9nTepvTv9zQOBwWlFRxaP/Z8K3I3ypT3ZmJ/QAc4XKHc/H
         terQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubkTdq99ebwSMKiBGPjA7s8E42b3ViFO8U86vOMKs00UYCFwaXL
	BNDJzZEO/eRkb2dOZ/iAj8Q=
X-Google-Smtp-Source: APiQypI8UX4B3Frs3yhIQHNcPrCI07+gLjG7zhw5gnwxrpMBXIzYDVSos2OnX2kSa3voI/QaPkDfQg==
X-Received: by 2002:a17:90a:1d4:: with SMTP id 20mr5042573pjd.95.1585852270913;
        Thu, 02 Apr 2020 11:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls3771373pjo.1.gmail; Thu, 02
 Apr 2020 11:31:10 -0700 (PDT)
X-Received: by 2002:a17:902:b115:: with SMTP id q21mr3967125plr.337.1585852270465;
        Thu, 02 Apr 2020 11:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585852270; cv=none;
        d=google.com; s=arc-20160816;
        b=Plply6XepjPAT5ov1hT9EZtIEp1jGYnlQI+QvTE0mEZLjP5JwC/mMcbUyTy6mc9pQR
         2XcCqpwiTJQ12qdMjZFwRDWdnjw4f13yX2XfqBqP6RH4Fkh/pWPC8AxsCqwnUmBtAbAd
         WU7BYujwwFCRyj6aK/vL7i0TOSE6y8RGxg5pEfo8H19M/b/Z8n4oSwEQxzrjbUmccoqJ
         dnaQblVxxnjlu1fhPIVo21fzHf7vGCODFW4/EYmafsFBvoObBWtiCRiBrm+IpdQ1L3A+
         zx6hsg2qjDF/kxksNIV5oqjoGhalZlVWzAHOx0AsRtdMFMjVPEj1ONO+lTZjc2F7t9I7
         Q+DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kZGuI29ZXRMYLlFqPcGnn2ZEpsArv5KS+IfYEt8rJDE=;
        b=HxKKzDL8s7CC7ccZ84Mow5A+ZlStVrF1rxgTnZ5970gByvHu/kfsSF0neecYHWZNVQ
         mu3v3TgCqobfDBASUJZJ9brVtmdJp9MBGl4adBUhMaEXnplPmyvicvh4OU32IECRSnl5
         1u/zn9Z2qIl/vXP4w6QH47rBBtGOOukKnf4j5dNENa5WToLnLzDQDjOTvQZKS5r5F+un
         R5LTgM/aiZIjgJ6HPRMzD304qAxfg0k3uDl2aLN7+Impngov9N44W9TSoDPeNIWke4El
         7rHZIXxmIa1gaJxIdwYuP1xb4NA0ZwQqT/Vzkv5aBLNFdaSFFVK/7P4A18NsPNq75bBV
         CvGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="jHiZcgy/";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 138si436906pfa.6.2020.04.02.11.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id kx8so1830488pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 11:31:10 -0700 (PDT)
X-Received: by 2002:a17:90b:46d0:: with SMTP id jx16mr5148235pjb.155.1585852270186;
        Thu, 02 Apr 2020 11:31:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z15sm4267487pfg.152.2020.04.02.11.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 11:31:09 -0700 (PDT)
Date: Thu, 2 Apr 2020 11:31:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <202004021129.F688E2D@keescook>
References: <202004020117.6E434C035@keescook>
 <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
 <CAKwvOdnO_-jiQzCmy7pQNMGmZsgD9J=PYXVzOQ1NF1+u44MsOA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnO_-jiQzCmy7pQNMGmZsgD9J=PYXVzOQ1NF1+u44MsOA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="jHiZcgy/";       spf=pass
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

On Thu, Apr 02, 2020 at 11:22:02AM -0700, Nick Desaulniers wrote:
> With Kees patch + Masahiro's diff applied:
> $ cat /proc/version
> Linux version 5.6.0-rc7-next-20200330+ (ndesaulniers@<hostname
> scrubbed>) (clang version 11.0.0 (git@github.com:llvm/llvm-project.git
> 6d71daed03ced011cd25f4e4f4122a368fdc757d), LLD 11.0.0
> (git@github.com:llvm/llvm-project.git
> 6d71daed03ced011cd25f4e4f4122a368fdc757d)) #167 SMP Thu Apr 2 11:17:36
> PDT 2020
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Awesome! Thanks for testing. :)

> We could actually use this in Android for a VTS test I've, uh, been
> meaning to write.  Also, LOL at scrubbing the "compatible with" part,
> reminds me of user agent strings in the browser, which are god awful.

Heh, yeah. That's there because (actually, I think _you_ told me this
when I asked during the ClangBuiltLinux summit) other tools scanned the
LD version string for the binutils-specific bits. For this, since it's
newly added to the kernel /proc/version, nothing is already expecting to
find an LD string, and it looked super weird in there if I left it
as-is. Hence, scrub!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004021129.F688E2D%40keescook.
