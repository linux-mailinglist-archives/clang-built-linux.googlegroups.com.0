Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLUUSKCAMGQEGZOISTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2880936A320
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 23:14:24 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id u3-20020aa783830000b0290266018a0d61sf8152610pfm.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 14:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619298862; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwd9gxrq6Iaj0IU/ny0BV6V4ZbZXzmNs1yzwlBZ3kQZBQojT8qi8zqgVexP5Urj+sH
         JiiIgY9X64P7As4qtc+OhX7T4qJtyIqMgGovb+DceYvvLfDrDLvKGjH1cf1Gw0UFi0Bd
         R6ChIIN+nTLt8bOWvdVXZdlavx6LNNrjJbCHNEL3fotT8eE23o4WiMxNeWZKdVUdMj+H
         ei9t/V57lt/PEKbXhRWLvraecpmwJvwxZEanCOCSl9oXApHpDos+K3Su50xR3eotcGFe
         fFslnEry4g1Bj8E8zzUKQ4o3dlBrzbQfUsX52GdGV54ix0zYfJCKW55KsPsqBKY7i9Xu
         GaTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=XVRtMmujKGmrAHu1WMEzMgIoxTuELBPUZNGTOHngTdo=;
        b=ohkWp29z6hfmaSjGh7CczpWnBT41S63ndiSH8gagYJu5qMpxSXtgz69XUH4mw+oA93
         p2DuBG6sbDb09S1l3tB64BTtl9fdxRr77ZdHxyYoSJZxBmqKHjr74FrOMo1i5/xKsg87
         ABMOjFpVWBmNR8XKwgtpWOu97zK3DRuMwGTGcOYC8Qg6JJuidOO573hVpbRuG6ef8XRF
         g1sPXQPmIXgvXUPeGJVg/4y4QGRkYLk5567RStrZ7yQMXGYwoto+9E1y4gS1eALqoksm
         bX82zyw48RjcXxOlc575ZmH/CoqTJh+kqkXucAynFt8gzrLpIIUsqRkdEjDIqTLCd30E
         MM/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QHcGgY38;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XVRtMmujKGmrAHu1WMEzMgIoxTuELBPUZNGTOHngTdo=;
        b=fFcs95dO75V89TQq9uGwNruIlyiGf6F8MRF7+FB2OfCKrkXPI2VpjlxUqD2p2qH9+H
         8KDAWswOU7WiB8tpRfDBbY9a+KPIRP5a5JQgwRjb/5ju9LjoYRfLghceBNq1RNoNNLrY
         YtX9ci0PNLfAvtwGILUsiPVOB1a6/5QLVfv9hzVu1yX2T18SMf+LjjBiRZaDOXfkfhXn
         inY1bZYTX/nZ/q9R7WnuFYxk533wuKRgxl10u24FsUX9qcT8v0XVfJVLsOpsZR8mJOcD
         yt5do24ZDsE29Uwv9xTEJR+83XDufWWum+3z6uTlpT9F/v5h/S7r35QYoXJfTfoj3h9n
         L4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVRtMmujKGmrAHu1WMEzMgIoxTuELBPUZNGTOHngTdo=;
        b=md31+nsgPCSZpPKbHNVH0SVk2n2YaSzGrym0l0VnoelWxhOAtJW7D2N10PfQyqsV1k
         Jm+UBLrCB9TXTRsNi61h9IPtbVNwYGFGyU9gZFppvSBBmcBel9+txfRLrjr1vvW36hfN
         X6Ju9+qiP4zUCYp2zazKS61R2khiDRRBYwVL0105Djf9dOa2ERnZzECFlj2FZoKJ+eLQ
         NyXqo6s1zCdbgWwTMVPnyrpu2XFJ3V4EWVnFDF95dqVp4A3qxp10bObdeTm9ubR1GlgO
         pkCqNCsqYictM2Xcc/VbtNVtBEyDlQz+Mqs0dhtH2P4eiey5gsnOCy6dJDCqTelv0TsL
         QZXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530L7QCq3Bq5qpj8rrfFq9CtWAzzuQKuNv/s57llcANibgk7Pc/2
	S38HmNOQ7gaOpr3QIoh03zg=
X-Google-Smtp-Source: ABdhPJzakGHU94H6qj86xuHIb6eWmORtT5mnkdfPe94X1tdwrpMZjYDIbKhfrMQ2gLZ49ia7sKAPzg==
X-Received: by 2002:a63:105d:: with SMTP id 29mr10131386pgq.45.1619298862419;
        Sat, 24 Apr 2021 14:14:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls6062712plz.3.gmail; Sat, 24
 Apr 2021 14:14:22 -0700 (PDT)
X-Received: by 2002:a17:902:b683:b029:ed:f0d:5cff with SMTP id c3-20020a170902b683b02900ed0f0d5cffmr847888pls.10.1619298861896;
        Sat, 24 Apr 2021 14:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619298861; cv=none;
        d=google.com; s=arc-20160816;
        b=ZX/e/4OKRYoMdeWXV4Z282viqX78tdKBvfmpbN46LA80cKSSvAC6KoCzfW6lK88+PY
         BJs/83zOtt8nTHmD3keP7NXjC/DzbKgsaMa5myCWwtS/F/BJzJuca9rge70iFZerTJWC
         vnOnJQaIH7xd7jdNlzr8IH9T8kaWl/F5JMAdJE3sIFHZZH87vIqJ+0PfXLklHYxUX0bv
         vR7mPWrcZYK+WDA4q4Up2jz9mLTQuSHi/DzF5EMZVD/6bEOC3i/pl0D2azgPjcWtrUs7
         3xswOOfQ48CdbB1BiWL2ezgq8W7FeeorUpHFClG1HG2+lIig5kkc4o8SbHQ+4u2r42Bt
         2rJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=3OnUjkY5ajv//Bx4vO1T7kFi9gDr5XvlyfkukgBhE8M=;
        b=FWqLgCxBQDXQOdZVKGNN4zxVLe7izLr3uYFafBk5U/IfdN9TtZPndEqGQ6Zd+pURuD
         E/74/PL+5R9NLYF5kGrhCEziKjIvwpSiHQ7O/N0NWlrUVlcs77co33V+Z0LSVK4NGIuK
         nQ/7vIguZBiLBVhCQAE0iM7tetdYJxxW6m6wX/FxeXiXIPtFpIhFzn2Jc3hHSa0F6Ixg
         1z3MpKdKiBOlc8k/mJB1CyToffczRNQQ16NQXCB5getVgUFMzv7ihso9/4+ISUkwWVzS
         KsBmqgU85KeNIHsXSVd4mjndzPv4ZWODhrdyrmJRuzFqgK5lgQWjOyL1eJP3OjorBsWF
         oQaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=QHcGgY38;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id y17si801713plr.4.2021.04.24.14.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Apr 2021 14:14:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 13OLDo7s001725
	for <clang-built-linux@googlegroups.com>; Sun, 25 Apr 2021 06:13:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 13OLDo7s001725
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id b17so546073pgh.7
        for <clang-built-linux@googlegroups.com>; Sat, 24 Apr 2021 14:13:51 -0700 (PDT)
X-Received: by 2002:a63:e1d:: with SMTP id d29mr10258164pgl.175.1619298830397;
 Sat, 24 Apr 2021 14:13:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210422201914.3682494-1-nathan@kernel.org>
In-Reply-To: <20210422201914.3682494-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 25 Apr 2021 06:13:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNATgbzTBCrDaD3HhUQv=W3wLOKq3_iOiKM3CNEB4B=qh6Q@mail.gmail.com>
Message-ID: <CAK7LNATgbzTBCrDaD3HhUQv=W3wLOKq3_iOiKM3CNEB4B=qh6Q@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Add $(KBUILD_HOSTLDFLAGS) to 'has_libelf' test
To: Nathan Chancellor <nathan@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=QHcGgY38;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Apr 23, 2021 at 5:19 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Normally, invocations of $(HOSTCC) include $(KBUILD_HOSTLDFLAGS), which
> in turn includes $(HOSTLDFLAGS), which allows users to pass in their own
> flags when linking. However, the 'has_libelf' test does not, meaning
> that if a user requests a specific linker via HOSTLDFLAGS=-fuse-ld=...,
> it is not respected and the build might error.
>
> For example, if a user building with clang wants to use all of the LLVM
> tools without any GNU tools, they might remove all of the GNU tools from
> their system or PATH then build with
>
> $ make HOSTLDFLAGS=-fuse-ld=lld LLVM=1 LLVM_IAS=1
>
> which says use all of the LLVM tools, the integrated assembler, and
> ld.lld for linking host executables. Without this change, the build will
> error because $(HOSTCC) uses its default linker, rather than the one
> requested via -fuse-ld=..., which is GNU ld in clang's case in a default
> configuration.
>
> error: Cannot generate ORC metadata for CONFIG_UNWINDER_ORC=y, please
> install libelf-dev, libelf-devel or elfutils-libelf-devel
> make[1]: *** [Makefile:1260: prepare-objtool] Error 1
>
> Add $(KBUILD_HOSTLDFLAGS) to the 'has_libelf' test so that the linker
> choice is respected.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/479
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---

I applied this since the MW is opening shortly.

However, I believe the right thing to do is
to kill the pointless check entirely.




>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index bc19584fee59..1535b32c8baa 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1092,7 +1092,7 @@ export mod_sign_cmd
>  HOST_LIBELF_LIBS = $(shell pkg-config libelf --libs 2>/dev/null || echo -lelf)
>
>  has_libelf = $(call try-run,\
> -               echo "int main() {}" | $(HOSTCC) -xc -o /dev/null $(HOST_LIBELF_LIBS) -,1,0)
> +               echo "int main() {}" | $(HOSTCC) $(KBUILD_HOSTLDFLAGS) -xc -o /dev/null $(HOST_LIBELF_LIBS) -,1,0)
>
>  ifdef CONFIG_STACK_VALIDATION
>    ifeq ($(has_libelf),1)
>
> base-commit: bf05bf16c76bb44ab5156223e1e58e26dfe30a88
> --
> 2.31.1.362.g311531c9de
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATgbzTBCrDaD3HhUQv%3DW3wLOKq3_iOiKM3CNEB4B%3Dqh6Q%40mail.gmail.com.
