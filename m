Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJM62T3QKGQE3Z3DDVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B23420A721
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:55:07 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id z65sf3461641iof.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593118501; cv=pass;
        d=google.com; s=arc-20160816;
        b=1G9RHThPRAc+6kjp+2vJCba40d5jI7/cOwl32pELSfvPuDrX6DqxyPT2ZLZY14psQO
         bx5rY74SVqj0037r7Wrp1UHubIUBsARY7RCiBpNHoQR7RLuVS0qLAt18FKm+zXN+KG3e
         1rN80x8YlGrMB0XlTpmD6Cp6ArtyBY+NqeNnAhL++ytVKktIJT1qdk9veMMaOssTi6Nn
         HFxysg8UbvH4aXMZvYWkfPRSqUySB25WbJ9Uplcw1hk1KGfgi0VcDipqjOApOWfmjNpZ
         ncJahfuaZa6dVqvBVNLHj8tZFisjCP9gwg2SgIqpVOfKHXe4zMfoEMRgCUihvq9RmiSO
         viGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l2AOa6LaXD7R2CSaV+AZv9J5bTJBrp6bO6iv+Ax2ktE=;
        b=HZGIDamB1OYBtHU+2jxtWcu12g5LQ7748jwn6e3lfj1G6+DlzPAku9iQgBJUAc+OtD
         XOE/btUcneTkVP2iFMaYwyTIDlsygIJQ44+DUh/DlVkGtYaJzUs2zBbXU9q6qh87nHDS
         oRWi3HxPcJhDHG2x8sn+dTQ8P5kiX63QGvYmCCuK7mJXw9V6fHhuO0b1YTM83OnLWxU0
         8qEvKyO9lZoxCRdjAxokSyjriFG+ts2bJ2DsokYZID6RiyWTcdsofA5HScZVpdTRkA/G
         I8uNqurOsOeaI1K9MoJ+YrBNoOTmencLo4FQ2fRvBO3wEd1WSKElnnd+uhaf+SzyrNOF
         rWng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EpzjcATf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l2AOa6LaXD7R2CSaV+AZv9J5bTJBrp6bO6iv+Ax2ktE=;
        b=mxcRE3rrZi8BBRnsmAf2Z2LfTwRpMgSxvbVUeW+NvmCSp88lQfEGs54zJAJ3uc2AH4
         cyQRe88PblyARrdd0INCMHoStx7issFtSg0baw3vQl+SUaGVuFTypi50zdgMIGCEnm3f
         zcmN5LxutpKnSs+YMRObS+hCOYsbUZA7ruN1dFWPqe1Yz1KQjCV8Ehjv9VpojIoW7Fkb
         hl6fzELmGweQV442WFF+vILkF0FrGaWwO8Mo1jcjt6pOynuk/QfI9I1+JghmpfNuo7ha
         yxdCGffHDsiDlzsUWhDdHbY199hjF60DLvuLBObgVuW8F+BUlgm2O067/V3p+1hePuVp
         +RmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l2AOa6LaXD7R2CSaV+AZv9J5bTJBrp6bO6iv+Ax2ktE=;
        b=Uzhht8YR5/nnJPogOF5uA+h/sgTujolBKEldol7zAC/DZ0i+Lb+N8WRs4djwU0+nzA
         j7I0hvgbYRsIO2k3zR+sysqo24abM48rD2VWFNgxUdxWChBwEvuuQMpgIHPPbYpDebt5
         JkhVqKVX1TS7k2+rbMax/jgmrDqFtAYWIDaae0lOQKdku8rvnwRqYhjT8wemqitAonYu
         sIK2zwzh9RPYULN0NobOewn+8ajyhFCfKpCDqtul99AgTB/OykfFVJlfsIB3l1d2BhPs
         M6pjA7DT1GIxNc7hEUGwxzIuK1Tx5Nbf4qn2IGsI0kEAgAyrZKGLE0F1FQ8cbJmL94ux
         ZHJg==
X-Gm-Message-State: AOAM532ZDVqs3fONlOzz55nBSUQ7VA8yDvQ3673S/KDzxgpUx2qR0xm7
	DkSKofLU4dsbZtpysZ0uuPw=
X-Google-Smtp-Source: ABdhPJye5v2IR1FYk2K+FU8Z67tjZQOk8yZrb6NLfFBq9Ofko3QX1pKSVdhB/Ol4MtYuB35ZUASbKw==
X-Received: by 2002:a92:5898:: with SMTP id z24mr24643360ilf.242.1593118501509;
        Thu, 25 Jun 2020 13:55:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5b18:: with SMTP id v24ls1427223ioh.10.gmail; Thu, 25
 Jun 2020 13:55:01 -0700 (PDT)
X-Received: by 2002:a6b:6b18:: with SMTP id g24mr24362ioc.8.1593118501236;
        Thu, 25 Jun 2020 13:55:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593118501; cv=none;
        d=google.com; s=arc-20160816;
        b=q35wY5eon5plM3r7F9um4pD+LhhtGwXNM8rW6dAIyG+BYfWhC11jvsZPKwQwR4QyJZ
         fPBXrRrYJWvUui6GMTzdBxLn78ukU105xKkmuQ1BeTdzxHHg5JEK3EQ3EAIROVVYxyiY
         9ij/m0CV2HJyVCo5RfPRrNROrylZKj/0XcWhGLyRZKMWZ/U/473cDnWIskWDqt2JuOQf
         feHJgFO78KQelP/Fbo7J+saJTKCdZIKVqNQSv2IEJEoCYQyehh/AspBqdwVCIWKop5vr
         N7/qmwCZyB+UnLhyR5G+ry4bV1QVGtAkaF47CmoofEsUFrJGmeHRs1prFdZ5hn4TZWcg
         jZbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HCV92AuRvbw80BHFaZCrTSuoE9qKbEHrDwHHj8qVbjk=;
        b=tWmXKyLlGYW2sPiXb41VpCQAZge46GCgiFgHIrq+w20/VmLTrW4Ykd7bfdZFVSzIHY
         bwA3EdW6FzRw2qRUcTwu3F66sKsFKNgBbRZsDCUntbCPn8ymWfDOBvqxFhNvtDNEM2ct
         bT8b+t9phSC6GDF+x3jDa6OVlUKiAzi787pWqgn8HtIawaCKnP3YnmQYQ18uCYXwo5i8
         hZGZ9NSd6ufQ0shkXOKGnlwZ1N+H9S9W8UGrUSafRAbSchObVBo8v1dmfs08j2a0Isxp
         iP2eGE4cTBmE+J6WGhGgcTnEVfDVzEV0GLwsnDnvv7maGtpcmNq9B+T3OTQePbkynAj6
         kOTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EpzjcATf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c7si1463453ilf.2.2020.06.25.13.55.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:55:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id k71so446824pje.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:55:01 -0700 (PDT)
X-Received: by 2002:a17:902:ab8d:: with SMTP id f13mr23724588plr.119.1593118500279;
 Thu, 25 Jun 2020 13:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
In-Reply-To: <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Jun 2020 13:54:48 -0700
Message-ID: <CAKwvOdmToWTaiaw0iX56FLeezW30k3S=pZLf97N2Ta7zJkSL0w@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, mhelsley@vmware.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EpzjcATf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Thu, Jun 25, 2020 at 1:02 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Jun 25, 2020 at 09:15:03AM -0700, Sami Tolvanen wrote:
> > On Thu, Jun 25, 2020 at 09:45:30AM +0200, Peter Zijlstra wrote:
>
> > > At least for x86_64 I can do a really quick take for a recordmcount pass
> > > in objtool, but I suppose you also need this for ARM64 ?
> >
> > Sure, sounds good. arm64 uses -fpatchable-function-entry with clang, so we
> > don't need recordmcount there.
>
> This is on top of my local pile:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git master
>
> which notably includes the static_call series.
>
> Not boot tested, but it generates the required sections and they look
> more or less as expected, ymmv.
>
> ---
>  arch/x86/Kconfig              |  1 -
>  scripts/Makefile.build        |  3 ++
>  scripts/link-vmlinux.sh       |  2 +-
>  tools/objtool/builtin-check.c |  9 ++---
>  tools/objtool/builtin.h       |  2 +-
>  tools/objtool/check.c         | 81 +++++++++++++++++++++++++++++++++++++++++++
>  tools/objtool/check.h         |  1 +
>  tools/objtool/objtool.h       |  1 +
>  8 files changed, 91 insertions(+), 9 deletions(-)
>
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index a291823f3f26..189575c12434 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -174,7 +174,6 @@ config X86
>         select HAVE_EXIT_THREAD
>         select HAVE_FAST_GUP
>         select HAVE_FENTRY                      if X86_64 || DYNAMIC_FTRACE
> -       select HAVE_FTRACE_MCOUNT_RECORD
>         select HAVE_FUNCTION_GRAPH_TRACER
>         select HAVE_FUNCTION_TRACER
>         select HAVE_GCC_PLUGINS
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 2e8810b7e5ed..c774befc57da 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -227,6 +227,9 @@ endif
>  ifdef CONFIG_X86_SMAP
>    objtool_args += --uaccess
>  endif
> +ifdef CONFIG_DYNAMIC_FTRACE
> +  objtool_args += --mcount
> +endif
>
>  # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
>  # 'OBJECT_FILES_NON_STANDARD_foo.o := 'y': skip objtool checking for a file
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 92dd745906f4..00c6e4f28a1a 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -60,7 +60,7 @@ objtool_link()
>         local objtoolopt;
>
>         if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
> -               objtoolopt="check"
> +               objtoolopt="check --vmlinux"
>                 if [ -z "${CONFIG_FRAME_POINTER}" ]; then
>                         objtoolopt="${objtoolopt} --no-fp"
>                 fi
> diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
> index 4896c5a89702..a6c3a3fba67d 100644
> --- a/tools/objtool/builtin-check.c
> +++ b/tools/objtool/builtin-check.c
> @@ -18,7 +18,7 @@
>  #include "builtin.h"
>  #include "objtool.h"
>
> -bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu;
> +bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu, mcount;
>
>  static const char * const check_usage[] = {
>         "objtool check [<options>] file.o",
> @@ -36,12 +36,13 @@ const struct option check_options[] = {
>         OPT_BOOLEAN('d', "duplicate", &validate_dup, "duplicate validation for vmlinux.o"),
>         OPT_BOOLEAN('l', "vmlinux", &vmlinux, "vmlinux.o validation"),
>         OPT_BOOLEAN('F', "fpu", &fpu, "validate FPU context"),
> +       OPT_BOOLEAN('M', "mcount", &mcount, "generate __mcount_loc"),
>         OPT_END(),
>  };
>
>  int cmd_check(int argc, const char **argv)
>  {
> -       const char *objname, *s;
> +       const char *objname;
>
>         argc = parse_options(argc, argv, check_options, check_usage, 0);
>
> @@ -50,9 +51,5 @@ int cmd_check(int argc, const char **argv)
>
>         objname = argv[0];
>
> -       s = strstr(objname, "vmlinux.o");
> -       if (s && !s[9])
> -               vmlinux = true;
> -
>         return check(objname, false);
>  }
> diff --git a/tools/objtool/builtin.h b/tools/objtool/builtin.h
> index 7158e09d4cc9..b51d883ec245 100644
> --- a/tools/objtool/builtin.h
> +++ b/tools/objtool/builtin.h
> @@ -8,7 +8,7 @@
>  #include <subcmd/parse-options.h>
>
>  extern const struct option check_options[];
> -extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu;
> +extern bool no_fp, no_unreachable, retpoline, module, backtrace, uaccess, stats, validate_dup, vmlinux, fpu, mcount;
>
>  extern int cmd_check(int argc, const char **argv);
>  extern int cmd_orc(int argc, const char **argv);
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index 6647a8d1545b..ee99566bdae9 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -533,6 +533,65 @@ static int create_static_call_sections(struct objtool_file *file)
>         return 0;
>  }
>
> +static int create_mcount_loc_sections(struct objtool_file *file)
> +{
> +       struct section *sec, *reloc_sec;
> +       struct reloc *reloc;
> +       unsigned long *loc;
> +       struct instruction *insn;
> +       int idx;
> +
> +       sec = find_section_by_name(file->elf, "__mcount_loc");
> +       if (sec) {
> +               INIT_LIST_HEAD(&file->mcount_loc_list);
> +               WARN("file already has __mcount_loc section, skipping");
> +               return 0;
> +       }
> +
> +       if (list_empty(&file->mcount_loc_list))
> +               return 0;
> +
> +       idx = 0;
> +       list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node)
> +               idx++;
> +
> +       sec = elf_create_section(file->elf, "__mcount_loc", 0, sizeof(unsigned long), idx);
> +       if (!sec)
> +               return -1;
> +
> +       reloc_sec = elf_create_reloc_section(file->elf, sec, SHT_RELA);
> +       if (!reloc_sec)
> +               return -1;
> +
> +       idx = 0;
> +       list_for_each_entry(insn, &file->mcount_loc_list, mcount_loc_node) {
> +
> +               loc = (unsigned long *)sec->data->d_buf + idx;
> +               memset(loc, 0, sizeof(unsigned long));
> +
> +               reloc = malloc(sizeof(*reloc));
> +               if (!reloc) {
> +                       perror("malloc");
> +                       return -1;
> +               }
> +               memset(reloc, 0, sizeof(*reloc));

calloc(1, sizeof(*reloc))?

> +
> +               reloc->sym = insn->sec->sym;
> +               reloc->addend = insn->offset;
> +               reloc->type = R_X86_64_64;
> +               reloc->offset = idx * sizeof(unsigned long);
> +               reloc->sec = reloc_sec;
> +               elf_add_reloc(file->elf, reloc);
> +
> +               idx++;
> +       }
> +
> +       if (elf_rebuild_reloc_section(file->elf, reloc_sec))
> +               return -1;
> +
> +       return 0;
> +}
> +
>  /*
>   * Warnings shouldn't be reported for ignored functions.
>   */
> @@ -892,6 +951,22 @@ static int add_call_destinations(struct objtool_file *file)
>                         insn->type = INSN_NOP;
>                 }
>
> +               if (mcount && !strcmp(insn->call_dest->name, "__fentry__")) {
> +                       if (reloc) {
> +                               reloc->type = R_NONE;
> +                               elf_write_reloc(file->elf, reloc);
> +                       }
> +
> +                       elf_write_insn(file->elf, insn->sec,
> +                                      insn->offset, insn->len,
> +                                      arch_nop_insn(insn->len));
> +
> +                       insn->type = INSN_NOP;
> +
> +                       list_add_tail(&insn->mcount_loc_node,
> +                                     &file->mcount_loc_list);
> +               }
> +
>                 /*
>                  * Whatever stack impact regular CALLs have, should be undone
>                  * by the RETURN of the called function.
> @@ -3004,6 +3079,7 @@ int check(const char *_objname, bool orc)
>         INIT_LIST_HEAD(&file.insn_list);
>         hash_init(file.insn_hash);
>         INIT_LIST_HEAD(&file.static_call_list);
> +       INIT_LIST_HEAD(&file.mcount_loc_list);
>         file.c_file = !vmlinux && find_section_by_name(file.elf, ".comment");
>         file.ignore_unreachables = no_unreachable;
>         file.hints = false;
> @@ -3056,6 +3132,11 @@ int check(const char *_objname, bool orc)
>                 goto out;
>         warnings += ret;
>
> +       ret = create_mcount_loc_sections(&file);
> +       if (ret < 0)
> +               goto out;
> +       warnings += ret;
> +
>         if (orc) {
>                 ret = create_orc(&file);
>                 if (ret < 0)
> diff --git a/tools/objtool/check.h b/tools/objtool/check.h
> index cd95fca0d237..01f11b5da5dd 100644
> --- a/tools/objtool/check.h
> +++ b/tools/objtool/check.h
> @@ -24,6 +24,7 @@ struct instruction {
>         struct list_head list;
>         struct hlist_node hash;
>         struct list_head static_call_node;
> +       struct list_head mcount_loc_node;
>         struct section *sec;
>         unsigned long offset;
>         unsigned int len;
> diff --git a/tools/objtool/objtool.h b/tools/objtool/objtool.h
> index 9a7cd0b88bd8..f604b22d22cc 100644
> --- a/tools/objtool/objtool.h
> +++ b/tools/objtool/objtool.h
> @@ -17,6 +17,7 @@ struct objtool_file {
>         struct list_head insn_list;
>         DECLARE_HASHTABLE(insn_hash, 20);
>         struct list_head static_call_list;
> +       struct list_head mcount_loc_list;
>         bool ignore_unreachables, c_file, hints, rodata;
>  };
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmToWTaiaw0iX56FLeezW30k3S%3DpZLf97N2Ta7zJkSL0w%40mail.gmail.com.
