Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB6WUV3ZQKGQE5RN57KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF6D184B26
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:58 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id z16sf4469406wrm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114298; cv=pass;
        d=google.com; s=arc-20160816;
        b=ABnRrnF0uuJq/KsnlSO9X9BjpMFxt19Fo6vc4bkzOEuJx/V/E3uNDGP1/vqC3twvA5
         uVzgVWFw9wUL4DFHbMgDlvgwwyY3ulNOzNm5eklG95spAo6CGsxbe02jhzajvfQplRA+
         om5V1SyKQGaQ2v3FQuXXXawxmX5HZBFOg0hKKfMd9wcRF7CJSRSjT9y+XYPTxwBTpdyw
         iwwZJChqawrClm9q6R4vS2X1Xu3pKvWT8bG31bXVM0gQncGA8BL2agLI0anfooMqRYBR
         MlftQ2vQD5ZDw2aAv3JngWctYetfleveRQQAibr1VpuuKNMttUoQQuShUpCJmI2BNTvl
         kZvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OzR/LWOPDhYegy7I1odwr1yprFYKSri9i+WqrRguOkY=;
        b=Gz3yQ5kV5B1TPCs9FRWP6j3JM4IuYnYiUVEEdDJSdgevP8Ad40oIcQeLO6lIA3dN9K
         QeOZU7Mh2obWIV1z0G7b2znS9DzfOV88OvEc5vMszutxen/6Q6zyJLCrstFuXjHgqOWi
         FoMBCPMpheFFYT2LJ4DSb4e/JUOw45sgdcdGrfM2bVCnj0MtcYTy+bTSOZq+E8VYVA9z
         1ZPwrqF8GzLINzsvfoshqBVmuCqwU0BguIElP55HdE/tJaD3x/3Nj3aDdx0KdmZb2Lkm
         kCBS672LxOaJjUpzWE3MBqG6QV0P6QVdM67Ors2iT/qppOvgIo5ynauTo5fuMhmLzzvo
         TB8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzR/LWOPDhYegy7I1odwr1yprFYKSri9i+WqrRguOkY=;
        b=mmhAMJHwAuKjF7hFVX7SBAuVZKOfF3V6us1XQN+leCaC/Uf3w61qjlh+qOBLGy7jtV
         ol07dh4GC8PMBOK9Zv5i3cTuaMd4rhSkF7Sg0HTJw+f+yatvbFPc7F2qS5vrttKLykyb
         qzqOhRs9uSy5WAaK/X5hH1qnqoz1hXRTuQZJbNkmUT98WmqKl6k/h+bNyJD+uWboh2DV
         N7FcV1JemCqFk3QH8IlaqSmXy3pMR8mbI5emlIDadItf2+MHSEW993OyX7pi1OqfqeZu
         bVJ/olkjneEi3jEJtBkIGWhONXlOGFaPGXNX+N+ka6HMbSjF03T2toIm6lj9cGGO3X7o
         3/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OzR/LWOPDhYegy7I1odwr1yprFYKSri9i+WqrRguOkY=;
        b=U3hVqeIv00VHpYNg7Dn9f+TK1S9IshKUmIJre2o6qWpj+8LO63Vyx5jRV14kuUWUy3
         ORl615I+cHWyJP36FDYQ1wUbyGpod8UbvvbumckUKUrtvVrZOFnE57cLmW3tO2tBe0mX
         7MP0C6lHpnBFerAmWhYE1Ak5KzGShX/afPNt/q6aoPxLSmiUSi9i3uJ82g4CXZjKZucx
         QZWkm6eQKNqSyxSreyp5YA+/Pdu6MLq4408FC0ofGopROdn5/s5zKHg8moRooAcbChOk
         0wIYb+H9A3ifyWW5n/0vTCW7hAWqKaWGNda8IhQcnvOEmccCIA83327r9anx29SwFN9k
         tlNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2b1rPdsNRI96SYXjwb7akabNQjCQvW7dKk1sEI7InAB8MVEyK/
	gVwfpxQvShMLLjrtdYbC0iI=
X-Google-Smtp-Source: ADFU+vswVu6Q9rQtIOE3Eu+f1I7lQm+qqur+AijaS1iR5s+elLo+9RzOwOF3GxcRFwbQBCVle6rzlQ==
X-Received: by 2002:a5d:56c4:: with SMTP id m4mr4857245wrw.182.1584114298210;
        Fri, 13 Mar 2020 08:44:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls1598276wmk.0.canary-gmail; Fri,
 13 Mar 2020 08:44:57 -0700 (PDT)
X-Received: by 2002:a1c:23d5:: with SMTP id j204mr11882793wmj.59.1584114297769;
        Fri, 13 Mar 2020 08:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114297; cv=none;
        d=google.com; s=arc-20160816;
        b=d1IUsXY6hTSPonkZIdjoNfnizfUs+0TK2I6O0oVQGnu4lINx26y5Ytit+Y2VyKK364
         KLCSk8V5nxjHDnwoJKc5eD24iCrgjrLgk0X6KDLajm9slR+yMsDPDuvbv6aEqul5Y5s/
         CKKXabYuopQs22gZb1kpK9JAeyj/qYwskd7Ff07KXokZx1Bb1S2vEgG2LPXkBNeUD4RY
         ObujVLDGfmj9nSqb8l5gE7GpT1Pq1yhhAJmL9v0sVdNvzgJTjlW6VoRegt6XASRGmDFL
         3lShWuaIFtz7s9CZBRU9Wjsp1llhhUitJ0r27Upe5pikafwUOyYHRMjoDwQl8gbb1dVh
         16zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=dTI/Cj53dgEqu9mqqRs1JEO6VFIo/5Mhkgsxbj91SMQ=;
        b=WqEaVw08aABuQa37pz9eY0mtlS36dpSdLc5hV6Lc/pMvBs9neJo6+yV/yOPxCYBKr3
         zm4RxswBlWRllLKx6ggKoZgIOxTEFdJlmAOFfk6P4j9CdIiWUPGFotZ0xlLWxDV7QUmW
         5VvEieFDtMEmFjyHORz7L5WWRXWWNqGxj2Oujz/xNgnvHolV403TFrYw9Ypp6iQJnLDw
         kDl6BPtp49Zdf50T4gorcmCxzVEbWPYhoPT/vADKt7LtRMNixRKM4leFBnkNaggpS4fe
         UvgaGYEmO7o8Ev7XNEWP14qGlMjE5kiJhnh4BlodRrrviytVwmMc/fNZMYgFn5+ssXKy
         5glA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si560944wml.0.2020.03.13.08.44.57
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 117B9FEC;
	Fri, 13 Mar 2020 08:44:57 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C00953F67D;
	Fri, 13 Mar 2020 08:44:53 -0700 (PDT)
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
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	kbuild test robot <lkp@intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH v3 16/26] scripts: Fix the inclusion order in modpost
Date: Fri, 13 Mar 2020 15:43:35 +0000
Message-Id: <20200313154345.56760-17-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-17-vincenzo.frascino%40arm.com.
