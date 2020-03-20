Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB2FS2PZQKGQENRLOUUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6236118D1C5
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:36 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id c2sf5235121edx.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716136; cv=pass;
        d=google.com; s=arc-20160816;
        b=QwNQvM0xqWlZFv9Y72oBAXRIZoAiMD8oGv8nPN/PiwcZNm51bKv1DOLWCDkWAeu6uc
         GXXJdBEsqUzoHyuu03lxL0Kw3bEdKGkGzOblqoJpWKyvmnTZjKqvGpH6ZuoBIUg1mX0s
         S5hjY3sycLILCvdPHFslPnD5cescmYFdSKmcUaxjsfMJ/g/1YNau8Cng6JW+iOF0nYCq
         Y7EZUjaWtPUAVC2NiRlwMD9GWAEVz/BpsMyS3qgompxNkUNobJpYovll8glwe+JgAb1Z
         lzqUPPlcBuCx9FMmRvXdT5ynPcMq4H0x2Ue9prEQx1/xsVu/Z8+8PcnI+VnQnF1/Go4S
         3cuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XHg5oMmDIDVAwjYXNRmYRp5X0+xmSoguTea/8GPcjMs=;
        b=WQWuAiLWLph1IZbvYSbxMlMTHNgB4xS1YBL19n5uyD97aFLIClq1cNWzxr2k4MYZfl
         7cx6Z1QegTUFsFRaZaTxUp3ev+qied+f0WXVi76FMwXTksPsIiniKPjBzRCu+NR58dtP
         RgEKyAIUEl5r52OY7NAu30FIXvIeuV71I3KYAc5bD+/EO3iACPxtcJWb9GxhdXpnyqNq
         9JiIZoeJRMblArgaw/L6OopUTIcgjjbllt8EnMdwrcRX0MIYSyxCkUpCqsYocHSojUOi
         b58JtACORuozGFotOWLNolY2hvXYP2IfHvv95BiBESr2ICl8yIK5f0UcTXH3pDVAgXBL
         S5Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHg5oMmDIDVAwjYXNRmYRp5X0+xmSoguTea/8GPcjMs=;
        b=LdqF/MixL95D5VTBJavAJphSQeBwJRv3GsRty+NxVfst1m8wu/P01s4XZY7njpIDGd
         hl4k445vdYu9bEMAT60/6zETNDmyL5CrdBto3F8TPIYfR6tUzKr92Hx989rpyO3zM+BY
         nglnpd+plbYTjy5Gyr7pZPigQDh44NQmBy/MFeT/Aet8R33i5fK/wmNkdRWOZVbC5X5U
         hMVbUUg2GR550W+U+udhP6Qz42D4ad7hErtELtxXfuBiUClmBIW4S/fZ7hysvg3uvf+J
         lxtLWoDs3ScK6UNRIsjOf1W5WUg8eQQUB/kVmU7jWge2ficV+NjmITqKKmqXRaIEQPgd
         Q4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHg5oMmDIDVAwjYXNRmYRp5X0+xmSoguTea/8GPcjMs=;
        b=gKALJxiF5m0dZQfqfRGLrQDDCBCJDC8teq/cVPr7rp10Dy6HUZyWnAmpERkJUeOWtS
         tcjDTJLYjRQzlWpe09MHBCyRRrMAfQs6Ecx0tQhX3YyOmnl9EPQ/0Q71nM5CPT++FGgD
         YVb6K3z/2sRr2D7OyXs9Yr9AzAzXc/9HGR8fx8DlGlRg3R/zExRRLwEzVylfMc5mogOt
         np1Rqm/dpMF4OjSLA9FdNKrlFJbOIFya+Bau/BA1uHVFNSGGQJpKUEIgTMTEzzVX834T
         IFI241XHs3OaAjcBb6PidZ4Y0AKjwWTw9joqmDLnHx7upYSmDvGklHdyW3HaknZ8qd/f
         pjrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ11mrqwBGBs9Oy2rkbWGCGHsV10o/Dn28mLDZ5bhJc+DUHLke78
	zfI4Ch2Zo2B7uRM0vB0oOMI=
X-Google-Smtp-Source: ADFU+vuCP0PE+gahOTz7FTgenznWiZGW9drQQahue4rEU7g1IG5O2P/A+CHjBw1AQC8WbOtQRi18Wg==
X-Received: by 2002:a17:906:4301:: with SMTP id j1mr8841426ejm.46.1584716136089;
        Fri, 20 Mar 2020 07:55:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls3343174edk.0.gmail; Fri, 20 Mar
 2020 07:55:35 -0700 (PDT)
X-Received: by 2002:a05:6402:128b:: with SMTP id w11mr8447810edv.56.1584716135699;
        Fri, 20 Mar 2020 07:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716135; cv=none;
        d=google.com; s=arc-20160816;
        b=SnPQOM/7W1SJxHG4GliqBwcMkoaKuMrS+pjyLwnV4/M2zExi3oDZelAaU/hXJw/q8y
         hIlmoKx8hXJL8dd/XEzKkQbbpbj25qb0hcKGcpXeA0tIq7IW/3Kuhtf8T3dIIVpKTmyK
         Stcc4PzLVuPA+8qG53a6XAD5dqgFeMsjWme5kjgfkoIG1Uliyf8fhiD30RfNQPPFuxSU
         vC98pvbf8ErZnL56Fmse0ieti3/w3u3T6YK/SqOzxVvf1qPRzPQA66HCMNpg8GnUAEbQ
         JkVLGgYAgpPCC5g0czvZnrks8iSSKnVWzUIpZepmjzINN8IjhMUdH7PozzpbworSvxQd
         4zhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=dTI/Cj53dgEqu9mqqRs1JEO6VFIo/5Mhkgsxbj91SMQ=;
        b=WKHokbfEtSpeDHBG9yhhU1l30Y1AlRz6mg9Z1rEjt42aOIQMUp1UULnoUDqhDYcuDI
         9fEHiUM35lLYon0osb5wtkR6iytjzowbGS5dRVE9GM6DJUShn4psWaX+K7EZgJxSv/oA
         NmRStUC5ndkBTLc7/2kVLbOCj0xKfuV/AMOfcw/D7SfOvfQzo4wWZVzyw9NxL3KCg4bF
         ngfLoO7KmMmR91jL1JHz8p5RPGPWHsdyOxXF9GbL8CUtAXn43RZOpZFjJoHKdxa6DgSI
         skLvDYS/r2tmXqWRqVQDnxeKA9bSQnuiKkNWtQlV7gTKClpKQMLG4FNPI7txGQwo/g+T
         xoWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l21si265350edq.4.2020.03.20.07.55.35
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D4921FB;
	Fri, 20 Mar 2020 07:55:35 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BAC1E3F792;
	Fri, 20 Mar 2020 07:55:31 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
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
Subject: [PATCH v5 16/26] scripts: Fix the inclusion order in modpost
Date: Fri, 20 Mar 2020 14:53:41 +0000
Message-Id: <20200320145351.32292-17-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-17-vincenzo.frascino%40arm.com.
