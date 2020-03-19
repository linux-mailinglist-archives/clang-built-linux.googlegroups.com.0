Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB3P5ZPZQKGQEHI2T7DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE3A18ABF9
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 06:11:10 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id g8sf1118532pgr.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 22:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584594669; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NE0gr4IVDao451fRWQ/WpvM/VgrORWMsa3NBRjzJY/58naUVJJUr1AWiYBt1DuY+j
         c6acTIq96QG98jVXfe+xeLFeVeKskidF8vJ3OrgAXX96ml7iCS/QD78zTd7eLtAdKEG2
         8CxyZohe8rA/7EpXYYnCNAZC8zE8FnP5gjoqajW2FhllC+nLKAaVWfVg2qfo8XVnegLw
         gXQFxp/dKg83ve+j9Y3r3/90CPomLtVVxVVPlu0OiiW2DDdPbpwu+/oEEFH6b0USj+HC
         vg5zHkn6IuOMqZoMA5rJ/u4O7L6FwVxV/sSjgpqTx3pBwpQW/TebAShKcawmyzHvckRW
         eSSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0jylIxKzlKiVLDQJEB33gJrsjWcqjyGv1PI/19wZaKQ=;
        b=resFopxlJXDU7dzJlAgdiRpiM16kkiZoAUMJ91+0N0CSEiw5tgasBdVByQJ9/GDW4O
         2X3oi+1b8SN0EEUrzse4QAO7gj9preDTZqgpa63QOm0OFz32oU4ddRqpkASAzoNwQsyV
         OArGIC5gPLphtQog9odFMc9eeqt9YEw3y520dPr7hE82kOFuZmYCK7fMd3y0oJTSzLS0
         9h9yIsea6XzHFUTeQMbtuYxwtFkn5N+Gz3pWOn1m9bffAWXaV9urshSpS3+lDxhre5Sb
         wAJFJJSIKsOVjPyounBweDEPmtpID7Uv7wjQy8Wq3Iz8aiQPxX4776wt/n+OZQxmhbjG
         vuig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRG+EFCl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jylIxKzlKiVLDQJEB33gJrsjWcqjyGv1PI/19wZaKQ=;
        b=s90+LfsoewScoof+MACFByAB1729RjSpZbFktklQR8DDBt07JiZ9Z2JwvugYDTsjw2
         nhDWNA3U6bp8aKd/0JDr2/U/HJBIJEM3zbHUBZIah0uqBiQDKCoBU7DwvceXqX6tWydu
         UA06bzxQySfPA5efrNGhRHVOC8ZqNUwAfRQoGwf51o623r+wO2l6xqko4OCtCrEKcQd4
         4et6hgDsW9X7mVPtdizeycVfXNWb8m8NdkRYTrhtI2/0hOHCgq7NfXlShEoNQfgA1nym
         odIGO6KV7jo1Vh7BKqpo4chlW9gGrnm83poAorhc0FtS7ltytgai1d/ugxHs6gLPabn0
         IDFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jylIxKzlKiVLDQJEB33gJrsjWcqjyGv1PI/19wZaKQ=;
        b=cb71EX8iD5/0dDqo7U28seTvTno7yCsKB7DzHpEhls0o/Mwo5+hboQxzo/ZBIL8CkE
         H6bOHHpOfdX7q8hkmgS2D9/fF/esNULIZyHpbSuPbVgkPKUtqXTyHF5eTAgj1HYmytpt
         f19w36Gm2pu25ZKAIIrvkbo90mK2dU2hBApf3OjCXnGH9gWGs7R82wmep8w2D1m/GE8e
         Zo0dMgtUaKH0tME8FPajuyQx39oKmeyjp79YIxqUxS8vI8SymqQzmN94I4AVhuapLKQS
         W1zvvGH/iV4f+lcPC4DaqX4s3yMb4zfZ4n/4ZrubVHStOhPWFmNqxQaWQhObCLPQbpAO
         h4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jylIxKzlKiVLDQJEB33gJrsjWcqjyGv1PI/19wZaKQ=;
        b=T2O9ssRQFvjBf0lOGvGx2jnkdNnd+PbRDrmy/a2oE8wnYJBh0KqT3h/gVTjzDbXOl5
         m/DUMhYpjmXAgX3wXebofx6WGPd423yj9MD9SGKOw8A7VphJcwGo7kVa6zl7AC58HLIY
         SYkAjuN9ChGcvah5n2HAn4xldOgwNBqyq9Sdy6e4MRSNoo+ExkU3+U4kkyRZmnPpNP4T
         fw3amHHSBmq4eKuPBQcB7CWA78Rykg0qvGnNJLvaRtwBXzS8JZ2QI9KjxE703S6gSQTa
         H1aRycG8oYz69Zqs1ZJKIz2f86QVhI8GauAJI0e4o22dPvWOhdVb/VqnmAG18Zfi6C3L
         9IwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0tYYlOBsH96tgAFHiFzvNhcrU81WC73SZXaLXlLtR9OYnL7qf0
	2b7ERJi9jllqBRMAu3v73pU=
X-Google-Smtp-Source: ADFU+vu7LpDmEX/FvmV5PlXjyxOk0lx2k8MS6DjVGHIj+54/2AaeK65fhJ1uoJI/B8bJEZ9siSw/CA==
X-Received: by 2002:a63:5506:: with SMTP id j6mr1470772pgb.43.1584594669134;
        Wed, 18 Mar 2020 22:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls1048130pge.4.gmail; Wed, 18 Mar
 2020 22:11:08 -0700 (PDT)
X-Received: by 2002:a62:ce8b:: with SMTP id y133mr2063310pfg.172.1584594668618;
        Wed, 18 Mar 2020 22:11:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584594668; cv=none;
        d=google.com; s=arc-20160816;
        b=bEz360nykQPj42xAYZ87jLPkiREB20J5E7If33bWJrJY/Aupb8l8pBupODXxXMh1yB
         T/meQxr7ea3x8jc36hjvCddlJArBSUdFshI0H+TBStifKae7UlQErTcWKBPB24OdvcVw
         RvUNOvZhGLofHBxh3289K20WESx3mFRYHPkK1uXLedK6tF1DW4dMUlY2nDQUEUKxk67F
         5D8Vba4vitG7B+49hHQ19oGrDiO81V0kKbi3xtFi/5YG3K6XmXFoutZZpfLv7eT+SmD5
         ewNfiVwLTml2wteOdmFX5B785Ejgl446IZ3M7Pm4DikrUQ8ZONORd0vzcHIyRKAFdEGi
         AHNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CifRFPL7G9zhduy+K2WKQkbWfN5Wt24clk5Fo4/QKqA=;
        b=y5+8hZIqc5b0d3hKMaaWa3xRBzQKB2jTTzpGWmawm92Zp+vk0txLtCBZBlVeJx78c5
         914dbTEOGa0gkLynVOQFqP9Q8UbHKT0rd68PMxP9TdhvwXM3w7LbPDwp5TuN3jQpzSKT
         47R5ELKTnKL0PzBBeQaH/NFG1Sk2dj19a4Ma0YI2UwyPcmx++/y4Tj9ERrVxNqJeILVv
         UNXNJGvryFNfHyV/KDsz+ADFgsrat/Mp2uzc+PjMT0nTwthBDviMQJHD6l/wA5M8rfIB
         PKJrfZ2YkDPV9bTo/yA70c3vyEa7fRiaOi8j9hggaehABdFDaFSNwNIWK2EZQOzNcVV/
         vXag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRG+EFCl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id x12si92078plv.3.2020.03.18.22.11.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 22:11:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id z8so758594qto.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 22:11:08 -0700 (PDT)
X-Received: by 2002:ac8:3f62:: with SMTP id w31mr1138688qtk.171.1584594667691;
 Wed, 18 Mar 2020 22:11:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200318222746.173648-1-maskray@google.com>
In-Reply-To: <20200318222746.173648-1-maskray@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 18 Mar 2020 22:10:56 -0700
Message-ID: <CAEf4BzYJ2+y2SkjJME6f0duhG0GTo1BWqs5qdLK=F4=wBhxc9w@mail.gmail.com>
Subject: Re: [PATCH bpf-next v6] bpf: Support llvm-objcopy for vmlinux BTF
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Stanislav Fomichev <sdf@google.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	"David S . Miller" <davem@davemloft.net>, Kees Cook <keescook@chromium.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, "Naveen N . Rao" <naveen.n.rao@linux.vnet.ibm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GRG+EFCl;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Mar 18, 2020 at 3:27 PM Fangrui Song <maskray@google.com> wrote:
>
> Simplify gen_btf logic to make it work with llvm-objcopy. The existing
> 'file format' and 'architecture' parsing logic is brittle and does not
> work with llvm-objcopy/llvm-objdump.
> 'file format' output of llvm-objdump>=11 will match GNU objdump, but
> 'architecture' (bfdarch) may not.
>
> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag
> because it is part of vmlinux image used for introspection. C code can
> reference the section via linker script defined __start_BTF and
> __stop_BTF. This fixes a small problem that previous .BTF had the
> SHF_WRITE flag (objcopy -I binary -O elf* synthesized .data).
>
> Additionally, `objcopy -I binary` synthesized symbols
> _binary__btf_vmlinux_bin_start and _binary__btf_vmlinux_bin_stop (not
> used elsewhere) are replaced with more commonplace __start_BTF and
> __stop_BTF.
>
> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> does not intend to support, because this is error-prone.
>
> The output section description .BTF in include/asm-generic/vmlinux.lds.h
> avoids potential subtle orphan section placement issues and suppresses
> --orphan-handling=warn warnings.
>
> v6:
> - drop llvm-objdump from the title. We don't run objdump now
> - delete unused local variables: bin_arch, bin_format and bin_file
> - mention in the comment that lld does not allow an ET_EXEC input
> - rename BTF back to .BTF . The section name is assumed by bpftool
> - add output section description to include/asm-generic/vmlinux.lds.h
> - mention cb0cc635c7a9 ("powerpc: Include .BTF section")
>
> v5:
> - rebase on top of bpf-next/master
> - rename .BTF to BTF
>
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Fixes: cb0cc635c7a9 ("powerpc: Include .BTF section")
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Stanislav Fomichev <sdf@google.com>
> Tested-by: Stanislav Fomichev <sdf@google.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> ---

Thanks for detailed commit message and comments in the script, that's
very helpful. Looks good to me, I've tested with my local setup and
everything works across bpftool, selftests and my private BTF tool,
which doesn't use libbpf.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Tested-by: Andrii Nakryiko <andriin@fb.com>

>  arch/powerpc/kernel/vmlinux.lds.S |  6 ------
>  include/asm-generic/vmlinux.lds.h | 15 +++++++++++++++
>  kernel/bpf/btf.c                  |  9 ++++-----
>  kernel/bpf/sysfs_btf.c            | 11 +++++------
>  scripts/link-vmlinux.sh           | 24 ++++++++++--------------
>  5 files changed, 34 insertions(+), 31 deletions(-)

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYJ2%2By2SkjJME6f0duhG0GTo1BWqs5qdLK%3DF4%3DwBhxc9w%40mail.gmail.com.
