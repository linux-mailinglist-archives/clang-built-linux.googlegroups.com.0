Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPVEXD4AKGQEPDBOH4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F9121FE55
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:14:55 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id r17sf49829ybj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:14:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757695; cv=pass;
        d=google.com; s=arc-20160816;
        b=QEPwW0GneNmia6aujgobIX1NksQR9TlD//j1etGKIPeNVON5wWGwXNof8XgH/Zj3xJ
         Sm3LD1sBtj7xTv47o/Z7Gu/KX4SK+aV/ziv0Qfx7iOiv543EsF+0S9UJ1wjtqRtDuUNc
         Qq6fcjShXfPx9rwKGTBOi2OROj7rRt6tUKwUO/iXcOnRLupErrWTFktDG4eSBCGnXXNE
         3GHZqkIw3lGovdZ90pg/i++78vxIG31a40WoEPqFaynt8teA4iKWhUKtPL6jsgOXMNjc
         vV+tWvMXTeaHLgVsguzmQL1jmL6wtgE5Cb2d3J4o2q///z82U4H0bgFi7HQ3gnv0swfw
         3aLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=rPc2ovw1ZtS0ZjQrw+QUjs2Ryph0eujoyxTKhvwLuXE=;
        b=PyufYPXBxmuOiUSSFqfSJm5NQjTkyeskXZXUQUXoT3MZl8WIKZsBtkclW/7dZB9VIA
         vFhY2ycIjGbBvYqhtpv+GtMssy51YW615mUGnOl0s7ByIlf9PYpbKH4c6jdbGz6ODQbL
         RidusTTZ5Ndo5WhSJnmB1V0tBRWAkCDxKNOgyIaPWKwB8gYEH/fklqOscll6jK/bB9Wu
         wI9uZw1kPlqBGqwPOEa30bWcjUkMgTth5Tqgga9O5rGainYA6VQGtNXDgJrkAXV5yPqU
         eg8R8sUD5un8zSeX2tvwCGF2+iywniWzthQQSMniml71KTMw75Drx2s+PO7JDL+3Pl11
         5tnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nokt7LIb;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rPc2ovw1ZtS0ZjQrw+QUjs2Ryph0eujoyxTKhvwLuXE=;
        b=CnmHTUNXpx09OOOZ031OQIEIdww/QV7J2SGnau3jA0vwMa3u2iYY2zbr0g3mmwjxAE
         zL+VqQsvZOqo9fm2b1J7Jx2eqLc/rNflLFJ53UQ/UfB2GfDZG0tiiq6+vcjKaB1S2n0g
         V6xH3a1489UGcKX38C1nxbQawcI3KLZIdkAbB9uZHWC2O7K+GriT8Lk0JEg33WZ62gtG
         6/+FQV92ov9nfcFgQb1IgutYB7XGZlrrzeNgD2JagIHYEeT0Pr30qt7BP+DoTyI6YO6p
         ycjM69ZXJBD0kxLSHHM6Na7UWi98M0pzKgy1QH8KoytC/nmy87c9aT4rJ5kgN8ItEnaw
         wg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rPc2ovw1ZtS0ZjQrw+QUjs2Ryph0eujoyxTKhvwLuXE=;
        b=uQ87gIOUawinU24bGcHmq3qHXtRo83sbyCoxOIqYO78LMFI9Fw8X2hJUQgBN3PAnR1
         VSMCqi/OJeoIQDmex2BC5uFE9Sq0BmWjECR2mc8MY86OMpwm6E1J3gMyw+DPytWiM7UZ
         1UEtehzgM1l+S6k9skO1x3s/4g+1Zo3b/9hb7mulonBgKsOL+VjLHxg7mOBkSktQliyR
         f84S/gXkc7Bhxs3fjrJ4wSIRW24xbq0yQ2bKpVkDLUZODV4W0t47gP9BUOsrOmiULT+J
         s/6G2nWciwkKMtDjfImybZGqGF5hmijqyHgc/pBJ6Ioi63xpTscHPXxdlA1iT2Ti2K19
         wWRQ==
X-Gm-Message-State: AOAM530FQevVVnOS3M1cIjMeWRUkItNoQMKE0DPcglEdhpmYIUwk42Tr
	iQY1X55xhC02rJ1nqSlrlPA=
X-Google-Smtp-Source: ABdhPJzVmEyFXrCBg6abRSHgFhKuBT1gi4VaLOpYn3lIYyo7K9qcKWaf42yds74TxjcS9cprTzEAgw==
X-Received: by 2002:a25:bc0f:: with SMTP id i15mr10467016ybh.190.1594757694779;
        Tue, 14 Jul 2020 13:14:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa48:: with SMTP id s66ls8195961ybi.3.gmail; Tue, 14 Jul
 2020 13:14:54 -0700 (PDT)
X-Received: by 2002:a25:d946:: with SMTP id q67mr11190637ybg.302.1594757694420;
        Tue, 14 Jul 2020 13:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757694; cv=none;
        d=google.com; s=arc-20160816;
        b=yFNm/5ssAwRzF3b2OV8LI7PMPybYhN59PsAl4T29hweRmXYzkPC9o64anp69LIPYND
         EBRCXA5MYvG6+IDS+LLnggZoN3PBZs6Ana/3d5uAbd3L/5DEx5bNqWzEN0K55fi8v4ki
         afJi3u/BbgwbIt0NGrvbOYtL8PpWW0OjwGqiQY2QEhyVmDwj+B7LpwW3iHKzau8u1jNv
         WiaMXk5qlGmCGKwmxWnVw5GuEf1S86ol7QAWK1gWqvPyrENESW/gvuIzkGWLVHFkWO6f
         obImrCoVCvK38Dkxjxh+2QyM6wS39nJ1FwcTiZJ3DIlXRUWVcTWmzWYXLeOfr6nypo1t
         Qc+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=silub4DOGA8GuQ3gUgAw0FDhfAcGw7RP0i5WpLCBKYo=;
        b=TzDw7WiamR/lxv6UUfeOZyaGR8NNERjP61NWvjE7KXYBWI+LTqK52fGxuaDgc1r42p
         EyfytLK+fgIZBcWl8f9lC4orpKPI5z4XOi0GK3dM0dKsbUI1ctjOIeycQ2CTW5CMUxv3
         1xSRstAFq7UZPBoEBgpohj3aHC5eLHT1fI5O69iMhdDpPJmk1TAn/EIIjPIko0baHrWh
         SVwy64rzYO5pG71rmYJ92MFCQ0a0ynelJVGoAo3DI7I7iVGYzZ8I2SsqjS/Thlyn/1vF
         iwJ14s4gEVV4cvA5u93DOKlkWdwEUrzNOz9XlzolM+mjsHrN2rmN4dzRAHVBGhEXxfN5
         NOiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nokt7LIb;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id n82si2814ybc.3.2020.07.14.13.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id a14so8115700qvq.6
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:14:54 -0700 (PDT)
X-Received: by 2002:ad4:5307:: with SMTP id y7mr6471482qvr.63.1594757694088;
        Tue, 14 Jul 2020 13:14:54 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id h197sm24314615qke.51.2020.07.14.13.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 13:14:53 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 16:14:51 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714201451.GA902932@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <20200714200728.GA894572@rani.riverdale.lan>
 <CA+icZUV9_ox9q+yANQQ-6X41fRb5K7mMn3NSh0_E9R1hO4oC4g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUV9_ox9q+yANQQ-6X41fRb5K7mMn3NSh0_E9R1hO4oC4g@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nokt7LIb;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jul 14, 2020 at 10:10:14PM +0200, Sedat Dilek wrote:
> On Tue, Jul 14, 2020 at 10:07 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 09:53:19PM +0200, Sedat Dilek wrote:
> > >
> > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > >
> > > Attached are my linux-config and dmesg-output.
> > >
> > > - Sedat -
> >
> > Which tree are you building against? I notice you have KERNEL_ZSTD
> > enabled, which hasn't been merged yet.
> >
> > Are you using Nick's series [v7]?
> >
> > Also from the naming -- are you using LLVM_IAS=1 with some patches to
> > make it work?
> >
> > [v7] https://lore.kernel.org/lkml/20200708185024.2767937-1-nickrterrell@gmail.com/
> 
> Sorry for not telling you the full story.
> Yes, I have some additional patches like Nick T. "zstd-v7" which
> should IMHO not touch this area.
> 
> - Sedat -

That series does touch boot/compressed, since the point is to add
support for zstd-compressed kernels. I'll need to test it out, the
__DISABLE_EXPORTS he's now using must not be working for some reason.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714201451.GA902932%40rani.riverdale.lan.
