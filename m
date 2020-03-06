Return-Path: <clang-built-linux+bncBD42DY67RYARBIPJRHZQKGQEKDSV65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 984FC17C27C
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 17:04:50 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id t15sf1638385qtq.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 08:04:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583510689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mr4LzQD825CpKAhp+z/d6fgT4Bh50/G7ztMjKxFKU9SDPl3n3hic5awvIH6kusJncY
         +6yN1hR+qMX7YjkpXFtu0YpbqA55oL2AhW1DCWg2iORnDnAid5TU8Mc07N9NcO3Mgkb1
         lFOn6Rr/YNOU6Db5In/Mlqb3pj1i6I966lAOi+yvw462Yh4I2Kt/C6FE03vNsFYpDGV6
         e4KRYpWgf3E72RWFlwhJB0LVJnVnDq9v3s8d9dQymaYUoQkU+XHqeTwy+ZhuXh4o+Xuy
         95ppQ7+ryCNxXMklKBP0XSloMa0HjwBXYPqb3je1X4P3hA25t/MoqmMx1bXQGTw8IvuL
         oCxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=KLELP7OiEqRz3lyJtnPp/QEmKz1AUzWucSeIqZngZes=;
        b=Dxqa1QHzpGJq4C5tyid2d/H6Xevl9Tq9YRvdIbtPuIJA2PCGpNcyOWJd9jkZ22VShS
         pSMGcgJL49RilRl9qcevQuN8iHyd+bMjfGO5lh1rhMokZzUFsmLOFo/9qjlhEAzU0uqL
         UbhFqfjT9GlVFjS4BqAQKtNT9SNcBLJ8XVQbWPlr5MRy5hBH68gcJcijK/rg/0nyb6+F
         C4aBBgwt4riGnAWKKMUoNZYMyAVdjm6HSL5aUyTRgYy2/jpPzCrc9jgIBXA4N1zcqKT5
         xYKOsXLJTdO4672ji9YYMBeyH2DwolZp3YTSLVa/oNbtq00RtMLo9v4Cm3IdXuNWdWv2
         YGHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=sN76knTs;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KLELP7OiEqRz3lyJtnPp/QEmKz1AUzWucSeIqZngZes=;
        b=s6I/zsMP/VCvYrAcuwf2w6uSLpCFuuPJHF6XYt9cwqsDtrsALeKPkIC07pa1rNBfJ2
         yB9SgpTq/UH7lzIYOuNeGQCTiriaUUeMc7eH0iin0k3eADZ2JUeUoYaF5yg1K2RUP6WT
         Ny4InPiglfx4t5wkPplVH61nAqyF0QylqmEUVgU9rXyJeYOWo7w1zASmi8JvQ8HWlOYX
         MuzpmKtdRQBNAYhoqSRA3HMpUvP9g7/ODSxLdtGRGB3KOpsn1WBbzktFr4ZAdIvJ8Yd4
         1xde1PiK8P6QnwwbGP25JuGygzQqMm4nEWAimW/zrDBOV5dm4uoxeKCFLoEXWYe5Rd//
         Qq9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KLELP7OiEqRz3lyJtnPp/QEmKz1AUzWucSeIqZngZes=;
        b=jGLHtKWyyTNQj2u0A9NBj0AwZNDZW91BZS147lwjNTm0mWos9rXAPtrmncSpQv2Z2Z
         7txDfL4Rfq4FOy7hCJLjw3eirgQQ4X29yKSEE0r6Vj//gWttVqPlX6eoS4aJ04Yf/kB8
         PpOOMerFhFwnSI9WRloHrpWA/RELXpjS12FItJpSqMMvOb7/6JF7f4aKfMYcKMOQlxVK
         JQjOw4acfz9nh1PXOeOh/AKdj6o/lgGssFXG9pTQLp+SQI/aX4mjZWLYBXMjsQSnB/Nk
         i8zmV0N79bM7P41arVtqdnI5Qs/pWhHi8JKz9Rn/UVtYtkEKg79/gCreR4hKW9nAs1H+
         0R3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ19ghdXyNRYnoMFDHKfq9b/5u7NlrzKGfHctZ4hpRZ9RjOJFcVV
	zsnrisFHNqfjxMj9FgvsvWE=
X-Google-Smtp-Source: ADFU+vsQdSNyZgrZMFSm/plG2HMvju7BgDF+V5InRChA2Da7xjOTi2CIT+jiioMVMjNSnTlI6y6WXg==
X-Received: by 2002:a37:a38b:: with SMTP id m133mr3536457qke.418.1583510689353;
        Fri, 06 Mar 2020 08:04:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4558:: with SMTP id z24ls954578qtn.11.gmail; Fri, 06 Mar
 2020 08:04:48 -0800 (PST)
X-Received: by 2002:ac8:2fd1:: with SMTP id m17mr3668796qta.306.1583510688484;
        Fri, 06 Mar 2020 08:04:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583510688; cv=none;
        d=google.com; s=arc-20160816;
        b=WwbBiuDoyCFDjcKtzbFbUOD6+WErl3Ps3hCWNgYN+soEbDwtHqxS6V1HhshbZm2RB4
         PDTOf3FMUFynvY3th9jZ9tjPRsu/6DY5Spfncn3hHQm0NN89xHMOi3H7BJVlQQwuQb7g
         6gUSXQQGVgWMTT3N7IyopADsG2rRrQ4pOI6sLtF1otg8zgw+g6WckVoEBcKoGrIdnqr2
         9znKm7BUEm3CHqmkNeclr/lCGoeujJ1Ne8zjAaMHyvTnDilKLUV+NC1IxyBn85SInSnF
         fN1R40vHSLD/NYCj0pbkLJ4dNUWFsKfd85lMxG2+vC4rGYPwnaByVqM9rhzL37peRYZy
         OU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=7u/E+2AE1Gw8zduCp3vcJIoh4aQz/xJ780ourlTfM+A=;
        b=EjxA/BGMNGG7R1U0ZgHkNllFr130Tx+hgrBTd/06zV+YEQurARMj91Il7zwJv9+3SG
         JumjwtpJsJguxlldsKL7Pqkqo4ih1Ou4drxVXQAZKT5ZhJnId3LdlC5/d9HxiEJxcO5N
         OwaXG+BzEnL9T8d3Jw2Ox1AxZY5p1MN1WoKzCjhvVJ3N1Kg8j+yQ7X7ANUeQb0MGNMEB
         kf81Z7y9QnrDP5nSUlRv5pLpJYa3cqYqLiaoxdVjHGu8elozHTE2rxYHXQ8bMiFSQLZe
         MWy6mY7RQKwOxwmi1+1f5PXWlMObt+EFIhtS+jlCvtREDBlHvun1rX1kNLVjXuyLoWaS
         c2oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=sN76knTs;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x18si185294qtk.0.2020.03.06.08.04.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 08:04:48 -0800 (PST)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id lt1so1238997pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 08:04:48 -0800 (PST)
X-Received: by 2002:a17:90a:9f93:: with SMTP id o19mr4348094pjp.76.1583510687333;
        Fri, 06 Mar 2020 08:04:47 -0800 (PST)
Received: from ?IPv6:2601:646:c200:1ef2:9126:9a7f:9c94:9d63? ([2601:646:c200:1ef2:9126:9a7f:9c94:9d63])
        by smtp.gmail.com with ESMTPSA id p2sm18206125pfb.41.2020.03.06.08.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 08:04:46 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2 00/20] Introduce common headers
Date: Fri, 6 Mar 2020 08:04:44 -0800
Message-Id: <3278D604-28F1-47A1-BAB8-D8EB439995E8@amacapital.net>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-Mailer: iPhone Mail (17D50)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=sN76knTs;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=luto@amacapital.net
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



> On Mar 6, 2020, at 5:32 AM, Vincenzo Frascino <vincenzo.frascino@arm.com>=
 wrote:
>=20
> =EF=BB=BFBack in July last year we started having a problem in building c=
ompat
> vDSOs on arm64 [1] [2] that was not present when the arm64 porting to
> the Unified vDSO was done. In particular when the compat vDSO on such
> architecture is built with gcc it generates the warning below:
>=20
> In file included from ./arch/arm64/include/asm/thread_info.h:17:0,
>                 from ./include/linux/thread_info.h:38,
>                 from ./arch/arm64/include/asm/preempt.h:5,
>                 from ./include/linux/preempt.h:78,
>                 from ./include/linux/spinlock.h:51,
>                 from ./include/linux/seqlock.h:36,
>                 from ./include/linux/time.h:6,
>                 from ./lib/vdso/gettimeofday.c:7,
>                 from <command-line>:0:
> ./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=
=99:
> ./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
>                to integer of different size [-Wpointer-to-int-cast]
>  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);
>               ^
> In file included from ./arch/arm64/include/asm/pgtable-hwdef.h:8:0,
>                 from ./arch/arm64/include/asm/processor.h:34,
>                 from ./arch/arm64/include/asm/elf.h:118,
>                 from ./include/linux/elf.h:5,
>                 from ./include/linux/elfnote.h:62,
>                 from arch/arm64/kernel/vdso32/note.c:11:
> ./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=
=99:
> ./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
>                to integer of different size [-Wpointer-to-int-cast]
>  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);
>=20
> The same porting does not build at all when the selected compiler is
> clang.
>=20
> I started an investigation to try to understand better the problem and
> after various discussions at Plumbers and Recipes last year the
> conclusion was that the vDSO library as it stands it is including more
> headers that it needs. In particular, being a user-space library, it
> should require only the UAPI and a minimal vDSO kernel interface instead
> of all the kernel-related inline functions which are not directly used
> and in some cases can have side effects.
>=20
> To solve the problem, I decided to use the approach below:
>  * Extract from include/linux/ the vDSO required kernel interface
>    and place it in include/common/

I really like the approach, but I=E2=80=99m wondering if =E2=80=9Ccommon=E2=
=80=9D is the right name. This directory is headers that aren=E2=80=99t sta=
ble ABI like uapi but are shared between the kernel and the vDSO. Regular u=
ser code should *not* include these, right?

Would =E2=80=9Cvdso=E2=80=9D or perhaps =E2=80=9Cprivate-abi=E2=80=9D be cl=
earer?

>  * Make sure that where meaningful the kernel includes "common"
>  * Limit the vDSO library to include headers coming only from UAPI
>    and "common" (with 2 exceptions compiler.h for barriers and
>    param.h for HZ).
>  * Adapt all the architectures that support the unified vDSO library
>    to use "common" headers.

>=20
> According to me this approach allows up to exercise a better control on
> what the vDSO library can include and to prevent potential issues in
> future.
>=20
> This patch series contains the implementation of the described approach.
>=20
> The "common" headers have been verified on all the architectures that sup=
port
> unified vDSO using the vdsotest [3] testsuite for what concerns the vDSO =
part
> and randconfig to verify that they are included in the correct places.
>=20
> To simplify the testing, a copy of the patchset on top of a recent linux
> tree can be found at [4].
>=20
> [1] https://github.com/ClangBuiltLinux/linux/issues/595
> [2] https://lore.kernel.org/lkml/20190926151704.GH9689@arrakis.emea.arm.c=
om
> [3] https://github.com/nathanlynch/vdsotest
> [4] git://linux-arm.org/linux-vf.git common-headers/v2
>=20
> Changes:
> --------
> v2:
>  - Addressed review comments for clang support.
>  - Rebased on 5.6-rc4.
>=20
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Paul Burton <paul.burton@mips.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Mark Salyzyn <salyzyn@android.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Peter Collingbourne <pcc@google.com>
> Cc: Dmitry Safonov <0x7f454c46@gmail.com>
> Cc: Andrei Vagin <avagin@openvz.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>=20
> Vincenzo Frascino (20):
>  linux/const.h: Extract common header for vDSO
>  linux/bits.h: Extract common header for vDSO
>  linux/limits.h: Extract common header for vDSO
>  linux/math64.h: Extract common header for vDSO
>  linux/time.h: Extract common header for vDSO
>  linux/time32.h: Extract common header for vDSO
>  linux/time64.h: Extract common header for vDSO
>  linux/jiffies.h: Extract common header for vDSO
>  linux/ktime.h: Extract common header for vDSO
>  common: Introduce processor.h
>  linux/elfnote.h: Replace elf.h with UAPI equivalent
>  arm64: Introduce asm/common/processor.h
>  arm64: vdso: Include common headers in the vdso library
>  arm64: vdso32: Include common headers in the vdso library
>  arm64: Introduce asm/common/arch_timer.h
>  mips: vdso: Enable mips to use common headers
>  x86: vdso: Enable x86 to use common headers
>  arm: vdso: Enable arm to use common headers
>  lib: vdso: Enable common headers
>  arm64: vdso32: Enable Clang Compilation
>=20
> arch/arm/include/asm/common/cp15.h            | 38 +++++++++++++++++++
> arch/arm/include/asm/common/processor.h       | 22 +++++++++++
> arch/arm/include/asm/cp15.h                   | 20 +---------
> arch/arm/include/asm/processor.h              | 11 +-----
> arch/arm/include/asm/vdso/gettimeofday.h      |  4 +-
> arch/arm64/include/asm/arch_timer.h           | 29 +++-----------
> arch/arm64/include/asm/common/arch_timer.h    | 33 ++++++++++++++++
> arch/arm64/include/asm/common/processor.h     | 31 +++++++++++++++
> arch/arm64/include/asm/processor.h            | 16 +-------
> .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
> arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++--
> arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
> arch/arm64/kernel/vdso32/Makefile             | 13 ++++++-
> arch/arm64/kernel/vdso32/vgettimeofday.c      |  3 --
> arch/mips/include/asm/common/processor.h      | 27 +++++++++++++
> arch/mips/include/asm/processor.h             | 16 +-------
> arch/mips/include/asm/vdso/gettimeofday.h     |  4 --
> arch/x86/include/asm/common/processor.h       | 23 +++++++++++
> arch/x86/include/asm/processor.h              | 12 +-----
> include/common/bits.h                         |  9 +++++
> include/common/const.h                        | 10 +++++
> include/common/jiffies.h                      | 11 ++++++
> include/common/ktime.h                        | 16 ++++++++
> include/common/limits.h                       | 18 +++++++++
> include/common/math64.h                       | 24 ++++++++++++
> include/common/processor.h                    | 14 +++++++
> include/common/time.h                         | 12 ++++++
> include/common/time32.h                       | 17 +++++++++
> include/common/time64.h                       | 14 +++++++
> include/linux/bits.h                          |  2 +-
> include/linux/const.h                         |  5 +--
> include/linux/elfnote.h                       |  2 +-
> include/linux/jiffies.h                       |  4 +-
> include/linux/ktime.h                         |  9 +----
> include/linux/limits.h                        | 13 +------
> include/linux/math64.h                        | 20 +---------
> include/linux/time.h                          |  5 +--
> include/linux/time32.h                        | 13 +------
> include/linux/time64.h                        | 10 +----
> include/vdso/datapage.h                       | 32 ++++++++++++++--
> lib/vdso/gettimeofday.c                       | 21 ----------
> 41 files changed, 388 insertions(+), 207 deletions(-)
> create mode 100644 arch/arm/include/asm/common/cp15.h
> create mode 100644 arch/arm/include/asm/common/processor.h
> create mode 100644 arch/arm64/include/asm/common/arch_timer.h
> create mode 100644 arch/arm64/include/asm/common/processor.h
> create mode 100644 arch/mips/include/asm/common/processor.h
> create mode 100644 arch/x86/include/asm/common/processor.h
> create mode 100644 include/common/bits.h
> create mode 100644 include/common/const.h
> create mode 100644 include/common/jiffies.h
> create mode 100644 include/common/ktime.h
> create mode 100644 include/common/limits.h
> create mode 100644 include/common/math64.h
> create mode 100644 include/common/processor.h
> create mode 100644 include/common/time.h
> create mode 100644 include/common/time32.h
> create mode 100644 include/common/time64.h
>=20
> --=20
> 2.25.1
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3278D604-28F1-47A1-BAB8-D8EB439995E8%40amacapital.net.
