Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB7WLRP4QKGQEAVC6WRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D79233542
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 17:23:43 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id z1sf13191098qkg.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 08:23:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596122622; cv=pass;
        d=google.com; s=arc-20160816;
        b=KaXQKFREuwhswTeBqbd9HaENsnOZclLMFGk/PCyYN0AGLTKrS9rqGFX28Jvd9H0R0f
         6nqMylLeMsCkQzqJuDEVcP2nSCEapDxfiRiyv7fHd6CFsQkr25wGEglUw2PO8QjMoS5E
         DQ/Lnx93uyC+TtcU7nz/dWo5ElIEr0RGWMknsv4dPg2wa+EDAhIxfhFqSrwa5IhJiNxB
         94BdGW1fJTbit5ED2kI9fZl8QiWPPDmuWIPRqBSHgxCA/ha/SEapCdWi1/ad8HwUAyIz
         8Jkb4dLMk6sW7W8egQWHSg9VcQv1Oma2TaTY8j0fsbX0zQE/fYzFB/BgmCwv6IRuJZSh
         Gu4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VrIYLjBndRVxzIZHxZo03Bg1a+/5pg7Q5fPGu/SSMQI=;
        b=rR4HQ5DhML72JoDA4GRlHZzUW4PwU+n2gSjAIzQBEFbxdoa+MPQU1radvKAGMjRT+4
         uC07v8pXbopKGkYgeKYKqmYOtGa84YyqJqJdIIwcykMnMn9qDJtqjFEoVegVCzHe2W/8
         grGTMT7nxwA+eIzW2VtlgCVNcl4EkwoM6T7B3MHZuYl92eHZ4xxsKHpHszF27NwOjZ8p
         lIBwVi/y9d2i/Gy8AncEp1lxjG/3w8WmGNSgW/tOaj59qQUypz3iN7Fghm32tOrF92Tb
         J0gajrB3+cXXJPXdpJiqCm06UEmCYTIu7d4uS0w80OY/dfwRhQ+/IJfbe4jpLezFRJWa
         sw1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VrIYLjBndRVxzIZHxZo03Bg1a+/5pg7Q5fPGu/SSMQI=;
        b=hPuCgOSUPFrQGZcq5WMbpTzVwJ0xgHvqKlBMoSau0SiyiUp3Ilf5mbMyGWD9xXAcIx
         sUS67mretbu63/E9S5svrIes8siKSaT38PFbGfv/+Ul2r3LCPaOdO5s1DVbF+ew7NxWz
         bHn6XJhn5OFPTdqyJ/9JuTKRYDA2656q0b8wqhwmpaH3l3nnhCIgwrCeN42C+Tp5h2/C
         ye7H7wwDtw/kRuV6Ie3Kv9QK1hAF4MED2CPbbIMB/q37vNlafS972ThfnVHwlMr9c7G7
         ERzQ9EVT49Ft48mWxMW/QOEykKMAbYBVNO8rDftPZ/mruCA8af+pCqA1buwsIsat10Dx
         p2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VrIYLjBndRVxzIZHxZo03Bg1a+/5pg7Q5fPGu/SSMQI=;
        b=WbG3zuI/nzZLDgMTB1y24j/CmAoxsELTdESlDjpx8fWMwJI7xIrnSsY9i/F/LUyod0
         b8C+5XxapbV3cl9vu/9s9xNK5nMzu4Z09gmtCtwKXfZZo+rs2F6LuCLW0eEa80V5RyBO
         1zYB66sjdctdY/+/xsAZRlvPIZlUEBp2SlWtlSI//e9UH3KnApgi4/dZjASR0OR14i/Z
         vW2qU+Cw59j6jKHKWpvOhoBy+Fa4KOiDfIECU9lzclr9cblgDS2GDc6EmnO58FpKI27P
         tN6VShhUsx+3EBwV8v5HiGwKo0cQe/UHEkCCyiZSmHFesSLKXer373DjrzrAyyhxLitc
         qTmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+6J40rUtXxQQDO79jkP4/bXUquMT/DvFI0WISzO14WkswTzSx
	1ySwFYwRcXEx/KSKQBnWO/8=
X-Google-Smtp-Source: ABdhPJxYy60efdWtO7Zb1NKIVRNf/TbMZDwOkJLKvEv/2o+8os45PjjsAaL8ZG9iXqJHyDVd37X2wQ==
X-Received: by 2002:a37:4884:: with SMTP id v126mr36931766qka.118.1596122622648;
        Thu, 30 Jul 2020 08:23:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:246b:: with SMTP id s40ls2318299qtc.5.gmail; Thu, 30 Jul
 2020 08:23:36 -0700 (PDT)
X-Received: by 2002:ac8:1788:: with SMTP id o8mr3294925qtj.330.1596122615950;
        Thu, 30 Jul 2020 08:23:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596122615; cv=none;
        d=google.com; s=arc-20160816;
        b=XpwfIPk8roHXuD8ewe1zc5jtQV0GaGZqZqvGpkISaKDxBebfCutLDqEKcL1KA5Y8b+
         LO86IaZH3jyKnlVoSnHsluzICxs28qr4UrvR5Vk2tYxurR5UnhjI5eXapJGCCTb3yrbK
         B26eSFs0VVm014nm8dOzblHEjwXOjGPl3evt90MFoKrU099gTfGvQW+/UmWqegDjIa2P
         fcmulJ6pLQVibpLxg4EZsKVav4SVk6oYi/XhUuR9nHgQj1rKakPhK6FW9BBiUwgMrFE6
         Rwn4wtK0YKU6aC50VrX1AoNT8EDr9r4yftIeiK59qnnHtXfQDHJjcscmSz5VlcSCpZGV
         LzRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xFJE7s619Lwfx1W1vsx63ehRkMoOmg/DQ6+RfbDT0sA=;
        b=LobdAVbdA+kHfvgAvjkfRNJR1RLgQgmhlZMGe6sT69IwU21Nq+ptFv/AzYKfR+tCEI
         FzbE/wRuxkfR0+uGEFG6JYP3FBWzkkmt8I51fYNfNLqTuSfVI+NPNOcQQuqNUAmIXq5J
         3y9ff2q6Vur8Pn04iaXjrwnBTrZCIT/wPaBDfC8uj1nkLyosYmoh1mbJ87vygGE21O+8
         RImw04ryXGu+7waqQQnnDxlnMTKDQd3swDrqfcvhMcspARoU6GsFPXiHeMXi8f67/nfa
         vRHAJtHdTtOwEtC1cvOJjWJ+L+KwZiq4wPbk0ZOqFJXQCWPdmHzEWT5ZXesNqRZKQqMF
         1x7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w195si250660qka.7.2020.07.30.08.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 08:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6EB7020829;
	Thu, 30 Jul 2020 15:23:33 +0000 (UTC)
Date: Thu, 30 Jul 2020 16:23:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200730152330.GA3128@gaia>
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730122201.GM25149@gaia>
 <CABCJKucS-DXPkHMCPKpbFduZApRdw=1DL4+YhULAsUNn=o-dTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucS-DXPkHMCPKpbFduZApRdw=1DL4+YhULAsUNn=o-dTA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org
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

On Thu, Jul 30, 2020 at 08:13:05AM -0700, Sami Tolvanen wrote:
> On Thu, Jul 30, 2020 at 5:22 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Wed, Jul 29, 2020 at 02:51:52PM -0700, Sami Tolvanen wrote:
> > > Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> > > sequences") breaks LLVM's integrated assembler, because due to its
> > > one-pass design, it cannot compute instruction sequence lengths before the
> > > layout for the subsection has been finalized. This change fixes the build
> > > by moving the .org directives inside the subsection, so they are processed
> > > after the subsection layout is known.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> > > Cc: <stable@vger.kernel.org> # 4.14+
> >
> > Commit f7b93d42945c went in 5.8-rc4. Why is this cc stable from 4.14? If
> > Will picks it up for 5.8, it doesn't even need a cc stable.
> 
> Greg or Sasha can probably answer why, but this patch is in 4.14.189,
> 4.19.134, 5.4.53, and 5.7.10, which ended up breaking some downstream
> Android kernel builds.

I see but I don't think we need the explicit cc stable for 4.14. That's
why the Fixes tag is important. If a patch was back-ported, the
subsequent fixes should be picked by the stable maintainers as well.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730152330.GA3128%40gaia.
