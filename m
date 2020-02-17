Return-Path: <clang-built-linux+bncBDYNJBOFRECBBRFMVTZAKGQEHEG3HZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E641161D72
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 23:40:05 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id l1sf9767071wrt.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 14:40:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581979205; cv=pass;
        d=google.com; s=arc-20160816;
        b=YIWPU8oAULv3phduVy73hblK5THJzZcJ5MIts0DUKKfMkGuis7LlHShZyCDq+BP16P
         YXYu0sXValsY+XjqC37Y6JThxg72i2eq/ZzvWxWGykN20whySOivxGzPgoaD38CZWctM
         WQNGZ+7S9DMzvTq94p0DFEdeLdF0UX/nZHvAALBjWa/VYN2ja8ZIsTtI77jQ6nH5m3l3
         DHdsWu1DuuNpFTNY12xyZ5/1nKd4udogbe65KkBmGJYZvGnb6VippFM0LGpXe1DjvVZ/
         zZQWjXm6fMNkDMEiZi7jsTewVzAK7sEcZjNHB4aAk9Mz5HkiIuA4T089UBuFqNt0v1ok
         Rxzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lIONXV/msXl2N6KE3wbc0c3BkQYA5cuBIcIaFgS25bk=;
        b=eq8ws+PlWcRPbY6vs6PhDN4WYd/blFXd0UNQyrNf7f3c7zlQpj8hMq0nAXdk4jKVMV
         B4sm1v3MZYBk5e+l3VMFiq1CbzAFsJmAWCKNIogAG3XUmVmkxKDaMQycawRc88uakzUH
         1VScFP3aTPQKX9iysv3uXxRdP0tlhuam8d5Gst6MEHGzQdsZNOisRHqldZn9M7nPLuGp
         +FcMeZr4uNUmAr8p4yP8OGMcDMLzDxfJh9c/7PqPPlE8zQxLEeL++hqZLh+QxzfTK7Z0
         IRogWAK0fVuq5BXeQNAy6AhRdxyQ6NpUj28KKo7o7Sq7ndOoOQSv5a87NLzM1LPjb/Nx
         WzoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kxzPl+66;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIONXV/msXl2N6KE3wbc0c3BkQYA5cuBIcIaFgS25bk=;
        b=UxQAVPFsRLl85OSt5oybPw4o1wuEDTaBzRa/Jac5hs3ptUV1962IZBC8JZmCLHOzPE
         xWxE65czbqRzeOiafUZngYosAjmyAW/wfuSIJuoc+k1WqVXnpTOiNG+ujVmGVXhz9Fxe
         +6z4FLDfxR/Lc3XPRkSyeL1/hglYJqO3o0GBHYXmc63ayE/igsBf0C5gVgWb2eDNVy0v
         HSD+mGt+4JSolJ5ozdJfz88i571nJNeGkL6C2ajhQAboQbjmGTc5KFtKhSKEG5Arb0Zw
         lpX2aiY3/bzoPUF9T4J8lIbRv8N2iolmGi4dX24EshjbpGJY42F3Es+uozCcJtIxbba8
         Ms+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIONXV/msXl2N6KE3wbc0c3BkQYA5cuBIcIaFgS25bk=;
        b=Br+Ro3INoaM+ICAIZYewKexxJk6IpeXlJgzVCGPOt0phcgqeVryMDciKlI3fXs/8iP
         wqCSQ2fWO3hovd1cy4fkUoPXKfCUmDzreW0GKNMuQu0h79n50/AIzVHGqUx6CQb0/bO5
         /F29ncXvjE8nLVlDDgbwoXPcLPxoWZLu2lTf44/dBUCRpbPkEJkNHO/wXeS32l3DVt9I
         XELmu7JtQemUtslFAODs5f3WmQdjLkL01IE27lBI3fM5egKWbbh2ypoMmGJLXb/VCSMC
         iigw/3YARwdIv1y6jfzD79q1AYrcRcCp1Bc05z81oxjnebNlnNDLOPYpIjxYIYc2CEFS
         2hFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX7AEJO2emIBYtzS7YOTSmuJU8vTn2UKTRqm2bWsAsbOrJ8NFmF
	NVBkZQ8RXyLAfXLVNEJcGMU=
X-Google-Smtp-Source: APXvYqxGSNhLXUDIdaJbG9rWr5/Ko4l9fM/lbxl7XcPz/WUeTwdejdWCef/2i40wX7fyyb9c1w4euQ==
X-Received: by 2002:adf:e448:: with SMTP id t8mr24115557wrm.224.1581979204920;
        Mon, 17 Feb 2020 14:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea84:: with SMTP id s4ls6550207wrm.11.gmail; Mon, 17 Feb
 2020 14:40:04 -0800 (PST)
X-Received: by 2002:a5d:6390:: with SMTP id p16mr25363630wru.170.1581979204459;
        Mon, 17 Feb 2020 14:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581979204; cv=none;
        d=google.com; s=arc-20160816;
        b=rDy1QqIubPbs3EXa5c600o+RWrHseBNeyc8T1LB/LXJe9yoX3a6EEBbSN8ZaWtzV39
         B8aRXAYC91IQ0Gds3FyCvgRYvh/h4TCDdbZ3qYdCP+8PFMkn07tJ3zoTxXSbhMk0Mf1u
         x+ch5g4TFR+CS6Siq+fk0hpCY1s3lX8hDPpF5fxKuGiiq03C6f4Aw/4c5d/iTf0yNKAt
         1Bgz8zJeRFBPUS15w72KhQC/NkBjsdrNppKe2hxLY3Iw/Y4FPMH/YWQwfpZ9iuCfu/hg
         pzzm1TKOF6TfkD+5L7AZOCH4/YalxuY86q/AzqbcycgRDUizktpusJKzw1xaJfwYH6Cd
         dPCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=76Z6CK20GgcJDSbhtaVsIFc+JofKd4d7bU36INZrWq8=;
        b=MSvFlqbMsslrraj7seMWHq0G7dcOYTbiLTgy7zszH+I2QEEoT6ciInLesChpIdnYp/
         Mwf34rjtz2T9biBCOh+Cj/CJwXEdLm+bjOOtPrs87QDiWik6EbUZ4CJ6bUekIo67iy75
         lFJudbdOHpLQYfzFAXIiiV+egJRg81ipSSWnMZmDXNIOiNstdfe1VhnzXnlDe3ySsqmC
         i7BwXO1fcCxAPWMNoNCHbdph1F6jgYrSlQE0fymm8TraIXThzD/qBeHYMHcq7+iMGBnx
         8uUCAoUZPgXUkTaEmvlKkuzYvl+taZONiRM+O4eEMQBSoM00hhxl2PHUrrL6wI4Mq+aZ
         Mbsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kxzPl+66;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t131si27740wmb.1.2020.02.17.14.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 14:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id y11so21613322wrt.6
        for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 14:40:04 -0800 (PST)
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr24090235wrw.262.1581979204034;
 Mon, 17 Feb 2020 14:40:04 -0800 (PST)
MIME-Version: 1.0
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com> <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
 <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com> <20200217164608.GA2708@willie-the-truck>
In-Reply-To: <20200217164608.GA2708@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 17 Feb 2020 23:39:53 +0100
Message-ID: <CAKv+Gu8Qh495twz-3UQrFiKfPq-Kt_o+JrCNwEcdMedV2DqPEA@mail.gmail.com>
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
To: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	0x7f454c46@gmail.com, linux-mips@vger.kernel.org, 
	Thomas Gleixner <tglx@linutronix.de>, linux-arch <linux-arch@vger.kernel.org>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>, Borislav Petkov <bp@alien8.de>, 
	Andy Lutomirski <luto@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, pcc@google.com, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, avagin@openvz.org, 
	Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, salyzyn@android.com, 
	Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kxzPl+66;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 17 Feb 2020 at 17:46, Will Deacon <will@kernel.org> wrote:
>
> On Mon, Feb 17, 2020 at 12:26:16PM +0000, Vincenzo Frascino wrote:
> > On 13/02/2020 18:44, Nathan Chancellor wrote:
> > > On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> > >> Enable Clang Compilation for the vdso32 library.
> >
> > [...]
> >
> > >> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> > >
> > > Well this is unfortunate :/
> > >
> > > It looks like adding the --target flag to VDSO_LDFLAGS allows
> > > clang to link the vDSO just fine although it does warn that -nostdinc
> > > is unused:
> > >
> > > clang-11: warning: argument unused during compilation: '-nostdinc'
> > > [-Wunused-command-line-argument]
> > >
> >
> > This is why ended up in this "unfortunate" situation :) I wanted to avoid the
> > warning.
> >
> > > It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
> > > vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
> > > but I get that this Makefile is its own beast :) at the very least, I
> > > think that the --target flag should be added to VDSO_LDFLAGS so that gcc
> > > is not a requirement for this but I am curious if you tried that already
> > > and noticed any issues with it.
> > >
> >
> > --target is my preferred way as well, I can try to play another little bit with
> > the flags and see what I can come up with in the next version.
>
> Yes, please. I'd even prefer the warning rather than silently assuming that
> a cross gcc is kicking around on the path.
>

Doesn't Clang have -Qunused-arguments for that?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8Qh495twz-3UQrFiKfPq-Kt_o%2BJrCNwEcdMedV2DqPEA%40mail.gmail.com.
