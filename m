Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBKXDXKCAMGQE3EORWYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 27790370C46
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 16:05:32 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id az20-20020a17090b0294b029014daeb09222sf2065699pjb.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 07:05:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619964330; cv=pass;
        d=google.com; s=arc-20160816;
        b=YyrJxbEq3SpeEIq/ptAjJu+jC6QpTl0T2pe1wjI3tJd8cooQdnz2fQubFdYFPoklMM
         K7FeXwndpcdwnzh6KhgrjhmUjqiSMX73sGMOip+ZvAqUa1o+7fmpz8hWewRyr3X7fMcf
         NQA4RV/4uxNst+YMZP1AsTNPEmgIwNOLXDN9dHe4PV+cT95FjqrBWg3UaRFnDCFzkEqU
         wTe9XkpQq8BeWuqToFnBDce/82a/2hWw+s23a1znf+/YzSLHPaRkV25WYfB8W4JFaJvR
         ksLYmCK8Ph1RoeXJOufKTGk06irlFpymbs0shEDVRuVBISbUvksB54yJL+8Sc0zfL4qg
         4VSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=DyQL7g0STqL1Jl86FBaMoxYWR6k/zfmePTS3rNJzN3U=;
        b=lv73zQqGbf/4ZUI6KZUtnDKh4M4VdAbNMcJ8v9Y5eiXzcYBGkgZgvgxrkitL3xsT7o
         uu9hdlZeZy3qIdpBlaDNWTQtIAaLnIrrlABZunPa07IJWXVKaXpMiDX1X57JKm/pNqgg
         L6qX/VkDxY4HlmAYM3bEsCet9FHp8lClHCyw4r+MpkXZEvWTDH6i2WL0HqoQvrjlrWqg
         6lgvRy5+93iYhwd8JA0F2+g90w7PaxVfupDwNbtLV22SLQFLGVhRWmiY3Ou7W8EVsq7J
         KfBDsVBhjc4pLE7tSdncbuP6CNyeje6d5nAhyWKrjv90WvzxZZfy6EeIFceWK1zZu3yq
         IEaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pixoANdd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DyQL7g0STqL1Jl86FBaMoxYWR6k/zfmePTS3rNJzN3U=;
        b=mP1yBxxbmtSl79b+KUlPj2a0luLyWdJZ/wpwmsw7w5pmPvOaORYNc5naQFtwgXbn2U
         vUzB2mlzvSbhRdUWZbl1TH0iQlvmzwxr7YWUBTFuSuAjTWLteahj811lxnaa5EYeku7z
         z1+s/eUS73k1O7mkka99Tws7qt5BvrzRm3LqgqkIdDvU87W4ZirnIxTnRfnTa+uaGFn6
         NtYRRgm+CubwXLcyUwBNulFWdbPthl+ukZXH2n7j12MfoBej/c1GVN0/hpQPT7MFTQyF
         U5e0aLn1DHzhWZgwmAZnG1KMBxNb7kV+63KM9SuguAOJTiZMDQ2qR+dvtc6PW8R/ghLQ
         WcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DyQL7g0STqL1Jl86FBaMoxYWR6k/zfmePTS3rNJzN3U=;
        b=EZDl4vPv59u5oQiU9YABOVVsRw+gTfnssCzHjoVyELNjstdBZy+cXS8CIh+bkaf6Mt
         bWmAtiTznXI6HypyQcr7j1Nj9z5vddrvwN5a2DpNxStk9knSHGylMv6fYUlHYlfjkTVm
         wUlfuDJj60R8BkCaT/Ae8VuhR/3XAyQ2yvrm5T4l+WfXRV6tSpt0IgS9tV9n2dlkzi9i
         GQ+1PaLQdMZvtlAYRQZF67iw/Adq/A7dm6MZkE3Cuys8gOVjhAc3rVfT89rgQv3CnEUE
         LQXe0HhrHUxcx+KkBeB8pzrk6bESnobl73zVLWZnhFYABtkQ6hwyxHnNTn6e/cc0IdRU
         degg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+dHVeGf8i0xMcpuCKpqZ5H3ULOnILMBympLBeiLB610SaRYLP
	LwO6vpsSFtmekQVhY11NFMg=
X-Google-Smtp-Source: ABdhPJzqfEE+l+C27KbvPDO9hhvyN5m9dQbxFOQnE9dVcDTc++jRnHBF0KWTLBywMlm1wCGPW+Wobg==
X-Received: by 2002:a63:145a:: with SMTP id 26mr13580894pgu.300.1619964330639;
        Sun, 02 May 2021 07:05:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls5839755pjb.2.gmail; Sun,
 02 May 2021 07:05:30 -0700 (PDT)
X-Received: by 2002:a17:902:bcc7:b029:ed:6f73:ffc4 with SMTP id o7-20020a170902bcc7b02900ed6f73ffc4mr15337841pls.1.1619964330108;
        Sun, 02 May 2021 07:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619964330; cv=none;
        d=google.com; s=arc-20160816;
        b=K7Z2Wg5voUuSRwGkBaBf5HwJlUEphq7uAiaCVzTw9ujCMc0NBv6VJmI2a9W/1zVIAa
         B1p8IP4hCwzn07kFyCmNQeBndvlou9DgKtb9dYw0kSwrULvfjeu5kpRs2y5wjxXTBvG0
         NI35eybnw+5I/UT0Jm4Qf3dy8FOQt57YrhAwmgvfzoA8R75HFL8aNZgikssKM2Yhp2lQ
         RNm38AnL1Grt52Qz71S+3npKiEagCxtcMV/Kcr29vnpYcb2hjpSRWamiyppxs6mhqPYg
         1kP3E6FP3xgCewIMxe3WYBnrbfMEbDjoiUf2ep4PCArf3A6uU74qurLleFrz7bXGdrA+
         6+2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oZo44Iw4Wvd9VO5f0VSSGk4Zs0u2eWRYPjqvGBzbS6A=;
        b=VgNDQRJ+jYR6cs1GJwQVobrhPz0rbmhACkRd48F1H0MSIi17HdAowXJUmbd+y1rVTy
         I04HElALdYF8D8Cy37S32YtY3Ta8xcgfEigNpg+bhOYTyrR63RCLJXn4FsyUjyPHQovK
         6Ko8L9bYYcBDeli6dD8QcEOjjfdkX+Uj1pzepQr+YeLkIqR6NJhAiaUidyAAQkmftnlZ
         EBcla67WysTthVvOk7JUTDN1AqcCMq0Kq+mkHWZYZKknVb1MbrmzNoKJHK6DKJSWTMaf
         GnYJeA1EApy+LeTyXnKxWkxQ7iOY1DDPlSvHCWkQ33TucISqce8Kj0lS/uxsKBHbXJaO
         eoFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pixoANdd;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j184si800226pfb.1.2021.05.02.07.05.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 07:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DADE861423;
	Sun,  2 May 2021 14:05:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Millikin <john@john-millikin.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Ard Biesheuvel <ardb@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 09/21] x86/build: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Sun,  2 May 2021 10:05:05 -0400
Message-Id: <20210502140517.2719912-9-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140517.2719912-1-sashal@kernel.org>
References: <20210502140517.2719912-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pixoANdd;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: John Millikin <john@john-millikin.com>

[ Upstream commit 8abe7fc26ad8f28bfdf78adbed56acd1fa93f82d ]

When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
contains additional flags needed to build C and assembly sources
for the target platform. Normally this variable is automatically
included in `$(KBUILD_CFLAGS)' via the top-level Makefile.

The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
plain assignment and therefore drops the Clang flags. This causes
Clang to not recognize x86-specific assembler directives:

=C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_m=
ode_header
=C2=A0 ^

Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
which is inherited by real-mode make rules, fixes cross-compilation
with Clang for x86 targets.

Relevant flags:

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

Signed-off-by: John Millikin <john@john-millikin.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://lkml.kernel.org/r/20210326000435.4785-2-nathan@kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 6ebdbad21fb2..65a8722e784c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -40,6 +40,7 @@ REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMOD=
E_CFLAGS), -ffreestanding
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-s=
tack-protector)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-a=
ddress-of-packed-member)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_s=
tack_align4))
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
 export REALMODE_CFLAGS
=20
 # BITS is used as extension for files which are available in a 32 bit
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210502140517.2719912-9-sashal%40kernel.org.
