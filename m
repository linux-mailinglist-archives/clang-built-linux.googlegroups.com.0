Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJGEROAQMGQEMBPT7MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B57443156BD
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 20:27:33 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id o20sf13933691pgu.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 11:27:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612898852; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbxvgLhus6sV2uvJs3FpZORXk1G0ycZ86BHuoN5rkP8cS5T7IpJGTn2twEoPJmDuUv
         PCcGf8rJ4SeuBlTx9i0H0UcfJoVxGg+XFGfdcKKkfYNqwgJafVqeixh4ueh5YkuVknsv
         NX9g+HhHlPe1D0yIEoWX8TFWqFfABQKIJzJq/OowmOWVrpciMEV6382Jq5p8kI9Bewoq
         fdIl/Fnxg8+t5d9S+9guOlwRyKysZK/wdIqnuPkopU0ajCJ4DAgSCH8VRSutI8iw//Jd
         tBY847EyJLM3jJHQmK/SiGzuCVfASf53laBTYEZy4gRASog0ZKkXWsVVEVvzamjG0wGP
         HGEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=c/ek6nAkYQjXzeK/wiDk/oXWJSzIPg1onzgClZl8e9U=;
        b=PGNqJTgNzu6jAXEpGm+zNVXDsure8kzqLf4isuRadOPdYUxcIAqe6d5W5lukrDY3TD
         X6Ojhcpr67PsLkTOsRWOYq58QxV7A9cvqZDTGoR/3R16lI2Pjy7Xiqao9yIKxHD98Lyx
         4pt/NqfKNPKN3i3LLw8AVTJfas4drm5/TWzN6YpTONXXtUHOey6n3pFOrEEoAUk4P0iM
         5zDsSh6g/eALub7GJ4q6b8FUIybWRkY5nJEXY8ebQWKHcOtedxWag+LgM42eZCehajNP
         scMdq1GaqE7bySLnN6WKAHFadIU5Ss6DoifU0VIituZA8/ugfNpspRsSi4KfHmfbMbxx
         P1Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RMY0jddg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c/ek6nAkYQjXzeK/wiDk/oXWJSzIPg1onzgClZl8e9U=;
        b=onykggOZEG1dwWgbPZFtQq7k3ruwbnkntXYH7Ev7DnMs2VGEJHdte1SaQITd6YWiQN
         obwf83bucUtcGsw1kSguILJ0/u5vHGapQz6ve/GlgxeJNfqg8xv0/eLtro4Dc5ZcoEPU
         yI+tfrzuRjtGuOKZSIpsOVZb1XN0DwALKGylPAqBb5cSZWfAaokRHumT7j/0kJKB5f7b
         5GOccKDK5m9J+rcSh8v5E/hWbl+hZ9tq2tzxvJz0CQlKFoyk8KWol3GJ5qZuU+MuN/ex
         bznIcaFjhytIyWTdADLDEZXJZhU9zGtQxhuUMYIGQ5GZ2/wYnJmlEaFl901wABUTDmxG
         u/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c/ek6nAkYQjXzeK/wiDk/oXWJSzIPg1onzgClZl8e9U=;
        b=ZtrvS6RqGcA1cfH8ZUte+jmY1/RF3ecMC2w6pFZ1kBzMY4nheXhFqrqMJTX+cxxgLO
         CCG95IGQKxsNpz70FE08gXuuGr1V8y/BkWU/AX4hCh0l5w0yIJvywBSulck4PyOAxEq5
         U2PbbKPX98QftTHloqSwtxrlITOYr8gb/ox/DbNiNb7BJJXYnM5VrpvY9d89QC5Yb18q
         KM1HoXC8p69ckJOa+FmRUlVT3+suOaYA6aPPlqxbAi8YR0lNWjO23GavuM5rfQd4jVEj
         ITlOxHoLV5lSf80EZ8lnH9kC3lSvJ9h3WiamaH4YcJmAEe1SEGPUrtlFBtgiTxb8sMpO
         rkdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RBcsroCe8XO/sc7z6hnoAA4+kuidr4hw1SbreoCKQScyqg88E
	EsIEzcjIDOqxrXwEWaMFVno=
X-Google-Smtp-Source: ABdhPJw+ndO+ehEh+P4wpcqpiiIq/NH0XFPbh3biST3S3fQ99XSyqYmf/bi6ziwHGsdtqRDP6eCyxA==
X-Received: by 2002:a17:90a:fb96:: with SMTP id cp22mr5349445pjb.131.1612898852442;
        Tue, 09 Feb 2021 11:27:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls10076766pll.0.gmail; Tue, 09
 Feb 2021 11:27:31 -0800 (PST)
X-Received: by 2002:a17:90a:2e88:: with SMTP id r8mr5647973pjd.84.1612898851852;
        Tue, 09 Feb 2021 11:27:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612898851; cv=none;
        d=google.com; s=arc-20160816;
        b=SAwfVEoZq4kXWWyVuHL9Z5TRO47sMl6BU/hjtx03LAz2hjdy9zm2MzJejP+zu3++NK
         SD5FrYq4WHBCV7ANrOBRezKT7g+vk+jPwEJjDOFQn/5CxLHjMoKRygSLeAdIAmIoMjfy
         fQHS8pIWJvUSYdC6zmutItdtbXaYPongIjwckROG5P3LbT7r8acoLTGYpXcVb4SaEXCv
         cfYJDmX5aXqfeM0ktQJXZyRVJaKUFyzXAKvN5GZxwJFH/XucnNwwzbkZRh7E/SkWlCOI
         qZRJcApeHCE2HLjY0S986uywWd3/teROEamOgyHCxuIyYLR9fTnYN50WrWYVgQDodL23
         /OEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ruTFZ8mLzdX7GPhsu+QOD42iMLBXZMmA2qb0mhBHkio=;
        b=VHWlFYOgBew+s8Y7LcfPnrPhH+ffAaWnfSKPvQJkYQ4YdrMRCKvlqvAuMrwNLFUh2g
         x/4T8UiVs74v4K5oR9lj+90dhvqyIPyyxbBaer315EoIqf1aTdbO+/EFkZYcecGMIDsI
         psyGawGsxEM+WEKGlA7nodSQ7UmePntJrDvoOnBt8sEMw38Ed44rNkrAuK/RNYaJWK/j
         wDKfqvsZ7O8YG6hSUOCs9cja5Mf44mh74IZtGd9ncioIR4FHbZCSwm7ch/CQeiw1xSqv
         z6s9sbHFRDAPUsD/v9SWM9AGcpSPjD23LPIwhalxBsSfPWq1N3zmJ+BCeoJfSFYSWp+u
         1Ukw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RMY0jddg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l8si992975pgi.0.2021.02.09.11.27.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:27:31 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05E0C64DF4;
	Tue,  9 Feb 2021 19:27:30 +0000 (UTC)
Date: Tue, 9 Feb 2021 12:27:29 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Stephen Zhang <stephenzhangzsd@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, natechancellor@gmail.com,
	clang-built-linux@googlegroups.com,
	LKML <linux-kernel@vger.kernel.org>,
	Tom Roeder <tmroeder@google.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
Message-ID: <20210209192729.GA820978@ubuntu-m3-large-x86>
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86>
 <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RMY0jddg;       spf=pass
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

On Tue, Feb 09, 2021 at 09:56:20PM +0800, Stephen Zhang wrote:
> Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=889=
=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:54=E5=86=99=E9=81=93=EF=BC=
=9A
>=20
> > On Mon, Feb 08, 2021 at 07:28:57PM +0800, Stephen Zhang wrote:
> > > The default source directory is set equal to build directory which
> > > specified by "-d".But it is designed to be set to the current working
> > > directoy by default, as the help messge says.It makes a differece whe=
n
> > > source directory and build directory are in separted directorys.
> > >
> > > Signed-off-by: Stephen Zhang <stephenzhangzsd@gmail.com>
> >
> > I don't think this patch makes much sense unless I am misunderstanding
> > the description of the problem. The entire point of this script is to
> > parse the .cmd files that kbuild generates and those are only present
> > in the build directory, not the source directory, so we should never be
> > looking in there, unless args.directory is its default value, which is
> > the way the script is currently written. Your patch would appear to
> > either make use do way more searching than necessary (if the build
> > folder is within the source folder) or miss it altogether (if the build
> > folder is outside the source folder).
> >
> > Cheers,
> > Nathan

Just as an FYI, your email was HTML, which means it won't hit LKML.

> Specifically,the souce directory is  /vm/linux/tools/perf on my machine,
> while the build
> directory is /vm/tmpbuild/tools/perf .In the build directory , Execute th=
e
> command:
>=20
> /vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG -=
d .
>=20
> The resulting debugging message is:
>=20
>     INFO: Could not add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: Fi=
le
> /vm/tmpbuild/tools/perf/perf.c
>     not found.
>=20
> But actually what we want is =EF=BC=9A
>=20
>     add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: File
> /vm/linux/tools/perf/perf.c.
>=20
> The    " /vm/tmpbuild/tools/perf " of  the "File
> /vm/tmpbuild/tools/perf/perf.c not found." is passed by  "-d".
>=20
> so it is the "-d" which decides the source prefix.
>=20
> Then we execute:
>=20
>  /vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG
> -d  /vm/linux/tools/perf
>=20
> But in the oringnal code , the default build directory is the same as  th=
e
> source directory:
>=20
> @@ -64,7 +64,7 @@ def parse_arguments():
>              os.path.abspath(args.directory),
>              args.output,
>              args.ar,
> -            args.paths if len(args.paths) > 0 else [args.directory])
> +            args.paths if len(args.paths) > 0 else [os.getcwd()])
>=20
> after changing  it ,we then get the right result.

Okay I think I see what is going on here. Your patch does not actually
fix the problem from what I can tell though:

$ mkdir -p /tmp/build/perf

$ make -C tools/perf -skj"$(nproc)" O=3D/tmp/build/perf

$ cd /tmp/build/perf

$ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_level I=
NFO -d .
...
INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.bp-modify.o.c=
md: File /tmp/build/perf/arch/x86/tests/bp-modify.c not found
INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.insn-x86.o.cm=
d: File /tmp/build/perf/arch/x86/tests/insn-x86.c not found
INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.arch-tests.o.=
cmd: File /tmp/build/perf/arch/x86/tests/arch-tests.c not found
INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.intel-pt-pkt-=
decoder-test.o.cmd: File /tmp/build/perf/arch/x86/tests/intel-pt-pkt-decode=
r-test.c not found
...

The script has to know where the source location is in your particular
use case because the .cmd files do not record it (maybe some future
improvement?)

This patch appears to generate what I think the compile_commands.json
should look like for the most part, I am not sure if this is proper or
works correctly though. CC'ing Tom Roeder who originally wrote this.
Tom, the initial patch and description of the issue is here:
https://lore.kernel.org/r/1612783737-3512-1-git-send-email-stephenzhangzsd@=
gmail.com/

$ scripts/clang-tools/gen_compile_commands.py -d /tmp/build/perf -s tools/p=
erf

diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-to=
ols/gen_compile_commands.py
index 8ddb5d099029..ba3b2dcdc3e1 100755
--- a/scripts/clang-tools/gen_compile_commands.py
+++ b/scripts/clang-tools/gen_compile_commands.py
@@ -27,7 +27,8 @@ def parse_arguments():
=20
     Returns:
         log_level: A logging level to filter log output.
-        directory: The work directory where the objects were built.
+        obj_directory: The work directory where the objects were built.
+        src_directory: The source directory from which the objects were bu=
ilt.
         ar: Command used for parsing .a archives.
         output: Where to write the compile-commands JSON file.
         paths: The list of files/directories to handle to find .cmd files.
@@ -35,10 +36,15 @@ def parse_arguments():
     usage =3D 'Creates a compile_commands.json database from kernel .cmd f=
iles'
     parser =3D argparse.ArgumentParser(description=3Dusage)
=20
-    directory_help =3D ('specify the output directory used for the kernel =
build '
-                      '(defaults to the working directory)')
-    parser.add_argument('-d', '--directory', type=3Dstr, default=3D'.',
-                        help=3Ddirectory_help)
+    obj_directory_help =3D ('specify the output directory used for the ker=
nel build '
+                          '(defaults to the working directory)')
+    parser.add_argument('-d', '--obj_directory', type=3Dstr, default=3D'.'=
,
+                        help=3Dobj_directory_help)
+
+    src_directory_help =3D ('specify the source directory used for the ker=
nel build '
+                          '(defaults to the working directory)')
+    parser.add_argument('-s', '--src_directory', type=3Dstr, default=3D'.'=
,
+                        help=3Dsrc_directory_help)
=20
     output_help =3D ('path to the output command database (defaults to ' +
                    _DEFAULT_OUTPUT + ')')
@@ -55,16 +61,17 @@ def parse_arguments():
=20
     paths_help =3D ('directories to search or files to parse '
                   '(files should be *.o, *.a, or modules.order). '
-                  'If nothing is specified, the current directory is searc=
hed')
+                  'If nothing is specified, the build directory is searche=
d')
     parser.add_argument('paths', type=3Dstr, nargs=3D'*', help=3Dpaths_hel=
p)
=20
     args =3D parser.parse_args()
=20
     return (args.log_level,
-            os.path.abspath(args.directory),
+            os.path.abspath(args.obj_directory),
+            os.path.abspath(args.src_directory),
             args.output,
             args.ar,
-            args.paths if len(args.paths) > 0 else [args.directory])
+            args.paths if len(args.paths) > 0 else [args.obj_directory])
=20
=20
 def cmdfiles_in_dir(directory):
@@ -154,22 +161,23 @@ def cmdfiles_for_modorder(modorder):
                     yield to_cmdfile(obj)
=20
=20
-def process_line(root_directory, command_prefix, file_path):
+def process_line(obj_directory, src_directory, command_prefix, file_path):
     """Extracts information from a .cmd line and creates an entry from it.
=20
     Args:
-        root_directory: The directory that was searched for .cmd files. Us=
ually
+        obj_directory: The directory that was searched for .cmd files. Usu=
ally
             used directly in the "directory" entry in compile_commands.jso=
n.
+        src_directory: The directory that was used to build the object fil=
es.
         command_prefix: The extracted command line, up to the last element=
.
         file_path: The .c file from the end of the extracted command.
-            Usually relative to root_directory, but sometimes absolute.
+            Usually relative to obj_directory, but sometimes absolute.
=20
     Returns:
         An entry to append to compile_commands.
=20
     Raises:
         ValueError: Could not find the extracted file based on file_path a=
nd
-            root_directory or file_directory.
+            src_directory or file_directory.
     """
     # The .cmd files are intended to be included directly by Make, so they
     # escape the pound sign '#', either as '\#' or '$(pound)' (depending o=
n the
@@ -177,20 +185,23 @@ def process_line(root_directory, command_prefix, file=
_path):
     # by Make, so this code replaces the escaped version with '#'.
     prefix =3D command_prefix.replace('\#', '#').replace('$(pound)', '#')
=20
-    # Use os.path.abspath() to normalize the path resolving '.' and '..' .
-    abs_path =3D os.path.abspath(os.path.join(root_directory, file_path))
+    if os.path.isabs(file_path):
+        abs_path =3D file_path
+    else:
+        # Use os.path.abspath() to normalize the path resolving '.' and '.=
.' .
+        abs_path =3D os.path.abspath(os.path.join(src_directory, file_path=
))
     if not os.path.exists(abs_path):
         raise ValueError('File %s not found' % abs_path)
     return {
-        'directory': root_directory,
+        'directory': obj_directory,
         'file': abs_path,
-        'command': prefix + file_path,
+        'command': prefix + abs_path,
     }
=20
=20
 def main():
     """Walks through the directory and finds and parses .cmd files."""
-    log_level, directory, output, ar, paths =3D parse_arguments()
+    log_level, obj_directory, src_directory, output, ar, paths =3D parse_a=
rguments()
=20
     level =3D getattr(logging, log_level)
     logging.basicConfig(format=3D'%(levelname)s: %(message)s', level=3Dlev=
el)
@@ -221,8 +232,8 @@ def main():
                 result =3D line_matcher.match(f.readline())
                 if result:
                     try:
-                        entry =3D process_line(directory, result.group(1),
-                                             result.group(2))
+                        entry =3D process_line(obj_directory, src_director=
y,
+                                             result.group(1), result.group=
(2))
                         compile_commands.append(entry)
                     except ValueError as err:
                         logging.info('Could not add line from %s: %s',

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210209192729.GA820978%40ubuntu-m3-large-x86.
