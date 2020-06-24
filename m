Return-Path: <clang-built-linux+bncBC2ORX645YPRBH7RZ33QKGQEOXRF6SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB8207D1E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:36 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id d10sf307036pgc.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030815; cv=pass;
        d=google.com; s=arc-20160816;
        b=eRTt6ubu/W+01+Ky0Ac+gXYV6n7cKTxnomTEYt1xjo9ASS5zqxL0nB0mtZ6rsD4576
         JnNxJIM6CHeNvB4nL3+HUFFNEAgIFp9DnCjK+M2POoo+Ekg9tWIA2vruoWowI3KbVXf1
         iir8K7QSTzhtwfEj+8U3QUUhmkE4euwBkZmLwV+q7VeChO2HPPnvBJWlHQtl3ap53zAp
         9IqnbyFaDoCX+Sh4kYo+2LYrJdQ1s9ZLb1ec7usPxqEPDHzBktVLvnqx5QFmUBQT3fEv
         P/5OGy01DveVcDABJ1mpFKzIZv2aGmEfrCu6H56ehbRBRZ7GjBaJ+1VC9zSRqWIqD68E
         rHTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eO89g0pMv0D0xZ66HZNFO3wQlhfVnJXwCriSKZscW9E=;
        b=Pz45ZfUMGKeqPx63kVVuM9yFeEPf6XdA9tpNSI+pGq03+0hGHYD0CEolATir6xdMOy
         F0kIqyMrcLbF7BFBDIDddBJud/f6DG+DEVss48kI9xw/beqnhxC7EK2uZFtNcxd5m7D0
         EK6KZe27DiHqOFiYQyjJSDhKEpcj+bWYX8Dt5ppW6e1TBruuaYP+jFN4ZHZ967v0Povq
         Ybczuvw3oQrUW8uw3MSxq5Rv7Vi+bJ7nssZ6PiBXXtt5OQEgEIPB6f7+aR9nRxhxvzE8
         tNMCqfIs9UJwuUZ0TWChTCx2HMJHZ1muuyHpWZ+BPwxjlWInxiUF9k/N3UnypUl0Stof
         bsjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZOpDZdrG;
       spf=pass (google.com: domain of 3nrjzxgwkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nrjzXgwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eO89g0pMv0D0xZ66HZNFO3wQlhfVnJXwCriSKZscW9E=;
        b=gOUIsYb79iunWs2EWsIYJWRY/F0qv955a2F+zYrUIuvO9yrCHuSkpYZLFS9QHqR/Sx
         jgCMfvnZF28jYKTOWMSl4e8fICIRoErqyBG4IS5m7a3HubFgsz5MmVAi8OLeevPk/wYS
         GUtYRlenldKaAVRrO/bk3bNCrlSs86X0iRtBtw5C6olulAK23OLh2RT//sSjzTyN1K6I
         CepIWhlXKo4fGAENlwTHEuF39r8ANDF2bUIkW7qsojb6nj4fWGba67ZwbeMOwm5Vhb75
         C1k0TN8oc2sr4gcWPowWbvK4uBDvzXrsSBmklwTUnKv7uPnFSFnLJ/F2RMUzVaPo2bKI
         Sy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eO89g0pMv0D0xZ66HZNFO3wQlhfVnJXwCriSKZscW9E=;
        b=TygFzayUankx0qaHgOwWqP9L6o0Oqq5mGAkHoeskWaQEEmME/+x56KRZK4Z33RTvzz
         ORbmchCrgNate5QRsFj0CuRcz9Qfo8s84MK+e7l92sXBakTtjPjoJejNTqQyfw8JwjYV
         j3d5/r+3EeKMu7PbFl9F/bJGFcmbTe+WbnrNde7pIJwYLuQvGM4i8xjnvxiQVgcw0m3Z
         LCgf8usq3JqbOZ22zWvYStDrnnLSibF77+EUqqzSLAmZfKcCqffVQtzkl4auLcRBf2bg
         c0GLrIi0s4dUAKhnP/9QuYaHI/Vkby2eS5Vnf+BlJXTnUE73KySXKBFGkQSXbypoNzbW
         s05A==
X-Gm-Message-State: AOAM5336pZ5bXsoa5mfOEcd9p/PaQa0F5Ut4+Rf2BGvzOeKYe+8Od37L
	FqmJvrS2YaIZ21B5EivD63w=
X-Google-Smtp-Source: ABdhPJxtXnaX5mNMG1DV/xgL0mLkkWN3WF3DPXPxOwbf2twZIqBlFTKWKbK/0GFXLEY4mWFd603UPg==
X-Received: by 2002:a17:902:ed14:: with SMTP id b20mr3751146pld.25.1593030815393;
        Wed, 24 Jun 2020 13:33:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5a82:: with SMTP id o124ls1129612pfb.0.gmail; Wed, 24
 Jun 2020 13:33:35 -0700 (PDT)
X-Received: by 2002:a63:b74f:: with SMTP id w15mr24205045pgt.314.1593030814951;
        Wed, 24 Jun 2020 13:33:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030814; cv=none;
        d=google.com; s=arc-20160816;
        b=hWtoNOGqkBgEnb/Yud++Fp9rFdtqYe/KJC1Vo0r7EyAqK9Cs/+OSDmxGf3BQlN1eZd
         Khz3+JIoQoVDjA1FO5BNGRCOjUU3WMIimGzV5Qn99K0j4369CmqXJT4z7S20SnI9YiEc
         60B0EMcHbJkkh+24ggszlL5bm47Ew5JLYfrvWMUZ+oQzrzTmlVcMZnRBTeT3jO+k91hE
         M1NZ9unHOqi9yKEntlNhYBcCEp7CPgBmi9+0mPtTJ5WE2tfVVBysQVL59kk3Vfa6Et8R
         QuPycoltmvRqLOMiC8sjSF3smAy/7dVZndGVyWJZflyOeWnPQFeE/2qDM15GmU9/J8TO
         GPUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=39oSk63TLcybcU14SgKvCDK3H6XzHtEtduXPCr/44ss=;
        b=GEu39xrxvElnVlEx9OlZe7Fi0545iCDUL0AoWf+iLzbBQqClOK6zQ20TgImTAA1qYQ
         zxSn+xs++ekCJow+gc4wFVUO7ruuekX9YhyDWIgM/gTGtmV3I0oKQO8PlTqSRT3jEj9W
         EyPaxUFktgdDE+t286n0Whc4FzYjVGZuUnqKuJ0Nlx/wI24GHMCVDc4RFcypjxBMaG8b
         6CScgzrjmnhF3u5oxw4GDvocK9crIjIKu5M4mRmdyiyrKkT8MkKDcefAtRtedO8skDxz
         DqumcWnfx3AlWgzeqrY/TW0+RgpTXQ2XptzwepZyi+CxMfkfzVNcrDdMwX1KVH4ylYq7
         Digg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZOpDZdrG;
       spf=pass (google.com: domain of 3nrjzxgwkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nrjzXgwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id w13si345552pll.2.2020.06.24.13.33.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nrjzxgwkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u48so2419642qth.17
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:34 -0700 (PDT)
X-Received: by 2002:ad4:52e2:: with SMTP id p2mr33679309qvu.100.1593030814530;
 Wed, 24 Jun 2020 13:33:34 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:58 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 20/22] x86, ftrace: disable recordmcount for ftrace_make_nop
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZOpDZdrG;       spf=pass
 (google.com: domain of 3nrjzxgwkansp7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nrjzXgwKANsP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Ignore mcount relocations in ftrace_make_nop.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/ftrace.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index 51504566b3a6..c3b28b81277b 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -121,6 +121,7 @@ ftrace_modify_code_direct(unsigned long ip, const char *old_code,
 	return 0;
 }
 
+__nomcount
 int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned long ip = rec->ip;
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-21-samitolvanen%40google.com.
