Return-Path: <clang-built-linux+bncBCPP3RHYZIERB3NQTCAQMGQE2PSWQII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1314F3199CC
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 06:55:59 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id f16sf6513207qkk.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 21:55:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613109358; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNlpevif+BLMtaiFKdtcLPF3rXHxrOEaFPRGMeCBRwUiQuc+/RYhpRwI6o2ETZAjRv
         6pQp4SLWNsc/XLgl5c17d1ITQct8Bcyqtscatq1XoyujrX7veQJHvxUrYO1FX4bIYt+U
         PY4oGqf+QfAheRglgBYVPtxY1zRHTL+R3vtqFEPD+Qoj2/ejHt5WQ4grPs2DXL4dfqcr
         3gM0tinWnKtXcY1WzROWF+e9M9ZzXPTX2/9oTNpr41BpzJ55Wspbtd15vhF9zJNS8Uh5
         s0Y9gjKDOkMffQVlXKOFMjfBoXHVPwz3AWYVXJm2zi7BBJykplBFEVIEJKHc99FxY4CU
         nqSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=xkPMZrbf0gM8yg2J5Bg/HbiotuuMvpWfoiZ8XnOy9uQ=;
        b=O8uO9GMjRXMM9u26FEx3gaj10RLPmSUAWDBTrk4ScxZeWWF+T3oAvjbCMFrxF5f7Jt
         8L6Jrax0vjbtV57IG1Bpg6pJxkDyYMiEGL8CkaHvVDcCjuK03FVyGLvdkqI6WS94gqFN
         elbJjU6NwNRnVExPjdCR0Ph3J6kaNpWOafRcuE4XspZpyNjrJsgutW5YsCQGd1wcHlJ9
         dzzQtnf5GVJoZB7UQUoUQxWFAo/5FK3wb9iQ2WeGNGGmm2GXEJmgUzI80K2iQwkk3vsN
         xpoIy1e1bThhWIRtvh/ZP/6alpvVP7aZIepc93HXzH3CUCgBRbPKpyA3Q28CWYmxfiKF
         52ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwzcB+gV;
       spf=pass (google.com: domain of tmroeder@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=tmroeder@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkPMZrbf0gM8yg2J5Bg/HbiotuuMvpWfoiZ8XnOy9uQ=;
        b=NxQvo8kvfhMFuW3gE/O3bIUiyAfMu0OirNYUp20aZRvYrnr8RdobG49WSE2mUB4QV1
         hAsoTnIk8AcoF+FjXkhhMg4ar384nScWKxV0gPrigzVG82O8/ICmKJeExst4vDUcTBjj
         SROi80d65oORmgGyhXcaITeOBweWR7AsDGjapEkaZHPSx1uW/dRQBnx0D+7cjQW9Qrbq
         L/hzUuhgnj3pFlebKxiA9P4VLExjpWQqadczd3P3qj470sVmR38VgSgzPdROwXj1gtjU
         VG0SK84NvWHCaUzsQO0Z1nr899bgYW9aLxkrmu01ddxVnwtUkpZ2CsckVLzkwCPS4zlA
         KIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xkPMZrbf0gM8yg2J5Bg/HbiotuuMvpWfoiZ8XnOy9uQ=;
        b=bcbRH4pTCEv0RFB8BgyOXJsovCMkW5/Ga8JCtR4aHXoE/bQhNlkqBPPP7jSkQEDjrk
         aVW1+cjuTatUH4a7Rh+vyqoaedD6WxOUjlnuOFtj0KYxV32HEIP6683EML+lWCVxgvWX
         Rlw2MIDR/w4nPP8FqQyPpJNimFUa/MZ8MXIrmEjdp9Htv/yqZwAbizAOMQOMAlGRqshA
         mWdhqUd7dCN20pdZCubn8E+OEwV7quEg4oIVAtta626zZWe+f0oOX2sCTQt6xC+kPSlC
         MZ1493od0+VpPR+XMfRKJxxC/zszKp6iYeB40TzDLjmabxWQ0YUnPdNZrwQdfT9UFS2m
         bRkQ==
X-Gm-Message-State: AOAM530I0hFAho5wB63mofVW0S68I2EvpgexO01RxM4NKUF6ORn3npAx
	BoGeSGXeDtSbLbExzV+QuFg=
X-Google-Smtp-Source: ABdhPJzHxXnGVVWmmBK6JpKXSLEuP/4VLEOd/Y3azxDAQHXbJFv+zCklmESPBlEF59HFx+aTP6rG9g==
X-Received: by 2002:a37:a2d7:: with SMTP id l206mr1242178qke.385.1613109358026;
        Thu, 11 Feb 2021 21:55:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38b:: with SMTP id 133ls4080381qkd.3.gmail; Thu, 11 Feb
 2021 21:55:57 -0800 (PST)
X-Received: by 2002:a05:620a:485:: with SMTP id 5mr1215294qkr.461.1613109357741;
        Thu, 11 Feb 2021 21:55:57 -0800 (PST)
Received: by 2002:a37:b942:0:b029:271:6c16:8ab7 with SMTP id j63-20020a37b9420000b02902716c168ab7msqkf;
        Wed, 10 Feb 2021 12:32:21 -0800 (PST)
X-Received: by 2002:a67:8a83:: with SMTP id m125mr2997271vsd.50.1612989141055;
        Wed, 10 Feb 2021 12:32:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612989141; cv=none;
        d=google.com; s=arc-20160816;
        b=a+a/K2XukTUxNTEFbhKec5uxkDCN78TKrzOBQs0A74DwFQLMync4UHrr0hwEynuusd
         DvG/FmQoLs2f7J8b/PVtUm/3A/mrLGIfO/+ZYttJVa3ZJDikzRuQb4XbyoWD/WdO8L5m
         MAorz+09yBIP45evQDQDgNxDmAhJktqNgNgsIGGI2cPaQoN2G31ax2m7fTD/CSh1ePvt
         27f5NqWnnpccBTEB4fWwwGdvDN//rw6dPBHQSn3x1wrxv6bDQiaS2ITBZbk8rl3WeHUj
         VCNubW7GyXm0Z4L6AYKx7NnqRmFmRBro7cFX7WyO6SbX2wjRx0Y8NsGH8w7PeYNYUnOq
         yrBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=aMO6X6G0WH01pbGLV0S28D1NOm/hEWB/uR+Vm5pjbWc=;
        b=XWLYwIXQ/bLD05eNSCUvwpjhYwBTbWDPwaj1+MWT1xoWbPkPiQMRaLUmzjPt6EVXrV
         rwqgYf9qXD+yw9SFW4OaHyPf7P7ESYY0r9FoZLsvWUTEo4I/gs9X9Fw1Ds9PEkhuwjlE
         5f0+GmUQZ95wVjRjy3Qyq56gkHtCYAB/l5hIx0tQVZC2g5EEh4Cx/DqDaWymmtZGoA6U
         qLwAVER8jyRbRxhvxnltDaDXmAFBJy1mIsvLV29sZUJVISHlEO26K1iyVMIQWeaAVkMj
         +zTjO2tzz73qvqFYcmO43UONq6SPpgvz4AqoQthQSXybh3YAAv2F550h3FvtKRrC7rGI
         I5Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hwzcB+gV;
       spf=pass (google.com: domain of tmroeder@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=tmroeder@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id l11si182832vkr.5.2021.02.10.12.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 12:32:21 -0800 (PST)
Received-SPF: pass (google.com: domain of tmroeder@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id cl8so1807355pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 12:32:20 -0800 (PST)
X-Received: by 2002:a17:902:b10b:b029:e3:103c:4c47 with SMTP id q11-20020a170902b10bb02900e3103c4c47mr513320plr.8.1612989139962;
        Wed, 10 Feb 2021 12:32:19 -0800 (PST)
Received: from google.com ([2620:0:1008:11:6100:9d9:528c:3c92])
        by smtp.gmail.com with ESMTPSA id c188sm3197601pfa.98.2021.02.10.12.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 12:32:18 -0800 (PST)
Date: Wed, 10 Feb 2021 12:32:14 -0800
From: "'Tom Roeder' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Stephen Zhang <stephenzhangzsd@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	natechancellor@gmail.com, clang-built-linux@googlegroups.com,
	LKML <linux-kernel@vger.kernel.org>, linux-kbuild@vger.kernel.org
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
Message-ID: <YCRCztmDvm22iWou@google.com>
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86>
 <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210209192729.GA820978@ubuntu-m3-large-x86>
X-Original-Sender: tmroeder@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hwzcB+gV;       spf=pass
 (google.com: domain of tmroeder@google.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=tmroeder@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Tom Roeder <tmroeder@google.com>
Reply-To: Tom Roeder <tmroeder@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Tue, Feb 09, 2021 at 12:27:29PM -0700, Nathan Chancellor wrote:
>On Tue, Feb 09, 2021 at 09:56:20PM +0800, Stephen Zhang wrote:
>> Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=889=
=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:54=E5=86=99=E9=81=93=EF=BC=
=9A
>>
>> > On Mon, Feb 08, 2021 at 07:28:57PM +0800, Stephen Zhang wrote:
>> > > The default source directory is set equal to build directory which
>> > > specified by "-d".But it is designed to be set to the current workin=
g
>> > > directoy by default, as the help messge says.It makes a differece wh=
en
>> > > source directory and build directory are in separted directorys.
>> > >
>> > > Signed-off-by: Stephen Zhang <stephenzhangzsd@gmail.com>
>> >
>> > I don't think this patch makes much sense unless I am misunderstanding
>> > the description of the problem. The entire point of this script is to
>> > parse the .cmd files that kbuild generates and those are only present
>> > in the build directory, not the source directory, so we should never b=
e
>> > looking in there, unless args.directory is its default value, which is
>> > the way the script is currently written. Your patch would appear to
>> > either make use do way more searching than necessary (if the build
>> > folder is within the source folder) or miss it altogether (if the buil=
d
>> > folder is outside the source folder).
>> >
>> > Cheers,
>> > Nathan
>
>Just as an FYI, your email was HTML, which means it won't hit LKML.
>
>> Specifically,the souce directory is  /vm/linux/tools/perf on my machine,
>> while the build
>> directory is /vm/tmpbuild/tools/perf .In the build directory , Execute t=
he
>> command:
>>
>> /vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG =
-d .
>>
>> The resulting debugging message is:
>>
>>     INFO: Could not add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: F=
ile
>> /vm/tmpbuild/tools/perf/perf.c
>>     not found.
>>
>> But actually what we want is =EF=BC=9A
>>
>>     add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: File
>> /vm/linux/tools/perf/perf.c.
>>
>> The    " /vm/tmpbuild/tools/perf " of  the "File
>> /vm/tmpbuild/tools/perf/perf.c not found." is passed by  "-d".
>>
>> so it is the "-d" which decides the source prefix.
>>
>> Then we execute:
>>
>>  /vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG
>> -d  /vm/linux/tools/perf
>>
>> But in the oringnal code , the default build directory is the same as  t=
he
>> source directory:
>>
>> @@ -64,7 +64,7 @@ def parse_arguments():
>>              os.path.abspath(args.directory),
>>              args.output,
>>              args.ar,
>> -            args.paths if len(args.paths) > 0 else [args.directory])
>> +            args.paths if len(args.paths) > 0 else [os.getcwd()])
>>
>> after changing  it ,we then get the right result.
>
>Okay I think I see what is going on here. Your patch does not actually
>fix the problem from what I can tell though:
>
>$ mkdir -p /tmp/build/perf
>
>$ make -C tools/perf -skj"$(nproc)" O=3D/tmp/build/perf
>
>$ cd /tmp/build/perf
>
>$ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_level =
INFO -d .
>...
>INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.bp-modify.o.=
cmd: File /tmp/build/perf/arch/x86/tests/bp-modify.c not found
>INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.insn-x86.o.c=
md: File /tmp/build/perf/arch/x86/tests/insn-x86.c not found
>INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.arch-tests.o=
.cmd: File /tmp/build/perf/arch/x86/tests/arch-tests.c not found
>INFO: Could not add line from /tmp/build/perf/arch/x86/tests/.intel-pt-pkt=
-decoder-test.o.cmd: File /tmp/build/perf/arch/x86/tests/intel-pt-pkt-decod=
er-test.c not found
>...
>
>The script has to know where the source location is in your particular
>use case because the .cmd files do not record it (maybe some future
>improvement?)
>
>This patch appears to generate what I think the compile_commands.json
>should look like for the most part, I am not sure if this is proper or
>works correctly though. CC'ing Tom Roeder who originally wrote this.
>Tom, the initial patch and description of the issue is here:
>https://lore.kernel.org/r/1612783737-3512-1-git-send-email-stephenzhangzsd=
@gmail.com/

Thanks! I'll take a look. I'm also CC'ing linux-kbuild, which is the=20
subtree that owns the script; I haven't been very involved since I added=20
it. My main concern is to make sure that changes don't break the simple=20
use case: generating compile_commands.json in an in-tree build without=20
any arguments to the script.

>
>$ scripts/clang-tools/gen_compile_commands.py -d /tmp/build/perf -s tools/=
perf
>
>diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-t=
ools/gen_compile_commands.py
>index 8ddb5d099029..ba3b2dcdc3e1 100755
>--- a/scripts/clang-tools/gen_compile_commands.py
>+++ b/scripts/clang-tools/gen_compile_commands.py
>@@ -27,7 +27,8 @@ def parse_arguments():
>
>     Returns:
>         log_level: A logging level to filter log output.
>-        directory: The work directory where the objects were built.
>+        obj_directory: The work directory where the objects were built.
>+        src_directory: The source directory from which the objects were b=
uilt.
>         ar: Command used for parsing .a archives.
>         output: Where to write the compile-commands JSON file.
>         paths: The list of files/directories to handle to find .cmd files=
.
>@@ -35,10 +36,15 @@ def parse_arguments():
>     usage =3D 'Creates a compile_commands.json database from kernel .cmd =
files'
>     parser =3D argparse.ArgumentParser(description=3Dusage)
>
>-    directory_help =3D ('specify the output directory used for the kernel=
 build '
>-                      '(defaults to the working directory)')
>-    parser.add_argument('-d', '--directory', type=3Dstr, default=3D'.',
>-                        help=3Ddirectory_help)
>+    obj_directory_help =3D ('specify the output directory used for the ke=
rnel build '
>+                          '(defaults to the working directory)')
>+    parser.add_argument('-d', '--obj_directory', type=3Dstr, default=3D'.=
',
>+                        help=3Dobj_directory_help)
>+
>+    src_directory_help =3D ('specify the source directory used for the ke=
rnel build '
>+                          '(defaults to the working directory)')
>+    parser.add_argument('-s', '--src_directory', type=3Dstr, default=3D'.=
',
>+                        help=3Dsrc_directory_help)
>
>     output_help =3D ('path to the output command database (defaults to ' =
+
>                    _DEFAULT_OUTPUT + ')')
>@@ -55,16 +61,17 @@ def parse_arguments():
>
>     paths_help =3D ('directories to search or files to parse '
>                   '(files should be *.o, *.a, or modules.order). '
>-                  'If nothing is specified, the current directory is sear=
ched')
>+                  'If nothing is specified, the build directory is search=
ed')
>     parser.add_argument('paths', type=3Dstr, nargs=3D'*', help=3Dpaths_he=
lp)
>
>     args =3D parser.parse_args()
>
>     return (args.log_level,
>-            os.path.abspath(args.directory),
>+            os.path.abspath(args.obj_directory),
>+            os.path.abspath(args.src_directory),
>             args.output,
>             args.ar,
>-            args.paths if len(args.paths) > 0 else [args.directory])
>+            args.paths if len(args.paths) > 0 else [args.obj_directory])
>
>
> def cmdfiles_in_dir(directory):
>@@ -154,22 +161,23 @@ def cmdfiles_for_modorder(modorder):
>                     yield to_cmdfile(obj)
>
>
>-def process_line(root_directory, command_prefix, file_path):
>+def process_line(obj_directory, src_directory, command_prefix, file_path)=
:
>     """Extracts information from a .cmd line and creates an entry from it=
.
>
>     Args:
>-        root_directory: The directory that was searched for .cmd files. U=
sually
>+        obj_directory: The directory that was searched for .cmd files. Us=
ually
>             used directly in the "directory" entry in compile_commands.js=
on.
>+        src_directory: The directory that was used to build the object fi=
les.
>         command_prefix: The extracted command line, up to the last elemen=
t.
>         file_path: The .c file from the end of the extracted command.
>-            Usually relative to root_directory, but sometimes absolute.
>+            Usually relative to obj_directory, but sometimes absolute.
>
>     Returns:
>         An entry to append to compile_commands.
>
>     Raises:
>         ValueError: Could not find the extracted file based on file_path =
and
>-            root_directory or file_directory.
>+            src_directory or file_directory.
>     """
>     # The .cmd files are intended to be included directly by Make, so the=
y
>     # escape the pound sign '#', either as '\#' or '$(pound)' (depending =
on the
>@@ -177,20 +185,23 @@ def process_line(root_directory, command_prefix, fil=
e_path):
>     # by Make, so this code replaces the escaped version with '#'.
>     prefix =3D command_prefix.replace('\#', '#').replace('$(pound)', '#')
>
>-    # Use os.path.abspath() to normalize the path resolving '.' and '..' =
.
>-    abs_path =3D os.path.abspath(os.path.join(root_directory, file_path))
>+    if os.path.isabs(file_path):
>+        abs_path =3D file_path
>+    else:
>+        # Use os.path.abspath() to normalize the path resolving '.' and '=
..' .
>+        abs_path =3D os.path.abspath(os.path.join(src_directory, file_pat=
h))
>     if not os.path.exists(abs_path):
>         raise ValueError('File %s not found' % abs_path)
>     return {
>-        'directory': root_directory,
>+        'directory': obj_directory,
>         'file': abs_path,
>-        'command': prefix + file_path,
>+        'command': prefix + abs_path,
>     }
>
>
> def main():
>     """Walks through the directory and finds and parses .cmd files."""
>-    log_level, directory, output, ar, paths =3D parse_arguments()
>+    log_level, obj_directory, src_directory, output, ar, paths =3D parse_=
arguments()
>
>     level =3D getattr(logging, log_level)
>     logging.basicConfig(format=3D'%(levelname)s: %(message)s', level=3Dle=
vel)
>@@ -221,8 +232,8 @@ def main():
>                 result =3D line_matcher.match(f.readline())
>                 if result:
>                     try:
>-                        entry =3D process_line(directory, result.group(1)=
,
>-                                             result.group(2))
>+                        entry =3D process_line(obj_directory, src_directo=
ry,
>+                                             result.group(1), result.grou=
p(2))
>                         compile_commands.append(entry)
>                     except ValueError as err:
>                         logging.info('Could not add line from %s: %s',

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YCRCztmDvm22iWou%40google.com.
