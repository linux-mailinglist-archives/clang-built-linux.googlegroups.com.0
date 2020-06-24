Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5XFZX3QKGQEXI5X4MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF4D207798
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:36:24 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id v16sf1655388pfm.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:36:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593012983; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6TAvCoBsM7Aw728cIP5hlzj0oslllI5jnL80ZNIatvTYtksUy/pwDl4Z8whMpfgbn
         OtrvZW4OTCdgdHnklEB3bDByjWGkbjk6IHzS1Sh3sTfJu7hHnSdOyKxJNvp2CyxuyjaB
         7uvGCZR0SuIxKsilNqOnCFptJTCNms8ZFWB7BTdpudKvKgL354PXGuKriKGUq6qA0ZN5
         8qvOxqG1dQIKVOicm1ptDpJid5LwAiCNUFYjqzF0u9oAJA3Chkk/wQtezfq7jEwqQn08
         yNbyrVvA5Aexd52KxbUfkJMRcy/6rqhU6hpPkQh4cdJ0KTCBMDM46djw7jkanjX2FkfN
         T0mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=upUXSqRDLxvzt172shkn2Ra9azBNyg7EOppGpt2kOGo=;
        b=qe+7/bz0rOKoHumQrV3R81zZZS5JAmrpu1DC22hC1dTMMmTUv12sIm6nVvmRQCZxz3
         +QHqyx23/M5n8KMmVHdN9E2y4wnQ3nsntbz14+4N+xsiICKbO19fpJdHqiZYy2qNxqCT
         Gt+4ajrj+M6wYRCye8dPMqi+5gvbfe0X9DLBG4bbdJtNDlh2V0MiQzgS/nIogZrrw7JL
         RstGAd6bLPBel2taRIMizl95Ke4pe4HSdj2sZjfOvUlysfcjrkAfhhW4R58O6AnMs0BJ
         lQhGHTfccei+ZuGRk9AM8e8UsPg8BIzp25XYmYbbiKt8cHfi1p14A1CVxtf0ZIrW0JGj
         D8SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L87UOx1r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=upUXSqRDLxvzt172shkn2Ra9azBNyg7EOppGpt2kOGo=;
        b=EusQbmodDLJ8eAt5PU7fluDaRMby1SQYK77sCEb+G0F902zy7hTVIN/KUHAptDRFHt
         LTaVnwVJVs+vw/B8aiASwrmW1DW380hvNSHPABB0OWKvvKDv/MiQI0Nw5RhbXnMpMnUD
         A+K40Bd8vzUdmZRHzHIlF6R8AGrTHT9Sct2Usfil6iYRolZb+40Ssb9MhvdDvcZElsUp
         myA46krm/QA1WUpECy8rDm3EKFNr3KH1mGvm+owbIrYEkRjco6ygzUml0ebcWiOwAzOi
         iOmoleHKJbbpvQyZz5qUxzzVmB8h62m3DltNaTVHdoobakYGRF8YpYPP3OxAXm331jhj
         dLdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=upUXSqRDLxvzt172shkn2Ra9azBNyg7EOppGpt2kOGo=;
        b=o97veTdMgO1GudAHWzkQ3Aas8lY8hA0DgwtW4LP6B3FLX6a/WjhdZn+Q7Mo6qkbP3O
         2Zv1P2PDlwHpgXqRpiST7dvFQf7hW9XADiKn5D4FESoMpjnSn0xIlYnsIlXqkbPNa7+b
         Kkrn0fe5hxHH9LKm7kiuTpAfjvMmkNkhvw6aJvEzEuPFGzEWWe5I4USPyjhuLhuBHiwd
         zW4F2q1i7sYAlPPVm97mTg9CYadX9xCPRpkRarbQKAKEJiFks6yfO6q4R2jD2kRvo0ie
         4ukXU4/+zK9lXbOl8+TPHe5RZS+QB7t0DqLtJWBohbhoxBoub1octHOoWzwhWfmalzgN
         24EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qBoY8gOOfbPq+KyNRcXbcgYQwDQ4uWeRCwlVSHrcaJTgLpD5T
	fB1TIxuaVjCw+UUjN/o+d7A=
X-Google-Smtp-Source: ABdhPJz6m93xicjtJUuPyDAW97mekFyiMTqxeivUb7QbTXTJBOo2w9U1/3XzJJaV9NIiKTPyJseC3Q==
X-Received: by 2002:a63:4d5a:: with SMTP id n26mr23233711pgl.85.1593012983072;
        Wed, 24 Jun 2020 08:36:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:38d:: with SMTP id 135ls815505pgd.0.gmail; Wed, 24 Jun
 2020 08:36:22 -0700 (PDT)
X-Received: by 2002:aa7:8b01:: with SMTP id f1mr2668899pfd.223.1593012982607;
        Wed, 24 Jun 2020 08:36:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593012982; cv=none;
        d=google.com; s=arc-20160816;
        b=CdM1ugiAOBlpL527jtVoRdiv2hQ8Tsr+m/IMFm635FlxQzr36gRYDDZBO7J2kw/g23
         UZ69RfbQwCH02DkzA7NuVUOVcCMXaSz9jyN91SqoT2DIsfyxHmmLLBjCtjxHZCJee8D0
         yGHRnf/8z7jSJrBXXFkG8owJZKqOkhwm+nDIcbVlLA14Bf9EzHgrdhtyEwj0hAhQefGX
         Zdbk/1/DvZlRhGJ2QVBqlSZx1OvtjSP+qQXXTG1gvOqQBQYMxNJQEQxF9/MWDcVpEGOa
         mI/W77Oz9ftqi4hcGchcx+yagHJR1/4GpQL93GBddiMtUvXgTYt7gQYaNQGDJCCOLnrG
         6AzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XJUzgH5TgVAKrlAz/oLGoEzf+4q4DR2SPe5g3v8Hoz0=;
        b=xe89rtM1xVUtnFBUiiYAnMQO21bH4NQaeBKvTXthBQqEak/IPNdKKRpw4Uk649ecYh
         ePcDjNDMqo+A881k5x/jD6D7ssPMMfO+m3w6LIN7lYdAQt9tbKQqfEl57xFcHYsk/MGf
         Hzz4BxD7Pd+QVQMpWPnYJ9o4N0B+oy1jvvnj2cKDnDvYeC5ecDI92mRtNN0D9MiNQUPX
         vpU49FMTpIjtlhHLcTr+q/L8sZFhs6ByZIeAjis5+Z8BtPDa+zRTlMFh59dyF93Qs8Va
         iu4SH8CXZgfnFRkz8vXA30CAlyFON05slafrKRYIIYqd2utlKZyTAGAiLTgq2j29aibd
         ybAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L87UOx1r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p7si50928pjl.0.2020.06.24.08.36.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:36:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e9so1582588pgo.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:36:22 -0700 (PDT)
X-Received: by 2002:a63:aa42:: with SMTP id x2mr21604671pgo.361.1593012982182;
        Wed, 24 Jun 2020 08:36:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j36sm17984549pgj.39.2020.06.24.08.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 08:36:21 -0700 (PDT)
Date: Wed, 24 Jun 2020 08:36:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 9/9] arm64/build: Warn on orphan section placement
Message-ID: <202006240835.E474048BBF@keescook>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-10-keescook@chromium.org>
 <20200624075712.GB5853@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624075712.GB5853@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=L87UOx1r;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Wed, Jun 24, 2020 at 08:57:12AM +0100, Will Deacon wrote:
> On Tue, Jun 23, 2020 at 06:49:40PM -0700, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> > 
> > Avoid .eh_frame* by making sure both -fno-asychronous-unwind-tables and
> > -fno-unwind-tables are present in both CFLAGS and AFLAGS. Remove one
> > last instance of .eh_frame by removing the needless Call Frame Information
> > annotations from arch/arm64/kernel/smccc-call.S.
> > 
> > Add .plt, .data.rel.ro, .igot.*, and .iplt to discards as they are not
> > actually used. While .got.plt is also not used, it must be included
> > otherwise ld.bfd will fail to link with the error:
> > 
> >     aarch64-linux-gnu-ld: discarded output section: `.got.plt'
> > 
> > However, as it'd be better to validate that it stays effectively empty,
> > add an assert.
> > 
> > Explicitly include debug sections when they're present.
> > 
> > Fix a case of needless quotes in __section(), which Clang doesn't like.
> > 
> > Finally, enable orphan section warnings.
> > 
> > Thanks to Ard Biesheuvel for many hints on correct ways to handle
> > mysterious sections. :)
> 
> Sorry to be a pain, but this patch is doing 3 or 4 independent things at
> once. Please could you split it up a bit?
> e.g.
> 
>  - Removal of cfi directives from smccc macro
>  - Removal of quotes around section name for clang
>  - Avoid generating .eh_frame
>  - Ensure all sections are accounted for in linker script and warn on orphans
> 
> That way it's a bit easier to manage, we can revert/backport bits later if
> necessary and you get more patches in the kernel ;)

Yeah, this one patch did grow a bit. ;) I've split it up now.

> You can also add my Ack on all the patches:
> 
> Acked-by: Will Deacon <will@kernel.org>

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006240835.E474048BBF%40keescook.
