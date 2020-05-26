Return-Path: <clang-built-linux+bncBCIO53XE7YHBBSXFWT3AKGQEAAZPO5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 734D11E252B
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:16:27 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id s11sf7924256uap.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:16:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590506186; cv=pass;
        d=google.com; s=arc-20160816;
        b=ymZJRcQurodHl6rgCX2bF8DnCiqRMM8pOBIkA+ri2yvFzGPvPq7F1SpUarzqTyh/y6
         R614IFxSFaENqq6mQd8r2acChiAcj8pF77GXubt+yqKGeTH9Ow4ZORIBg7voyLW9WOEz
         1P3en2gA3Wu2abY/zMwLLEinjBdPy93d1jUF642YAu8fkaCRjBgbtFTePaPnxBGpZ8Y1
         8duorl38MJe8ReR8oaSr+WMYllGkMoTzwm+xEumfww1pg+SUY7dgftcGO52QdVxsqCJi
         GB7PE95HjzzI3XMRFd8ldbMf455dizzHaKIEx4mtZfG8NDWhL5GtwSDUgBPlGCnv+FWI
         hUnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=VIJgS7VuUO3YlH6YZ6usDgw/K6UZYS4Q/UEixpSZqhI=;
        b=len2ioUD+iZJfCytNbPk6qmoD7Xh7KsELHOWtx2Ne6xO0zr6QyfZQeP/tyL9hAunri
         rszwNzomkAN3POaFDDlrTwgw1+8GDsimkBqBGfDVzX7ij9GsyiuGD1okOejdETs6NMyP
         3QSnR4g2ZIYYvopUHiH7VgpbiebV269zGcMBRfb3FEIGxAyjgYvJFmT11vS0505YOHAO
         bbp4cIl/9isqcUcEehNyCaYabluD19rJGLbXHd7GBGcppXnB98XEjWHrc6Um2VVcmS0t
         LDwZDTDn7rDnMRy4kztvYqAgKtYxRpdt+J9TWYQLGB/ml9zozo8J1ZWYltd5JuKZyK3G
         3+nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AYG5ZcBZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VIJgS7VuUO3YlH6YZ6usDgw/K6UZYS4Q/UEixpSZqhI=;
        b=NLgaqNd+yv6OP5Q6o9GFyqupfr/aW3luw3xOysLl9Id1G6kFa6okDwoeIePZ17iluN
         Cwkq9Q78e9S/mHhkBPeaeN7hYU41u985DWqLStG09kDIj+2ixY+vBywgMYr3YfE7CRgy
         LL94GoWXZiNx72aq5KMdPwoWLeJ27vqtcynqC9IkakZD9A1JpNSBAiUp+yplXDfjn6FD
         YFLccvZ5Ygr5edBaNvDHd3FRS1mFoeUjpGjGw2j2GcsQb8IUkWmrQkZTTVMn2drFD0qj
         eUu6tDfLxFSM91SM73ZVUbeJlfIAl9/FCE7oI0I7WfgGfjHzRuBwEQYYe177rAAK6kDl
         oTig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VIJgS7VuUO3YlH6YZ6usDgw/K6UZYS4Q/UEixpSZqhI=;
        b=A1DD0wFXh3+ziDOVXa+oxME1X5No+S3l9hwPjFirbuWeEWRmbkQTXD/cChtLWaMdlg
         sZKwgCekCUxEV8kpeEw6WU9/Qpv8FzFtoqyiAlSwvpw4nj5VvNQYOpfUOcXmZgqJGDSz
         qhEKTVgPgeG11td9ZQyz6OAeY3TOp/t9Wn5G86rso5JL4VKKOTBoCW6Ij2NUSgicDw6D
         zfPEwGrP0qLUPGTeR779rsWCvR7fIrM2g6fVOwFxTNOZFoRZR0/NyWrGQkly0c4xZjhp
         R1KnEny7QHBBTBfbKdjAyHAc6/SE4VSGOpCZpAyKPw/r34YUiaDxumQS3zX91T4apACf
         4KXg==
X-Gm-Message-State: AOAM532cpuLjqVFcIhr8Jp5AXB7dimbCvJ5o2ZZLY1Uv6nKP5+463ejr
	xIJWMSPjQxXUkkj02RTXw/I=
X-Google-Smtp-Source: ABdhPJzZTrwHU1DbWBYyDr0DP9LWPqZ5jF8PRarnjaI8QsaPwIQJmDzd6FyO1cHKANnsi3TvnMe+8w==
X-Received: by 2002:a67:ee42:: with SMTP id g2mr1333397vsp.156.1590506186544;
        Tue, 26 May 2020 08:16:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:1176:: with SMTP id k22ls1100275vsg.8.gmail; Tue,
 26 May 2020 08:16:26 -0700 (PDT)
X-Received: by 2002:a05:6102:126c:: with SMTP id q12mr1307014vsg.173.1590506185962;
        Tue, 26 May 2020 08:16:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590506185; cv=none;
        d=google.com; s=arc-20160816;
        b=ngpC80mTlBaMkHphsdXMtcsxMo/eswGRcnPDtj2BpmMp8U95u1WlwiUOMJnR7R2aLb
         Ynvw/LTYWx+DcXPGfwNsRIyPJyosaFyYwDpl6UsdMzDDBA+tbSniwptj2iRQBm8P2C2G
         rIRdXUlLr43kjYXjMv6H9fb6el2KNiOjBaUDerYd8ZWRb60k3n9jbaFKksFODOL0hA5A
         hzCYe092lbZgUYcS1My7DeYU8IoxWRaMC7Z3X+6SS47jU5h3BhGMxCJiVw1BwbG97vI1
         4Z08bD1Dfj7dU5m5SZ2lwl6kWSIbMwuA3BfXmzqq51hwQbR6M1mogZLleeKA/MCC5128
         AJTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=rvmRiO1axYsyxr5K067CYVfJq2RYqnnENI5i0SPdwNw=;
        b=FHCWWGJChYUo9/kxmrwwbBeP8nbQTGP3uVNxOnVcGsO09DpiIZXgTtWwFl55zVuYfu
         aY8Zct7fpqWxZXbv8bSCXaTPIWsI9IyFpvba9Lxr0gaOdp0BP6urmzk/ALRwWcB6eClg
         e1E8x59P/zJclUIVxNlRW/pRKNi78BQ8+zSrSSma+u8H4PUBRyyJln4Yqro+PsfCk+Xl
         roAj5POEFScOPlOTe0NmmtwrdsAXUEYuJojX8G/CQ/dRb0faHcok/EgLtITUkEYPvX0m
         71pzYSjIAhFSqFVx9oLtIREDjpd3UTZegqEnopNYfyavls5Dk+yuA/xu9c9zF0HgNIpq
         GS7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AYG5ZcBZ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id t9si29590vkb.1.2020.05.26.08.16.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:16:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id z9so9546326qvi.12
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:16:25 -0700 (PDT)
X-Received: by 2002:ad4:4e6f:: with SMTP id ec15mr20989235qvb.88.1590506185506;
        Tue, 26 May 2020 08:16:25 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m19sm9295311qtn.38.2020.05.26.08.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 08:16:24 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 26 May 2020 11:16:23 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200526151623.GB2190602@rani.riverdale.lan>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-5-nivedita@alum.mit.edu>
 <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AYG5ZcBZ;       spf=pass
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

On Tue, May 26, 2020 at 08:11:56AM +0200, Ard Biesheuvel wrote:
> On Tue, 26 May 2020 at 00:59, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > +KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> 
> Do we still need -pie linking with these changes applied?
> 

I think it's currently not strictly necessary -- eg the 64bit kernel
doesn't get linked as pie right now with LLD or old binutils. However,
it is safer to do so to ensure that the result remains PIC with future
versions of the linker. There are linker optimizations that can convert
certain PIC instructions when PIE is disabled. While I think they
currently all focus on eliminating indirection through the GOT (and thus
wouldn't be applicable any more), it's easy to imagine that they could
get extended to, for eg, convert
	leaq	foo(%rip), %rax
to
	movl	$foo, %eax
with some nop padding, etc.

Also, the relocation check that's being added here would only work with
PIE linking.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526151623.GB2190602%40rani.riverdale.lan.
