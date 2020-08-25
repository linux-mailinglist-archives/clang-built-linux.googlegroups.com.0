Return-Path: <clang-built-linux+bncBCJ2F27SQYOBB256S35AKGQEEGXFSVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7690425242C
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 01:31:56 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k3sf342726ioc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598398315; cv=pass;
        d=google.com; s=arc-20160816;
        b=hLpm2N8wqHlHcJMvWWyuj7TACzmjqJBqPx36621BVbETxLiVIGDbcD5oSlCrwZatO/
         oYZLJK6/3zmfP627vq6fM5O8kfs1V0o1olpROIRvvujbL61EYgPEMLULdePTf7mhXlK+
         OWUzKYgoyi671gG8iFuvcKDE7df9xpSgHQg6WNYbl4mckPsjCwfJVuaMy+dh72WS/AZu
         +bh0AKEbXr6m2N0SkL43yBDYM+9+A8+qtufG3efgz5IYA4HlmpJnOLfIto4tABfKFP8T
         U7YOQiU51eCSgLGEwu176grNqeJSlf3ukitwlNNvCTAgI71RgPx3T3VABi7DhKv60TCr
         lW3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gFnpIMo8QM29i21/B0s7rqpg9fmmZ7bMTpv58j/boDk=;
        b=FwBNlH8c4ph+rzitiJFM/Nbnn+dMLi4SE5Rxj5M0rlwOGJn7lBADQabsTGCwpEU2dX
         zb/G/tSKx16c0v+OQDU5bJiEkP6ADj5elxEIsTONMTZSa7YGrZ9qy6zVUcJQpKzYWr8Q
         RMkUag4VIbXUT3UgSX47VXDf6YHo4cV65GL4fH01Pm9qt30yDm29FlDhpxoULFci20EZ
         yQweb0lIxOyI+GR4eybKlqy1GSuzPWuK0PslyZo+P+nmv8zm050pcOSHM6388NwOezUp
         d3a0yiJcts0Aw7MXqPh/NuqJHuKTeTDufXteP9d2zhOcE6f/w9ZKCyf3SY09cV9Wk1nv
         MzbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJyV10MJ;
       spf=pass (google.com: domain of peskal@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=peskal@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gFnpIMo8QM29i21/B0s7rqpg9fmmZ7bMTpv58j/boDk=;
        b=abCx64x82jiXZ8v4tJzgSb82l8RZ/L62/viYnsqdvgBTTaT/96BHya+vKPS+RJEMnY
         K1BUEM4cK2+5gcAhKvZZr9MojzQekdITkmYxFZ+lqun9SiBbS4XVVhzn6VttaKHeN7VJ
         m3equED86mEb1jfiIE7V1bbA8+i4dIm4qWgH0aUzt/1cc4wVdZWZguxWsqeptGS4XPPS
         nIvsCead08dHL4Zyv8NaOblKbu5jS1grgDDHaaua+cRlsTx35iTUanqBTG2fEO4ros9J
         GeuRCP03lvAdL7tTZ5qpY80P40iQ9ZUmOPpXcC8tnXcVHIzLz+YPvdMKcJK/ht+1Ep8t
         UdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFnpIMo8QM29i21/B0s7rqpg9fmmZ7bMTpv58j/boDk=;
        b=mrD25LInNA7Ryd/1IK/6sFBrskUPzvJluf/BofRdXNF9OdWwuvse8xRCEpfQTH61n0
         pKcr5HC+98oqwMqMswqAcpwgLG5pITfrPTqciPDowS4ebsBVvymsAtafyshBiVNvbukX
         O//Ausbo7pcy4aLnqHPwQEsFcJnnsdhji3grLkYfSje8H7m+PDy8uqGSt19+YvBRRRS9
         n9VE/eOhXQ2+JRaUwwCe9Kj3E1vdvbLf8IiivdSwPmDw4y2Nvb6Q8Ac6/GLkVAZHR4Os
         V+bAjSpLRdjn+p4WAo/FWAv/HVbTtJfS43DwQPWPDAEVrsJpwvSxVQ9KkgffOCFAaHeP
         Ytig==
X-Gm-Message-State: AOAM533SrZoxCCvLJ7/lz6C+WTnyhkNjtyc2eWDfQ3E18RUu7zLLgoxg
	udzpsYiqldLIxWSHBSF3Snw=
X-Google-Smtp-Source: ABdhPJzhqFqDvVaTvv6yKXbnIQTVSft7dbszEqgyiCbO8NCTtk6MZCyFFbk9ff6bHnquDlCa4inQIQ==
X-Received: by 2002:a5d:924c:: with SMTP id e12mr11017866iol.28.1598398315357;
        Tue, 25 Aug 2020 16:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9953:: with SMTP id v19ls55689ios.11.gmail; Tue, 25 Aug
 2020 16:31:55 -0700 (PDT)
X-Received: by 2002:a6b:cc02:: with SMTP id c2mr8090903iog.26.1598398314904;
        Tue, 25 Aug 2020 16:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598398314; cv=none;
        d=google.com; s=arc-20160816;
        b=XAdUH0zSXoubEecd2USeDHg/zh7YAdz3ac4HR30hLfCnaVveqR24EdBFlXiHbL8qvD
         Rnngmnww1xTQIQ7Xj971NJEkyoWKBOnnNR901qZxFH4NgyuEhvCaT98Ny4z4s+GdMmH4
         PAmv43w19JCG2SblSsVML5xId+xbFpRCziwoon95A2WDFSdbu7ewkXefPFjD22WKLjsW
         2oGN0xp9qq/guCH+NxpQYzm89hFJqcixpvExU+s7HTooq2YJ68hZTjO8FwE4e9tt01oH
         0tv9kFJEGPVrnndnfzR5LbooMUBVddMW/p59ztmu6XXf5vCfPGMOi6PMHUH1t3FE0zCB
         gMFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H8MjPqeDYxmd5ry+yVN2NIJr4injOVdiQvMa1tt54Lw=;
        b=PqEQqHhefvfjP5KInxa2VQSmPlIs71oM8yy+P+757u8pB59zFu7WuMqZ3tn9Zw7NOB
         PhX1SF2qpTqdQnZ92vX0aSNwCSKLTHsirvbfoBlHrr5R2X22WXzyOZ0Je+juikmHdtZ/
         7opn2qOnrSpwb+reUL5smJeSMhg3ZB7388GxutVzMLqQ8zvOn2q3ZrfIZlZdyoVt6yU5
         l5rfPfhVcyNhCFnV9VRaW0SSWHstCFCwXjSAtRqQUtOm/ubTA1DipgSktpCRtNjWV0Zt
         E8Hhf7DmYG/UFhDk00Oy7xnIfJjYWc2pdV2lLRWgmhFO8Eq7AY969zOpk9k8XmwRPjDi
         yxoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJyV10MJ;
       spf=pass (google.com: domain of peskal@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=peskal@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id u9si28832ilg.0.2020.08.25.16.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 16:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of peskal@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id ls14so11845pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 16:31:54 -0700 (PDT)
X-Received: by 2002:a17:90a:1a42:: with SMTP id 2mr3359100pjl.16.1598398313787;
        Tue, 25 Aug 2020 16:31:53 -0700 (PDT)
Received: from google.com ([2620:15c:211:2:a28c:fdff:fee1:f6fa])
        by smtp.gmail.com with ESMTPSA id l3sm205391pgp.34.2020.08.25.16.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 16:31:53 -0700 (PDT)
Date: Tue, 25 Aug 2020 16:31:49 -0700
From: "'Peter Kalauskas' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Tom Roeder <tmroeder@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] gen_compile_commands: Add support for separate kbuild
 output directory
Message-ID: <20200825233149.GA2143288@google.com>
References: <20200731212141.3709716-1-peskal@google.com>
 <CAK7LNARxnLGpiHO8ovfF_+pjFw+Uo=2c9wYiWMjZRh3B4_wMUg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARxnLGpiHO8ovfF_+pjFw+Uo=2c9wYiWMjZRh3B4_wMUg@mail.gmail.com>
X-Original-Sender: peskal@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hJyV10MJ;       spf=pass
 (google.com: domain of peskal@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=peskal@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Kalauskas <peskal@google.com>
Reply-To: Peter Kalauskas <peskal@google.com>
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

On Wed, Aug 12, 2020 at 09:28:32PM +0900, Masahiro Yamada wrote:
> (+cc clang-built-linux)
> 
> 
> On Sat, Aug 1, 2020 at 6:21 AM Peter Kalauskas <peskal@google.com> wrote:
> >
> > Add support for builds that use an output directory different than the
> > kernel source tree (e.g. make O=/tmp/kernel-obj). This also introduces
> > support for .cmd files that use absolute paths.
> >
> > Previously, gen_compile_commands.py only supported builds where the
> > kernel source tree and the output directory were the same:
> >  $ make defconfig
> >  $ make -j32
> >  $ ./scripts/gen_compile_commands.py
> >
> > gen_compile_commands.py had flags to support out of tree use, but the
> > generated compile_commands.json file still assumed that the source tree
> > and kbuild output directory were the same.
> 
> Thanks Tom for CCing Kbuild ML.
> Otherwise, I would not have noticed this patch.
> 
> 
> 
> I think the current code _mostly_ supports the out of tree use.
> The key is to specify '-p <build-dir>'
> when you use compile_commands.json from
> clang-check, clang-tidy, etc.
> 

Thanks, I wasn't aware of the -p option for clang-tidy. When I wrote
this, I was trying to use the compile_commands.json with YCM for vim. I
see now that I can easily change the build dir for that use-case as well
by specifying:

  :let g:ycm_clangd_args=['--compile-commands-dir=kernel-obj']

> 
> 
> 
> 
> > Now, the following cases are supported as well:
> >
> >  - Absolute output path:
> >    $ mkdir /tmp/kernel-obj
> >    $ make O=/tmp/kernel-obj defconfig
> >    $ make O=/tmp/kernel-obj -j32
> >    $ ./scripts/gen_compile_commands.py -k /tmp/kernel-obj
> >
> >  - Relative output path:
> >    $ mkdir kernel-obj
> >    $ make O=kernel-obj/ defconfig
> >    $ make O=kernel-obj/ -j32
> >    $ ./scripts/gen_compile_commands.py -k kernel-obj
> 
> 
> In the current script, I would do like follows:
> 
> - Absolute output path:
> $ export CC=clang
> $ make O=/tmp/kernel-obj defconfig
> $ make O=/tmp/kernel-obj -j32
> $ ./scripts/gen_compile_commands.py -d /tmp/kernel-obj
> $ clang-tidy  '--checks=linuxkernel*'  -p /tmp/kernel-obj kernel/fork.c
> 
> 
> - Relative output path:
> $ export CC=clang
> $ make O=kernel-obj defconfig
> $ make O=kernel-obj -j32
> $ ./scripts/gen_compile_commands.py -d kernel-obj
> $ clang-tidy  '--checks=linuxkernel*'  -p kernel-obj   kernel/fork.c
> 
> 
> 
> With your patch and the -k option use,
> compile_commands.json is always created in the source tree
> whether O= is given or not.
> Then, you no longer need to pass '-p <build-path>'
> from clang tools.
> 
> However, I like the workflow to create any build artifact
> in the output tree for O= use-case, and keep the source tree
> completely clean.
> This is because the source tree might be read-only.
> Perhaps, it is located under /usr/src/,
> or the source code might be provided by DVD-ROM, etc.
> 
> 
> 
> 
> 
> In my understanding, the flaw of the -d option is,
> it cannot handle objtool.
> 
> '--log_level DEBUG' emits error log for objtool.
> 
> masahiro@oscar:~/ref/linux$ ./scripts/gen_compile_commands.py  -d
> /tmp/kernel-obj  --log_level  DEBUG
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.elf.o.cmd: File elf.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.builtin-orc.o.cmd: File builtin-orc.c
> not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.builtin-check.o.cmd: File
> builtin-check.c not in /tmp/kernel-obj or
> /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.orc_dump.o.cmd: File orc_dump.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.libstring.o.cmd: File ../lib/string.c
> not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.libctype.o.cmd: File ../lib/ctype.c not
> in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.parse-options.o.cmd: File
> parse-options.c not in /tmp/kernel-obj or
> /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.objtool.o.cmd: File objtool.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.fixdep.o.cmd: File fixdep.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.pager.o.cmd: File pager.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.str_error_r.o.cmd: File
> ../lib/str_error_r.c not in /tmp/kernel-obj or
> /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.special.o.cmd: File special.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.orc_gen.o.cmd: File orc_gen.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.help.o.cmd: File help.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.librbtree.o.cmd: File ../lib/rbtree.c
> not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.run-command.o.cmd: File run-command.c
> not in /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.exec-cmd.o.cmd: File exec-cmd.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.weak.o.cmd: File weak.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.subcmd-config.o.cmd: File
> subcmd-config.c not in /tmp/kernel-obj or
> /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.check.o.cmd: File check.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/.sigchain.o.cmd: File sigchain.c not in
> /tmp/kernel-obj or /tmp/kernel-obj/tools/objtool
> INFO: Could not add line from
> /tmp/kernel-obj/tools/objtool/arch/x86/.decode.o.cmd: File
> arch/x86/decode.c not in /tmp/kernel-obj or
> /tmp/kernel-obj/tools/objtool/arch/x86
> 
> 
> 
> Your patch solves it, but I wonder if it is worth lots of code addition.
> objtool is the only unfortunate case because it did not join Kbuild.
> 

I'd also prefer not to complicate things more than necessary, so maybe
it's best to abandon this patch and leave the script as is. Probably the
only thing needed is to clean up some of the variable names (e.g. as you
mentioned, relative_path can sometimes be absolute) and maybe add more
documentation on suggested usage.

> 
> 
> 
> > The new argument, -k, is introduced in a way that makes the script
> > backward compatible with how -d was previously used.
> >
> > Signed-off-by: Peter Kalauskas <peskal@google.com>
> > ---
> 
> 
> 
> > -def process_line(root_directory, file_directory, command_prefix, relative_path):
> > +def process_line(src_dir, kbuild_out_dir, file_dir, cmd_prefix, file_path):
> >      """Extracts information from a .cmd line and creates an entry from it.
> >
> >      Args:
> > -        root_directory: The directory that was searched for .cmd files. Usually
> > +        src_dir: The directory of the kernel source tree.
> > +        kbuild_out_dir: The directory that was searched for .cmd files. Usually
> >              used directly in the "directory" entry in compile_commands.json.
> > -        file_directory: The path to the directory the .cmd file was found in.
> > -        command_prefix: The extracted command line, up to the last element.
> > -        relative_path: The .c file from the end of the extracted command.
> > -            Usually relative to root_directory, but sometimes relative to
> > -            file_directory and sometimes neither.
> > +        file_dir: The path to the directory the .cmd file was found in.
> > +        cmd_prefix: The extracted command line, up to the last element.
> > +        file_path: The .c file from the end of the extracted command.
> > +            Usually relative to kbuild_out_dir, but sometimes relative to
> > +            src_dir and sometimes neither.
> >
> >      Returns:
> >          An entry to append to compile_commands.
> >
> >      Raises:
> > -        ValueError: Could not find the extracted file based on relative_path and
> > -            root_directory or file_directory.
> > +        ValueError: Could not find the extracted file.
> >      """
> >      # The .cmd files are intended to be included directly by Make, so they
> >      # escape the pound sign '#', either as '\#' or '$(pound)' (depending on the
> > -    # kernel version). The compile_commands.json file is not interepreted
> > +    # kernel version). The compile_commands.json file is not interpreted
> >      # by Make, so this code replaces the escaped version with '#'.
> > -    prefix = command_prefix.replace('\#', '#').replace('$(pound)', '#')
> > -
> > -    cur_dir = root_directory
> > -    expected_path = os.path.join(cur_dir, relative_path)
> > -    if not os.path.exists(expected_path):
> > -        # Try using file_directory instead. Some of the tools have a different
> > -        # style of .cmd file than the kernel.
> > -        cur_dir = file_directory
> > -        expected_path = os.path.join(cur_dir, relative_path)
> > +    prefix = cmd_prefix.replace('\#', '#').replace('$(pound)', '#')
> > +
> > +    # Compile commands are usually run in the top level of the kbuild output
> > +    # directory
> > +    working_dir = kbuild_out_dir
> > +
> > +    if os.path.isabs(file_path):
> 
> I might be misreading the code, but
> is this if-else switch needed?
> 
> 
> os.path.join() returns the last parameter as-is
> if it is already absolute, right?
> 
> 
> This is my quick experiment:
> 
> masahiro@oscar:~$ python3
> Python 3.8.2 (default, Jul 16 2020, 14:00:26)
> [GCC 9.3.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import os
> >>> os.path.join("/foo/bar/", "a/b/c")
> '/foo/bar/a/b/c'
> >>> os.path.join("/foo/bar/", "/a/b/c")
> '/a/b/c'
> 
> 
> 
> 
> So, the current code:
> 
>    expected_path = os.path.join(cur_dir, relative_path)
> 
> works whether 'relative_path' is relative or not.
> 
> I was also thinking this variable name was misleading
> since 'relative_path' may be actually absolute.
> 

You are correct about os.path.join. That if-else is unnecessary in
hindsight.

Thanks again for reviewing!

> 
> 
> 
> 
> --
> Best Regards
> 
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825233149.GA2143288%40google.com.
