Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGW32H4QKGQE5OHX65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5378F2430C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 00:30:52 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id gl22sf2789547pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 15:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597271451; cv=pass;
        d=google.com; s=arc-20160816;
        b=isMttnSTDaJaBmH6J7ABuuSrnnOuozVq/Bt3rIJPhA56gEoytpTNpgVOiUT7iZxCrV
         Vxf5eH3RcjLdbWOqU/LI7YlVqBJa9EaI1Fm3d3t+bfdagJRYpyBMK3W0hYUVoETd6rWj
         rVCUTRCQv7RL4J/BptYZTeIQUUA7jH9Q6OJ93ixmL1csnTm1nw0a7dIk1cwDPCSpDJaL
         dz4ECQIm61L5BITNrxD6D0nm9PzHvdCr3YcDChkUhvJob3yiFFKfOb2r7xcQKat3yLEx
         wkvTMIidabzwbSVH03gz+L+f9cBzSiUt+LAa+mtdVy//6rOJMGa4ZADoOORbeBuZ1ETb
         OMmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2sr2MP73Mb5eG9mkj3NW0qgfodTJr5zS4p01lEyjzIE=;
        b=pAZ0yuLUhrLsJOANYhGu0psTwnHgClGmQtxd8SzzgoyWJ1eNZWtr65fCAd/5uWJEpv
         y1l4Gnorx3tWT6qOcmd3w937WiPma/3fRrADMnQfwzxM1OtJLCWu5KvgeSE2+Iv+kjjB
         x4HHMG+NUkq67z6QPN0SY9wwexawLIC3d55mRg1/uv3cSH5tbYl4NTOUsNXlEmcpVC/d
         mOtOGsPVHvky3/agUXmpdwVfI00ip5uw1/8RzoGdetS4h5lF8lDTsH3e0kfTQ/6ELZeh
         PwQwj9IknTwcUWbAUlXVgU1rGtsm3RIsI/+dwF719EgSLXRpA54jEMJfi+f6d8Sq7Oq3
         08hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H10wSzNz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sr2MP73Mb5eG9mkj3NW0qgfodTJr5zS4p01lEyjzIE=;
        b=eRBdlRu9bkvGM+BDrWdGasoFZnrIkduy2WYh3k6zFp0BXS+0gb1wo2BaNwR8v/vV/f
         HmYmOsGhPXJBRC3YQ0eeOMZ9kmQ/50dzBykFxQC5A/VfFZHdTwZfha2J1s5qArhfIvco
         fMAg/12uVtzZbTXDoeUl2+GM/m+fA/Ej6NvBqNKm+lfcn9Qp8q4o18jp84xo9PK2PaH3
         IT9K/6RmxaynL6IuP1141AjMzOWKdUgHkNJvlpgMtlFXBg8h5ByFNmDMD9nUnTuKr/W2
         QLJaUBPkj0I3woIvRJzyz8SViYsgv2SYvz6X5xJr3budnDJpaXMRUIMyuB7I9YBorPu8
         qlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2sr2MP73Mb5eG9mkj3NW0qgfodTJr5zS4p01lEyjzIE=;
        b=qEQdXe7mBgV6ETma7tbMwrToSHsLxmiBFiWTAJ6YtELtFi+KhKBWrx7t+UsCacJx3U
         fTtoUPini4jbBj5726WP0gPt7MgeJxir+2++8eTEd7nE9vHt2kOVlxfuQeiNIXKquHGR
         HnYABLJ5J3EYtZ1xzpsYZ0yKRXWs5ElGOH706EPNpKQeS7dTWuogBMNmtzi6BZx0TO74
         DLyYHsFOzBV+vjc1fWslNu+PbUHgUiLSGOOuHQECE+LwYQSyMIk2J7qhpHawt8g/WcSo
         IH2HxeGmVCPFo2UW/sLeOL/Z5965VsqnQvUwaZ5jczPSPXaD0a/IIHIZ1h8R1NleUTVw
         bQug==
X-Gm-Message-State: AOAM532j7TqVyrzbPW75y0WOJw2x7Ya+xKNwR7ql6yJLsvnAYEBZwbtU
	CuzH1QM+whJN+LmsWOtJI0k=
X-Google-Smtp-Source: ABdhPJxFeMJ6TaJ6jsh5mRUmbVp/EoPzC3DSDy1sqRVsyxK2qVfsKzilPJH2DsxhxBwgBCIJ0yqPuQ==
X-Received: by 2002:a62:26c2:: with SMTP id m185mr1575215pfm.115.1597271450949;
        Wed, 12 Aug 2020 15:30:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1988:: with SMTP id mv8ls1453220pjb.0.gmail; Wed, 12
 Aug 2020 15:30:50 -0700 (PDT)
X-Received: by 2002:a17:902:c111:: with SMTP id 17mr1448195pli.46.1597271450518;
        Wed, 12 Aug 2020 15:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597271450; cv=none;
        d=google.com; s=arc-20160816;
        b=ctz1eg+D8vkoJnqLNI4Wo7acGRZAKlr0XUXIhA4Fa6bosWrJn5W7t2AzB0IiZDZMfo
         P0C5HSvkcC9UAanc+OIkCEpqs6ftYrtEVEnZmE9MJd8T+IOjtMyTkaesaNMPg8RwDFLz
         O5VrAZVAhVmdwBi0WW/G//ZlNBzhhlVp0nb+CbFqvTN2C2+zJExa+3yl1aCQFxVVhj/J
         6f9Pscs7/csBRGo6pqR12/VM9GHX5qb6YpvXo9WX72UMeKFJygCkhz5onEbP/azGHorp
         e3gABSaRKIXb/W/r3BvS9EYYGTYTKt1i90vIgORcnawTdjRcHRl6Kg8Suajs6yGG3hMm
         rXqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hxEYg9DVUBSgHUs53+hvB6vMVJVug19fYQRmxPk9RXQ=;
        b=p+HGMPO8MQxm/wx+85/wNM0ZzJy9wooBgMGBq2uFjsHLbxpUYi1XV3F8v3/bOpsTGI
         dUo7Vlnf+VRrP7JcHeY1M/E5SdF2yphuJClfsXmywoSX9H/qoq1U0XgJjvgQIVTyQ8cp
         vjap/kIk7PmHQp77164465/Mz6iGt0S797Zl5M8PT49v+CMFVyFpWUXRE0kP5ZejBiry
         SLUYeD61MH1uEicgt2PW6lvPDCORkPHLjUnz1leEjj2XfMIhAM1waSaShmczCnTTmm9/
         ctOmETZGi8btq9s2Boaw6aWJMFVFxkW9ZUWZs33IvTUtTn92XbW/bzo2hR9/O2m1YTWB
         Leew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H10wSzNz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t13si209365plr.0.2020.08.12.15.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 15:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id mw10so1831680pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 15:30:50 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr2020479pjc.25.1597271449631;
 Wed, 12 Aug 2020 15:30:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org> <20200812173958.2307251-3-masahiroy@kernel.org>
In-Reply-To: <20200812173958.2307251-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 15:30:37 -0700
Message-ID: <CAKwvOdkL=667+cw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg@mail.gmail.com>
Subject: Re: [PATCH 2/3] gen_compile_commands: wire up build rule to Makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H10wSzNz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, Aug 12, 2020 at 10:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Currently, you need to explicitly run scripts/gen_compile_commands.py
> to create compile_commands.json. It traverses the object tree
> (you need to pass the -d option to deal with a separate output tree),
> and parses all the .*.cmd file found.
>
> If you rebuild the kernel over again without 'make clean', stale
> .*.cmd files from older builds will create invalid entries in
> compile_commands.json.

Definitely a problem; happy to see compile_commands.json added to
`make clean` target, too.

>
> This commit wires up the compile_commands.json rule to the top
> Makefile, and makes it parse .*.cmd files only from the current build
> to avoid stale entries.
>
> It is possible to extract only relevant .*.cmd files by checking
> $(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order.
> The objects or archives linked to vmlinux are listed in
> $(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
> listed in modules.order.
>
> You can create compile_commands.json from Make:
>
>   $ make -j$(nproc) CC=clang compile_commands.json
>
> Of course, you can build vmlinux, modules, and compile_commands.json
> all together in a single command:
>
>   $ make -j$(nproc) CC=clang all compile_commands.json
>
> It works also for M= builds. In this case, compile_commands.json
> is created in the top directory of the external module.
>
> I hope this will be overall improvements, but it has a drawback;
> the coverage of the compile_commands.json is reduced because only
> the objects linked to vmlinux or modules are handled. For example,
> the following C files are not included in compile_commands.json:
>
>  - Decompressor source files (arch/*/boot/compressed/)
>  - VDSO source files
>  - C files used to generate intermediates (e.g. kernel/bounds.c)
>  - standalone host programs

Oof, for an x86_64 defconfig, the difference in line count of
compile_commands.json
before: 12826
after: 12351

That's a loss of 475 (3.7% of 12826) coverage. Is there something more
we can do to preserve this functionality, while avoiding stale .cmd
files?

Is it that those aren't specified by `$(KBUILD_VMLINUX_OBJS)
$(KBUILD_VMLINUX_LIBS)` ?

>
> Here is a note for out-of-tree builds. 'make compile_commands.json'
> works with O= option, but please notice compile_commands.json is
> created in the object tree instead of the source tree.
>
> Some people may want to have compile_commands.json in the source tree
> because Clang Tools searches for it through all parent paths of the
> first input source file.
>
> However, you cannot do it for O= builds. Kbuild should never generate
> any build artifact in the source tree when O= is given because the
> source tree might be read-only. Any write attempt to the source tree
> is monitored and the violation may be reported. See the commit log of
> 8ef14c2c41d9.
>
> So, the only possible way it to create compile_commands.json in the
> object tree, then specify '-p <build-path>' when you use clang-check,
> clang-tidy, etc.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  Makefile                        |  29 ++++++-
>  scripts/gen_compile_commands.py | 146 +++++++++++++-------------------
>  2 files changed, 82 insertions(+), 93 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 6844b848bfec..4d65affb6917 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -634,7 +634,7 @@ endif
>  # in addition to whatever we do anyway.
>  # Just "make" or "make all" shall build modules as well
>
> -ifneq ($(filter all modules nsdeps,$(MAKECMDGOALS)),)
> +ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
>    KBUILD_MODULES := 1
>  endif
>
> @@ -1459,7 +1459,8 @@ endif # CONFIG_MODULES
>
>  # Directories & files removed with 'make clean'
>  CLEAN_FILES += include/ksym vmlinux.symvers \
> -              modules.builtin modules.builtin.modinfo modules.nsdeps
> +              modules.builtin modules.builtin.modinfo modules.nsdeps \
> +              compile_commands.json
>
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_FILES += include/config include/generated          \
> @@ -1693,9 +1694,12 @@ KBUILD_MODULES := 1
>
>  build-dirs := $(KBUILD_EXTMOD)
>  PHONY += modules
> -modules: descend
> +modules: $(MODORDER)
>         $(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
>
> +$(MODORDER): descend
> +       @:
> +
>  PHONY += modules_install
>  modules_install: _emodinst_ _emodinst_post
>
> @@ -1709,8 +1713,12 @@ PHONY += _emodinst_post
>  _emodinst_post: _emodinst_
>         $(call cmd,depmod)
>
> +compile_commands.json: $(extmod-prefix)compile_commands.json
> +PHONY += compile_commands.json
> +
>  clean-dirs := $(KBUILD_EXTMOD)
> -clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
> +clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> +       $(KBUILD_EXTMOD)/compile_commands.json

So the `clean` target doesn't make use of `CLEAN_FILES`? It looks like
there's some duplication there?  Oh, this is dependent on
!KBUILD_EXTMOD, and is a new `clean` target. Do I understand that
correctly?

>
>  PHONY += help
>  help:
> @@ -1823,6 +1831,19 @@ nsdeps: export KBUILD_NSDEPS=1
>  nsdeps: modules
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/nsdeps
>
> +# Clang Tooling
> +# ---------------------------------------------------------------------------
> +
> +quiet_cmd_gen_compile_commands = GEN     $@
> +      cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
> +
> +$(extmod-prefix)compile_commands.json: scripts/gen_compile_commands.py \
> +       $(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
> +       $(if $(CONFIG_MODULES), $(MODORDER)) FORCE
> +       $(call if_changed,gen_compile_commands)
> +
> +targets += $(extmod-prefix)compile_commands.json
> +
>  # Scripts to check various things for consistency
>  # ---------------------------------------------------------------------------
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 19c7338740e7..d2ff0d982521 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -9,80 +9,49 @@
>
>  import argparse
>  import json
> -import logging
>  import os
>  import re
> -
> -_DEFAULT_OUTPUT = 'compile_commands.json'
> -_DEFAULT_LOG_LEVEL = 'WARNING'
> -
> -_FILENAME_PATTERN = r'^\..*\.cmd$'
> -_LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
> -_VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
> -
> -# A kernel build generally has over 2000 entries in its compile_commands.json
> -# database. If this code finds 300 or fewer, then warn the user that they might
> -# not have all the .cmd files, and they might need to compile the kernel.
> -_LOW_COUNT_THRESHOLD = 300
> +import subprocess
>
>
>  def parse_arguments():
>      """Sets up and parses command-line arguments.
>
>      Returns:
> -        log_level: A logging level to filter log output.
> -        directory: The directory to search for .cmd files.
> +        ar: Command used for parsing .a archives
>          output: Where to write the compile-commands JSON file.
> +        files: Files to parse
>      """
>      usage = 'Creates a compile_commands.json database from kernel .cmd files'
>      parser = argparse.ArgumentParser(description=usage)
>
> -    directory_help = ('Path to the kernel source directory to search '
> -                      '(defaults to the working directory)')
> -    parser.add_argument('-d', '--directory', type=str, help=directory_help)
> +    ar_help = 'command used for parsing .a archives'
> +    parser.add_argument('-a', '--ar', type=str, default='ar', help=ar_help)

Might be nice to warn if run with no arguments? In case someone does:
$ ./scripts/clang-tools/gen_compile_commands.py

>
> -    output_help = ('The location to write compile_commands.json (defaults to '
> -                   'compile_commands.json in the search directory)')
> -    parser.add_argument('-o', '--output', type=str, help=output_help)
> +    output_help = 'output file for the compilation database'
> +    parser.add_argument('-o', '--output', type=str,
> +                        default='compile_commands.json', help=output_help)
>
> -    log_level_help = ('The level of log messages to produce (one of ' +
> -                      ', '.join(_VALID_LOG_LEVELS) + '; defaults to ' +
> -                      _DEFAULT_LOG_LEVEL + ')')
> -    parser.add_argument(
> -        '--log_level', type=str, default=_DEFAULT_LOG_LEVEL,
> -        help=log_level_help)
> +    files_help='files to parse (should be *.o, *.a, or modules.order)'
> +    parser.add_argument('files', type=str, nargs='*', help=files_help)
>
>      args = parser.parse_args()
>
> -    log_level = args.log_level
> -    if log_level not in _VALID_LOG_LEVELS:
> -        raise ValueError('%s is not a valid log level' % log_level)
> -
> -    directory = args.directory or os.getcwd()
> -    output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
> -    directory = os.path.abspath(directory)
> -
> -    return log_level, directory, output
> +    return args.ar, args.output, args.files
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
> +            It can be either relative or absolute.
>
>      Returns:
>          An entry to append to compile_commands.
> -
> -    Raises:
> -        ValueError: Could not find the extracted file based on relative_path and
> -            root_directory or file_directory.
>      """
>      # The .cmd files are intended to be included directly by Make, so they
>      # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
> @@ -90,60 +59,59 @@ def process_line(root_directory, file_directory, command_prefix, relative_path):
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
>      return {
> -        'directory': cur_dir,
> -        'file': relative_path,
> -        'command': prefix + relative_path,
> +        'directory': root_directory,
> +        'file': file_path,
> +        'command': prefix + file_path,
>      }
>
>
>  def main():
> -    """Walks through the directory and finds and parses .cmd files."""
> -    log_level, directory, output = parse_arguments()
> -
> -    level = getattr(logging, log_level)
> -    logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
> -
> -    filename_matcher = re.compile(_FILENAME_PATTERN)
> -    line_matcher = re.compile(_LINE_PATTERN)
> +    """Find and parse .cmd files for vmlinux and modules"""
> +    ar, output, files = parse_arguments()
> +
> +    line_matcher = re.compile(r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$')
> +
> +    # Collect objects compiled for vmlinux or modules
> +    objects = []
> +    for file in files:
> +        if file.endswith('.o'):
> +            # Some objects (head-y) are linked to vmlinux directly
> +            objects.append(file)
> +        elif file.endswith('.a'):
> +            # Most of built-in objects are linked via built-in.a or lib.a.
> +            # Use 'ar -t' to get the list of the contained objects.
> +            objects += subprocess.check_output([ar, '-t', file]).decode().split()
> +        elif file.endswith('modules.order'):
> +           # modules.order lists all the modules.
> +            with open(file) as f:

`file` is another builtin (or at least was in Python2), perhaps `filename`?

> +                for line in f:
> +                    ko = line.rstrip()
> +                    base, ext = os.path.splitext(ko)
> +                    if ext != '.ko':
> +                        sys.exit('{}: mobule path must end with .ko'.format(ko))
> +                    mod = base + '.mod'
> +                   # The first line of *.mod lists the objects that
> +                   # compose the module.

This comment and the one above it uses tabs for indentation vs spaces
for the rest of the file.  I use
https://github.com/nickdesaulniers/dotfiles/blob/a90865a9ea48bbefa0082f7508607fdeb361e801/.vimrc#L37-L43
to help me catch these.

> +                    with open(mod) as mod_f:
> +                        objects += mod_f.readline().split()
> +        else:
> +            sys.exit('{}: unknown file type'.format(file))

Consider breaking up this one long function into multiple, perhaps the
above could just return `objects`?

>
>      compile_commands = []
> -    for dirpath, _, filenames in os.walk(directory):
> -        for filename in filenames:
> -            if not filename_matcher.match(filename):
> -                continue
> -            filepath = os.path.join(dirpath, filename)
> -
> -            with open(filepath, 'rt') as f:
> -                line = f.readline()
> -                result = line_matcher.match(line)
> -                if result:
> -                    try:
> -                        entry = process_line(directory, dirpath,
> -                                             result.group(1), result.group(2))
> -                        compile_commands.append(entry)
> -                    except ValueError as err:
> -                        logging.info('Could not add line from %s: %s',
> -                                     filepath, err)
> +    cwd = os.getcwd()
> +    for object in objects:
> +        dir, notdir = os.path.split(object)

`object` is a builtin Class in python.  I'm not sure if it's quite
considered a keyword, but maybe a different identifier would be nicer,
like `object_file` or something?

> +        cmd_file = os.path.join(dir, '.' + notdir + '.cmd')
> +        with open(cmd_file, 'rt') as f:
> +            line = f.readline()
> +            result = line_matcher.match(line)

^ combine statements.

> +            if result:
> +                entry = process_line(cwd, result.group(1), result.group(2))
> +                compile_commands.append(entry)
>
>      with open(output, 'wt') as f:
>          json.dump(compile_commands, f, indent=2, sort_keys=True)
>
> -    count = len(compile_commands)
> -    if count < _LOW_COUNT_THRESHOLD:
> -        logging.warning(
> -            'Found %s entries. Have you compiled the kernel?', count)
> -
> -
>  if __name__ == '__main__':
>      main()
> --
> 2.25.1
>

Thank you for your assistance and help enabling these tools.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkL%3D667%2Bcw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg%40mail.gmail.com.
