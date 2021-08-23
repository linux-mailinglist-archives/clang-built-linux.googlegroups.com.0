Return-Path: <clang-built-linux+bncBC2ORX645YPRBRFOR6EQMGQEMKSKZ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id EA67B3F4F14
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:41 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id z15-20020a4a870f000000b0028c0cd3ec6csf9705535ooh.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738821; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxGFSiVM0FvOKjnFeWPEjYMJDcMxrTXPWTM+VsEFkapKV5uk48ECymCsBJfJv6KV9u
         J/RhcV1QKHd+GZxkV/muleCiJK77dd2G4liP0tSfKBe25b9gpO4NX9o429E38vzOJjzF
         1s3VNSOM+uBQKktbTAmsV6bxDQxWiAnQX5aQ0imk3pzvo7sw05encZ8/rXXCEFtNtCTq
         ykIaWnGlluRfokFoL/H+UbwWpTxDGJs0zMWz2Ga2Ir2sQhhZW4hoNX1TgK/r7NpQn0zW
         iSEO9P4Vpy4rtihRnDAyNh899Gyf328A137BA1ihXmNIv+Oiv4gdKAZQyhsg0NAWqojT
         a/MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=u5gszIveghEAgBIovVSv9glcXtOWiRsp0N6v6Mqa1n0=;
        b=WwDIKgbQspjiB4DTGs+7fATR58yrmUGgg+DcFRr8OK4yXL0cF2X//5Ml1jTxCsrMAd
         LWEo2IEw0NEJ3qlgqq9QJcyOZuJC6gr49fpH3glxYsUIMm5elxotNUjC2QRbcUPKRB4l
         rZ3Jxku6wsWMEn0T/BwRTdEMiKMKJOTFfGVj2Z94cSxuZDWN+XRbvVS/1KY+gIgGdJ8X
         XbDo+HTLbHV2mD49pEt+zeEQh4s/SomxV5RybDEJg66T7OP0JErgfNEiR4NHjNY0Cmw+
         VGNSYUlLIddbWGF7YsT+XVijGXL3O57sK5+VJ3aZMoXgqLaOxZBJeeas28b3xZsx/o+g
         DXtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wT0V05nb;
       spf=pass (google.com: domain of 3rncjyqwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RNcjYQwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5gszIveghEAgBIovVSv9glcXtOWiRsp0N6v6Mqa1n0=;
        b=fqbfWbEbFaOfRRhpXnpLEcRkxI3Qic16tyKK4cUFLqEDNz5bZtmas7BkdSi4WFUQya
         XdY3J2vCzC9jaLF4p0j77wml+qU9PN/b8H7c2YfwXtAr3CSDyiME/MFjZJSZRl7BM4Js
         6pcl2HVPQoB5Jo82+cicVUcaUTolaL8EelZIya97gJomHzUgMy9UIdthVlJkh9TIAa6o
         aYV9t5UUz1Y/+PZjOLdccdUhuKk+hvil4ktXPVYjJctnMLv2UTyN5yoQMcSdKi+5d1+L
         OlRDx9mSr+VRXWMqjCc6F2pioDTAMNuJFrd3doaobFMWsvVx9uBogw1qUQa8gTM6qak2
         EhBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5gszIveghEAgBIovVSv9glcXtOWiRsp0N6v6Mqa1n0=;
        b=W1QGqqA5N8tzs0DY6y/9UalPhVXaG38BGLNTI1raK8a6S+DKOAQdXjkH25HwF+4VAb
         10buWxKd8r+taOVLKEAYlAjdy/3epbd2YfGgwrmSjaZgXwd/ia0uEYC0/9UhrNJolJew
         iX14qwIMkbnrKMhsb+Ooo0uY9+LCqRb811az83U4b2sEFgPjWiE6G6j09tWfNnyqQuX2
         Knu1OvJTUdiOtJwHNNELUqgDbpuiTMEjob75lJ57WJT6wktuLZJMsgevrHjMfHtdK2Fz
         1n40y2FygXUA/ToZjmRYDcnuDstl8ARIxAnqvm8f4zyHgwuj9gi+6mKDemLEdjVYPOfB
         cnlw==
X-Gm-Message-State: AOAM531O6E6CYQ4sOds239kZA0qrfVZhmVom1AXctjwGMWnvSA0zEVkN
	FXzhml4isbdR5moawMF4F9I=
X-Google-Smtp-Source: ABdhPJw/mvLgx3pyTXd+4kPh3fQl7gCzkVxdp2Ik3l0QolF7bmLEku14tg6iQElH7WNZGINuOuAsxA==
X-Received: by 2002:aca:4089:: with SMTP id n131mr12171425oia.129.1629738820958;
        Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:424c:: with SMTP id i12ls1106394ooj.1.gmail; Mon, 23 Aug
 2021 10:13:40 -0700 (PDT)
X-Received: by 2002:a4a:de90:: with SMTP id v16mr20414342oou.42.1629738820591;
        Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738820; cv=none;
        d=google.com; s=arc-20160816;
        b=ixhhWbEyof6FZlIkAKFN4DlKEzHQZwPDpmuat3s+q6ZaPbVW0E1JOgzFoEHNHC3tgQ
         UZztKyAvQPZSr5g0r8RU3SKZ7FFRNeKpFulSh1PGQ2cTOJyX5xNeRKTYvRYZoZQUpBzr
         PIqFDOPPlqyFPsg8lbkjBWvqRUFHPfd/+x8mDoSgCgZlvo8JL4J5p1pDu1VnVfCSXkSc
         vaH05FrQubkr3CrQuMY9fIgTm7KtPPTYmTE39Lln376cDdViac95AfzvEq/k2CBBj/R6
         G6sYVgdpp3ocjDTjdqLfZmiLWDV+4cAk4dzFCd8DD9ZMi+fZTpebAngLmgEreDvve6x7
         +LyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=BYMhGy+epBtHbIYQT2/VbUiIkPl/Kv4Ems36NpeUGps=;
        b=kyJJfxXsO13nV/4aNqi0faRTyzPkEaoQuAxZAPanHaeb1AKldieH/RFw7Pgmo8R+ap
         ppwC99jYMiTdoJDyRfPX3LmEn4N7J5+nOQ3X/FlM2hiNIbTpR1oGERV8ccD+OLCIl8dG
         TNYJnvgXFJ+n3FEKeMERB7AhTqflztZegjkvUs3MF+o40OCK1Io33Ln8th4ryYUo4Etf
         Slqk4M6uEUvpzaZrVB5DETjNdMMB2/xWWrLmLUMRXIhXYstnQcG3mYbv/5+sO1rhKKVE
         miPQuTaHHKZa/jSRBwsVVsHdFuI1rJKiKxnCijx2X5X/T8pfQEOh+sSGoRaLBlgGSVT9
         xm2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wT0V05nb;
       spf=pass (google.com: domain of 3rncjyqwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RNcjYQwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id bg35si422171oib.3.2021.08.23.10.13.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rncjyqwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id b8-20020a0562141148b02902f1474ce8b7so12823180qvt.20
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:2623:: with SMTP id
 gv3mr11237178qvb.9.1629738820095; Mon, 23 Aug 2021 10:13:40 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:12 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 08/14] x86/extable: Do not mark exception callback as CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wT0V05nb;       spf=pass
 (google.com: domain of 3rncjyqwkajedv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3RNcjYQwKAJEDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

The exception table entries are constructed out of a relative offset
and point to the actual function, not the CFI table entry. For now,
just mark the caller as not checking CFI. The failure is most visible
at boot with CONFIG_DEBUG_RODATA_TEST=y.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/mm/extable.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
index e1664e9f969c..d150d4d12d53 100644
--- a/arch/x86/mm/extable.c
+++ b/arch/x86/mm/extable.c
@@ -155,6 +155,7 @@ enum handler_type ex_get_fault_handler_type(unsigned long ip)
 		return EX_HANDLER_OTHER;
 }
 
+__nocfi
 int fixup_exception(struct pt_regs *regs, int trapnr, unsigned long error_code,
 		    unsigned long fault_addr)
 {
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-9-samitolvanen%40google.com.
