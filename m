Return-Path: <clang-built-linux+bncBC2ORX645YPRBCGAZ73QKGQETEZ5SGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 175FB209716
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:21:46 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id e185sf2796662qkd.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:21:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593040905; cv=pass;
        d=google.com; s=arc-20160816;
        b=s0DrhZkBFv7W1L29fIsoi7iNOAU9neXswMUPxSe6rzkbVqO7CCBduW1KumybWlSwF4
         YRL6WmS8M1ro6Nlzp8l4/DSIRVIaPrShwhmXkPgdfXO/850wRIZ2PcfJ3HNRdFMPNyLn
         17k2cRhg55P84q0KB91KSBuu/2me5VcTrXCd6IAt35Bd6fiU8rnHVLDRGiBlb0chJpYx
         kfVKMegYdeML6P/xXQSGrPcK7sKbDEJu4sOgVn1aoc/BRPt8pHeZINf+nuA61DLSNfJA
         WtC0oX4RvMJHKR9Ahf6TiagJI/IsczdyWJQEOIm5Q4mzKsK/H+rIjDwgqjLoQ1d7fEwE
         dp1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=e9VgcUg1xOqRtMV8e7ulDRvQGYqzfcSHxKkLdU31cnY=;
        b=X3x3rODBm7xVx7Ze9hYeQnKu0OC8X8k9elD5Uk/SZthKqtXlbFBxIjWEdLj32HuCUs
         KWfd4UMryNV110CoVumCEv2Bs93cRS42UgMDABsmh7Wfay9b3joiIx+efjcZIja44YNq
         Mds1RzB0WOsHIz0aRQpVVge++O26fJTEdXkRF8qmusSP0GKMxXiTpwOlKFO/lM8b6K52
         iCOXm7kg5R5woKnO1ILg5lvNN/EIUnGO9GxS1bATpXA5LguU7HmSU6tMLbcm16bybL8a
         gsKf233kkKjY71tWBjeGL/HKrchByn5DpGL5c1ETA9IWjCgud1uwvrr4b4i0gySXWzew
         8DVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R9IB6Osr;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=e9VgcUg1xOqRtMV8e7ulDRvQGYqzfcSHxKkLdU31cnY=;
        b=imoOczONdtEBJVGO2VtoeEFQRO+LE8LPpcQloOIGdn0YiZ3WQKouLjELyCcarmYnwp
         yaoSE+D3DXH6/MykaDcUPMvwKxau2Uzzr/IRkjIBEwslmfUX1l5ijhETVAiHoNwFNOOB
         AjtY5z6siIZdwtCvarqmqVzKILjqMR4W6Eo0toANj2jQCm18hkItMm+lAypoR1UbhJDE
         As6/yPbvvvldbkGFP1I5M+em9fW0oRYtrOu7KtY30kF2EyIb7lLwAq2xtaoPAxC68Yth
         t6X2iWuMZBIzNh+bnFzSh3BsGHyBH2ctpXmYesVGcMOrmSqN5Op4sf2nSf7oNv/J08pI
         31iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e9VgcUg1xOqRtMV8e7ulDRvQGYqzfcSHxKkLdU31cnY=;
        b=laimSyG+KqE02X5nYucuJ9SwMNUq9NluOoh4bGwNN0buvNPYr2LztD48DZSTrf5Vxh
         3kX4mbUjvg15K9uM8NzzCeOZgs8BlrTvL2Lm0HHF/YBulBM8H+Z7OJP03+aW220+sP9z
         Al55Us6/10fEjSLHlDO/TqQuvhQ5b+cltsu+is8HNhTUFyhzd7L8JKBmIp4w0iiF6vNE
         UpZse8jICKXMZZKYP6Ev62XbzjY7bw5cUtpc7yXBKduIgVDjp3mGY48rS4lvLDIFVc2s
         QY8YBDgeOJ696+eMiutniul0sxJFb2KvGdeBiKidty9CduVx7IgbDXJS8FcuXsroXuXo
         W3ew==
X-Gm-Message-State: AOAM531KmOCh4gGKoYUZJR4HKVWPr7/UezMoyeeXBfJfOqmreWFVqPFr
	oafju6OiQEjyLPGlWeS51Lg=
X-Google-Smtp-Source: ABdhPJyl2OF4J0CNAUMlgyrkQhiWA5+Yea/p9UT6ffw66AYm9OaT5X/Zsu4a74HVpREsgyuXnSe/Tw==
X-Received: by 2002:ac8:4e4a:: with SMTP id e10mr28586976qtw.203.1593040905041;
        Wed, 24 Jun 2020 16:21:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1ac1:: with SMTP id h1ls1589523qtk.4.gmail; Wed, 24 Jun
 2020 16:21:44 -0700 (PDT)
X-Received: by 2002:ac8:46d6:: with SMTP id h22mr29849237qto.145.1593040904707;
        Wed, 24 Jun 2020 16:21:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593040904; cv=none;
        d=google.com; s=arc-20160816;
        b=tkis9cU/jA9bfoC8tcTxzb6d9eHMruYaPEU6ucGo7hrJYdrmcoPeXSdjffXGeyoSUg
         Rp0EhSGHqIZKNK2MI6qLbW3JFnotH65uNHp28FypRJbqw0OtECZvYnxeluXueHet+T7o
         RsLToaU9MBG/tbeQE0pzpIY2mIV3iNg43KP25N+/ZQE5YHtsQg6BjG9oPcW7gF0FjLEY
         1fqpYE74ltCzTO326zeBRazcclAe7D7IbdzuHbIn7VS+t4rAclEWCVqmnrto9QQrqE+C
         +WEMnp9IOQ3YyUoQe1hUonhXWYMfzNjHUr54cVUNd85uzv1ZgHwzLH+CjoOjoDW0xAL1
         5B+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XsZH2ZlxCr6iT3L+49rRTJJnEJ39rkW4+RYUadIzOtA=;
        b=PUTqYSZN5DEBEw5X+/WxWHYhUZie3GXELy8lHOu10xcXSeZLXh1zvGK/xuaZ2+NHlj
         fmCpQzBx+Wa4C1uCjHxR7TQa9DRyZe2AXjwAMwJ7rS07IIEGYpjSLHMFBNvLrW+C1WZs
         7uyOB4JaHBHgY3rl7Dm2iUNuWQBVLBw3eXIduMs9OFa2VOxiE5ybz3E5WFC2RI3R1FLv
         HUqozjAo5B8XQd1gObGUS+Y/claRqGTEKFknU3o2F5v0sC+SN7tm4ydNX6M/BhRrWGhY
         LaNnj3p2t0PdJMSVTElIalBPItx6DuiP7DY0nWOUc8lZ7CjW9vFF83Zdzb9tInpdTTcT
         chbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R9IB6Osr;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id b26si859407qtq.3.2020.06.24.16.21.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:21:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ft14so911110pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:21:44 -0700 (PDT)
X-Received: by 2002:a17:90a:ea18:: with SMTP id w24mr186844pjy.158.1593040903445;
        Wed, 24 Jun 2020 16:21:43 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id u61sm6452415pjb.7.2020.06.24.16.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 16:21:42 -0700 (PDT)
Date: Wed, 24 Jun 2020 16:21:37 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, kbuild-all@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 11/22] pci: lto: fix PREL32 relocations
Message-ID: <20200624232137.GA243469@google.com>
References: <20200624203200.78870-12-samitolvanen@google.com>
 <202006250618.DQj64eMK%lkp@intel.com>
 <CAKwvOdnREuOmN_Vinn8pn6fxEpjzCM1_=9tDzbd2z884GNLFeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnREuOmN_Vinn8pn6fxEpjzCM1_=9tDzbd2z884GNLFeA@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R9IB6Osr;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jun 24, 2020 at 04:03:48PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 24, 2020 at 3:50 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Sami,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on 26e122e97a3d0390ebec389347f64f3730fdf48f]
> >
> > url:    https://github.com/0day-ci/linux/commits/Sami-Tolvanen/add-support-for-Clang-LTO/20200625-043816
> > base:    26e122e97a3d0390ebec389347f64f3730fdf48f
> > config: i386-alldefconfig (attached as .config)
> > compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
> > reproduce (this is a W=1 build):
> >         # save the attached .config to linux build tree
> >         make W=1 ARCH=i386
> 
> Note: W=1 ^
> 
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    In file included from arch/x86/kernel/pci-dma.c:9:
> > >> include/linux/compiler-gcc.h:72:45: warning: no previous prototype for '__UNIQUE_ID_via_no_dac190' [-Wmissing-prototypes]
> >       72 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
> >          |                                             ^~~~~~~~~~~~
> >    include/linux/pci.h:1914:7: note: in definition of macro '___DECLARE_PCI_FIXUP_SECTION'
> >     1914 |  void stub(struct pci_dev *dev) { hook(dev); }   \
> >          |       ^~~~
> 
> Should `stub` be qualified as `static inline`? https://godbolt.org/z/cPBXxW
> Or should stub be declared in this header, but implemented in a .c
> file?  (I'm guessing the former, since the `hook` callback comes from
> the macro).

Does static inline guarantee that the compiler won't rename the symbol?
The purpose of this change is to have a stable symbol name, which we can
safely use in inline assembly.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624232137.GA243469%40google.com.
