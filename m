Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEWP6KEAMGQEFC3YSPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C65A43EFC4F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:19 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id m123-20020a1fd5810000b029025c99c6b992sf212038vkg.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267859; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3fSuVGtdYB6/1Oe2r5roF5D2GytIUzAHDgm0nfQVY/DICKbRMkSDUXISqDZWA5a5N
         WYO1x+7P7WBFGc6O0fc0CpIKrE0VFK5Xs3fjHp548VJGNqN4qqii3GMHjBTnv8brxmVP
         gALjS3L5EkG+roTUhpAWZ6tz04ryDt7E3fe542h+HF82O8N9PBWnTB3ACcVD6dNWC8VV
         Kv2+ju3lcWLWTxKkd+EbLJRiH1o0QBHLAt8jwLbTXjxeWII/NwgbP8LaCv4/zAdpTM+x
         xIT1q12i6/SEUU+419wppIgFh+2eJo2sx+2cfchLK7k5jSVwANxW0W55YGbCuVb28xBS
         7awQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lvhf7a/SBuzvHjVzDPehanpJm0JelV4qmg+8/ax0EZw=;
        b=VDCi0PGNI9bTZPe5fq8xvgkTVXxQ52Wf0TW8o9smv56U3TfF/NRlei06XVGqpRruQg
         IM7zT8BSBNGsw69Gh4Ef+0KC3BQr7htvsofQR0zz28GFrKsYuOX2H540WxLe/8ASYoAN
         mzDFoYdfXdwLEHkDgLLjDLhvvaAkxzJfL1lWGvPcDppPL3tveoy7KLzgf0l+tlVfRzBy
         AVfea8eQINzX+JC6lq0Rz40t/NShj2odsuWIq3c0mwXKgPt41mv4RmE96Xu7WPIbpdzO
         brnJwIHG4zfMnI2Q7+5gQ6E9QO8Qnga+Ldgt0CylPCXIrwcKYUcCPaSAo/h9ZAbbMjnM
         shOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F3ghc0DU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lvhf7a/SBuzvHjVzDPehanpJm0JelV4qmg+8/ax0EZw=;
        b=TlnjPzByp3pWlHmguKlJfWrzWvXn5gaPSDsgA+zpB4+oWB8Jtj2/mU5UGrG3cBMgUZ
         xAYQaOVHrav9APPwMLuYvi9kxFFC/faLOUJ1CWA0pYaJApO8Sagp7RsOLbaGgcS5UPf1
         pgvrH6ABukkqn0Rzn8Wd7Uer8QUAB/3qNCqoogU/0f/52KrkalQGnVJGw2YIsq3ULwdd
         FOyFDF8gSs/CSJVomRV1mA9cdNDSK9zXI5BbeVZtfkk7XYCW4mTkFNcp8Hs0n/s1xgng
         chqGwePzMMZzclhXiJjqKaw7/zEnVDfIIkUzrukJ8XVx79IbKWNwhBrzIq/t/dk56WeN
         sVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lvhf7a/SBuzvHjVzDPehanpJm0JelV4qmg+8/ax0EZw=;
        b=h0jOAWeRQHqEqw9vg3bMriyUHwePnW5DJ8yeesyUVBTDJ/1CB9/GFGWeto3V8Xm55g
         pQDgUUU7JKJv+KzwYmAmz59SR0GoHK/ko6dj3DCIrv8uSS90OncDcVP6kncVjt/c00QL
         /GbZM7SZK+osR2G4Oig3uUVzrrMCH1HHJnUwFd4hCm04feE3nSxTBDxCUS9F3IeTyuwg
         j4UbLWA3KpL9ry0V8v5hxHGa5QdjsSAszMym6tdV/RFu+5CA7ZrTAchEAeJWNDJaRPiX
         GD87NiKh7+tea7Osfx/Qqbu8eWx5nJB2NkEhqT+hziuVuTApH9Hi0qvH1guqMFKWERuY
         9y6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LxPUQtawhM/ukbyGL4EwgtidEMD0heLn2QgWeGJVMEBkWTdZQ
	xtRJKREOLbTove7MPe2YPLw=
X-Google-Smtp-Source: ABdhPJyBSI/DSiZ0X7M2eQghZFQoLNQ/xa4vhyL3fOWg5egCFgNSOpQZhUtqdRoaMsGvCCXr/AduGg==
X-Received: by 2002:ab0:1444:: with SMTP id c4mr5356787uae.58.1629267858917;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d18e:: with SMTP id w14ls165200vsi.7.gmail; Tue, 17 Aug
 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:a05:6102:34ef:: with SMTP id bi15mr6036042vsb.42.1629267858457;
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267858; cv=none;
        d=google.com; s=arc-20160816;
        b=DE80BHrkW7jAJUyYrXrGFhbpe4msMFZz6betKOFDh9wG3WPMsgoP6EfJxqSAZkEBmn
         oiiaOnK2a7yJnQC/1OHS7mbsEGLGWJdyktJDL187bDMMPI3QrvnmnACHmqQswxihwynP
         DPaRvia+OsfeB+v2cxDSmUI0BvoyBXpfuKx6hY1hGfTv/OnRHaPm4Qy0g31V8M9tln3z
         dT2noj7AHjTKaHG7CeC81E5/D3PoM2eGB/hfmbw2uTBa2XI33/Q0qT13dXRaYvmSTJVL
         exmk5ShDVJylzaFPWUGO1uzdq5viHpVMQdp2QYykyrmyJBvI16Wo2hmUREw4UtEMjVrE
         pI+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dkCK961ZyttB0QG+MUzGRc9GbPNZyJOzxDRl3nXU6Gc=;
        b=NRY2Qs2kmCVaDWU9R37Kx7GXyjQ7iCCy/wWSWx9qLglyP5SdvMjFQ1c/7BKjO9CN6D
         yDFOnFaUPbNRnBMkPgeu8Mq5xs9QJFCVjHRhAnR0gxGOle1WJHBEslPA3XVz3GSN/J10
         mFy4Hi3EzWsSZzgBNUPVbc3sUye/nGIoPAKNVqyCf6ixqsUYQcj1c/OPYsJzXRwS6lhN
         hy4sY+qUoSUIxRDuqfvfRwzSG8iRxZT7oauq+MBQi1OKB+qHRye/KdG8cQUFhuuokB90
         +9UfJ0z6iXaORXjhexp2/cl0aKZyKZgVJ4zY2Z+hhFC21x/PTlYcwwVRqiwY5dSPuQbU
         Z0wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F3ghc0DU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id q21si343091vso.0.2021.08.17.23.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id x16so1103943pfh.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:18 -0700 (PDT)
X-Received: by 2002:aa7:8c19:0:b0:3e1:4b9e:cf89 with SMTP id c25-20020aa78c19000000b003e14b9ecf89mr7683859pfd.58.1629267857641;
        Tue, 17 Aug 2021 23:24:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t18sm4582599pfg.111.2021.08.17.23.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Sudeep Holla <sudeep.holla@arm.com>,
	linuxppc-dev@lists.ozlabs.org,
	kernel test robot <lkp@intel.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 57/63] powerpc/signal32: Use struct_group() to zero spe regs
Date: Tue, 17 Aug 2021 23:05:27 -0700
Message-Id: <20210818060533.3569517-58-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2908; h=from:subject; bh=uD1y/xoxNTfC/kMxy1YHPqDr4W4r5gvR6/3LUb/d/+Q=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMqjnaaYE2W2OottJ48+Kv314H+c4/L+2RqMHXv r7V1BciJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKgAKCRCJcvTf3G3AJgmYD/ 4xOx64rrId3koq1dIVBd1c7qtDRXBXq8ocvbv6TiAzQ5OW2IJsAcesmEDGB0aarLTux96zhVYvPuEY ekfg39GKhCgEPeb5jXP+UH57m9qopfeReANE1S4LvEsOJWuHGa5N2yh0MVFMYdstmPHkfTVtOzOdnW 4FpfS36c3/G650GjYZjHYGK93aUv37ocoMf05CH9DSjWcOrGk+21jowTwXALShjZMmIjz5FWSiAPe+ +1eUzjLiqUeJOGZ7Lv40/p3giVTD2/7lEzVVufOf7KMLHvSJmrltr2bLt88CSW+0Qs2cDc8kDwit4g NSusBANylY1K/6uJsrHXOzr8UYkdtB6bsttgeE9V1+wOYhLMeNib3XArxbwXJKppaNHkpLdAyqOc1N hNWxNmFkEb7gLQI+lgaRv2CySpbhIO+o8h7UWzfZ9W2P7Sz8/0+TLD68DRwxBbPxMHy7FpShanbdlR HAvsXrcU8SaCn8kjeuW7pbNPk+pnaYiQiMH5cl3iCfgq1I13gvGVNmMUEdqsNskPE6H1JjH3DkRQLj i7n33M3844UZk+msL24HAJukYQmiAtXqJDGZb3S179NpLnEREMRQveIz0XRN96WDiRCpbvwy644xQe qmxn1RnVllos5p0W46DDS5Z/a2ezsgCPxronRiihYw6gD81m/cUYTrPKHDSw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=F3ghc0DU;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add a struct_group() for the spe registers so that memset() can correctly reason
about the size:

   In function 'fortify_memset_chk',
       inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/signal_32.c:539:3:
>> include/linux/fortify-string.h:195:4: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
     195 |    __write_overflow_field();
         |    ^~~~~~~~~~~~~~~~~~~~~~~~

Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: linuxppc-dev@lists.ozlabs.org
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/include/asm/processor.h | 6 ++++--
 arch/powerpc/kernel/signal_32.c      | 6 +++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
index f348e564f7dd..05dc567cb9a8 100644
--- a/arch/powerpc/include/asm/processor.h
+++ b/arch/powerpc/include/asm/processor.h
@@ -191,8 +191,10 @@ struct thread_struct {
 	int		used_vsr;	/* set if process has used VSX */
 #endif /* CONFIG_VSX */
 #ifdef CONFIG_SPE
-	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
-	u64		acc;		/* Accumulator */
+	struct_group(spe,
+		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
+		u64		acc;		/* Accumulator */
+	);
 	unsigned long	spefscr;	/* SPE & eFP status */
 	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
 					   call or trap return */
diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/signal_32.c
index 0608581967f0..77b86caf5c51 100644
--- a/arch/powerpc/kernel/signal_32.c
+++ b/arch/powerpc/kernel/signal_32.c
@@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *regs,
 	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
 	if (msr & MSR_SPE) {
 		/* restore spe registers from the stack */
-		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
-				      ELF_NEVRREG * sizeof(u32), failed);
+		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
+				      sizeof(current->thread.spe), failed);
 		current->thread.used_spe = true;
 	} else if (current->thread.used_spe)
-		memset(current->thread.evr, 0, ELF_NEVRREG * sizeof(u32));
+		memset(&current->thread.spe, 0, sizeof(current->thread.spe));
 
 	/* Always get SPEFSCR back */
 	unsafe_get_user(current->thread.spefscr, (u32 __user *)&sr->mc_vregs + ELF_NEVRREG, failed);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-58-keescook%40chromium.org.
