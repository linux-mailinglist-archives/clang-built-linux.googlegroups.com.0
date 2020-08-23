Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC7WQ35AKGQE2ZSRD2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F9E24EA92
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 02:40:45 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id p189sf2576531oib.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 17:40:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598143243; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+38EAI5fb59jMyNQFlnPocOVpYdVpcl0739xmx1nUvzE1+WXr+kPozX4Ll1r5lF5V
         DiaTxuGiwfXSCzvxIWOiVGN0HVXGjtgNNUSwO2H+AVViQt/bdsEyBT2paxsCnnXfIRg7
         S5U5DrC3OtuQDsswrDUMYsWNY2w5WXEjs8lSdLf206truZOJqtjh2qaeuCHH5ZnrrzYI
         vokzaFUyHJ7PajtvVhRt9b79eEOi5pCa6DAuEQyCK22qBOSg8xd4jL60vPqqMeNCQY8k
         HiaXKhPKNCwRDVU7nxgZyfXbEvvphTzM2IngrZPh+B0ylKkWm2/7XkP49dDpbIfKiMkZ
         y/Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TYTDQ0p4eAEe7pTmHje/ZBhgz5A8ZrqW/lliLRmGDVI=;
        b=HuUIysJpGBuXRzsFjcCBiiToxoKdFV5YkqIEiiQVTh85IMA0BcK6iDANqyZF06b68U
         6ckbd4VjpiRKViuQ5AfqoX15HTwDFnWl3+Z3NZ9Rc8HADLv3IJnGWw+9n0KdkzwZQsBm
         EfBhQa/HA5Er+GZ0N7F7FL5xdJLLcqoPLvvHd4p3axXD0gvcpdZPwPNEUnZoHLl5jcOc
         qwSDDlk3cw5RYuE/T2qxGp7/q+SiBhFxnFTldfVF1gW37LiBAojJ/cTx3Q3cSD7GUB7V
         d5Y4JFFx0qqXyvrVnfJZDuBbc28PlyhkuQIRn7qGH9r/riP94bLXJR/mujFR1Gtu3Mqk
         oeuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KFCVvOGj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYTDQ0p4eAEe7pTmHje/ZBhgz5A8ZrqW/lliLRmGDVI=;
        b=ToylxF4u+xpCGGInuE1je0QnM5EU8xp8bYo7+mn77YEXOGv4pc4URHFDn8pLUK3Rhn
         kvii1K6akrXYo2vsmVCg5GdMKk2/65Tb7L/49l0jclAJiMA1n7Wdyl2wMiUEmeNrkrX8
         Ldr3jXsYMrv+/ACER1WPW2HxLp9nyYXK9VGtyosGfUKR7RWpqXfGP9q02LgICd3cY28/
         O3P3diLcgB8DHeYGkxXpkB3k9L4TJwIlb6FEGRyoN1rZDLC1Sirit1+jRXVnAedxWqei
         mMvCx8OhpOUl4P1KKekUg1dc0HuuPwE5ZOEAg3/8yB0Vk6aGPNxtm6z/majX69lZLIhi
         ES6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TYTDQ0p4eAEe7pTmHje/ZBhgz5A8ZrqW/lliLRmGDVI=;
        b=b0dJ4RmoXjgyjkbRQjfqoncKWw3nyxi07DW/lVt8a7VwDsNayOVw/iCfzTigaeMyIw
         G8Ql5FM0dovRHrcye/AEPze7ALKiROigbY0W55pl88bQ1d+yrlcBuum4+EUaCg55SttY
         0LM4g2isr6i9vZeIisV9QzUnewsdBJjEii4bCdNegA5xWk9hfytzmubgRml/BL6xVeFn
         yUA709DzEASyJ6s1f6ookJoAqyy4hcWxnLO7C4sP2lKM91F8OdOOQ/K242FXfwz1KUJV
         CcsZB5wkSV6ovfRY7HlecyK+L/rPCO/0ch9ypYjpqmFLUcrsmtfMYn02CPjw9BU2w02O
         r5Rw==
X-Gm-Message-State: AOAM533L4j94xZGAUeG7Y0FRYZZJ23ldb29rlJr6RGVVMe+oVt69gSYr
	fJTpzIf7UyrW6fg3HqKfHJY=
X-Google-Smtp-Source: ABdhPJyu96myQRE1zd0+4nlm5Kk9UKSvXhToiK+SXmOdFF9AQxBSLuQe4fn0WP1RE6K1Lk7Fnfw6bw==
X-Received: by 2002:aca:1218:: with SMTP id 24mr166935ois.46.1598143243760;
        Sat, 22 Aug 2020 17:40:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c78d:: with SMTP id x135ls1254870oif.1.gmail; Sat, 22
 Aug 2020 17:40:43 -0700 (PDT)
X-Received: by 2002:a05:6808:998:: with SMTP id a24mr368520oic.92.1598143243376;
        Sat, 22 Aug 2020 17:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598143243; cv=none;
        d=google.com; s=arc-20160816;
        b=a7cPtHnvunpyjACa0pHPL6I899rA9eACHbhVMJQBwZ7NvVA0Ik1uRtRr2HDSW0bGzi
         8DmSARtccn2KAj2vxF2mMKdK99KcKrZdHmOCZ2HK5tfQt+R/qLQISDYU6gChUQIPY2tY
         PuG7IJmmGXtwH45r20auBDY9nOdSND1BgXKTPIj2c+hxYI/ccJbEvqnuvqSfvmK2jh5o
         UZo+n9riqAqP+FSN2Bp5lhmLgX1312ftp0JJArEVoVOUZ08S10M3LX4oJRg+7y4w7E15
         ONrGP/AOmsAbQm93Vi6/3b5vO6lP1SN6c8aZ5aga1pFlq4wNHlqcJpMBaLCj9Y55RVhW
         uY0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Eh5sQVyCmH30XYzTZRKBdCm/XGoXbbsyIhSzkPDA3nY=;
        b=X8N6TdJ3tLQQlw+NuGPO25WGXPTiluD1ih34ml2UM+2MJHBruqY0/8rlOF8F/KrlPj
         5X8IHSqXgIoUBIQXBlfbdgqLd9g0phHM//m2cYZI7qt/m7Rpev3MzPnGnqaw58bP5u8l
         hx5cZv35N3zf4oZmbX2Vs/HBmSmBOizFm5PwnWrV7DlOeicg0ChJF7ac8nBhV40o2u37
         fU060mII/eDnB4WBvgIujCPE0O14uy76RjxQlSrS79u4fLq3PEUZQKtVK9RM15bXwPfW
         dqVAIe8rSQcFMAS/6+lOZA/2iiyigBP2M733qMTBVxtk2NxKCSnmjjRpgpmTz11o90gM
         DlsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KFCVvOGj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id p10si462736ota.3.2020.08.22.17.40.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 17:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id k18so2943622pfp.7
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 17:40:43 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr6481177pgf.10.1598143242377;
 Sat, 22 Aug 2020 17:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200822145618.1222514-1-masahiroy@kernel.org> <20200822145618.1222514-8-masahiroy@kernel.org>
In-Reply-To: <20200822145618.1222514-8-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 22 Aug 2020 17:40:31 -0700
Message-ID: <CAKwvOdkbc-NH5-fx7DVOj8=fgo6AmM5ufOSvkVYp3XXVxVdoCQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] gen_compile_commands: support *.o, *.a,
 modules.order in positional argument
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KFCVvOGj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d
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

On Sat, Aug 22, 2020 at 7:56 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This script currently searches the specified directory for .cmd files.
> One drawback is it may contain stale .cmd files after you rebuild the
> kernel several times without 'make clean'.
>
> This commit supports *.o, *.a, and modules.order as positional
> parameters. If such files are given, they are parsed to collect
> associated .cmd files. I added a generator helper for each of them.
>
> This feature is useful to get the list of active .cmd files from the
> last build, and will be used by the next commit to wire up the
> compile_commands.json rule to the Makefile.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v3:
>   - Use 'llvm-ar' instead of 'ar' for the default of -a option
>   - Fix the corrupted comment block
>
> Changes in v2:
>   - Separate the file parser into generator functions
>   - Use 'obj' instead of 'object' because 'object' is a built-in function
>   - I think using 'file' is OK because it is not a built-in function in Python3
>     (https://docs.python.org/3/library/functions.html)
>     Anyway, the variable 'file' is no longer used in this version
>   - Keep the previous work-flow to allow to search the given directory
>
>  scripts/gen_compile_commands.py | 100 ++++++++++++++++++++++++++++++--
>  1 file changed, 96 insertions(+), 4 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index e45f17be8817..f370375b2f70 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -12,6 +12,7 @@ import json
>  import logging
>  import os
>  import re
> +import subprocess
>
>  _DEFAULT_OUTPUT = 'compile_commands.json'
>  _DEFAULT_LOG_LEVEL = 'WARNING'
> @@ -32,8 +33,9 @@ def parse_arguments():
>      Returns:
>          log_level: A logging level to filter log output.
>          directory: The work directory where the objects were built.
> +        ar: Command used for parsing .a archives.
>          output: Where to write the compile-commands JSON file.
> -        paths: The list of directories to handle to find .cmd files.
> +        paths: The list of files/directories to handle to find .cmd files.
>      """
>      usage = 'Creates a compile_commands.json database from kernel .cmd files'
>      parser = argparse.ArgumentParser(description=usage)
> @@ -53,12 +55,21 @@ def parse_arguments():
>      parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
>                          default=_DEFAULT_LOG_LEVEL, help=log_level_help)
>
> +    ar_help = 'command used for parsing .a archives'
> +    parser.add_argument('-a', '--ar', type=str, default='llvm-ar', help=ar_help)
> +
> +    paths_help = ('directories to search or files to parse '
> +                  '(files should be *.o, *.a, or modules.order). '
> +                  'If nothing is specified, the current directory is searched')
> +    parser.add_argument('paths', type=str, nargs='*', help=paths_help)
> +
>      args = parser.parse_args()
>
>      return (args.log_level,
>              os.path.abspath(args.directory),
>              args.output,
> -            [args.directory])
> +            args.ar,
> +            args.paths if len(args.paths) > 0 else [args.directory])
>
>
>  def cmdfiles_in_dir(directory):
> @@ -81,6 +92,73 @@ def cmdfiles_in_dir(directory):
>                  yield os.path.join(dirpath, filename)
>
>
> +def to_cmdfile(path):
> +    """Return the path of .cmd file used for the given build artifact
> +
> +    Args:
> +        Path: file path
> +
> +    Returns:
> +        The path to .cmd file
> +    """
> +    dir, base = os.path.split(path)
> +    return os.path.join(dir, '.' + base + '.cmd')
> +
> +
> +def cmdfiles_for_o(obj):
> +    """Generate the iterator of .cmd files associated with the object
> +
> +    Yield the .cmd file used to build the given object
> +
> +    Args:
> +        obj: The object path
> +
> +    Yields:
> +        The path to .cmd file
> +    """
> +    yield to_cmdfile(obj)
> +
> +
> +def cmdfiles_for_a(archive, ar):
> +    """Generate the iterator of .cmd files associated with the archive.
> +
> +    Parse the given archive, and yield every .cmd file used to build it.
> +
> +    Args:
> +        archive: The archive to parse
> +
> +    Yields:
> +        The path to every .cmd file found
> +    """
> +    for obj in subprocess.check_output([ar, '-t', archive]).decode().split():
> +        yield to_cmdfile(obj)
> +
> +
> +def cmdfiles_for_modorder(modorder):
> +    """Generate the iterator of .cmd files associated with the modules.order.
> +
> +    Parse the given modules.order, and yield every .cmd file used to build the
> +    contained modules.
> +
> +    Args:
> +        modorder: The modules.order file to parse
> +
> +    Yields:
> +        The path to every .cmd file found
> +    """
> +    with open(modorder) as f:
> +        for line in f:
> +            ko = line.rstrip()
> +            base, ext = os.path.splitext(ko)
> +            if ext != '.ko':
> +                sys.exit('{}: module path must end with .ko'.format(ko))
> +            mod = base + '.mod'
> +           # The first line of *.mod lists the objects that compose the module.
> +            with open(mod) as m:
> +                for obj in m.readline().split():
> +                    yield to_cmdfile(obj)
> +
> +
>  def process_line(root_directory, command_prefix, file_path):
>      """Extracts information from a .cmd line and creates an entry from it.
>
> @@ -117,7 +195,7 @@ def process_line(root_directory, command_prefix, file_path):
>
>  def main():
>      """Walks through the directory and finds and parses .cmd files."""
> -    log_level, directory, output, paths = parse_arguments()
> +    log_level, directory, output, ar, paths = parse_arguments()
>
>      level = getattr(logging, log_level)
>      logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
> @@ -127,7 +205,21 @@ def main():
>      compile_commands = []
>
>      for path in paths:
> -        cmdfiles = cmdfiles_in_dir(path)
> +        # If 'path' is a directory, handle all .cmd files under it.
> +        # Otherwise, handle .cmd files associated with the file.
> +        # Most of built-in objects are linked via archives (built-in.a or lib.a)
> +        # but some objects are linked to vmlinux directly.
> +        # Modules are listed in modules.order.
> +        if os.path.isdir(path):
> +            cmdfiles = cmdfiles_in_dir(path)
> +        elif path.endswith('.o'):
> +            cmdfiles = cmdfiles_for_o(path)
> +        elif path.endswith('.a'):
> +            cmdfiles = cmdfiles_for_a(path, ar)
> +        elif path.endswith('modules.order'):
> +            cmdfiles = cmdfiles_for_modorder(path)
> +        else:
> +            sys.exit('{}: unknown file type'.format(path))
>
>          for cmdfile in cmdfiles:
>              with open(cmdfile, 'rt') as f:
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbc-NH5-fx7DVOj8%3Dfgo6AmM5ufOSvkVYp3XXVxVdoCQ%40mail.gmail.com.
