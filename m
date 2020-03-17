Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBUECYPZQKGQELQH76JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 512001883CA
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:44 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id f185sf1869458wmf.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447824; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ac24P6qSCpZSDbc+DNXcgKHYOx9AarruRZEeyIzyHvp3ViQpr2LyZtZjVK2ioW05ML
         jDTDP6CgXWDf7SORxC7u5Zamm+js4mOR1WAZ5kwShmlN3fV64cPHuF7ELpI/nhhzGck/
         HiiLK+UH3ZJ4b3Y0zc7+f0XBfPAkQulr0+rczSR01mP807leRDkUvVIMsOk7FKF3atiD
         qkqSZwcaUTxo2UBvxw15oneCd1iP0gDMvyziCj1oUXHe6/HPI+GfbpY4u8f0U80wWY7O
         mlqb4Lw/H0CCMVXZsBi62RH86lA1EahSdenx1no273uyXXayWVvLsNTTcg1c+mesbHCn
         uaCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MoydBVaal+gyDVhywiJA7tXUcMTbkBTMYZ2O19UYwgE=;
        b=l7WH/ENgT56dhuqH9bmCivwUlUJ/ye2P8sACSMBvAlTZdOfahg9jzgnLsRSV3MaUZ/
         GxPsHOTYUzKnEwzSHDCwR76bfL19detO5kjuv6h11jyFmneDcaCosOa23bKO6GVwaTM9
         lO63Ecuv8t2FxLzjnmZoISchdohKB/kp08oXXGkRG8pmWcPs3K9Jw3cCKfVipN09A4pb
         yYO6JkM1wXfbhNgiZc09XUBH+Sxi5bjn6NCYroX05ORNGCpqIg2e68pSEJLK97AJ/wwi
         LM5xEMMafaO3fDJuX5E3k1ltiQt8ARPUN+TBlpkRUgaIxGHfSQgPSFb1l9CiJmW0sPDj
         Z5EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MoydBVaal+gyDVhywiJA7tXUcMTbkBTMYZ2O19UYwgE=;
        b=Sa/vxm5F2fE8VFTYUlYcBOA62TGJpAv7Xx9n5kYInBDqlKW+JWp2NTJRvnYECaAKTo
         elHW8IsrkuF9E+gmxE/74AQfizCMUSqwbNAFwINzNM0P1BLfmnAEushT3pv/u9PbjY/P
         S0FU+rgGB8jRfDJv05ECShwEnuzo6nu+0c1X9xNhNZcrARksk8b1diLmQDRBPvbHUn1h
         /KqcFliO9yXvspk+U8o7AkFNQvFwd1Eo1d551Q4Mc+hKnMxkOlVVWiYDrE0MKtWqPSvJ
         cwzEkzHTbyHU/sYqRhJDVxmrXkNMEiAhOIwfXPVRxSFodAq1g4sBcZJUxpLG0RR03jYc
         dixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MoydBVaal+gyDVhywiJA7tXUcMTbkBTMYZ2O19UYwgE=;
        b=YG/Oi9GVkZbq+QayLN8WqWNebQEGmdn4Gdh94Ssvfhk/QFs2HXL8oSlXfNRVDeIE9O
         0T+IWQgqX4Ry58zxA/L3g9xKylyNV2vPhHC9RiA43CVdOhYIj61vy0sIqGRbos9cg+Ms
         OLB+MDRpOQ7zGSsdD0E/HEk8wSVVraHobfPxh+qhP+awJAuii2la8oKHeqKqhY+BYA2N
         dTafuaQQssgXdakmLtju3lrvhzFcPJtTh4why8Qpc7iBcCvSdRvjqCLLy3TW8mf93PO5
         J5pMf10eL6u5+bY7OLd93qW+ptJgf93H2PB/Lw6Mv4QQ/1fNUPtePo3MPURBGyBicmg7
         t7xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0WqjS/0Ub7iBqOoAUPBXeXCxg4Yqez9oa8m70PiRJcEGuiqUHv
	sgSq9df+lToaKdpgfG91WQY=
X-Google-Smtp-Source: ADFU+vu3yK2o8nlWi+UD1VO1sgaFRQbJUP6AcZMHIC1arA306HE62WzLUXUebCDsZ+Tqld4Zs1yAXQ==
X-Received: by 2002:a5d:694e:: with SMTP id r14mr5740721wrw.312.1584447824083;
        Tue, 17 Mar 2020 05:23:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls11063084wrq.10.gmail; Tue, 17
 Mar 2020 05:23:43 -0700 (PDT)
X-Received: by 2002:adf:f80d:: with SMTP id s13mr5894230wrp.426.1584447823682;
        Tue, 17 Mar 2020 05:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447823; cv=none;
        d=google.com; s=arc-20160816;
        b=XFi2K9kWbcBt9m2T7W4H7epzXUJ6LpIM4IUdwpk1p9jjsiJjovgG1ztaKgZAahXXfb
         nrI0hVWlkDnhqXOovDMsFSd69EFpKaQZ4auDqzXV4ZGDjwA8rFLh1nPpv18kXOSWhbfU
         v4sDdYnviuloswWzeI+rCZ7FNrmuHRC5ocyKV/RleHqbcenOsumIxpO8ef9QsOsfPqLT
         3fxxwo5PyRT6guLb/huemW+EHBRswkp0VgYhtqPtWJg6bBtMarm+hRMZX1R0dMAwVvNB
         Behi9ZS/0iPk46yTVngw9eiaFWp/vfhlIRrjheiptzPFfLZW+JQtRUoOkikNPiLNrSZe
         ygpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=dTI/Cj53dgEqu9mqqRs1JEO6VFIo/5Mhkgsxbj91SMQ=;
        b=RQubr7K9Mbgjqqb19gRvLTXO+CCeXdHdzPclBvriY192p1D4f6E+v0lEecM2cdytpI
         QQFUaTHCMLMOBjO8Y9Iyv6H1WtGrAO4es7f85K4B0cI7294/FLQts+dur6VFwBmHXtIf
         RVYRn/Jn4uFgNaVftk0sO7PYySS0rbZeWwd/3Etu6ouTegPBn9UmsZywRWCyqjbV+Xis
         broLIDZo6NIMF2Bt6IvvLfAtSoCry6ySqsDSlPfiU3uR71RCXrOMsEd7GLvgOzUGyytH
         mHOpel1bYvHKLH508IlhnQwOxuXK5MNinttF697G6bOBVc6z6X6TkrPBvq7d4I7sgF8q
         uZHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b81si125396wmc.2.2020.03.17.05.23.43
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F396430E;
	Tue, 17 Mar 2020 05:23:42 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADB583F534;
	Tue, 17 Mar 2020 05:23:39 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	kbuild test robot <lkp@intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH v4 16/26] scripts: Fix the inclusion order in modpost
Date: Tue, 17 Mar 2020 12:22:10 +0000
Message-Id: <20200317122220.30393-17-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

In the process of creating the source file of a module modpost injects a
set of includes that are not required if the compilation unit is
statically built into the kernel.

The order of inclusion of the headers can cause redefinition problems
(e.g.):

   In file included from include/linux/elf.h:5:0,
                    from include/linux/module.h:18,
                    from crypto/arc4.mod.c:2:
>> arch/parisc/include/asm/elf.h:324:0: warning: "ELF_OSABI" redefined
    #define ELF_OSABI  ELFOSABI_LINUX

   In file included from include/linux/elfnote.h:62:0,
                    from include/linux/build-salt.h:4,
                    from crypto/arc4.mod.c:1:
   include/uapi/linux/elf.h:363:0: note: this is the location of
   the previous definition
    #define ELF_OSABI ELFOSABI_NONE

The issue was exposed during the development of the series [1].

[1] https://lore.kernel.org/lkml/20200306133242.26279-1-vincenzo.frascino@arm.com/

Reported-by: kbuild test robot <lkp@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 scripts/mod/modpost.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 7edfdb2f4497..0f354b1ee2aa 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2251,8 +2251,12 @@ static int check_modname_len(struct module *mod)
  **/
 static void add_header(struct buffer *b, struct module *mod)
 {
-	buf_printf(b, "#include <linux/build-salt.h>\n");
 	buf_printf(b, "#include <linux/module.h>\n");
+	/*
+	 * Include build-salt.h after module.h in order to
+	 * inherit the definitions.
+	 */
+	buf_printf(b, "#include <linux/build-salt.h>\n");
 	buf_printf(b, "#include <linux/vermagic.h>\n");
 	buf_printf(b, "#include <linux/compiler.h>\n");
 	buf_printf(b, "\n");
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-17-vincenzo.frascino%40arm.com.
