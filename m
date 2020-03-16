Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBGWAX3ZQKGQEOXTZN2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id BA729186F13
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:49:46 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id y32sf3735175edy.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 08:49:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584373786; cv=pass;
        d=google.com; s=arc-20160816;
        b=vDRpjzqcj4oOBYoZCxEGwvFIAog533Ifk6GpCMKfDxImtQaZA8yPslTJ1zg6gcpUSZ
         nbgVdfC8bzNo5/KrjDGbvUmAEOS2NJzCcuIuiT19xEhNJ1dVXaN/WbDzg0yjJvQjOkWS
         isdbDdfTUcYGsFH7G9Bu65cndvr7oO/l+Ap1JYoiCznXoXOdF85u+7GNrGAkYmCIL5D1
         gXtB8JfVfK8csoVbsIRcO9jkbRCBkrIaSh0lg3LEQvMQQqY8ByzidAr8G34hbU3Z8+K0
         QE5gV7w3GMj5V60bvBJtZ+83jqF5hwFUTl+vDOFVSfM3m0uXFmkJ6aitrMRWDkBM/SOa
         QckQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Tq3hfiETAEl8gLBKZCpQYGBV8xr2AqTj/TWb4+VXFg8=;
        b=rxtSAR4tR/lOTOBSqNMpbUV32hG+NNLckcSIWu427NQV8dHyzaBWCXROtOlJwkrzn7
         IFvfuaqzcgA6+W7DdwAYCmYoIJrfbPhg2SNndFgj8VJ1Zfyty/3g6mBupF/RdN+dW3m1
         nHnr1LokOQhBX+ySeN1nOV6327ErfxvQCVOtpRZr3dt9eHmKGVcQCFpGJHf+29hdmqQ/
         zX8mNbfLIRVSWaJgDv5XBatCk5QZA7TaZHUvdw3Ega0XU3n8upjJyVB0bja8T4iqiDcU
         TF37U0YNQz1wx/dEXPoOU67m5bt7SKTSzyFKspcmqVM6dLVZCMKHp/mED+Zgqu8g6ziF
         bGOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tq3hfiETAEl8gLBKZCpQYGBV8xr2AqTj/TWb4+VXFg8=;
        b=jmgixeGypU9GMezqPqNoPqIOJcXnQjPT2y0BAPwd+qRKjTcMgbpBqLWpCe8D3bZ98b
         ePGo+DUBz+3Swzihh1hVXAfW7eaDIthgb/4J5F4Q3M92t5KUFMOnqThworzENNDIpCSq
         r0kyfnrZN2FFe6E3ZtMIq5TNxd/X7uXpKbMRBR7cjBckBCYRV0YqhMvdKz3EQvSjf4GF
         yFsOfGduSZcUGE3adKFD0gFkUZThNGOhDRnqUcPLZO7SteCe63x13kJ5C45cAi3Lhme0
         41JsEYS8MS/ncNJ+OlHFFOoMvudHRI2b5iBTfbk1HfQxr8HHy3yyl6lIs/7wU7ljvb1i
         sAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tq3hfiETAEl8gLBKZCpQYGBV8xr2AqTj/TWb4+VXFg8=;
        b=saTWPM75hMa2PTHSPA8NWTaa7WFJEI2lB9SaOaHuuEDMVWe7lIizOuyMDn03jeLbOR
         rTuysgTj3x5cfyxTb6wEK6RQdHinqv9XUNm36BUcOYdv1JZgyKAKXF4PK4YxCn7PBb1L
         g++NnDXpPpuMoWe+pTKukdkZcEnxC2uCrv48G9sotWlLQo/foBFz1L8JjRn76fNkfpFW
         3XJ+5RsSlXqRvqX8DJGEioqxzKHbx07vWUt6XH9vro4rjDsBDot1nbARYjYkNMf4dMqD
         5OxuK0vgDSVckxO1kryZ1iDy+Rysm3BHvXi+WRoad9fNrLSBFCN0MKfTLY/TB8XGwrv2
         dCKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ31o3LACLUWh2fcIbMkbMmhimndb4XJc/Zorh7/zrgY9yWTXgG1
	Os973wYchUTfN4f/W7xEdlw=
X-Google-Smtp-Source: ADFU+vt4TFwZMO7DsRGSzMji3AdCqHulB7le1/VDUzX+PN9czICs7AhyPxXMmLIao4xU10K35qYdNQ==
X-Received: by 2002:aa7:d64a:: with SMTP id v10mr602584edr.324.1584373786515;
        Mon, 16 Mar 2020 08:49:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls2080116edb.3.gmail; Mon,
 16 Mar 2020 08:49:45 -0700 (PDT)
X-Received: by 2002:aa7:de13:: with SMTP id h19mr653923edv.52.1584373785783;
        Mon, 16 Mar 2020 08:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584373785; cv=none;
        d=google.com; s=arc-20160816;
        b=OBE3Yljc/0HEjJqb3W+CfsCQNTWqFD3blPOHWhpIFRpCGwqx4i67FdAIRUyvLF8zAO
         pX/Kth8n9o2h7i3DRe10vCjEFaRnaKBqKaVA7N0i1xsTO42FCAcsMN2YtPl+Um+jI1eP
         hiSwG5vGAS9k8rFvxj6H38yyG5i2n0KkOHInVaTWRhN583su7WRdHhVZtezmnAMeHXJw
         qcLqlJK0N0dm1BqxujPeLn53HhBm6Ypjs45akA8ezBMpVJvWO4t3RQCxvj3UDg/KURq6
         vaV9yDqbxqQp4Jj6ti8CntOBes9l6iWuFx61wO8DTpMy02rtQ3vwr1gOt2apL9FwwyJW
         S7GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LGbdA10hwKKx+TToqi8tgDGfGmrjH4FLi+QMT1+zRrU=;
        b=CXNXNaiTZs6Wa0hwPw+29u9aYVSRRFtTqdsG6QrQeKegO4tw0fQSjn3WnZhlUODZxo
         TeCOXgITmkqBfQRw3Llyi1UQtt05nw2Sk/pfsE2awK8/UYnhPuQeR+hQDXyGwFZhFNm1
         FE7//pWsy8OhQmME5RbVfRP0zQ5zg1Ryy3/cpjZAaksfFo1QM5sPwkPv/XkPlt6j6b6b
         SAkQmYixnv4bmdj0TtycR1j8PZ6yqAq6Oj3aFe9q5gZfGK16MgVfOLUULS4WQH7hMMlW
         AjFqLQHXfTjlD8UL6dpOBUDVby5aP5XRYcXQ21u57C+cVy7PlH1eLWnrEXJTviygoBL8
         d+Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si16602edb.2.2020.03.16.08.49.45
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 08:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9B171FB;
	Mon, 16 Mar 2020 08:49:44 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C67CB3F534;
	Mon, 16 Mar 2020 08:49:41 -0700 (PDT)
Date: Mon, 16 Mar 2020 15:49:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316154930.GG3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
 <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp>
 <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
 <20200316144346.GF3005@mbp>
 <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <427064ee-45df-233c-0281-69e3d62ba784@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Mar 16, 2020 at 03:33:30PM +0000, Vincenzo Frascino wrote:
> On 3/16/20 2:43 PM, Catalin Marinas wrote[...]
> >> To me does not seem optimized out. Which version of the compiler are you using?
> > 
> > I misread the #ifdef'ery in asm/processor.h. So with 4K pages,
> > TASK_SIZE_32 is (1UL<<32)-PAGE_SIZE. However, with 64K pages _and_
> > CONFIG_KUSER_HELPERS, TASK_SIZE_32 is 1UL<<32 and the check is removed
> > by the compiler.
> > 
> > With the 4K build, __vdso_clock_gettime starts as:
> > 
> > 00000194 <__vdso_clock_gettime>:
> >  194:   f511 5f80       cmn.w   r1, #4096       ; 0x1000
> >  198:   d214            bcs.n   1c4 <__vdso_clock_gettime+0x30>
> >  19a:   b5b0            push    {r4, r5, r7, lr}
> >  ...
> >  1c4:   f06f 000d       mvn.w   r0, #13
> >  1c8:   4770            bx      lr
> > 
> > With 64K pages:
> > 
> > 00000194 <__vdso_clock_gettime>:
> >  194:   b5b0            push    {r4, r5, r7, lr}
> >  ...
> >  1be:   bdb0            pop     {r4, r5, r7, pc}
> > 
> > I haven't tried but it's likely that the vdsotest fails with 64K pages
> > and compat enabled (requires EXPERT).
> 
> This makes more sense. Thanks for the clarification.
> 
> I agree on the behavior of 64K pages and I think as well that the
> "compatibility" issue is still there. However as you correctly stated in your
> first email arm32 never supported 16K or 64K pages, hence I think we should not
> be concerned about compatibility in this cases.

My point is that even with 4K pages it's not really compatibility. The
test uses UINTPTR_MAX but on arm32 it would also fail with 0xc0000000.
On arm64 compat, however, this value would pass just fine.

> To make it more explicit we could make COMPAT_VDSO on arm64 depend on
> ARM64_4K_PAGES. What do you think?

No, I don't see why we should add this limitation.

> >> Please find below the list of errors for clock_gettime (similar for the other):
> >>
> >> passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
> >> clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered
> > 
> > Ah, so it uses UINTPTR_MAX in the test. Fair enough but I don't think
> > the arm64 check is entirely useful. On arm32, the check was meant to
> > return -EFAULT for addresses beyond TASK_SIZE that may enter into the
> > kernel or module space. On arm64 compat, the kernel space is well above
> > the reach of the 32-bit code.
> > 
> > If you want to preserve some compatibility for this specific test, what
> > about checking for wrapping around 0, I think it would make more sense.
> > Something like:
> > 
> > 	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
> 
> Ok, sounds good to me. But it is something that this patch series inherited,
> hence I would prefer to send a separate patch that introduces what you are
> proposing and removes TASK_SIZE_32 from the headers. How does it sound?

I'd rather avoid moving TASK_SIZE_32 unnecessarily. Just add a
preparatory patch to your series for arm64 compat vdso and follow with
the rest without moving TASK_SIZE_32 around.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316154930.GG3005%40mbp.
