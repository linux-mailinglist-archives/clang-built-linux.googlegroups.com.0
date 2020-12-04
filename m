Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5HDVL7AKGQEBRUEQSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9D52CF685
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 23:02:29 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id t12sf1979201ual.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 14:02:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607119348; cv=pass;
        d=google.com; s=arc-20160816;
        b=ikoAvW/pfZm9iq0ZpSiiVapY15McAVRXwnbVJgKab+Bs/zESxmrKdnqjUKpzlxTiM6
         Gf6K52qERAOy8FrVe+WNnVXZyOJ4wrNs3Ql6LzOljdAFuCQoyAPDlnCOvYRMqz1ognIc
         Z9MJd25iyXTnZYs57xq20mZSKHPjLsrPv311tqAU1L40X9gL5EobZE2DeAUYub7PoSVI
         /eEFhTfIKLZiz5A4Pw57YSN8fGclOmc0ujvQkU7owkQiKhtwEI+V5kxMn/cWYq37JQpY
         NC35WAV+lu9r5eYOOId+n75v7DeC6n0siCOpr0Bq45apn68fexaMfuM23jKIjZkFXJzM
         AdGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B5TfdgK9NPwtWG5AbWuPOLW7LTHE6aTblzOVSR0oQ3I=;
        b=Vl/yx3r4+mpQKqCX8Stnge+Sr+HvgUJdmJFbTo2J3x3y5avz8Esfac+q0fe5ymVZms
         yhZDsFKTvYwWA6uMv5O+dzW2jX/9KFXXm1qP04apcOMMQpqWAgzUlTMI3BrqczNs4xFU
         kVqtCUAT/6VD09oD8l7uDWB9b8SWmMakj/H05bXyVYk+EkXNtkPep23ZWYKYm347galB
         8yl8nFXD+EgjaBtQZoN28J4tYrmqhd/sdb6NbkEV7oGx/jrJtV7lURccMdThGlfU/sff
         KqmIM0Y6UjccCRymeMoEt9MRdUIVOf5rDwICEeli/MHnNfD1BIeq6QVtiIZisIz6QCLq
         iHzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WSBivQGw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5TfdgK9NPwtWG5AbWuPOLW7LTHE6aTblzOVSR0oQ3I=;
        b=TC6tfkfVYmkCKkCxHmBBcw8VrkpN8XPZuN4CC/6Q2BQ0HF81jI9TeH7ocjTOEGHlw8
         4VW6oV5UvBEgbs7qmWfk9xmoyOadGwNkE9fK32BM3oMpQqnrEBcowa1weuj4tk48q7PA
         Zuve4gkVI8QBTJ8P8RKZxdto8VFDiJItxFrIzrch7/OOxYTOzH+goJLP7VqXP9F0lp6Q
         YOy/QDW4S6LDVKMjX667KclPBBlTSOHpS9Bns4DY7ClOmTTrl7HaETMtFyPltMq9UnPG
         hQ2KhWTXKXxvMEc+pnZ3q4btMrALUAMtaGVpS2ui9pv++7nGLMQ5o0rJ7JE66MwBPLDd
         sZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5TfdgK9NPwtWG5AbWuPOLW7LTHE6aTblzOVSR0oQ3I=;
        b=nyMt27x7FpH/vZ8GCFsTcZ91BxtD0sUhrON1tunw1rPprK2+E0u9A6/bQU3jLIEBgf
         tJjNfrRnxtnOEUYOrY/zyMFnqk8uBK9m37y+w8a+11ZvC07P1Rd8YzR5rnHIpkTS1+zD
         uWVxdKzc8QjT0u7x2Jh9X9EL61wmQKfPmlidBZenKiVTP0iwYw1kxzWLM1F72Yde4ZyG
         1PLm40nmP2bwlBQQT8HtbH6ZfODxgkx4Kqk7ylPMPYUNWHLTHvJuoy5KhE1i7ULYHcoj
         Ljx0m7SmAjRNFr8bgA6HgJ+ZfU5Tvqt8K0L1b4iLednugb+ymTo+MA4CHVs8RVNZf0GZ
         b09w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f6BK7YzErZ4nmhQW/+vDIKoai+1WkcPkK+YF19X4TEvRzAdm/
	h5z5JQylx+EZGBbomVfrvyM=
X-Google-Smtp-Source: ABdhPJz/sAIvpHUZzRRaEQmmL+ocFGYrAQG+y5X5VgUHvrn9qxTcTvFEuG6mTE3OrHVSBgHka/V4vA==
X-Received: by 2002:a67:d39b:: with SMTP id b27mr5884477vsj.22.1607119348579;
        Fri, 04 Dec 2020 14:02:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6646:: with SMTP id a67ls1530946vsc.0.gmail; Fri, 04 Dec
 2020 14:02:28 -0800 (PST)
X-Received: by 2002:a67:e185:: with SMTP id e5mr6167607vsl.22.1607119348168;
        Fri, 04 Dec 2020 14:02:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607119348; cv=none;
        d=google.com; s=arc-20160816;
        b=pNraIS2Cv48sFhWTaM/Sov5u6d9I4gq67ibGJ2jqwoZL8MhfXy+jEmY59H+rNQWAKW
         KlsFVAjnarqxqYN5xBat2bO/JvFN5kTZM4zGWQZzoDoMdEVRKDiNk/sRpG3DU9KO083b
         kHVuNh3MumJcWMEeckgHoBod5r1V1we3gKkoR6BsHDvZMh5Se/aj9UdT3BtbXJj3zCdQ
         iSAdZxO0IQ9e0E9cx5kWd/qdQXyuo8Kjzd/LRfmSZR27FWJy8SjiRx7HGQCTa/e/1nm+
         5RR9H2SnDKP6BnU2YnwDaUH9iiqvCFngWqS4VUtuC8FRdsbfaFFvqtxUt6uV+674aDU6
         BMBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=enW7VRg0zeMyiDIIOokOnpbP5Go5lgWeBVKjANCM8QE=;
        b=D6I0estyhNEtBFCuHxSpuNeNiWYAL0oMZgWruD+G5HpbYWWO2UNQZ8x4TZpzlJvv9R
         qh/8hQEAZiBRHakh1psMbrVxky7ej7tFs4x3e+FW1A7W6IRn0mknS3ux+TGELjc7/LYR
         I4dDSBrwm8Lf91zsQC14zr0J9G7VwoesUiFu7w+YAFZPO45y2d5+fDcbg5hj63KW4OIs
         uQ4WHJZLdvNk4eZ4QfxZOjBsXEbbt/Xl092NXLtxDhbScxeQVWbPMPxokkP56d5vid5v
         I6nUrYjk9ZlpUl2RIQCLFG58R29Nb+gz0NKN3G+ghuhLMeGaGFuIdc8PZFL07r6orHKU
         h6KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WSBivQGw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r18si325266vsk.1.2020.12.04.14.02.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 14:02:28 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id x15so3908958pll.2
        for <clang-built-linux@googlegroups.com>; Fri, 04 Dec 2020 14:02:28 -0800 (PST)
X-Received: by 2002:a17:902:6b:b029:da:725b:fcea with SMTP id 98-20020a170902006bb02900da725bfceamr5727914pla.16.1607119347328;
        Fri, 04 Dec 2020 14:02:27 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f92sm3353946pjk.54.2020.12.04.14.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Dec 2020 14:02:26 -0800 (PST)
Date: Fri, 4 Dec 2020 14:02:25 -0800
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Emese Revfy <re.emese@gmail.com>,
	linux-hardening@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
Message-ID: <202012041402.97F582B00C@keescook>
References: <20201203125700.161354-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201203125700.161354-1-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WSBivQGw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Thu, Dec 03, 2020 at 09:57:00PM +0900, Masahiro Yamada wrote:
> Linus pointed out a third of the time in the Kconfig parse stage comes
> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
> and directly testing plugin-version.h for existence cuts down the
> overhead a lot. [2]
> 
> This commit takes one step further to kill the build test entirely.
> 
> The small piece of code was probably intended to test the C++ designated
> initializer, which was not supported until C++20.
> 
> In fact, with -pedantic option given, both GCC and Clang emit a warning.
> 
> $ echo 'class test { public: int test; } test = { .test = 1 };' | g++ -x c++ -pedantic - -fsyntax-only
> <stdin>:1:43: warning: C++ designated initializers only available with '-std=c++2a' or '-std=gnu++2a' [-Wpedantic]
> $ echo 'class test { public: int test; } test = { .test = 1 };' | clang++ -x c++ -pedantic - -fsyntax-only
> <stdin>:1:43: warning: designated initializers are a C++20 extension [-Wc++20-designator]
> class test { public: int test; } test = { .test = 1 };
>                                           ^
> 1 warning generated.
> 
> Otherwise, modern C++ compilers should be able to build the code, and
> hopefully skipping this test should not make any practical problem.
> 
> Checking the existence of plugin-version.h is still needed to ensure
> the plugin-dev package is installed. The test code is now small enough
> to be embedded in scripts/gcc-plugins/Kconfig.
> 
> [1] https://lore.kernel.org/lkml/CAHk-=wjU4DCuwQ4pXshRbwDCUQB31ScaeuDo1tjoZ0_PjhLHzQ@mail.gmail.com/
> [2] https://lore.kernel.org/lkml/CAHk-=whK0aQxs6Q5ijJmYF1n2ch8cVFSUzU5yUM_HOjig=+vnw@mail.gmail.com/
> 
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012041402.97F582B00C%40keescook.
