Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVOXS2EQMGQETTYFR3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEF43F6D6B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 04:32:55 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id ob1-20020a17090b390100b001793bdcc41esf273572pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 19:32:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629858774; cv=pass;
        d=google.com; s=arc-20160816;
        b=WR7oBbHWPOhuMbxOxHFcefk92sGhHfi2r+o3BvypEgVte/YlgWPnz7i3V5OQlTAv4L
         M6GciW7qniGGopZLH20PEUfqCX8z4AnmbpHZ25zOwhvYLTzFpc/kvZFw7j2b0jTfEVL/
         Zm+jonu4nfVEl5CSRAoOPvlfdU/cSBsQntq/4HE1O58dfaBSeGcC5miXcUBBgHPmW9BU
         lm7wku+kVsXFlXC1irb11ETT4onTX+1MyP6aa8lmGOBtIBC2PZCA4nyAMHW68Nq4sUQt
         HCpJDj6fwlEbAVgQiJalV7cn7ePhGvdCLyRhc1QE8C1Ts1jy3V+nfVfO8IGFUQ5XICvO
         Wd2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pMRh5/igqTWKZg9oK6Idg0ylcpWx8XgT0c2b/By5iIw=;
        b=lMXn/0lGnsfTNrt6FqfjPY6WWe09YsgmI+vtv2+fiOjV6tLPKweRIEhqprFqnXWBbQ
         yhSWVn4Khq01i63MGJUrV0S6yEEKmFt8ao9JqVDGo7l7RMbZ9MThwe5iZNKc4IUYnDDs
         oLmlRMj+JXpklDLiIGnU+Chr1XdYmu7mNioXm0HKVn+iXNLcxreaSGF7m7x0FJ71YLSm
         4oZusOjN6//xGdoDLgq6ABb9CLsdBVnyN2OMjRlFdpR05tvjLXhga1odU0sh8G9aTGfc
         2VQJJtHwSeca2vt0AoF5B05ldaMw65B5eHGjx647kxI6FsaQuDCav4U/cJsjHRzxmFDC
         Na+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OHer6DSz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pMRh5/igqTWKZg9oK6Idg0ylcpWx8XgT0c2b/By5iIw=;
        b=XXZctfhgWh0M61a8IFXP5xzcb9oUNPO/vZtiedtgMOMSijhM5GlnLzW9J6aN4NG66m
         iBOIwVzUAVX64Y5Qy6k5zFzVNaB3/a8qqDYGRmeLeaRZWZIDnFPhtEoLcX8/jCO87x67
         r4bttZXbOEHdDDnjfj8GtUYN9ShyKtvF3L/7i0D6GuEdIjlIbB1gdAN11pR1/Daf6q4t
         DBTm3GOpYC+yFo+n3P6qH0sS6TAIy9fnT+gW1U0PCz8oTgRXz4GM0Rb5EKGJlCSESazB
         ZwhqSApeLiWxunc5JX35h9uF+NKYHI3LPWl0KhB50cuGK3jIcFNMvAOTbvnyh3r5Rvh5
         INlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pMRh5/igqTWKZg9oK6Idg0ylcpWx8XgT0c2b/By5iIw=;
        b=Dmk8W/nO4LbN4BpbJthSSVDg4Hu2Anhv+QgpmH3eM8HIP0zaLHdNoydwseU1oL0cXL
         IUq4/JBAEWKL5cwogP0sphomGkrWr65Cz6UMLDqvl+IFwjKfVgMC8BInzF2Ab2d85tjw
         H59cyeMiH6bYZJPatnRrsP3pQHuJfcdSISxVvRHDMMB5EUtVRZ4/9ZFGZm9WhDtEC50w
         enOag0u1uwYnowQB7sKkC6zl9PYmjpDHO4AkYxvSwgiMsi8k2qnyEue27dW3mvZTGxry
         +GDgGs8r+Ktv1t9OvkeM94+3Zrh60Mx2wHW7JDUsz90oTog8I9ZecYyfjORxu6DJ5p6o
         6KnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sLt7cG5oTasxEWk/cYWClTsOdrt8XVjkeWWsoKi9JR4AlPptU
	Em4hSQejI2Ix2huqEDFrgnw=
X-Google-Smtp-Source: ABdhPJzGGdYV1AL1l/QvhTmVs5O6fAuY96OGxR4k1xPMHujHbCN5DOajpr4nLcGVZ4imv7s0J10uJQ==
X-Received: by 2002:a17:90a:1282:: with SMTP id g2mr8015588pja.230.1629858773865;
        Tue, 24 Aug 2021 19:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c9:: with SMTP id n9ls419799plc.0.gmail; Tue, 24
 Aug 2021 19:32:53 -0700 (PDT)
X-Received: by 2002:a17:90a:5d01:: with SMTP id s1mr7644427pji.5.1629858773304;
        Tue, 24 Aug 2021 19:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629858773; cv=none;
        d=google.com; s=arc-20160816;
        b=xYutI+SSduhmIw94xHz8zLjhXTAU82qNwNOFGas2kmRHfUYPYbo49ouTq/kPIdgK9m
         9LYILl+iXND9sr5iXVxuUqKvRu9qd8CKddCAU/7vXWmt4Baw+jZll2AaHvGxaRAamP8d
         uzRLql0cdsb6Ts4SmVK4u6uHXibXrn9A2vpbEpf5EF3QNsReZdOCleMkXot6rweX0Hjf
         laGom86sYaQKnORB5DhuVQ2lU7YjpUaTVPURn+WEkt0gmME6F+lbLOUthHKArSNdNUVa
         zuH22gKlXYEjOZm9H1jYgTp7ubzBnF7eybQGAy6SCikIzRSTv6RExtuRK4gZYMsmmMWk
         855A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eDJmVvgenVuiIv2JEnx8MK1MJtgJ4Z9SkKmag4UFJOE=;
        b=HoQ0JNYHUDWe0NYJ++VGagswZ0YvWCasXTgSGGFJnhfrhekxOecJ9hZ98v+dHEr6MS
         svnwXXWOwQXmHerDC8niHzxx17HlNxNI/xPkoCi5ErsVuU//g4pJArLbAy21R8FlPaE6
         HhnDvOMGsuAWJSumuhaUcDxWboYgXv3KS2OibUH/1MAVldX9wJONUBNxSRfH7r3XUdyV
         Yp8pzQxF+NmUZDVyOWtcfZ2wmsPuOQ7xwHdBmxsc7vY2VVUWDrY1+y6RVqcf5rAjghg7
         vgofy9qgdrAESEL0Lm+A4Z/bC1RoBmNQm+dQZsG4qXlenzHG9snETQ0SjQiAl8hs6548
         grJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OHer6DSz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id g3si268752pjs.2.2021.08.24.19.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 19:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso3117746pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 19:32:53 -0700 (PDT)
X-Received: by 2002:a17:902:a604:b029:12c:dda2:30c4 with SMTP id u4-20020a170902a604b029012cdda230c4mr35345108plq.73.1629858772979;
        Tue, 24 Aug 2021 19:32:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e13sm20544264pfi.210.2021.08.24.19.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 19:32:52 -0700 (PDT)
Date: Tue, 24 Aug 2021 19:32:51 -0700
From: Kees Cook <keescook@chromium.org>
To: David Gow <davidgow@google.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH for-next 21/25] lib: Introduce CONFIG_TEST_MEMCPY
Message-ID: <202108241921.26866A8F@keescook>
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-22-keescook@chromium.org>
 <CABVgOSn=fmUctW_xexDyS_c4G3ee4vGvuJLaanRDQbzQkfAOBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABVgOSn=fmUctW_xexDyS_c4G3ee4vGvuJLaanRDQbzQkfAOBQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OHer6DSz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Aug 24, 2021 at 03:00:19PM +0800, David Gow wrote:
> On Sun, Aug 22, 2021 at 3:56 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > Before changing anything about memcpy(), memmove(), and memset(), add
> > run-time tests to check basic behaviors for any regressions.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> 
> Thanks for adding a KUnit test here: it's great to have better
> coverage of some of these basic functions!
> 
> There's a name mismatch with the Kconfig entry and the Makefile,
> otherwise this looks good and works fine on my machine (under both UML
> and qemu/x86_64).

Hah! Whoops. Thanks for noticing this -- I think I didn't use a clean
tree and never noticed because I had the old module.

> It would be possible to split these tests up further if you wanted,
> which could be useful if there's a desire to track the individual
> assertion results independently. That's probably what I'd've done, but
> It's a matter of personal preference either way, though: the tests
> aren't absurdly huge or over-complicated as-is.

Noted. Yeah, for me, I think it's "does memcpy work or not?" and each of
the EXPECTs are required, so it felt like 1 test with lots of EXPECTs.

> > +FORTIFY_SOURCE
> > +M:     Kees Cook <keescook@chomium.org>
> > +L:     linux-hardening@vger.kernel.org
> > +S:     Supported
> > +F:     include/linux/fortify-string.h
> > +F:     lib/test_fortify/*
> > +F:     scripts/test_fortify.sh
> > +K:     \b__NO_FORTIFY\b
> > +
> 
> Do you want this to be part of the memcpy() KUnit test commit, or is
> it better suited in one of the changes to the actual fortify stuff?

Whoops, thanks. This got --fixup'ed into the wrong patch. I've moved it
now.

> >  FPGA DFL DRIVERS
> >  M:     Wu Hao <hao.wu@intel.com>
> >  R:     Tom Rix <trix@redhat.com>
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 831212722924..9199be57ba2a 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -2467,6 +2467,17 @@ config RATIONAL_KUNIT_TEST
> >
> >           If unsure, say N.
> >
> > +config MEMCPY_KUNIT_TEST
> > +       tristate "Test memcpy(), memmove(), and memset() functions at runtime" if !KUNIT_ALL_TESTS
> > +       depends on KUNIT
> > +       default KUNIT_ALL_TESTS
> > +       help
> > +         Builds unit tests for memcpy(), memmove(), and memset() functions.
> > +         For more information on KUnit and unit tests in general please refer
> > +         to the KUnit documentation in Documentation/dev-tools/kunit/.
> > +
> > +         If unsure, say N.
> > +
> >  config TEST_UDELAY
> >         tristate "udelay test driver"
> >         help
> > diff --git a/lib/Makefile b/lib/Makefile
> > index bd17c2bf43e1..8a4c8bdb38a2 100644
> > --- a/lib/Makefile
> > +++ b/lib/Makefile
> > @@ -77,6 +77,7 @@ obj-$(CONFIG_TEST_MIN_HEAP) += test_min_heap.o
> >  obj-$(CONFIG_TEST_LKM) += test_module.o
> >  obj-$(CONFIG_TEST_VMALLOC) += test_vmalloc.o
> >  obj-$(CONFIG_TEST_OVERFLOW) += test_overflow.o
> > +obj-$(CONFIG_TEST_MEMCPY) += test_memcpy.o
> 
> This doesn't match CONFIG_MEMCPY_KUNIT_TEST above, so the test is
> never compiled in.

Now fixed to be CONFIG_MEMCPY_KUNIT_TEST.

> 
> >  obj-$(CONFIG_TEST_RHASHTABLE) += test_rhashtable.o
> >  obj-$(CONFIG_TEST_SORT) += test_sort.o
> >  obj-$(CONFIG_TEST_USER_COPY) += test_user_copy.o
> > diff --git a/lib/test_memcpy.c b/lib/test_memcpy.c
> > new file mode 100644
> > index 000000000000..ec546cec883e
> > --- /dev/null
> > +++ b/lib/test_memcpy.c
> > @@ -0,0 +1,265 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Test cases for memcpy(), memmove(), and memset().
> > + */
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include <kunit/test.h>
> > +#include <linux/device.h>
> > +#include <linux/init.h>
> > +#include <linux/kernel.h>
> > +#include <linux/mm.h>
> > +#include <linux/module.h>
> > +#include <linux/overflow.h>
> > +#include <linux/slab.h>
> > +#include <linux/types.h>
> > +#include <linux/vmalloc.h>
> > +
> > +struct some_bytes {
> > +       union {
> > +               u8 data[32];
> > +               struct {
> > +                       u32 one;
> > +                       u16 two;
> > +                       u8  three;
> > +                       /* 1 byte hole */
> > +                       u32 four[4];
> > +               };
> > +       };
> > +};
> > +
> > +#define check(instance, v) do {        \
> > +       int i;  \
> > +       BUILD_BUG_ON(sizeof(instance.data) != 32);      \
> > +       for (i = 0; i < sizeof(instance.data); i++) {   \
> > +               KUNIT_ASSERT_EQ_MSG(test, instance.data[i], v, \
> > +                       "line %d: '%s' not initialized to 0x%02x @ %d (saw 0x%02x)\n", \
> > +                       __LINE__, #instance, v, i, instance.data[i]);   \
> > +       }       \
> > +} while (0)
> > +
> > +#define compare(name, one, two) do { \
> > +       int i; \
> > +       BUILD_BUG_ON(sizeof(one) != sizeof(two)); \
> > +       for (i = 0; i < sizeof(one); i++) {     \
> > +               KUNIT_EXPECT_EQ_MSG(test, one.data[i], two.data[i], \
> > +                       "line %d: %s.data[%d] (0x%02x) != %s.data[%d] (0x%02x)\n", \
> > +                       __LINE__, #one, i, one.data[i], #two, i, two.data[i]); \
> > +       }       \
> > +       kunit_info(test, "ok: " TEST_OP "() " name "\n");       \
> > +} while (0)
> > +
> > +static void memcpy_test(struct kunit *test)
> > +{
> > +#define TEST_OP "memcpy"
> > +       struct some_bytes control = {
> > +               .data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                       },
> > +       };
> > +       struct some_bytes zero = { };
> > +       struct some_bytes middle = {
> > +               .data = { 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0x00,
> > +                         0x00, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                       },
> > +       };
> > +       struct some_bytes three = {
> > +               .data = { 0x00, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x00, 0x00, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                         0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
> > +                       },
> > +       };
> > +       struct some_bytes dest = { };
> > +       int count;
> > +       u8 *ptr;
> > +
> > +       /* Verify static initializers. */
> > +       check(control, 0x20);
> > +       check(zero, 0);
> > +       compare("static initializers", dest, zero);
> > +
> > +       /* Verify assignment. */
> > +       dest = control;
> > +       compare("direct assignment", dest, control);
> > +
> > +       /* Verify complete overwrite. */
> > +       memcpy(dest.data, zero.data, sizeof(dest.data));
> > +       compare("complete overwrite", dest, zero);
> > +
> > +       /* Verify middle overwrite. */
> > +       dest = control;
> > +       memcpy(dest.data + 12, zero.data, 7);
> > +       compare("middle overwrite", dest, middle);
> > +
> > +       /* Verify argument side-effects aren't repeated. */
> > +       dest = control;
> > +       ptr = dest.data;
> > +       count = 1;
> > +       memcpy(ptr++, zero.data, count++);
> > +       ptr += 8;
> > +       memcpy(ptr++, zero.data, count++);
> > +       compare("argument side-effects", dest, three);
> > +#undef TEST_OP
> > +}
> > +
> > +static void memmove_test(struct kunit *test)
> > +{
> > +#define TEST_OP "memmove"
> > +       struct some_bytes control = {
> > +               .data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                       },
> > +       };
> > +       struct some_bytes zero = { };
> > +       struct some_bytes middle = {
> > +               .data = { 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x00, 0x00, 0x00, 0x00,
> > +                         0x00, 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                       },
> > +       };
> > +       struct some_bytes five = {
> > +               .data = { 0x00, 0x00, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x00, 0x00, 0x00, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                       },
> > +       };
> > +       struct some_bytes overlap = {
> > +               .data = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
> > +                         0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                       },
> > +       };
> > +       struct some_bytes overlap_expected = {
> > +               .data = { 0x00, 0x01, 0x00, 0x01, 0x02, 0x03, 0x04, 0x07,
> > +                         0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                         0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99,
> > +                       },
> > +       };
> > +       struct some_bytes dest = { };
> > +       int count;
> > +       u8 *ptr;
> > +
> > +       /* Verify static initializers. */
> > +       check(control, 0x99);
> > +       check(zero, 0);
> > +       compare("static initializers", zero, dest);
> > +
> > +       /* Verify assignment. */
> > +       dest = control;
> > +       compare("direct assignment", dest, control);
> > +
> > +       /* Verify complete overwrite. */
> > +       memmove(dest.data, zero.data, sizeof(dest.data));
> > +       compare("complete overwrite", dest, zero);
> > +
> > +       /* Verify middle overwrite. */
> > +       dest = control;
> > +       memmove(dest.data + 12, zero.data, 7);
> > +       compare("middle overwrite", dest, middle);
> > +
> > +       /* Verify argument side-effects aren't repeated. */
> > +       dest = control;
> > +       ptr = dest.data;
> > +       count = 2;
> > +       memmove(ptr++, zero.data, count++);
> > +       ptr += 9;
> > +       memmove(ptr++, zero.data, count++);
> > +       compare("argument side-effects", dest, five);
> > +
> > +       /* Verify overlapping overwrite is correct. */
> > +       ptr = &overlap.data[2];
> > +       memmove(ptr, overlap.data, 5);
> > +       compare("overlapping write", overlap, overlap_expected);
> > +#undef TEST_OP
> > +}
> > +
> > +static void memset_test(struct kunit *test)
> > +{
> > +#define TEST_OP "memset"
> > +       struct some_bytes control = {
> > +               .data = { 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                       },
> > +       };
> > +       struct some_bytes complete = {
> > +               .data = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> > +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> > +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> > +                         0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
> > +                       },
> > +       };
> > +       struct some_bytes middle = {
> > +               .data = { 0x30, 0x30, 0x30, 0x30, 0x31, 0x31, 0x31, 0x31,
> > +                         0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31, 0x31,
> > +                         0x31, 0x31, 0x31, 0x31, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                       },
> > +       };
> > +       struct some_bytes three = {
> > +               .data = { 0x60, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x61, 0x61, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                         0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
> > +                       },
> > +       };
> > +       struct some_bytes dest = { };
> > +       int count, value;
> > +       u8 *ptr;
> > +
> > +       /* Verify static initializers. */
> > +       check(control, 0x30);
> > +       check(dest, 0);
> > +
> > +       /* Verify assignment. */
> > +       dest = control;
> > +       compare("direct assignment", dest, control);
> > +
> > +       /* Verify complete overwrite. */
> > +       memset(dest.data, 0xff, sizeof(dest.data));
> > +       compare("complete overwrite", dest, complete);
> > +
> > +       /* Verify middle overwrite. */
> > +       dest = control;
> > +       memset(dest.data + 4, 0x31, 16);
> > +       compare("middle overwrite", dest, middle);
> > +
> > +       /* Verify argument side-effects aren't repeated. */
> > +       dest = control;
> > +       ptr = dest.data;
> > +       value = 0x60;
> > +       count = 1;
> > +       memset(ptr++, value++, count++);
> > +       ptr += 8;
> > +       memset(ptr++, value++, count++);
> > +       compare("argument side-effects", dest, three);
> > +#undef TEST_OP
> > +}
> > +
> > +static struct kunit_case memcpy_test_cases[] = {
> > +       KUNIT_CASE(memset_test),
> > +       KUNIT_CASE(memcpy_test),
> > +       KUNIT_CASE(memmove_test),
> > +       {}
> > +};
> > +
> > +static struct kunit_suite memcpy_test_suite = {
> > +       .name = "memcpy-test",
> 
> It may be better to just name the suite "memcpy", since -- by
> definition -- it's a test if it's a KUnit test suite.

Sounds good. I will adjust this.

> 
> > +       .test_cases = memcpy_test_cases,
> > +};
> > +
> > +kunit_test_suite(memcpy_test_suite);
> > +
> > +MODULE_LICENSE("GPL");
> > --
> > 2.30.2
> >

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108241921.26866A8F%40keescook.
