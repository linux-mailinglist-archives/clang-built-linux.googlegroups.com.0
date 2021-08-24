Return-Path: <clang-built-linux+bncBC6OLHHDVUOBBEFSSKEQMGQEB4QWUAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 450B13F589A
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 09:00:33 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id 5-20020a1c00050000b02902e67111d9f0sf3753875wma.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:00:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629788432; cv=pass;
        d=google.com; s=arc-20160816;
        b=KbwkYDyDBINliItCrIma/46hTeLFRo0UP6WdOnzM3a146ETtu7MhvQOxLguVLe/Xps
         CNh/PfxAwhJiM9VMdCoREfBQR3y4gIuyUahWvsRxBmmEy2YcvO6M9JmiTvlTsWJp3mpQ
         03b5NDsC0oJK5oNZO1ITQVrHqlawlgASWU6OjemOu31NSH5RnP9DcpMd232eCgIrkrZJ
         nt9bvEM2rTwteWijIexPf/jXuvZC6GZFuHp9oWbPhuDsbgUZKxsqPJ1KrkZMf/MV401v
         9BaRt1qxVuYdGjdMsMiL9uSfn3jpAfLK2qVocNUT8NJBPupwaJXd0y4b8CaU/qfYaf4W
         mQEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k20wWElAsWWNC+fwvxrmtxrBiVaxbN0JJDa4vjNDDDI=;
        b=fIuACM4Lx6XWviU+4jGkRX3atW5LutacczGos0cs4quwGR8JKw4txJjn6eUKygmImm
         ufjtipV6hTMlW9ID1u4CKxURMFMAhVRN2DDj1wzAqaaMi2gkUA6iykaag9nL8ZlC2CnF
         Rvcqtw+YSH46Cs2b+gd4PsUkjt+FEkHFE4llywr1PlSHKvb48wZxPZFbQrPyhmirvQ4I
         OLk4j9Bn/CxmJLrYMfaxSzfwrj1BNwF6OarChBzHstaO6gaL4G4grSDR2Bv923zi1H3W
         L0siLiAm5hbudI3ln5BsFla8vh5VsXvH9wd3yHt73mxP97+R5+gzmej2hkRicLlwQnOq
         CiOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNas2w1Y;
       spf=pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=davidgow@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k20wWElAsWWNC+fwvxrmtxrBiVaxbN0JJDa4vjNDDDI=;
        b=SXU2iJjJ+RD5/EIfqiXH840sr6yPHJQVEtu4E5QiW6PV3TYdPSivawURp5rsyQscwR
         6G2NfcMqwzdbn0UXaS605HrC4nC5399pYgKvpwVoSxcEbkGrOxc3iaFO6v0lYDN0ZFLL
         6XrJsakyWwU6/YCWunvePSK8vGEy7w+yNLXd3+uS0uYC622OWhglDa6w3bvw+evkufsB
         K6TqRAjjw6LtJ1fbSAhz7MWost/Pu8UQeWHbHNbJWQqyeNUyY0KcOU2/KhfLGtMe7nY2
         nUeMXvRSDFc6SDAWohtscEH9YJfZCy2piFBzlgKpVSQIT9hwiv1KMlOeYpyObD+y9Tzu
         66cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k20wWElAsWWNC+fwvxrmtxrBiVaxbN0JJDa4vjNDDDI=;
        b=Si9+P+2P91O0NkfqlOacriAFOySQyk0q1kPFECtW/cH8ns1aR/6zeZMmSqc8Brh6Yj
         aXEW8pjyKGS62GsRkyC++T4X45+wFX5c8/D88L7vH3hdYA0hCsMTPkeLpYbv7EVDk0Rq
         WnDwzu6UJkizCp5fWtIahcIJf0cQDbOh66jy0YQBXNSqe988T8SZgFVzDQz9RY3BJvLG
         R7FzGlEwnbf0lINI8Tg3E0J+X1Ix2dlQ7XHZEf+nv/yfjCnEn0lLhojb8s+fmUKioFit
         YBf9vpfb2GGEwNhwB72wsI1PsEInyv2yMVPXNic2N05Jtak+69vAbaGF5o/ux6UAis0j
         XVmA==
X-Gm-Message-State: AOAM532F6RsV7lT/kBvIG4VJO+bK74kG2eUor8B+DKwVIRWUfEeDCQwZ
	0PDSM1jWkFipI6BVRmR3cIs=
X-Google-Smtp-Source: ABdhPJwQkwKG2v9EIgldTgTQcKgQh6QpEpttHChSqhg6Avc2g88deUBBvG+nUElYbDV0tZyB/D+INQ==
X-Received: by 2002:adf:fa4d:: with SMTP id y13mr17337721wrr.417.1629788432257;
        Tue, 24 Aug 2021 00:00:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c2b2:: with SMTP id c18ls657240wmk.2.gmail; Tue, 24 Aug
 2021 00:00:31 -0700 (PDT)
X-Received: by 2002:a7b:ce0f:: with SMTP id m15mr2513084wmc.62.1629788431314;
        Tue, 24 Aug 2021 00:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629788431; cv=none;
        d=google.com; s=arc-20160816;
        b=flya/KgMxdceDk3ETrcJUCFei2SNkWzI0CfnJvcOrc3PFUaYZdlIzZFNeXi6TGzriY
         u1WSx/bXhhI9OpvtqFBydUs0/owd5DCqjbvfkVbokyF/1TL4kcH0X5w41JgS0HJNOH+1
         /wBS19vLVQfv7D6OyRzm0Qp4e/AIc9p1SpnPM2qewxJuq+rUeHT0W0U+QlrYvy8JOrFB
         tPfkKDK8eV4bUOZesyohC+8yaboBWawN0uEifvHm6sI699AmsE8WP6yLDLCFazH37BO+
         Wp0vn8LhXY9bYefCgaVcP5VzOa2rKPipwQbd5unvGQZTxBSNvwxLbpNL8aqIdDyBogJC
         /cCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ICdLCAE9F2d1J4gjoAJ7XKYwkHuUbm1vnXwFQHx40iE=;
        b=ciAZlSehf3+9HSAlWmL7PIjUVrpRHYbX92MQqdiKU+IPM7vCczBa04znvfLycjmXkH
         2EZtsqZYyoFPcFA0gThR61aYrUhGPfeNq4OGamcGDEyIY69khWIFzztV8C/+r71WavAB
         9Wqzb6DPa24z53jdRBmruthaCwk6EZuLR3IUhqGTZ632q/KTpAnXab+xHGo4sVYHG4zT
         5wxRBvJU5bZ5f3Gt4apbpQ1zPZvOajkBD59PYdeU3o3A7LQaaw/ozd/7mKXYGUF8sfNX
         uD2bsBIiUG41PKG0kFr2x42mzN5sq7IA3YyPnhMTJRIXxJnT9wSUndRlNVjnUcAq9ZKE
         +zKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nNas2w1Y;
       spf=pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=davidgow@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id u16si1285022wrg.5.2021.08.24.00.00.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 00:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Received: by mail-wm1-x333.google.com with SMTP id d22-20020a1c1d16000000b002e7777970f0so1054219wmd.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 00:00:31 -0700 (PDT)
X-Received: by 2002:a05:600c:3514:: with SMTP id h20mr2545861wmq.31.1629788430655;
 Tue, 24 Aug 2021 00:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-22-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-22-keescook@chromium.org>
From: "'David Gow' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Aug 2021 15:00:19 +0800
Message-ID: <CABVgOSn=fmUctW_xexDyS_c4G3ee4vGvuJLaanRDQbzQkfAOBQ@mail.gmail.com>
Subject: Re: [PATCH for-next 21/25] lib: Introduce CONFIG_TEST_MEMCPY
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Francis Laniel <laniel_francis@privacyrequired.com>, Bart Van Assche <bvanassche@acm.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux@googlegroups.com, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: davidgow@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nNas2w1Y;       spf=pass
 (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::333
 as permitted sender) smtp.mailfrom=davidgow@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Gow <davidgow@google.com>
Reply-To: David Gow <davidgow@google.com>
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

On Sun, Aug 22, 2021 at 3:56 PM Kees Cook <keescook@chromium.org> wrote:
>
> Before changing anything about memcpy(), memmove(), and memset(), add
> run-time tests to check basic behaviors for any regressions.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

Thanks for adding a KUnit test here: it's great to have better
coverage of some of these basic functions!

There's a name mismatch with the Kconfig entry and the Makefile,
otherwise this looks good and works fine on my machine (under both UML
and qemu/x86_64).

It would be possible to split these tests up further if you wanted,
which could be useful if there's a desire to track the individual
assertion results independently. That's probably what I'd've done, but
It's a matter of personal preference either way, though: the tests
aren't absurdly huge or over-complicated as-is.

Cheers,
-- David

>  MAINTAINERS       |   9 ++
>  lib/Kconfig.debug |  11 ++
>  lib/Makefile      |   1 +
>  lib/test_memcpy.c | 265 ++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 286 insertions(+)
>  create mode 100644 lib/test_memcpy.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6c8be735cc91..e3ffd4bdc24f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7248,6 +7248,15 @@ L:       netdev@vger.kernel.org
>  S:     Maintained
>  F:     drivers/net/ethernet/nvidia/*
>
> +FORTIFY_SOURCE
> +M:     Kees Cook <keescook@chomium.org>
> +L:     linux-hardening@vger.kernel.org
> +S:     Supported
> +F:     include/linux/fortify-string.h
> +F:     lib/test_fortify/*
> +F:     scripts/test_fortify.sh
> +K:     \b__NO_FORTIFY\b
> +

Do you want this to be part of the memcpy() KUnit test commit, or is
it better suited in one of the changes to the actual fortify stuff?

>  FPGA DFL DRIVERS
>  M:     Wu Hao <hao.wu@intel.com>
>  R:     Tom Rix <trix@redhat.com>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 831212722924..9199be57ba2a 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -2467,6 +2467,17 @@ config RATIONAL_KUNIT_TEST
>
>           If unsure, say N.
>
> +config MEMCPY_KUNIT_TEST
> +       tristate "Test memcpy(), memmove(), and memset() functions at runtime" if !KUNIT_ALL_TESTS
> +       depends on KUNIT
> +       default KUNIT_ALL_TESTS
> +       help
> +         Builds unit tests for memcpy(), memmove(), and memset() functions.
> +         For more information on KUnit and unit tests in general please refer
> +         to the KUnit documentation in Documentation/dev-tools/kunit/.
> +
> +         If unsure, say N.
> +
>  config TEST_UDELAY
>         tristate "udelay test driver"
>         help
> diff --git a/lib/Makefile b/lib/Makefile
> index bd17c2bf43e1..8a4c8bdb38a2 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -77,6 +77,7 @@ obj-$(CONFIG_TEST_MIN_HEAP) += test_min_heap.o
>  obj-$(CONFIG_TEST_LKM) += test_module.o
>  obj-$(CONFIG_TEST_VMALLOC) += test_vmalloc.o
>  obj-$(CONFIG_TEST_OVERFLOW) += test_overflow.o
> +obj-$(CONFIG_TEST_MEMCPY) += test_memcpy.o

This doesn't match CONFIG_MEMCPY_KUNIT_TEST above, so the test is
never compiled in.

>  obj-$(CONFIG_TEST_RHASHTABLE) += test_rhashtable.o
>  obj-$(CONFIG_TEST_SORT) += test_sort.o
>  obj-$(CONFIG_TEST_USER_COPY) += test_user_copy.o
> diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
> new file mode 100644
> index 000000000000..ec546cec883e
> --- /dev/null
> +++ b/lib/test_memcpy.c
> @@ -0,0 +1,265 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Test cases for memcpy(), memmove(), and memset().
> + */
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <kunit/test.h>
> +#include <linux/device.h>
> +#include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/mm.h>
> +#include <linux/module.h>
> +#include <linux/overflow.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +#include <linux/vmalloc.h>
> +
> +struct some_bytes {
> +       union {
> +               u8 data[32];
> +               struct {
> +                       u32 one;
> +                       u16 two;
> +                       u8  three;
> +                       /* 1 byte hole */
> +                       u32 four[4];
> +               };
> +       };
> +};
> +
> +#define check(instance, v) do {        \
> +       int i;  \
> +       BUILD_BUG_ON(sizeof(instance.data) != 32);      \
> +       for (i = 0; i < sizeof(instance.data); i++) {   \
> +               KUNIT_ASSERT_EQ_MSG(test, instance.data[i], v, \
> +                       "line %d: '%s' not initialized to 0x%02x @ %d (saw 0x%02x)\n", \
> +                       __LINE__, #instance, v, i, instance.data[i]);   \
> +       }       \
> +} while (0)
> +
> +#define compare(name, one, two) do { \
> +       int i; \
> +       BUILD_BUG_ON(sizeof(one) != sizeof(two)); \
> +       for (i = 0; i < sizeof(one); i++) {     \
> +               KUNIT_EXPECT_EQ_MSG(test, one.data[i], two.data[i], \
> +                       "line %d: %s.data[%d] (0x%02x) != %s.data[%d] (0x%02x)\n", \
> +                       __LINE__, #one, i, one.data[i], #two, i, two.data[i]); \
> +       }       \
> +       kunit_info(test, "ok: " TEST_OP "() " name "\n");       \
> +} while (0)
> +
> +static void memcpy_test(struct kunit *test)
> +{
> +#define TEST_OP "memcpy"
> +       struct some_bytes control = {
> +               .data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                       },
> +       };
> +       struct some_bytes zero = { };
> +       struct some_bytes middle = {
> +               .data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
> +                         0x00, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                       },
> +       };
> +       struct some_bytes three = {
> +               .data = { 0x00, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> +                       },
> +       };
> +       struct some_bytes dest = { };
> +       int count;
> +       u8 *ptr;
> +
> +       /* Verify static initializers. */
> +       check(control, 0x20);
> +       check(zero, 0);
> +       compare("static initializers", dest, zero);
> +
> +       /* Verify assignment. */
> +       dest = control;
> +       compare("direct assignment", dest, control);
> +
> +       /* Verify complete overwrite. */
> +       memcpy(dest.data, zero.data, sizeof(dest.data));
> +       compare("complete overwrite", dest, zero);
> +
> +       /* Verify middle overwrite. */
> +       dest = control;
> +       memcpy(dest.data + 12, zero.data, 7);
> +       compare("middle overwrite", dest, middle);
> +
> +       /* Verify argument side-effects aren't repeated. */
> +       dest = control;
> +       ptr = dest.data;
> +       count = 1;
> +       memcpy(ptr++, zero.data, count++);
> +       ptr += 8;
> +       memcpy(ptr++, zero.data, count++);
> +       compare("argument side-effects", dest, three);
> +#undef TEST_OP
> +}
> +
> +static void memmove_test(struct kunit *test)
> +{
> +#define TEST_OP "memmove"
> +       struct some_bytes control = {
> +               .data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                       },
> +       };
> +       struct some_bytes zero = { };
> +       struct some_bytes middle = {
> +               .data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x00, 0x00, 0x00, 0x00,
> +                         0x00, 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                       },
> +       };
> +       struct some_bytes five = {
> +               .data = { 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x00, 0x00, 0x00, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                       },
> +       };
> +       struct some_bytes overlap = {
> +               .data = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
> +                         0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                       },
> +       };
> +       struct some_bytes overlap_expected = {
> +               .data = { 0x00, 0x01, 0x00, 0x01, 0x02, 0x03, 0x04, 0x07,
> +                         0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> +                       },
> +       };
> +       struct some_bytes dest = { };
> +       int count;
> +       u8 *ptr;
> +
> +       /* Verify static initializers. */
> +       check(control, 0x99);
> +       check(zero, 0);
> +       compare("static initializers", zero, dest);
> +
> +       /* Verify assignment. */
> +       dest = control;
> +       compare("direct assignment", dest, control);
> +
> +       /* Verify complete overwrite. */
> +       memmove(dest.data, zero.data, sizeof(dest.data));
> +       compare("complete overwrite", dest, zero);
> +
> +       /* Verify middle overwrite. */
> +       dest = control;
> +       memmove(dest.data + 12, zero.data, 7);
> +       compare("middle overwrite", dest, middle);
> +
> +       /* Verify argument side-effects aren't repeated. */
> +       dest = control;
> +       ptr = dest.data;
> +       count = 2;
> +       memmove(ptr++, zero.data, count++);
> +       ptr += 9;
> +       memmove(ptr++, zero.data, count++);
> +       compare("argument side-effects", dest, five);
> +
> +       /* Verify overlapping overwrite is correct. */
> +       ptr = &overlap.data[2];
> +       memmove(ptr, overlap.data, 5);
> +       compare("overlapping write", overlap, overlap_expected);
> +#undef TEST_OP
> +}
> +
> +static void memset_test(struct kunit *test)
> +{
> +#define TEST_OP "memset"
> +       struct some_bytes control = {
> +               .data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                       },
> +       };
> +       struct some_bytes complete = {
> +               .data = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> +                       },
> +       };
> +       struct some_bytes middle = {
> +               .data = { 0x30, 0x30, 0x30, 0x30, 0x31, 0x31, 0x31, 0x31,
> +                         0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31,
> +                         0x31, 0x31, 0x31, 0x31, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                       },
> +       };
> +       struct some_bytes three = {
> +               .data = { 0x60, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x61, 0x61, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> +                       },
> +       };
> +       struct some_bytes dest = { };
> +       int count, value;
> +       u8 *ptr;
> +
> +       /* Verify static initializers. */
> +       check(control, 0x30);
> +       check(dest, 0);
> +
> +       /* Verify assignment. */
> +       dest = control;
> +       compare("direct assignment", dest, control);
> +
> +       /* Verify complete overwrite. */
> +       memset(dest.data, 0xff, sizeof(dest.data));
> +       compare("complete overwrite", dest, complete);
> +
> +       /* Verify middle overwrite. */
> +       dest = control;
> +       memset(dest.data + 4, 0x31, 16);
> +       compare("middle overwrite", dest, middle);
> +
> +       /* Verify argument side-effects aren't repeated. */
> +       dest = control;
> +       ptr = dest.data;
> +       value = 0x60;
> +       count = 1;
> +       memset(ptr++, value++, count++);
> +       ptr += 8;
> +       memset(ptr++, value++, count++);
> +       compare("argument side-effects", dest, three);
> +#undef TEST_OP
> +}
> +
> +static struct kunit_case memcpy_test_cases[] = {
> +       KUNIT_CASE(memset_test),
> +       KUNIT_CASE(memcpy_test),
> +       KUNIT_CASE(memmove_test),
> +       {}
> +};
> +
> +static struct kunit_suite memcpy_test_suite = {
> +       .name = "memcpy-test",

It may be better to just name the suite "memcpy", since -- by
definition -- it's a test if it's a KUnit test suite.

> +       .test_cases = memcpy_test_cases,
> +};
> +
> +kunit_test_suite(memcpy_test_suite);
> +
> +MODULE_LICENSE("GPL");
> --
> 2.30.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABVgOSn%3DfmUctW_xexDyS_c4G3ee4vGvuJLaanRDQbzQkfAOBQ%40mail.gmail.com.
