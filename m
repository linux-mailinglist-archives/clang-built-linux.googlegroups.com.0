Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB56PQ6AAMGQE2FAODII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 755892F850C
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:07:36 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id 202sf3437171lfk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:07:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610737656; cv=pass;
        d=google.com; s=arc-20160816;
        b=KKoBBWIHH1nwfrTj9tqGeG2wMbeUhfNxAfxRHibVdijohStgz0dQyPQz/pfd3ygEF2
         D8o0uNluvRFf3ljefdFiW+MTqQkHKfWzb5oSUF8zqGR7D4H626xNbcvO5riB6+CyO8I8
         PJP2KW5MJClZ3jWoR06qJoAF+LZVw4MYaZQg/0w1MuftV4bj5KaCV0qXfFjp5+++wqri
         dm+s90DrmoDp5zuYbe2Wq4Mzn6zwnfiK7hZoyWcKRbxomNPmpm+kR/OkODBliCbfJ/9J
         nDoHeArt7jXBnu2aqakruKq32OlHN0kCd4lECKpUqqTFBfyCKRyNMVY9rgFmN7cpfAgm
         HHXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=71oEBf+6SAZXI2pteCtInUHbaCRysEdvYUoKh8j8uuM=;
        b=pHChHgYHENwhTD+oB8RpnLftDhFWrcez4oquhWGYUbdaE42/YJ5hWO1kfMb2s9KEih
         IiidsHg99Zm0WuBDEYeof6OqcT+mildpli3zXsgV/LoAQA+egCgEDBagNTOSMSAWHPs7
         BU9t24k1VWdzPqgRD5Hru3VUAY1MlT9wNO40fY8eIFapG/3mdlYv1dIIdAywRd6ICuvY
         4cHf7Yf96SBpm/aHb4+/QknHSogpRtd2o7RhR/bCGlhYSWOjMO++px3fT/ckjgEw262X
         ahVEjFhEYLy5kZRPCzCj56+EgvznL8yh18cdGajHR1VFtTa0ZrCbQ55xSqZ2bFR0Cy2e
         wxiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=kQSTl2hc;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71oEBf+6SAZXI2pteCtInUHbaCRysEdvYUoKh8j8uuM=;
        b=epiROT8ybrCK+DnW1dGzCbYC8Qj6hsbyaSRbbVx9MFw05ndCkwLEdFDTFmywuprebc
         bNv7VZvuNF2tLtoMMKYEIzil00zI0E8qOoKKb1HyIHOgb1quk0NiM4XMvKytKronWgVo
         h6W2BoCt2fR8Q+tbDygMg37DBkfN2DG/AjM7GRzfMFHXzVCnWiUpZJemVB1I7+vweBWA
         VZ001tFbKusVsLndLdPrGp4+ZoMjvvjyCvPa0IsPaFHCztwEQlcbUCvnmdfPP9+WEhLk
         xzDdim8awfI95N7aAlt8ADDhPfKyvl9QVep+t6nlPNpa/WR8C94GWbFORd5XLR2PgQLu
         qOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71oEBf+6SAZXI2pteCtInUHbaCRysEdvYUoKh8j8uuM=;
        b=iJg5noYZAMnri0jCYhHnqoEDky4odohAMUucD6L631zX6YIYxIMtwfl5q2k/ggEw0a
         Wj90+cG6tCQFFKhGvYkF9YvKUl3LsHpylNjF6s6PKOBP5hrNMY8mLjBZ7edElTO+/YG/
         eAxfuHAgvDv1H6VfO2cQDigI9/mNYzwAIk1i7VXm0byhgBxEQ8Sic482ekHF8CHhJkya
         iNNT0fPnQ+9fxi4tw9ngKGszAFXgPk5mU4NjbfmA4lHd5MXNyYBpcFqQffcaUlbpyrh4
         7K7El8B+woA+/zhaaaeBJoLbKBccqo0a4x5D/vDCeLrjLo29OH5JNRVtBm2SCP8xkQeF
         MmIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c+CzWuI2FE38BZmTT1+3AmAmtjQto5NTF2dwmKv80o/lGo6Ue
	sHUxaIFSbCM8yU5Uif8wS1Y=
X-Google-Smtp-Source: ABdhPJywGZuC4kyr5eiYgYfSMDTwlzrXrSp8w9G6bComlw3sichma6Vb65nd+JTo1dwLAOT9pf+FMw==
X-Received: by 2002:a2e:a404:: with SMTP id p4mr5620264ljn.260.1610737656060;
        Fri, 15 Jan 2021 11:07:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls1729129ljg.11.gmail; Fri, 15
 Jan 2021 11:07:35 -0800 (PST)
X-Received: by 2002:a05:651c:3c5:: with SMTP id f5mr6150930ljp.496.1610737655082;
        Fri, 15 Jan 2021 11:07:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610737655; cv=none;
        d=google.com; s=arc-20160816;
        b=w4E6WwdTD0O5yl+SPC5HYiMRCO16QENWBb384AhTGIhCf8aHBePG4+yHEizLcG7SZF
         BQEnNK5VOHxV/rvSFpPqSSPRAjKJKnmJuazdpnb2Zfzum/vw1VJlR/f4qRK8rLG+XX5U
         nxmumdNFn8T6XT1MZB1L/G3UMPXZQEN+xXVMUZgR3r25CSBHpPFqMkQivOF05fZ5kTlC
         DMRFi3Vt7pLNGVXbDNVZTohGlF4hlZdohgRlyLr3QeTTsL7oaRdhmN+hu5KFbkj0zoHB
         kArw73Cm8gAooD09sLlVoNFww4YHh8UPMkS0mMEZYDk1KwbApkdaN6RX5O8pG+aRfn7P
         UdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IL2Li+VoVRz1ZLH8TsjVaWowu41cqfDQQ4xb4rgDPpA=;
        b=nid0K+ZPxsvSesSysPBYH4Tfb0KEpy6nx9UM16nRZgy2ekgKg7XQDhcLgphrx8zkNt
         KsZS14a/a1x+l2N7RYAl8Qo+sOGqYdXhWwlhbCgkhFlKUN55F7yxoXcOiwW7XsOLaYOk
         Pu2E3CGnMmuCWx5HYmNrx1HsPg5udTJTIRX+8/k2Igzf11IGt9qnGHwleHJjb5l9/Gop
         3xGIvtL/Uzv5uAY8cA/trlmkLat5W7Iy0oFLMPFAfk2SbkEbGobJeYjzAUevMIG7sc7Q
         oEfEC/WqIoJ9Zq4aO0tBu6eIyjblrT2Z2MHmds8j7K9Aa3/zljc8SDfOLjsn/ZzTeL5k
         h5Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=kQSTl2hc;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id q22si187780ljh.3.2021.01.15.11.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:07:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0acf007cb1195bb528937a.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:cf00:7cb1:195b:b528:937a])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 407601EC041D;
	Fri, 15 Jan 2021 20:07:34 +0100 (CET)
Date: Fri, 15 Jan 2021 20:07:29 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210115190729.GE9138@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115183203.GA1991122@ubuntu-m3-large-x86>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=kQSTl2hc;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
Content-Transfer-Encoding: quoted-printable
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

On Fri, Jan 15, 2021 at 11:32:03AM -0700, Nathan Chancellor wrote:
> I triggered it with CONFIG_UBSAN=3Dy + CONFIG_UBSAN_UNSIGNED_OVERFLOW=3Dy
> (it can be exposed with an allyesconfig/allmodconfig on mainline
> currently).

Yah, I can trigger with that, thanks.

But I'll be damned, check this out:

clang preprocesses to this:

 do { extern void __compiletime_assert_332(void) ; if (!(!(p4d_index((-68 *=
 ((1UL) << 30))) !=3D p4d_index((0xffffffffff000000UL))))) __compiletime_as=
sert_332(); } while (0);

The resulting asm is:

.LBB1_32:
        movabsq $-73014444032, %r13     # imm =3D 0xFFFFFFEF00000000
        testb   $1, %al
        jne     .LBB1_33
.LBB1_34:
        xorl    %r14d, %ebx
        testl   $33554431, %ebx         # imm =3D 0x1FFFFFF
        je      .LBB1_36
# %bb.35:
        callq   __compiletime_assert_332

so the undefined symbol is there, leading to:

ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappin=
gs':
/home/boris/kernel/linux/arch/x86/platform/efi/efi_64.c:140: undefined refe=
rence to `__compiletime_assert_332'

Now look at gcc:

It preprocesses to:

 do { extern void __compiletime_assert_332(void) __attribute__((__error__("=
BUILD_BUG_ON failed: " "p4d_index(EFI_VA_END) !=3D p4d_index(MODULES_END)")=
)); if (!(!(p4d_index((-68 * ((1UL) << 30))) !=3D p4d_index((0xffffffffff00=
0000UL))))) __compiletime_assert_332(); } while (0);


Resulting asm:

$ grep __compiletime_assert_332  arch/x86/platform/efi/efi_64.s
$

That thing has been optimized away!

Which means, those build assertions are gone on gcc and they don't catch
diddly squat. I sure hope I'm missing something here...

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210115190729.GE9138%40zn.tnic.
