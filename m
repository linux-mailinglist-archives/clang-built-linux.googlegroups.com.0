Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI7566EAMGQERLW6LTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id DA67C3F13C3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:48:04 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id gw9-20020a0562140f0900b0035decb1dfecsf3939389qvb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629355684; cv=pass;
        d=google.com; s=arc-20160816;
        b=KGRGs+RWAAZRPRHrqZQmWQhzZxXJlxzqHqzA7MzY4I4loZoHXzx7+qWvRDVOXk+TLT
         xZNO/ocuSuDNGAVOd19F3KoawyxQTI7/xEybglD7nZ7kWao+2HT2wt6nAnlgRR9GDZGi
         XK90NhJMbYYzMyY7opc+3YYWQHV33DQPl3+gihRr5cs9PIuK/mM0lqzSKGT4nxkj5YWq
         lJiJE751g9mHtMmY5ouSLNMwFPtHGVhIHNefJlFLt04KBBP5o19nPHalgOfR+gM8ROfo
         W9TS1kZq4iNSqGbJaldvrWEN85LEXNXtQ6OqnOX4SXogLna+KZzUeeuncewidByvYY/X
         p0Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZBrHGokuINDIWMWGibN8zdsZd0L5k3YZPPydzV+bj4A=;
        b=q6bYJbHC9X4nb8hIbdZcecLIuYgWuXko/HvmA9SYyjpbijgT+HALXjqaZIkZkBlB67
         M6bhQPJH43ndLxK1d+RSISgVsJrPnnFdXIG1Pt+HLl57Kt6/WlqzpNTYm5Nx4uWREdTt
         1oxi3ANCPFLLUEWepgvWSA8UKabIfD/EQDVyrbikFULrSLC45wzlW7pCuPefF2eeNenX
         6Wupy839UyU/5dNSo209+3M8shk4PgwP9mNtHXGb24g20wdpMxvmKZriYvI/JFBiMPeD
         gFGn62/Q9pfKRxIclfHxmGbmBN4oBRhoEE9TGXYbIjAkqo6XRZ3P/s+MdrActth/boVl
         ONbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LzpwSI+P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZBrHGokuINDIWMWGibN8zdsZd0L5k3YZPPydzV+bj4A=;
        b=onGSzUyPKuN3wTJ4nzzaCjsqlMt3+0p8mzzS0aV8dNiiSr2wmTqawyqTX/Z7GrooYU
         k0UR/EETJUx9e7wwYzF8ZbFoY+8/F2Tt0IyZc4Hhjuh5kbYYwcDdzmHBd8iwkSVV0/jS
         cDBDuaLHboGiWGGVyOLDQvdz3vjq767HFkRLngji5hXQ7UK9LqBnrwl8W3mQyL38Lf58
         ekUZEdh5osynF7hNxMHRJghWBcR1UzfzfkkSUAQPp+nDe+dWX7DTbgqSV+U/mI5u7Jaf
         lf0ZFviNcd6f2lPFfuf9y1JwcV1oD7U4PZXFxeSEAnBozxOhoWom9xHExZwsDnaYYqt/
         c9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZBrHGokuINDIWMWGibN8zdsZd0L5k3YZPPydzV+bj4A=;
        b=eaMJp0uaJT+iAQdTkId74LOqMzau6DQyASxmgqH1cJCPgTO8MaJnzL5WqQ3TwglGzP
         eyjLByjRq/aIdKKzwVDjHpSG3t/IRnYIImg16RvRkJQOOtp6UJqgpgLIv8NrH8mOACgK
         4XQQElxO288emvgWhZrfpA1EFyR+Lpw7L3hyQJMRf47jN/zeuujUHw9jXnwEHSqhSlBj
         IWYiYzB6ZDuLFC55hdRvbQseR5t4MsKNvhFPpU47YzUf4vDEiaNz9qoSs4PHjFfY0Cgk
         +KgYh1QMfAUXNTavNNv+BYudTHQqKgHmA8DKJyszs0s1eN2WefxEisXvTyUR27KCc2oX
         3chA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kpNpME2m4A88HiQ3NK1mKQv+XYN0M3f7p9qjphoy6KwK+EQOz
	KTWFk4y5WNjuwtsZygNGQWg=
X-Google-Smtp-Source: ABdhPJyOYWm7OYY6rO3i7RaFwEGi2e0OnTK/W0zGm+/4TkGT1spZcUC/WgQPIDt302Abyu0F14wnrQ==
X-Received: by 2002:ad4:4b0d:: with SMTP id r13mr13109445qvw.7.1629355683987;
        Wed, 18 Aug 2021 23:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls770463qtg.5.gmail; Wed, 18 Aug
 2021 23:48:03 -0700 (PDT)
X-Received: by 2002:ac8:1249:: with SMTP id g9mr11283004qtj.292.1629355683544;
        Wed, 18 Aug 2021 23:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629355683; cv=none;
        d=google.com; s=arc-20160816;
        b=QUHxtI5XeCSwv2hwnfXZKv2GTHUDOx4vczqwnLcp1dM1t0Pkf0z66Pq1PqkhM9LqsK
         j3kmFGF/cW9ve30UE2VwmR6Oju2IZ/08TXQOx4gi+/HKtNY0H0tXglpWZFGWWNNqt8qd
         1/4PUYqcvc8RXzhcrhggdT7rzRoJlNbTXiYt5SToF35u/BqQ9WoSFO0/2P9ST831YfKV
         3NHITqbjj+1tvhqMVgkOKxtVl5N/uDmPUzeHgR3DsceIxqQ2m8T74o2XKctgkw+aAkYe
         F24Fh+NL5XF67kTxen2d+pMXc43qIY9E4RflHHNsoXrFgSIQLP7RSoacH/rDBYWXdzR9
         p0gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LZbrqbnGVF4s6R8ZE29TSFBtRgWG1aFf5wVvmTN0Kls=;
        b=bQI+Y1gfqdljKuauQwxlcZfEk22lCjG1HZLDHeI00FYqzBxMMwtl4E8yH2pHyCaH/b
         jmb4OmRb1ezM8laEq8m17cfFSF3U45MqUS0aZHt2Tpp8Na7qTJrtZQYFlasARYFUzStf
         Bu9QRT/FglLZFj2MQCU6KpMZljzdJICBjZpD/kVIHXj5BkHiTJ9kwUhDKHj+92Lf5kv7
         XnKjn8agaJAyzzoSXxYmBIgqUxRb5q3E4BMjQFwqOSGjuA9MtoxIUAsittUKtQ2NFMzt
         cV3WLT2bqMetaihgBTW2Fyv619sJ/H4uC7jw4tZlFbMe1PZYM4S5cGTr3B7otAB8WlaA
         ujdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LzpwSI+P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id i4si196152qkg.7.2021.08.18.23.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 23:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id e15so3335082plh.8
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 23:48:03 -0700 (PDT)
X-Received: by 2002:a17:902:6b03:b0:12d:8f77:83d1 with SMTP id o3-20020a1709026b0300b0012d8f7783d1mr10332933plk.11.1629355682754;
        Wed, 18 Aug 2021 23:48:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c26sm2442811pgl.10.2021.08.18.23.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:48:02 -0700 (PDT)
Date: Wed, 18 Aug 2021 23:48:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/13] gen_compile_commands: extract compiler command
 from a series of commands
Message-ID: <202108182347.0CDD87706@keescook>
References: <20210819005744.644908-1-masahiroy@kernel.org>
 <20210819005744.644908-3-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819005744.644908-3-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LzpwSI+P;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

On Thu, Aug 19, 2021 at 09:57:33AM +0900, Masahiro Yamada wrote:
> The current gen_compile_commands.py assumes that objects are always
> built by a single command.
> 
> It makes sense to support cases where objects are built by a series of
> commands:
> 
>   cmd_<object> := <command1> ; <command2>
> 
> One use-case is <command1> is a compiler command, and <command2> is
> an objtool command.
> 
> It allows *.cmd files to contain an objtool command so that any change
> in it triggers object rebuilds.
> 
> If ; appears after the C source file, take the first command.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Seems reasonable, given patch 3.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
>  scripts/clang-tools/gen_compile_commands.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index b7e9ecf16e56..0033eedce003 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -18,7 +18,7 @@ _DEFAULT_OUTPUT = 'compile_commands.json'
>  _DEFAULT_LOG_LEVEL = 'WARNING'
>  
>  _FILENAME_PATTERN = r'^\..*\.cmd$'
> -_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
> +_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c) *(;|$)'
>  _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
>  # The tools/ directory adopts a different build system, and produces .cmd
>  # files in a different format. Do not support it.
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108182347.0CDD87706%40keescook.
