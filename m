Return-Path: <clang-built-linux+bncBCIO53XE7YHBBDVDSH2QKGQEQ2JE52Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB901B8742
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 17:04:48 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id e139sf11987715pfh.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 08:04:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587827087; cv=pass;
        d=google.com; s=arc-20160816;
        b=i4Ya8nO+z1JUDUq3uJ8HzEFcZcXpxLQlwmWwu0c1Kw9ujojI+Ca0ntJUuoKic5CMBG
         lPjzF+PJEmnN8HLECyt/P2fUmLCiCT5JxxG9lOnaf5eStOUwWWv3eV5DjDqSnW7zIcRF
         /3JwI1Jf2mWj0VwADbzQFQd5jiHwAeUzlNXX+vb4mgEmbUt7XxFcK4Uv1F+7Ai0GFQUI
         5imGHR8DURdT+XK7SOjZ9BqLKgh91rVHyoLK1Tnl9qshlCZ8df8HfVMQuI0Gn9e/2Ite
         +gZxsyI1OECVm8YgqYmXQ2AmzMMUbfjjByIOirvrrB8P6zvqWv28E2/MVY4uqK2bYLm9
         1bPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=fqOCsSs/KC4OWxdP0EWKtQIJoeg+BPiafMKgX/lMyCw=;
        b=FO+IOsjhem4EtpXSoOKfW8Iv+fcxUzDqE4uSdtUOZ+m2GG10n8PgGLKJ6wAlQBTC3W
         SFry04DZZhXbVWyCcrari2NPNCSPqnqGOC8hyzkM8gH9YNqwc5XzdDzENwNRG1ozKO0U
         qZkTJFeFHi3Q+Rck39QJBVCFEhZo/TBxzREwJUUT/+nD3h/P6CK08gICTkeBbECdK12p
         7kgNVQbXVEvbPm2ijwq/WlciP6Z/VQDoLc4zZpY4cUx5qOC68FLP13WJlt6zCwOmrSyU
         ffzIX4sRCK76wRe/zZNsgyhjpMYJ5AOX9oIm701Dg1dj64YCJ39keGea8zi2gCjeS8O0
         dMzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qsh9H7XU;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fqOCsSs/KC4OWxdP0EWKtQIJoeg+BPiafMKgX/lMyCw=;
        b=DUj+agH4YSap7nxH8N06UTth0ibo0pPEQBgdENkHGztCy8ESwyQbpGrmr5pmnCHXgy
         IDBIIu/jsyqR78nbnv84G6pLAWWsxwDKgFKjQqlafKdDGZ3NyEzRkZGrgjYVhpRyxbLb
         gLmOzvtCS3x6bSv7xDl9A1zRvV1oQ2cH86vwi1KUHdDIiZgk8kVSG5cdPjWCAmlIdWFJ
         1FPp/PZ4o7S4735AO/MxPRB8SvaZVrWDiioFsrYsZeD46ZBg3ySGA9sCyF1WQVxz6mXR
         cFTbILCx/GbSe980D9usF9yCtFBtkYHtiquQd8aAJ9upbE7tFQecbslT+raOghPvnbKc
         MhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fqOCsSs/KC4OWxdP0EWKtQIJoeg+BPiafMKgX/lMyCw=;
        b=ku7/hnqdVC2eCjfanqnFREtZPpZnMJXn2CX1n7jlECirGDxKnMDPjfxyQ5VD6RpP5V
         OjmUHz8WQ0v6ZoPCDxpnAXWxxk38ZiCXvGvNZIDWOftUQuX5IfGsbHJo0dka5A3hbqTJ
         YgKDKM/QXerxRWHu4jCvz0XMVgZWqgekiFn1WwOHlD/by4xXOeIcS2ALtzuwD3aJ/8FL
         B5K1ujNjsFClD5MBAXZUXYAsZw2kZI0CE6jKc0TkStenk5ESGCsU3y2Q/BfqvJAosA+n
         wnAgnXoAPeBIJr17R4Iz78trt0GZt4NmIRvO/x/F2OQieLNWluB7rEj+g5+mT441+Av0
         RyoA==
X-Gm-Message-State: AGi0PuZygu+Vh6bkiSImAo+tPq4XSTcGUbDV9LQlKMZZe0DNTLI1NCKB
	1jaFHDxXAOZBtr0qQBYk7Us=
X-Google-Smtp-Source: APiQypLm6W/4jzaanbpdeAnWxA3ztSM+mu3yxmijT4ZmRlP1xtK8mkg5Dg+nln9PspXl83LTgMvDNw==
X-Received: by 2002:a63:140a:: with SMTP id u10mr808543pgl.20.1587827086978;
        Sat, 25 Apr 2020 08:04:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:87:: with SMTP id c7ls9302733pfj.8.gmail; Sat, 25
 Apr 2020 08:04:46 -0700 (PDT)
X-Received: by 2002:aa7:9429:: with SMTP id y9mr15777664pfo.8.1587827086331;
        Sat, 25 Apr 2020 08:04:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587827086; cv=none;
        d=google.com; s=arc-20160816;
        b=xhzyy2cKajvshUlDNbcYrMsXSLq0HxdGlfhVL++h4NnF8M08HZEDEtwGSUTXMdzT2v
         CRZJVucuP2pU9tXV1/TconGQvOAx+235RQFQd+vLf+RKWkItv3qzZYjLgGMHDHdkyt+k
         gX35LS/kbqeoIfMrml21E35zcNDpyweBzd2YdDjZHmtu0n+M5Ua7VEob2d2dwwblBzv4
         s5E+KrNpiYMh2qwj6t348cGOHNCJl+4rcgkrGLY5Jc3d/0rXaNws+JSDYijgE8yZY0dP
         JWpDqUj2ou8UfVan47zg5wJN6N4CaakqYFahmr9e3Ar+MHRvZTzceVXpRi2WeRfKWfuZ
         3O9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=aFNkj/X0ARFk1lHudyAFFChBsuWKz++VCQGA+5bkEF4=;
        b=bEONrDqBhdN6HFULf/bIJxrUA2rI3G3V6gWNKHYEzbk8GhVXXJwrjFP6nNwJIG3ycg
         n/LI6INm3gPpSbg/QoInpb+1kSQLZFx86YZVADg5fLVpGvZN3TUgNbJLiMavdjND4gnz
         O0LLZtQ++ns/U+HsxUBXubTVSXG29s+MS8QapX3TsdifFsTcA1fV8/dTODvyNPqCf3PJ
         tBqRtw1epNN5dVdq93wdNH7ym5IAi3KCSKEi4xjRcDAn+9CPy7GmXAhQKIfaAreqmuzV
         Oqq7Io7CzoOfrKy4cGTSBmDj7QK2OnyRTxrJVJ1QARYFmjnlkUayD1KY41kQRgnNYnEq
         Oarg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qsh9H7XU;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id q34si595323pjh.2.2020.04.25.08.04.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Apr 2020 08:04:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id o135so967061qke.6
        for <clang-built-linux@googlegroups.com>; Sat, 25 Apr 2020 08:04:46 -0700 (PDT)
X-Received: by 2002:a37:e30e:: with SMTP id y14mr13686328qki.61.1587827085314;
        Sat, 25 Apr 2020 08:04:45 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p10sm5925035qtu.14.2020.04.25.08.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 08:04:43 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 25 Apr 2020 11:04:40 -0400
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	boris.ostrovsky@oracle.com, jgross@suse.com,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425150440.GA470719@rani.riverdale.lan>
References: <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425085759.GA24294@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qsh9H7XU;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
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

On Sat, Apr 25, 2020 at 10:57:59AM +0200, Borislav Petkov wrote:
> On Fri, Apr 24, 2020 at 09:46:57PM -0400, Arvind Sankar wrote:
> > The comment above boot_init_stack_canary's definition should be updated
> > to note that it needs to be called from a function that, in addition to
> > not returning, either has stackprotector disabled or avoids ending in a
> > tail call.
> 
> How's that?
> 
> diff --git a/arch/x86/include/asm/stackprotector.h b/arch/x86/include/asm/stackprotector.h
> index 91e29b6a86a5..237a54f60d6b 100644
> --- a/arch/x86/include/asm/stackprotector.h
> +++ b/arch/x86/include/asm/stackprotector.h
> @@ -55,8 +55,12 @@
>  /*
>   * Initialize the stackprotector canary value.
>   *
> - * NOTE: this must only be called from functions that never return,
> - * and it must always be inlined.
> + * NOTE: this must only be called from functions that never return, it must
> + * always be inlined and it should be called from a compilation unit for
> + * which stack protector is disabled.
> + *
> + * Alternatively, the caller should not end with a function call which gets
> + * tail-call optimized as that would lead to checking a modified canary value.
>   */
>  static __always_inline void boot_init_stack_canary(void)
>  {

I'd put the clause about stack protector being disabled and the
tail-call one together, to make clear that you still need the never
return and always inline bits. Also, this function is implemented by
multiple arch's and they all have similar comments -- might be better to
consolidate the comment in the generic (dummy) one in
include/linux/stackprotector.h laying out the restrictions that arch
implementations should follow?

> 
> > There are also other calls that likely need to be fixed as well -- in
> > init/main.c, arch/x86/xen/smp_pv.c, and there is a powerpc version of
> > start_secondary in arch/powerpc/kernel/smp.c which may also be affected.
> 
> Yes, there was an attempt to fix former:
> 
> https://lkml.kernel.org/r/20200413123535.10884-1-frederic.pierret@qubes-os.org

There's also the one in init/main.c which is used by multiple
architectures. On x86 at least, the call to arch_call_rest_init at the
end of start_kernel does not get tail-call optimized by gcc-10, but I
don't see anything that actually prevents that from happening. We should
add the asm("") there as well I think, unless the compiler guys see
something about this function that will always prevent the optimization?

Cc'ing PPC list for powerpc start_secondary.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425150440.GA470719%40rani.riverdale.lan.
