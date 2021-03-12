Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEH5VSBAMGQEBKUO3KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F27D3389BE
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 11:12:34 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id u188sf14276675pfu.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 02:12:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615543953; cv=pass;
        d=google.com; s=arc-20160816;
        b=mhAEEqqwqxBH/fD/iA0XYlGCnOCCPpaRmqwMweVZSOb8CQRFirrlDd6rXsaWkMEcd4
         JG0KLD2WYGsOE6SkbTCDrSdC/0sZocPGO4dxDevucFMq6y51AkmM6AysgZINYFm1LFC8
         SxG2aIaRxACSgr5tb1ZrplR7b6rXlGNHmI3X5bEP0fWJlXPleN4ipOS/Eb0mF+CTE2RY
         3xwLue5sPWil4JoBqP9JHwscgx2982nq5dOHTDYC5efbwYu/cNs9BerOwVMm2X5ELDX/
         9riJ5lrGVOvgJNzpzzy4Dr2BxHZBO3riZzy0/uWL0tOWgLY7m3Pk0oXbaZJCPUkeKfax
         As5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=taEEzqhy+iliRBmpNMoX1xh9E9mOTqTWfqTDh5kO6w0=;
        b=duX0fSNTD7LLhkYefBPwLTz/6B9oUs7Y0s7u6znSw/E+XxJYLQK5E4ET2YTEsh9Yo1
         Q6xUleXhjnI+z16XNU7JEXllr+E7jwXjfDL69Anp5mobcspIRoyUBcWq6qWXnSeGa4/5
         VkjNWXpzltTK/M8gLonYGhygnj7XayINmdSsG71E+tUD+RAeK16B9ZrWucRQBoEWUTkO
         bOW5nfWoHtKVili+1mO5XVXBQMpjmgdI1EQtlrGdWEAK8zdH0QWI+e20Pn8UibLpx+0g
         MrHrewJxFDiBbURyXhP+F77jJ7rBrrklVZqHwGiw2amIee19MpAnLwMAf0qMSP83IKds
         6Mqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WtQGEfdH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=taEEzqhy+iliRBmpNMoX1xh9E9mOTqTWfqTDh5kO6w0=;
        b=XCgQR3GuK6ZVkiw/VCee0sdxwqQC+dYIdjJbYiQ7oP01+WRiOCKEGyBPlZ3jijoYE+
         7RLLyjSULCPXWPuxPmUCsaXyLFLmTVFeApahqcR0eGbJGFR9nF+pkxj2Tap9OKrVbLtZ
         85ti6fpg7Q+Gr+Ngd3dicClHerQFhOiyMv5TcB8wHjey9sjTUITjJtlyekluF4oKiQI9
         3gFEvjgH5Vywvp/SSB1fPqZ9mNeIf0uo78EVuICqKmzX7zCqgBngD/t2TWBMR22JMiha
         w17X/5GzQNiW5IMGesufpBVeRN/hrqEUGDsPNLuHmd6fpKg+AYJzTCq2TQ0OkqsfnXGg
         +Rfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=taEEzqhy+iliRBmpNMoX1xh9E9mOTqTWfqTDh5kO6w0=;
        b=UQNJdkhI7HkPnPNf1HcyHhuPRUE8W2u0+sXMjenaaA9lZEnl2HfjEunZeZGgPvJqXB
         DLegdrN3T2Zr8i0ajblhqWrm98tZFVqZkRuHZTWrmE2ce7g2LMn0vCe47m2+bgmWhVJJ
         GnxzpYoMJVVQ59Ixonrv0cuqXBv4Mi5QXgsbUdrSqmkInaNAom1wbA8zExflQQZnA5zG
         pEW0Prlen0ykzvXEzJqP7HQD0ZFR5A/A6+VTMmC0+vgq1E/df0VSdAsemRJHTjD7Pjox
         7sZsl3u5jY8b2aaEQ+Pb5IeLOYIqPZOyBx1xLN5ImBaXF3wcBkv6LQSeGmpAecH8Waya
         CjzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j7jwHVG+w1FTPUpUpz/i68vKsYHqKH7QH3liazMwhM359RP6I
	1Nllj5BdN4Di5rfsR3CNAo0=
X-Google-Smtp-Source: ABdhPJx97TrZ6Uc0I0MguACi6CQaNOJmHH5VvHr3GqQwq8V2/5cSRuHCU4Qapr6f/YmWS2sTvPLAWw==
X-Received: by 2002:a17:902:c14c:b029:e5:cd82:a0b with SMTP id 12-20020a170902c14cb02900e5cd820a0bmr12874370plj.34.1615543952739;
        Fri, 12 Mar 2021 02:12:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da86:: with SMTP id j6ls4782110plx.8.gmail; Fri, 12
 Mar 2021 02:12:29 -0800 (PST)
X-Received: by 2002:a17:90a:1642:: with SMTP id x2mr14143823pje.88.1615543949171;
        Fri, 12 Mar 2021 02:12:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615543949; cv=none;
        d=google.com; s=arc-20160816;
        b=YAgsHHDaMbIweJIpPph+ZBr540Yddxnz6iD9i0dbEi6qizYB69rgvdP3/weg8b9sWI
         UfPxfnRzkTetzbMmc0qtpK7LMB67t0TmP/idnR9FiTfriJ+udAAXXyS/gRPYpGBpwc44
         XywMDiOS/1zbpVRbQunHkiZn2lnuoO2eAPaMxOwFePw3kkBH7xKR+9Y8vQLLxwjWbX9D
         +BS2vvVa9MxMoI0ktdCZuUm/rJheD2rPrXL+unQ9p7QKD6iPVmLv5P5fk198O4YAtIa9
         IgRjIaX5Qk4xJi3/VkBqpy8EYwvantz05Cd3gFA+EcVbhiVsJLj+zfbeSV3kLkgkd0Ak
         geSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ddq/bT9HVfL8lj5Qw0hSyphC2bzoUiii03sDj0zZoh0=;
        b=VidB5J0RFg+MdgTCiHs6xr2sorwZs0+p7Bd3fHMTD1hHOD7+/6CV9DhJoP2YgDToAg
         5utLwHcpVU+y//2aKftUNZOTKlNXm/ecZM1wn/FKhQ078cLbFjAMn6Q/VdnsX+IOhLbS
         MDozl0bwEGSp7mBvZnDdESBDlZVruxdSbCnAqBqFKnS4ulW/FGyW6FYlgY2SpG/UKHHo
         0Pg5W4942mIKu2xSGFe3Q/3XQy3+kU7e+NGFscXX5ORoSGPy9qDqS6MLtRWTMYm+1wP0
         W98urAlTF/9tU6+34xQUQ1OOSCbworZCoe532lDrKTBQORIvmzhGsaGm0GkP5bBcEDdt
         ac7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WtQGEfdH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p7si383264plo.0.2021.03.12.02.12.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 02:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D95164FC9;
	Fri, 12 Mar 2021 10:12:27 +0000 (UTC)
Date: Fri, 12 Mar 2021 11:12:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YEs+iaQzEQYNgXcw@kroah.com>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=WtQGEfdH;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Mar 11, 2021 at 11:32:22AM -0800, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider merging the following patch series'.  They enable
> clang's integrated assembler to be used to assemble ARCH=arm kernels
> back to linux-4.19.y.  This is analogous to previous series' sent for
> LLVM_IAS=1 support, but focused on ARM (32b).
> 
> Below is the list of commits in each series, in the form
> <first tag of mainline containing sha> <sha12> <commit oneline>
> 
> For 5.10:
> v5.11-rc1 3c9f5708b7ae ("ARM: 9029/1: Make iwmmxt.S support Clang's
> integrated assembler")
> v5.11-rc1 0b1674638a5c ("ARM: assembler: introduce adr_l, ldr_l and
> str_l macros")
> v5.11-rc1 67e3f828bd4b ("ARM: efistub: replace adrl pseudo-op with
> adr_l macro invocation")
> 
> For 5.4:
> v5.5-rc1 b4d0c0aad57a ("crypto: arm - use Kconfig based compiler
> checks for crypto opcodes")
> v5.5-rc1 9f1984c6ae30 ("ARM: 8929/1: use APSR_nzcv instead of r15 as
> mrc operand")
> v5.5-rc1 790756c7e022 ("ARM: 8933/1: replace Sun/Solaris style flag on
> section directive")
> v5.6-rc1 42d519e3d0c0 ("kbuild: Add support for 'as-instr' to be used
> in Kconfig files")
> v5.7-rc1 7548bf8c17d8 ("crypto: arm/ghash-ce - define fpu before fpu
> registers are referenced")
> v5.8-rc1 d85d5247885e ("ARM: OMAP2+: drop unnecessary adrl")
> v5.8-rc1 a780e485b576 ("ARM: 8971/1: replace the sole use of a symbol
> with its definition")
> v5.8-rc1 b744b43f79cc ("kbuild: add CONFIG_LD_IS_LLD")
> v5.9-rc1 a6c30873ee4a ("ARM: 8989/1: use .fpu assembler directives
> instead of assembler arguments")
> v5.9-rc1 ee440336e5ef ("ARM: 8990/1: use VFP assembler mnemonics in
> register load/store macros")
> v5.9-rc1 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")
> v5.10-rc1 54781938ec34 ("crypto: arm/sha256-neon - avoid ADRL pseudo
> instruction")
> v5.10-rc1 0f5e8323777b ("crypto: arm/sha512-neon - avoid ADRL pseudo
> instruction")
> v5.11-rc1 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN depends
> on !LD_IS_LLD")
> 
> Then 3c9f5708b7ae from the 5.10 series is applied (0b1674638a5c and
> 67e3f828bd4b were not necessary). 28187dc8ebd9 had previously been
> picked up into 5.10 automatically. There was a minor conflict in
> 2cbd1cc3dcd3 due to 5.10 missing 8a90a3228b6a ("arm: Unplug KVM from
> the build system").
> 
> b744b43f79cc and 28187dc8ebd9 are more specifically for allmodconfig
> support than strictly LLVM_IAS=1.
> 
> For 4.19:
> v4.20-rc1 d3c61619568c ("ARM: 8788/1: ftrace: remove old mcount support")
> v4.20-rc1 f9b58e8c7d03 ("ARM: 8800/1: use choice for kernel unwinders")
> v5.1-rc1 baf2df8e15be ("ARM: 8827/1: fix argument count to match macro
> definition")
> v5.1-rc1 32fdb046ac43 ("ARM: 8828/1: uaccess: use unified assembler
> language syntax")
> v5.1-rc1 eb7ff9023e4f ("ARM: 8829/1: spinlock: use unified assembler
> language syntax")
> v5.1-rc1 a216376add73 ("ARM: 8841/1: use unified assembler in macros")
> v5.1-rc1 e44fc38818ed ("ARM: 8844/1: use unified assembler in assembly files")
> v5.2-rc1 fe09d9c641f2 ("ARM: 8852/1: uaccess: use unified assembler
> language syntax")
> v5.2-rc1 3ab2b5fdd1d8 ("ARM: mvebu: drop unnecessary label")
> v5.2-rc1 969ad77c14ab ("ARM: mvebu: prefix coprocessor operand with p")
> v5.3-rc1 3fe1ee40b2a2 ("ARM: use arch_extension directive instead of
> arch argument")
> v5.4-rc3 3aa6d4abd4eb ("crypto: arm/aes-ce - build for v8 architecture
> explicitly")
> 
> Then the entire 5.4 series is applied on top. 3fe1ee40b2a2 had a minor
> conflict due to 4.19 missing 2997520c2d4e ("ARM: exynos: Set MCPM as
> mandatory for Exynos542x/5800 SoCs").
> 
> I plan to send some follow ups; I need to do another pass to find what
> we may need in addition when setting CONFIG_THUMB2_KERNEL=y
> (non-default), there are two patches working their way through the ARM
> maintainer's tree needed for allmodconfig
> (https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9061/1
> and https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9062/1)
> and v4.19.y has one more issue I need to look into
> (https://github.com/ClangBuiltLinux/linux/issues/1329) that has been
> cleaned up by a 7 patch series that landed in v5.2-rc1, but on first
> glance I suspect might be an assembler bug for us to fix.
> 
> These series will be used in Android and ChromeOS. We're also ready to
> wire up CI coverage for LLVM_IAS=1 ARCH=arm for these branches.

You still have odd Android/ChromeOS things in these patches ("FROMLIST",
Change-ID, etc.)

Please fix them up, as-is, we can't take these.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEs%2BiaQzEQYNgXcw%40kroah.com.
