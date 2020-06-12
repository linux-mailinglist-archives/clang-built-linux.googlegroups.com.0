Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIXJR73QKGQEDUOONOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 615F01F7E75
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 23:33:23 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id o4sf7358034ilc.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 14:33:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591997602; cv=pass;
        d=google.com; s=arc-20160816;
        b=ny7uj5YDHdf9gWX46ChiIPhaUo+Tkhr6U2me0z2LcqN3/oaV3HSasyzF9Tf+i6WsyR
         mXjIpdDHpg6D8PZZtV5zC5WxQPouqAIQLklBXp6ZgxDO7dGacFILKt9pC5zMCUL6WwG3
         oUAyg6503iTnjfrkPRzBreEUq7/HuJiRWENNubkkWcXIcI6QBnsgZ6sDDkypZLqXJ0ZT
         r4cgBaD5NsKvKF8G7W4HNJSx59JVIjEEHZ3PjaFTTC9+gVvB7apQhFfFSb69mp5JFH9g
         EtqrZ61wjAuULiU84fQdq7NVD08oH8kqkVGpDXQOr7gEF9AVpU3jmTEc1skK2dGwPwqo
         iDVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1kCt2dv7vNm/5Fh5LWIC9U6ssr9TWQhzISBepztA2ac=;
        b=TQtQ1wbxs6paRJmTSNdi2SGDSxW/GZOAexoOC5AL0lpsUahk0i5QwKOUkPief0osi/
         Jy1s5gJRoxsF8WZDfbUEtBLJYh2u7hs0OCMrHIu0RLDPrqPS5HE5NSiOK0ho6qF95vTk
         wUMcG3/4kGwCzfZW2L1H+d40j76h0OLgf+rDOPPDbLQm86Ch9sFbr97gwfY5kfHIZd89
         hebsgspPw8AqqTkjmzzSVnTejofKlOy1TiOLwYhIhxKklNCrFQi/fVif3ezDaXEDzL4S
         P4mPgIzkqB0rG07YrUTULeKi65yjhPgA0uHGLiX0i1qOob0jfU3tTt04O3Fe1G7M3QjS
         AXBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rbkQ2oj9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1kCt2dv7vNm/5Fh5LWIC9U6ssr9TWQhzISBepztA2ac=;
        b=Z5lwowuYcdS+vQ38bSttqAVyQlCM28lqqSyBQWr0oLS2UDjdpxA88CGUygcGZgLb3S
         rzLgAbP+3UBpkbyHMWdVHf+Ixx7Il2cnVkXa5txbrgZWcfrwzsN2zIaIW5EY6VuphPuX
         T6fJxk+OTCpjLmpyqVcCRe2CRDWtHeiKFrzvNIVJOraJ28ufGQp2Dqio35OZ4J+MDpzN
         5LzlarASHdlee1HVyHjMCdmPXrv62UWDgBVf1Kt+O5KvqOxQDOhFRauKIplphm0YRIe9
         Cj+PWxPgcLB2Qtpic7okTLRqFrmSoxGwe0qvlFqhi02NGaYDaTy9b9LyeHnOUzY3KXMz
         i3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1kCt2dv7vNm/5Fh5LWIC9U6ssr9TWQhzISBepztA2ac=;
        b=ZnUeCNtlyyNc26XKVgd5T7kStloo+YBJZu2vCFdBGuJ7468eWE3OftGjUAGI70/GHD
         6BctPj+DmmYsv3B8uCgg3bduTk+G+MT/j9q+NUpZ4eaQO03EMz/UL9ukwdbrw8xtXh1F
         rfeRBsMzyZE/I36MJ7yNf4rB+7K8cgCxp+0ZZTTx4ZYoKmClRkLvcmNRddt02CGdwvqi
         8HXjUZ6sKYBuD55MX0uMvn78ftLq79ndIRVwf9iFj7e9G8abGh548bev4AyH2FnDG03D
         VJ8FA0RIcAsHcAb6KOx02qIPoMOi+7Q24EXcwLacBx5PemyF3URi1Y5t1bH+hI4arwQP
         jMoQ==
X-Gm-Message-State: AOAM530s2qyoV5xiUq2uaYsUfKdRQQPJCXoFrih0b2YCmLW7KgXmVyYm
	1ANUevVLRIVE2cvPFbad4NE=
X-Google-Smtp-Source: ABdhPJyEfS+Q8RoYAovCSd901lfRVKiveFQgL+E3LwX8yx7eEhAAGCdC5nmxCVdPd0gMWhkiUXOvsQ==
X-Received: by 2002:a92:d306:: with SMTP id x6mr15130036ila.240.1591997602164;
        Fri, 12 Jun 2020 14:33:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3007:: with SMTP id q7ls980428jaq.4.gmail; Fri, 12 Jun
 2020 14:33:21 -0700 (PDT)
X-Received: by 2002:a02:1c4a:: with SMTP id c71mr10334821jac.142.1591997601759;
        Fri, 12 Jun 2020 14:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591997601; cv=none;
        d=google.com; s=arc-20160816;
        b=N1S4ZYD49TO/Zqec3RtryIN2Id+py5GmWM03ethUj7CNrFHt9Y9pzJaKQdGsqt4nKk
         LkPrSeGzq2puypp1HiSasp9i3m+t+zcSV2xmDewb1UEQkt+JLaAXxRuUvL0HEhKozlw9
         9wcaCpLsGxMT6WKNVEnOh9mcYf/sf0rNQxN5EvSyYK6sAMj+MkfgQhx50RvY3tGkWPH8
         Cb1w2o9j0B4xreivCLxHP57Uafo7f3+w9lbmRfgQjX4/dY1LBuQbLfKJ3DU0zUKNbxuO
         vTevUGKxSolD/wLibPmR73YO6s/62qyFuBlnN9rif+j0sqOD90cnCzoBqiWibpZ9qECf
         pjGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0GLuAsGyzw8XHhb9/Fo63Z5vxlJgDAQ39CGDhGwS054=;
        b=LKeLW1eE4osctQLMFYZP11Cx36skCTBFDMsw5PPcP6H6SxUEzBp5NbB6VhaixHDvdH
         U31g688e4GkJK8eeG/bLs7PPzk9PPdPXLPFklvJXiQsWbLB+6S7ta7BCddxK1JZGIvvl
         BXH4FVbsNb+4BRO9msGFOgZ5L2bvJpPdByJjcsQpYz7re40uxe+MIhhGx2CDWZzoClaF
         BREDLLY7dhQy8P7qS3Ck8VyrZq539x3HMtfgphpy5JU03FIGaQIIFlKVSktsMkauBpSb
         3Ye7ij2AENSgUglWSKkpDwoCMvgsbRkvYweTAALSYZzN/jr+wkPc8wtLdmq7ZekVALWR
         6fyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rbkQ2oj9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z11si520705ilq.5.2020.06.12.14.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 14:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b5so4899502pfp.9
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jun 2020 14:33:21 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr12942397pgh.263.1591997600747;
 Fri, 12 Jun 2020 14:33:20 -0700 (PDT)
MIME-Version: 1.0
References: <49YBKY13Szz9sT4@ozlabs.org> <20200611224355.71174-1-ndesaulniers@google.com>
 <20200611235256.GL31009@gate.crashing.org>
In-Reply-To: <20200611235256.GL31009@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jun 2020 14:33:09 -0700
Message-ID: <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using
 'asm goto'
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michael Ellerman <patch-notifications@ellerman.id.au>, 
	Christophe Leroy <christophe.leroy@c-s.fr>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	LKML <linux-kernel@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rbkQ2oj9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Jun 11, 2020 at 4:53 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Thu, Jun 11, 2020 at 03:43:55PM -0700, Nick Desaulniers wrote:
> > Segher, Cristophe, I suspect Clang is missing support for the %L and %U
> > output templates [1].
>
> The arch/powerpc kernel first used the %U output modifier in 0c176fa80fdf
> (from 2016), and %L in b8b572e1015f (2008).  include/asm-ppc (and ppc64)
> have had %U since 2005 (1da177e4c3f4), and %L as well (0c541b4406a6).

Thanks for all the references.  So it looks like we should have failed
sooner, if we didn't support those. Hmm...

> > Can you please point me to documentation/unit tests/source for
> > these so that I can figure out what they should be doing, and look into
> > implementing them in Clang?
>
> The PowerPC part of
> https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Const=
raints
> (sorry, no anchor) documents %U.

I thought those were constraints, not output templates?  Oh,
    The asm statement must also use %U<opno> as a placeholder for the
    =E2=80=9Cupdate=E2=80=9D flag in the corresponding load or store instru=
ction.
got it.

>
> Traditionally the source code is the documentation for this.  The code
> here starts with the comment
>       /* Write second word of DImode or DFmode reference.  Works on regis=
ter
>          or non-indexed memory only.  */
> (which is very out-of-date itself, it works fine for e.g. TImode as well,
> but alas).
>
> Unit tests are completely unsuitable for most compiler things like this.

What? No, surely one may write tests for output operands.  Grepping
for `%L` in gcc/ was less fun than I was hoping.

>
> The source code is gcc/config/rs6000/rs6000.c, easiest is to search for
> 'L' (with those quotes).  Function print_operand.
>
> HtH,

Yes, perfect, thank you so much!  So it looks like LLVM does not yet
handle %L properly for memory operands.
https://bugs.llvm.org/show_bug.cgi?id=3D46186#c4
It's neat to see how this is implemented in GCC (and how many aren't
implemented in LLVM, yikes :( ).  For reference, this is implemented
in PPCAsmPrinter::PrintAsmOperand() and
PPCAsmPrinter::PrintAsmMemoryOperand() in
llvm/lib/Target/PowerPC/PPCAsmPrinter.cpp.  GCC switches first on the
modifier characters, then the operand type. LLVM dispatches on operand
type, then modifier.  When I was looking into LLVM's AsmPrinter class,
I was surprised to see it's basically an assembler that just has
complex logic to just do a bunch of prints, so it makes sense to see
that pattern in GCC literally calling printf.  Not drastically
different than my first toy compiler
https://nickdesaulniers.github.io/blog/2015/05/25/interpreter-compiler-jit/
(looking back at that post now knowing what relocations are, I feel I
should probably add a note that that's a problem that's being solved
there.  Didn't know it at the time).

Some things I don't understand from PPC parlance is the "mode"
(preinc, predec, premodify) and small data operands?

IIUC the bug report correctly, it looks like LLVM is failing for the
__put_user_asm2_goto case for -m32.  A simple reproducer:
https://godbolt.org/z/jBBF9b

void foo(long long in, long long* out) {
asm volatile(
  "stw%X1 %0, %1\n\t"
  "stw%X1 %L0, %L1"
  ::"r"(in), "m"(*out));
}
prints (in GCC):
foo:
  stw 3, 0(5)
  stw 4, 4(5)
  blr
(first time looking at ppc assembler, seems constants and registers
are not as easy to distinguish,
https://developer.ibm.com/technologies/linux/articles/l-ppc/ say "Get
used to it." LOL, ok).
so that's "store word from register 3 into dereference of register 5
plus 0, then store word from register 4 into dereference of register 5
plus 4?"  Guessing the ppc32 abi is ILP32 putting long long's into two
separate registers?
Seems easy to implement in LLVM (short of those modes/small data operands).
https://reviews.llvm.org/D81767
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG%3Dqw1F5Ogv8rw%40m=
ail.gmail.com.
