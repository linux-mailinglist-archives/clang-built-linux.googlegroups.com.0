Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD6OSWAQMGQEE5VKEYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6A43190D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 18:19:12 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id r18sf4663492qta.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 09:19:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613063951; cv=pass;
        d=google.com; s=arc-20160816;
        b=p3nDzES5lW7s1AjYueNHy4bDtSADGcI3YlrxDevRWOE8pCpXtk3OnIOFNDAxTnWVp3
         KloQfTYHKhSlZN/s/xOjQGQWs81PUNQcr30Yt/t48CZC6H3e/zy0SsSHmrFMeThmtpqX
         nRyU2FgG6kCI13/W+GHwU/jtmiI/vGkrAjZfiwi9pTPI3PY4iDzRcUJEKdc5Pa2JJfze
         dc7c6az32F4ozMZa0Wzfo/wE1wGHVAK4v8kY0T8TpANgmijqiSyc7+VHl/zZrXcgQ/Ki
         jodKHajd/60puxytF01sd9ivZWi/YL6LdtwOPftovgARrxnSAZ6M0daRCIPtYJi8CztX
         PqYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WyKwGReEWd1MlsnKZipVO0ra07f1UH6BD9+n2B1+tmA=;
        b=JxO54u1OALWJM4HCq8wguRN3pZ1ooSF1NlADA5urg6Paf15/lkBkSTqT3d7OqybYb2
         bCWQLWEVszYq8sgj13273Ryxo1S3knnzXgioTrNhdJR2hHONYsO9Uin3UDa50WrPSqpp
         ilY6YUe86z8Zz1/DpaX9/dImpW1j2eTI6RhEtfxcNbjlcsUV9ijcV3I2IwpKe4WXH02O
         S8qvbMfsJPii2rtySquiONSCud2M4qg8Je5+rC/hfnjdkLKjyDpd4aKJ5BWdjl/vZIme
         xBEV9lUeTdYWXAFI6G3xwA2sBORg8SErR/gAlY2VIC7aoUgwMPteZDXag3RB5K9Joq+F
         BsQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="tDhjI/B1";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WyKwGReEWd1MlsnKZipVO0ra07f1UH6BD9+n2B1+tmA=;
        b=HpzFkDOXGf7OiIQVacuinuZDhQaJpgK+UM3nbFQHAJdCUwiiiEqV0v/CJexSz/dUmU
         WIT2CtZBXXzqzZ0JByZzOnUbZ1vKQ4Mm2y3OA5l2LQ6NgbIIgEEgDIlHSo81kKZwhB9Q
         XjcG0Stb45y9OqZfurY3cntQnbYskHTJBOM4eNyYsiorOKGYBf/4FUll7i1lVKbhJVtb
         /PnOjO1rr+2ajH5nmtMlL0SxkDU1YgIJM/vJ1I71VFmINNtqPzcwxPVPoFWfBGvJBR4R
         ANTQnKr/b3BDLSwDmWhwT0Rrd6l5d/ldMeo4eRaQYXgHXtEEkzst8WoS0wd+YWzui7Er
         RDqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WyKwGReEWd1MlsnKZipVO0ra07f1UH6BD9+n2B1+tmA=;
        b=pwCifO6a8+k62KGzJnjbZ9MgBPM7SWubf6Hvi2I9/MznG3GiIAwFaBuhj1ybdmqS3g
         dfr0FAcx4WJK2ixLeJMlC+CaIMQpPciNUkX941GkW9KuvrYG3Atl+b61sJbD90ES8BqL
         UlCXE5JdQONrfaMxjq8epYjLUInS1KJSk4j2sB3l3TXskTxWoTSZVtnutJU+ijKZXUVX
         CwclTAU4bx+B6yPaKEfdXFN6wn6olHolpCzc2AQVvoIuByqfqwSwLZ0TiIY7lj5Uc11p
         esAqwHvjZGEEPR2tEvcI5BKwlErsM+zx+k28r1X7U7Bwn79A4l3zF7fJPRwEC7vxdSa/
         o27g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bq9xjcHJb5I1sMIYwhuusJuWUZcRWf0IGJftva8YAiCVAjQjj
	qFh9iaEtQj87S0blKLJg3qo=
X-Google-Smtp-Source: ABdhPJzScgv+fsBJOTjMXLhPZbbwakKdpVidvAi21T5yITQn3YCxxNUPvBFkgROB8PJIJqqaWwHGmQ==
X-Received: by 2002:ac8:738f:: with SMTP id t15mr8230702qtp.106.1613063951716;
        Thu, 11 Feb 2021 09:19:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d01:: with SMTP id g1ls3168576qke.6.gmail; Thu, 11 Feb
 2021 09:19:11 -0800 (PST)
X-Received: by 2002:ae9:e311:: with SMTP id v17mr9071609qkf.155.1613063951312;
        Thu, 11 Feb 2021 09:19:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613063951; cv=none;
        d=google.com; s=arc-20160816;
        b=M2J51hbv1Hexz7emGupbsq0WR2A/VYUkcJ7PeAvSLyQmgF0qI1lXcvJtYJHwTeR1DS
         78FX0TNVJd7eRSHekYNsCjQx+sAv11/3/Qj77c44MXwPquybD0xJ/C803Vi50hykJ10W
         sWDruZKCQce9vQRv1g9TF04q/6B/sInodp6SYjgeseoLZeY943VoWNwACsZ8s9hEjkcr
         hADmqli2N3cG0jwsQSssyeWkkSA7d7P1ouubI73TYIuWamHLCAIva9zg9UWDVJTDQRa8
         bBg26sDp3iTEY66FKJEQGYQtkZw/ncHIQ9wHGru8jDewMznocubYGhIOHiMLr4EiiRd0
         npfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xv9WecnkLu/YCpzeCWad8bXn3kamzypQo6L31rIgLoY=;
        b=RPDuOFdwtH87ORzhgIpw3FRQ8KuMzt8fC6P5pVVwA3wTZR0nYB65vg0MJvu6b9SvN3
         b+fQE4Uq6meLAvy5iLecJauU0DynqyGvU/gCZRutGNFYTb67D0nZYICcZMKYaBS+zGZG
         /JN2rn16PZvtOhgRcGzDolS96SVoWe+25Xkqylu2PfJPpphIxn/H3AVQlf5XhVHSHaGl
         j7yIFssOPsYHOGfvzG61TSF+rXy67VdEaeORZwglbv6jhzcX4WVQIW202q2SeBfQ5J4r
         9jejlhqxtg03snk73TpmYd46OgoYz2EjPIvexbH8pW1k1XX82PsWq9Z38+RkpBljXhr+
         zhFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="tDhjI/B1";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m10si278845qkn.7.2021.02.11.09.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 09:19:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 09A2A64E7D;
	Thu, 11 Feb 2021 17:19:09 +0000 (UTC)
Date: Thu, 11 Feb 2021 10:19:08 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] gen_compile_commands: prune some directories
Message-ID: <20210211171908.GA3820685@ubuntu-m3-large-x86>
References: <20210211161154.3892836-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210211161154.3892836-1-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="tDhjI/B1";       spf=pass
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

On Fri, Feb 12, 2021 at 01:11:54AM +0900, Masahiro Yamada wrote:
> If directories are passed to gen_compile_commands.py, os.walk() traverses
> all the subdirectories to search for .cmd files, but we know some of them
> are not worth traversing.
> 
> Use the 'topdown' parameter of os.walk to prune them.
> 
> Documentation about the 'topdown' option of os.walk:
>   When topdown is True, the caller can modify the dirnames list
>   in-place (perhaps using del or slice assignment), and walk() will
>   only recurse into the subdirectories whose names remain in dirnames;
>   this can be used to prune the search, impose a specific order of
>   visiting, or even to inform walk() about directories the caller
>   creates or renames before it resumes walk() again. Modifying
>   dirnames when topdown is False has no effect on the behavior of
>   the walk, because in bottom-up mode the directories in dirnames
>   are generated before dirpath itself is generated.
> 
> This commit prunes four directories, .git, Documentation, include, and
> tools.
> 
> The first three do not contain any C files. My main motivation is the
> last one, tools/ directory.
> 
> Commit 6ca4c6d25949 ("gen_compile_commands: do not support .cmd files
> under tools/ directory") stopped supporting the tools/ directory.
> The current code no longer picks up .cmd files from the tools/
> directory.
> 
> If you run:
> 
>   ./scripts/clang-tools/gen_compile_commands.py --log_level=INFO
> 
> then, you will see several "File ... not found" log messages.
> 
> This is expected, and I do not want to support the tools/ directory.
> However, without an explicit comment "do not support tools/", somebody
> might try to get it back. Clarify this.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Sorry, I did not realize that gen_compile_commands.py did not intend to
support. I was only looking at the history for the current location, not
the former one of scripts/gen_compile_commands.py.

Acked-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>  scripts/clang-tools/gen_compile_commands.py | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 19963708bcf8..eb5faefbdf74 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -20,7 +20,9 @@ _DEFAULT_LOG_LEVEL = 'WARNING'
>  _FILENAME_PATTERN = r'^\..*\.cmd$'
>  _LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
>  _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
> -
> +# The tools/ directory adopts a different build system, and produces .cmd
> +# files in a different format. Do not support it.
> +_EXCLUDE_DIRS = ['.git', 'Documentation', 'include', 'tools']
>  
>  def parse_arguments():
>      """Sets up and parses command-line arguments.
> @@ -80,8 +82,14 @@ def cmdfiles_in_dir(directory):
>      """
>  
>      filename_matcher = re.compile(_FILENAME_PATTERN)
> +    exclude_dirs = [ os.path.join(directory, d) for d in _EXCLUDE_DIRS ]
> +
> +    for dirpath, dirnames, filenames in os.walk(directory, topdown=True):
> +        # Prune unwanted directories.
> +        if dirpath in exclude_dirs:
> +            dirnames[:] = []
> +            continue
>  
> -    for dirpath, _, filenames in os.walk(directory):
>          for filename in filenames:
>              if filename_matcher.match(filename):
>                  yield os.path.join(dirpath, filename)
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210211171908.GA3820685%40ubuntu-m3-large-x86.
