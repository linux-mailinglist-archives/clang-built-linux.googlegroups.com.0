Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBSHHUDVQKGQEQMZQIDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD48A27D8
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:21:29 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id g4sf1007591lfj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:21:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567110088; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gkjb6pVgi8zINn3D418tSkUxEAYRDXnbh9cbKP0npfMByPNhfyoefqE9UUwI79rCAq
         u1jVSPeMtol9JUPHbAOoAal7KPv3Swbvn0a6Z2/1Ukbm5T5F4FyuBsI1jLZNXx68fFMC
         9uFKIoM3hmPJ4tpUvzFaPGG6GMlpAkYhiIrSmYCx3ELqsii32yznucn2p2OHH2kURaTD
         VnOKu/GJ8F9bf/lM3M4/4urEVEqLg+cKb5vE8nCVBy5IM4AVznWko2UQdNrluxeNs+B/
         3NQvWFLwXa5b0WSPMKHAufIz4pQYGj/Nv/waIEOWuFoHvT2grhkvoAJgoHf+wEDNB4mx
         IcQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=wAcOJxsf4HAjCRCAJtFsxGj8kWV3Mwso3MfKHJOuimw=;
        b=p5YSIfMawWbO5sDkLxKcYwztxw8WWiveuReR3tI8F4+TVQmrxExx9YjrhJsXVxNYyQ
         e7kCortH4gTLr9YVJydXBkW/FeM6ju9gTBGoVisetHo+UGww0Uavolc21hNjEg3smRzK
         l23BRNFErCZBho+d38g3q1GB3k8FDJZo48w8TZThewgwchXhWx32IfH+/nD4on2Sa7VT
         YwMgC0NsZopdx2iMbZphgA/0da6/td4eVKxmhpN5aW/VKYBOLM0Xy0fKz53acWAJuYaq
         OJT7WFYzVdKEApuBuG1DjZ2d2OJf7owao9JtRa7b3LrH0x3wSbyq5XkXyqhe+Qc4agOy
         xnog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=HtB7SUmG;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wAcOJxsf4HAjCRCAJtFsxGj8kWV3Mwso3MfKHJOuimw=;
        b=Y4Sn7cKXNJL+hI/ROmFnT3b+6zkVYlS9kbpU153B923yREzCbsxv5pjgf8uc+nAFCX
         c8kSrbe8JQErHTDWqfAma7FI8YpKd9PoH3JXj4pAx3fI+pmBsyEWFeUcjY5flN8GKdAj
         CDVR/JRrKlv/1QItU7A6pZdJc5N+PFs61Cl2eRGMRW/pOkrt3jFIthBVpAcRF2abyNmh
         tnQIFvZfMmAsVyX2UVHizkfYx1QWwxq89ViwvoQTU0URjsgL/hotY3wqMUWrdIQBeOyQ
         LfCI9/bnPalXWzlAevErymlUj84JivSUGyd0ApOXHx4oHQ7DKZYh9GixBYeetDL3sd14
         dJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAcOJxsf4HAjCRCAJtFsxGj8kWV3Mwso3MfKHJOuimw=;
        b=Aki1/Z9sSJXVF/0cBtHDlwCifQuqGJjQuSRtqREm2siHVaoUX1n5Udak2569I/HU9L
         PcxfrWEpRKjl5gueP/qjvHpvFteXIE9He1GjW7qpv/kocf5ekXtUqcO1yLIWbZ9vH7xw
         M7gDMwrYHw06KqVEe51dY92ao3dqr3vaSeBE1l2R7E0AxrNwfEc52nOfpz4sqcVE1Ua8
         ua+1ETFcIpjxnajDtOw0CdeVlCWaMrz0YhVzKSX+febVy3P2FcHehf6HfBg5+Mjzpr8U
         4UGqC5CP2fzo6COWI92kgxYJEiSzIffPu7m3qDoQAnbExY8WCdTLL2rNIGriGh3JkkZo
         nWHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVgfUmCc0U3gC2DRjtE6CAnLScw1AxzjYxmgpNBvx3ekRaCxlq
	jUSXXV+TJRrnhQSVv8c7778=
X-Google-Smtp-Source: APXvYqykg0klVyD9DILqRya4GlZwlMK0pRRUXK5I1foFOFMSTpjXD5+d87q/m44uJepNVi89ITBF3g==
X-Received: by 2002:a2e:948:: with SMTP id 69mr6564950ljj.39.1567110088647;
        Thu, 29 Aug 2019 13:21:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c709:: with SMTP id x9ls61231lff.12.gmail; Thu, 29 Aug
 2019 13:21:28 -0700 (PDT)
X-Received: by 2002:a05:6512:28d:: with SMTP id j13mr7259285lfp.12.1567110088093;
        Thu, 29 Aug 2019 13:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567110088; cv=none;
        d=google.com; s=arc-20160816;
        b=wZGfNTFLS+cl2G+sn2yS0Vk4Dxuhhh1zsNQKpWHfrL9sK7+LNzjAeaC4vKP8qnEhO6
         ZMeI7/XPul+06bJhy+raePnukqH2wss24USRLB201SAu8ZV2JCf0VBxD4GQJFvxJV/10
         M4ymULE5X4t6LWLuGykQWG2xeEZXKn4JvrLOpLj7NE3hVHUhCVbHfcaGhI2osPGnisSb
         dC7ijL80smldSaGPo5VFo+WfJ44lvlhoC8akfM/HLYEeJ0OCLWEtwNGSkfkUFkG8HAlb
         iV1mtpR7NbAKTT0gPrV/1d85p6UW4cAe0MPjtXAXnP3om69Png1zIFiIbDS2awRSbxtH
         yduw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=fg2GaVUio75ldsR6EagWHhcxkRR/eMtIgg94UgACpuA=;
        b=LHimnBVsCemWWulylejdGSzDob0kAKNCab0dHNM+TN0OemxElMsTLj/mX/HcbxSpBZ
         bIVTHwQNZj0qizUmLyitJVpJ7D6u+/51aAS1WXVrFh4Qrlvu1P1A5bfyUEbzDviOL2do
         Ac0nMmJ/kYuy6xyEtGMyp9yAr8uEcr0m2dZYrFoUuuCbY6A/Tv7mImaKgPc92GLrQsFr
         6i/HBO1x1WCeGeh+t4WdPjlsVlZV0R0ViTQk5/SmmRnzU+gf8y7zjt625z/BiGmv7JK5
         PCo1UdjRvmTOWZHIME2d48krFJOqd8svfI7O0V29iEcKM08o7ngFRSdbuRbz+7TH7bG3
         0ppw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=HtB7SUmG;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id d6si220263lfn.4.2019.08.29.13.21.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 13:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 233B95C1F7F;
	Thu, 29 Aug 2019 22:21:25 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 29 Aug 2019 22:21:25 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Russell King
 <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke
 <mka@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
In-Reply-To: <20190829193432.GA10138@archlinux-threadripper>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper>
Message-ID: <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=HtB7SUmG;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2019-08-29 21:34, Nathan Chancellor wrote:
> On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
>> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> >
>> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
>> > with clang:
>> >
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
>> > softirq.c:(.text+0x504): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
>> > softirq.c:(.text+0x58c): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
>> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
>> > softirq.c:(.text+0x75c): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
>> > softirq.c:(.text+0x840): undefined reference to `mcount'
>> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
>> >
>> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
>> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
>> > broken and caused the kernel not to boot because the calling
>> > convention was not correct. Now that it is fixed, add this to
>> > the command line when clang is 10.0.0 or newer so everything
>> > works properly.
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
>> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
>> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> > ---
>> >  arch/arm/Makefile | 6 ++++++
>> >  1 file changed, 6 insertions(+)
>> >
>> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> > index c3624ca6c0bc..7b5a26a866fc 100644
>> > --- a/arch/arm/Makefile
>> > +++ b/arch/arm/Makefile
>> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
>> >  CFLAGS_ABI     +=-funwind-tables
>> >  endif
>> >
>> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
>> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
>> > +CFLAGS_ABI     +=-meabi gnu
>> > +endif
>> > +endif
>> > +
>>
>> Thanks for the patch!  I think this is one of the final issues w/ 32b
>> ARM configs when building w/ Clang.
>>
>> I'm not super enthused about the version check.  The flag is indeed
>> not recognized by GCC, but I think it would actually be more concise
>> with $(cc-option) and no compiler or version check.
>>
>> Further, I think that the working __gnu_mcount_nc in Clang would
>> better be represented as marking the arch/arm/KConfig option for
>> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
>> than or equal to Clang 10, not conditionally adding this flag. (We
>> should always add the flag when supported, IMO.  __gnu_mcount_nc's
>> calling convention being broken is orthogonal to the choice of
>> __gnu_mcount_nc vs mcount, and it's the former's that should be
>> checked, not the latter as in this patch.
> 
> I will test with or without CONFIG_AEABI like Matthias asked and I will
> implement your Kconfig suggestion if it passes all of my tests. The
> reason that I did it this way is because I didn't want a user to end up
> with a non-booting kernel since -meabi gnu works with older versions of
> clang at build time, the issue happens at boot time but the Kconfig
> suggestion + cc-option should fix that.

I agree with Nathan here, I'd rather prefer the build system to fail
building rather than runtime error.

If we decide we want to have it building despite it not building a
functional kernel, we should at least add a #warning...

--
Stefan

> 
> I should have a v2 out this evening.
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/885bb20c11f0cb004e5eeda7b0ca6d16%40agner.ch.
