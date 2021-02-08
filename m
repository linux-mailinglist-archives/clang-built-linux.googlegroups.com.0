Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA5OQ2AQMGQE4LYD6HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E14E313FA5
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 20:54:44 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id bc13sf2557671qvb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 11:54:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612814083; cv=pass;
        d=google.com; s=arc-20160816;
        b=1B/WdCvCUls21aCGNrChPT/Y7nNbR79aaqKVb/lJUg/qndLNhedFv9dDrpv0XiRx2d
         pQxGP0X50inNXNhEK33t5QnJRzxX4SeAnIbTjAhezm3kMW+AiW/Ciqt7fDN9O7Q+NU+t
         nqzcxhSwPj5Bcdwzyyjh61QFzd+9VgIQefn9Gp6P/D5J6ctEapPEGZLnWC3VapIW4cb5
         MOiWFJ5+K7dXQEa9aaUB83J77kR6p8hqFrgl3Sfc8FHL4zSUVbhOURkJUC9K+oMsqBao
         3veIvYOP9V4JJZfmXKU4+NSQX7tRuamNq5Rdgb2PzHyrhYoivO3KEv46tOSFM3FF6R57
         Q4pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Hm4UWKrAej1dg/LY4EoJYR7iQkafJj89MTVpkbLHf2Y=;
        b=Sdw8t7XLj8xtjVGRKw1wabRe1NK59d+G6xV7OkTk3zblnzE4KoWns6PjGGSKHQTWUz
         6OUefKoH6zr3TTjSdfqSNlsToc+WtJTY28jSc+pgjNuzX7f74M2jQwN52oUQ0aQJ6qMO
         BmvNgwLnnUaBnPE9NgEWrD8IqtuG7hoAIETb529lxmI6IKeHttEvZsfFEkvKutkxJKij
         vG/3w+A2X/+9T4OJZfmXw0s6FD2HkrIjnUfekCyZp5Z4zwYA5uc86UJlsZdE3hsZB9u1
         u2bbA3+nYTWcJu+6uD7/H/D8g+0BD8NRAHztRwFG2a8Ptqwudmi9wBTHF2P2A3edFWK6
         ZGcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DkeFlPY0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hm4UWKrAej1dg/LY4EoJYR7iQkafJj89MTVpkbLHf2Y=;
        b=N78QuHCmDeCu8Tzd73Uyew9J2Dfjv3tiM2TOFsxuPqLaUEyQ3syuufG1aVoaieNxbK
         Pc+fy9Aj194RrPT+p80JzXacMHKOjHxNSHL9fUZxPG58EefqRq0HHGKgUDujgfi+gXyk
         NJuMpGhYpcd3BML/uQILKMTSHjG3qxe9mYT+05jg3lsXODG23tUm80/DkIi2cUfKrZN2
         jctmvViSMYf6h3EV6uB/MBBP63gvNi2Q/S3CHDVzqKCcayhHpszFYAp50IZ2YR/igNb0
         fMzH9UImGlf8eVsbMb57ppLDr7ghdjrnUQ3dHfNMI3LZlShRZ/mfdnmtKuyh9nQdY1hK
         BazQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hm4UWKrAej1dg/LY4EoJYR7iQkafJj89MTVpkbLHf2Y=;
        b=iLL4qzVTnTLjF5sxROlmrDHFEk0v0jXeOgAJTMkFHNB+uQHLHjhiNPAx2E0j431rG8
         eMMYjrKVVced2OmvpIBFm/wAtMf/DR0sdqks0cY8/aQQNPH/SvmuYQzVm1lDNXZFc6gd
         97KMmM7gfHKJ7E3qKqxuSXhVTb6ruTqGhP9wDH3bIOiZYnUUQzoNoyYH9UQ9XjojrZSV
         izMWtgWfEFfkArE206oG1eVlEDZH5gzmERGT/ijyC1SIdcg09N67qw/evLTNln5y6tFz
         lHvx5k1Q+Tupv1pwvo9YGG5YjKCUWUifJoyANMVtpHG7JPZZSbZNY2FJV+EsE0tdM8f+
         r3aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CZOD4jwUzKJigVWE8YKMTircL/jSBS007aqgKWKExg/Kzshrn
	7CMu2F8NheR6/xjQg2CFAsc=
X-Google-Smtp-Source: ABdhPJxrHdkLAWdz59+z2IMdAVOLGANGdCpHVR102RMyWysKetvas635Z3AzUaSx25CW+C8esg3T4g==
X-Received: by 2002:ac8:5e89:: with SMTP id r9mr7020990qtx.338.1612814083179;
        Mon, 08 Feb 2021 11:54:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2f42:: with SMTP id v63ls9653413qkh.5.gmail; Mon, 08 Feb
 2021 11:54:42 -0800 (PST)
X-Received: by 2002:a37:4bc1:: with SMTP id y184mr18722833qka.278.1612814082832;
        Mon, 08 Feb 2021 11:54:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612814082; cv=none;
        d=google.com; s=arc-20160816;
        b=TOqnazzIBexgkd19w4bKsYFwrA93WSVMqsALy0q8wBSFPkHROfiLdzg9ASaIhaWe5g
         qMYMghiRxOkzKsV+ieR8Fj8Xjb857F3wginwBIlC2OtRRcKD+tgkqI6oToQMnAQfezdH
         8KEeHI8XzS0+1CZHFJI3jMLbgKb2D3sajJSeQYkaH3hn0f1zcoeQ87fi+AWp2hjnmuYO
         clETeK0rt/vkGFJ3FxVVvkX/xNNGWlpOiIrPasgMyYfwQYFPkdYl4JGEvTObW/sgUfYQ
         tFpHoMON2h3TrOlxUefbfhazfwSTWOyS6mgjvb9MeWUAyjY3/Wzkv3i+vsmIrDJVbWKd
         gE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NNwkAnF1+eFaJ4BNaJzfRPTV2sIUQt4QErJu0sMOdhY=;
        b=cFoEg17d25If5kBm4S2VkkaNlr8N2B3HETmx12JG1M5Dinq70c9vFdMewRpNmULFYy
         sB+hi5RTwMDETuoFO+5cEgtMZa/Gbug9scxeMql5AH+TzOn12Bl/dO+LKN8WaY4k23o4
         02aH2WWVpUfrDgCPiOhNVTiwT8EuQ17m0d+0yF9NyGc54JVrkCVqJQgle78IALzsvsCM
         A/A7Px5/nmrhF9cMPbRNaoIYTY9rnaQjlo43vE1yx2+epvXhVKgWaA6pItOFeWt0elBa
         2Q5sskCczB+N1lEV5QJU6WXzf0QX3rNZF7Eo2PvBpKZjnOlWo/2GOmD5Ul+sKIY6Spr7
         MQYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DkeFlPY0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si764168qko.5.2021.02.08.11.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 11:54:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5077E64E60;
	Mon,  8 Feb 2021 19:54:41 +0000 (UTC)
Date: Mon, 8 Feb 2021 12:54:39 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Stephen Zhang <stephenzhangzsd@gmail.com>
Cc: ndesaulniers@google.com, natechancellor@gmail.com,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
Message-ID: <20210208195439.GA1097868@ubuntu-m3-large-x86>
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DkeFlPY0;       spf=pass
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

On Mon, Feb 08, 2021 at 07:28:57PM +0800, Stephen Zhang wrote:
> The default source directory is set equal to build directory which
> specified by "-d".But it is designed to be set to the current working
> directoy by default, as the help messge says.It makes a differece when
> source directory and build directory are in separted directorys.
> 
> Signed-off-by: Stephen Zhang <stephenzhangzsd@gmail.com>

I don't think this patch makes much sense unless I am misunderstanding
the description of the problem. The entire point of this script is to
parse the .cmd files that kbuild generates and those are only present
in the build directory, not the source directory, so we should never be
looking in there, unless args.directory is its default value, which is
the way the script is currently written. Your patch would appear to
either make use do way more searching than necessary (if the build
folder is within the source folder) or miss it altogether (if the build
folder is outside the source folder).

I think the help message probably needs to be updated to be a little
clearer:

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
index 19963708bcf8..cf36d73dd3bf 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -55,7 +55,7 @@ def parse_arguments():
 
     paths_help = ('directories to search or files to parse '
                   '(files should be *.o, *.a, or modules.order). '
-                  'If nothing is specified, the current directory is searched')
+                  'If nothing is specified, the output directory is searched')
     parser.add_argument('paths', type=str, nargs='*', help=paths_help)
 
     args = parser.parse_args()

Let me know if this makes sense or if I am completely off base :)

Cheers,
Nathan

> ---
>  scripts/clang-tools/gen_compile_commands.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 1996370..add9e47 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -64,7 +64,7 @@ def parse_arguments():
>              os.path.abspath(args.directory),
>              args.output,
>              args.ar,
> -            args.paths if len(args.paths) > 0 else [args.directory])
> +            args.paths if len(args.paths) > 0 else [os.getcwd()])
>  
>  
>  def cmdfiles_in_dir(directory):
> -- 
> 1.8.3.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210208195439.GA1097868%40ubuntu-m3-large-x86.
