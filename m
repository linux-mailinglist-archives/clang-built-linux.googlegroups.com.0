Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAW4QH5AKGQE3LRP3RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1400124E451
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:59:48 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id g1sf2078056plo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:59:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598057986; cv=pass;
        d=google.com; s=arc-20160816;
        b=C+BeiQ4aV7xUzLMq+5YVVcyC1ffAUnd+AMeopMDfnFQ48lOlJfW2fXJ+nM5ZpzGN5X
         6oTi8Ysc0HrgHBGpzzaQR1+qcjKioMG7jbNYI4eMXbOCvPlSyFy+sRnU+mCyZN74qiUJ
         p9gzRPx0lnUV/s/M8Td3fzlE6D5Uzj0pWTHq6v8rsa3t5zqmCgRZnhJXa6oOD6c0ei5n
         2eHrTAGhTZgN8chz+sUUrf5lV35cAqv/hToefVbRnASRsnsQMSS9jIXYuIIxUe1WRPJK
         YP/knTIX9iyUeuXnpEtottIokei9IsSXW1RpYHoH02Tvx8zhcJVI6WmUHYbhWTE+n07t
         oa5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6PUdgb+OSF5n6hdUn3TmApr6R78KSGuIKgQvKSyrWCg=;
        b=ve3MOPyqPJK8eWk4edKNEQdHCaBZhl6FNeW6AMFIADsLDlo9xa9isXd9cIOVdfH+vd
         5oSYWlecy8iU5WWPWpMVHUuNNxJ2Zo50iDSfW5REgsmh0kbEnSlX8Wu3FZVt2NBUoz1K
         ykNqTFeP45/0YlctKu6y5Crx3Ve2S4qaafwJQFS7/G7SA0inhOkPUVrD6w3CsbW6vHLa
         SnucFdJnNZwv58ozy/exuKBcsILP71+e+iiHdUR88O6us5Nwkwagbssp12D3ErLR1HC7
         AdH6TIHV16gJR1rlOxm6hgQYcz7wz0d+wtv2bw3NLvUqdwIVsaW/7KfL7QgzMltseKV5
         i64Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O0MPFknx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PUdgb+OSF5n6hdUn3TmApr6R78KSGuIKgQvKSyrWCg=;
        b=hB8jk7eXMfTanVaqQUzZFzTPvmd//1fQotaTbWHJjVawbovJD9JK4tgWfb7lnnQVKL
         EF+mJOnS/KVqcmNSScqKs1bUQhtcQvjExDHlhWWTEOFA6xMvLfV3JFlzhPWM1fecWkzg
         qcq1185qSmdzpoj2vrjr3b41NhgXe4LC7j05Vf6sNOqFa54oPrKALVrnClA5xfoZFOrG
         Vqglinxlr0JfJpNb3Ts+eKHicfoE9KTQO6mUoPW4wlNCwuCTIoRY4IGdFdeV4du+Ah8C
         bNgGSuII1lPUAUCQLc8mw5KZ5NXhfLTH/xifZdENogkTp67Lq/WKVTtLWqBNqIkeWVnB
         btIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PUdgb+OSF5n6hdUn3TmApr6R78KSGuIKgQvKSyrWCg=;
        b=t97XjIsc1xmstj2yB20U/P8Dzh911W/DB7OroOgmIxQJuqA3kEnrvUTOROwbR7IOy6
         Ll0aTw02ITPiZJQPPpJG9+9WUztgU5hGB/szLIkT54Q/RhabR2oa1fvMThX9eH0XDb+X
         3VS/3JpKVZCSE8qxcROiaWm3PO+YdSZchfVT0ad7ZzZu99TGkXS3Ow1u4cvqMlOAJko5
         YYmNQn99MYJJpHksplI3Kiz/mG4r3w63AlADOLay9EA3kPVfHHdu1YrRwojL3xhXh8H8
         9UePkGhqQuTGLQQAOR1fhVImlOQtm3EG+BIjw7sSTa3WaVa4n3NhzTbCmiGF/X5Uhp4T
         yQDw==
X-Gm-Message-State: AOAM5332JUwd3dyD7sIv2jWLxolsTHYf9cBu0u7MRBHtKsFSpIm7ZPBa
	XyGaS+iDIV4FVO7uYY7q8EI=
X-Google-Smtp-Source: ABdhPJy1PyTy5J8Linerz6+8Z0GR+/p8yyB8nPbdOgqrOH2Nkg7Fojw6IX5EosneatxFi0TdweIumQ==
X-Received: by 2002:aa7:838d:: with SMTP id u13mr4522107pfm.158.1598057986647;
        Fri, 21 Aug 2020 17:59:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls1144747pgl.11.gmail; Fri, 21
 Aug 2020 17:59:46 -0700 (PDT)
X-Received: by 2002:a63:5810:: with SMTP id m16mr4064463pgb.193.1598057986181;
        Fri, 21 Aug 2020 17:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598057986; cv=none;
        d=google.com; s=arc-20160816;
        b=Dqfl4LJ9enYXTRRoLKSXykSDzXWb0ERXRG1qntB/RZjDIlgLGGBvlF2j4+Ptsf8v5N
         eHdwr9Q/oNIMy4SSgjkx6EDHCAQ3WZ+ln+VDyJ6CByZukHpSYHcZHYJ9k+wIVVE0w1ZQ
         OjszI2rKbi3+0Ym9Y8zI+mgr0qmb2jtEkYq27IPg4fgt8E7ZCnca0cWLjKjC3lB+Hu8S
         zG+2L4Z9ymEqRNzbKeWanUeIMHjq4WlRmiJJzelB7BNA3oeohXetanvnovbN9sXB/xiT
         PmnTrPicHwbTnv2b2MzGgI1xBgekUXlAtd6A2cKiXHrrr8D/31xAlGwVUYItwsmBFTVM
         kzfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wMClZMLlnIVxwC0OX/YJqw846WceChHdY8h9nnyWNwk=;
        b=yrowPDg0SuFxAjjiwf1cGLnmYD0a+tICayAmTujq7mRM8XWZU8m64n2fGfArm8ij14
         +Jb/fjyd0ieIPKwSti/6h5smd5tbEFYV7yEJvaejThqNGBqnmGriK2eIN2eJwMsunhvJ
         C4zN7Zmd3JmKIRjM9879Xz0wZPz4fRVMdD42aj0MOH+3N3488PwItqVXbxRLn9cONvMd
         0k4TrkWG1H8H4OwEiOnPkx9pH4UYNPAOWdPx7yd2abstlHkhtzMc29+b6hhnYMO+JgXw
         YKjZH/JtIQcxer7yvXxVEItjQRW40EnJblFiL1OsyBrLe1AaGlWWdIz5Ub8oc8Xee/jb
         5VXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O0MPFknx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id s14si191403pgj.1.2020.08.21.17.59.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:59:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id p37so1787204pgl.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:59:46 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr4183460pgh.263.1598057985426;
 Fri, 21 Aug 2020 17:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-8-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-8-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:59:33 -0700
Message-ID: <CAKwvOdmR=VeR0=LUgXCwnpK9LH90_itzv627wBEK4hCroBEW9Q@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] gen_compile_commands: support *.o, *.a,
 modules.order in positional argument
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O0MPFknx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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
> ---
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
> index 6dec7e2c4098..65859e6044b5 100755
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
>          directory: The work directory where the objects were built
> +        ar: Command used for parsing .a archives
>          output: Where to write the compile-commands JSON file.
> -        paths: The list of directories to handle to find .cmd files
> +        paths: The list of files/directories to handle to find .cmd files
>      """
>      usage = 'Creates a compile_commands.json database from kernel .cmd files'
>      parser = argparse.ArgumentParser(description=usage)
> @@ -53,12 +55,21 @@ def parse_arguments():
>      parser.add_argument('--log_level', choices=_VALID_LOG_LEVELS,
>                          default=_DEFAULT_LOG_LEVEL, help=log_level_help)
>
> +    ar_help = 'command used for parsing .a archives'
> +    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)

If there's a default, doesn't that mean it's no longer required? I
think it should be required.  For a clang specific tool, we'd prefer
the default to be llvm-ar anyways.

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

below in main() you check the file extension with endswith().  Would
it be good to be consistent between the two?

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
> @@ -116,7 +194,7 @@ def process_line(root_directory, command_prefix, file_path):
>
>  def main():
>      """Walks through the directory and finds and parses .cmd files."""
> -    log_level, directory, output, paths = parse_arguments()
> +    log_level, directory, output, ar, paths = parse_arguments()
>
>      level = getattr(logging, log_level)
>      logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
> @@ -126,7 +204,21 @@ def main():
>      compile_commands = []
>
>      for path in paths:
> -        cmdfiles = cmdfiles_in_dir(path)
> +        # If 'path' is a directory, handle all .cmd files under it.
> +        # Otherwise, handle .cmd files associated with the file.
> +        # Most of built-in objects are linked via archives (built-in.a or lib.a)
> +        # but some are linked to vmlinux directly.
> +        # Modules are lis

^ was this comment cut off?


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmR%3DVeR0%3DLUgXCwnpK9LH90_itzv627wBEK4hCroBEW9Q%40mail.gmail.com.
