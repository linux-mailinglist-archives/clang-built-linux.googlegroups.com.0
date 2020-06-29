Return-Path: <clang-built-linux+bncBCIO53XE7YHBBT5P5H3QKGQE5SWVTHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD2420DD0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 23:06:24 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id o140sf20101665yba.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 14:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593464783; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWirMgXbMtsNLX2hwduFpo7ghsyDK0s0brNoYhGkpUYcGx1MSq7SIiyEfsEIrCjgbc
         smzz5x+2VXRQ62UZmPBAcBB6qJ4x+GvxxxAgFD8KwBK/vNtFk6+XnFWW5DdDwSI4ZJ2t
         s5ItujU8RTtEIwGIttMAfU3PRtqtCLS5tIb/xX+UWlUZIUKzF+6sPISa0p6q4+mlK/M9
         sRRAoG2TJVrdbagSsbGXngqztmQIyTLqvb6WBCreaGvvCV96TEiWwL5sVbjVP7onApUL
         svnZY4arxHYBkykGcDwE/rFu1yAE5UXlKaJEq5P9Min1C+NYNPhxCaoQ6SJB9ZnfXAW4
         48Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=yATrAIQRFSqmiFZLskMjNr8FAoqriuS52mZfAFINt6o=;
        b=0ziUS+wXR66PlFgpztJC8H9f/Ii9VEt3RdR7s2+5KDYgJzxhL/oYZy24c+X1wjVjpy
         6/6xGOiGGOKTUZZ3QRGBu76r/vVRuyXxFPV+8SVbHZwFs8JRxT9j3gd/K4e6mzVnVeI0
         RvO8egnFLCu80OvfDX3V3Fne8g6mqb1rtt9FXCj29G98IgzcjMeaF/61D+0czVtqd4W2
         QTu+vJhFwfc1WxeYdMPTpxNBZR/qd3Y2zVSfd8rWTcXOHBmZPI/x9UZNLL5mTCcd+lol
         nGwqyauI4phH4bqncmcgYnizOw0x3awqT5mZxIbwbn3dKMNO2EPlcCN7hrzPY/HIevjx
         7S7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqI1i8wz;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yATrAIQRFSqmiFZLskMjNr8FAoqriuS52mZfAFINt6o=;
        b=ox8kYeFVcaJJWL9t20tOEJ+o2t/Ef5VCt9J8kh55l7cL718ZTl8/Vz/CjD85F+awaZ
         vNUTZR1hFWKvKJc7Qv2RSB1tnlIB1cONukuhxa3X3DXq7MYCOiWqhxbD0iJDX4O95wMY
         aF69wNAnkpalliJ5cF7ssP+bDpAxYVETF/VoWhnyxEBWXo9ce3BpkVvqYcVsAJnROmJz
         ye5ZzzxpiSvGvzNZy44DQgLExoPpdhLTB5uj6gMSfpDgHe42BGyaRBm1SwSp/F+wfuHs
         Mc4kAQ2PDE4Xpfym51HNF1Ulk0jmSmnLxVEuC3zlI6a7G9my7tZPP3O5Fy930MJWa0s1
         8JnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yATrAIQRFSqmiFZLskMjNr8FAoqriuS52mZfAFINt6o=;
        b=Y+/RGPYJ1AAA4sKPl2QfGwZ5R7tZG11oY+6hC5HKbtxLcpVcVNnf0wwkwSILKIk9PT
         +VdXUB4NezhcehCaM8FkOYKaWiC4wQo0Gpdg1MtfM7oWX3nzd5ZE7AJN7yxEfr5OR92e
         Fd9Pg1K75azAHXuAr1TiX9dPTVtafFHwR76omJn3iYC44KonPf+4FLzbj+UkjRmaQL7e
         QHi2GmXoILHXMcXvA+xxjIXaUrgA9+KMQue22pUExeJVa8Bqf8LPMLwhWpVrSqy7L72A
         az6dJYNtwq7WQTZp1+/G1TKPkXB2kkDseUu1uwLqDEAFDjghvI3MTKUNlsysnBLtfvvN
         buhQ==
X-Gm-Message-State: AOAM532WotV0iMi7MBiIiEIDReFlNAF6HPi+7yx776KXi7/KdJxz9Sqn
	e1vk/F6O/ECyfr3N+CG3Izo=
X-Google-Smtp-Source: ABdhPJwsm+hT6BSXaDZpNI/s/lakZx69tQEkssrjacUmmKVg3WRg7ccq0KXQGgCbaoIDLem7VzcQmg==
X-Received: by 2002:a5b:58e:: with SMTP id l14mr30125148ybp.352.1593464783350;
        Mon, 29 Jun 2020 14:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls349420ybj.4.gmail; Mon, 29 Jun
 2020 14:06:22 -0700 (PDT)
X-Received: by 2002:a25:8706:: with SMTP id a6mr27743860ybl.449.1593464782829;
        Mon, 29 Jun 2020 14:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593464782; cv=none;
        d=google.com; s=arc-20160816;
        b=W69CY6Ft756lvOeKFaTjcgCANrybRaUKTHoZ8M8sIqIF+Ql72QcPu3ts5r6yEotpct
         C2xalB8SPEwJTBHRQiB32L3T3/xKCsHddBMz0MRCWFrfqUic9iz16XEeSQPymjl6t2EA
         Ezlef6+8L7tW5a1cw2tMg+XA6AdY2ZFwoMbxoC0gA6RLNdhH9LaxL89alc4MIcxSsYrm
         ykh/fH5bFjjDqfgrXLU8ixioMk8PO9fBiglE5xnM9xT5NEFZdYajL0H2vFCc6HjPb0FX
         ihYiCDN0wtc9/IZGoBKiB7hLCiFmNnAr2nOSg+Z7zN3iZuwqHZ1UrptiXwSUWJ2w6UKh
         DfLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=doBBGB7xlE5VTXsZgCgPieACb98RUxeYYlyjRqBYqwk=;
        b=uAWofCN0t14VNjVjHg1iJjsMKqFd72A/5QtrEisSV4i9aug8W/C7dmS9TNg/XjagBg
         p23s8/GsWaFNvVVBqBCYH8Xe6NljhhquJvDe9I7sGqhX93gZs2MRXK10afnaHk+V+W3t
         idoF/RH0X/GzOLxLihkeDSBBX3He6d4RgaBeITsK3zaoFN8y2XLkt0kDt70Pfs2iEgQa
         4/ow374xgWrw97T21ae6px3i5cbqRckb57dF2Y1YNh1W4Xy52yixteg9bAkbWobf5ko0
         rrgXupwuDvQ7lCtcMGdtELj4fGjnIheCDf5gKTC6CgZ6M8uQ0FXOq2w5IdHtX2yCOyPR
         m3fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqI1i8wz;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id v16si37171ybe.2.2020.06.29.14.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 14:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id e12so13984056qtr.9
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 14:06:22 -0700 (PDT)
X-Received: by 2002:ac8:48da:: with SMTP id l26mr17036060qtr.214.1593464782360;
        Mon, 29 Jun 2020 14:06:22 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id u68sm864480qkd.59.2020.06.29.14.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 14:06:21 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 17:06:19 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>, Joe Perches <joe@perches.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
Message-ID: <20200629210619.GA1603907@rani.riverdale.lan>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-9-keescook@chromium.org>
 <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
 <202006291301.46FEF3B7@keescook>
 <20200629205448.GA1474367@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629205448.GA1474367@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LqI1i8wz;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
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

On Mon, Jun 29, 2020 at 04:54:48PM -0400, Arvind Sankar wrote:
> On Mon, Jun 29, 2020 at 01:04:31PM -0700, Kees Cook wrote:
> > On Mon, Jun 29, 2020 at 12:53:47PM -0700, Nick Desaulniers wrote:
> > > On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > Fix a case of needless quotes in __section(), which Clang doesn't like.
> > > >
> > > > Acked-by: Will Deacon <will@kernel.org>
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > 
> > > Yep, I remember bugs from this.  Probably should scan the kernel for
> > > other instances of this.  +Joe for checkpatch.pl validation.
> > 
> > I think the others are safe because they're in macros:
> 
> Why does that make it safe -- the commit msg is a bit sparse, but I
> assume the problem is that it generates
> 	__attribute__((__section__("\".foo\"")))
> from
> 	__section(".foo")
> after preprocessing, and clang keeps the quotes in the section name when
> generating assembly, while gcc appears to strip them off.
> 
> It does that even if nested in another macro, no?

Yep, I can see things like:
[25] ".discard.ksym"   PROGBITS         0000000000000000  0000217c
       0000000000000000  0000000000000000  WA       0     0     4

Doesn't seem to cause a build error, but that can't be good.

> 
> > 
> > $ git grep -4 '__section("'
> > include/linux/compiler.h-# define KENTRY(sym)                                           \
> 
> Am I missing something, or is KENTRY unused in the tree?
> 
> > include/linux/compiler.h-       extern typeof(sym) sym;                                 \
> > include/linux/compiler.h-       static const unsigned long __kentry_##sym               \
> > include/linux/compiler.h-       __used                                                  \
> > include/linux/compiler.h:       __section("___kentry" "+" #sym )                        \
> > include/linux/compiler.h-       = (unsigned long)&sym;
> > --
> > include/linux/export.h-#define __ksym_marker(sym)       \
> > include/linux/export.h: static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> > --
> > include/linux/srcutree.h-# define __DEFINE_SRCU(name, is_static)                                \
> > include/linux/srcutree.h-       is_static struct srcu_struct name;                              \
> > include/linux/srcutree.h-       struct srcu_struct * const __srcu_struct_##name                 \
> > include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name
> > 
> > 
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > 
> > Thanks!
> > 
> > -- 
> > Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629210619.GA1603907%40rani.riverdale.lan.
