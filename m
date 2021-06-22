Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBOMKY6DAMGQEC4755ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5103B0274
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 13:10:50 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id f2-20020ab006020000b02902124881cdf4sf6289907uaf.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 04:10:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624360249; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2mYHNZSzgnR73NFUYUi8wpitf6GKuO6Ez0xLmnJ6e5ZuCNcxloCT94vrfM+0zoxjn
         eLpGRPWeY9yPQbn+4igVUIbsuO/fdRPjcHSs8YdIZTxo8M7/QwEOSBYDnF2zZtyafODK
         1I+tVD7lg4NIEbjw8/gsNINK1dEQM7VLYAh6wS4QvHE52YVd9MwwHkhXUrgyy9fS0pF3
         rmGINv1KWkC7EwGJloJvEknO3iuGQ96ELwqucEzRQsI4a5JGvQ0lYP/dxLbWmNoJFrGP
         ZiVaTrf0JykzozXv3B6JgDLJPJkWY42e3r2mpvNA9EoaUV+nL/8YtAwvpnuqtMD7gKEE
         sc6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=WpLi9jXls9MsPh1LD/j+qV8U4hb0CjxDLrnUo+g+NrE=;
        b=JmU7ZDXq33k0WBg03yOOs7lhUOe12wikaiAzDTZz07omGWE4wOd4g7ijIDYAIGAQyC
         05MQzOUId/Ld4D6tTJENxLwp2vK4yjhLfbuT/JLAob8pEXdK9Ia2hEU+t9ylDRjYfvsl
         GgPVmNWGPWnXg+EaqHk2r82cIptKl+ph0agdJdCWxskEdPx+Wi2KQLZmiFTfg6bjAzik
         jp7aE7aaKDpueW43LjlnTlPW73NG4Fa9bhvC+p8I6A9i4Xx/pHhGd2khuFZriG6+ZMiL
         nDHVLq2ny7oH4u9tYiW6VL8mDI0ri6A0S6JlgrTHfiAiOvQvhI667yaB7VggowrylgUp
         DmMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KgzLPLsx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WpLi9jXls9MsPh1LD/j+qV8U4hb0CjxDLrnUo+g+NrE=;
        b=qcD7bcFmjOYqrMuc/Enqp/E7GQtFgUrpvehPVjDYvT7pfJoB1S5UV4fO3ADlrqugOG
         nrqaIE0aFPnd72fmMCfN1bWCpYC+JYDPJE9LWSen3imzH2rySJiB7nv8lK543Otl0vPj
         FA71qZKHsqIYAYxwRwtbMaCZgR73t7xA7g4vdo1DvADChvz8p2joD95GtIyjOpE83N/F
         sDHunJCSnxagtdcrMbyAR9TZmIsw+LBZtP6rG/+MZK3wGf42sJT+1Ke8XeZJhz1w1Jvq
         6uh+EVgtzQF9sLAQhnFdUfA8QnlNWM66EVPUj+R2cvXcQa+RUg/wHs/wCqIPQwF7uA5m
         4K3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WpLi9jXls9MsPh1LD/j+qV8U4hb0CjxDLrnUo+g+NrE=;
        b=eoGnPd/crVYtFUkeP78Gmw+eeygUUvBTnSycDQtb1SxQrE+U7SJj4wWYHfhRFQx0/I
         tllRV9Mupx1JAvME6dXsNqf2WHhrdW7sko0qadE0WMWkWI8W16e6K0r3ZUl/BxmDBVn9
         cZpTcjgIHwb+lo7JuKfdfg5TkBoY30OXA6v7EzlR+NfYP3HJBiYso1AAi5b2hln4oXtW
         O3JQAYgchVIDTjhGqYOYAuXgXPor/XoCvF76I/X/NU4CNwH8zmAM/AdVz8VCPudGaBHb
         +xCnYn1dXU9dFe/IeYTny29PIjAqCBZkv0te7hFgIb3GmsIpRkInevC8ceHgffeAMh2y
         ERKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LWufvMv5KzxyNE6w7IGrMN0AohbNZClECukAiWuaIM1s2rut1
	Lv4ROOdL43SRd+5Nl51dPp4=
X-Google-Smtp-Source: ABdhPJzIdPd0tC4Sp7rlUyOkwhvcl7/EU5Gor10ZOjiXzpXSAHVL3BBctHDl6IdxCmGkV66s4dH8lQ==
X-Received: by 2002:ab0:6392:: with SMTP id y18mr2660461uao.139.1624360249768;
        Tue, 22 Jun 2021 04:10:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5e13:: with SMTP id s19ls1628370vkb.9.gmail; Tue, 22 Jun
 2021 04:10:49 -0700 (PDT)
X-Received: by 2002:ac5:c389:: with SMTP id s9mr17918211vkk.5.1624360249262;
        Tue, 22 Jun 2021 04:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624360249; cv=none;
        d=google.com; s=arc-20160816;
        b=QamM2kuAJs/3A0ZM6V1tXmjA6g0FhOBYroxrg9S9HjEy3vYyQF+mVQ9BFT91FJWf2L
         nhiqh7RPJqaqv2XOiefgprZB1u/MxUbcFYd2pU91XGeXOrfr41TGgvmtaJZImBWQwtG0
         Uwm3sCxTOqNgQkju57jfjm3nugO0RNv+aqD1GAkiIN8QHnKM4Es2x1Mbuh7VWKXgpVZA
         hhy1ujTuNAndIGMBMr/1MOaUlBT6qVbvxOJ0fHVAQgTzo7VIfMc0kJMZLdEjstWiire/
         kMlVEJTbM0DZumfDkm04/LwiG5LPNSgxnMXO3n8L2QjjiQRm+vCnpT8Okf2WHDxCGZ9A
         J1Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oD0C/Yuodzh5MgYGseAzEk0iZX/6oKBWMDiN9/ScPZ8=;
        b=PX+BQRElsMY/TVjLveKEd+gHtdC0R5vZqjXGA78hDOhhv8lSElbgBQfH2UE/kO2PN9
         zf21nDRu6mNRCOziyvEnb/4TOA21gN4CayL1M/jHEAYls6dkqkiDOWpG0iySKyKGoNUH
         mty2g5wsdrP0ind8zsWYGhSITpz5CsZZSPff0YR5WKNi+ZU+dM18wYyoTmtA3LeiB4Ip
         EgvlceJPiq/ueEPWoA99ZN+RK3mooVzvt/uiJVh562oB0LtpSYZIaqxA7YbCfWHgiy+8
         oQI4Wjk0ZL5Mh9VUvWZ7xxMWbo93BKAVu9as8TC/Dlxo+8ZBAAHN5vlTL6PojncHiVJr
         BviQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KgzLPLsx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 78si48456vkc.0.2021.06.22.04.10.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 04:10:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 127D561076;
	Tue, 22 Jun 2021 11:10:42 +0000 (UTC)
Date: Tue, 22 Jun 2021 12:10:39 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, Borislav Petkov <bp@alien8.de>,
	Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	linux-toolchains@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
Message-ID: <20210622111039.GA30757@willie-the-truck>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
 <20210622090540.GA67232@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210622090540.GA67232@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KgzLPLsx;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jun 22, 2021 at 10:05:40AM +0100, Mark Rutland wrote:
> On Mon, Jun 21, 2021 at 04:18:22PM -0700, Nick Desaulniers wrote:
> > We don't want compiler instrumentation to touch noinstr functions, which
> > are annotated with the no_profile_instrument_function function
> > attribute. Add a Kconfig test for this and make PGO and GCOV depend on
> > it.
> > 
> > If an architecture is using noinstr, it should denote that via this
> > Kconfig value. That makes Kconfigs that depend on noinstr able to
> > express dependencies in an architecturally agnostic way.
> > 
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> FWIW, this looks good to me:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Catalin, Will, are you happy iwth the arm64 bit?

Looks fine to me.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210622111039.GA30757%40willie-the-truck.
