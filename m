Return-Path: <clang-built-linux+bncBD7LZ45K3ECBB44GXD5AKGQERCU27ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B928258A2B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 10:16:52 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id 140sf214569lfk.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 01:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598948212; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cen+1d+WTL68BhZZ8Nc3RtQiPOFl6w+pevJkMjKIEs0j35H5xs8WJiaBBwyNsVK2pR
         bc4VN1Y7JTJJpH7Ma11DmYhMGRgLgjVRyejm9OPeSK9N1NiRLZcCwjogJVsitxEMxy9z
         F/x7vkify7ODjj9MS75wdrP6wDVOpTNFtp4QU0FHq0u5Gmg6D48NBK+0oN4uAR3nP0Lc
         8x2woBmz1MdpMsgpaFuscq3+khE3kdF+6lq0/ZiKfKqjFx/wpR/6wgthpY6SevE3d4J/
         a2RMs5eW204bILgkH8XV7ot116XUv374SasjmybiKOLIIholj8G5reI3HvdjoZjemyzC
         hMZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xVrJFLzoNgU6VhRklhHXp/Jo4qGkmHPataQPwhPluVI=;
        b=pf8yuYHtqFd3DS+X2BhdEodVGnXVXXZhGeEanj+ZTBNDZgOb72fUGOx4Jqqrg69hae
         DNPpW6ZR7Y/C+e0YhgF3KFWlypVMqktaNrhWeK8BZZnBmcpzakTUq3wTqLCSYhp99kJd
         slu6MLmGfy738Fx8GRTAuNHZIDkGDTh8W37wGxeQq3C1reoTiOBVN2IkZtc67MjNPiqv
         CBsWLUrWhSVUyufB+6Vx0MxBYewdhsQmyXsbhvFObjdDlRWcfTsc42Rwh5MBGFgYualG
         bXoQNohGlkGwaQjWwlCpcWQLzMeGb53vRKhipiumf6nO6a1vcSrMST3tpzC5aMbDCzGB
         3D0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pABpQ7tZ;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xVrJFLzoNgU6VhRklhHXp/Jo4qGkmHPataQPwhPluVI=;
        b=gM7LtFtAx8hrhUrueXbfhgkTA2rtIb7xHt0lGRVRnJRyYYk23BAn1Zi3M9/tEPYAjp
         njmzNeRsbeXP2z5q2ofJlDmtwxLn+j9GyhGUPzD05ABttvKuO6bPcR7oDh7tUxNaPlYR
         vGFz2t9GR4Z9FcPcicSOL1kSecHP4yqhZWXdsYs9RYFHpRwG8KPgIdYDIo9eePv+dfIC
         j/igmUvaSOI5FZB+2xlPsEibYtNG5ZWSU9DOLi2bhJ+sbRUxAX3JMyh+pUpR0mHqavBi
         5CTh3W7DI/8FC248ovZLVvORp7ZSR2hN2FazRG+3kBaHTnbfkSNzfy0FKqeQJU4p52FI
         ibTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xVrJFLzoNgU6VhRklhHXp/Jo4qGkmHPataQPwhPluVI=;
        b=J+e2fbpGX0/1gyY7HVY/bgEZoCSh0i09/e+o+dlcMCAkJTTWx5g5PwaBH1Hy+9VRvo
         AmIlTqi1EeBxxTexgjBWy7itd+o31x48kLgaltJq4F7dMYMFWJo6EU0G7dlzmG2vsk4+
         zccj1AqYIfcyDtGrfI69McL8d2bDJcAYJZWQxpTI6RjOCBynk0AuNHIeRMxK1abTCPRR
         xQPRdbhxnl08hY5hWwDhBmfcNIsBbCs14tzMrNCi7zWhCkU1g3EvRzwekBk5whhFUNjL
         fj62H8aU2lrI60c1W0biiiLhW4Nod5Ri72gXrxf6cNyDmAldaAh3tcbgClT9ChUu4GxE
         ydjQ==
X-Gm-Message-State: AOAM533dEDPRM75M+nkz9UUg6kUpdLznIlLCjEYmUZHIj1C5hcaj2SoB
	8/dlQX4q7rCd8RxyIaznlmw=
X-Google-Smtp-Source: ABdhPJzSw7kWuqlKu6LsoLeBPYtnIg4mT5Q6YRosobt9qc12LLUwZ6A2AWJq4uDBMhgxRqWa+lue7g==
X-Received: by 2002:a2e:8805:: with SMTP id x5mr422015ljh.130.1598948212006;
        Tue, 01 Sep 2020 01:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a58:: with SMTP id k24ls119675ljj.4.gmail; Tue, 01 Sep
 2020 01:16:51 -0700 (PDT)
X-Received: by 2002:a2e:6f17:: with SMTP id k23mr402813ljc.245.1598948210970;
        Tue, 01 Sep 2020 01:16:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598948210; cv=none;
        d=google.com; s=arc-20160816;
        b=m8YH0iDJ/i+H0GdfZpkh6SmVzpjFortrwBmsC0H/tp7bNCc8gq1NYLibjVXV3GNcL+
         gHn8tB5uXeSXu5MDPD9sAqwZAlRSCaPcRfnvGsRdge1ZEDdXZcjoYCtEvDFw1mlrCTY7
         he8Lf1PvDixZ1SgffmOx3Mnpfq9smR9gNMIIVZ9gR6bmWhsWhyB8peXwA19L6hMa0oSA
         MmXGu4RcDaSED1QGMgnosjV+R2OxMj5HQhu1Cc5vHlMC5fWyDOF2kFaVbRG5dd8DDzoO
         X+2j6+ZlyRZzgIhflqdAQkjIznMfgT3kwblSKYv88wP3AarokQRvqxgAaE/zA6bgYvFx
         XWPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=swNovB3+fcrt09IBXHVDolTV6/eIXMyoTVYnepRz3fU=;
        b=N8b86+z70EfGFIC/oW1aQ1ZoKDWA/wVyCLObW+uBqlO2KD166qDD8E0pkreviSJx6N
         QFk+//Bfcuqz1KOEJK6N8mO/yvzwW/gg6cjD3fGLhWqHYTUjX8U+vWQo6JygLXfsp+X/
         6kLBgu25PScze/klSrS/S0vhP0Du0UiRUr/g8Yx5YbFQrxpfkBcOI7YRQlWGVxH5KpoV
         gzAS/IRdw8QvmkXqSMcvzHjqLZJKTv6mapuhgr+gtFBohlk60HGfQydZ7gF7OnsxL0nw
         J6dhUzG2tnonYZwnmAFj4WoaLA6T1PySXO/NsJmySii5I5qJmwXqT0YrNsVLZiW7nDBm
         xovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pABpQ7tZ;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c27si18837ljn.3.2020.09.01.01.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 01:16:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id l17so557864edq.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 01:16:50 -0700 (PDT)
X-Received: by 2002:a50:d942:: with SMTP id u2mr802309edj.0.1598948210504;
        Tue, 01 Sep 2020 01:16:50 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id k10sm507731ejj.108.2020.09.01.01.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 01:16:49 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Tue, 1 Sep 2020 10:16:47 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <20200901081647.GB3602433@gmail.com>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook>
 <20200901071133.GA3577996@gmail.com>
 <20200901075937.GA3602433@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901075937.GA3602433@gmail.com>
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pABpQ7tZ;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
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


* Ingo Molnar <mingo@kernel.org> wrote:

> 
> * Ingo Molnar <mingo@kernel.org> wrote:
> 
> > 
> > * Kees Cook <keescook@chromium.org> wrote:
> > 
> > > On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> > > > Hi Ingo,
> > > > 
> > > > Based on my testing, this is ready to go. I've reviewed the feedback on
> > > > v5 and made a few small changes, noted below.
> > > 
> > > If no one objects, I'll pop this into my tree for -next. I'd prefer it
> > > go via -tip though! :)
> > > 
> > > Thanks!
> > 
> > I'll pick it up today, it all looks very good now!
> 
> One thing I found in testing is that it doesn't handler older LD 
> versions well enough:
> 
>   ld: unrecognized option '--orphan-handling=warn'
> 
> Could we just detect the availability of this flag, and emit a warning 
> if it doesn't exist but otherwise not abort the build?
> 
> This is with:
> 
>   GNU ld version 2.25-17.fc23

I've resolved this for now by not applying the 5 patches that add the 
actual orphan section warnings:

  arm64/build: Warn on orphan section placement
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement
  x86/build: Warn on orphan section placement
  x86/boot/compressed: Warn on orphan section placement

The new asserts plus the actual fixes/enhancements are enough changes 
to test for now in any case. :-)

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901081647.GB3602433%40gmail.com.
