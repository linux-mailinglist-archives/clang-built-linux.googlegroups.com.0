Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKE3TP5AKGQE6KQ5IOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD725397D
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:01:29 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id c18sf318917uan.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 14:01:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598475688; cv=pass;
        d=google.com; s=arc-20160816;
        b=rI+Bymc9EQlw2gsxggY1s3YM9xQr3j5Op55qEJtojzG/1gTliZIaQrrwizusBtgOaE
         r2KuBrKos/48Hb7Q0HD9u9l+o5ij1XsKRX7OY3U7mCeJCbk1JFNxrmQxFfxSMnFXtD2b
         Tv+0Xt02dbr1mnDi2JzpgY8XIysTnspxPhEI89NgKqf4EYPqc+0N45E7gzcEr+9rdW7/
         Tlq9Zco+E5g8JGD7wUlvZYaXa8Eipm8/46plQUL1vAVjsJN42U3yx6pYKYtVYnd2XUak
         OH6scADFLrJuMaBNOcALxYhsLXiZ6UrepkM5PDa9RNgJ1rjdWJUKlMpKs8cSE2NJFo8+
         nU0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CCsD+fJmKIeORdGZeCpZO11ZSVsB7g7cm1GxPv3fo5U=;
        b=yQEVrp2sdg163JfNh6Xg/hzLNfMVgH5KRrMh95lLSL+0+1nvKQblhn+HROl+EJNWWi
         WpPlhKOlJAeaMvcOpEq9vGD6VKQVyeSkLdonluPCS5jKqner4ANKmCc2mhMvCxjJv40+
         IGgPAvdGs7PmjDlOLwp2/68e6WiJU+plTuyQ5TKiHwPQBjOHORmnCCg/kKYGjhN21DbX
         FSa0wbTg6YNIx9aGXzBjFd7crKhUWMbeK/LgpW06LVVzahB+k8+/5N11jsCMiSa5WpRX
         R69UW4UNMrbGYoowSWunAfcps0D77DP6yAtu1wk4akQK0b0vqgq58UwUiMHdyhEZoK7A
         tX+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GMh32vhu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCsD+fJmKIeORdGZeCpZO11ZSVsB7g7cm1GxPv3fo5U=;
        b=pdzL5d1pxsOISTFwX8MMN9+xeWLkD+pnKLAin74oRagZetjEC4d5OtKeLpo2TiRT8S
         eYktWKnue3V4bWdcE+I4QyYgWR1VDUejBf6ZoQYviV9VrcEPGDc9EN6q9wLt8V9tBZ7o
         4mQz6XXcwHRt7IahmRo0UyaNfcdI4cBVCj+BkrZaeDoIhLoygdTb8bzg9AsEs9MpRE1T
         BXvu6TcMRMe16vGc42V9i89+IAtbsxgwOWVdmSSgy12AK8zVC/hMGY4KiN1PwHVKJL+z
         r1OM+LyYyG27uL0vP8yBpmb0mOjgIvvf3hXADwzgaLi0sVb04OhghBzP3H3j0bBK02jM
         gO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CCsD+fJmKIeORdGZeCpZO11ZSVsB7g7cm1GxPv3fo5U=;
        b=BX6E+ttTLzxa5TSxYQIKWMFP17wT2/0G/GXiYZ9L3t7Y1zyzFf+iUZtiDjsWEaT1GD
         0JMofzBEgEb9iv9GGvlQJUQ3qwVc2XdC/mphRj1Efnis9k5TEds0DEeBvpgHpJAmXVdQ
         PZPvpW2fmquWasGqkdRYKADac0maMeDHXc5TD9gtbrDN2oKwgkZ8UZ9TQic59LUzrs2a
         r67pHNojI4FXOs7gEY+5NO6YTmZWeJWPCv+fepWdA5uIixE2GhLwppxXi/FjZ1jmZQF4
         7H3MfZfaIZxJgNpyg7Ta9RVvSRRVxLf7BB/GhYVMHhis7Rmu5MyS23uUBUCxV2+kV6tq
         78Ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+q2tHVAH5x9x12kfzyvWL0aziUQI6/KQlntKnpR6mjbfyCkyA
	LnoRSFPQh8IH72Przb1iHp8=
X-Google-Smtp-Source: ABdhPJxnI95+LZf3Kp1RkV8pBy7U3SvqXTUgt1n87twQ6qlHsrcjvtj4gOdHs1Km0bb8dyMZnv9TNg==
X-Received: by 2002:ab0:49ed:: with SMTP id f42mr9941270uad.115.1598475688226;
        Wed, 26 Aug 2020 14:01:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3b8a:: with SMTP id p10ls286129uaw.9.gmail; Wed, 26 Aug
 2020 14:01:27 -0700 (PDT)
X-Received: by 2002:ab0:2509:: with SMTP id j9mr11006521uan.133.1598475687820;
        Wed, 26 Aug 2020 14:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598475687; cv=none;
        d=google.com; s=arc-20160816;
        b=R2Xq8vFvMydQZrASGI5O5c7B0RigEGT2DaetcrK5rlBForlIxUeIYWndcL2lpycT4D
         niFb0dJvOULFHMqJ10+Mpjxj2f/9BiP4vpgMrwcGSYFT1dyY2DWTH2aWXw6Ka29tPl91
         fT3gmZTxjkeeaIfSx0KFlxOlrB9G6TfoU+Tql6q3BJJyh/kPUKmjdnu1+P4BcvFIy/wr
         WmtKGBfVc5a+NZfl0Fvi/xijEbKaaVXRM11Uyk13UNH7dyZ3EGCbWG1Rra858OsNNpTt
         KIEdUZ27Z57eFu17WuzypXsuTlA3Es9FnoLHgRP3sO3DH3r80Bbc6GlN1QgqC04t01iF
         QhMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ST8dKNdOof+9XS/A31fGeNIF5SQDK78dDGmv82m13dI=;
        b=n3w9ftHu5AkPYvuEQJYr408OGQMiGgO8TFEh5Bp+vIKogi6Ql6JXef0K+N98cXnf6B
         b0bwYMO8iWbEL6X6MWWilwP1Ce/aujV1ajMXE+fcyK+RLmL90SnwJ5adzCCOHooIAji6
         S/a0XFuF4uJjpQN2dTN0ZbNiuBYt8u/+LWkY1YTyWJsAtry2WTIeFT5u7nYKPXt5WyyV
         vDMZWBRKonFN+z/tVnIb04YJJ/KQEsh81/XPRFUg2fAL3NlLV5L+nyqjbs74zHL8UOHG
         3J65N14jR0eSJnyoMCWIEeKAfIzuiLB2y6ysPAn+EsSpoTJ9B8mkY0PC7QubLEXyIYAZ
         3sGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GMh32vhu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j18si8151vki.3.2020.08.26.14.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 14:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id m71so1724181pfd.1
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 14:01:27 -0700 (PDT)
X-Received: by 2002:a62:fc97:: with SMTP id e145mr4133562pfh.15.1598475686888;
        Wed, 26 Aug 2020 14:01:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m4sm74595pfh.129.2020.08.26.14.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 14:01:25 -0700 (PDT)
Date: Wed, 26 Aug 2020 14:01:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Ingo Molnar <mingo@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
Message-ID: <202008261356.B31349A@keescook>
References: <20200826201420.3414123-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200826201420.3414123-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GMh32vhu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.
> 
> Older clang's may work, but we will likely drop workarounds for older
> versions.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Link: https://github.com/ClangBuiltLinux/linux/issues/941
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..7338d3ffd240 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,6 +3,14 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
>  #endif
>  
> +#define CLANG_VERSION (__clang_major__ * 10000	\
> +		     + __clang_minor__ * 100	\
> +		     + __clang_patchlevel__)
> +
> +#if CLANG_VERSION < 100001
> +# error Sorry, your compiler is too old - please upgrade it.

Perhaps a bike-shed suggestion, but I think we should make this message
as specific (and helpful) as possible:

# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.

Then anyone seeing this has several pieces of information:

- the kernel build was attempting to use Clang
	(maybe they accidentally poked the wrong configs in a CI)
- they need 10.0.1 or better
	("upgrade to what version?" doesn't need to be dug out of documentation,
         headers, etc)

With that, yes, let's do it. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

(And likely we should improve the GCC message at the same time...)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008261356.B31349A%40keescook.
