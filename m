Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLXKZX3QKGQEYBR4BCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B177A2077D6
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:45:51 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id i21sf1656280otf.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593013550; cv=pass;
        d=google.com; s=arc-20160816;
        b=n4+P1RebkK9KbLtG/1AcnKYnLnCQ+SBHBmi4QuZd1K2+t8ufE/yh5pYCkZlQNRhdso
         90wvJJN7yhj/Z/PrAFEbxtr7xs4wt0IUN1wLRZI8xLjtsPTYktJa2HqmqG3uvT0Rn9ao
         A0ZQEedyKbgZgtm8V9wKdugmIQvfpvXfLsnaM4guzcCXeBeGbweqDH5t6Le8DH4Cdwl1
         Ezt0ww74AvH5nq87KqC8CZ5DoG12MJK1nChrSHYpVXBaC1LtrfUTY8kmWVUQZXDKoj1M
         4EuHtRAKeYCGdcOFn7mwOp1OH8XjQ8J3ybKuSEn1olJ2pKMl+vtp6YmrSYdzrRlX8J2K
         gkSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mxs3wwVkMSr7rGTSWIVCnzbg287+BXbVXkTcSBILMsY=;
        b=IQ9f/EW+8ZP85PQ7L814kLm9vYrj8pkxf6NeQAotS2V/be3cUWxCcPHaLILXICpKXl
         cxBe8CnyBgJq0t3lqPO90EkhaRIyJq7OLAMNXnyBrZhzKp8fd43usEELf9qYTmwkp5Nq
         dc5c20Bd4NId3iLWEhd0jdgcHoD/gALSk/p9b6Br0uJ522ykJkxeHtiPGby7H4K8Kt6C
         8I1znC4BZ/ZWoI2kGY9UJNX+eBcVvh7SjdKyGrNvn9fALeQJScvA6PbvqjkxiDHWOY7M
         dZJA8q/k2h2weCqzZsNMF/suQzoGEyiVhKicQAHYythe1DK95fR7POw/fBqZkL2GYKQA
         VPeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M4LcVYqR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mxs3wwVkMSr7rGTSWIVCnzbg287+BXbVXkTcSBILMsY=;
        b=WDfWOQbZJjV5pyqh1FoMQLe8cadkhd/DwI/umX7wRmdEfg2NdYEL1m3/0zffF621ua
         J2YsIiUUsbsvMJPM9pGjSxDQb2MhskjWd69SXVcJ48+JE/f1A97X30ES911xEshrqkYe
         Sl6bmnJyFjJAlyp7VNdPYe8NIz9yfkih3eKx9AaqDml0gKqDVCH8nc7qPOJxKyVaFau+
         CxhL+rEy0LL51cQ8wi7VRHSyU1DdUuXgpUhiaPnRNGHZSKYwpD0vdkMYYwG3+/gtZbzx
         r99RciFbdrOkue5mtNlTOUwz/FGMOZSv5kLCipBMKfeeoeEN/M9mxSFdUdNShdaI4miQ
         vOMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mxs3wwVkMSr7rGTSWIVCnzbg287+BXbVXkTcSBILMsY=;
        b=A1/aTc2JvrJ5+eWvj+0lNKV+bdR6LC5WT8tkQD15VchB9Vacwk5mzbs4tHzAvyytxj
         ys0Pjdn822yOoT7EDejSUhMWmqsCoLxL8UpzcF7Yut61Qkz5KQWMouXnyMg9d94z40EH
         redpGqXgaVCksHcHLGq8Etu482u5xQ6yMxY8ri84QSXa9CyoCsFs5PsRai86lLy+Ozop
         rwfb9CwmN8WiukLKFIdCR2bQ+jWzX4Wx1vEQ/utPw4g++ERScBraSz5MBBU3wiD+iP93
         tdptc3KtnZMntg8O/kBI6P+csFn7Vr8ARxaEUxIedc/MupFNa0OANJ7qikMqDSLYuLdh
         FCvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MwG2zxokM2SY4jrEm+4SPaoHT2baDTBz0dl1RMoTaTJO6/6Tb
	Nyzed33jgZIF2T533f6vvho=
X-Google-Smtp-Source: ABdhPJytntM9A01Mt76o/SGC20F43XJsu2jfxFRhAMACv84YdKSL+bMfmnjiid5H7sXHeempdjokug==
X-Received: by 2002:a05:6830:10c8:: with SMTP id z8mr21498693oto.95.1593013550653;
        Wed, 24 Jun 2020 08:45:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1446:: with SMTP id w6ls558126otp.8.gmail; Wed, 24
 Jun 2020 08:45:50 -0700 (PDT)
X-Received: by 2002:a05:6830:2112:: with SMTP id i18mr7819626otc.311.1593013550278;
        Wed, 24 Jun 2020 08:45:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593013550; cv=none;
        d=google.com; s=arc-20160816;
        b=IzGiZzYwrf58a+/HaLG4EYPUCy9TxGIonLBvs1o9YzrUZjZ7EGaCdQIxTjZn8v5n8t
         ihsBYOHAvpXko+IVYFwGPq4Q4GmHvLVWDUifsiTlB8HJpS7xLnmE3mwVkQTdHxMpejfD
         CFM2KsiDmYMgvdhe1ncq/H9hTUUZGUrmUUF/zNoBoVq66gNjr382BOHPDv6ubE1v8pCv
         uRQtLXGLHqSaemrfLIyuKVHxTwYkyLSvOdSB9Xr86aOUuluBVqQ5K64dvO2hmU3C1cEd
         BC/FQ5mccm27jDPHlr11ge3lg4Gnenc5LOGS9YUkFyc/Fx8abRcL5zsRlHWmf6ewpcur
         op7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hK2U0EQ30BnaoNQF4dntRJJsTATOCoxIawSQhDYIzmg=;
        b=dLRKl0msTtvHM+7P6R1CH+3ZQFR+a55i1d1T34wW4I5361wX5E2i4/JwAPRMIDwKGX
         ZUecVTRHUHFGSLCENsEVyqMazTHeDwAMM/AAOzgnk36Fs4q01UDQPWdSnjQjXuhy1Vpd
         mM+V7ooFnBSloDl6K3Uf3R4CUPyRj3epiitrGKbrbUZ8KFHcBMzKffNtKwXtSjDlxGAM
         AFLmeLeqvw2TgnKUV4KHQ7iJ3L1zebnGv2WHJgVQ7urhce1we7OB2xtkPDng/rPDO1Gw
         mkbvq2uJqedIYsioayMhdQ6nPYBQ2mhTgQ2STp0meOX+WQ0vMewb0bg6VyW1SbjYC3ue
         lhdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M4LcVYqR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a13si1089298otl.0.2020.06.24.08.45.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:45:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d4so1606697pgk.4
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:45:50 -0700 (PDT)
X-Received: by 2002:a63:a84d:: with SMTP id i13mr21644988pgp.342.1593013549628;
        Wed, 24 Jun 2020 08:45:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s197sm20482307pfc.188.2020.06.24.08.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 08:45:48 -0700 (PDT)
Date: Wed, 24 Jun 2020 08:45:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <202006240844.7BE48D2B5@keescook>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook>
 <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=M4LcVYqR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > stub, given that it runs under the control of the firmware, with its
> > > memory mappings and PAC configuration etc.
> >
> > Is BTI being ignored when the firmware runs?
> 
> Given that it requires the 'guarded' attribute to be set in the page
> tables, and the fact that the UEFI spec does not require it for
> executables that it invokes, nor describes any means of annotating
> such executables as having been built with BTI annotations, I think we
> can safely assume that the EFI stub will execute with BTI disabled in
> the foreseeable future.

yaaaaaay. *sigh* How long until EFI catches up?

That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
it, we'll be ready?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006240844.7BE48D2B5%40keescook.
