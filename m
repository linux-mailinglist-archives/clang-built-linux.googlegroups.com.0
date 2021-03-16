Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBGN4YOBAMGQET5ZKXKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCBA33D981
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 17:34:33 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id h30sf16982170wrh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 09:34:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615912473; cv=pass;
        d=google.com; s=arc-20160816;
        b=jvwYfqHpN1VZsm5k4V/Bd7CFtIx4ziHOWR2IxMiqszeUtAjgsLfCYzoowpRNqnWcgu
         ejnqsvUgTp7PgNblwL6jZ9Z6a/srOk0r84cSBHGXbAC2HVHr0PhQaz0TrPwQFcSOu5H6
         HF7gRqybkHa5OYrQdQc1peeYigBamTdid6cjCUlF63ls3sb1Muvvb7z+up3YQw6zzyza
         fomvC+bj8+W4zUipC4CUTw6l+W2wIKxpEuq5XgvBrL+LOZCTMO6pBtziJWPop588f/MJ
         3q4GJDFjaGydnHKOW5ecla3QAt5N98FUapDQE/aV1SJ6ad4RQOn/kHibZUCg3bdY2sbv
         YwBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AFAmEyUA+5oJMq94YHC+pJ5rGzba9YCCWwEwmzarntY=;
        b=iL1tE+yTWhsthOUryEb+SaYWW0DuJJsfJSbN9hL2QkeJuLM6exZtf+mj/mo46xEjp7
         bClP1PkpV1yfz1wiNicouWZW1AwkJpiEhAtY20TY27GA6tBkzrQ5tR7FOGa33un4w+8z
         jOuiUtvLPKAWLenwpluoCFE9XqRVvpx5l1jZDeewCDdK94dt6tUXUkY9pnSMwwiS++At
         owISqgtj2iNYfo5v+dyhUAJJ40H8vJ+8/GZ5U5kX1r4te3+/oYsw41HLV0IzLHpZAOds
         Zid1N7at0b5WoJPJ62RDRfpsjdvu+pUdo0xNd1u7giNuIVkSPS4W3P+Dr1zl+ykRBmgS
         Itkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFAmEyUA+5oJMq94YHC+pJ5rGzba9YCCWwEwmzarntY=;
        b=IpzTApIr7dnbsi7rJtmm41I6FebjNTBr34oiSLIIUFkY/DYlL1XIhSsfAQeAU4INz3
         eslhrhD9JcfwlHbt8ep99UXcsfiWlZJTf8ko59OADGAL7L9ao9MTXjyCRgI6kJEoQmIY
         lGEz/yKi8KGnG3kbwLo9808SYVrtH8r3AX9EgvhZWycrZ2CMpiK7Rdlrk17i2ZJwRWeq
         KVuyeI5PzkOi88vTmSbnkTtf4Y1M2IwdT4R4dPBuQR7L0RTIZdZsE0GK0pOMrkpYJ+c5
         RHHMewv/oCUi7YAWF+GBuhW9ejAFdj6b9veXXFOYuWGLpy9cYJF4XmpEXlMHFf7fj1Dt
         uu9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AFAmEyUA+5oJMq94YHC+pJ5rGzba9YCCWwEwmzarntY=;
        b=K/NZr+sk9myWpHXCWcL+Q+KP5OlT27vDLYqwNl3LAgiF31+u1uMALdvSuFOCtqRgTV
         ZoQFcs/RnwxVih4Iz0Go2dk49oh4rkoyQcPLmfYJZ822LwDF9TeFcQ2M0oMJvq9wtCOM
         PuqzYO/fsjpFb09VW+j4lQA7Oy1IhqZke3+Ar4cgjckkzY5GaPAdWuAE1TP04uGzbGxh
         bnfAyGY9kBGHRa1Ve1pWtdKIz2PDlm7Aly75a+ERveF4Vi+Vvd2MD5zVfeuSkFm2vjW+
         1/vjgfR/omRD7vRHul6KRVoxtGLiutFiBvdPUTfpVUIqyhWiHYaVU1uDDNWagiKnwsd8
         45Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332t8nXfQljSALaxax7/it4LjWtkKXf/Efl7dUU37pEH/+u2jhH
	UaDqN1m2hhpfVvP2HAfrdGg=
X-Google-Smtp-Source: ABdhPJx0WdZuG1gs1mQy3DWqkaLeqG+g/PIpRKn7KxtIlaM/Gam/F7JPsOOTOUxEmWzF9Zj2pQASnw==
X-Received: by 2002:a5d:54c4:: with SMTP id x4mr5786720wrv.329.1615912473705;
        Tue, 16 Mar 2021 09:34:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls1267778wrd.0.gmail; Tue, 16 Mar
 2021 09:34:32 -0700 (PDT)
X-Received: by 2002:adf:9bce:: with SMTP id e14mr6095547wrc.29.1615912472925;
        Tue, 16 Mar 2021 09:34:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615912472; cv=none;
        d=google.com; s=arc-20160816;
        b=ikxv8fo1mmsKWru6hdhkMT921LOKv/5m1OCz3k1qs0GvPEpWhqXIwPEsf9ZF6rUwVD
         v2r4VnzjLgBesUvxqYM00EkJ3ttkBBrgkCoTacIVfatzZ34RT5hm8fA6bAeWbIE+Xs7x
         p+pYQeFN3QxMh/nOMi2oAHp86i54KdDYAgkk0QmPUDSLZ/cBpigu5WoeW/tazxmgMG9g
         0SNnL0omQe/cE6rPhosezJcvB17CXot+Ebl1qe+TB4bygJfxk6y8fR11oAf23AEzmwCV
         NEAILc+vRxjp2C5Y4Sl4jD9VbmQkBU73jQ/Sq88y5pjOWkOi+zxy59UAXjN8QtjPhc8b
         FWVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=bVPS5oe+u7fDjF6g9k6TU94V4X+8EZo3y7iqbQY+U58=;
        b=hI/kJSbvFyzRwaSaB2fNickq78V2X9PuTcWegWei9caxwE3uPT7VPjDAWo7qRRHUlE
         SmKhB09zWqAXi8kma5ObC+C3fun1/r5Atks6trWlOt4bVDcGmEsbEdRBmtggJdClhy9+
         UqlQwBRxEObAQoXFzNsd839M65coJe0hCpGE+xa3pL2Z/LBDhwiHcyjKBQeaCpMq2OtI
         O0FA5JFbTs2LpFiytvAcl3KXTNrW5UXQ8mHQvucrLKWtVoHsk/AoHbck/DfQX4MQyty6
         kPM52i49TCAosNOzKO7NljjwhHX3+PWSkIVuylPWF5MoKI2wM93rvmFYdTySiPiouV6Q
         G7iA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id g137si14899wmg.4.2021.03.16.09.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 09:34:32 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-wr1-f42.google.com ([209.85.221.42]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M6VRf-1lKFlp25jl-006zCz for <clang-built-linux@googlegroups.com>; Tue, 16
 Mar 2021 17:34:32 +0100
Received: by mail-wr1-f42.google.com with SMTP id u16so10819375wrt.1
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 09:34:32 -0700 (PDT)
X-Received: by 2002:adf:ed87:: with SMTP id c7mr5923866wro.9.1615912472247;
 Tue, 16 Mar 2021 09:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <202103160133.UzhgY0wt-lkp@intel.com> <YFBYWjtWJrnGyiVp@linux.ibm.com>
 <CAKwvOdmMvvOYBJRZh9w8uQH1ZXZ97Gq+Rs0S4Xi0ZnWufYoxAA@mail.gmail.com>
In-Reply-To: <CAKwvOdmMvvOYBJRZh9w8uQH1ZXZ97Gq+Rs0S4Xi0ZnWufYoxAA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 16 Mar 2021 17:34:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1UvbVh3UKE9N-ch32RZHH5bhfRuz8LN9A3gQew6V3ONA@mail.gmail.com>
Message-ID: <CAK8P3a1UvbVh3UKE9N-ch32RZHH5bhfRuz8LN9A3gQew6V3ONA@mail.gmail.com>
Subject: Re: WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in
 reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	David Hildenbrand <david@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:2MM5hrXJTwZPNUD7vXvDoehCLvz2ZMLS0MPinazk3EJDHGFKmcY
 GXuQKhWJGzoE7f2JvY2OTdwGGVnRghx6CqxqkuSaz8GcoVQohI/5GElDghF3QtHxW2TeeM4
 ymp6Pg3q/yEo6pa9kI8WfEiu9/1YEYZsibfqqpRIW1wOJkUQE30LgHkwwtAWsGp5r6i5eVG
 wBp0RF197KEDmuG3tgShQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aj8YiZviiyU=:yXxxE15XRSzGipCXS40WqI
 Kjd6BcqSN2hwoKR7CUiPthsIm0wuMAMDJvvn+mXq/1pzpWYVWM+Hj61QxG3J1BQMLMl5hcKSY
 lerkFK2d5lWicC7vg8Ex360BJV3QJLdUgrLd91jxXQo7ZhaayOlFrvpctVInpgIW6AFSAG+ie
 Dkjmuqx2HoNsZ9V0Q8EEp5R1ezuXZW5lUfPzcto+TfKiNXSXJZJIoUrSnR62ljq2FEodbv3+k
 rI1sQj6G0l4DvUSYyrR5IAEI2vMDbVERLvdRJLp7yIdfcpcNcjpw0lz7U90kSlzICrcaoPpWC
 k14vaWGgeqYV/rMLgz7+5fUzW6Any03VKIxaNxg07s67xKCCwKVV/2h6/AE6ztKoPo8jUawPC
 nnxZTslOY+b/T31d+BXx5SyodyFrqb/83RV3EnJSbmTLqWwxd/gwKdsFCUefrej1bE1byVtiK
 W/nxYbLNP7MQJo68Qk6GwtVMKqF0mXo46K/b64j0hF0PaMd6f0U39gSjmiXQ3HJSlD+iml7Xf
 sm3C58mI4/66nT4cnQA3XbC9UyDRdf2ZhDCBx1v3aRnFHuAdNkAbcpHwc7n3QRBDA==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Tue, Mar 16, 2021 at 5:23 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Tue, Mar 16, 2021 at 12:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:

> >
> > I don't have clang-13 setup handy so I could not check, but I think this
> > should be the fix:
>
> Thanks for taking another look:
> https://lore.kernel.org/lkml/20210225205908.GM1447004@kernel.org/
> Do we want to switch the above to the below?

The patch above is now in mainline and caused the reported problem.

> > diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> > index d13e3cd938b4..5984fff3f175 100644
> > --- a/include/linux/memblock.h
> > +++ b/include/linux/memblock.h
> > @@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
> >  /*
> >   * Set the allocation direction to bottom-up or top-down.
> >   */
> > -static inline __init void memblock_set_bottom_up(bool enable)
> > +static inline __init_memblock void memblock_set_bottom_up(bool enable)
> >  {
> >         memblock.bottom_up = enable;
> >  }
> > @@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
> >   * if this is true, that said, memblock will allocate memory
> >   * in bottom-up direction.
> >   */
> > -static inline __init bool memblock_bottom_up(void)
> > +static inline __init_memblock bool memblock_bottom_up(void)
> >  {
> >         return memblock.bottom_up;
> >  }

I don't see the warning on my machine for some reason, but the patch
does seem correct.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1UvbVh3UKE9N-ch32RZHH5bhfRuz8LN9A3gQew6V3ONA%40mail.gmail.com.
