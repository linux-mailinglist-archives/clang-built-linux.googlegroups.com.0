Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBCFCRHZQKGQEKMSA2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 155FF17BE8C
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:32:57 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id x9sf244457ljj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:32:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501576; cv=pass;
        d=google.com; s=arc-20160816;
        b=MuoxpL3s+5nXkmaIoazs4szXhdCB6ae8kBwPObMGd6qSYEPq4O6Ria8AS9QhVyRKh2
         F4+4fMpER2jff1RXNk8dptSxuZiJrwqELvu5m+QnXt3t6ga+9qGIHlK23EPEspku19Xc
         +mhiJEkP+t5g7YD0LwGFRp3e6spvcfzTBXicNfMaQWU2zsfB1YVcO3F0xUFpnGsgsIh7
         L+OGlJvsKD2NuVLbUtwM6urBGLYuPMXY/0MxhDySjRDsqP6s51pVo8UB/QMoK25wXaGt
         cfLg66N7rl6FSK+L+EuKDXXh0WqfdmcjBPeSNEI/rdBT10LXgW0oZtwx74ZnRcoJXyvK
         mv4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=q4PLAMXy5x62IR7OSMG1oL9gys20WulPmlmpX9/Hsyk=;
        b=ZRUTxhSMqiO3m+SHlHPDwMIeMZcZ/OaWEKsNKBMEUV+NAnWNxN1vocfO5q5r3dMQWv
         oZZByMZV6B/A6SfUQN8shbcY8hhjBYZTYVnGfAXuQNwZ4/714pwnK2CNwB389fGfqbka
         SgwYwTEwv4uUMeLgB8gr7GYiE7Tc7Gy0e02SonsFvTWKplf6ofc2t/EqV/kD9nf7AJqR
         b5mGRVeRRU4TCWQT40OD5SSXt+w+d1+QqPbsoNAcSLvWVUcj+QhtuzjcirGbwyC1pV3l
         HGOuJrT5fD/RfRg9E5SaTOztdtM8RhpfVR60V578rnAQUe380eE5EHo6Srnrpx4SWr9v
         m/ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q4PLAMXy5x62IR7OSMG1oL9gys20WulPmlmpX9/Hsyk=;
        b=MRzpevWYUt378KFmhfKLWyL1/B78dxrWo6C3Q9tKRcOZaurGmAhsax5kmsqT6quYeP
         33a5DxSN6UNfFckHrwJRF4C0c09XYSNX4+laP3sES+EvJr5COiDYig2zOc841JcKXJ1x
         lEKQaWv8VKp7qMxmpYjBcAUdL1K/SK4I+t78u+Zumzh48/Ly2QYWGFLu8eMxwk/XXMKS
         7rcV/RN/ptoLRPIeEiRk9zre4Ojl6nJvhiQRfVTw8z2E6ykJwwbRC1vE+0v00ITv4d7G
         roC0DhO4m4Q0YfB1bW1EO9lo6XPkua3G2SSO1bSC07xPhcphzxGaob9OIrJKdPuXF7A5
         JcSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4PLAMXy5x62IR7OSMG1oL9gys20WulPmlmpX9/Hsyk=;
        b=RxYFlnK7H1KuNU8drNZ9N2G/rkm34sSt1qkQVDPLthWOuxgnt0KlxsMuwDoIpDNhvR
         2bEyyOF4DV8lCQU3z1YONbUyyyCrATHWJ3WBHEInXBHPX15cgwn+pKoMKHx9x0rNDRtA
         p0Ow9P+4yUaLiN+fSKScsowaHXdsjWGQYj9GvMjM3q6D4EJ2aDe8Hk3evZyGc4hc3Yyq
         AAuiHZ190FR/hygDmO3WTMg28ZRc3i3AttauurTSGbv1p7P65/tOsiUnxSMbLTJnBJCG
         yZjAhKXYg6W/5P8VVlRcqe5Byu3ac2lbyD0iT1cMLhzZ5XAo0aZU6i2MtyvJgSRemxVb
         A6Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2oHqD8yRd8MgAOgxWWsVBnzHxhgNEWTLvPOO5ox0JcjK3HwS4Z
	EiLvQRkRjYnbSSGtYPoy5Vc=
X-Google-Smtp-Source: ADFU+vtDd1FAmklxFpNHf6ojzIJinCJtm9i/nD78yhk4XExst+kXIkFEZ5ZraBomfE27RkA9W7ijQw==
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr2005105lfc.204.1583501576369;
        Fri, 06 Mar 2020 05:32:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ae10:: with SMTP id f16ls333203lfc.10.gmail; Fri, 06 Mar
 2020 05:32:55 -0800 (PST)
X-Received: by 2002:ac2:42d9:: with SMTP id n25mr1950983lfl.97.1583501575465;
        Fri, 06 Mar 2020 05:32:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501575; cv=none;
        d=google.com; s=arc-20160816;
        b=iGNiuqMGH4SE5i52h7Iox5TQF4AN8/EMuI4xGkmKwqoqFDT0c3dPQPMv0VdJKoQ+Zi
         DTAIc/9OgvCbr263hkpGSyz2QprOeMR7DoV41utbdSAJw6KVkZHa1KT2qPu3P24YRNSI
         1bo8KP0yanDsOBWvCKgVRYyQvnrD4qsvw1xWsmvG9V24SwkPAQGeLYAtCwFK17YOZ36k
         AleldNMOHRmshMi+NW9TxCNlKyCPLH7D/UtjIggab3CXzAAu8VBXZ7u6J8SRXshV3+LJ
         wQpzCyEVCezGQnJQKxF4eU8kANsdd0sXwerKq2PSW5ih3oF+GNh2sQIGCFqykL9d7bfB
         4pVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=IxI2pGeqlX2Q2dC7GMSJDpekDt++8MBUPgut9FN6NbQ=;
        b=zTSxZsN9rUCsTx3BAsd76OltQ5ID5AIFoKIpwux4ur30UPDDuV4UhSsa8D5YMNbGnA
         eSAF0eCuVfUKoJDu6N5xSjMyPXslTONw7x97jKJSAdE1VBcmX2JtRH8i9wx6FZsrV3MN
         t2NNWRPNZPwqFhTzyzgHf1nts/NOg4mfjIr8fUk02PKtBvaoDpCeZoSV7LQMvwfe3wfE
         wf9b2Ctm9+K48wPu+LCOfhS0pugf9tEHqJ9iMOQIHSFo/yQuBQDgom4od17Vfjklc74G
         RnkBHwGmgMKwQG6EUvASInf4s+bP0g4Ybmg4UFqbv3C0mGLMXlefO/FTckCNewNkcCh6
         9FuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w18si130105lji.2.2020.03.06.05.32.55
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:32:55 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05A3631B;
	Fri,  6 Mar 2020 05:32:54 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 402E93F6CF;
	Fri,  6 Mar 2020 05:32:51 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 00/20] Introduce common headers
Date: Fri,  6 Mar 2020 13:32:22 +0000
Message-Id: <20200306133242.26279-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Back in July last year we started having a problem in building compat
vDSOs on arm64 [1] [2] that was not present when the arm64 porting to
the Unified vDSO was done. In particular when the compat vDSO on such
architecture is built with gcc it generates the warning below:

In file included from ./arch/arm64/include/asm/thread_info.h:17:0,
                 from ./include/linux/thread_info.h:38,
                 from ./arch/arm64/include/asm/preempt.h:5,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:51,
                 from ./include/linux/seqlock.h:36,
                 from ./include/linux/time.h:6,
                 from ./lib/vdso/gettimeofday.c:7,
                 from <command-line>:0:
./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=99:
./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
                to integer of different size [-Wpointer-to-int-cast]
  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);
               ^
In file included from ./arch/arm64/include/asm/pgtable-hwdef.h:8:0,
                 from ./arch/arm64/include/asm/processor.h:34,
                 from ./arch/arm64/include/asm/elf.h:118,
                 from ./include/linux/elf.h:5,
                 from ./include/linux/elfnote.h:62,
                 from arch/arm64/kernel/vdso32/note.c:11:
./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=99:
./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
                to integer of different size [-Wpointer-to-int-cast]
  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);

The same porting does not build at all when the selected compiler is
clang.

I started an investigation to try to understand better the problem and
after various discussions at Plumbers and Recipes last year the
conclusion was that the vDSO library as it stands it is including more
headers that it needs. In particular, being a user-space library, it
should require only the UAPI and a minimal vDSO kernel interface instead
of all the kernel-related inline functions which are not directly used
and in some cases can have side effects.

To solve the problem, I decided to use the approach below:
  * Extract from include/linux/ the vDSO required kernel interface
    and place it in include/common/
  * Make sure that where meaningful the kernel includes "common"
  * Limit the vDSO library to include headers coming only from UAPI
    and "common" (with 2 exceptions compiler.h for barriers and
    param.h for HZ).
  * Adapt all the architectures that support the unified vDSO library
    to use "common" headers.

According to me this approach allows up to exercise a better control on
what the vDSO library can include and to prevent potential issues in
future.

This patch series contains the implementation of the described approach.

The "common" headers have been verified on all the architectures that suppo=
rt
unified vDSO using the vdsotest [3] testsuite for what concerns the vDSO pa=
rt
and randconfig to verify that they are included in the correct places.

To simplify the testing, a copy of the patchset on top of a recent linux
tree can be found at [4].

[1] https://github.com/ClangBuiltLinux/linux/issues/595
[2] https://lore.kernel.org/lkml/20190926151704.GH9689@arrakis.emea.arm.com
[3] https://github.com/nathanlynch/vdsotest
[4] git://linux-arm.org/linux-vf.git common-headers/v2

Changes:
--------
v2:
  - Addressed review comments for clang support.
  - Rebased on 5.6-rc4.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Mark Salyzyn <salyzyn@android.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Dmitry Safonov <0x7f454c46@gmail.com>
Cc: Andrei Vagin <avagin@openvz.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Vincenzo Frascino (20):
  linux/const.h: Extract common header for vDSO
  linux/bits.h: Extract common header for vDSO
  linux/limits.h: Extract common header for vDSO
  linux/math64.h: Extract common header for vDSO
  linux/time.h: Extract common header for vDSO
  linux/time32.h: Extract common header for vDSO
  linux/time64.h: Extract common header for vDSO
  linux/jiffies.h: Extract common header for vDSO
  linux/ktime.h: Extract common header for vDSO
  common: Introduce processor.h
  linux/elfnote.h: Replace elf.h with UAPI equivalent
  arm64: Introduce asm/common/processor.h
  arm64: vdso: Include common headers in the vdso library
  arm64: vdso32: Include common headers in the vdso library
  arm64: Introduce asm/common/arch_timer.h
  mips: vdso: Enable mips to use common headers
  x86: vdso: Enable x86 to use common headers
  arm: vdso: Enable arm to use common headers
  lib: vdso: Enable common headers
  arm64: vdso32: Enable Clang Compilation

 arch/arm/include/asm/common/cp15.h            | 38 +++++++++++++++++++
 arch/arm/include/asm/common/processor.h       | 22 +++++++++++
 arch/arm/include/asm/cp15.h                   | 20 +---------
 arch/arm/include/asm/processor.h              | 11 +-----
 arch/arm/include/asm/vdso/gettimeofday.h      |  4 +-
 arch/arm64/include/asm/arch_timer.h           | 29 +++-----------
 arch/arm64/include/asm/common/arch_timer.h    | 33 ++++++++++++++++
 arch/arm64/include/asm/common/processor.h     | 31 +++++++++++++++
 arch/arm64/include/asm/processor.h            | 16 +-------
 .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
 arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++--
 arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
 arch/arm64/kernel/vdso32/Makefile             | 13 ++++++-
 arch/arm64/kernel/vdso32/vgettimeofday.c      |  3 --
 arch/mips/include/asm/common/processor.h      | 27 +++++++++++++
 arch/mips/include/asm/processor.h             | 16 +-------
 arch/mips/include/asm/vdso/gettimeofday.h     |  4 --
 arch/x86/include/asm/common/processor.h       | 23 +++++++++++
 arch/x86/include/asm/processor.h              | 12 +-----
 include/common/bits.h                         |  9 +++++
 include/common/const.h                        | 10 +++++
 include/common/jiffies.h                      | 11 ++++++
 include/common/ktime.h                        | 16 ++++++++
 include/common/limits.h                       | 18 +++++++++
 include/common/math64.h                       | 24 ++++++++++++
 include/common/processor.h                    | 14 +++++++
 include/common/time.h                         | 12 ++++++
 include/common/time32.h                       | 17 +++++++++
 include/common/time64.h                       | 14 +++++++
 include/linux/bits.h                          |  2 +-
 include/linux/const.h                         |  5 +--
 include/linux/elfnote.h                       |  2 +-
 include/linux/jiffies.h                       |  4 +-
 include/linux/ktime.h                         |  9 +----
 include/linux/limits.h                        | 13 +------
 include/linux/math64.h                        | 20 +---------
 include/linux/time.h                          |  5 +--
 include/linux/time32.h                        | 13 +------
 include/linux/time64.h                        | 10 +----
 include/vdso/datapage.h                       | 32 ++++++++++++++--
 lib/vdso/gettimeofday.c                       | 21 ----------
 41 files changed, 388 insertions(+), 207 deletions(-)
 create mode 100644 arch/arm/include/asm/common/cp15.h
 create mode 100644 arch/arm/include/asm/common/processor.h
 create mode 100644 arch/arm64/include/asm/common/arch_timer.h
 create mode 100644 arch/arm64/include/asm/common/processor.h
 create mode 100644 arch/mips/include/asm/common/processor.h
 create mode 100644 arch/x86/include/asm/common/processor.h
 create mode 100644 include/common/bits.h
 create mode 100644 include/common/const.h
 create mode 100644 include/common/jiffies.h
 create mode 100644 include/common/ktime.h
 create mode 100644 include/common/limits.h
 create mode 100644 include/common/math64.h
 create mode 100644 include/common/processor.h
 create mode 100644 include/common/time.h
 create mode 100644 include/common/time32.h
 create mode 100644 include/common/time64.h

--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200306133242.26279-1-vincenzo.frascino%40arm.com.
