Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBGWO2CAQMGQEIGJTHPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA413221C2
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 22:50:19 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id h126sf6937738qkd.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 13:50:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614030619; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixNX/0AEZI7ONDSv4LBWZYup49qsm2XTe7YIflS+KrF7A33nAE5X7s5hXzz9vwpvv1
         9E8HCXjymiXUgvqpIt73wsjrQarpHVBLP3Kbi0wJiS6uUSlzNFiGlNo7Z7GHkWcBLOIC
         jAU3S1j+tc+FAIYnv3CwfLk5Ys/lSmVIx+YM1FQLpAiVi1AmV1t/jx3wig26BiU5btW6
         7qcKz+X7V4UpxPKRB4Crp4hZcua5zSweLbaYc5RQ1pwTt/ZtV9Spmtq+BletTn2cOZ5U
         fUbSmpkH7hZeEnmCsBCMej2JMhnX45n1iFMiEGpbACVG2xJICFzdSCKs07d+qFwafcS4
         cAig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8EVrsr7DA/K3uowT0TvjSHQl7wCIphtYcIQ6JD6xvQY=;
        b=b8aKgiBuvEjbTWil3BzN/fhKVvlGQTdCIk8hNS/qSQIQ9rD6Kruft1ftmm9+xcTDv3
         fcCRLxgcKeAOFQH8juqPdBPmV4g+fEmagb6p+PpOHV5dY47LUNravy5eAIbHOdJFGf5w
         VoNP/tw6whBxCRxASAmvnf5g80FrIAYB32LtNNSnsHU3h0hzuk/fNUmyoE7lTvW2ZRzL
         cEta13qULelsU2kj48Eqqy1zgdt+JA6aPeqkNS4k9WqsZF1MKkNQC4/C66mNy7QdaVHL
         E7Lu2YgsBacrSvs2LbmENU7zmridKATM1Bnk3pIPWVPLcm5FMgYQbVUVlK27Iw4MuWOr
         uegQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oPaglzkj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8EVrsr7DA/K3uowT0TvjSHQl7wCIphtYcIQ6JD6xvQY=;
        b=qaZgFBPgJ2aNsqTTXDFAQvK1kQVVlgPBC2i1ECl8ZVxMg/2FNH7PY8OEtZPfZ1Ct8t
         Caefw/tqCWarKDksZKbmcpEiEyJ5ObyrHn3nwIK9oWNShvv9CG64iq31OGBaDmUw+uar
         +9c9VsCGTXe8hlh3Dvq7OPO/psvgXsb9VPp67R4qREswJcs/Pi3orgj2vxerXCx62Fcm
         0cyguryft/1DGBDujd+9ma4OToUDaLntPqKBBDbg0DVrzlM2Xr93yHUkLHLLmxq77TJr
         wV/lcnm/nKwvmLqtNoC6r51fNbxGYPqv+/xW4WUePqsbX5da6KgbUKTpkS1XapO+t9IZ
         FONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8EVrsr7DA/K3uowT0TvjSHQl7wCIphtYcIQ6JD6xvQY=;
        b=ck7pkKaANaUqfQVnMMnktPl9alVJ8ueaJh0wh3x01Kewl9QqqmARiFJAj1KOeGYHQo
         OskJIIVCMOB6eao7nPEg0RtuTaO3V0P5w1QJjI2jN9MSvnX40tjU2QGWAQKbvVqnjxwL
         mCAZqLNdgILEf33Gan5g5YX235r7/1X1fIVMcgYcz5wkeQFWdk7IjGWVnrkCFCcWehk/
         QMNPzAnaCfJg9cEVjNAyzRPwNTKMckQWZi0yupe5rj8bfEeU27QRGTO7Phr9iIcwFCqZ
         hW3dpNjAq0blyetRNf9Lzl93250U4BBDPPRR6WUJA7xdgeyXT5hQlelrcZMMVt8t+pAB
         LSNA==
X-Gm-Message-State: AOAM531JHsHuaZM+aQreWxBiRfaUZ+CE5OqRQlP9dfyA24ftOrg0JMxJ
	LRdVE3NMjh2puWggHBXkUiE=
X-Google-Smtp-Source: ABdhPJy0VQ4wVXz/ZxX37X6VJCrocfEh77EsEQvRktjseT95QmlIXia92FePGFzC1PiLHhcdw/er4Q==
X-Received: by 2002:ac8:75cb:: with SMTP id z11mr21641806qtq.153.1614030618803;
        Mon, 22 Feb 2021 13:50:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1674:: with SMTP id d20ls9275040qko.0.gmail; Mon,
 22 Feb 2021 13:50:18 -0800 (PST)
X-Received: by 2002:ae9:ec17:: with SMTP id h23mr22339298qkg.193.1614030618471;
        Mon, 22 Feb 2021 13:50:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614030618; cv=none;
        d=google.com; s=arc-20160816;
        b=Im78fcabmRlv00hiL4uHNEKeuAoy/yLlrEe/O1pSAd4SKJ5Ju+PEPqVYXdQymnUEyb
         thTlUUM9+luqKD6IHVy0eKXfg/bMvhYabF3hJ4rpzVRglwYpYgkLhpOYQqzzTePxDQT7
         vIO6S7fR2EErbBOUTmo73/JQ1bifUvxCZQENtQMXVEu5lLLsWaB0b1k8jsLCkHE0dhyN
         W6YITSeAbw7TvFnMuJmTtrfJkm0VFdqrWvZvyuYNmoCIBakFr/boh5nhKrrTCtmb52Ta
         j7Is8F3Dv2CZAbf2dbq6pkilzf3qjPVJ1CcitBam3QWgV9utpJlCoD+i64izLCRKFPMf
         Zx2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5XvA1Gvev4npN0zTNKBUEQYu6pllkjUp8fGvFiKGsaw=;
        b=iV2RBop/LKPADaISkgswQ9S2A7sJpnbLl/76irNPOQbRSS0CDJvZIVsC+BIuGxJ3QS
         KD0T2R+usrkG8XQitkxQkl8NGPIFYc8Et61HX/kLqbmUgXvzjnbwSa3FJAQnXxFV3RMe
         UwupS8fZhUeKLE46KSk5VfCT9w0qkeL3wIaJwinlWD9811JWEKmU3MIvK68+K1aJOFFY
         Wi0DK7VNJDwM9N6zNXwARW5S/J1ajmOIQ06odsT+klvovj/CaCkRWP9Rkk4hhZD7MrPc
         /mbDsrCBQXSO8Wsjd0jrlTFzIou5VmxvfuZ8smrpOAmALK6WRxmJEAnZ8J53JOag491t
         EtNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oPaglzkj;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id p21si1287873qkh.6.2021.02.22.13.50.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 13:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Received: by mail-ot1-x334.google.com with SMTP id s6so13554825otk.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 13:50:18 -0800 (PST)
X-Received: by 2002:a05:6830:1def:: with SMTP id b15mr18107040otj.111.1614030617845;
 Mon, 22 Feb 2021 13:50:17 -0800 (PST)
MIME-Version: 1.0
References: <20210219201852.3213914-1-jiancai@google.com> <20210219230841.875875-1-jiancai@google.com>
 <20210222115816.GA8605@willie-the-truck>
In-Reply-To: <20210222115816.GA8605@willie-the-truck>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Feb 2021 13:50:06 -0800
Message-ID: <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, David Laight <David.Laight@aculab.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ingo Molnar <mingo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Marc Zyngier <maz@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	David Brazdil <dbrazdil@google.com>, James Morse <james.morse@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oPaglzkj;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::334
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Please see my comments inlined below.

Thanks,
Jian

On Mon, Feb 22, 2021 at 3:58 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Feb 19, 2021 at 03:08:13PM -0800, Jian Cai wrote:
> > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > -mharden-sls=all, which mitigates the straight-line speculation
> > vulnerability, speculative execution of the instruction following some
> > unconditional jumps. Notice -mharden-sls= has other options as below,
> > and this config turns on the strongest option.
> >
> > all: enable all mitigations against Straight Line Speculation that are implemented.
> > none: disable all mitigations against Straight Line Speculation.
> > retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> > blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> >
> > Links:
> > https://reviews.llvm.org/D93221
> > https://reviews.llvm.org/D81404
> > https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> > https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> >
> > Suggested-by: Manoj Gupta <manojgupta@google.com>
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> > Suggested-by: David Laight <David.Laight@aculab.com>
> > Suggested-by: Will Deacon <will@kernel.org>
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Jian Cai <jiancai@google.com>
> > ---
>
> Please can you reply to my previous questions?
>
> https://lore.kernel.org/linux-arm-kernel/20210217094859.GA3706@willie-the-truck/
>
> (apologies if you did, but I don't see them in the archive or my inbox)

I should have clarified the suggested-by tag was in regard to the
Kconfig text change. Regarding your earlier questions, please see my
comments below.

> So I think that either we enable this unconditionally, or we don't enable it
> at all (and people can hack their CFLAGS themselves if they want to).

Not sure if this answers your question but this config should provide
a way for people to turn on the mitigation at their own risk.

> It would be helpful for one of the Arm folks to chime in, as I'm yet to see any
> evidence that this is actually exploitable. Is it any worse that Spectre-v1,
> where we _don't_ have a compiler mitigation?

> Finally, do we have to worry about our assembly code?

I am not sure if there are any plans to protect assembly code and I
will leave it to the Arm folks since they know a whole lot better. But
even without that part, we should still have better protection,
especially when overhead does not look too bad: I did some preliminary
experiments on ChromeOS, code size of vmlinux increased 3%, and there
were no noticeable changes to run-time performance of the benchmarks I
used.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJVGJSn67VU24wPDdsOVeHhGe%2BKO5ekOCusano%3Dbhn1Mg%40mail.gmail.com.
