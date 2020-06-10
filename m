Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBLUEQP3QKGQE2RP3ORA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D761F5306
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 13:21:22 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id o7sf1534354pjw.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 04:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591788080; cv=pass;
        d=google.com; s=arc-20160816;
        b=JjRp+vcG3i7I6hx733a8ld1DUmWigTCOefg6iAJF2Jza+w+wevVFLGgaOQXYFDky1b
         4uV2JO2G+2Z2ENNDA1SgW3l0mOQGLzNdbOeeqYg7CoPQvfwoG0r0dOQCCzzXlZpW19WP
         HyY6ls7UE2WoU3c+V0cv9Uc6M3O4dgdjhWGfJ/szCiS4kZHwMOe/ELFLCcwloj8GEs0Q
         Fu4NjNhLUdB/Vhp0/RWQmnd3+LPkXunjdgWRIL7Ykp/2cTK68A9PJrnWTKhXqO0SdaIS
         EkpDfkfX1QWuJNAsTnJnpVFw5vabOqN/TVANXwk8Ld5zy3OEQND2RnF0jlHwe1AmTqCh
         s0dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PMM4xxrzdf13N79maIef32sutLvi50FqF2JeK4Uvwvo=;
        b=aM16RawL1hT8FvdZfHuxqZJfFs1Fl9w87tLZKckypXYW4RZtdsuwuQyfv/5pq6zH6m
         bJ7/eS814HgE3s6FtWzJkYeSUq7nkQ4ltI6mHvacrTZizyQq+OQ/4SxhqdVoJ4G8ktak
         rfvmUUbi95MfSxG5FIbACidiFh46RWtWt56zYOJg8Y0TIw781Wlqk6IPf2xsAS5X6npL
         QzhZmVqIJz2RfdydSUoK5JopaT5GyrQRq4/JLNhqLcb1+v23ikvXDpq8S5uO5ibAQuP3
         iZ+uP0jajo2xuXEFXMXVBl2MWN/HLuBJUbYHVrXy4qQCcjIRyBuqxRzzbUamUfuZx5eC
         AaPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bth/F3nX";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMM4xxrzdf13N79maIef32sutLvi50FqF2JeK4Uvwvo=;
        b=cckVy42y7Dh2BITx6jH1Cg99NuGPdpR13sOkQFMfO0YjJlfqLKzbDPozv0mfLkxaew
         Dtsv08FfXTn6snJzDyQ6Nfg24cNg7T0nCTV+roZzBBOiR+5MT1qp3l6VdeLL+6Yq9mQe
         GykRqZ2XA5yD22lNqZENtET4KX6R3S/XnXToXF99yS4mVcOahQ+YuJB/T4IHcP6lmL2L
         Bz3MdvU2p6tv0cKXVK78zvJUFf7d7eySYIDDM0Dlcn8gryDmoqsOjYhmX+xxk209D947
         ZOdLPkF6yZxTI/zVVN1bj6KpjWAZ5kLgXpV3KYpDPM3koyBVlwObN1ovGfqVuezFickb
         RIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMM4xxrzdf13N79maIef32sutLvi50FqF2JeK4Uvwvo=;
        b=jFrrsdHpn1oyZh/6v2ibQV5cqiIcouC9+Oop6il7QnRaHDA8EV/nhCwvGWLKhimblG
         RSWD5hjY3kfhcWUiFWqOCY/mnai7yZW7gSOTgYGHj403VWKu7bqChmWgDbA5WN6oMW1q
         KJsUGbbI15/IL33H4Xz/07cZhhCkIGeeGDLFz0jeWvbv9/tdV7a8pB/aA3C37McIDumh
         syFP6OU/mGcPDUk98kebDDOOkM3mzmUPCIEHFhnC7DfXMLHOdTPFVhAFeNtuK+W6ZKOr
         o4Lil6ssL17zrXJGPJks8m7lff1fw6SVlEjO5qzwDPSxf0WYIgjHW2KUTWH9Rn1Ax5m1
         NdNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xt1TqWvyHtapT2umL0bV0azSSn8/DrXqQTU22kIt4UedlOtrV
	Lip+P65ZSTdMwLSDktTd9aM=
X-Google-Smtp-Source: ABdhPJzpNIErcAO+Kgl65MAKY2xy/CUqcGjo9qhhPCyU6N8xbkEkiqzECTH4YOuG2iiBjpmX7u7ZGg==
X-Received: by 2002:a17:90a:1308:: with SMTP id h8mr2777648pja.22.1591788078129;
        Wed, 10 Jun 2020 04:21:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd05:: with SMTP id p5ls5961204pls.1.gmail; Wed, 10
 Jun 2020 04:21:17 -0700 (PDT)
X-Received: by 2002:a17:90a:fd87:: with SMTP id cx7mr2535738pjb.62.1591788077727;
        Wed, 10 Jun 2020 04:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591788077; cv=none;
        d=google.com; s=arc-20160816;
        b=HTPfxvn2AgxepTme+WeS4auWyDNi/6KpfieYVUcUJnoP/lUSlXmx1BCC/NC8lmF8CN
         0pKMGPBvlnPavQjL/HbQB+e1f//k+o5BK6Ua8oDW1pow0MSix9I2zqRZT7VzzQoI7NAg
         I8G4OyuaAhfB9AnRveTVyTQquewoKWF7H8ofsBeX2qdEDvtvo0vRHJF/nNqVUCoVVOhm
         bOn5OQayvaZiuclEPxeLV7yyVK21UlBTpM1j10gJRFjA1VITqsoFewRSc07OpVxYBNIn
         /+8NoSqCN4njto8quDSM2N1kxPymrY/KAvhA7zYRykEZHJz4QcFuNHjSBWwJRiu5TKTL
         gA0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f8JeElqM2dmLJL0t0SvK0cOk1lGPXzGsc7iBERiCE1I=;
        b=ZVzwWsPJjuZzSHESbhR8SjAC0eLbIvMoR3mHKYTW6HiWdvJVHYG4qBxd8j6Ia0g3TH
         g0UCCY0SyqlsL97bNriYnKVDwDcDFPHYitrycewSVdBPfvRsKPWMAqKcKekgYReYJe3G
         WsEvBfOMUAJxzAGF5irpiFPWsvpHAGfLhSj7+de3Rh5HsAHcI0JCDtYK5xdkVm3uYj5j
         HjJyqE5g5pzIHDvZmCO6N3iNE7Z/yszP31bz6Uf0D99Xk2yxysb/vmHGrl8AtkVdlE4b
         4ZQROcaQephsANdnNTwf6mityfXhkLJTU+iZ56QmfsT+CL4pDJVe3VENJPW0dBWGH1Sp
         BMJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="bth/F3nX";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si257763pjw.0.2020.06.10.04.21.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 04:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BCA02078C;
	Wed, 10 Jun 2020 11:21:14 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Naohiro Aota <naohiro.aota@wdc.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Dave Martin <Dave.Martin@arm.com>,
	Stephen Boyd <swboyd@google.com>,
	clang-built-linux@googlegroups.com,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Date: Wed, 10 Jun 2020 12:21:09 +0100
Message-Id: <159178553820.37708.12308914886514191769.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608205711.109418-1-ndesaulniers@google.com>
References: <20200528072031.GA22156@willie-the-truck> <20200608205711.109418-1-ndesaulniers@google.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="bth/F3nX";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 8 Jun 2020 13:57:08 -0700, Nick Desaulniers wrote:
> Allow the compat vdso (32b) to be compiled as either THUMB2 (default) or
> ARM.
> 
> For THUMB2, the register r7 is reserved for the frame pointer, but
> code in arch/arm64/include/asm/vdso/compat_gettimeofday.h
> uses r7. Explicitly set -fomit-frame-pointer, since unwinding through
> interworked THUMB2 and ARM is unreliable anyways. See also how
> CONFIG_UNWINDER_FRAME_POINTER cannot be selected for
> CONFIG_THUMB2_KERNEL for ARCH=arm.
> 
> [...]

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
      https://git.kernel.org/arm64/c/625412c210fb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159178553820.37708.12308914886514191769.b4-ty%40kernel.org.
