Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7OTOCQMGQEVDIJQ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DAE38BA98
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 01:56:52 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id k124-20020a1ca1820000b0290175dd5429afsf2995454wme.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 16:56:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621555012; cv=pass;
        d=google.com; s=arc-20160816;
        b=KrLqsNmTmZHS9PN3ApeQuQcu60VhUB6QhS6MdxjiPO/8XONWeS/7NVxMn8ZUQjq6Nb
         2M6e4xHbFaMzb6u3QgiVopzeGDaCC45kpHb3tj/ScYVH2POXU6Y1FMc6mqEeTZVQ5U4S
         qs5fVCGo4z/Jg77Wbvxjw6k3EVL47MIphj6kUfjoBfvwIhqCPuhCyC0spyQVyN1WAX+k
         qgUgRVFI0HesjpjRDhHKkz3W3slt07mDLLt++tVE/H1e0wDmLi8wi4vcvXQdBoI+zUmN
         s9c2KcnmbxrxTp+xZyz1MuxdwIQgN1RKQOqQsccFCUmGcZn7nQJCrnswSJo75MsPEWhv
         tVaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Lmiena+1l8or6isycEXM3mKSyV6RqPxT9tL7dNNsG1U=;
        b=krPUXMQvscxNoqFy0IyEVzwgAx0iTXJUbK1FxdD53jrrz3ku1iBmvCUz/ZLNvSjrj8
         yfC+m8CEPwGlEzbqWEp37TQjAWUHptJoj+ZP9aktTnAM5/ilg6zYtR990GdymQg/fARw
         zh6tSi+ObM4W/2aI9aUT8AFPB0jbcKIv1m3x93YteniRA9NJgslbDe5b4LwCyPs6lsmU
         Mk+F9Pw1HCt0rCIYDDtPcX/kZ/cgCBbz7lpHdI3CzYzIXbjt53AmN547nPUsXZMm0t5I
         rqZxVsWeIU8WKhS4V5hLYUkz/D3mnM07tmYYasWtF4DPB+ZiOrj8z43NQEa+UKjBFMM5
         Q7vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E7vGMVD+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lmiena+1l8or6isycEXM3mKSyV6RqPxT9tL7dNNsG1U=;
        b=H54Pj5GL9ixRxTWlIw1E3UzATtRLsP6wQ+4ul765mcWcxF5hiHW0a49FoxRaNU/2dO
         izbbDuFoTTgjDJNLtRjQ+KaUlwSVP79Agd6aD5sTUrHJtjd0gnNy8Kfpmj7FuCmxx55e
         G0jwdwBECyTpV9TRS1uewXecRw8i3oi+S5g63sr7tFDx1EF12CcGFb8lChNyaaqRJnuv
         eMZCpZsQTVceJypqUg/1t5MvCDdSJTo2ShrzQC8G2Wl4m5bii6/SBWkqbpfUm4pGkuvL
         /HdhCR3zqQGqtvpcdHM8gJCQJI8BNtYeeCaSatA2HaEbYFbRtaT/7PQWjTrb+Gb3iS3U
         CD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lmiena+1l8or6isycEXM3mKSyV6RqPxT9tL7dNNsG1U=;
        b=n8IVaYl8at1FJDEzwraoHgYSBBmxeUts7KXGDdolVUkvFvdpY7EG8Wy8ps2laXoTMe
         A5V7Bgo2hzkcF6bECTZeRpJSK6vSvaDrj1usKEhUyn90mUe0f139C4oa9sxyFUAZryZO
         meolfB9OGz+TUONVAWwY3JWqFTaI7DNAQntVGJN3YgFvkhsA+qIEmbCwzaA0qM3cmOm5
         mjIvmezjsvj5WXqh2QpAeb2w5CcSPxTjsR9P7dBMjOrMDnE19F2C99NTLWNWt1tInNMj
         OS3YOaL0a28bLSXx+4st3ZiYWXjlfSgnbi+nIdT0HBRJZGnG7okC8Ny+0ua6Hm+vlBN5
         Yvcg==
X-Gm-Message-State: AOAM531kI8SRPdU3abjdPDBr/+oqz9kAWiWkc+0mRWcxeBA1gozLkklx
	tkWDMS2bK+R/zjZQWOIRK/c=
X-Google-Smtp-Source: ABdhPJw0m5PHIHP913SK5NLic5F9Bui7TllTfWY7VkGHOBYl4h2VAKJ8txlKcI2a1SRdq800P7dnIw==
X-Received: by 2002:a1c:398a:: with SMTP id g132mr2233353wma.108.1621555012003;
        Thu, 20 May 2021 16:56:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f42:: with SMTP id m2ls2096321wmq.0.gmail; Thu, 20
 May 2021 16:56:51 -0700 (PDT)
X-Received: by 2002:a05:600c:2f17:: with SMTP id r23mr5724560wmn.94.1621555011057;
        Thu, 20 May 2021 16:56:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621555011; cv=none;
        d=google.com; s=arc-20160816;
        b=fPas0uV+z6YFzEVZtoxJvL6bnI9ElETWuFw4QoqkCLtMi0J4QWEuNNrYKzUCM/XKIa
         N2WJeO9W5pw0plHNAUu5qEtJCkCFcL3H5pFgCrBNPtLmZqwAA9MrrybCjs/YBEkSDoXi
         UNRIRdyAby41XTjGlwPDZu7ya92Ws1wS3vnSh1jY95ZCm9dsKMmsq7dDt2RUd2X8TJa2
         33R3MsB3xPlsxQYFWNd0yqswJashSBcPeG7DQ4FU8J03ur5Xzjhd7AKJpSkJ/clvGwj4
         538BpOLXA2uXQvamHlJ+0v6j26uNOCg1HKjojLw30hT8WPY/ZcDdJGzowCjvMZ0hrrZO
         AKLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lWlNFmJ79w+TkVknTxM+4nCh7KlLiCGXQa0Fg/YBlH0=;
        b=tustXTpUXcQHbAG5d+IPFADen7Xc1BpK0LrigBWudZecP9p0xqPR8sr1sRZcGELu1K
         JQOc4kS3hRTmB5YhioWJX5PK5NgWm9nnqgoQmGbVHGuyyd66MPIdlmj6LMiF7Q10uH3e
         Y0RIkNnuZHiWB23OSXkAOFo/hzJI1VPlGG/rYruCiUCc8NTh3FoRv2eombzl+tZLVT8W
         SThc/XlsxfzQcFnIvf0P/YMbPtc1esXkJB1bGOMcXS4kuWAkqwwFKBi+VN7UgjemNqgG
         BpuXUwgMeyrHN6BMRUUkrQm5TQopBsl13pZGCJKqW3+4hCEDkPgoVwkJc4nGaV3Hzn4T
         KAFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E7vGMVD+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id j13si3539wro.5.2021.05.20.16.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 May 2021 16:56:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id s25so21857835ljo.11
        for <clang-built-linux@googlegroups.com>; Thu, 20 May 2021 16:56:51 -0700 (PDT)
X-Received: by 2002:a2e:805a:: with SMTP id p26mr4445306ljg.495.1621555010593;
 Thu, 20 May 2021 16:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
In-Reply-To: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 May 2021 16:56:39 -0700
Message-ID: <CAKwvOdnONTfTQiv-oDK9y6bQetZdaMOYZ16MVNO4npbhEsUcsQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile: clang-tools: Print information when
 clang-tidy tool is missing
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Borislav Petkov <bp@suse.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E7vGMVD+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, May 20, 2021 at 4:18 PM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
> When `clang-tidy` tool is missing in the system, the FileNotFoundError
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
> The above exception was the direct cause of the following exception:
>
> Traceback (most recent call last):
>   File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
>     main()
>   File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
>     pool.map(run_analysis, datastore)
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in map
>     return self._map_async(func, iterable, mapstar, chunksize).get()
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 771, in get
>     raise self._value
> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
>
> The patch adds more user-friendly information on the missing tool by
> catching FileNotFoundError for `clang-tidy` file and raising exception
> again for possible other files:
>
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> Command `clang-tidy` is missing in the system.

This is much nicer when I run:
$ make LLVM=1 LLVM_IAS=1 -j72 clang-analyzer
without clang-tidy built or installed locally, thank you for the patch.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Please make sure to include the results from running
./scripts/get_maintainer.pl on your patch files for the CC list.

>
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1342
> ---
>  scripts/clang-tools/run-clang-tools.py | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..38fc311d2e03 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -67,7 +67,13 @@ def main():
>      # Read JSON data into the datastore variable
>      with open(args.path, "r") as f:
>          datastore = json.load(f)
> -        pool.map(run_analysis, datastore)
> +        try:
> +            pool.map(run_analysis, datastore)
> +        except FileNotFoundError as not_found:
> +            if not_found.filename == 'clang-tidy':
> +                print('Command `clang-tidy` is missing in the system.')
> +            else:
> +                raise not_found
>
>
>  if __name__ == "__main__":
> --
> 2.26.3
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnONTfTQiv-oDK9y6bQetZdaMOYZ16MVNO4npbhEsUcsQ%40mail.gmail.com.
