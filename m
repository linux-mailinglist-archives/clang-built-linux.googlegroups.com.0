Return-Path: <clang-built-linux+bncBCIO53XE7YHBBM7VQ6AAMGQEBN6FWWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A22F86A5
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:27:32 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id l2sf7171358pgi.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 12:27:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610742451; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJR0UIZaaYl5zVcdqKBnx1aQDhAEpw4Vk9l5N4KUH5+uh/TAvZiszCszTbNwN90W4w
         K+ag4uRuwYdBs3dsqWW8JsSwwG/G7/NuNPkl9jClBiG4gec26Ddk8z3NaXSNx+Qw7txX
         5x2ALmGe7hxf2VEj74kZI2xiqXpVYMd2r2eFq0jwnBOjcI+39qaNZ6zoiItMglfpCys5
         nf0+xqNbTjx+LP39EA447CxK0dVMsjxI7cxtKhbDBioO7WdCu6t/QqxVdoiN/S5lycC2
         cWT1UujGzt8If+6ZVA0fZ+mtvtXjhAQEjk/MrxphiPNc2FtR9AdjiWQrX3RCdkmuibpn
         mKtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=nbrA43tqcptHKZ7wv6aug4l/HTUgYtP681dD7uW6KhQ=;
        b=kOX4JkV5eM4HdNrPbMhLNTn0Ij4AoivAQWnaSf0ss5w0+/QHHE2rmw7Iz6qWWguXjT
         VsphdnLo5UciXJrlfCtNd8hmAcHdYfsmv6gU7b9Bvewj5BRAQBY/fyrSfDAKG/qKtXLO
         4NY3aNx2QLB0R3qcwIKLkFkDbNRLfD7HR0/ISBeng7jYNO0tKy1nZKzRtoNImNCIqlG7
         lgkramRxlLXvetUMBMeC9z0wXLYwv7G1UogA9LmQmxgg0aKaNk3djlr1VMRFz+dcWluV
         VGHPYrI2HfNoz8Z2vQeaKYPPve0qNfuvRhgKHxIuycGJSzlOk86idssoHUrwTYg4OUTP
         RDfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJnALcB5;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nbrA43tqcptHKZ7wv6aug4l/HTUgYtP681dD7uW6KhQ=;
        b=RaVVPYB1GZkXcJBkEN41AOtx0DoasI1v7EKoMe67vsCxpb8QC3Pqh8yibw35Wmverk
         DZGoIm0RNjsD7a0Tkio9atY1UJ3BxpU8a1zrnnGSkvjhKoXsZ3/gKXBt0wzw3niYoe3A
         yo2upGi9qSCxckv0lppLjbrUQfesfh6XG9kfMchXK3S0O1xgZL3hRrr99Yt+Kva1R8Hv
         h0qPIPNU6mIEytAFv1YCHh3HERNbTkk6D617zhCtkua/1uUdxm9OPdPbPrIEevODbn6s
         DOX944D4zmyWfqk0CLHLk+hUddmNBAqdnGjeDFFiytnPFhYUPiNpxvUnyu1b9MNLIrvW
         cMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nbrA43tqcptHKZ7wv6aug4l/HTUgYtP681dD7uW6KhQ=;
        b=odavFnsLG9TvuyBtfjrODj4UKX+TqbZQN4g4J4M6ygxzvvNBTBSeSIvNZV2MsxqoaA
         zPfoW2/2rfPFqlbqUtmYiC1Q2ukQDXeed7bMMY090pAcQ/WhS+RPJ217K8NsCBgE4qn0
         8xB9kY17BB35ZNc6qUoRXqaH8k0SZyBq4loOLevidT5DYJM/1y2c4vsKNkuwOSMUtqpB
         KCgrRmLAs3q2KZuYhExOE17IJCd//4+iJnehih4a/xSHHeEGpI8CxkV0xLbyutgWuBmp
         7aOOGKD5i3/wxlLY5eIxp4qIJPN5sq3fAvaLHVodJChCFMiYT25OEszxRENMahrrAO72
         xghQ==
X-Gm-Message-State: AOAM5323sdJwaim8nZxS8+lYehl9I6yn4HSGq9SUwTFxNQsgyuPbTFY5
	NppM3B3gW16drZmT58RC0+s=
X-Google-Smtp-Source: ABdhPJxrqOuTynIuL5kT7ulsor/sXiE47q+1wYxQAqf/8FPpvk0GSFDWUrN04WMWIrlHjl7RoIMDDQ==
X-Received: by 2002:a17:90a:bf88:: with SMTP id d8mr12614167pjs.102.1610742451468;
        Fri, 15 Jan 2021 12:27:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls1832760plh.10.gmail; Fri, 15
 Jan 2021 12:27:30 -0800 (PST)
X-Received: by 2002:a17:90a:4887:: with SMTP id b7mr12122281pjh.40.1610742450648;
        Fri, 15 Jan 2021 12:27:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610742450; cv=none;
        d=google.com; s=arc-20160816;
        b=sO+6sO7NJnIlkOlcWKzRMlLI8cNzzZzmGVfYvmPtqEGDvWrc/HiPnTQvtX5NuPzctB
         ZACwZ3NO8FnIhOlN+uc2IHI9vMZhMDJv4YUImfBcRpicvvH7VN4hhSEBXmH/WGV5TIoC
         3DZrLPbIlBli8L8Gx37+Az4lMySH+WBxSnYVfURWD++3kyyUZrllINejGiMG7066KjTF
         r2yLc3DB+iK06sEGvm5TLUNMIE/6xdWgnvb23qybmGmta4KXoCvbf1PT/ci4PquPPlli
         V3FdVyFDGKtvQjMt9RMPI5JBqAXLccyHWPyZzBrt8mgsh5gvICak/pw3yWIZueRrf0DJ
         xp1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=CsV/iFRWRwPOUl0iQrws3dbcpd1hk5l9ouGWD9Hf1Sk=;
        b=zmS3ZRtqaqtQhP0JUor+zdXOZOM6j5RqJmZ8SY01r8otXwmrVddTGhG1hWJiuKltG9
         mLMtD1RSYWmuEvszeN6MG7sp99ZCANwwIK86uhXJz/iulgmJ7G4mfJyqV7OgKRo8agHZ
         UEk0jZIF2gtIcgaY862owaCQs21URdhssatSOnocSx/tb9aewqn1X1zQ4qdwM6ZvIsOn
         dmsrQBqQPIzMwPscj1Fp+zw3mn8OryEOk1l9vJo5DgZ1FWKDeB8+dBlOKIO78l9JWz1E
         IuAKrmnNdL35GM9qWfUi71LgSQMmovXgzRQH+ee22hTBt8QYvcwkBvXHWKPmgh4JqD57
         P3yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EJnALcB5;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id d22si788290pgb.1.2021.01.15.12.27.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 12:27:30 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id v126so12936127qkd.11
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 12:27:30 -0800 (PST)
X-Received: by 2002:a05:620a:546:: with SMTP id o6mr14063530qko.269.1610742450197;
        Fri, 15 Jan 2021 12:27:30 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id m8sm5693893qkh.21.2021.01.15.12.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 12:27:29 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 15 Jan 2021 15:27:27 -0500
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YAH6r3lak/F2wndp@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EJnALcB5;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::733
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

On Fri, Jan 15, 2021 at 02:07:51PM -0500, Arvind Sankar wrote:
> On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> > 
> > x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> > efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> > 
> > Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> > and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> > so it only triggers for constant input.
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/256
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/x86/platform/efi/efi_64.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> > index e1e8d4e3a213..62bb1616b4a5 100644
> > --- a/arch/x86/platform/efi/efi_64.c
> > +++ b/arch/x86/platform/efi/efi_64.c
> > @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
> >  	 * As with PGDs, we share all P4D entries apart from the one entry
> >  	 * that covers the EFI runtime mapping space.
> >  	 */
> > -	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > -	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > +	MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > +	MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> >  
> >  	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
> >  	pgd_k = pgd_offset_k(EFI_VA_END);
> > -- 
> > 2.29.2
> > 
> 
> I think this needs more explanation as to why clang is triggering this.
> The issue mentions clang not inline p4d_index(), and I guess not
> performing inter-procedural analysis either?
> 
> For the second assertion there, everything is always constant AFAICT:
> EFI_VA_START, EFI_VA_END and P4D_MASK are all constants regardless of
> CONFIG_5LEVEL.
> 
> For the first assertion, it isn't technically constant, but if
> p4d_index() gets inlined, the compiler should be able to see that the
> two are always equal, even though ptrs_per_p4d is not constant:
> 	EFI_VA_END >> 39 == MODULES_END >> 39
> so the masking with ptrs_per_p4d-1 doesn't matter for the comparison.
> 
> As a matter of fact, it seems like the four assertions could be combined
> into:
> 	BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> 	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> instead of separately asserting they're the same PGD entry and the same
> P4D entry.
> 
> Thanks.

I actually don't quite get the MODULES_END check -- Ard, do you know
what that's for?

What we really should be checking is that EFI_VA_START is in the top-most
PGD entry and the top-most P4D entry, since we only copy PGD/P4D entries
before EFI_VA_END, but not after EFI_VA_START. So the checks should
really be
	BUILD_BUG_ON(((EFI_VA_START - 1) & P4D_MASK) != (-1ul & P4D_MASK));
	BUILD_BUG_ON(((EFI_VA_START - 1) & P4D_MASK) != (EFI_VA_END & P4D_MASK));
imo. I guess that's what using MODULES_END is effectively checking, but
it would be clearer to check it directly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAH6r3lak/F2wndp%40rani.riverdale.lan.
