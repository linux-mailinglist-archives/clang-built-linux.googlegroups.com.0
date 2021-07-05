Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCPCRSDQMGQEQH6NENI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF243BC18F
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 18:19:22 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id e9-20020a05620a12c9b02903b429a77b4csf13823771qkl.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 09:19:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625501962; cv=pass;
        d=google.com; s=arc-20160816;
        b=bNZRU8ACqBD5zHZlKJRmNPuYuIodwI22gciRu/dFOqIJk0QvHxVfe+DIY8gOMvgXub
         nU9DH0G6esAgQGk0FF00V6CmQ+fcBUBRN8yXi1+XS7uJgzsc4P499w5aKTp/GxSmwCEA
         u2Cp1vSGxPKFiCfP45VzR7m02aO1Glso0iQ4n+Fl4sgCm7l4nDXgIpW1oWu6JomYlwQy
         q+9ee3E1ltTEJA2JtpbDOsg2j7RYfNA3xc2bhDZrxAcsNsKd7bdcfpc+Mcf8Fq1DSjif
         pcrdv5yHAfxzP3jgH0vZeMfnrHu97ThgZgI1J5LmxHNZh3sGxzIYvHW8FT6Qg1X9HHpp
         86jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ORqmXFKMk+6LXeFgP8pd/xvQjlAvQeOZqq2GfXGYC6I=;
        b=TqUpC67kOKrRS1h0WnQ5d1lGa0wOnRdTgNt5NhjZ8wlNNG1jMq6uswpy3AgMoFS2cl
         rMN025cEGunNH0Dq+BS9PkEXm8ZpVTirJDLtMmrf+0l8Do9Q0WZMXty/3He13oLbWQzZ
         L9mnrXqd06GIlqHb6reosxPTOkFVxST1TdEwfxI3Nz5khKOzPO48TyYWu//Zsx5TKFWM
         rD/Qwr6p4x9SQHBPseZAxaJAbUxTEVgA0zv6wqebb2M2Ww9aejtVaZuHeAjglCHTkRuM
         2/nU56k7dQTDgaYfFHJRrN3odgJkgZYrBWAZ5juGYRYsQgrBfd9nEUGs7ehUsh92Med2
         oY3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Df392UW3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ORqmXFKMk+6LXeFgP8pd/xvQjlAvQeOZqq2GfXGYC6I=;
        b=hN9/ZL4dgwgo+qInaJnrifoHUPOsUSenRqQx6p2ghbdPMDt/oBC2QpJt2vgbjxrnzR
         /asfsd1yc2CdUoJLNul09DAZcsHBieFf1f9fECOQ0MGBJv6teILKIfDnQunqSb3s/GbR
         M8LKeURj5xbT9MJ+p0muJGXOmFmTLnK4vAl97BHJHo+Ze1CmwfGbTCQD1uOAfrd92vq4
         56nTBNZR7kTbfiOrsTtCOGS4Ym36Ci0gaKL5u6eIDdVHehIEIUFzC1QkSD7Q/1d2GUdf
         tXx+ZcqOVM9vFNWNKi0PAWLbjU5nyz+u0YrOeRaZnH5z589FgRrHF1jGxvP4NYLePOvf
         HZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ORqmXFKMk+6LXeFgP8pd/xvQjlAvQeOZqq2GfXGYC6I=;
        b=lY7sGuBriXvRA+dcCcMJYBwRSm/oSIz/z+Rh0UMRg8T+Y1z1qQfpfIZ2buZnLWlMda
         TuUeCwnckoLj3FevWspSyppE0+G09peweeg1JZa7nPs62LH7oOlP/ffyF7ckBcTzBB2p
         R/rlx2i0frL3uE0qn1lhwwf+tqZpV2enYHef/PmUDgKP/eqEmsyo43QO4k+r5uiNzRF3
         N8DWFqbMw2tu/LFCw0L35EC27UD3OkDiridePC7DH9SZSbsKlVO2Ll/mOVY9pMRIQOl9
         JDtbx6k53A04HNPtwKmWKtxfb/nL7SuCx5CRM7J2v1id7mIzAAS2RqpP91KALySG+Cpp
         WllA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EZTT6Tkx+Gi5wBokwTL9hXiIbd9xLiAeCatZ7etY02fSkee/N
	WhTwJfdSdjYeggyJYk7hpQ0=
X-Google-Smtp-Source: ABdhPJzbsUtVpw+VwWxW0t8Ks2IAtp0xQWJVcZqlB/GVd1hVIMZ5/uXJ1iVlhs8BVOtGmw/9zjCokg==
X-Received: by 2002:a05:620a:15a6:: with SMTP id f6mr15436983qkk.472.1625501961840;
        Mon, 05 Jul 2021 09:19:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1648:: with SMTP id c8ls11302066qko.1.gmail; Mon,
 05 Jul 2021 09:19:21 -0700 (PDT)
X-Received: by 2002:a37:7844:: with SMTP id t65mr14843423qkc.429.1625501961418;
        Mon, 05 Jul 2021 09:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625501961; cv=none;
        d=google.com; s=arc-20160816;
        b=SnE3nz+mgSyVX/4ZcGWQLFtf7y8FIWtCbZWY4JYpsI032Wdmn5XzrY2H7wfKwkg4cF
         LK2Jkp+fQcFQ+C2xyI811/F1dCXCMS8rK6pGNAXsQ5Ahx94e4zIv03uiGNfI5/Yn1kDW
         Bw56cOdFcOHt2wcke5rHCz8BXP5PEDZZyjjFRWlkfnfLpdNUuyMS2Pk6imP4RQckr8kd
         ur0o2XsOCbjsm+Jhp9hwCZHheGN0Ls+Yyb7FU5LQhVpI0JjS37pMSU1XgUGRZuvJwEqF
         BiZ952ynTrkcauHR+SvaOAP3nhHd4+imSj1ugSh3fcaVACQ8SgSHGmtq/qju/Yl41fnI
         r1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=TviIxBe6uXwBdYLpXXiJTmijOR9PL90jTmqGpS0b2vc=;
        b=aIpBVS2TH01uUUpdMnRSa0TGG/fpJuCmyD22YI5IHJk887aodZILagwQ91SQ0oaZg9
         TNuhZBoKbAhcSprZR/4mYCui4ocaK01KLRx9sQ90d+Eni1aFH+AKrPckuI0xSSSaa8dz
         LRkRtwkSoYsecs9ppuW/IocHmq4VcnJnYIMyA7uRJ8skkSs9T3aUt03epZH2ps9otrQA
         2JCfOh5xKBqHjDL7FOLW/QdX8ofAYX9f3SevZTV/hfkDgyPXKOLngwDbDAQHxj5Fey9/
         90luvrD4a3sspZ0DURIiQ9660RZOh+3eKWToIaDPaVVp0NNH18gtxildoYUVCxCSK5w5
         R5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Df392UW3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id p18si150042qtk.1.2021.07.05.09.19.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 09:19:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 165GJ1kY016056
	for <clang-built-linux@googlegroups.com>; Tue, 6 Jul 2021 01:19:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 165GJ1kY016056
X-Nifty-SrcIP: [209.85.215.175]
Received: by mail-pg1-f175.google.com with SMTP id 62so10633740pgf.1
        for <clang-built-linux@googlegroups.com>; Mon, 05 Jul 2021 09:19:02 -0700 (PDT)
X-Received: by 2002:a63:d80a:: with SMTP id b10mr16483848pgh.47.1625501941399;
 Mon, 05 Jul 2021 09:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210702235120.7023-1-maciej.falkowski9@gmail.com>
In-Reply-To: <20210702235120.7023-1-maciej.falkowski9@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 6 Jul 2021 01:18:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS=tyS22vk1mO7uCuzZ=YuzgByzC4Aix9JwugdV3xpr-Q@mail.gmail.com>
Message-ID: <CAK7LNAS=tyS22vk1mO7uCuzZ=YuzgByzC4Aix9JwugdV3xpr-Q@mail.gmail.com>
Subject: Re: [PATCH] clang-tools: Print information when clang-tidy tool is missing
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Huckleberry <nhuck@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Df392UW3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jul 3, 2021 at 8:51 AM Maciej Falkowski
<maciej.falkowski9@gmail.com> wrote:
>
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



I like the first answer in this link:
https://stackoverflow.com/questions/82831/how-do-i-check-whether-a-file-exists-without-exceptions

"If the reason you're checking is so you can do something like
if file_exists: open_it(), it's safer to use a try around the attempt
to open it. Checking and then opening risks the file being deleted
or moved or something between when you check and when you try to open it."



Generally, I believe that Python's taste is:

   try:
        f = open("my-file")
   except:
        [ error handling ]


rather than:

    if not os.path.exists("my-file"):
           [ error handling ]
    f = open("my-file")



With the same logic applied,
if you like to display your custom error message here,
more Python-ish code might be:


    try:
         [ run clang-tidy ]
    except FileNotFoundError:
         print("Command 'clang-tidy' is missing in the system", file=sys.stderr)
         sys.exit(127)
    except:
         [ handle other errors ]



I often see, "I observed Python's backtrace, so let's suppress it"
for clang-tools scripts.

For example,
https://lore.kernel.org/lkml/20210520231821.12272-2-maciej.falkowski9@gmail.com/


If you believe "our custom error messages are better than
the default ones from Python", do you want to insert
ones to every code that can fail?

I do not think so.








> +
>      args = parse_arguments()
>
>      lock = multiprocessing.Lock()
> --
> 2.26.3
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702235120.7023-1-maciej.falkowski9%40gmail.com.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAS%3DtyS22vk1mO7uCuzZ%3DYuzgByzC4Aix9JwugdV3xpr-Q%40mail.gmail.com.
