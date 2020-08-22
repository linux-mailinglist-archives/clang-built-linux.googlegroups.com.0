Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRGTQH5AKGQE3VKLYYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205D24E439
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:41:41 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id lx6sf1817824pjb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:41:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598056900; cv=pass;
        d=google.com; s=arc-20160816;
        b=cX9mrngp5yASeoAbVfahr74ah7gVcjiDE4vYF/31ogn+hFjVtfA1jkQim2qi7PUM85
         yutrfiND9F7icN2J6+Jrqun0ZPCv6/pcLl3wYgIpbgiiHwSAfcKFiFyxHSdkmD9JTFUh
         aCSvj6pv2znv1EbstHl3FPqOq8naFNR2JD2QbHJWUkc5LvXIRSVUMopVJTeJXNlnApBc
         R0iRHdRKnFq2BM5AohipDh5KW1jUpeKl280lbFneOkFab7AwBoQEjzToOTyDsOR8YWFs
         7c8J1sj/fiaLrDqkbEjaP/0Sn9TiaxyVAX9jLwPn1BS6NPOWN+x7EXvuCJeVhwnq+HVF
         KQ7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K0lYgEQC30lKWapEoP8dy3NEPUCMhJJ3Kn5oVAvk5Ns=;
        b=Ao0CldiJGR2I8GbW9K9/Bqc724ZQI19j7kX46NgsBsZxKb0c0SuSeHFYwKFHh+aiI/
         tdt+a+JrtwK6Ju5qWYMspDg8Th31ZIhq5NfhngcqBb7xyr1qcZP3EzSBzULSV21E9JyO
         5WNQjaFnEn60yoIjxu8pg1EaY1RjvLF8iTa5XmYnnw5XrTeQ9+XinLTHQ+gJhFa5ir1s
         ofIjVI4bdAQXhhS45li3a+wJpo1w4siumVnFgAD9T1NjuuKhEvdQBLPUoV9vaXTxWzBw
         KOT1SiaO8Ayd3ij93pTNOdsQUeMc0t8U68U9XZvMmYOldGnBQ+BfsRzLbsgiY3wV+dl8
         NGRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPob3zYc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K0lYgEQC30lKWapEoP8dy3NEPUCMhJJ3Kn5oVAvk5Ns=;
        b=AyvyNHcQxik5um16ERnYr1JAmfgeT9/WhAcctanB1rlJHNoE8yVVS6ofXpp9CBbLdi
         crovch8e/pN2thx09qijUs5vxLa8QQysLm7qD4akv4mIptqsG7DKw4Eyz7WexWBICofE
         vKMqxQf9O1ca7/0KqF3NWUuFHWzlK0NyO/ROiYnJKygoboW+cyT15aQB4J0Wa4EJOizn
         r5XJglNeR5o61tN5Q0pYPf8nBaZwLXMt4exeWUC+MeDh7ru9KEtrMZPyQMqSi0bbA6qW
         tvOQjRBmoTwpApylZsgaTEvh4xPYPz2lDY+BzbH3Qfj00nSYKwTkufmAwU3ejThnp/+i
         Qdfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K0lYgEQC30lKWapEoP8dy3NEPUCMhJJ3Kn5oVAvk5Ns=;
        b=t4oI25t/KYtj7zco+71JFjDMBYAMyGqXyQyhFfdfT3wgSvm1pESeyDBdtoBgfopMOn
         ad3AyhM/JFpjMEZkhRZ8oC+ocKPbD1+J2NSTxyT+3PPti9bFqyCnQO2DH56+wVgPZJA2
         wv1L1RMOZET96JMcdKoUIBay2mzBQUlVtL1iRmme2q/QC2Z2e9U+bTMr/Ij57OhmnPLL
         1TQ+OsRlpQtx8mQBX4aYzTbS1io2yjLqQbucWobuG+ceB6VUKCyPqgLWGu0FbEbN+lXG
         SD2AGPKsvMm62Dmct4zGc6XBYf3oCaoefleehmbmLQWEbhwaQyxKckhKBajGv7NIS9Vg
         SOcw==
X-Gm-Message-State: AOAM530/0lVe+91UucWA4Ke0SBNZYN/vdELExkcoQ2MxxlojT1U0BmvA
	4UzANi1Z7O4YDhGKFNQZ94M=
X-Google-Smtp-Source: ABdhPJxJL0h1FccEmVz4Islak1TQPydv6tUQJIEQQ6vBRGOeKbU5GD3Ja20j3KIWTxmqJ7krTlyrwA==
X-Received: by 2002:a17:90a:9e7:: with SMTP id 94mr4411426pjo.97.1598056900706;
        Fri, 21 Aug 2020 17:41:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls1443104pjt.1.gmail; Fri, 21
 Aug 2020 17:41:40 -0700 (PDT)
X-Received: by 2002:a17:90a:4e89:: with SMTP id o9mr4727978pjh.178.1598056900327;
        Fri, 21 Aug 2020 17:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598056900; cv=none;
        d=google.com; s=arc-20160816;
        b=E18M1MY4PAfOR7w6BQcXNNXUYAFwRPxWIGKh6XRdm26EOtyKvNrx7HXMrG5TBRNV0o
         ss2K+fmjwJJ4XJwfbpEjQHaxeIyKba/LJoVJdnaWmGyVxrEV9dOKzIN691NrfmuY6uS4
         7dFqYi81Rscrer6jo/3Y+gJcN2unWmKNiMCuxAHlIE+kIu4JboYDmy2IkHATjOK+qFMn
         086HE51mr3CU8mZfGkAvATptf1FTl0t6b1Sk7oK/T454AuW6If7vUsXwEQY8h3PwHSER
         bJlOyFjcae1tcdA1nvj1Uxy7kAAX7Dp7A2aVT6BtPDbj12XdGLzB9Jd9O6d4p1to4xv4
         Z0FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fpYkI6juAqMAAUVTQTHgpzHvlncEIWGwTCUc4UiA+NQ=;
        b=xqi2WW9n1QDs6zJg8TZuJQEWirPq4Htxxn03p1N94kc0dFmY3s4HtBeJ6xIW7eVW9m
         p7YyfxGFj+5/+9qbnQENigjKOgK8a5rmAb0V9QOCCwBOr5KcfekkPYnCukrFaKFUqn9L
         Up7QbttjvaeJbLw0Ro/sm9Bmp94yn3fHXANVDzg08KcMWSFSTFh7H84I0Zhf+JQYbxjD
         q5fxJzOq4HmmxPkM2b/MzC8dZXfZQ3ITFM8Dqai6dVMUZ/ruYj10vZDKeivIa6pIL2iy
         JvNDCYJ8zk5NI4NpTeLn2ko8HSNXby9LBpYIUNpS7IdNHfx5i3ca408PH0r7z8eA6d33
         DBuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPob3zYc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s14si190133pgj.1.2020.08.21.17.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id kr4so1531996pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:41:40 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr4204225ply.223.1598056899804;
 Fri, 21 Aug 2020 17:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-7-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-7-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:41:28 -0700
Message-ID: <CAKwvOdn9ZfvC4dzuVnxc_a52JFn_q1ewOWwZZD5b9=izeEayKQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] gen_compile_commands: move directory walk to a
 generator function
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BPob3zYc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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
> Currently, this script walks under the specified directory (default to
> the current directory), then parses all .cmd files found.
>
> Split it into a separate helper function because the next commit will
> add more helpers to pick up .cmd files associated with given file(s).
>
> There is no point to build and return a huge list at once. I used a
> generator so it works in the for-loop with less memory.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2:
>   - New patch
>
>  scripts/gen_compile_commands.py | 44 ++++++++++++++++++++++++---------
>  1 file changed, 32 insertions(+), 12 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 3ed958b64658..6dec7e2c4098 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -33,6 +33,7 @@ def parse_arguments():
>          log_level: A logging level to filter log output.
>          directory: The work directory where the objects were built
>          output: Where to write the compile-commands JSON file.
> +        paths: The list of directories to handle to find .cmd files

Punctuation: please add a period.

>      """
>      usage = 'Creates a compile_commands.json database from kernel .cmd files'
>      parser = argparse.ArgumentParser(description=usage)
> @@ -56,7 +57,28 @@ def parse_arguments():
>
>      return (args.log_level,
>              os.path.abspath(args.directory),
> -            args.output)
> +            args.output,
> +            [args.directory])
> +
> +
> +def cmdfiles_in_dir(directory):
> +    """Generate the iterator of .cmd files found under the directory.
> +
> +    Walk under the given directory, and yield every .cmd file found.
> +
> +    Args:
> +        directory: The directory to search for .cmd files.
> +
> +    Yields:
> +        The path to a .cmd file.
> +    """
> +
> +    filename_matcher = re.compile(_FILENAME_PATTERN)
> +
> +    for dirpath, _, filenames in os.walk(directory):
> +        for filename in filenames:
> +            if filename_matcher.match(filename):
> +                yield os.path.join(dirpath, filename)
>
>
>  def process_line(root_directory, command_prefix, file_path):
> @@ -94,31 +116,29 @@ def process_line(root_directory, command_prefix, file_path):
>
>  def main():
>      """Walks through the directory and finds and parses .cmd files."""
> -    log_level, directory, output = parse_arguments()
> +    log_level, directory, output, paths = parse_arguments()
>
>      level = getattr(logging, log_level)
>      logging.basicConfig(format='%(levelname)s: %(message)s', level=level)
>
> -    filename_matcher = re.compile(_FILENAME_PATTERN)
>      line_matcher = re.compile(_LINE_PATTERN)
>
>      compile_commands = []
> -    for dirpath, _, filenames in os.walk(directory):
> -        for filename in filenames:
> -            if not filename_matcher.match(filename):
> -                continue
> -            filepath = os.path.join(dirpath, filename)
>
> -            with open(filepath, 'rt') as f:
> +    for path in paths:
> +        cmdfiles = cmdfiles_in_dir(path)
> +
> +        for cmdfile in cmdfiles:

If `cmdfiles` is never referenced again, please make this:

for cmdfile in cmdfiles_in_dir(path):

With those 2 changes feel free to add my
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> +            with open(cmdfile, 'rt') as f:
>                  result = line_matcher.match(f.readline())
>                  if result:
>                      try:
> -                        entry = process_line(directory,
> -                                             result.group(1), result.group(2))
> +                        entry = process_line(directory, result.group(1),
> +                                             result.group(2))
>                          compile_commands.append(entry)
>                      except ValueError as err:
>                          logging.info('Could not add line from %s: %s',
> -                                     filepath, err)
> +                                     cmdfile, err)
>
>      with open(output, 'wt') as f:
>          json.dump(compile_commands, f, indent=2, sort_keys=True)
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn9ZfvC4dzuVnxc_a52JFn_q1ewOWwZZD5b9%3DizeEayKQ%40mail.gmail.com.
