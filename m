Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWOMQD5AKGQEH7AYCNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E2124E130
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:03 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 4sf1942813pfd.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039642; cv=pass;
        d=google.com; s=arc-20160816;
        b=nn8STy4FfnCQzy2crwz43OvI4W/Ya3yhb3KlAc+NeSpjeMMzIn3C7fYglsLanm4CRR
         oDh19Vx/BHKq0SOR+CPtk9Q/0rDvQSI/mBwtK+Ae3pWA7bCBPqTDsDrgsWGkElGiG1o5
         HUmugZ2YcjXL5d2NPQZ08xN9UH+MA8Us/qT+TagAKBlwuKKlANarqycU9SqYVk7mLHk4
         wuPsWHDVXFHTKOe6ZCuwu012IXs/X8N6b/5wWoIrSZ2OEXc1CVh2HK6nq/7dL7INrjha
         05YJ6wKlt1MYeYdVTISwd9khueaGv6gUelUlqeAkVEeUkS15wi9mHCRddMMwS2mHgdIC
         kzLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JuYsQelmpqjJSzgzeBD11DQxpb/ulKHjP5Hi2h00JLU=;
        b=IAZr97j70vK3X6HfDfpLy6BChKcF3fY/jjJfhAnmSpUPqm4MchLQvE28ih7rsi2ph9
         7c8X7OnoWKlsDbFzwVOKg2n0rA5J6oh7m7bBJPQ5x/QdIxsOggktkTrYqFQqnNSP+Whw
         qM1gcwuDMReePSLcWPbXEIgC2btliI6BZ9Hi+dNWjduObf1d30mluyIDM4Dtrp8febWe
         aOcHMEnCPl2dwrFzf0UdIU0jjo6w2x3z4SZXdJCaY7HsgIGtCLMRlcgGOhOVnQtos63R
         crcwaDcfcQGVWYCRIRlMuODmSFi4wOYujceryiYDDHqh5HTlR8kkYgOt55Kd0O9l+PMq
         ufvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iZ6STMhf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JuYsQelmpqjJSzgzeBD11DQxpb/ulKHjP5Hi2h00JLU=;
        b=AZebzywUCQmuBi/U4TNj/nejWFLt84OGt63uboObkdITjH5AlydeOhV/fKhQKIAJ12
         36ekUHZz57PQkmoy+hp7MWnF+SWCYc5Db54C9a71v2RXYtsmeht+T3bllkiPSx+LBXcg
         EoB9UvWnOlydYs8Z3iBoY3RcMONmskjq39bvF4stl1uGtCsmC6ckZcigZY5qiW4Xzh5k
         XpGHm5hvWCdGcVVQiTUp4KYuJ/GmzNoRtuhybU7m7ve8gdyQ+f92jND4+oPPFTtNmbrP
         8N8yNHlr/aBLTXwYuVZTAcI55+AGHylukzocVk1wcTDjYR1VKHRvtsxg+XX74uwHSLLx
         DAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JuYsQelmpqjJSzgzeBD11DQxpb/ulKHjP5Hi2h00JLU=;
        b=NIMC6w09KiNdZBMSPpvFUvFrdQkBsCdrABcilvEsNbn/qlIFgou4Drdb4+KpQ23T1T
         YUN+QF0s3Dx/eDqPk711DGgRfwQTRZikhY/IZZ6qXYummMvCvBMyDu2mRlxB0l5uL8Ky
         Bt0jwSl8JroZe0SdlilD/f2X3Za9J+g6cVmkpvbQ1LA1TMaIeHEe3rZ/zYIk4w3Ctn8N
         ZX7LbhAueU2ol1MaJsEtu//mpmCm3lsH1UY6W6ONiWXydjuelo0kMhfAJGhyN79WlZmi
         Cdw6Stx3OYqV58fAkwztHILtn+TYSSBa50M6qjXxTTH8AjweXYjy4d74+SoZaM71S9xa
         DzNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a/PLy/e0Tbq+JkUlTcrwLXbmtsPWDWYkOL2AabfdIK7RvWcjD
	dgqb0b46YUkmGiocyOCoG5I=
X-Google-Smtp-Source: ABdhPJwZvXuBsTlvoiEDCAjwOj4qX7LS3FnBQORmcATNjTWI8U5MuLTlmU6ciWpe82nH0Oy13PoPNg==
X-Received: by 2002:a62:7705:: with SMTP id s5mr3646516pfc.52.1598039642095;
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls818713pgg.9.gmail; Fri, 21 Aug
 2020 12:54:01 -0700 (PDT)
X-Received: by 2002:a62:26c2:: with SMTP id m185mr3784720pfm.115.1598039641603;
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039641; cv=none;
        d=google.com; s=arc-20160816;
        b=M23N2RdnDPkF+N2+OaWKuAaPDKFPcyZp3vZVDnLXY24tvyKFsfDmMRIoFqiNgxhd5c
         a71AIMUHWVqo3twUVft+XJDrOPyjZycN63gqmXZvH//5g3BLoMYW1phRx5h1peafld8F
         E9XDVHCNyr0m1c/a4JDPJHEeysjWzWyivnx9YQgRc5L6cX/nJ82rGLrX4hkjzSh2QMfQ
         rFkQuaJ5Go97A/qgDLuE+jW/cwtHAdN4KIjbZqlikw4PYbjUidID2KR7q1a+NyG+LSwx
         8GDRCfvLJOYV6PtuUyYSehULwjg9VhEnQkoB2kLQ4YBta9U9th4ntfzAR3PtS/urXVpB
         JBOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vdQE3ckXVQaQMZctNKe7+WI4MMPWGnzLaa/Ga3pSK5c=;
        b=h5eteIVsVT1OQJfJXa0/5xOEIiOEVSTVxWe256el0ykS5uj4+vrlKkdcaU+DV1ehgv
         erUdYqLKekOfIlNwK8PYQeQKQHp7a1INhw+xmK58nRgsmUYJ80UUwOFyC484v7sGSabr
         jxUwnBOTNqNA+GX7TtGYuCIZMeUer1PrsLavXo2gBbn9Rh+EfvkCPOmaCwVUzGtE68wH
         VV2ZnOtrZ3+piT2vVgzTzCkeODUILagR5S6AGOIk1fncV+r0cr7KNkC/MbKKP87XPw4V
         K2sRXaG8lLzt99EHTkAJrrs6I7F5eCXF+FLJmTBsqLtlmMg/kD6+fT3txPDwEtmPECpg
         U99w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iZ6STMhf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v127si217390pfc.0.2020.08.21.12.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id y6so1355886plt.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
X-Received: by 2002:a17:90b:238d:: with SMTP id mr13mr3515645pjb.132.1598039641368;
        Fri, 21 Aug 2020 12:54:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l9sm3165356pgg.29.2020.08.21.12.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:53:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 21/29] arm/boot: Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:43:02 -0700
Message-Id: <20200821194310.3089815-22-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iZ6STMhf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker script.

With all sections now handled, enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index b1147b7f2c8d..d6cd2688ad7e 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -123,6 +123,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += --orphan-handling=warn
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-22-keescook%40chromium.org.
