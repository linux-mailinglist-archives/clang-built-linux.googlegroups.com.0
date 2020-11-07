Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSEPTH6QKGQEAUBBXMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C592B2AA2F8
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 08:07:54 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id p5sf283709pjv.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 23:07:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604732873; cv=pass;
        d=google.com; s=arc-20160816;
        b=OmhpWKEIROfED8odBLwMYFScC7d8dRxjIFQLmH6eaic1agilkQQyOkadw/2+Ai3lO4
         yNg5Ikvvo5elKnBdw13foSxEvfoj+LcUmz14/AoJgy/yX4T6tqomuF2Ja4KFxSx0/7Nw
         SSKyU8TPKbKQIimrCrgN4iwGLWgof0MI1iGG8LVUUHaGDcrClJTt5sYzKCulcx0eALUh
         1yGhpYM6MTCGi5zE+DnzIPHp84YyJR9zvSFWd2EehOFVhsEzL7N8KxiA5Bqvy9tSTlux
         emy8INxadpm1wFH81jMRH6Cf9IufJrdABv+v8E5uxcm6Ihaw8JuyJTz2EBkKDT5yqCKZ
         gSlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=wa7yJH1hf5ySZhjjoIUB9b9S3PBojpwKDERIty/j09M=;
        b=OnCd6SpYGaagm8D7xapnLUH6fWvrq5dqWzHEetz9UPG2HPO8Qtn8jdBAtHa/S7BvUP
         B9i4Zk7DcgLH28/oKgcec6myk3vrgCGv+GN/wrtBO7xc6qqtAQIBkttou/WUKtzkdsU2
         DV3f5PUt/pjyf2vx3kihxJsh8raUudfNNgXAm2Mnm9PKyfrJpaYbvOAoXn1FDGHeCB2q
         Wm3LEB6QHTFkVAk1hscc4NBEEm+zXZoiyeqi09zTmn2910+JQQSo0Lpy3iSCjzcpnaMD
         INK2TA2hqC9ZgQ6COgkB//UUxeoKMAoVUyruwm0zhzjLnyD8lw8n8+H9xI/hZTxkWrON
         0xxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bcfIQYMO;
       spf=pass (google.com: domain of 3x0emxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3x0emXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wa7yJH1hf5ySZhjjoIUB9b9S3PBojpwKDERIty/j09M=;
        b=KDB2snlEdtaVBS0vX19aPUOkhsJ+vrBL4b/yIJyuDunoT17ZPPne77USb0iJjREBvL
         M/oPZQlDu498vg2y5m/HE6yseFDea55i5jR2rineZmSeIEMN+F95qw01kKxzdp5r/HFn
         EzCZhVukQi+GziJkmN+ywvaMk4882uw6g7eIAyQgM2Ee4QNjAgMluCeiAnz4dGzXJWpN
         K/YjbMGV2Yg5OvilayuepkSwoNB9AlwYmcTiLZTeq1PZSkySX3Dtnf1Y3tejqGLM5zi1
         GVM4h/mt7lif88UdpPZLLGywKx10Fbqi9G+u1/PqX3qZ0sA6Vn8thSgoghjq2uoJ68u6
         DbsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wa7yJH1hf5ySZhjjoIUB9b9S3PBojpwKDERIty/j09M=;
        b=KLxeF4CKlqstBHDED8PU+bHU//JXKXf4htTK9bwinnGz3rkfAlGnz+/sdQdGlWcJfw
         HViNnk0qphp795o2nbrl97xXRY+wi2xuh1xRfL80VnfomIlXvW08/u1LR6nU5G6uHagz
         08YtdZqA0uwYHR9Wi4grXcne15mOfQQ1HIswXEVayzLb85VyTAO0OrbksEiTCiXkc3+r
         C9SpocoYisovK+QRuhmJb2aOcU/vMnAaMHWoifOVR9z/b6dauRHPy8cMt0N4ivTz5KkH
         ZmwWEQ6DL8K1DUbM1ZRYhG+1+vT3AHTTOY0i+zRZTlGB2FNSzF9WnKqvFEfFu6PWsGZU
         3G4A==
X-Gm-Message-State: AOAM531/RGu/xyEUG4sRLtliyIBini/36qRemfaJPNAa+9P+QA8ZT6N2
	fPPJhR0yrQlP4KrdzXNg6wc=
X-Google-Smtp-Source: ABdhPJxn+649uh0atmgOvlVvx/Ng6YVOCrJvO+9vXsCGP7NqpNl25zpU5cPZxGjPVA0XDibCsFojZw==
X-Received: by 2002:a63:9508:: with SMTP id p8mr4665001pgd.189.1604732873032;
        Fri, 06 Nov 2020 23:07:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4a:: with SMTP id g10ls1423375plt.6.gmail; Fri, 06
 Nov 2020 23:07:52 -0800 (PST)
X-Received: by 2002:a17:90a:1508:: with SMTP id l8mr3321303pja.125.1604732872475;
        Fri, 06 Nov 2020 23:07:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604732872; cv=none;
        d=google.com; s=arc-20160816;
        b=uge7HdL6Y6m3cF8cA0OvOdiBhsnGm7JnyiPySQFN1SeZwiPAHYXJvW92RQQmv8yF7Q
         gDch/r+yLABnAmxyEdOGsfGhNg1KDfqaP5sQEVJzVxpXOInfXlMqFo1tP3W1Nqz/ygSP
         qgUdt/U6THMTvIhXiBFXvHZREROmJDw+jn/w+aRM+ly/IjfyKP6PJO+u/6afwkNzP3rr
         tNSid66LoCS6mXLWhPTev1s5J89ZkSvHFb2TTjE0nC2LqX3vQK+BFeblpc3Ke8/1R9qa
         SCGyhnf2Z6CV/FHTqeX+6joWi8Uz6ePvQBKSDf4/6vXfYw6JC16onxzUmc2BuYfCY9BQ
         wc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=e8lDdvwN5A87X4mrssc2W/DXV9FoYTcd68DGfAz+9v0=;
        b=T5eaRrnmfEuNNQlm88Obm2mNm5w7FvyelT3UbzakdFgR1gmuVu908ozuZUjktav8tj
         vURsac9C+yJKpzmW8vaW0RYbCE8NV79tkcB+W8Z+jS/ks+YqIKABTaXaA99joUuaRL0I
         vieqU4BXK6X5KlXXAJN2VDQX/jNCgKGhAtA6WxjFVJUYtqJ/rQb8uvNZxmvaVEvZO7jS
         TbyAWRqKcl4bPcY6VKX+2FF+h0tR0ZiJFY/eKFMd7SQ4f43IzTN8koS7L3Q453hY+FFN
         jr9IC/BT1JfABxlUuyp+FWdo4abLRY188BrhL/iHP3PZL2l1YjuNy9CPpC1xF4F1uSQN
         3ZBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bcfIQYMO;
       spf=pass (google.com: domain of 3x0emxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3x0emXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m1si245174pls.4.2020.11.06.23.07.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 23:07:52 -0800 (PST)
Received-SPF: pass (google.com: domain of 3x0emxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id l23so4379462ybl.23
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 23:07:52 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:a87:: with SMTP id
 h7mr7458808ybq.484.1604732871723; Fri, 06 Nov 2020 23:07:51 -0800 (PST)
Date: Fri,  6 Nov 2020 23:07:44 -0800
Message-Id: <20201107070744.1133811-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] Kbuild: enable -Wfallthrough for clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bcfIQYMO;       spf=pass
 (google.com: domain of 3x0emxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3x0emXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
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

Partial revert of commit e2079e93f562 ("kbuild: Do not enable
-Wimplicit-fallthrough for clang for now")

This has been fixed up over time thanks to the addition of "fallthrough"
pseudo-keyword in
commit 294f69e662d1 ("compiler_attributes.h: Add 'fallthrough' pseudo
keyword for switch/case use")

Link: https://github.com/ClangBuiltLinux/linux/issues/236
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Makefile b/Makefile
index f353886dbf44..c1c61c276f60 100644
--- a/Makefile
+++ b/Makefile
@@ -777,11 +777,6 @@ else
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += -Wno-unused-but-set-variable
-
-# Warn about unmarked fall-throughs in switch statement.
-# Disabled for clang while comment to attribute conversion happens and
-# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif
 
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107070744.1133811-1-ndesaulniers%40google.com.
