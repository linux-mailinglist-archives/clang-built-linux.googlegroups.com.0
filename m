Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLEI5GDAMGQETP4JWNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE863B6A96
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 23:50:37 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id c17-20020a37e1110000b02903b3a029f1f2sf5323495qkm.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 14:50:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624917036; cv=pass;
        d=google.com; s=arc-20160816;
        b=HfvWUW+LiiSR/wOKOEBPdmZkkPJS5G3wR4kEprm/FgXb2eeigE+SFJv5gaheO7pw+k
         Q+Gs2DC+2FmEY0D4EC4fETFhQ55LW/LeQL3OwHUQ0C9dTUDkqNkY/AnS9Pe1bY9JYKFw
         Spnx1G6nMta1Zm1I7fTZMlHvbYHJWUJQUhhYkuKMfefatw+VI4XdBgIAb2tCv337soAX
         Lcc+bYbJtN9+zNFJrTZxtvLI3lQFiwr0xxnbEgtDVr23QnjFRG0t+w5M4HgmwmiEYp6E
         Ela4a2thLSXPoNdEIzSMvho89NEJpgQknNqyUBhpsPa2Yn3rtPKliVUyOJ8BVgxnkVpT
         esIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=papZ+uH/2satWQ6tPnCvTPMCnoc9udDbXkOJ7SliXh0=;
        b=QuNZ5rMe/6U08G4z3vyvqpV8HQCUWHs6/QDG+5QrBGhRMbjRn710MJnZrUsgFH5/hR
         OQjwSuWyYCDHr2rPgjlAeKA2nWjHvOnx3MjiQDkcb11fKUc8R9FuecDysWLiBXe5yje6
         lhY+J0WcqlzxfWfSNZ8U8RjkG5QNKw7O/IN148pz6nUI8n0s7aWPN5YFQbsDGnMNK+a7
         8FfV+jxOgfu/hK5aBEtWgSgTtG1yzUuoPDzoIEIaphaCR+czXObFaE6g4Y7T/1J2Fk8V
         RhgZ8+z++KP6vfhKm/+1K5DJ+z4MYkGhUErQnhlCl6NPgixcJqpt6se5Vibm2RwXuIqI
         epaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=onGcYsLR;
       spf=pass (google.com: domain of 3k0tayawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K0TaYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=papZ+uH/2satWQ6tPnCvTPMCnoc9udDbXkOJ7SliXh0=;
        b=iicjKenMotaBuhrriJQdL33qiYIKpiASxzh8V8rXgPirhzcV76xmR7cwAFTbCWYrVz
         8eRiBNPYLu7i18PsVMEans/XGyaxlzbNIHnsHVUsLbYJlevR5maMHgPsa8oZ6QU17Wqh
         CYX01Er3Q8kPNNdxCAPLLenoOM80e+SEBmFw19Xjl7xDcWirT12INKyLSIhJ7a3/NIej
         KqPf1nj2BkBN0TtTgy5J2bUMNngHFmxp2UkkvJ6CFoesO52wYvXVgeAs4OgYtSSNP9d9
         Xk/DqaUIi4H5p2ES6meOqxEVIkTqGwsPbQtQ3n4MxuXC8Wr/YrfWHq8Qcat+L+ThT/r0
         fWgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=papZ+uH/2satWQ6tPnCvTPMCnoc9udDbXkOJ7SliXh0=;
        b=EzdLiYZs8xA7SS1UAqwNebVC3lerVNdmbCL+tiOh2ZSo3CA0fytqdH+trdD2YjWGWx
         KePVPD0kPV2YfS5na7bcBxOKg7bfFVKBzc/tdObjWX68xFdK2xgSytlt2gzALv6eyFJI
         h9UX5b4iBeV+uMBYvx+snZFVyzDQe7TXQLc234GmHmujI/w4h6bQrygVx+ByPuvTaW1+
         zNbKoCMpGjnFrKdRUOrMlJIBXb3S1WSyF66p2Pf91ZPpvrE48T/KRUbgXQh45odNoLfo
         cSt6EndB+uTTmfNRXfXcBKWPCBghvhkmz9jMZDleXYWfsMobRMY1IPQI6qzHr9/TVmqN
         CHbg==
X-Gm-Message-State: AOAM531lQUtS7BSRYBVGrLugKckLKmHVpuROu4kvnGqnL20/qMHVeywY
	TEn6hAINogBC6PCTjPuncAs=
X-Google-Smtp-Source: ABdhPJxcGwLfiQSkl74ZiqEsL4azJtv/T577MoR5phudEMe0GalJq0MNoFm/VTmNewKRJprgMivCtw==
X-Received: by 2002:a05:6214:1085:: with SMTP id o5mr27748448qvr.13.1624917036283;
        Mon, 28 Jun 2021 14:50:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:62c2:: with SMTP id w185ls12682572qkb.6.gmail; Mon, 28
 Jun 2021 14:50:35 -0700 (PDT)
X-Received: by 2002:a05:620a:e09:: with SMTP id y9mr27119188qkm.359.1624917035856;
        Mon, 28 Jun 2021 14:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624917035; cv=none;
        d=google.com; s=arc-20160816;
        b=ewNlKtqVw4FfgpVG2Ej1n9DmRTHQqehoLgHUzNPcY1QQk/06cVC4a3AGV6gQI/7tWu
         2k5gpnzSaP9LBiZ/i+ckiex6z+ckeb0W96t8Do0+xe6BuDK+uhxYTrUegKVh8wmelFxR
         0yh0Y3G90GUu/x54h2MBTMXDrIlK0YLkapdqW3nPy2VOxLngUqgiXl9axRWxE8e2FM3C
         hl9zlonGsCBMTqCGF0hJ7DbOPqhOVs1IBCRM82W+iAup7W/vpgNDNOU2jUCTjk5AU67M
         KyGjOlHC9ADgBERg1QpAR6dYZ1jLb0VA99v+dfnK4Wmil9mIsIFu8OqlrKklZpenhH68
         gYRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Efx/CmGo/FdaMXlXsMHfWQRW50yqOipsxfJJlDF/4yk=;
        b=V50Brrr9kauXQqiWaCnM9IN8Lzosn/oRJuifHc9EhILx9dsyJV6AJJh9+8Yvhewsrn
         dT216aZ0V31R1qhxE/ujgT7pzmIJr3EmZLmb9uN3ChN9GGqf6CUb55NHKmCtLkO/nZht
         uWr+MmlYfy9Gc+3Lp6wAvih9xoBY0TEmCk859NT9ILhFbbchsZIifvbPlnlSECW+AYoM
         8z2a3b/qONenvPohQXWquHhiAnIjzrvHMNDtQi8Zo6YY7PcNZz6RV6L/7AkgzFBoTZ16
         BOhi2Q8i417325VKLTc8qv+XCHJgwoZRob7AMClUjSWtT08YbH4N1uS787hS7uW8USe8
         wAtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=onGcYsLR;
       spf=pass (google.com: domain of 3k0tayawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K0TaYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id a21si1355821qko.0.2021.06.28.14.50.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 14:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k0tayawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id y17-20020ad445b10000b029027389e9530fso18944707qvu.4
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 14:50:35 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:6f7:d09:f550:3380])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1383:: with SMTP id
 g3mr2924928qvz.3.1624917035540; Mon, 28 Jun 2021 14:50:35 -0700 (PDT)
Date: Mon, 28 Jun 2021 14:50:26 -0700
Message-Id: <20210628215029.2722537-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH] MIPS: set mips32r5 for virt extensions
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Nathan Chancellor <nathan@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <git@xen0n.name>, 
	"Maciej W. Rozycki" <macro@orcam.me.uk>, Tiezhu Yang <yangtiezhu@loongson.cn>, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=onGcYsLR;       spf=pass
 (google.com: domain of 3k0tayawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3K0TaYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Clang's integrated assembler only accepts these instructions when the
cpu is set to mips32r5. With this change, we can assemble
malta_defconfig with Clang via `make LLVM_IAS=1`.

Link: https://github.com/ClangBuiltLinux/linux/issues/763
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/include/asm/mipsregs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 9c8099a6ffed..acdf8c69220b 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -2077,7 +2077,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2090,7 +2090,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2103,7 +2103,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2115,7 +2115,7 @@ do {									\
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210628215029.2722537-1-ndesaulniers%40google.com.
