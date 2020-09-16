Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMM2Q75QKGQEUCAJO6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 340A326BF4F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:30:43 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l1sf4134966qvr.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:30:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600245042; cv=pass;
        d=google.com; s=arc-20160816;
        b=N/3xRcBqg8aB97MYz7plGVopbcpJAGT33D4NtXi/soGW3fTBsL+CbJ67w6sh3Fvcg/
         pP7BkFzz9jA0DtWUHE9AsvD1kuzqqIuBxM9X4fN3XXn+kASQVH+Ei9yFpzunx592MoVk
         K6WoZk4f2VF/o6ltcY807x2NVhNkok0rjB85IDz/k3Woha+hBS73AaCjEck40nPSEOqO
         OxFLNRgqc0FggeK0i4zJCxH23ExEyQHDeIdoz8MbGXc7VmS92m3j7EdTuSKrYUf9QkhI
         RyauTXF/UUnj5VjvzKbd4pbOstQG285wEOCtM7OLCa4wxl1Tvfl/MzVTICnk0VzB0l78
         wDdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CxgptzhB36Ba8+hsPuja5pLD/DljkJ/Fg3xQSY1tS/A=;
        b=mLJNex8+icZoAaIGksutmN0rBijuSueTbciEtpJ9uSp+8aT8zQDyTnSkhdcCyl157K
         tulSYEjQZVdPsEOvbFdXK/DqO3bElB+/5WbfpTwWqJ/EZ6EdzzfSosPWgFn6aL07ChPu
         T/mVddnbZiWSe65Occ57Z3UejUagfkU2GKSiGmyqb/41rQvPPUGdDNr0acVckKZ9AUl4
         uX1eP0ZwQOHMV8SGnD9hrHfQ+tW8DFO4stW7DjfZYWmL2DSYvz7zfKD3/ZTTJrRkcmFL
         dngsLgfMZ0nQ6Wb/sYx3gHIaphi9QSu/0dFCPeja6x/eQC3ipv65Y9JysIKFVxfx7GDy
         xAbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=o3PNTI1B;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CxgptzhB36Ba8+hsPuja5pLD/DljkJ/Fg3xQSY1tS/A=;
        b=f/LqQGmEkAtkxnNYOyBD6FWKJ+ug0MWrwQ6/DZDqw+EifbM6D/S8cOaeSdO1iM2Vdn
         Ks8lGGB22/Rp/RDqxL7IYT4ME1XBjNocYl4FsBhwm5ow3HGdY0zuD9JTVhYTTRTY3qNj
         iLZCBbApXafh4g5zCvsS3xDVajSXXropFu8qDLnF6GFYq+r2XJHN/Acpgtj22Fn7LLIe
         vHkqCl/uB0+a0/8MLx8CcX4oHWUnQR7fPMfat1oXHcW0UeRrvz9XEAWGCRMhA4CXN9Uy
         HjGejUgdiFYejizbU0zb++R4A0wJu/YhghCv9f44HQRqc76ZwKg+dZOAHPANdocNDWGY
         mSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CxgptzhB36Ba8+hsPuja5pLD/DljkJ/Fg3xQSY1tS/A=;
        b=HR7U0pEkzKW5+Y67KBTsJWefbMRAMaqvkigSpPnUuuwhbleKEyOhS/m2wWQbQaNZIo
         NyE/KwtoUF0QC4rJOF6STkv7VWo6SxKri02hZ1t5iVTcuNF51NS603ZXc2E2475H36OC
         MqG1R6Hbzh0HTBNFk79bXslj6uUvwStpz3b6k0t9c149Gf27jGLJ+Bg3SZLezM/P1KbE
         gExL7+WBDPlFBoMyoUvwvv+WowIzBXww4zAojwkX2eXXj73wwhY9jhuzp+h4PzRO53AP
         yvnfagdAisUEqSKkFstDHi/9uCquVoaSIJ4FU4SFBOhX9WG/+biiarMbiydmsirBCyjE
         ZIyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XLi3K6ke2Sz2gmW9k4QX/tJrazDDNu7ef+NyxuZkIytqHIHl4
	2z9Ld9YAK328cdUGUYon6zQ=
X-Google-Smtp-Source: ABdhPJwBdWqXnomtUVIVpGjmJxfxIEa5tIw5FOPmLoeCMb6RpmCp5V0Y8Qj6RumFw9mJyFXAz7xR6Q==
X-Received: by 2002:a37:e118:: with SMTP id c24mr22941625qkm.167.1600245041967;
        Wed, 16 Sep 2020 01:30:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls750325qkf.5.gmail; Wed, 16 Sep
 2020 01:30:41 -0700 (PDT)
X-Received: by 2002:a37:2713:: with SMTP id n19mr22235160qkn.497.1600245041532;
        Wed, 16 Sep 2020 01:30:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600245041; cv=none;
        d=google.com; s=arc-20160816;
        b=g0mOf8pjb6sisbkO4iy0zef9I7lG+hVxpyvaWAHDECBIlR41tNvbBgrmOvLE5sQhD7
         97x4okYqCWEcGTeV0VhRV59o+x22/SgHogA5Nv132DAiCJO5TCMCb+UuptAwxRmodEUi
         avY3VSBdDoefrGgRQ+M1ky7bli4jnrO4euAxXVOz7KEAH15i+jnzwP4mDzrconNJB/1G
         xFFA1/iFcqOfEjSgHF60vIrVBHD9aPBHgEJub4F8S6jUXQzYjAfEC1DEpcQCZKYPAXsY
         3IXxfLKbGjcnKtp2P1ghO3YHwq1aMdb+lSrGHFB4h3yylQVbGT0Hij4HDZFdzIpZIs+E
         1s/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QHHY9c/6O+Ni91iKJG2q/1GSjFd3jc5M8UDRptkyw7M=;
        b=wkXdBOXgE3P0vDaTQHK/210az4zc7RODR0qmAtTiUJIjkx/+EjN8luxZ0uFbDPHErJ
         EhJsYG5l9FsgU3l/pbjrQ8eQ3JvGF5iPyVfo0qVfgIBpuoAuwlJF0g1VvfaCQfOf6rgq
         2KrNUAwoB+dKBHn29NpZpPw3DVar1QFFVIF1sTZDwd4rSpa2nWNif2nL/DcaKmZCq6Ed
         R9YiT8wrdwp7RH6P3Ngnfwj7Z6ri0OIU390g+TH7GiWcWUuW6DfzSPjqodB6Ux2XvRYW
         0QIB2dRGz7LNEv8lC+3QQACjcWAgrf3XhH42nB1nlzsJKEj5jDun6N/x3hzAfCaj39XT
         HcHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=o3PNTI1B;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id a27si971603qtw.4.2020.09.16.01.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 01:30:41 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kISpo-0000n5-I0; Wed, 16 Sep 2020 08:30:36 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A1A923050F0;
	Wed, 16 Sep 2020 10:30:32 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 8C9392127D319; Wed, 16 Sep 2020 10:30:32 +0200 (CEST)
Date: Wed, 16 Sep 2020 10:30:32 +0200
From: peterz@infradead.org
To: Marco Elver <elver@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200916083032.GL2674@hirez.programming.kicks-ass.net>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=o3PNTI1B;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
> On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:

> > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> 
> This one also appears with Clang 11. This is new I think because we
> started emitting ASAN ctors for globals redzone initialization.
> 
> I think we really do not care about precise stack frames in these
> compiler-generated functions. So, would it be reasonable to make
> objtool ignore all *san.module_ctor and *san.module_dtor functions (we
> have them for ASAN, TSAN, MSAN)?

The thing is, if objtool cannot follow, it cannot generate ORC data and
our unwinder cannot unwind through the instrumentation, and that is a
fail.

Or am I missing something here?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916083032.GL2674%40hirez.programming.kicks-ass.net.
