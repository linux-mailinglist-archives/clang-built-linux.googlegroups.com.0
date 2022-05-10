Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMMZ5CJQMGQEGIIZOIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD15520E31
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 May 2022 08:56:50 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id i16-20020a170902cf1000b001540b6a09e3sf9490674plg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 May 2022 23:56:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652165809; cv=pass;
        d=google.com; s=arc-20160816;
        b=ON8HBXjfO96HQ/Ozy8kNIai35y0oYgnbxW0u5WmMi5urYl5c8Gw9bYLeMlRm85JaTz
         sTKap1JGoipgEE7oBGCiYkRYShTI4WGgxm8y5CNDZPTlBnrCWzQtX+eIbXOKy9X2O9DH
         ht8ASrWk2h3itzenZlQxGXd2Hp3OPvtMV5ZzDhyIbCztU8TvcsLA0OjAk2u8Tk41XjFW
         GTUtnv4fqmjdEQpOSyTOj+QevBVyX7immg1BXvxMvw67hrjSXof13L0I5XrmZCRDT7F/
         wotUf8hsibkFIHkxMIfRePC5V5NEZ6TorAzlF32FG8fm2DQdNJMr6tTbMqq16C9sbfa8
         guiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=bx1hGqGo9lsSGorFgP9vI5Ers5y3j04kyIhLQbKwyaU=;
        b=exkPyxBavcYdyIZs3UolVAoSx9sAkZ5NcpTKFTgLbu4sC1W1hJu6M9dU8RZTA829Hd
         gE4nPHVqkx2KvqvIMieJGC2YppPH4brczGeod75ld7NNmaQEIQN86fskHfkn08LF6wRo
         WqzWwPQsmwbKTG8Cfw7z9RwpvftZRdPED/7DMIAHNBvoTC/QPpwT7CyOhGZB5FOR+lqo
         gUMI4fzFqbGNbkAapgx9TWbKV/PJ0T8nMq9DWQxC7Mv4DW6vU1dGQW1R8zO77vtyacEC
         Ys0uv14Jy40WgzDcAh20AMU0AWL0ZDRkuo2a3K6n3NyGnbXam/8p6G+szY5Op+aKGLUC
         YZZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wCwaSRXE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bx1hGqGo9lsSGorFgP9vI5Ers5y3j04kyIhLQbKwyaU=;
        b=owtkO+FNOYV1+8WJzVfeAlanLC0h/NsvHGB+TN+iw1HP0SOTaQ1nQLSNX3pJ7Wjs7K
         oD8IBs5rMo5pXaOn8d2y3+8NNXy+jn1UskmsCkQBD3kKbTncgxI492z3RfdhpyERU6YV
         QWMUo6Djd/4zJErszw5XJku407bWz+QcaWhpfniVH6B329s+oHkghvZ3Cp2E2sHYjs5y
         eqELmJXqI1hBiTQm7dOS7ccBf1Ma6OdBqcA01q9ty+IqmAyZ7II088rq1RSb8XTIpN7l
         7jOKqeTfVHcwA9bTnwjr8vTEJV6jeIFSKdi4/430xZ18fVBA8GpTISVJlhMJ/Bthky1O
         bIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bx1hGqGo9lsSGorFgP9vI5Ers5y3j04kyIhLQbKwyaU=;
        b=lUQtp7bPATsAJQPmRNkVGuRxK0y1df0hTOkW3vvqphfVjMOObUTneBISczwRo6DJpS
         V5wMSv+hXj4HyqqEoa0XAPSCGWnsEFv35E5sky18QVKflDBdqnf+oT4CS+/ytMC+vSYV
         13OnY35KLHlJo8AN/4zzWf8la31nLVatWZV+LZxlI0cQYeFecMyVK9/lN35I+k/Qupn8
         H7Vi6PomDloPgKjML/39Bk2dv9pMS2i+VEQA9VD+o9PtMeEG+UFrj/z9jtvk9WivqzQ3
         G2Bi+1x9JhshM1MEmEmg72OHhCOGUOC0ZMZcrzH3vP5FvlgWDK0LW0R69M5nJbP93oCZ
         5M5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BwlwVBxBqxqZcRvv2tdwH5cr/DgFskhe23A47umEh9x3CMfIq
	f7jJUKl707Ajx9+FyZr3TMA=
X-Google-Smtp-Source: ABdhPJwLXjMkdXnJXA0AHGq5mOAtut137wcIYYqDKeZfWPZjWFdimAvPP2chPoj/8otpAAxMybwa/Q==
X-Received: by 2002:a05:6a00:4091:b0:510:71b1:963e with SMTP id bw17-20020a056a00409100b0051071b1963emr19390097pfb.31.1652165809297;
        Mon, 09 May 2022 23:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb83:b0:15e:c891:d419 with SMTP id
 q3-20020a170902eb8300b0015ec891d419ls11332669plg.4.gmail; Mon, 09 May 2022
 23:56:48 -0700 (PDT)
X-Received: by 2002:a17:90a:dc0c:b0:1da:125a:ec84 with SMTP id i12-20020a17090adc0c00b001da125aec84mr21506257pjv.137.1652165808676;
        Mon, 09 May 2022 23:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652165808; cv=none;
        d=google.com; s=arc-20160816;
        b=VIBSqQu5yVRcl7FrJoFnr7C8TqU8NbWZfLJTXpjCKBZpu7A8nm++mbx64pMlxzBwQV
         DEug3CW+hr6l0A88ynHf23iEI0o11FZqTbn8Bqz9FgyNvNnC+w6ha51gUXPDnGKlQjtP
         6SIAq8bqjM82sqkCwIC+N3druGfJUbLAhFVX9ruZ+lCrfjWK8TP9FnUWbDPdY/1bck5Z
         85gBtmi1Hsbm3T1EIZj/YGHxCmMN0Vo4cQ4nM6Qd2eTWge2dR8Ntocrzv5sLv90U3BPy
         lou5yY/8nVpas8U8jo2SCAmPKa1XwJb+gf6hsBRsyqVP3dzY02FtZ2E9HeqEa0YVJeSt
         kj6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=fEURvXR77OoRUwAby4ssOCC2y+9cYzZS2BTBBdHY5s4=;
        b=dO7AeQCt+xZS0/d0XIV0BnFV3FPlIxuBvhvTN9pwJmcsiXQAzY7yTmc7/pvv5PTcMF
         tHMkVUlOagvTb68Y/dlMWTqWXBEyDpyePFov6FXpsNuGCPGB6RjhBSc5MQOCzL+4p4/t
         2+z1LWJZE9qNWN31OsWWv9IIS6iv85Zo0VBPn1H4vv0zCNrdqa7nxLOHVJjdQGpEGw8A
         9e73LQ9lvQGT47vVuO9T8qyctVviXuX2+cQaBU5jlN1AIJwidWuMWr2d1IvLJROYNKOR
         XhJlRAtNWOS+NUijBSMGR69QxLyjU5OPxIHtoO/wPnZdOdKWL1vxD5g5m1JEfndyitk/
         9nYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=wCwaSRXE;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id v20-20020a170902e8d400b0015eb393d68esi123332plg.0.2022.05.09.23.56.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 May 2022 23:56:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 24A6uWKQ006912
	for <clang-built-linux@googlegroups.com>; Tue, 10 May 2022 15:56:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 24A6uWKQ006912
X-Nifty-SrcIP: [209.85.216.43]
Received: by mail-pj1-f43.google.com with SMTP id a15-20020a17090ad80f00b001dc2e23ad84so1259618pjv.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 May 2022 23:56:33 -0700 (PDT)
X-Received: by 2002:a17:90a:e7cd:b0:1dc:74eb:7526 with SMTP id
 kb13-20020a17090ae7cd00b001dc74eb7526mr21753943pjb.144.1652165792292; Mon, 09
 May 2022 23:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org>
 <CAK7LNAQtedww_RiemfTV7Ls=M01iKJhY14G3TiuAg=C3bvJjww@mail.gmail.com> <YnmSCNDBlMMJCbjj@dev-arch.thelio-3990X>
In-Reply-To: <YnmSCNDBlMMJCbjj@dev-arch.thelio-3990X>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 May 2022 15:55:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNATkm+GzqNLgpbh4F+M=U8LU48p2NH9MyqeO6uA_KYJFaQ@mail.gmail.com>
Message-ID: <CAK7LNATkm+GzqNLgpbh4F+M=U8LU48p2NH9MyqeO6uA_KYJFaQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] kbuild: yet another series of cleanups (modpost,
 LTO, MODULE_REL_CRCS, export.h)
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>,
        linux-modules <linux-modules@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=wCwaSRXE;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, May 10, 2022 at 7:13 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Mon, May 09, 2022 at 01:24:33PM +0900, Masahiro Yamada wrote:
> > On Mon, May 9, 2022 at 4:09 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > This is the third batch of cleanups in this development cycle.
> > >
> > > Major changes in v4:
> > >  - Move static EXPORT_SYMBOL check to a script
> > >  - Some refactoring
> > >
> > > Major changes in v3:
> > >
> > >  - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.
> > >
> > > Major changes in v2:
> > >
> > >  - V1 did not work with CONFIG_MODULE_REL_CRCS.
> > >    I fixed this for v2.
> > >
> > >  - Reflect some review comments in v1
> > >
> > >  - Refactor the code more
> > >
> > >  - Avoid too long argument error
> >
> > This series is available at
> > git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> > lto-cleanup-v4
>
> Hi Masahiro,
>
> I checked this out and went to run it through my QEMU tests but I see
> two new errors.
>
> Failure #1:
>
> In file included from scripts/mod/section-check.c:3:
> scripts/mod/modpost.h:15:10: fatal error: 'elfconfig.h' file not found
> #include "elfconfig.h"
>          ^~~~~~~~~~~~~
> 1 error generated.
>
> I was able to get past that with
>
> diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
> index ca739c6c68a1..c33b83bfbcad 100644
> --- a/scripts/mod/Makefile
> +++ b/scripts/mod/Makefile
> @@ -16,7 +16,7 @@ targets += $(devicetable-offsets-file) devicetable-offsets.s
>
>  # dependencies on generated files need to be listed explicitly
>
> -$(obj)/modpost.o $(obj)/file2alias.o $(obj)/sumversion.o: $(obj)/elfconfig.h
> +$(obj)/modpost.o $(obj)/file2alias.o $(obj)/sumversion.o $(obj)/section-check.o: $(obj)/elfconfig.h
>  $(obj)/file2alias.o: $(obj)/$(devicetable-offsets-file)
>

Thanks for testing.


I will slightly refactor the code as follows.




@@ -16,7 +16,7 @@ targets += $(devicetable-offsets-file) devicetable-offsets.s

 # dependencies on generated files need to be listed explicitly

-$(obj)/modpost.o $(obj)/file2alias.o $(obj)/sumversion.o: $(obj)/elfconfig.h
+$(addprefix $(obj)/, $(modpost-objs)): $(obj)/elfconfig.h

 $(obj)/file2alias.o: $(obj)/$(devicetable-offsets-file)

 quiet_cmd_elfconfig = MKELF   $@








>  quiet_cmd_elfconfig = MKELF   $@
>
> Failure #2:
>
>   GEN     .version
>   CHK     include/generated/compile.h
>   GEN     .tmp_initcalls.lds
>   LTO     vmlinux.o
>   OBJTOOL vmlinux.o
>   MODPOST vmlinux.symvers
>   MODINFO modules.builtin.modinfo
>   GEN     modules.builtin
>   LD      .tmp_vmlinux.btf
> ld.lld: error: cannot open .vmlinux.export.o: No such file or directory
>   BTF     .btf.vmlinux.bin.o
> pahole: .tmp_vmlinux.btf: No such file or directory
>   CC      .vmlinux.export.c
>   LD      .tmp_vmlinux.kallsyms1
> ld.lld: error: .btf.vmlinux.bin.o: unknown file type
> make[1]: *** [Makefile:1159: vmlinux] Error 1
>
> I was not really able to see what is going wrong here. Attached is the
> configuration that I ran into this with. If you need any other
> information, please let me know!

Ah, OK.
This is because .vmlinux.export.o is compiled after gen_btf.

I will swap the order in v5.





> Cheers,
> Nathan



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATkm%2BGzqNLgpbh4F%2BM%3DU8LU48p2NH9MyqeO6uA_KYJFaQ%40mail.gmail.com.
