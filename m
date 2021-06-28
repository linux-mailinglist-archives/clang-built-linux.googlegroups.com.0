Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBXOK4WDAMGQEPUC356Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 530963B58D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 07:59:58 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id r15-20020aa7da0f0000b02903946a530334sf8840447eds.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 22:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624859998; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZx6AmxFiJ9LpYSNWMciX8eTLVGD4U0V8w1OVmcbdp4KHybak8f9dBQUx28tuxMKSG
         vIh8+qAAcqf1qipkNKWDC9YDjMkBFVjuk1ZC5pZVD0gYYHI1WZhwqZvRiFJkFGzd0DZa
         xaEpKL0KW8cHIZl9Wf/oyBDFJtbqqMpa9gIeVI0L/QYderZi1qzkxGw7TN2GHOXDaPPq
         q9Eohu+MFcG4O5/V6GUaeqMn/ZUDzAgJNjGmPw/qMWpLosflUiIxxcVVe0eHBTqzMwn8
         20yQh3G81kYMvBweuolj29ZBuaLTH6G4zRA1bmqplARY7CXIKncNnq7G6tzA8tWi3Fso
         2sEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=WgAwunL7cOR0/OduTOAmDq4fybFpmiBQiWDITGIYpvw=;
        b=Inph68R1WO2tsMriIE93lyTXkFVSjEHIbHrDqHiXKfqd7G1hba///KBfDObvEZcKvm
         uGXJokKl0Pw5/BWr3TMwDOO/oCVIPjDPQ9ezNkkZGWX4NM06+9WghKorpiUK1bHpbnaR
         Nxu0/X77zJf7W7WO+uEsOzkqtGmZv9SUKM6FjczBDUsrTkBH3S+r6ImrcAK6JBVCPSB2
         y/347k6MTw1IBDmScSzOaGBgDGTFvEPecim3/zxt8I4BQy+XQgjwmumC4V2F0L8e3MEp
         EVgywrm1twJ9l0ONWUYL+JzqKPQJUEZXNfy0zDnilsHJcJ0csROsNwj/uNTXaYo7r5MU
         Scww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CvkBdWJ4;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgAwunL7cOR0/OduTOAmDq4fybFpmiBQiWDITGIYpvw=;
        b=O1kC/Tx13YmtUbXyKAZ5qAE99SlibH98iASAHQyga2NMRKlEtSUq4owixT6NOq+yjh
         xT6jfJ4yI7koENjMMTjYZZFmyjmBGdIxVRW/JVBpsBuZ4KcxYq2Fq6cKbGuiWjK1EIzX
         G/oWy9H4h4YzA5QL/Sjk6g4Y1YntYuWAojv7UqeeVQRwHOHFfDIj4UtuvMd7hcgzVQBe
         t582ZZWP7ljQnhe5VktBrpNT6Fx1fXqfJOpRUyjGvm8D/4ehE+ehC7TKV/atANY6fViy
         vQLmzQpGmqPKMM0dEhXMnpTqFh3vsOfFeTQUbUcCDXvD81WWyqtF3Is52daf9FBh/Azy
         eZ/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WgAwunL7cOR0/OduTOAmDq4fybFpmiBQiWDITGIYpvw=;
        b=B/YsSDH4FSf4H0JWQ6BbPEI9ccVSqApSZANK88+yEvIEtQGXp0P4IsA+SSNsabxrco
         LgP4dkA9+jtIXT4srBMwD7KujmX2pR+IFKdC53pDylnmH3J6Ls42gFBLc4mTKiPin+R+
         p1GiCpAB08PX2egZUPekhkAWWW/0LExUHwjr9eUbbiLmWZlutXYIeS3MuZGUdIYxalV5
         S1bVJSNnBEENp6FhLpqKkx8L5x9dXj0TwvJELFBYxcOWsuUOwTRplPLax4Gz8OYmpccy
         9MbTIV/jw4utMkrTBbGtkTy0cG+xh87d07tKHWbvLuc/NZIm9JJ6/W8ZwUQZeRdKVj3C
         s8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WgAwunL7cOR0/OduTOAmDq4fybFpmiBQiWDITGIYpvw=;
        b=X5/eF8vjAtl5k+rk6Xif89A6J7ckeaLgfl5PTF2v3ZzHrrkUvFXvYy22XCiANqRd0k
         ZepRPWZdke7fRSPzV9FwVTgCk7+8CSAxcSf3zZ8k4wnrWvqPk9YSQsndcCaQnR4N+iVL
         w/j3wtPqLCeZdX+i6YzpukFbhpP/SV5nusWLjDju5O2UGkuzTsr5Wpmjj8yQ6NJtPfwq
         qQVes9SbkfJ/dIPEbTAfCIsBEjGY7p7SKRXS+ISX7aKfAE+n+4Zo2rXLZZYj2n8cFnBb
         1u8wxJ4LMRd1enLdudzaG12CiTKUxp8UF1LBQ6rzoi1ZBzIV4Cfa3TieMdnfSj0NRviF
         nz8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FHHLUOkSjvgpt0GGVTlsgG4uH+5G1zVl4fsMbwtljvkTv+GRd
	3gkIc+6oHrP8aeSqgmfRHkU=
X-Google-Smtp-Source: ABdhPJxWuC/HsZehFqsrkjgn80BgZg0IUTihWLHpNB6Np5fFzgkYfVbhXOkaoIC1Y6zio2eChk84OQ==
X-Received: by 2002:a17:906:b20d:: with SMTP id p13mr22578110ejz.519.1624859998030;
        Sun, 27 Jun 2021 22:59:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c14b:: with SMTP id r11ls1199257edp.3.gmail; Sun, 27 Jun
 2021 22:59:57 -0700 (PDT)
X-Received: by 2002:a50:ce1a:: with SMTP id y26mr4823443edi.192.1624859997024;
        Sun, 27 Jun 2021 22:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624859997; cv=none;
        d=google.com; s=arc-20160816;
        b=dcQiikk5gOH4+AsxGajd2lXpOMNrBxfdlg+4Oj5f86lR8Co/LkScCNJIKIPmwYzS2H
         zIOjm17XeBqjhYGCEQhTMcRoICJgmGp2iT7mA0Mi7lnwM5CE50gKQD0qcKTx744ypIU9
         hWKKVi+bWy3jRs1FO2qrMOswiH2sTMCzeaoIIbZz9TEvJymBXvtdGdjmxhA0nIjLrX1a
         JEc7R8H5pJoQsq19+1n0U/LL8c/I9B66fz5Qraj6aK6edDy8DBZBPT4aM+180HPQJAcj
         7d1Yq5yF7HRShmY3I97cNGJVQOnHOGPCHJDJpCl7Uwwojhk8hSkW0wMqszFKvg4/Mw+q
         noUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=scSC9FPsYN/R9j9GdoOTllx+3vsFm/mdFb9quS7rzYI=;
        b=Lg0M1fHsQgX/qe68J8lwjlxpCq7Z+D9x4ajMIOiyqnBxDJxTfEKv1eIPOGwOEhw20p
         tdsioRgL/Em1may6LqvFQzoqjeRTYW4EPB7YDpAucUmjEIaqYTvIDfNdMCRyfi6wH/up
         4zVULi91y7NzDDH0UdpzpYsv2DRs87e/ts891ZenxPbciBxKSi4ywDVdFvok0Vop418d
         cWxISFdLyeHzrjKRTegmBaFF28m1Gb/phDmzk0RoCOSR2CoSeh2urlCc0neaAjlNVRTv
         Lv8fR9k7gwNNac0TyfD/DxbzdPPmWTsiEQU/CJWtaG/sns0KML8UP7ySc1cFMcjpkneK
         7nZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CvkBdWJ4;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id k3si658883edr.5.2021.06.27.22.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jun 2021 22:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Received: by mail-ej1-x62a.google.com with SMTP id gn32so27916022ejc.2
        for <clang-built-linux@googlegroups.com>; Sun, 27 Jun 2021 22:59:57 -0700 (PDT)
X-Received: by 2002:a17:906:a38d:: with SMTP id k13mr23284181ejz.250.1624859996821;
        Sun, 27 Jun 2021 22:59:56 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2dc2:cc00:2831:3317:971d:3f75])
        by smtp.gmail.com with ESMTPSA id e21sm6390506ejy.54.2021.06.27.22.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 22:59:55 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-doc@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] pgo: rectify comment to proper kernel-doc syntax
Date: Mon, 28 Jun 2021 07:59:47 +0200
Message-Id: <20210628055947.6948-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CvkBdWJ4;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::62a
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The command ./scripts/kernel-doc -none kernel/pgo/pgo.h warns:

  kernel/pgo/pgo.h:112: warning: cannot understand function prototype: 'struct llvm_prf_value_node_data '

This is due to a slightly invalid use of kernel-doc syntax for the comment
of this struct, that must have probably just slipped through refactoring
and review before.

Rectify the comment to proper kernel-doc syntax.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Kees, please pick this quick minor fix into your pgo tree.

 kernel/pgo/pgo.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
index ba3f8499254a..04fbf3bcde1e 100644
--- a/kernel/pgo/pgo.h
+++ b/kernel/pgo/pgo.h
@@ -103,7 +103,7 @@ struct llvm_prf_data {
 } __aligned(LLVM_INSTR_PROF_DATA_ALIGNMENT);
 
 /**
- * structure llvm_prf_value_node_data - represents the data part of the struct
+ * struct llvm_prf_value_node_data - represents the data part of the struct
  *   llvm_prf_value_node data structure.
  * @value: the value counters.
  * @count: the counters' count.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210628055947.6948-1-lukas.bulwahn%40gmail.com.
