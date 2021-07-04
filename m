Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4H6QODQMGQEL6SC5YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id A86373BAAB5
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 02:23:13 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id mm9-20020a17090b3589b029016e99e81994sf8368350pjb.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 17:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625358192; cv=pass;
        d=google.com; s=arc-20160816;
        b=re8oSOEPNoGl/fegmQ0GEtlqj9c3BJYGtqdHEYzjzVwIHdsv1JSMyeX3koJCgf7KPG
         b2eMH/99NXHS7zxocbGMYzgr2lInNoKotf1CIvPqAyLFfxQRuR8UdwlRkpq9DnrvJnsC
         ExPkz1I4oCeAd4i5GiXds1Ofj0x7Xl2GFW7doXAh78tj2TvZUwQsOEm/CM4tLzRe1BYN
         REz8Qd3oIDhmQdNkYwdJCY89dht+zHYOi3tAKuIEUkEjao7JImSVS6KuToU+3KZKTxiV
         yIb7nrX/44BFS3VuXvuMg4v3+G7+NXHrDXWlnYAdDB5BCR6fx0C8Dda2Srs98urcnJrv
         G/yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HrRyT537oHmC83TrxNBh+gCi3x7DVuiOdOdZBskxXpU=;
        b=eYxF1xfN88ozi/Q3YbIrrrwXGWb/R8SKvjmLr6KqAK+JVTU1AA9yp1S7c1sU074cNn
         QCH+eMXrXHWrvn09Kmd4e9KgR5XE4IYtV2FmBcsbqBEPV1St9meb9Gr6kNIgJCmIujfl
         4Z7ETfaYsus5zOXeeIWbGxkgJmCfBa8Juimqeq4B3GpjpLziZX2V1s5bW+e9Inj3tGVM
         oxVvmlwJebDdxVrmoXhUs+3KJY3xjMZ72Kcvxy8lcv2TFV/RwpNmM+Sel2YYQyPhePKN
         4qCoqTwBjS1+MCsqspjby/RxrBJSrR2wdeda3Z4ylEG5lOGE1ZjGSfOZIz4B8Z7w8Qht
         TglA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EcFEc1qi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HrRyT537oHmC83TrxNBh+gCi3x7DVuiOdOdZBskxXpU=;
        b=pbw9y/aevlCkc5r+hgaz6dZi52usEAuJavcA30o4NZAgpb3S+Dn66qwDOO80Mn9wHe
         vMmzFd5hhAOT09LI8Mi0TH2CZUcl5sQ4l7FCHBdTBnwAF0Q3DlnxlVyumNQzLrdwlA5V
         hqJdq0vBWB6oZgR/tyvlAEPieei3zWBUy9YBMQ/2AdVDiWRCOKw+zOI2IecGj6ZBwPEJ
         RDccW6LcbG3TWeNcXMrW2O2ZjLrx/iXND3i2kVK4EEwwrxKt3DrZjae6n3Dee/YMTH7z
         VnwAndoVfgonWqe5juhTlR1qgrxTtpA85I10/ZW+lhjX2wGmfOLKfAE0SnbNBVGZ9yCo
         ui2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HrRyT537oHmC83TrxNBh+gCi3x7DVuiOdOdZBskxXpU=;
        b=f2i3m4T6PT+RpwkHxzB/Q63AWwMb61oz4iYZ85hmFdLqcXhnpEfRFSi2ENXYa1PFKh
         IAzqpeyq4DThdXFhwnBYGsdCYq1aPizgYAUJSFm/9Tfjj2OWmkNab0E7eOV7jhRFQExc
         TdPfJ/wk8Q41InI2j3qXK24Hiztm1bzMnw76aTsZ2mFCkLSyd1pmYrt9QEGjN9ZPAVnK
         dxd2WR5fmnfxzoBrlZ7AAFlgWFSYt5p1+/RxuNxfTgnIv/R7JmTMHwwgUD+mYgvSC1SO
         Y3qRt/OtNV02hWsRu3aI7/p5nbdzXhth2BqQBpDthg9xNLAocW9OFHvOlx+eLYhvKOyD
         /BZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oiy1+k5QtyimfjzpnYHupwFINshBp1aaHtWuRXHZV/nF5w2Kt
	aVpVliqQ287y18kRIUdqHQ0=
X-Google-Smtp-Source: ABdhPJz2RUgpKaEWhTq7LkAJCww29NjbcTKMFzwp67MdZaPvzf8kelTa8pBlHf+vfl/d5Gyv7XT+RQ==
X-Received: by 2002:aa7:828f:0:b029:200:6e27:8c8f with SMTP id s15-20020aa7828f0000b02902006e278c8fmr7312708pfm.44.1625358192358;
        Sat, 03 Jul 2021 17:23:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2353:: with SMTP id ms19ls10356722pjb.1.canary-gmail;
 Sat, 03 Jul 2021 17:23:11 -0700 (PDT)
X-Received: by 2002:a17:902:e5cb:b029:128:9962:ef60 with SMTP id u11-20020a170902e5cbb02901289962ef60mr5883716plf.59.1625358191837;
        Sat, 03 Jul 2021 17:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625358191; cv=none;
        d=google.com; s=arc-20160816;
        b=fE5ZeOkTC3ENZ6IJYFofHw3SPPQc0eu2169bFrxzMo3gPZKrEliGKN/hzOeiNV2xZh
         /S7IUVcLQjgs9J5kn5oW2ckvxcUil1glgP3TNYVsrQzRRjZJA75ZOoNRRxQAWnc++Icn
         B3TtaAuVvv2TSsWOWU5PR2SJaohkDQ8zFInTTHOrIXg/s59YCwrZ/SF3bHo3O0v43+JG
         eXJb+Thhk2X6SIyBLLapd1veKTxZ8DHBLb3zMcUGT25UeH/cIUMje5D3qnkB3XniesO4
         +szSTnuqmpL3i/QkK9dEhRyzMxyxvlfmb8PylDiFgPh4eaUVKdsPSAGXdtrzCmJoslHL
         1Hzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tS2X05KP5X1yzefnQ3KeBXrd6szUZ+ZW9J0GkyQ0JfY=;
        b=mCBk6ky/CPiC74G7li20v2S6og7KT/NF59fK1N5McejzT7G83HaTg0D0T2x7VzG8ez
         Vc6U88KT9FTOwVCLTa9+01rsvaZBdE1BY3nqNLmb35ZVhxeazQvK43KV8PWE39YK0bAQ
         eUl8irmqHFboxNub2AfZdPVZdcmuYggJgP6qAg9JSQvmFfD0Lvv7VlIjmdunHf6AgEzQ
         V12HbhFBdkMmZ1I5ZzDVL4K0sD9zBYPj/dqpuy25juumf8pq1vVnsD9jfIHQmG9agRib
         dMQUeRl5KUnKiiQHyTH6UgocroffazlZzGLueFsbRuVFpA6qrv7OjibM8ixOQ721O9MV
         P5aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EcFEc1qi;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t1si967217pgj.4.2021.07.03.17.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 17:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9BA19613C7;
	Sun,  4 Jul 2021 00:23:10 +0000 (UTC)
Date: Sat, 3 Jul 2021 17:23:08 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: natechancellor@gmail.com, ndesaulniers@google.com, masahiroy@kernel.org,
	michal.lkml@markovi.net, nhuck@google.com,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] clang-tools: Print information when clang-tidy tool is
 missing
Message-ID: <YOD/bPIizKRSkB8w@Ryzen-9-3900X.localdomain>
References: <20210702235120.7023-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210702235120.7023-1-maciej.falkowski9@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EcFEc1qi;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jul 03, 2021 at 01:51:20AM +0200, Maciej Falkowski wrote:
> When clang-tidy tool is missing in the system, the FileNotFoundError
> exception is raised in the program reporting a stack trace to the user:
> 
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> multiprocessing.pool.RemoteTraceback:
> """
> Traceback (most recent call last):
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 125, in worker
>     result = (True, func(*args, **kwds))
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 48, in mapstar
>     return list(map(*args))
>   File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
>     p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
>   File "/usr/lib64/python3.8/subprocess.py", line 489, in run
>     with Popen(*popenargs, **kwargs) as process:
>   File "/usr/lib64/python3.8/subprocess.py", line 854, in __init__
>     self._execute_child(args, executable, preexec_fn, close_fds,
>   File "/usr/lib64/python3.8/subprocess.py", line 1702, in _execute_child
>     raise child_exception_type(errno_num, err_msg, err_filename)
> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> """
> 
> The patch adds more user-friendly information about missing tool by
> checking the presence of clang-tidy using `command -v` at the beginning
> of the script:
> 
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> Command 'clang-tidy' is missing in the system
> 
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1342

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  scripts/clang-tools/run-clang-tools.py | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..d34eaf5a0ee5 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -60,6 +60,11 @@ def run_analysis(entry):
>  
>  
>  def main():
> +    exitcode = subprocess.getstatusoutput('command -v clang-tidy')[0]
> +    if exitcode == 1:
> +        print("Command 'clang-tidy' is missing in the system", file=sys.stderr)
> +        sys.exit(127)
> +
>      args = parse_arguments()
>  
>      lock = multiprocessing.Lock()
> -- 
> 2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOD/bPIizKRSkB8w%40Ryzen-9-3900X.localdomain.
