Return-Path: <clang-built-linux+bncBC2ORX645YPRBJMLZ73QKGQEWVACTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B0207E82
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:29:11 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id o15sf2648946pgn.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:29:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034150; cv=pass;
        d=google.com; s=arc-20160816;
        b=bbNL1LhWYFLfv98Lf91HqJlqAycz1Z/hk6RimSMkk7LBzXsXEV+YUpaDKxFmY+C7/5
         enUqew12rVOBFqMDKSa5MIRx+VtA/3DxbBMbAbQQ+hSZ7P5QL6DBE7K20Cv6bUwmpydu
         93tArizZ1rHBnLtGhq89L0EgiwFDAPaR3yI2ZtHulvpBk1E75Mht5MryS/X4hQk+oIg1
         ljkYPa2cHylpmAObdryO0ddDVtQkfmX434/17o/jJ3KT06hATwgkIDtutCrpA5fazcGX
         BQFJ6FHycDKp5UBgsG5E/PSvn4hkNQ/Q4kkvCFKhDGyket22KLUVE6r8cezV3JjguS0a
         kdzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=KVqJG0mOuTTHVIuivGLCJWUB4hOu8Y2gpoV5s2m8I2o=;
        b=LLPWWg7Z3O3Z9uoPC1tPPYl0pqN6Zpria886si95wx0Cl4ecByhn8+72NEJUNIH4dw
         dMFclGGN2RAb1t/F5y07eWh8e1JQsyp6OKdEDlzVbf3An/70z7TH/9o96h33ULFBDZbF
         Jo1BuuE0afxyTPpmoFFdgDgsVx7zsN0fYP2+U/qS8bSNbO10dyRp0c51DsU6xlbyg45Z
         ITZUroV/l/4wPIEv9D6VnH8skQVZJmgKvhXI0pN1u6tVtqxTbQpuZnHjOH4bdOpy3CvS
         SOyUzuuWXhcV46nw8ROgJ+pB30UCY9mFssiixQ9fpIFwLbcYVYI85okL+mE++JJoSses
         ss7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QSb2yx30;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KVqJG0mOuTTHVIuivGLCJWUB4hOu8Y2gpoV5s2m8I2o=;
        b=FNwCkL1oLLl6053TfMon5uCTawWL6QFezZ/l7PwWteWv8OERas2EfyCGD+n4C6Nvfm
         t5oX+lY/2siLBdC95/mjRo92typilhNs/4NLVV9X8NbtefOi8tAXQnjw/pNrFGWj+lP6
         bVCBztAoX4zuz18FkidCl7gn2nuyyAFpy81mQTIpFFKVANJHTc/fxOYXwg+TGX+5qLMn
         iCks8jv7zUx7B/2PzYE6VdUcR6yVXggm1i1FWTtLO1LtDs9tZHORTjspM7hSGXM5jElu
         Bv9LXtsTkbYCQ56gqz5YJXkXF5hLPAhE/DpdbN1i8Fxzt5ktTfhp/E8jARDkjfCaWA3r
         mtvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KVqJG0mOuTTHVIuivGLCJWUB4hOu8Y2gpoV5s2m8I2o=;
        b=lRLMxJIstWaKuzRliReQ73X19wO/Ddjx+SOHsTJLP5DLhTL6H2LkztDj1sdH+cF7aw
         X6ribFiVyih/uVmyJDsLgsnuKxxp4jcKMca1bIY3iID95gOFeuN7Ig1zrT44SbB3bL8L
         tdmwXhHUAnTJrqhnF5mYbKZvRNcQbxqH85wMKCUUsqk6GavTCnHmS0oTx+N2RjxRHvBQ
         8R0s7Un+RUlewO9izGSW8ib0x6dj5L5hggNbcs+raD1vp9+Bt/n+kYWPz+F0XlL4wEw5
         XGtXGVK/1URHMhi15C4q2/sH5s71X69d92UbQrQAt3KITEt5NkVRp7xjzOpfcOvW2BaA
         QK2A==
X-Gm-Message-State: AOAM531R7lKYE9+1y24NVhlymiMiLSZNO9L6SCZA0UsnqyfEtUzWBXx9
	nBiZ+paifP4yfmF051l0BfQ=
X-Google-Smtp-Source: ABdhPJxvQAYQNUilvRryjScNk7zZYWn4khNDwowAuU2RHkQxEMDebTQXgr183sB42u2NpvtXcpXeMw==
X-Received: by 2002:a17:90a:4fc7:: with SMTP id q65mr29266156pjh.25.1593034149919;
        Wed, 24 Jun 2020 14:29:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls1435918pjy.3.canary-gmail;
 Wed, 24 Jun 2020 14:29:09 -0700 (PDT)
X-Received: by 2002:a17:902:a504:: with SMTP id s4mr3269144plq.79.1593034149477;
        Wed, 24 Jun 2020 14:29:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034149; cv=none;
        d=google.com; s=arc-20160816;
        b=ntP3mCGWEsrcnL0Z7QNUKeQacYzIt0zn+UA5fGM1pULtBYMh/5z9PuOrGUpMe7ltNo
         Zkv4NQOJk6XYgqxxyNV+WIktrgs3YmJTtqdHMEKL2q2Z1D0llEQ3mfUTBiqVZhTk6I1c
         P20tsXX9fVSmn8/Gsr7mmIHhNysxP5o2OUI69v0506tli93vGo4Mhha6E3VD7LbFYChJ
         kaY4DUZzVBQEo07eMxYaLfgoU9UwJ0pFwtyYMd19+SZn0n53B8qBmq9lE4xHVyimaNiu
         S91BF2hb+TezGFzFm53qT0rWtM5MycWvH+8F1Gk6FRuUH1LlJ9FjSD0IQp5sTdL0jmKb
         ZCCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8S7wdQVFSvGinNDpzeGeM5bOvAIHO3+dn7qtS4xKvV8=;
        b=OxU/RUQgKqoqmIcf6uP84Gbf6tC08HMKYQ63ecKCDReKSspEBG3EjAwArEKjUMz/HB
         q0bg72VAQKEjJ6IQKNA2Afv1C2mjPyPM8m2SKhBvUYIATSOaMrzSr3IPkVoxI+iZ++z+
         VETX5u+KH1Ld4x85zyVWo+MVzvy0o6XRpNQMMwaRSZABPh8tKpFbdsTGETy4fCtXuPh+
         vPk3w5j8q6wyIGgtAP+4lgRAslVDl/boHWYYe3MwOJ4vb9BFoHaOF1LP1RET0qokpBwU
         dXfJLkMDF7MHtEtkiZWejxSgi+OLMMvOS+6EwCMPiXSd1/nJ2+IplTxFj8pxv+L+jDdr
         qaVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QSb2yx30;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id q1si1197218pgg.5.2020.06.24.14.29.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:29:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p3so2092398pgh.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:29:09 -0700 (PDT)
X-Received: by 2002:a63:79c2:: with SMTP id u185mr6299836pgc.84.1593034148817;
        Wed, 24 Jun 2020 14:29:08 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id q1sm22211040pfk.132.2020.06.24.14.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:29:08 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:29:02 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 02/22] kbuild: add support for Clang LTO
Message-ID: <20200624212902.GA26253@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-3-samitolvanen@google.com>
 <CAKwvOdm=sDLVvwOAc34Q8O85SCHL-NWFjkMeAeLZ4gYRr4aE9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm=sDLVvwOAc34Q8O85SCHL-NWFjkMeAeLZ4gYRr4aE9A@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QSb2yx30;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Jun 24, 2020 at 01:53:52PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 24, 2020 at 1:32 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > diff --git a/Makefile b/Makefile
> > index ac2c61c37a73..0c7fe6fb2143 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -886,6 +886,22 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
> >  export CC_FLAGS_SCS
> >  endif
> >
> > +ifdef CONFIG_LTO_CLANG
> > +ifdef CONFIG_THINLTO
> > +CC_FLAGS_LTO_CLANG := -flto=thin $(call cc-option, -fsplit-lto-unit)
> 
> The kconfig change gates this on clang-11; do we still need the
> cc-option check here, or can we hardcode the use of -fsplit-lto-unit?
> Playing with the flag in godbolt, it looks like clang-8 had support
> for this flag.

True, we don't need cc-option here anymore. I'll remove it, thanks.

> > +KBUILD_LDFLAGS += --thinlto-cache-dir=.thinlto-cache
> 
> It might be nice to have `make distclean` or even `make clean` scrub
> the .thinlto-cache?  Also, I verified that the `.gitignore` rule for
> `.*` properly ignores this dir.

Sure, distclean sounds appropriate to me.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624212902.GA26253%40google.com.
