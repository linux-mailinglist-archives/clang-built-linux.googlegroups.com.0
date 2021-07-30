Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBI5NSCEAMGQE3D5WVHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E983DBBC4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:11:33 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h38-20020a9d14290000b02904ceed859e6esf3873678oth.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:11:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627657892; cv=pass;
        d=google.com; s=arc-20160816;
        b=uYEHojim3k3sBNe30/YzeB7J4ItrFxamFbLwU+9rbDZElpsAiJTV1cweIWAj1YfUvs
         ZXVkjfBt6IV4u/gFU4HdJwoUzGMwhOAhmyWgeAI/Tf89gfDY1ieBeCNQlZTJGYlpPSds
         RSEropBJ/vnFUmoWYHMasHOScAtl+yv2k+rtbK8/WFZXLePrrPKb1r8o2kWT+IS9RzXy
         dHuwZWdqf9XTyqZFsY4CDT0f9UYCyQrgx/96VGaWbBGyxPkiFthqhAAwK7j9MCdQOWbM
         dOn751ZFK5nuVcoDBiZnyPLa4p10zhqy9Mye8qXqmSums7c6dv8QSXgHgmf2qRkjVOXw
         VRaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=6RLiEWmtweExnn0qpjbQ0biKB3Ell6tKLtYP6x/Ze0U=;
        b=fqkdYXiJ3gjFgaJ86JVUltEcdbMgrySqe1A2FGHUqVdCGxgIppwreCKgRd+ZLBGs1G
         GoTHmIen/oqf7G7amTUtN+arwrJhwDXdLjjTzVI08YYKOq0JODWWA75VKsj+hbbzqF/5
         y3W57F2TFlu63+3k8ZTGhFm/plwZLfIzlzVoWLH9qSaeVhrC4ur7TqUO7RZXAxCXkg9s
         drlyuFzP0wG/Jqqfe/uxxxR2EJp4NO3aoOf9Tu/+C1T0WIMZ1jGFJMtCNBv8sweS/coP
         wO+7lEi5UuJSm7JJ06rbg0lCfuLtWxO+crfC//3HjQybQcxL7PdiKXFEUV1x+ZoLh5mS
         bjlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vzdxAYX3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6RLiEWmtweExnn0qpjbQ0biKB3Ell6tKLtYP6x/Ze0U=;
        b=RL+vpejY9bS0tnDWB3EfO4yWtDunXyvW5DYOK+cM1OccWR1ch3KY73/5bDk4GIC4gY
         u6n43exnGgmx4BoMqVwN6em7OhjnkP5km3BhEvk9HbCbfxQpAVjZiRWb3+ZM1ObacNRx
         s1wMZp0EVABW6T4/R/Wh1PNCfkxTTi7S2O9+esRNTYAUE40+B8CYM0R9hAZW4yEFIbSu
         OuWia34Zd7cP6xxVB9Qj2XoFxQ7ZBDgCMJQjL1YkKGj+1ALXuuVuAckQ/HapgsFIAsHz
         VvuTMEEpMWwHba7Bttq9LlQkErp0RsouYb60lXkG2OKNNeb5sZLWd3A9pcRrUNazEoER
         X1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6RLiEWmtweExnn0qpjbQ0biKB3Ell6tKLtYP6x/Ze0U=;
        b=rfl5LL4dh2uRhAHhjcymAgrfZPj5dzVowM82cDylU5iO7MQNc+KtNhwULuod4/aebX
         hIdB6bBwTW8P1a7y6uklBNb5VjkqTHzMRPA/vv5heA3bzlIYG5xn3EQupogWV5t/SO3I
         7qfSqVPFGtXdlaIzkdyG8jjVrHkYP/GAG1IhG4TR+H7c59cHFUiJXpM6XMi+WqjLxQkD
         NC0PnOhNbiTVcoz+hvbopszBXlj+ZBT20BhQ8ItFKNNcTUW0m79UP9RCciGZ+bTrCi9k
         nHTBL16XLV8UaPZat00UlAU/aNsVAuZnEM6jwfPmJYwhf7k9GD7Nd2LTJZbIRQVzhb8T
         tOAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cGrJ9rQlTQXk0Tk+XiOBQquKGfWhjdcSAKAZc006dj3h6A2Bn
	p7csToPenv/AhravtRm8JrU=
X-Google-Smtp-Source: ABdhPJxS+jBewfuXsmfg7ncNrbIRfmEzBVKLeXy3CShf224ORMMozSWVde54zhayzDFDdk/pVWo7nQ==
X-Received: by 2002:a05:6830:280f:: with SMTP id w15mr2411534otu.155.1627657891988;
        Fri, 30 Jul 2021 08:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls459510oic.3.gmail; Fri, 30 Jul
 2021 08:11:31 -0700 (PDT)
X-Received: by 2002:a05:6808:28d:: with SMTP id z13mr2061923oic.68.1627657891592;
        Fri, 30 Jul 2021 08:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627657891; cv=none;
        d=google.com; s=arc-20160816;
        b=JrwRy7qilkmAajFphIjljSVE7JS1cOIAmgabXqv/ifIvz4BSNAWOlmTHpvsxFl2NWS
         FnPGUdROJSZFoQkwOKhZw11ukPY1r1TFbMeBuefOiDu7XhsjFLLvs6ORN/GmCCwnhldP
         rfrfoItQlUC6M5idJW6K4fL0/ilZxrtQ9H1U6VcVwYq1lJauShSkHf9Y0Md/fwjVLBb1
         mbAk61i9EMvdj91c4Z6NVLf1XrkS+Vg2Khy2SVciavMu8N7ub87LhhSbsAGXV8780ifR
         2iGYEISxSBYvuWJw6P8vVsOhHRX1MnBtq0o2m5if33X5xNqhl+mAwvSrG3GpqEnGKSww
         GbXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=v5MHFz9EK8kI2OcDF+0Y/+e/itS2l+ggYopCMqJkDFY=;
        b=ZnTjPVlH+j6UT5CIBp1Z63tOOOgBE9UgKsmz7nxh5CAkBrlkkktwUIOAAlkBXp3wj3
         W1cRsa3L+96tqa5oCWwb/ufntq5kRNkpaMx298CRcTY/LwfoZBBS2UVVOU/JcOjO3hsK
         1Ndmy85n+K9WVCuoR/UgQVmlWXJi6FsMiJMFLdcrNLZushYPJgWzutgi6335WSKns+9w
         CdkJ6a81ItxdA+NJRsxiHQnETD3MroWquk7/e+QxqaeQzFUzFFKCapToThtUw0cvHZkF
         ySXBg1QA6KflAtRUqtCIDy9LTXgDHX9XImg9KuEp/MMjzZPiuyRycbiA8NAgyNm/QaVg
         5Q2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vzdxAYX3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id d15si77960oiw.0.2021.07.30.08.11.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 08:11:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 16UFAti6001819
	for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 00:10:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 16UFAti6001819
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id b1-20020a17090a8001b029017700de3903so12263364pjn.1
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 08:10:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:26d0:b029:32d:7d40:5859 with SMTP id
 p16-20020a056a0026d0b029032d7d405859mr3049890pfw.76.1627657855216; Fri, 30
 Jul 2021 08:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
 <20210729165039.23896-3-ndesaulniers@google.com> <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
In-Reply-To: <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 31 Jul 2021 00:10:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQvGK6pKXpE9=P-BXK5GHmLLVJRnxq84VOVz_1bm72FBg@mail.gmail.com>
Message-ID: <CAK7LNAQvGK6pKXpE9=P-BXK5GHmLLVJRnxq84VOVz_1bm72FBg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vzdxAYX3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Jul 30, 2021 at 6:00 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> I realized that the title of this commit is not really right. We are not
> inferring CROSS_COMPILE, we are inferring '--target='.
>
> On 7/29/2021 9:50 AM, Nick Desaulniers wrote:
> > We get constant feedback that the command line invocation of make is too
> > long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> > target triple, or is an absolute path outside of $PATH, but it's mostly
> > redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
>
> I feel like the beginning of this needs a little work.
>
> 1. "...invocation of make is too long when compiling with LLVM" would be
> a little more accurate.
>
> 2. "it's mostly redundant for a given SRCARCH" is not quite true in my
> eyes. For example, you could have aarch64-linux-, aarch64-elf-, or
> aarch64-linux-gnu-, and to my knowledge, all of these can compile a
> working Linux kernel. Again, saying "with LLVM", even mentioning its
> multitargeted nature, might make it a little more accurate to the casual
> passerby.
>
> > (normalized for a few different targets).
> >
> > If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> > KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
> >
> > Previously, we'd cross compile via:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> > Now:
> > $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >
> > For native builds (not involving cross compilation) we now explicitly
> > specify a target triple rather than rely on the implicit host triple.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> > Suggested-by: Arnd Bergmann <arnd@kernel.org>
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> > Changes v2 -> v3:
> > * Drop check/requirement for LLVM=1, as per Masahiro.
> > * Change oneliner from LLVM=1 LLVM_IAS=1 to CC=clang LLVM_IAS=1.
> > * Don't carry forward Nathan's RB/TB tags. :( Sorry Nathan, but thank
> >    you for testing+reviewing v2.
> > * Update wording of docs slightly.
> >
> > Changes v1 -> v2:
> > * Fix typos in commit message as per Geert and Masahiro.
> > * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
> >    Masahiro. Add his sugguested by tag.
> > * change commit oneline from 'drop' to 'infer.'
> > * Add detail about explicit host --target and relationship of ARCH to
> >    SRCARCH, as per Masahiro.
> >
> > Changes RFC -> v1:
> > * Rebase onto linux-kbuild/for-next
> > * Keep full target triples since missing the gnueabi suffix messes up
> >    32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
> >    drop references to arm64.
> > * Flush out TODOS.
> > * Add note about -EL/-EB, -m32/-m64.
> > * Add note to Documentation/.
> >
> >   Documentation/kbuild/llvm.rst |  6 ++++++
> >   scripts/Makefile.clang        | 32 ++++++++++++++++++++++++++++++--
> >   2 files changed, 36 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index b18401d2ba82..aef1587fc09b 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -46,6 +46,12 @@ example: ::
> >
> >       clang --target=aarch64-linux-gnu foo.c
> >
> > +When both ``CC=clang`` (set via ``LLVM=1``) and ``LLVM_IAS=1`` are used,
> > +``CROSS_COMPILE`` becomes unnecessary and can be inferred from ``ARCH``.
>
> I am not a fan of this sentence because it implies that something like
> 'make ARCH=arm64 CC=clang LLVM_IAS=1' will work fine, which is not true.
> We still need CROSS_COMPILE for binutils in this configuration.


Agree.  That sentence is misleading, and moreover, it is wrong.



>
> CROSS_COMPILE provides the value for '--target=' and the prefix for the
> GNU tools such as ld, objcopy, and readelf. I think this direction is a
> regression because we are just talking about the first use of
> CROSS_COMPILE rather than the second at the same time.
>
> With LLVM=1 LLVM_IAS=1, we KNOW that the user will be using all LLVM
> tools. Sure, they are free to override LD, OBJCOPY, READELF, etc with
> the GNU variants but they have to provide the prefix because LLVM=1
> overrides the $(CROSS_COMPILE)<tool> assignments so it is irrelevant to
> us. As Masahiro mentioned, the user is free to individually specify all
> the tools by their individual variables such as LD=ld.lld BUT at that
> point, the user should be aware of what they are doing and specify
> CROSS_COMPILE.
>
> While I understand that the LLVM=1 LLVM_IAS=1 case works perfectly fine
> with this series, I am of the belief that making it work for CC=clang
> LLVM_IAS=1 is a mistake because there is no way for that configuration
> to work for cross compiling without CROSS_COMPILE.



LLVM=1 is a too strong requirement.


LLVM=1 switches not only target tools
(CC=clang, LD=ld.lld, AR=llvm-ar...)
but also host tools
(HOSTCC=clang, HOSTCXX=g++...).

Obviously host-tools are don't-care here.



Specifying the target tools individually, as in

   make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
     OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf

... is a perfectly correct command that
makes CROSS_COMPILE unnecessary.

There is no reason to stop inferring --target for this case.


The problem is NOT removing the LLVM=1 check
but the wrong documentation.


Let's write a precise document.

For example, the following document exactly
explains what is happening in the code,
and is still clear.




diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..a0d862bd73ac 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -63,6 +63,26 @@ They can be enabled individually. The full list of
the parameters: ::
 Currently, the integrated assembler is disabled by default. You can pass
 ``LLVM_IAS=1`` to enable it.

+
+Omitting CROSS_COMPILE
+----------------------
+
+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
+
+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
+``--prefix=<path>`` to search for the back-end GNU assembler.
+
+If CROSS_COMPILE is not specified, the ``--target=<triple>`` is inferred from
+``ARCH``.
+
+It means, if you use only LLVM tools, `CROSS_COMPILE`` becomes unnecessary.
+
+For example, to cross-compile the arm64 kernel::
+
+       ARCH=arm64 make LLVM=1 LLVM_IAS=1
+
+
 Supported Architectures
 -----------------------





BTW, I noticed LLVM_IAS=1 check is also unneeded
for the same reason.
So, it should go away.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQvGK6pKXpE9%3DP-BXK5GHmLLVJRnxq84VOVz_1bm72FBg%40mail.gmail.com.
