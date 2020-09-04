Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7MKZL5AKGQEGG6MWRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9D725E170
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 20:20:47 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id j5sf1139452plk.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 11:20:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599243646; cv=pass;
        d=google.com; s=arc-20160816;
        b=INBzMHckOyMQPklOwVXGpmb4cV3UCZKW4XgfasNs9l8Ng2QIifIVrGesLVQqsMoyxy
         zE1Ok7Aap9noDTiV5UYPUSOTrCDGJxGdl4LIGAAuMQLwsQXaNsQKsyAMrysgxhtoi6Il
         UJeaffvyZ39osQsK70db4af7pZntRHEC8jhvmQcuysdoDXtTSGSma22UZeNUWTMbTueo
         poKnaq5POSWMceY5ocfk0OIEJxVMbUInasE6IzPqenc8cpzio1HF1ktFUJk3ryAR6Ja5
         hYAu9gd/ZeSTdS6cmAw5oCOk7FIhhNjClJk6lHJIl7Qg9lLbUQX0jJ5cl/k9tijQxQB0
         dNYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BG0LGHLBC8OP4dQvquEwoO3ECtULylHOhw0aAj+l7ro=;
        b=XLeup+nM/Gf1epHZNppULZ0ctvx/ERBeBlV5JdrZMTNUOBnB+EDElbCl6macM9tZ3y
         eAmbS8PVBSISah1jki9sDXKPGhGzyvO+3YIPupbisnRYqXDeJz8yvKsjFBcC35YhBoqq
         jwxotovDpm0klCEDlztLi7s5FDr7sBI1HSCVsSQ/wXZb7h4qKk1JLWHf4nmagQq7d06z
         ZP4x8AvxIbd+46MMzwDRk7spQYgGMv1OrTaIr6FN1Gt8+7ek9MpPWmzTfvRs1vYOq5iI
         XiES5E3cHPrfPQFAVv/HHKw/d6OHrWF8whYXIAjQg83MPFE/O1E88CyVerLwBut2pQjg
         AJ8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Il3Jp+Gb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BG0LGHLBC8OP4dQvquEwoO3ECtULylHOhw0aAj+l7ro=;
        b=B4QZVJYRA5ZuBJ978bPcESWFm9XNsmK442CLH3wAP2GDiczCMuNttQvPwiEJSz877P
         ILYRnGn5SqnXJGxSY2GyKe6qTwooeQ4y25J1DrAU7j50iN6s1fNe3cFGTziFa7c3hPTp
         dxz9elhfE026MGSAA9FVb1gFaFlVwZWom5YNFi7iBIXrDw6BApZAgiwOlovsNJbgBLkC
         EiampIYwRhdIYvHNOYWzjnQboVAuwADMx7vNzZB8HxxHGb5KbruYPVDAd48jbmEzfSId
         wRfVrCNDtZ/XyayipFedAmEtMv3sEg9RR0WG0MkABytQGDxgGuYtNU+6i5IrvF2apTPJ
         G/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BG0LGHLBC8OP4dQvquEwoO3ECtULylHOhw0aAj+l7ro=;
        b=DZlkfwBEfs0D+Qmb2CxLOJZ8EEThmGxc5A/XoFjJ0ND/SUCdG59WNPFm/xNr8Wgkul
         qfBlAn6UodxDJbU5yZGIaQHCfFGd9OsRKLnU/m73PJ5l/Frgj5TIGiqpv4h+cOC3PhTp
         N12ghMHCP+n7SF5W0g3OtlxAbfNsEZWoNPGNTUWjlF1zWYSANNbOKWCPwHEp4jdKA0Qi
         knzryl75yE9CGrx8NZ99URgLTqfjDk9zfzCnvtMpAs4k2K33HfOiQVCJ66YMuJP4nXG0
         AB1uNilsxWSOwFgVeZtfkRHOLNHHIdeNVJI9oZs1/xCqOnMwPHwVlsqEAP5GV2muqA+K
         epKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wToYbCb7I9NxvRkicSK8v2hTfwiDdKHwF+hg1eUmrVqdun+h+
	YVIvBwIz8H8nSPJWv9YuqEY=
X-Google-Smtp-Source: ABdhPJyAopax79zbD9+2Bjn3TBVUdnNIygg0X6ZPZZfWobvjhm1SmSXaPJM1xgRd2vQRJ8byAZs7gA==
X-Received: by 2002:a62:3182:: with SMTP id x124mr9931920pfx.70.1599243645858;
        Fri, 04 Sep 2020 11:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls4492097pjb.1.gmail; Fri,
 04 Sep 2020 11:20:45 -0700 (PDT)
X-Received: by 2002:a17:90a:ed8e:: with SMTP id k14mr9478230pjy.178.1599243645342;
        Fri, 04 Sep 2020 11:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599243645; cv=none;
        d=google.com; s=arc-20160816;
        b=y6yvMyUJjJddTdVuep8OT4gdC3Xe6uIV8o0++jDqJRmYQmLNo1Dx/2M9Ctlmvms7sq
         offcEvD8RM9PXLdUg9YpGXJq1E2xyXbEeI5/LTux7wjsyICHLfkEmWw9GZDUHNrd5aa0
         H6CPgnPMrKG1z2YGl9LRIzcabVVFyUefs2nh5c85kckpaWZ1UZ15Y5kgQX6jLQnsSuCz
         POfG4WOEZpe+B6T4XlWVMSYcR4jZy8BYUnXSTMF4CxMqB5cG9MyFk9ls5swMy65Aa+U4
         /Nxo4lCbC711RDNiJnDg6dRqW5bFhcX14X1//pau0IGbgSTcWgf50YFSFVvqeFt6AE8Z
         r6xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HGsb6HyUfkAH720RyRI2xnBGVpFj14UXqV80lfeeAHQ=;
        b=sDZfRTpCekF5bX1GoocA03uUffIaaHT4H/UOyiqmp684zIZer/ZTnfRPH5/xNGW4Z9
         LS4nHW07EcdvJ8ybcmUsFP5eINhon2byingys0DFPLavvaCGyzlhesxso7H6DA3PqcjO
         q4Rxa2mVHJiAcz7axuyudGgARadpT5mDNFLqlTBGTVstR4xRTwFwV3ONuaen3ExHvnqY
         Y6p8RONRJ/531/X0kp4P6DEf7ERGgi9Biu1/Pqgf24h+1VxMmYJOlB9BdCg7rhcfnt1L
         rTtCsvetgR84eOoircTwm918QjhzDOgPedtyK+FiU8p025jeXvrtF6txwY4zTTqEMcHH
         cStA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Il3Jp+Gb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id nu4si208888pjb.3.2020.09.04.11.20.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 11:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id b17so1273949pji.1
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 11:20:45 -0700 (PDT)
X-Received: by 2002:a17:902:bc44:: with SMTP id t4mr8920312plz.77.1599243645065;
        Fri, 04 Sep 2020 11:20:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id gm3sm5689028pjb.31.2020.09.04.11.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 11:20:44 -0700 (PDT)
Date: Fri, 4 Sep 2020 11:20:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 0/5] Warn on orphan section placement
Message-ID: <202009041117.5EAC7C242@keescook>
References: <20200902025347.2504702-1-keescook@chromium.org>
 <CAKwvOd=r8X1UeBRgYMcjUoQX_nbOEbXCQYGX6n7kMnJhGXis=Q@mail.gmail.com>
 <20200904055825.GA2779622@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200904055825.GA2779622@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Il3Jp+Gb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Fri, Sep 04, 2020 at 07:58:25AM +0200, Ingo Molnar wrote:
> 
> * Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> > On Tue, Sep 1, 2020 at 7:53 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Hi Ingo,
> > >
> > > The ever-shortening series. ;) Here is "v7", which is just the remaining
> > > Makefile changes to enable orphan section warnings, now updated to
> > > include ld-option calls.
> > >
> > > Thanks for getting this all into -tip!
> > 
> > For the series,
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > 
> > As the recent ppc vdso boogaloo exposed, what about the vdsos?
> > * arch/x86/entry/vdso/Makefile
> > * arch/arm/vdso/Makefile
> > * arch/arm64/kernel/vdso/Makefile
> > * arch/arm64/kernel/vdso32/Makefile
> 
> Kees, will these patches DTRT for the vDSO builds? I will be unable to test 
> these patches on that old system until tomorrow the earliest.

I would like to see VDSO done next, but it's entirely separate from
this series. This series only touches the core kernel build (i.e. via the
interactions with scripts/link-vmlinux.sh) or the boot stubs. So there
is no impact on VDSO linking.

> I'm keeping these latest changes in WIP.core/build for now.

They should be safe to land in -next, which is important so we can shake
out any other sneaky sections that all our existing testing hasn't
found. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009041117.5EAC7C242%40keescook.
