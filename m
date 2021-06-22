Return-Path: <clang-built-linux+bncBDV37XP3XYDRBDG3Y2DAMGQESAHIHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id F06F73B0040
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:29:49 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id c5-20020a17090a1d05b029016f9eccfcd6sf1722200pjd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:29:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624354188; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSQeQdXdUb+t6qNpnf/vxo01jnKbebUsaoN+SWxUU8wgBrF00Fi+ZAuxvHYREks6Ff
         XAtwCRXFAHGN1WgcwClV8t95dM7UVD+4sMTp1KDIeHC+a+oKMpCIgLfaL6XoO6ZwaPVp
         Pz/BiOQG8hz29JSfo6ysu3Z1qlFxmMGieeKKMyjyYf0OBHcm9ghNQH4pvUHKRkaOLXl/
         bbg4eBnSTxLRXjPJTawLedJNr1CpF5Q9jGKyxQtL2MlDbWSYyNtGZbqrm25fiPg8W0HT
         vyPelehv3sscWwvZr3SycF5xppsGQKbqJsZpLknON2RyrfQKQMF0ED+URgbDv4fXmmNj
         sx0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S7fKVrM72XGdeyThDko/Ym8Aaj4CTM3tw+u2gLJoM7M=;
        b=OyZRiKPsROIiNiP1zEZx+9boyvYkCOkDunewdVlcP0LfYErudV7YrMwKcNIa6SzIai
         RKgYPDup78NPp6m555rtua3NQUvslmbypi+kQiDrIV8WIczRXVY1+OuY9Ja0Wim9m276
         qF8mCcNxVikTKXa8PPMclAqjIQFOEdIotCUYLVT9YGLkAiOfynJXecDqRmQ78R+97pAO
         xFh1ZJy9uiOSaTABAr/+L9t38it9uA8u4qoRUCgqa+Gadi6EzJCXggyDx4NyQuj/wP42
         9cQgN/xiFAnwRqHHYE7mkV37H/ZtF4Cy6iSqlmPHkn+OBQ23xASVGoywgZ125/nMguYH
         6wzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S7fKVrM72XGdeyThDko/Ym8Aaj4CTM3tw+u2gLJoM7M=;
        b=Cuo96y1kdaUZqdZsNITCgXI9w7r6faVXyNEdwEgmpSY1PR0DQRO4NV1rgD7NxiXmgs
         xCasmS/faMUIkmilIqFf1TQLyBuEWWWlhIMyd9miGk9FKp05F1rsbj4+nnUShiWOIwT0
         Pt5rqH9WKe5oBe2M+WQPNKeitZlhMSNO4w+IbtjSCYaA3b178RlyAN8bSKi9pN7pXhsV
         in+mcNTVcTdGPkk/99wqpNHSHU5AJsqp7Zckp/bof24EG+3vxlpP36RajnpSPk2RK13h
         zMLiTNRqpVCJ56NR0/8VsXCqECVzQmwTM7oP+rsVX6cStlhDYfoUbhmXiJ6Wup0q6+H4
         3azg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S7fKVrM72XGdeyThDko/Ym8Aaj4CTM3tw+u2gLJoM7M=;
        b=POg9w/eEDkbBhnyR6tuTL6QBxtrdXGIiz/cyTKAk3t10OOf6khrJtFPwm19uePE1qb
         BhKmSoh0UlhTOiNnFT1x5/LmBATthngEZYdv+WhNEJtFvhz4+1OlXcKQc8PR34q8jBZ1
         o2ALutc59N6LKdcwOME8c8g8tURcjXgk1Nwmd0JYTpwUnXRxdwIKJeQCxF/0SKCgoZbi
         VxdtO3p+Kem9025Cj4hUDppSUpdVATP8BJINsrI8RfhI5tUd0cdlK+vb10bRVNifI/co
         uD9N7qf6W2vKL9MJ4uGQ8GbhiUZGNwqGoj0VhyBmK5G8vR8MGrDvYpbGMrMI48aKeVEX
         YDTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mRQTzn09P3Oi13RLkd56KshCGzlUeWRLP36STHybWHp4jRrV1
	N+zwPzX8PNWVy6V7Edb8zsE=
X-Google-Smtp-Source: ABdhPJz+i8OaC5rjnnCwct0IOD+V3RD1yvLvWI4Z2oeOCK6bgA6o5ONm4AJ6UILg9h6b4OV5YGmZ4Q==
X-Received: by 2002:a17:90a:6605:: with SMTP id l5mr2876769pjj.168.1624354188670;
        Tue, 22 Jun 2021 02:29:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1946:: with SMTP id s6ls7207990pfk.8.gmail; Tue, 22
 Jun 2021 02:29:48 -0700 (PDT)
X-Received: by 2002:a65:5582:: with SMTP id j2mr2910409pgs.26.1624354188007;
        Tue, 22 Jun 2021 02:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624354188; cv=none;
        d=google.com; s=arc-20160816;
        b=CTPtPuPlXqd3Rxt8NHiC2Wqqgjs+WeDdXlJOJKf6M1T3zq+M4DU+fF35y3uEy/7QHI
         7VFQQPApw+4WwXc+zdwHtqdT5fY6RUek1ud/SHvDCwv3Eb4ZBmtMpEuppKUaumNn2SDv
         f/FuWk7AgLbmKOcdHumqNx6zvJfz/ltDo10R5PIJUu4H+gZFPiU5LAUkj5bEJwmCFjR5
         W8t8sEecl84HsG/8PhX3WB9zPxxhLH+I/jOdwiXE1WVXY1bLssrBoPRbicqeQcqyNRiY
         BihSBYPvK7HefZVBhb+irju5BJQKp/7eUV6ir1QHJZgumZ0YzS9Zs4NI/P+6p7ycKT54
         AbCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=RS6+gKz4YxSB4uw4tCmSLCPe6myH3+z4dXxsHEXIsiU=;
        b=M63BRojo4nhvYGxGvnEywDLNmDlPCW0GPqJhw/LTEBUuo9dwbwzRKJi2wavAiq9WNV
         JuMDNWHarSI6eeu4lPkgAIFCzAk9n2Zwc1Xp+HSJWt6wYY8kasJGpy5KjZ7op+iWQpDW
         /LqAXV47RYdn+nGWheWF1KvKQLZcKmixWAMYCi54yWeDIKRrfJeOt6Yu6AhDCyCTpyFD
         d1Gj0Uu/UuIPHgs7ea/UpWaex032yQ/GN1bgnjRWXpIPOzOcOagfU3t41P6rNXlLT5O1
         tUa9duE+yS7kl85ArajCJUeBMTFJNAEZN5/P16hZkqyvCebASXhRP+adcTOQy+1+Vlq+
         1uIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a15si165374pgw.2.2021.06.22.02.29.47
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Jun 2021 02:29:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DFD46D;
	Tue, 22 Jun 2021 02:29:47 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.10.229])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C2B03F718;
	Tue, 22 Jun 2021 02:29:40 -0700 (PDT)
Date: Tue, 22 Jun 2021 10:29:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Johannes Berg <johannes.berg@intel.com>,
	linux-toolchains@vger.kernel.org, Marco Elver <elver@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-s390 <linux-s390@vger.kernel.org>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
Message-ID: <20210622092937.GB67232@C02TD0UTHF1T.local>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com>
 <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
 <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
 <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
 <20210622092533.GB3555@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210622092533.GB3555@arm.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Jun 22, 2021 at 10:25:34AM +0100, Catalin Marinas wrote:
> On Mon, Jun 21, 2021 at 01:43:54PM -0700, Nick Desaulniers wrote:
> > We need to be able to express via Kconfig "GCOV should not be enabled
> > for architectures that use noinstr when the toolchain does not support
> > __attribute__((no_profile_instrument_function))."
> > 
> > Where "architectures that use noinstr" are currently arm64, s390, and
> > x86.  So I guess we could do:
> > 
> > + depends on !ARM64 || !S390 || !X86 || CC_HAS_NO_PROFILE_FN_ATTR
> 
> I think you want:
> 
>   depends on !(ARM64 || S390 || X86) || CC_HAS_NO_PROFILE_FN_ATTR
> 
> > (We could add a Kconfig for ARCH_WANTS_NO_INSTR, which might be more
> > informative than listed out architectures which might be non-obvious
> > to passers-by).
> 
> That would probably look better.

It does; see:

https://lore.kernel.org/r/20210621231822.2848305-1-ndesaulniers@google.com

:)

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622092937.GB67232%40C02TD0UTHF1T.local.
