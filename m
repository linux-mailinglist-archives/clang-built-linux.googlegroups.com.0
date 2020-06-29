Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNO75D3QKGQERZMYY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id F188B20D086
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:15:18 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id a25sf2256990pfl.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:15:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593454517; cv=pass;
        d=google.com; s=arc-20160816;
        b=QaCDW9g6cyJuX8RTnpi9ChsJ4jQG93DRSJx3gw8PlKL3lVEqk8FT1z1iUnowqc7CCS
         T8PUZygeRa8v2/AtrYSr43v9v/z1+3iI0qS4gZ7ms8ysC0II6nAJ2OL210zIwMmWMaBi
         Z0+JWJiEB9G+iF2fHocVrdYWV/NbDIi2LNW7AmYm1sPvgd9iJr0tANS7qEBUrwccpY3h
         HzL+mw/E7sK/hI97iHwf5huiBAIAykqMaHbGfahwt/3dolv8adpkVOzi31HVL53MRlhG
         zU8JNJD7LCiqstmTUiyZ8AZxkr7t1l0qI0uV2De/5fkCrM5C9SHk5NKcphzPiKghrtkn
         ZkGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/2SBQ3rQq6Ef30waNzy35NkKz8wmxBPOeIAIrPxGa2A=;
        b=dnjLSltRDtkWWcZsDDTICs9K7mfHDeEFxM8XmbmxqRxMpRf3WL+Pn8b83CfcWElWTq
         mJMX0kLixFRsGdT2S2KxOQCsbbjImdeOz7Lg5IKAF01+UgFKniDJsrC0nqg1bKGW2Yzv
         xA5S2r1Cz+f3kdYMf0Vk4OgIKWXY7E0YvSSIi6LprPdOZXFYwsWLIh1wTzhhlPosdOnR
         UW3jl1yaQOvEvH+4kATD35fLvOjcYiABnzN/gVSEKaMcEnxXVV+WIhIXpKQdKMnU8kJf
         cbFCQZqAczPbWGpbgKnCuDmMqjwtP+G1RwAMmMpMtSAdBEoD8Ayr5YRBJUjhvip1gN6F
         kliQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xjvp/Ruc";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/2SBQ3rQq6Ef30waNzy35NkKz8wmxBPOeIAIrPxGa2A=;
        b=dt3MdqsjkFDI5Zhq8oTHJwCqvI2okdeGazRymiRX0woHckNmlJz7eyGjzDfbDBNdXX
         sqwp9t8IF5C1xvzi5mOoUYBLXe3JY1oomiunEt+UnVIMcRyCSJphVzp8AiQAfeqgDWq1
         89rcJEnBGOtA+m1O8ut1Wfs4BFpbY0KIEVr3+J0Hc7UQv9a5xLxvqPqsTL+IEWh+IhHY
         xh7aLCsPZml3H/VHj614uDA9WwScoE/luQ2lga4Y4pDqJOmMD9lX9pjzmv4MMl3kmlyI
         CeARmw/YhulavU7xjgD8I98qV9dN4WVNGzhej9YdJNuRA80E1L5nS55QbRBvexHdlW7Y
         iofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/2SBQ3rQq6Ef30waNzy35NkKz8wmxBPOeIAIrPxGa2A=;
        b=PI1K+9M2DqaFKzPMtl24/BipeaSj3EgxmSlrqHj+uuVmUcj7U+XNmcZ8k3WpAJ7Pi6
         TEi5uM1IKecB7f1uq33f/1UrzMjqqWmUcCDrCf6DN3Ba96x2hHOubv2IrjR4Sg9zWrBD
         R6/WmWgjZWTDCW35YLByi49tQAN3S01hbGtcesUybbdez5QtQT7ACFnICRq5u6QHxZb7
         C6Wc39tswvs12jv1HTwBh1+rH/84HHIqMkAc5I0/cIT8119rsc0ZzjTNwk6G1HvmtpqX
         GTcS8ih9hhinDP2Hb82XRO26xA+BlF0qEtv1rip0UGHnpPvWCdUkKrLGT3O93HBFIsBt
         h9yg==
X-Gm-Message-State: AOAM530K7liHaSeOOBspORNinxUI2TPdbdHoLpfNZyGRVacAnKhKOkfY
	CL4GuIVqwjQsFqkrf/IhA8o=
X-Google-Smtp-Source: ABdhPJw204Thz7AsmvaiE1HlV49710c2HcLIxKcp8l8nUtTaMOg0iRrf6N6acW4AickobxQtSZiBRA==
X-Received: by 2002:a63:ca0c:: with SMTP id n12mr11793011pgi.216.1593454517700;
        Mon, 29 Jun 2020 11:15:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f8f:: with SMTP id g15ls4523058plq.6.gmail; Mon, 29
 Jun 2020 11:15:17 -0700 (PDT)
X-Received: by 2002:a17:902:7c09:: with SMTP id x9mr14744145pll.27.1593454517204;
        Mon, 29 Jun 2020 11:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593454517; cv=none;
        d=google.com; s=arc-20160816;
        b=1Kxq5T5R5/Z93xf9AHjYm4VTHbl5/VbEhS6NXg0D511LLCOMpAOZoyaJWqODJAR/iD
         u2aypjhksT4ODlZXZSKxthAwvVedQxFD1zZrULWRZCo7Hize/Srsv+8pJVzUExq3qDFZ
         ByH8phUbk4GuMpR2ij2EesWl96yXTsy/dWpPVQ3Cjtoscuj+Far5/R7osh/80EvgUyt/
         BJPHxHM5X9pvu82A0RUq5oaLpc2Q7igwfLjHnExTrQQewlUZW80Ta29OSoozfja7ysyl
         i6/j/zWtGkOULDNv2MLQeqykB2KQUsTklqij+xPdC1cWQ7qGt/EoAMdyDZ/gdnztDaAL
         aaPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=ksn6KEgSSy4O04+EmiHmLNcv0njEAGgzFW6T11ji+vI=;
        b=i5Depz0Cef5OjALBfFEh+p6poGW+MP9q5jNSGPqCZHnBNzJbv3di9tLA9Av0aa3qWB
         QNyfrmGcR4seXFdL8Fd4mvNjtXyBZSF3zdzXKuoxQi7HIRkbKxKAc579i2uoLYsHYdVT
         /bYZRgdpQu5G7y/p7l1LYZ9mL8JOdi+ixIbpwtDBQqEuIHylFvTkakDHMT5QfOgsqyEG
         ESE451z8FTk6wTWF6HFr+DBKeFkqsT90nh1aruQelJMl6gGJyCSd5YM2q53UFLkY+FAm
         n2IbOcIsdMX3F5WOkflzMbpy8CX4J1Kx8Nk/2NOiwAxhE/PCtsFd2RwN15OKqpD8wd5J
         rZFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xjvp/Ruc";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id y20si16847plb.2.2020.06.29.11.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id i3so13540964qtq.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:15:17 -0700 (PDT)
X-Received: by 2002:ac8:7242:: with SMTP id l2mr16374761qtp.320.1593454516576;
        Mon, 29 Jun 2020 11:15:16 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z17sm592545qth.24.2020.06.29.11.15.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 11:15:16 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 14:15:14 -0400
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 14/17] arm/build: Warn on orphan section placement
Message-ID: <20200629181514.GA1046442@rani.riverdale.lan>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-15-keescook@chromium.org>
 <20200629155401.GB900899@rani.riverdale.lan>
 <20200629180703.GX1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629180703.GX1551@shell.armlinux.org.uk>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xjvp/Ruc";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Mon, Jun 29, 2020 at 07:07:04PM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Jun 29, 2020 at 11:54:01AM -0400, Arvind Sankar wrote:
> > On Sun, Jun 28, 2020 at 11:18:37PM -0700, Kees Cook wrote:
> > > We don't want to depend on the linker's orphan section placement
> > > heuristics as these can vary between linkers, and may change between
> > > versions. All sections need to be explicitly named in the linker
> > > script.
> > > 
> > > Specifically, this would have made a recently fixed bug very obvious:
> > > 
> > > ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'
> > > 
> > > Discard unneeded sections .iplt, .rel.iplt, .igot.plt, and .modinfo.
> > > 
> > > Add missing text stub sections .vfp11_veneer and .v4_bx.
> > > 
> > > Add debug sections explicitly.
> > > 
> > > Finally enable orphan section warning.
> > 
> > This is unrelated to this patch as such, but I noticed that ARM32/64 places
> > the .got section inside .text -- is that expected on ARM?
> 
> Do you mean in general, in the kernel vmlinux, in the decompressor
> vmlinux or ... ?
> 

Sorry, in the kernel vmlinux. ARM_TEXT includes *(.got) for 32-bit, and
the 64-bit vmlinux.lds.S includes it in .text as well. The decompressor
for 32-bit keeps it separate for non-EFI stub kernel and puts it inside
.data for EFI stub.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629181514.GA1046442%40rani.riverdale.lan.
