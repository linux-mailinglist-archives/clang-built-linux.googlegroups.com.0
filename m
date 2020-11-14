Return-Path: <clang-built-linux+bncBD4LX4523YGBBXGHXT6QKGQEIV5QJ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B04D2B29D4
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:25:01 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 97sf7088472plb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:25:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605313500; cv=pass;
        d=google.com; s=arc-20160816;
        b=m5VnQZqfHs6tDw+2G/1gsOPnhwyLSS0rHJajABj2PC37FTCL2MDUcsepDWEEcQ+tVf
         7vBUIa1YqUUs1bqVs/zIqaQLfXdqcDY3NcxV/UhwNDcpDP0XcRx9YatnrkXNcTTulmap
         MZPpPzmS3SBprgD3wKgYqTeHTX59GC4XwaST3Do+ETqvwPTDhC8/DqD5InYCt9fx1M/4
         vkxxYI72w+JuAlzucAnn0V+ryE6bgPFGPv1Wb7qiy4we7YRPXEqW0MRCWyjxuSiq7ROL
         yMZT8S0IcKEAspuRcY7qDHYmoqvIoDbHd97n6eYJibS/nmFvI2dG+Uq3c/UDBPVE3hv+
         c8kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8h7XaOdXm0Iim3kdlySe3uYscI1tHJGX7gcLNzoo0dA=;
        b=WURSdq6ahhcXMKKejvF2RVnhxWJq0sVID19QimNsn/ZTC5+LhDmkPpRtUaYJ4Tl/Oc
         W6GJlB4dZkFbZ9b8I+mvLeqPss5ySqRSj4UG4ShcIFqBxJ14MBFCg52QMcdZ3HMmBO3+
         uE0B6uD0WYrVcHeazHp82hqmASDiAHOOEkHRjI9FwFyAmikxgJXQnjYcBB8ps1+cFu+b
         ZWYF5Hpm4RkibMGgULX4cb/03u+PRRIcN2DVRmjonXyHpCuoOgdDGCiiVEWtQZkC/oCd
         mRvNSkxV2kBF2WeMQvkkhgF/w5ZGi8QJdyLKdovWoJvTBidSF3q/fNeGBVWsNe7E4HR2
         Oy3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8h7XaOdXm0Iim3kdlySe3uYscI1tHJGX7gcLNzoo0dA=;
        b=CnrkkfRL6CjfI4uugpiIrjcSWQiPJv8/yQL8f5mu+pCjbNAiegpobfy1k4qdj0vX6t
         O9py45kVR3kFPrlFLtP6iQNxmSn9+NbBV4n4inKTOMCb6ATjuVJ/Q4mVXY2FsYsXZn0y
         s4a7Wfp3Gs+SfBGEx5/YnvUvqSCGnSRaOeHevtUUUX5nui5X2REWPjoz05VJkPXHnuTF
         FhXBB3MTnS8HtS2pciL3y0VKBiTo/OdsZ3BzhJq6e6iBUkjsHiCR/4m6WT9JK+7c4Ksw
         Be/RwZbQ4kkgLyIOxu/2jWCXoj2JLgYwBaBKuZJGmarj3SmmXy6hhIXef9pr1kP9euPS
         7OBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8h7XaOdXm0Iim3kdlySe3uYscI1tHJGX7gcLNzoo0dA=;
        b=YJo0mDdrekkO9+BNWIduLRo69BwR1jxMK042/yB3bTaFbLQRWakT61PNXbLzAYsmPh
         tzeRweqWi4ju0S7PecBNnNnoAZchQ6i0bCaQgwAbIhalkVUP6yXBqyNR28VH9CZUYwxI
         6k83vooHFUbDpcr76lYOPVzyGWeeERZ4kzs9PngEsZHlBPljSPD5e7MSKJrz/mcp95VF
         qFw8M2Dj39sRSdGRopouqaxCMxX6GfiD4MJsgyOEMNqn38EmCtFo63P13jm4KxmMoZyi
         R6vfn5a1HS/s3COO20VQ0jv4QShf+EZcB82wrmcdf6O+LMFwI0LtVUkdb5rWO6aA3qWd
         ZQyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tAac4sbCntKt3ycobhr+Y99V4Gj5IAhYLx+AvH4c00SuFiGMy
	DPE5mrIqkxSSBYYH42Ni3uY=
X-Google-Smtp-Source: ABdhPJzpHfJfxfhK1MzZYTjoV1Q3+7Y/NnxCdrYaj02U30pZYJ66Fakt5b7I+B/QPW21noVjd9D3Og==
X-Received: by 2002:a62:f909:0:b029:18b:588d:979e with SMTP id o9-20020a62f9090000b029018b588d979emr4261984pfh.48.1605313500310;
        Fri, 13 Nov 2020 16:25:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls4525272pjo.1.canary-gmail;
 Fri, 13 Nov 2020 16:24:59 -0800 (PST)
X-Received: by 2002:a17:90a:7c4d:: with SMTP id e13mr5860622pjl.146.1605313499760;
        Fri, 13 Nov 2020 16:24:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605313499; cv=none;
        d=google.com; s=arc-20160816;
        b=mPM2E3mHuF1k7MjMP90P8TZeZ4MZz+05lnJ0kVQBJg3IVQZ54rWvPvpp4W/2nof8zj
         KwXhuc4vGsBesj+sD2FQftkdBJmIzMm8VVEPk2zFha/MTYJZiU6QtK97Xm2L+zE8UxBP
         GuAdN/tUgSsZth4KUNw5uVKYqOz4sG4AV+PjO3Zvf/pMTQZI+PTFJoVtVXZPYDpGtL+E
         Tx4oca/+b21QRLH4rcjYQe4IFMrRUbXP6XbyG5MoqP31UEA52jyULtmnbWcaoOiMkjBR
         WYdj7bkc+G2B2iqifCEPdzTduh7/ETD9kGbiiAr5xPG5K27MR+FDGjNU3zhbNv8pgxi/
         5L+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BoP4L16rBUYKeoQuJktCXKAO0NQBHHmOxG9iesvvLL8=;
        b=LjO+0mN1C61fwhmWhPWHRwOckdRD8ZZzhuifkKwmZrwZM/QQ/uerhK1UO+C64qzMWV
         dyHOtlOjMxVpWcNZ0x6CE1xlcI8hiG8yrMQ4gJO2v6P7sqnyWhlWJ/kxxjBBdU+ag+cP
         ZUYx0nPPFYiL4AzeVbrQVGQ4XikL3ClQyjx0vuJ/6ZDQxVH1IWUy91XZouXyv9vUFkqs
         J+sQdLSuFw/FOnc1kC3fsqRb4GvWHH67scsTzlrl0gj2o1FP5KNmzO8Dg8s3Mq8q3EPT
         GNYCdE1Q+MUHT3UFsMu6dTysx3Dp4O0w13x6ZV+9bXlVDKAggQTHF7o1+3USR52vpdgw
         yoRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id g4si839055pju.0.2020.11.13.16.24.59
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 16:24:59 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AE0Kdnt005533;
	Fri, 13 Nov 2020 18:20:39 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AE0KbKx005528;
	Fri, 13 Nov 2020 18:20:37 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 13 Nov 2020 18:20:37 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Arnd Bergmann <arnd@kernel.org>, Brian Cain <bcain@codeaurora.org>,
        =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
        kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: Error: invalid switch -me200
Message-ID: <20201114002037.GW2672@gate.crashing.org>
References: <202011131146.g8dPLQDD-lkp@intel.com> <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com> <20201113190824.GA1477315@ubuntu-m3-large-x86> <CAKwvOdkEtTQhDRFRV_d66FyhQBe536vRbOW=fQjesiHz3dfeBA@mail.gmail.com> <20201113200444.GA1496675@ubuntu-m3-large-x86> <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkBSGPaKmQY1nERVe4_n19Q=MUtuwdond=FJAAF9N9Zhg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Nov 13, 2020 at 12:14:18PM -0800, Nick Desaulniers wrote:
> > > > Error: invalid switch -me200
> > > > Error: unrecognized option -me200
> > >
> > > 251 cpu-as-$(CONFIG_E200)   += -Wa,-me200
> > >
> > > Are those all broken configs, or is Kconfig messed up such that
> > > randconfig can select these when it should not?
> >
> > Hmmm, looks like this flag does not exist in mainline binutils? There is
> > a thread in 2010 about this that Segher commented on:
> >
> > https://lore.kernel.org/linuxppc-dev/9859E645-954D-4D07-8003-FFCD2391AB6E@kernel.crashing.org/
> >
> > Guess this config should be eliminated?

The help text for this config options says that e200 is used in 55xx,
and there *is* an -me5500 GAS flag (which probably does this same
thing, too).  But is any of this tested, or useful, or wanted?

Maybe Christophe knows, cc:ed.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114002037.GW2672%40gate.crashing.org.
