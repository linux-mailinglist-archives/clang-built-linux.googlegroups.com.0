Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBRHVYOCAMGQEJWN7LYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8523726B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 09:41:57 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id v26-20020a2e481a0000b02900bf48f13296sf3381926lja.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 00:41:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620114117; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2UeQptVn8JewbiW1+ETqQTFNmsU2NlWl7lh38uZPRwUx3f18tdETG/k+W8LS712Pd
         Dsq8uGon9AftUeDWShTCPlDBkgpvypH54iiAL7eCgMDMalD3tVoxUtLhDvmzticVMxzJ
         zgTx8FgMWRVGVSbzlW+M4xEK+3EnFoQYpRTOqtL9Fb/I7qXeTvcRUuaIbMDqS5z8EOQS
         xXbhpDJw9Oa4hAtIhfu+FgxL4gyINuzu9vuH2WgjtKKjLr7gKjf20tE8LGrcH99YLKn/
         +WBJpG8mZ8uklWDdbXknGzD52DWF7ja2yLzhDrnIo2BxFszyNBfxDPrcDOT7n8ifbywX
         CoAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TzzR3BFs1JvKcdWZcUAdiQfhj0grjkVIbw+AU4S2elw=;
        b=uHr0qg3Q0U9E/7hoea4y7RyJG3xezpnkWfcxYoyCopfbrkQmCeJ9TpwuOk5J9sYDnk
         Bw8+dxTeK3jYrXzCgDb7Rgf3hx10ID+RAnGNr7M/p4U+DM0sPRjnjOasAuh4YUObkYOE
         1SR5KcVxh+6nxGlOWCOMAFcO32MTq4X2y/Ay76+XJ41bGnUn/V062Y2lI4bT4v7Hxg9Z
         gwNuJnRMg1lYQCAC4f7ICDDRvwbnnt6+CO7CfnavlYcDnORBgZfFGQRUH3Jb3b+LzFTJ
         0MgLVyzquk27DfwEm4+pg+kXaz4mQQqBUGWRiWOdl88/lSjA5EYjeNfLtHbhweRss6i1
         DHVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TzzR3BFs1JvKcdWZcUAdiQfhj0grjkVIbw+AU4S2elw=;
        b=RjYZ9y9UK5DW9WU/sfk+UvbN8XGRRN7IXxiNO7IyQv5KslOaralQDoXvQp/enc+mJt
         kNIwELKa6/H+bLtHui/jWE3jaUkRu8PxwFUTegrYmY1hC8W0x7BYRDnb+K/YFHaDDjE5
         oCTOu2OFIyfQ8PvVwp0hbsRUUjeXLAYf/DTwlJaZ5PthYnWhDO5aNrCIGNAff8UMHrMX
         aR+K5sz4dHLChvQkZijFjwwRwdL7zB4oOxDCWWSlBvWWyDPVmGEu8CSykB5qPVq5wd0F
         fZSQ9BRYEuhXbzt54WQwQWj7c4soke4HSCY4ackBSqKtnfXZphPMDacI8l3U5EgA1cOL
         dBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TzzR3BFs1JvKcdWZcUAdiQfhj0grjkVIbw+AU4S2elw=;
        b=VEtcEUMh7UcsB2Oms3tJIqWf3hQ88VUC8vvRTuOSDypy+yNPppBN/Kgt+PATeLfHmA
         Kh4qtubGFEKbEQHO38VvaenBDEDeZcUv/ZCXrS/KtnDi6BZbRSR2mVn0nMSUzQ6TtrYZ
         A6FYN6Hj/KUkqXk7PwZwa55+OIZ7nyg/yM54U8rrIpoQ3nkLOmzN2lGoK8RTxL7b5ss4
         RX2RD6/un4ZnvZal2ED/z1oFaI7IRJUEMpadnYYehEqsuuRLK31nTF3oHJdfH4gOwG6R
         RLjJwGcxyiPa+hGEDkfZ0kHyFBa2n/TjfAj8QgMxhy9zlsTV4Z02STwXgiw4G92c05yw
         oLKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QapP2rhKVAgRo6C0lgfB3WUUDJKc73Uwk1kuOgm6X/p8hUc5X
	3wMmtn2TUhEPpdZXkrgoSEg=
X-Google-Smtp-Source: ABdhPJxTtoSw3JA54pw7Fg02JNZ14aLAer3FdkO6qtbBiqgHyfU3+KTIJD5aIu8oxjOx9tpBE4rMJQ==
X-Received: by 2002:a19:5208:: with SMTP id m8mr15876288lfb.372.1620114117048;
        Tue, 04 May 2021 00:41:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:507:: with SMTP id o7ls3935869ljp.6.gmail; Tue, 04
 May 2021 00:41:56 -0700 (PDT)
X-Received: by 2002:a2e:921a:: with SMTP id k26mr863741ljg.149.1620114115979;
        Tue, 04 May 2021 00:41:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620114115; cv=none;
        d=google.com; s=arc-20160816;
        b=qO21X5eyORk6fVLLrr+IXA7TgDsxjzIllIaT8igQlkh/J0sReJsIIB40G9C+cIxpgh
         ydadegkki1KUVVXiB6U3NaV2Z9Vt0JBFq9fQYtkSRVLlrs0JaEA4o2bNcIDTADrP1UXX
         rYRlC2ZdimjjLkQB1ll8FPHUPN3sAi6uTHJNY0xruiIIxiDm66/fcwlOEjT/UWv6J4q0
         Z1TJWASb+3bevA2L3k5lTNgL4RBx8E4j2qg5eL1WZ8QwmXFB5I1+GSyqlkMRo0JRoCye
         rF0z+Z0x605B4/b6DscEVV6qwMw1M4jDmX9lx7cU/bsL9HrbfDyDWqy9x1qgYX6HS9da
         8A7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=B79QZLkdjrSD9DhShpCP2RaxGSHJtp/GWSiwUVBsrZE=;
        b=lDqBgP1O6M8y2lanyBPjXpCWlJXZBxGwqb86ltvaclrGuWvVj/CjjBl/hXJr/tECVX
         zB5f6Te/WkuEybAD3l/fTrzbvhC4e/QrDDytdddmcpQ8T9MEZvbobNSlGFXorFQFWdqz
         46wYtcysSioqx/Iv7zaGhAdKZKJEX0WeO39gvikJChXbNCngfh1AYBIEqdUcSk60YdvR
         +fRDD3poKCMdeXHcGcNF2amnFw+wyu20/7eb8QRrkDC9po3EcUaAiAZtKa/mKPsPeM+4
         iREknPmJQQ1syMQ6xsq2mbFZu+WWEsb8QYcb+O6+a4tIe4SatEgTGG+JZ3sW//KRYmsZ
         jlaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id z33si87203lfu.12.2021.05.04.00.41.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 00:41:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from mail-wm1-f49.google.com ([209.85.128.49]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N8n8I-1lS1kT0eko-015v3s for <clang-built-linux@googlegroups.com>; Tue, 04
 May 2021 09:41:55 +0200
Received: by mail-wm1-f49.google.com with SMTP id s82so4711980wmf.3
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 00:41:55 -0700 (PDT)
X-Received: by 2002:a1c:a949:: with SMTP id s70mr2478434wme.84.1620114114819;
 Tue, 04 May 2021 00:41:54 -0700 (PDT)
MIME-Version: 1.0
References: <202105030311.xWwkyV9z-lkp@intel.com> <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
 <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com> <YJDQ0ePGHxmcB7dX@kroah.com>
In-Reply-To: <YJDQ0ePGHxmcB7dX@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 May 2021 09:41:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
Message-ID: <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Sasha Levin <sashal@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:/SIkFBta7Awtnu+Hx0hKOIybfG2naOKxQpMaVHuV7vCkfmOJ/zg
 t027rbrIXM0kOkJJ6S8vNzHw8zue20yXUzocx1zNUh0tCI/MkfRSokNVVCzgBu9zYaGk6nW
 6AG8Hh1Iew5u2potXhmNyqOhf9L2ZqO7r8hH9HmSUyCzcluBBM/inLVM+gzi5wKOjloQrOy
 mjEpuPd8vhFR9EtR+K4lw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:01gGtBpwY0I=:mQr8j3NHZdHhw0EBI5FxWx
 ylXhfr6ZF7UYPxouflDAkQ2bJiHFjmTrY56VBktKRMff7GUpdD1rphmruyCgBO/JkUyWPe7py
 R3nxOTYVW+nFGW4LnqojlaqfqN+bt8LySU5tLlCSez9vrREh3Zm2wvqBqrhlkkcV3VMYIt6EQ
 xz++G37GtvBu6h3KqrcsAGjxZ84YeOkW79amQbT+tdtYGMTIUrEJya1Ejh88bodzti8/Jj7AV
 1d8NAfGUy4TdegCzjWfgyoVWOPXcWxwx1cPFKGWPHNbhh0pY1O76Q4ycuenQCdUD8REh5GxmZ
 SvbiptaCDEpbILAaA+UgOdH3xjT84vQZdl2vxbDFN10FQRwLhaHmbAOTUBm/E96hJh9UK25Ds
 AUPbG8Lqb7HJ5++5A4FpxQK099bj8JbiaJ5dBESyGZMTjeBf6XxaudksxKhl2MkbRiW8wLwk2
 dnrhw6TrlyhVVIxQNd3ypLVOaji0f4lnvcvyY8LzrHw2KdOvIKItR0vbNduK5/tCn1B4O4GCe
 sur/mSgjzcUunNJYWXc1H5mI3Z663XKbzBzXR3b47IH4M2KVPz9EF56qAPkofY6fsXLSmomKd
 7a2rD9dqhoE73dDCgAYyuTE1KC/+6Wj7zKkSiTUT8CYqkiGi/Z97GYbjAT8bLzPUrTBbtUvSZ
 J0H4=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 4, 2021 at 6:43 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, May 03, 2021 at 09:16:42PM +0200, Arnd Bergmann wrote:
> > On Mon, May 3, 2021 at 7:00 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
> > > >
> > > > I'm fairly sure this is unrelated to my patch, but I don't see what
> > > > happened here.
> > >
> > > It's unrelated to your patch. It was fixed in 5.7 by
> > > 7273ad2b08f8ac9563579d16a3cf528857b26f49 and a few other dependencies
> > > according to https://github.com/ClangBuiltLinux/linux/issues/515.
> > >
> >
> > Ah right, the big hammer.
> >
> > Greg, not sure what we want to do here. Backporting
> >
> > 7273ad2b08f8 ("kbuild: link lib-y objects to vmlinux forcibly when
> > CONFIG_MODULES=y")
> >
> > to v5.4 and earlier would be an easy workaround, but it has the potential
> > of adding extra bloat to the kernel image since it links in all other
> > library objects as well.
>
> I've lost the thread here, but what _real_ problem is happening here
> that doing the above is required?

Randconfig builds fail if drivers/hwtracing/stm/stm_core.ko is a loadable
modules and nothing inside vmlinux forces lib/memcat_p.o to be
linked in. A simpler workaround for v5.4 would be:

diff --git a/lib/Makefile b/lib/Makefile
index a5c5f342ade0..745d1207e9e2 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -33,7 +33,7 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
         flex_proportions.o ratelimit.o show_mem.o \
         is_single_threaded.o plist.o decompress.o kobject_uevent.o \
         earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
-        nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o \
+        nmi_backtrace.o nodemask.o win_minmax.o \
         buildid.o

 lib-$(CONFIG_PRINTK) += dump_stack.o
@@ -48,7 +48,7 @@ obj-y += bcd.o sort.o parser.o debug_locks.o random32.o \
         bsearch.o find_bit.o llist.o memweight.o kfifo.o \
         percpu-refcount.o rhashtable.o \
         once.o refcount.o usercopy.o errseq.o bucket_locks.o \
-        generic-radix-tree.o
+        generic-radix-tree.o memcat_p.o
 obj-$(CONFIG_STRING_SELFTEST) += test_string.o
 obj-y += string_helpers.o
 obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o

which is the same as what 7273ad2b08f8 does, but only for this one file
instead of all of lib/*.o.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a30xJ1%2BzrCC4fk%2Bq9xzLspHuE4VM0UHSWiU3-iFeNN%2B6g%40mail.gmail.com.
