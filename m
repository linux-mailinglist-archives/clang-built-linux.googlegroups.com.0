Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYWMQH5AKGQEY2WXMQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C57B24E420
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:27:16 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id c3sf1857871pgq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:27:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598056035; cv=pass;
        d=google.com; s=arc-20160816;
        b=QT8bFwkH55RO8SermUTuXlDZZTMK23J0pb+lpDnaaRgb3f6OEyTN1uQomwZ8xWr+gn
         pGosiOlSJSS+8sb6KofsD7+ki9To62NflXvXHD/TGFDfsip0y2264vuG9Q446OaVjPq6
         /wr/9JRle5UGUsx4Vk9R3E0O/uWQZxukZtb8/h3CsFPVqlwZ0Ed7qSUmncZLZv0BGY3I
         24AUYdQyft3MkLa6kw9dV9af4ltcSwnj9ntIWknKnyjx0Qw1x+DVgmqhhp+1Vhd/Rcqg
         l8wrt/jFb147UsDDzxsbB1FBeedvRtq7s1+Mf4x7mHj142XmDM5UoTKMT+FwKMgOAA5m
         xiVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=NvB1RGOChhXsKbtS1cGackw4yRyZI3IQ1GoElCBhSts=;
        b=t/1NfA0p1RXBn6joYQ7O5kJrgjthyLpIQ+QJPlCWafg4iCf+/QCr4DxAKtdMaK9/vZ
         lZZVobRDwJ4U8qOPvnZBSWB4iXFotn5QksklfV/E6S/ymm+TT/hY3CrcmaGZy9kn65Hq
         FX+fnkJYruDMbBtra4gvd3MJESF/sQKU8evo+xmzXZ1Xqm1zQNgvI33Y7qfHkD0oMde5
         yNvLUxUKWpdxEuFtNwednekl+ccAdXEXXOER0eGn41bUP2GBuDu+N/rcQjSVEk3ClJz9
         9pJnBVeV/ceMPCzFmf6XOd1bQg8eoQwgQ4SsoPObCMgrBUCHnGgJKV1jmfQX9gdMW6xQ
         4viw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IYiMJ+AF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvB1RGOChhXsKbtS1cGackw4yRyZI3IQ1GoElCBhSts=;
        b=jIo3UaGtDqSaO0mXKEVABsRg2FFh9z1C8FiEtQFZwMy+dJA+sLIjvZyrdTmoXnXgXA
         l+KYdMo8kJEbWfyTEIwX5YNj9v44S3mz6DzWEMNAQZB1tpvDsnHeB8CNB5DCsLChNO6p
         tDl0CbT9huNKd0uFWmZnHAqMF/BPsOU6/C2p+cLsECrsxbIJNQtLZ3KrKUcneHv0D8Ny
         1Ljrvy9nlm0I+Erd4OaDrwfmuIWl3XOQqIfQw7iAUMLRdZ0f2moROqSBeG7FRqlHN4oH
         HG1ON3YGTG+qfSvByESXkMrCoLAH18Qmua5luTQCCzWankMC87A+o2OB/WA/jOt0Ct9J
         nl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvB1RGOChhXsKbtS1cGackw4yRyZI3IQ1GoElCBhSts=;
        b=ftix/R6axfZ35DJa24Lxple3gHip6Vq4TDmCWuQy+AS9TXVbgAgvhegZzdIsR3Wzzi
         ugC9Doirnv63Oe5Z/1+BStBjdRFMAMh6DGz9m/tic+Ngl3s6+H8QoVJwnxTX7l8O7qIS
         rzwJMOLpPn9vJs6lWq22KR3lQxTMVWQHQ6yFfr9zeWG3YHSxElBk9bhojvyJ3SWQRtc3
         Hm9AVRjGVSBl3PilUhP3IOpF+C+9q61L8EPCdnaDzy35JzXdm31+1p1QlMI3pb1IW+nj
         Yda/W+zABsS8xDcYMvX1d/14A9DxgL/1WQw4iJC2RFFQKBiKhaBJMJJSonz868bnnFyt
         7Ymw==
X-Gm-Message-State: AOAM5329eWYZccdRyZxOIo8I2q7RacNqFCDUGgP6FnhwY77f4FB96Es8
	p80XlwCqieIYRu29chQkVVk=
X-Google-Smtp-Source: ABdhPJxs+jS4Y9jDBsxmAAzYN/zh2WPQ5A6MwglEBIGmnx+20hkjesMzGJ3ovlr214V1pc0d22Xxrg==
X-Received: by 2002:a17:902:900b:: with SMTP id a11mr4263179plp.199.1598056034880;
        Fri, 21 Aug 2020 17:27:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1757269ple.4.gmail; Fri, 21
 Aug 2020 17:27:14 -0700 (PDT)
X-Received: by 2002:a17:902:bd45:: with SMTP id b5mr4353914plx.22.1598056034450;
        Fri, 21 Aug 2020 17:27:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598056034; cv=none;
        d=google.com; s=arc-20160816;
        b=Kjx0yaTS3wiI+KPlEtr05Icmb3571IRlcv8QDeuS+JJCnt7uY4vgIqm7BpNts7YYbQ
         rRkbRa1h9yVmjTLLAso49fb79q6sjQeajiq63j2cLhyqlUsRd03NeJ28dZt2n0BtFnQC
         awmRnKL7OvT5lUYDYpavY01x/50YmY20QPotVA9bhQ2Og3Ip6Shirs+G4bP7ap2tY3x0
         TkyZ2e+FHQlv+PO5BypbzyYtvNq2lhW8O4x8U8zglHt6ItPoqi2Bl00Rs/JhYe4x+j+m
         +xj97ooUk7TvSYAwQrm3Od1EmDXLOQu1qFuhjVm8Bojla1kFdHWy5tYtD7nqYZgQpGH8
         F2qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xbPuPNjfIY+zfHmVne0cy0lMy+OdPzwGw1ja89KiJW8=;
        b=qS+MPtlrTSWltAzFYtwITFlo8Ri5/ue2xOI0Q8fZHzvAm0ygT74m4CJN7alVuVXMVG
         OypgmnnlsDvUR/UQXPehG3KmqjUJjM2aFfmAH6KTzgeTl4cNtYWXML9JeK6SH9sqfn6P
         vBxY+0D79fJBibT6vob8+WZxQhaAefoPlpdVAHUIuwn8T2yySQipYsf36V/bD4RanVs9
         dfvuxUTOAhlABxIbIKvsmIaLpMl+IMauR1Y5E76ooGSUpuJTUScbhZNfJUaDrmQ4ASTB
         u8O0PMO6S6CVIQuKumNOjGlblBlzii24TpeTtfqQunLWt6umDn0+6mlNwM8jBJtaCjcP
         APlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IYiMJ+AF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j4si250418pjd.0.2020.08.21.17.27.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:27:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id a79so1859786pfa.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:27:14 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr3941267pgf.10.1598056033866;
 Fri, 21 Aug 2020 17:27:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-4-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-4-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:27:02 -0700
Message-ID: <CAKwvOdn0VyObYvoBqoXPGT4o8LPSPsvc=pNpvVtu6jRxxhOKiA@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] gen_compile_commands: do not support .cmd files
 under tools/ directory
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IYiMJ+AF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The tools/ directory uses a different build system, and the format of
> .cmd files is different because the tools builds run in a different
> work directory.
>
> Supporting two formats compilicates the script.
>
> The only loss by this change is objtool.
>
> Also, rename the confusing variable 'relative_path' because it is
> not necessarily a relative path. When the output directory is not
> the direct child of the source tree (e.g. O=foo/bar), it is an
> absolute path. Rename it to 'file_path'.
>
> os.path.join(root_directory, file_path) works whether the file_path
> is relative or not. If file_path is already absolute, it returns it
> as-is.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - New patch
>
>  scripts/gen_compile_commands.py | 31 +++++++++++--------------------
>  1 file changed, 11 insertions(+), 20 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 535248cf2d7e..1b9899892d99 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -59,23 +59,21 @@ def parse_arguments():
>      return args.log_level, directory, output
>
>
> -def process_line(root_directory, file_directory, command_prefix, relative_path):
> +def process_line(root_directory, command_prefix, file_path):
>      """Extracts information from a .cmd line and creates an entry from it.
>
>      Args:
>          root_directory: The directory that was searched for .cmd files. Usually
>              used directly in the "directory" entry in compile_commands.json.
> -        file_directory: The path to the directory the .cmd file was found in.
>          command_prefix: The extracted command line, up to the last element.
> -        relative_path: The .c file from the end of the extracted command.
> -            Usually relative to root_directory, but sometimes relative to
> -            file_directory and sometimes neither.
> +        file_path: The .c file from the end of the extracted command.
> +            Usually relative to root_directory, but sometimes absolute.
>
>      Returns:
>          An entry to append to compile_commands.
>
>      Raises:
> -        ValueError: Could not find the extracted file based on relative_path and
> +        ValueError: Could not find the extracted file based on file_path and
>              root_directory or file_directory.
>      """
>      # The .cmd files are intended to be included directly by Make, so they
> @@ -84,20 +82,13 @@ def process_line(root_directory, file_directory, command_prefix, relative_path):
>      # by Make, so this code replaces the escaped version with '#'.
>      prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
>
> -    cur_dir = root_directory
> -    expected_path = os.path.join(cur_dir, relative_path)
> -    if not os.path.exists(expected_path):
> -        # Try using file_directory instead. Some of the tools have a different
> -        # style of .cmd file than the kernel.
> -        cur_dir = file_directory
> -        expected_path = os.path.join(cur_dir, relative_path)
> -        if not os.path.exists(expected_path):
> -            raise ValueError('File %s not in %s or %s' %
> -                             (relative_path, root_directory, file_directory))
> +    abs_path = os.path.abspath(os.path.join(root_directory, file_path))
> +    if not os.path.exists(abs_path):
> +        raise ValueError('File %s not found' % abs_path)
>      return {
> -        'directory': cur_dir,
> -        'file': relative_path,
> -        'command': prefix + relative_path,
> +        'directory': root_directory,
> +        'file': abs_path,
> +        'command': prefix + file_path,
>      }
>
>
> @@ -122,7 +113,7 @@ def main():
>                  result = line_matcher.match(f.readline())
>                  if result:
>                      try:
> -                        entry = process_line(directory, dirpath,
> +                        entry = process_line(directory,
>                                               result.group(1), result.group(2))
>                          compile_commands.append(entry)
>                      except ValueError as err:
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn0VyObYvoBqoXPGT4o8LPSPsvc%3DpNpvVtu6jRxxhOKiA%40mail.gmail.com.
