Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIGXYPWAKGQECVJPOXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7765BC172D
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:36:33 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id o34sf11504426qtf.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:36:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778592; cv=pass;
        d=google.com; s=arc-20160816;
        b=rKhugQ1KSPb/AyhNYPaIk6ufwwrtPAdFUqWDtL9ZDiCV59CX0fBZ/I/IWFkNVXZZj8
         +WQqkN/Jcn73KsQR+NVT+FlkDEaPBh2gEWN5bxm3EqU6JPLnGgJzBcSAEPtpJ1oeNm2V
         GSATyOb73lGjdj/jvB0B+McQt1Y2po2P89DPnB+1Lp2lLK9MFUPDDZiXYZw2Xg/4HyUE
         FU3IEBAi3H1quCy1kKpS1IllcdA6S6WiqQrG+msD78dg13hxe9hccTGdmZNsvYDwt3MS
         ktjAHj1bwPj1hmnwDVo+2hB/u2HW8ZJ6J45vZ0D2n3IzlxKD6IneX9/Sm6cv9w9CO/lZ
         EY9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=06ssmdFFj5/EG1k4UE8JEjTw1L/4afFjV55PkLpCj5I=;
        b=bXAtmCbsCK4YRyR+TgzlApzBjlRHurSg6zFOIexUOwn8Bhnd2x2SzrlThYtgkWJh3C
         u+nzcKbwu++NdPHMSraUPu1AQX8OwJ5SvMsOuD16LdYUo1kIEt03YTnSl2Wr0qBtK57o
         rf7zaCCS4WbP8V3wooLK38dThZKWECtaLjZzLgexjjgVp0Ri2JeHfVPW/UXm1hC/F8rG
         QbL8Ck9cN4YzpmTuejta83V1laQCodlIf/z71/3nFJZwznwVtBY8EVDepBso4hH2rraw
         0btqTC0omczTAFxPxkXPULG5YqXbp9nifuR2LbTVJpv7Z9N2u4wZEswEZKfjZWkrS9Wa
         pgYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GIxLEKoo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06ssmdFFj5/EG1k4UE8JEjTw1L/4afFjV55PkLpCj5I=;
        b=Nfd3gZ3+Tkxw/kb3mgQq66eftUK2IH0MJ89m5tnng9SKwE4Q9A5c3KlZeZn2uq1qyv
         bkSwUiJuu/VRzjoJl4vTIB2wx/H41NYNUfd+ITGc+ppOPF6h2E030WZJce9rNZPLpYjL
         3mNMoF3+AcmTgm+gaclcP9+YpEFfVSYrFAPwl7yTh+tLHZB9GQxvMXPfZMtVWAHwgJtC
         y6u9IvCuP5Ti2wNESO4bhQnn+VoI8D5k/MTTjZKfWjy9zuTCQ/lAyZJ71yUXtWcINEGb
         kL25Iq48o7HGI5dE97vMBdRYKJ43EQQJ4S+Tw+d2iW2tuZE+45+2eIVWyLEZuKyvk/+K
         KVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06ssmdFFj5/EG1k4UE8JEjTw1L/4afFjV55PkLpCj5I=;
        b=EMtFOjtGnpapMJhN0r+2TaPYjhCk5Z057wwE/2nhTNTc8vqA8aWHXwJZvu0VZ6VxZz
         OdRac9fSJAVu+pjfVqNniiJmnNQzuVF8y1/2kroRFvSvlKXDUAKxa7UhjzYtSgyIfM0B
         6b2sXjl3OrjNdwSwiVFxyJa9zsVbaazzeMFLvSBMo2PlI83t4B4LeWfMAhbBNocIlNJy
         CrtKP6dqiLo/WgCwNSx7HaaGCJai+CwTEF3LC9tPQYeRxttVayxs63zA4LsWE2Mr0U8Q
         ZC7BbRtSJXtBZDm8gSM2szXQ9Eqk2hi9UbDuYa38BQvu7P+K+BE17zWfEqmO9QK0jxxX
         RN1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+Ugj3FcWFv/sn7WKn4fXkFJwuK6OCD33vqu4xxnQQEoZEd2hs
	qgHe3Z6csB5AbwK/0ERhRFU=
X-Google-Smtp-Source: APXvYqwdlMdDIZ+cTnRuCTgc62AFgawlULc4qLxlBZAizJc8JKF7ZlPSMpL8d1/snoZbb9Huu4lBmw==
X-Received: by 2002:ac8:724d:: with SMTP id l13mr21382098qtp.381.1569778592571;
        Sun, 29 Sep 2019 10:36:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a0d:: with SMTP id 13ls3168230qkk.7.gmail; Sun, 29 Sep
 2019 10:36:32 -0700 (PDT)
X-Received: by 2002:a37:76c3:: with SMTP id r186mr15549618qkc.224.1569778592301;
        Sun, 29 Sep 2019 10:36:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778592; cv=none;
        d=google.com; s=arc-20160816;
        b=VGZNKjnb2HAzcNeDOkfmw7VU9+4IVHm80AlP7GBR+LbO6xCJ1r90QliXqME95WZRWG
         040YKzEj0s+q4A5C+8JHH7PUmZ56owYKsbPt7M2OMZw1qZJRsQc0UHcBJgtft8hlBEp3
         N0oG+wz8/O0zvG185Bxg+tmUKkmV1gCDBPNZEm1vno5Yu7l76Eudf9OCd219TOv7JsNa
         DUx8EluffF+/RPX9fzuPjfzll/P46fgvQJxKmq0VoGDGlGsns7CGjpprwG0hE9X7hSsd
         I9xifkw2TpbyJeHKNn4L0Hy+1tqZCCaYwG7kLUjRI3dY6UmHnwM+gdvOiNw303EYl/P/
         AuOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ajxr02wAHR2RAA5cLm7olMvAuBgd7Mm3EijaDAduRjE=;
        b=EKGGAmLziNMz0FAMayHGeCKnmIuAHclV/AgB0LBqk4xrkXJKkMHb6rUbECy6KjwnlY
         3A2ObaxSmj2+J7dnT1b73BJrqHpaceOtB9WOry0IGYv1cqdTboIhMaY31EepOZ2PBzz8
         ko12ZUELYrcd2L5CcPksCcsEuWqyIKrgRFEOMmhZsB07sECeE0b/zlUpIHrm5PVCqAZK
         QMcEJdBAemCmIVQ+o0CLkDUUl/fsidRyB8vw0yVdNHY+7OQZyZDqj9J0H/n27KCMNB60
         HfVbLoF4Skc1Jj9ZYJszDDyD86E+THWDS4IJs4k7bMel+Vbqc79yeszOeAdi3bipiAhK
         UIWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GIxLEKoo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si393858qkm.2.2019.09.29.10.36.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:36:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2E9C621A4A;
	Sun, 29 Sep 2019 17:36:30 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.9 02/13] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 29 Sep 2019 13:36:12 -0400
Message-Id: <20190929173625.10003-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173625.10003-1-sashal@kernel.org>
References: <20190929173625.10003-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GIxLEKoo;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit c59ae0a1055127dd3828a88e111a0db59b254104 ]

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index 3cc5b2e4263c0..47d50197789be 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -637,7 +637,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173625.10003-2-sashal%40kernel.org.
