Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJWBZ74QKGQEK62E4JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1423D24294D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 14:29:28 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id j37sf1423764pgi.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 05:29:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597235366; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6OCT5ugUfMKzBJ3/L2Lat9WKM7rCwoP/+mc+wmHfhsj+W0q7XIXqN48+FBxL0vCer
         Voos3yyXdttSMZMzFSc3zOKpldPnDA+8uKNKpQ73qCYhc1UlxJAQuANED9WBYkQN0wUc
         PYkviZNjrNhguuh/3YX144B4i6sDHOiwpmj7xuhMQvDvX5Z6lRPgOoDsMboSKbfsE64P
         kw84DqTbAewi5xMzkWCHGyF2yJx9qz+FIDnkB8aicfb5bma5PlhpLQhGO/B62RWrUCRI
         nW3LtroT8v+F9s+2NOe8MwAYyv+bWYFhZ2XmHrVvi9KwjNnrElDklyFOdm3LGT4xILxj
         npMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=H9xPN5xcmQmNyaiTh/qN8iSvNHXmjQZsVeHywlboXvA=;
        b=A6dNzlcIxdg9Y8wVBdls5sFc3hUxizxWDGH9IGB35xwlwuM99oJG4YZr4oSwJGcDZx
         Z/9NhCygXRY+Scv+sunEKLW/zm+W07BHKxgmS36Vh+W88CAW8kv9efbEjIFHMDBbTnRZ
         Rb5ak+F+FfHUwQZ6y8F/PoZwji+CeqMqyIaZg09JFYB2dLmoM81GBj45YFLcOWwK4Lm9
         WVKpYHoMjvvHsUlGpQGmeEyd/bMDxMXETnbE71JP1dh6dVGO9KJaQIiT/FUuwEqr/cnM
         t01GDTjZ0iPv+9rt7k0AwIv+iTGbRaYS7RIcdkGPztxFxDfkM1jwLtbNkMT+iKACAyjG
         WXiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MLfPisBd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H9xPN5xcmQmNyaiTh/qN8iSvNHXmjQZsVeHywlboXvA=;
        b=lwwNHbD2GtFY3R3n3On9JZemS/P9wi7Aub3JpmeZRGBr+HFspSssjPgc+R7oEou8NW
         eIvX2BfYXUebaQ0rLCyA4MJrLZ6mHFy0uTVkUWLcT3IHq8Zvz/iPaXGWCNJaOL+PGf4+
         fiXNl3ZMb9nrfssyaDJGbx/2gNPoIm+UEX38M/0kpNbytoEdrAkhdkeK8Hdw8YI3jJof
         i1ucUOM96wrzwB/1+pytlVKCf9hZNUfOem7QyKRKnJyFMwyErWOvUJedyjeTye8izUY3
         FcEIQTC419gItRbeeu7AKMNTFnCB2rQg7cKdRzLPB+hU40KvLx1UxZrda1KN9X32JAlP
         cZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H9xPN5xcmQmNyaiTh/qN8iSvNHXmjQZsVeHywlboXvA=;
        b=b1qqrk4GRXnvsyZIGdDzVDRqxT4vIliADU9FDD0/tvZin7rHejyjuI017vZet22jsy
         INtAVeMrUjWoNKYvtKYKIXnCfA/N9VyY8ZAODgMxzvFNt6hgKySsJf9CwHtvUhWUhEjV
         Yd+BnO0chXpoYctXSlYjztl6DjrfTElplmJnoNzecHi9drwxyFXc2n2SCMpVpmk7VOe8
         2nkg/LT6IHrMKeSS4QQs0LkfzvoH8T4vD5uwwxrJWy2/6o9zwgd0H6JFkPlDbFUnfQfj
         6mg7AXpwnVNSQhGWvQgZAXxUBbeWRzTVA3QNv9XPwkzq9600ImqcnaFtgtNDeYeobncx
         nv6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O5pQiwX35dvLbNhUZ9w6gBmxDcWo2tvcoeXgnqbc8c9Kt1Fs8
	rHobigY5iuxsDx3QVFYNwHA=
X-Google-Smtp-Source: ABdhPJxIStZm8eXMqL65dPoBYDAeVYZeHflx9RKAZjqjR2km92mMX2ag16kfZo4XHdJ0n8UUJ2Z65g==
X-Received: by 2002:a63:6e4f:: with SMTP id j76mr4716705pgc.449.1597235366768;
        Wed, 12 Aug 2020 05:29:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls807604pfs.9.gmail; Wed, 12 Aug
 2020 05:29:26 -0700 (PDT)
X-Received: by 2002:a62:6847:: with SMTP id d68mr11281031pfc.110.1597235366363;
        Wed, 12 Aug 2020 05:29:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597235366; cv=none;
        d=google.com; s=arc-20160816;
        b=OgZxkkuvPLZNQJvtaad38ltK7Hxv4Ep/c6ec3NqwIJvnQBZL6GS+/G3nEV1YgTUIfv
         hUPCJRVRcI88sTjKbEbazr7Ac+zOQRUmNT/a4/+m18QyVbQFxE0VsZHeIN5GIFdKsTTR
         /SRVD8aLFoEHDJ1VAnONYC+fVLrpk40QUOUrB35fur6CSni1P4eosh0R+lMpR0y7YkRg
         b0AWCzj/BFODTE2uPXfRuEC5yJM/Emh5zIcvGPugrmDCg8akWLO9eix7jha6wbo/dSwd
         dwQyKlqNHU2iYk7dEyCfWYo/ZEAczWuujf2q0oNLkLWxdEtE65KCX0gYSln6UN3uCdJx
         cyeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=B1MXvvnziEh1YoGGi3U1Pjhexr9zmM/bxzeh626e5aA=;
        b=m6ZtOvfDhyZXdcO/0movZvCvjiwrfFF7xEy3EEeK0SEkII7VHo6X5ZM5b2JfMt68Mw
         rbQwMrWJr5APvAvwpRXUVbcQixpnjFoxWAvbgmPDajEn11KBNooCCqe2oocFS3nzQoV/
         QJowPZATXRcnZACQ7qntCsqFPZ6G58ST+iHFjZ479EDEx3Hq81eAqDHpv19KmfaefDHY
         vvGpFaOT/DyO4qzYE4OvtEUhjYh7WbYFvlyso/5/7ICoyJPM8nsu8lqymGBfLmKZZG26
         Fozle1MZhyDJSyXMRdVPeQDhSrChNPFcGFdBz7op6kvJTPl/k7jlJdcAp6WtgmkG/nIT
         uf3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=MLfPisBd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id 76si169723pge.3.2020.08.12.05.29.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 05:29:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 07CCT97C003872
	for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 21:29:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 07CCT97C003872
X-Nifty-SrcIP: [209.85.221.181]
Received: by mail-vk1-f181.google.com with SMTP id x2so455390vkd.8
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 05:29:10 -0700 (PDT)
X-Received: by 2002:a1f:eac1:: with SMTP id i184mr28490318vkh.66.1597235349085;
 Wed, 12 Aug 2020 05:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200731212141.3709716-1-peskal@google.com>
In-Reply-To: <20200731212141.3709716-1-peskal@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 12 Aug 2020 21:28:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNARxnLGpiHO8ovfF_+pjFw+Uo=2c9wYiWMjZRh3B4_wMUg@mail.gmail.com>
Message-ID: <CAK7LNARxnLGpiHO8ovfF_+pjFw+Uo=2c9wYiWMjZRh3B4_wMUg@mail.gmail.com>
Subject: Re: [PATCH] gen_compile_commands: Add support for separate kbuild
 output directory
To: Peter Kalauskas <peskal@google.com>
Cc: Tom Roeder <tmroeder@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=MLfPisBd;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

(+cc clang-built-linux)


On Sat, Aug 1, 2020 at 6:21 AM Peter Kalauskas <peskal@google.com> wrote:
>
> Add support for builds that use an output directory different than the
> kernel source tree (e.g. make O=/tmp/kernel-obj). This also introduces
> support for .cmd files that use absolute paths.
>
> Previously, gen_compile_commands.py only supported builds where the
> kernel source tree and the output directory were the same:
>  $ make defconfig
>  $ make -j32
>  $ ./scripts/gen_compile_commands.py
>
> gen_compile_commands.py had flags to support out of tree use, but the
> generated compile_commands.json file still assumed that the source tree
> and kbuild output directory were the same.

Thanks Tom for CCing Kbuild ML.
Otherwise, I would not have noticed this patch.



I think the current code _mostly_ supports the out of tree use.
The key is to specify '-p <build-dir>'
when you use compile_commands.json from
clang-check, clang-tidy, etc.





> Now, the following cases are supported as well:
>
>  - Absolute output path:
>    $ mkdir /tmp/kernel-obj
>    $ make O=/tmp/kernel-obj defconfig
>    $ make O=/tmp/kernel-obj -j32
>    $ ./scripts/gen_compile_commands.py -k /tmp/kernel-obj
>
>  - Relative output path:
>    $ mkdir kernel-obj
>    $ make O=kernel-obj/ defconfig
>    $ make O=kernel-obj/ -j32
>    $ ./scripts/gen_compile_commands.py -k kernel-obj


In the current script, I would do like follows:

- Absolute output path:
$ export CC=clang
$ make O=/tmp/kernel-obj defconfig
$ make O=/tmp/kernel-obj -j32
$ ./scripts/gen_compile_commands.py -d /tmp/kernel-obj
$ clang-tidy  '--checks=linuxkernel*'  -p /tmp/kernel-obj kernel/fork.c


- Relative output path:
$ export CC=clang
$ make O=kernel-obj defconfig
$ make O=kernel-obj -j32
$ ./scripts/gen_compile_commands.py -d kernel-obj
$ clang-tidy  '--checks=linuxkernel*'  -p kernel-obj   kernel/fork.c



With your patch and the -k option use,
compile_commands.json is always created in the source tree
whether O= is given or not.
Then, you no longer need to pass '-p <build-path>'
from clang tools.

However, I like the workflow to create any build artifact
in the output tree for O= use-case, and keep the source tree
completely clean.
This is because the source tree might be read-only.
Perhaps, it is located under /usr/src/,
or the source code might be provided by DVD-ROM, etc.





In my understanding, the flaw of the -d option is,
it cannot handle objtool.

'--log_level DEBUG' emits error log for objtool.

masahiro@oscar:~/ref/linux$ ./scripts/gen_compile_commands.py  -d
/tmp/kernel-obj  --log_level  DEBUG
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.elf.o.cmd: File elf.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.builtin-orc.o.cmd: File builtin-orc.c
not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.builtin-check.o.cmd: File
builtin-check.c not in /tmp/kernel-obj or
/tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.orc_dump.o.cmd: File orc_dump.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.libstring.o.cmd: File ../lib/string.c
not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.libctype.o.cmd: File ../lib/ctype.c not
in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.parse-options.o.cmd: File
parse-options.c not in /tmp/kernel-obj or
/tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.objtool.o.cmd: File objtool.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.fixdep.o.cmd: File fixdep.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.pager.o.cmd: File pager.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.str_error_r.o.cmd: File
../lib/str_error_r.c not in /tmp/kernel-obj or
/tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.special.o.cmd: File special.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.orc_gen.o.cmd: File orc_gen.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.help.o.cmd: File help.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.librbtree.o.cmd: File ../lib/rbtree.c
not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.run-command.o.cmd: File run-command.c
not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.exec-cmd.o.cmd: File exec-cmd.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.weak.o.cmd: File weak.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.subcmd-config.o.cmd: File
subcmd-config.c not in /tmp/kernel-obj or
/tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.check.o.cmd: File check.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/.sigchain.o.cmd: File sigchain.c not in
/tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
INFO: Could not add line from
/tmp/kernel-obj/tools/objtool/arch/x86/.decode.o.cmd: File
arch/x86/decode.c not in /tmp/kernel-obj or
/tmp/kernel-obj/tools/objtool/arch/x86



Your patch solves it, but I wonder if it is worth lots of code addition.
objtool is the only unfortunate case because it did not join Kbuild.




> The new argument, -k, is introduced in a way that makes the script
> backward compatible with how -d was previously used.
>
> Signed-off-by: Peter Kalauskas <peskal@google.com>
> ---



> -def process_line(root_directory, file_directory, command_prefix, relative_path):
> +def process_line(src_dir, kbuild_out_dir, file_dir, cmd_prefix, file_path):
>      """Extracts information from a .cmd line and creates an entry from it.
>
>      Args:
> -        root_directory: The directory that was searched for .cmd files. Usually
> +        src_dir: The directory of the kernel source tree.
> +        kbuild_out_dir: The directory that was searched for .cmd files. Usually
>              used directly in the "directory" entry in compile_commands.json.
> -        file_directory: The path to the directory the .cmd file was found in.
> -        command_prefix: The extracted command line, up to the last element.
> -        relative_path: The .c file from the end of the extracted command.
> -            Usually relative to root_directory, but sometimes relative to
> -            file_directory and sometimes neither.
> +        file_dir: The path to the directory the .cmd file was found in.
> +        cmd_prefix: The extracted command line, up to the last element.
> +        file_path: The .c file from the end of the extracted command.
> +            Usually relative to kbuild_out_dir, but sometimes relative to
> +            src_dir and sometimes neither.
>
>      Returns:
>          An entry to append to compile_commands.
>
>      Raises:
> -        ValueError: Could not find the extracted file based on relative_path and
> -            root_directory or file_directory.
> +        ValueError: Could not find the extracted file.
>      """
>      # The .cmd files are intended to be included directly by Make, so they
>      # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
> -    # kernel version). The compile_commands.json file is not interepreted
> +    # kernel version). The compile_commands.json file is not interpreted
>      # by Make, so this code replaces the escaped version with '#'.
> -    prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
> -
> -    cur_dir = root_directory
> -    expected_path = os.path.join(cur_dir, relative_path)
> -    if not os.path.exists(expected_path):
> -        # Try using file_directory instead. Some of the tools have a different
> -        # style of .cmd file than the kernel.
> -        cur_dir = file_directory
> -        expected_path = os.path.join(cur_dir, relative_path)
> +    prefix = cmd_prefix.replace('\#', '#').replace('$(pound)', '#')
> +
> +    # Compile commands are usually run in the top level of the kbuild output
> +    # directory
> +    working_dir = kbuild_out_dir
> +
> +    if os.path.isabs(file_path):

I might be misreading the code, but
is this if-else switch needed?


os.path.join() returns the last parameter as-is
if it is already absolute, right?


This is my quick experiment:

masahiro@oscar:~$ python3
Python 3.8.2 (default, Jul 16 2020, 14:00:26)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import os
>>> os.path.join("/foo/bar/", "a/b/c")
'/foo/bar/a/b/c'
>>> os.path.join("/foo/bar/", "/a/b/c")
'/a/b/c'




So, the current code:

   expected_path = os.path.join(cur_dir, relative_path)

works whether 'relative_path' is relative or not.

I was also thinking this variable name was misleading
since 'relative_path' may be actually absolute.





--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARxnLGpiHO8ovfF_%2BpjFw%2BUo%3D2c9wYiWMjZRh3B4_wMUg%40mail.gmail.com.
