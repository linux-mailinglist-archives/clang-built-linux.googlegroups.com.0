Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZEET2DAMGQE5TUB6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EED6B3A6B8D
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 18:23:01 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id r130-20020a4a37880000b029024987ad471csf7244337oor.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623687781; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQPLpUdgK9KKNXCwq8BztrfuOFsgZ1WEvWQu1/wh3Z3t2QMEbulPYtmqHOe2WkCA8b
         YMee0Lw7+oHuW10u43+QWVJtQ6ibh/aLDQa8/cfaIGvvSiCMOpBjDkgZHAn5TP4LFxfT
         zZ3z/PVN7D42Rb4sBI4b+obHW/G82nOibbmHoC0JSI5I/5Q9EtlwLx8/3raqDat1MQkY
         0K1EMAn5gQV3hJC12pOIZm+mGtw3U198FdcYSO1a2xAM1E8Agt/DTU5Mp2UN3WgBJydk
         y+9vMbF5cumrgm/LKGeES/879EwcIzQ+8q587hpgYHNUJk1PB/l1IlhW6B0Jjgizl9sD
         AqoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dP5i3ZUv/FX3SqJqs5B7rNAtoUG5zvnzRxDsRaYGzXM=;
        b=eSILn9cC449/iAWhqpn01s6Nrq4C0OJqIiX8iUd3X4TgZYOhtiIluJiVVaHkotGe9T
         MKHP51F+1RmtZdO2vUE4qaXoZMmj4M2+nb4p5aohRjIHkswJP3Sbt7jyhyj+GBJhC0ys
         UN3PRE3yjVqFugOlHnLxGHicDct0ZfTiN09O0l9toaQhATa81EzJwkZCdzaMAMWT88gp
         3ApSahdgWB04En3OIDo2wEBKU6SSKiWHnBTxNKLcY6XMXqB4sDTzXYpsYhMuMOc8ekRB
         onfJz7Q2rggxtKbjuFwI1bj3mTuwf4uzp7USUBxviyNGm+B2SmlMqrZ0eQexsexCMPTd
         lAeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kc8k59SH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dP5i3ZUv/FX3SqJqs5B7rNAtoUG5zvnzRxDsRaYGzXM=;
        b=W5ybUfXLtoQJCbJUdPgT6Oo2ouEp7pf5qnSI13f+f0O2W5axeGshA5xKnsN9uqAkOg
         EHr/ulSge3Ibf4bbT0o4naLXHJQUFPFJz8fpXsdtCW8AzKLN7Ib+W1pPT2+FppA+pEkp
         SReso2GxCY/t/Eg2C2ge2OtpP3XnRjk00l9syimTt10L4laIuuBL0d8wxxHMEhSmJyUf
         CvTr0DDlS2RveyAjSPzIXbNM5L8DJZrPujFB1ZZQL7h2FNuBisBrBo+vDPhb568up7I0
         +RqZErzGV2iCziT13dfh6IQE6/cWhqKJ2E4BjVkY9k97O5Sk1hvC/aL/0RY0sgLdXa4e
         vdgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dP5i3ZUv/FX3SqJqs5B7rNAtoUG5zvnzRxDsRaYGzXM=;
        b=GbxbOmYtGDak8+i37uvGqlHUP9bveDvk6F26WUYhqv6U1jrLYxH3HRbc+td8tbtER2
         QHmpwI2WEhZ6dsIdmCQN/mwvWB33XhWPV1/Gk1iBY+r2DloJ8N4q3OTO4Cc9wQuUJf2o
         4uIJvIuHT50a1KKZ7koa1UQ5iKgAuUbEYIb5xVubHDNbAAifICSwEMYAPbjKsY9x52g3
         IY1GHYtjPefl4Fqby0OPzgN/pgjkEzgiCFSAi/g/Z4pML8fSMUWd/ht24nOtgxcExSZT
         ygRI6AdGJ2uT4uBgjGURNC2R0eMvpqlpXlwmQjtASGB75g2txvLS+4LqQxB5T/4ST63l
         KduQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UjnRGQwFcvUtC5QHLGMt5TrzyOWX13Mc+7kAzFrlXGkFHlFRD
	hE/PqMOgBCZlwZKCFcoePUI=
X-Google-Smtp-Source: ABdhPJyVB4ekqzgd84BDZPe7AYvxRsQhD9R8otOQ0MDpOVR9wqjxnaLebIXYpcWYdY2+rOV73oW1Hw==
X-Received: by 2002:aca:dac5:: with SMTP id r188mr3225679oig.100.1623687780877;
        Mon, 14 Jun 2021 09:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls6092216oto.8.gmail; Mon, 14 Jun
 2021 09:23:00 -0700 (PDT)
X-Received: by 2002:a9d:baa:: with SMTP id 39mr13745182oth.159.1623687780540;
        Mon, 14 Jun 2021 09:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623687780; cv=none;
        d=google.com; s=arc-20160816;
        b=uAGjWhHNqxGHPTEn1r0yQqdFyJiJFNel68FjixKvUSz40TuXbg8GHWaKW37uct2bBL
         4vAuChJQLH8C3VtqYYu5c5+kljiZqpRZxO0PlA50AKiLQ4aC2XNv0q10hXmW5Taompo8
         qVYaBivxSY3qV+FzslnkhU/yjhbsYjVJ2nRHfo79092nq73wWKGiCHMWtOSXJwgLbuKw
         40Wpfx40zy3uA9ZCjN+Y58fDQaKFjKd2ZvdonFv4W4wkn7uKfKW3HbRzux8xIJZmgYZy
         K2YAPZ8RWe4GpSaK7rU+SIm4k8VRqCp7Kr7ZTgrvMXOVKKZRxA7O7OqltBX0pppntWYx
         nF7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/tqMNBdE4qHdzJKBoF81z2rnqzQbtDIbs5Mv0crRZTA=;
        b=dGQD3UTMIto7LP+k8vkiI/YTbTKRY+9RzA8klNcz2/V363akpKc68JDm2kIIoEeKlY
         WXyX8bsGQ8k0O4CQlOBzeM4Vs+d8Z0Kx/CJUGf1wPnDgJVCu/8dRlxBX6TGlFkbfQjlz
         fTtZ0HvSjszJbRtQmGGGzUDYQcXvj2Kfs5CuS8POU/RjInqOXm/oeCzP5W8JrAxgEaZh
         gtKRzHQty1JtYvmI55NhFIO2PdEI5W5gKYSwSkTjmQLAVArModYY9BtwL90vNsWkgHkW
         gCUOZonZre24xNDYUu51WYaxLH7YAyeBogaq4pSLxCdcnsi6vMwPEIcRfbj0ZiIjr99e
         rRhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kc8k59SH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id u128si1924707oif.2.2021.06.14.09.23.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 09:23:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id q15so9036683pgg.12
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 09:23:00 -0700 (PDT)
X-Received: by 2002:a63:d347:: with SMTP id u7mr18165235pgi.434.1623687780120;
        Mon, 14 Jun 2021 09:23:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mi10sm17066933pjb.10.2021.06.14.09.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 09:22:59 -0700 (PDT)
Date: Mon, 14 Jun 2021 09:22:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Marco Elver <elver@google.com>, Bill Wendling <morbo@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	oberpar@linux.vnet.ibm.com, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <202106140921.5E591BD@keescook>
References: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
 <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
 <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook>
 <20210614153545.GA68749@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210614153545.GA68749@worktop.programming.kicks-ass.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kc8k59SH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

On Mon, Jun 14, 2021 at 05:35:45PM +0200, Peter Zijlstra wrote:
> On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> > So, AFAICT, the original blocking issue ("PGO does not respect noinstr")
> > is not actually an issue (noinstr contains notrace, which IS respected
> > by PGO[2]), I think this is fine to move forward.
> 
> It is *NOT*: https://godbolt.org/z/9c7xdvGd9
> 
> Look at how both compilers generate instrumentation in the no_instr()
> function.

Well that's disappointing. I'll put this on hold until Clang can grow an
appropriate attribute (or similar work-around). Thanks for catching
that.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140921.5E591BD%40keescook.
