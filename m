Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBMHKU2OAMGQEVYPIUUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C9D6401FA
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Dec 2022 09:20:01 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id c187-20020a1c35c4000000b003cfee3c91cdsf2135850wma.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Dec 2022 00:20:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669969201; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIJvy4C+awPDFQmAYWIPpuLkaihL3/llUFteEagnu/ls3k0lIl2wyxuwM5i0KJkQPh
         Bsbf0gvftApRI/gjvOrkzFt9zTq0BjNBs2K/5V/wlao0hfOBcYO1+Te1opmJ3IWzSGIm
         6mYT0hFq05PQYo12RUNsbwQRFnUAvooFZVX1BPXNjWNb3xUib9pqAYvKha+kVgQ1Ul9u
         2ClVA8nxns/uMdg4j86JMQXt2LSDm2ZIMKJTuiUh3g3hJ1jsRyxmu5dml3VmURS2Ot9x
         9P91cVfvBOQK18y58DFLOlgXF7KnebbQtayXegNBchwRfi+8jEJ/ebqHB2661nsCLKU6
         GpUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=DS6BIkWo8YAsGm2wKsZtGBi2nXGCPXY3lod9bnA8gjY=;
        b=HuGDy16+aSuq41qjOEb38gHgYl0IucJPNdDYm7x96vKT6qupOVbglKhpBOanjKM2PE
         CoAzxe9KfWhZyAWii8ahwTe5SqmVYSEsy6tCf8iLWiAqfj/5M1vwo7234p2m3QKi4Zag
         2cxb3lgFCzu8iWRvWYjX7xT+Ra2AcgIQSr57/qtXfNQLJm5ZEfGVi38xkoPoV4IQ9x4n
         HBtqF+HlDXxENJshNFheyxvezu7jmmBhiazMebfQjQKDIKI4nbD6NEUfFdgFkv+fZypk
         YZdOXlTz4AFrnWj2dWseVrLJoTHuVWXkf+3FFl9ajde4TQb0B6xfg63/j0tVwWzjgp8T
         zAmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PEJWzUXY;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DS6BIkWo8YAsGm2wKsZtGBi2nXGCPXY3lod9bnA8gjY=;
        b=qTlPIFhbTMUlx1SuJODPMXfCJeYvO6P1og1Xu37DyeBMvspwruFMF9hHkLm4LYd+xH
         PEAIKKjpiFcnSfb+Cz7aFxEuVfQsOJEuAeQTz/6bIAizLrBmwm6Ke56ZSTdmTGBX00j/
         4NPZgtkzegGfT1daYaRWb9MQn0QOVQery4S30KODMeZF1YNALLAlFpg59vQ4GeL8P4Q8
         l8Bhh6uPn+4V3ibOl2MrqTNZHom8vz5juTJcBCV92Xz6+AgKlvHxER1mbxVf/MLauocd
         0yR6+yXvSyBiyrlptXVOtUz+kIpQrxCp2bdkwWXWjT2yCB6GuteXeBOabFUStVh7BWzr
         a3+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DS6BIkWo8YAsGm2wKsZtGBi2nXGCPXY3lod9bnA8gjY=;
        b=MffeZNeVuoRSzXuUiwA5XnDgxpnHzVgH3duDmiMTnsymIAAkRdaoL6krE8B2yUXcYz
         YZmrJmRthh/YuoiFB8nh8Wks2LIy6uzQiiJSDY8vi/xsqSORwBezw6xQrpErHjSWngqI
         fw+3FhUiEjSGx3f4E3Wppz8g1DJwcCRhcn8ZAPyOu5k9f6+ZyBxt+YmcEVRlccXabQ35
         9sZFhaMmDDCMYznTQkj46eRlbBwLWG8Nkr/yBvID4t0GFgLJ8h650g+4GRgf0GFAqpGg
         CDGD/6O+4Jc3JWoEXfUDAFLx33CTwoAwk+tYGBTw0wH6mHbo2IYgdwFfbvz9sNTfhIDj
         h2+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANoB5pkiZJjoY08a7pV6x5aZ4jr5HMhPMnFJkt1L7g2ohGLH+VHmj39o
	g9gs4FYq++H+9FrBytBOqVo=
X-Google-Smtp-Source: AA0mqf6GIx1LqgolExMffV1kK8E+RliQk4sHrcSv9TmHbbwUn9fJruUiN5t5381bFij/XMxLhIwocA==
X-Received: by 2002:adf:d0c2:0:b0:242:a37:7abf with SMTP id z2-20020adfd0c2000000b002420a377abfmr20535076wrh.190.1669969200761;
        Fri, 02 Dec 2022 00:20:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc9a:0:b0:3cf:afd2:ab84 with SMTP id p26-20020a7bcc9a000000b003cfafd2ab84ls2379086wma.2.-pod-control-gmail;
 Fri, 02 Dec 2022 00:19:59 -0800 (PST)
X-Received: by 2002:a05:600c:3393:b0:3cf:81f3:1e4a with SMTP id o19-20020a05600c339300b003cf81f31e4amr56055691wmp.4.1669969199407;
        Fri, 02 Dec 2022 00:19:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669969199; cv=none;
        d=google.com; s=arc-20160816;
        b=x4HE2/0WVfLvvMFhVIxTZUzORv6FMl5FUt0rYhgn7Prf2v8YffeN23hpvZhHDOrKhF
         LOerbLqJDGFY/VmGbqeY1fQLn6x4KjihIpqHYnj7iRcONahCD/bvjkyJnMNKGB0h+UIw
         ufhbOvPODebCag+dIlnIEYlzIDhcBCrpe6xAB17z/XCnRLtrH6t7owu7UY6Ju6V4pBuv
         j9zsEwQuZlpcLE3OYq+6x2ZVUT7lutdUUFjDuXCjGbCV7LKxxW1OTzs/M+L8ab+bLv9W
         igAnGZAVQyzDwUSpY7hQslbC7rsstRvMyj1EYVw7Ch+UWIoXwiFXdcR1TiOsjaxJFINo
         BH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y+MCSa8tYY6rstq38VkpTxMsMuBdTOVGNlwp/gQphBQ=;
        b=XbnuFWkNQlQ4iMf+YTV/SqGU2gjn5CdcTjMSsHDduQZ5bRaxx8isLdcWdvSg7TMtez
         aga6/wfg0dM35Sq30qu8SL5H5RNTW05ZvlpSgmYo0s/9hE0C++9hfnNBoD4HE2cnMYB1
         Ihx3v4JreCp/d2NNoOk9StCypj8M5SADpP47tbL+aLvQTY5qH3cQrJ00nA8AOnUTkuxy
         9Cq/f9cxj2B/y6G2GTVizNPBgeHy1p4WnvoFTzciKlOP/IXL9TLNPfN3ijenER4aHSW6
         ntcTtTmnqxl95FyAcANq0cG0jxefgBxUTr+CPCUXEfkZ26Du7jAxv0fJt/cSEMEFFXwO
         CuYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PEJWzUXY;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id p42-20020a05600c1daa00b003c9a5e8adc5si459928wms.1.2022.12.02.00.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Dec 2022 00:19:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E6404B80955
	for <clang-built-linux@googlegroups.com>; Fri,  2 Dec 2022 08:19:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19BF4C4314B
	for <clang-built-linux@googlegroups.com>; Fri,  2 Dec 2022 08:19:57 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id g12so6307054lfh.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Dec 2022 00:19:56 -0800 (PST)
X-Received: by 2002:a05:6512:3e2a:b0:4ab:534b:1b2c with SMTP id
 i42-20020a0565123e2a00b004ab534b1b2cmr18339569lfv.426.1669969194978; Fri, 02
 Dec 2022 00:19:54 -0800 (PST)
MIME-Version: 1.0
References: <20221130225614.1594256-14-heiko@sntech.de> <mhng-3dd5efb0-e79f-4978-89a8-f9ec02004a7e@palmer-ri-x1c9a>
In-Reply-To: <mhng-3dd5efb0-e79f-4978-89a8-f9ec02004a7e@palmer-ri-x1c9a>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 2 Dec 2022 09:19:43 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFHuSzZ2X3+Z0wj6BZ5YrPwaaQrHJWGc48A-C2M8A=5Mw@mail.gmail.com>
Message-ID: <CAMj1kXFHuSzZ2X3+Z0wj6BZ5YrPwaaQrHJWGc48A-C2M8A=5Mw@mail.gmail.com>
Subject: Re: [PATCH v3 13/14] RISC-V: add infrastructure to allow different
 str* implementations
To: Palmer Dabbelt <palmer@dabbelt.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: heiko@sntech.de, Ard Biesheuvel <aardb@kernel.org>, linux-riscv@lists.infradead.org, 
	christoph.muellner@vrull.eu, prabhakar.csengg@gmail.com, 
	Conor Dooley <conor@kernel.org>, philipp.tomsich@vrull.eu, ajones@ventanamicro.com, 
	emil.renner.berthing@canonical.com, linux-efi@vger.kernel.org, 
	heiko.stuebner@vrull.eu, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PEJWzUXY;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:4601:e00::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
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

On Fri, 2 Dec 2022 at 05:08, Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Wed, 30 Nov 2022 14:56:13 PST (-0800), heiko@sntech.de wrote:
> > From: Heiko Stuebner <heiko.stuebner@vrull.eu>
> >
> > Depending on supported extensions on specific RISC-V cores,
> > optimized str* functions might make sense.
> >
> > This adds basic infrastructure to allow patching the function calls
> > via alternatives later on.
> >
> > The main idea is to have the core str* functions be inline functions
> > which then call the most optimized variant and this call then be
> > replaced via alternatives.
> >
> > The big advantage is that we don't need additional calls.
> > Though we need to duplicate the generic functions as the main code
> > expects either itself or the architecture to provide the str* functions.
> >
> > The added *_generic functions are done in assembler (taken from
> > disassembling the main-kernel functions for now) to allow us to control
> > the used registers.
> >
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@vrull.eu>
> > ---
> >  arch/riscv/Makefile             |  3 ++
> >  arch/riscv/include/asm/string.h | 66 +++++++++++++++++++++++++++++++++
> >  arch/riscv/kernel/image-vars.h  |  6 +--
> >  arch/riscv/lib/Makefile         |  3 ++
> >  arch/riscv/lib/strcmp.S         | 38 +++++++++++++++++++
> >  arch/riscv/lib/strlen.S         | 29 +++++++++++++++
> >  arch/riscv/lib/strncmp.S        | 41 ++++++++++++++++++++
> >  7 files changed, 183 insertions(+), 3 deletions(-)
> >  create mode 100644 arch/riscv/lib/strcmp.S
> >  create mode 100644 arch/riscv/lib/strlen.S
> >  create mode 100644 arch/riscv/lib/strncmp.S
> >
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index 0d13b597cb55..581e4370c2a6 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -80,6 +80,9 @@ ifeq ($(CONFIG_PERF_EVENTS),y)
> >          KBUILD_CFLAGS += -fno-omit-frame-pointer
> >  endif
> >
> > +# strchr is special case, as gcc might want to call its own strlen from there
> > +KBUILD_CFLAGS += -fno-builtin-strlen -fno-builtin-strcmp -fno-builtin-strncmp -fno-builtin-strchr
>
> I was poking around Ard's comment on that -DRISCV_EFI to try and figure
> out what it was doing, but I think this is the bigger issue.  I haven't
> benchmarked anything, but my guess is that turning off support for these
> builtin routines will outweigh the faster outline implementations of
> these routines.  I don't have any benchmarks to prove that, but in
> general compilers are pretty smart about handling these builtin routines
> in the common cases and deferring that to runtime is probably the wrong
> option.
>

Indeed. Case in point:

riscv64-linux-gnugcc -O -S -o - -xc - <<<"int foo() { return strlen(\"bar\"); }"

gives me

li a0,3
ret

whereas this

riscv64-linux-gnu-gcc -fno-builtin-strlen -O -S -o - -xc - <<<"int
foo() { return strlen(\"bar\"); }"

gives me

.LC0:
  .string "bar"
  .text
  .align 1
  .globl foo
  .type foo, @function
foo:
  addi sp,sp,-16
  sd ra,8(sp)
  lla a0,.LC0
  call strlen@plt
  ld ra,8(sp)
  addi sp,sp,16
  jr ra

Other str* and mem* routines are optimized in similar ways when
dealing with small sizes or compile time constants.

Also, I'd recommend avoiding redefining these prototypes to static
inline as it deviates from the official prototypes in the C library.

> I haven't looked all that closely at this patch set.  Is there some
> reason it's necessary to disable the builtin handling?  If not then my
> guess is it's better to leave that enabled unless some benchmarks show
> otherwise (and I don't know of any Zb* hardware to test against).
>

Why not have a single generic version of each in the binary with a
patchable NOP at the start, and patch that to an optimized version
when available? That way. all of the early code can remain as is.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFHuSzZ2X3%2BZ0wj6BZ5YrPwaaQrHJWGc48A-C2M8A%3D5Mw%40mail.gmail.com.
