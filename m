Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBWMGVPZAKGQEVKOHHXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 02027161832
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 17:46:19 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id c16sf15121461ybi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 08:46:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581957978; cv=pass;
        d=google.com; s=arc-20160816;
        b=zuEYD0zHEUwb40yFOyqEoouzZWEUh2UbyGyqLydZJsBQBbbSyApgaYvBo2C7plMoK2
         mIMowI3DTuSI6h634h2IIiASkap9+j+8CWeLu1cr8BUps96I5SsSfav+aAxh1UgqqkRY
         FsFXB4VCeNwa8HeOfnCqqJjnhblKumX5iZiDCPUDaFXQljDcnadFaXdSZnJjkqM+a+tn
         4BARIDC3MiYxFJ2BFJha5w/48rmxTWmvDdzUiSsgxu7Jme5hAo51Y5tzt9mSV5e3rK0V
         5S54LTZbn80MlqQNh6foC3VXo58unrPcrwqr7sdaxZ4hR742b5ixrTvR0HjYzSI4YZIs
         fKcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=U1r5o/JViv+pv+OIkIcuWC3AcPc/4isHIiMPTP7RENo=;
        b=LZ5/WSa5ybMMkxegajQYgIWqpIdPLjCja+FYUQZrOKs/4Lf70Mo2bFl8iGFdzwdJCh
         yvgwAb5SCiAp/MIzaGGRXLdBWy2sDEvpLMO0DlqDPTJDyFe41Nq7Z9rTGs1ZjsZFjOHn
         vlgJe6yIHqiU69Tt1vjB1lrHMfhCge0xjv5msZv9BD38LJNJL6stEWfT+t2qMYj24mTs
         0ewCg+wqJDPO/T/hNjXBGq5sRwls0FA0TZ7yHvP8J8jYzsYnQK1UzH4TCxiVo3hSQR+/
         TBQ+GawmVguc5Uitp0K0Nnp9G7jP959pa8xqyysyP8UqUW4lJnUIouxalPRLD4ke9VXp
         rIGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XKRFlaKp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U1r5o/JViv+pv+OIkIcuWC3AcPc/4isHIiMPTP7RENo=;
        b=K/RmAsXT23MlJ607en9Vm61VYxeeXZ98pO/bigxjeExIYiSGDEAWxd5aYCSPuld6r2
         488N1iQX9SJ9f/jiBsrtOipk1o4Vdojxj8pwQZz3MzLNPFRL+N7kuamDEiqGu7LQ/kgJ
         UflhOCsAbh5ny9QJiEQBlt3ZPqfUSZSCpHVYJJvFUcQrjZ2hHg/AHoWHnnqX30u2TbVo
         xQGcE0ydCmrDiA0ZW5PfSIwxCf8uGXG3StI1vf1iSQuIhg1XV0oomYxrWqD3aRIzwmt1
         U4iEnEZvOu0ErnYd8JQ6vcOuLCQgQyF7LqefdkT2jOzvjG/S7iZ13hjyIxsmPE+m8HEp
         WEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U1r5o/JViv+pv+OIkIcuWC3AcPc/4isHIiMPTP7RENo=;
        b=Gi2JGBl4Pe2x9T8wjK9oWi0jwELGIW++dwyDWx3s5Uh/FuUkNZsS4T2CTKzzrp3dL9
         ZJhG6aqEwawBHfl//CWzSBf4hzAW8r0263CQC1AuXDhxW7yCp+oldrWDX0Knt4IrpEin
         lLoHXXDmylH6MKHNyM9YyFzB2rt/7oNHrUetF8HB+gB8965WG0VDFwsqxd5GMxJ8M4vw
         V3PG5lYZD7tHxvfJYxyN5Dm39xbCu3DmrfRb3uA9IpWZhrvvSZMNeiv8c9VVaCjpYaEi
         wYl3ueXG2ayy4juQRexLt3KKWEEWp+TJJAa/2PSAEgngZmXbSITpoQWQ5vmti974HCjr
         7nhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7FANWbZ50+cvtbqBHGkr3nyByCv3KjSMJgVTiKZnt0cVill99
	/LVn0vC5i79aLuA+MBr+5Xs=
X-Google-Smtp-Source: APXvYqwP5QwqvJU/M4a2CkSjSJJS1ZYu9jtBtLWjXX7PlgXu4s8UIXJxJKDYtxase3nbm3DxxzB28A==
X-Received: by 2002:a25:d886:: with SMTP id p128mr16675870ybg.457.1581957977762;
        Mon, 17 Feb 2020 08:46:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa4e:: with SMTP id s72ls2326939ybi.3.gmail; Mon, 17 Feb
 2020 08:46:17 -0800 (PST)
X-Received: by 2002:a25:c64f:: with SMTP id k76mr16721592ybf.271.1581957977383;
        Mon, 17 Feb 2020 08:46:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581957977; cv=none;
        d=google.com; s=arc-20160816;
        b=ytG3/IFzk36hwzk2GJdi01BGsHKiT2IEbGQZ7/8fCovPPQp6iGqqjHVF92CUlFBdHd
         Ujm3fMALjXRpMLQiMa7WGJjNsSP7Dl+szmDHQiY1w6guivtsLmxwEXShJWnAOUFmbGCu
         X21mo8L3PifkahMmc7L7I+SEeNx6kx4Lf/GrT1iRy52HJrxsvkBxo4Stf4XrNrhLLjOT
         AGjtOh+yVITJWyAe38jRgxqPrRsNGRxfC3h3F66BUJVtuUqbgaGe9dYNyxGfeZUGs4yE
         +LX7uTaKQ5I7DKcEa9WSR0xnJ6jPrSO6BrXPSeGE10xE3TACNLnY/9J2GZfv2iEQpGeG
         /z6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t2fzrlpfDLIswA88r1aEj0D0wBHSiddPI62uLlnPVXs=;
        b=nobE6M0rTHOAArV35ocBPiB3Tlc7LUq4TikKBMrAhWXIVUuOrRTx4ci4pbEhIxygdX
         qgTuPpuhJ2VEvom1NpngDLl5HjNQ3MKwU1El2o4UA1ocmfO+uk5zvQx/I6ih5/si7N7F
         la8/hC9Z5h6y5TLdVEVjv7jbY0NDFXQm7eUMADWvjgdxV1KO8lIMcIZnZTfnowtKL6x6
         l/VrV/rnoX5WZngJWlply3WmN/tTfb7Qn4ej7Wb9MeR9euDuvYG6HLWkCJ7ieWHLVeBS
         g+BboD1/ChA6ZdzDFAKs1pKzIHUuNg1foMyD9DNu7XR1v0IqYcQlgSgU5x5rV5Ci9Oyj
         LDeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XKRFlaKp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s2si48409ybc.0.2020.02.17.08.46.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 08:46:17 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5D1C214D8;
	Mon, 17 Feb 2020 16:46:12 +0000 (UTC)
Date: Mon, 17 Feb 2020 16:46:09 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	linux-arch@vger.kernel.org, ndesaulniers@google.com,
	0x7f454c46@gmail.com, avagin@openvz.org, arnd@arndb.de,
	sboyd@kernel.org, catalin.marinas@arm.com, x86@kernel.org,
	will.deacon@arm.com, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	paul.burton@mips.com, mingo@redhat.com, bp@alien8.de,
	luto@kernel.org, linux@armlinux.org.uk, tglx@linutronix.de,
	salyzyn@android.com, pcc@google.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200217164608.GA2708@willie-the-truck>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com>
 <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
 <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XKRFlaKp;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Feb 17, 2020 at 12:26:16PM +0000, Vincenzo Frascino wrote:
> On 13/02/2020 18:44, Nathan Chancellor wrote:
> > On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> >> Enable Clang Compilation for the vdso32 library.
> 
> [...]
> 
> >> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> > 
> > Well this is unfortunate :/
> > 
> > It looks like adding the --target flag to VDSO_LDFLAGS allows
> > clang to link the vDSO just fine although it does warn that -nostdinc
> > is unused:
> > 
> > clang-11: warning: argument unused during compilation: '-nostdinc'
> > [-Wunused-command-line-argument]
> >
> 
> This is why ended up in this "unfortunate" situation :) I wanted to avoid the
> warning.
> 
> > It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
> > vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
> > but I get that this Makefile is its own beast :) at the very least, I
> > think that the --target flag should be added to VDSO_LDFLAGS so that gcc
> > is not a requirement for this but I am curious if you tried that already
> > and noticed any issues with it.
> > 
> 
> --target is my preferred way as well, I can try to play another little bit with
> the flags and see what I can come up with in the next version.

Yes, please. I'd even prefer the warning rather than silently assuming that
a cross gcc is kicking around on the path.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200217164608.GA2708%40willie-the-truck.
