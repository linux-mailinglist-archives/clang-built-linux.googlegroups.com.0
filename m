Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBANL4CJQMGQEY7MZTMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B901651EF17
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:09:54 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id h38-20020a9d2f29000000b00605ee3a042dsf5568727otb.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:09:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036993; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQB4lu8I46n8SYHImPW5uwwmQ4pj+s7M3mxqm3H3QB3bHob4o6VqdjywEIMJq8Bb37
         yg6PF++o36/nr6OL7Pn9NoiRMUH6WjyO4N4+SIFnbFluRZEfY9hYckFKcImx/T4DMf80
         fylLNtKqHA8sbX/BXh4D9qAH9w91ppTCYHoHJLYtmDS+zPmQxpEWfg19OZMW4NtWEtmZ
         /jfKnw62zEYhKMvUNOQx6XtiOUj8Y2b1LbLb7qg2yNyQ7pUiqvBSsl1+xMY4VjNdfJPt
         QXsZm9NMYgtOv9F48m3Xd/mgp2WFk/KMOCaYFviuVUez9aJUTMhRJXWMGAnvtlXAHhiU
         xXxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=yJ+IxnRR8/QxEGEPlhXNBDPSq4RWxMVtbOqbsMmhDHg=;
        b=jHm6PI9eVPhs5tWx36Yvtoa2ugtYVsc+r4w1K0r2zi55ULHJzT+ZY6EXn6OUzDaenX
         bAXrr40ZbvpIiGw3iwzrutsRR2ZZSXOh0dHthWC3a+9qnCE9fhIxv56QGZBvZ/drjQM5
         eUIgCcU8e2dvR7hr6dM3VNfVmjly38x9M5AQ0pLDCRvmAuyLpw3My3rKfmrwAw2N+tvm
         mo1zZVPywz26icHgMH312LoKe5BVDGLzIoSTjmd5IrfNvxOpMIdpGrmADG36CMuCmh+Y
         L6ynHjWbDob9GdCGS01bxO30ki+lcyovjfExSkwJcgnchkgrZB8SEHJnMXvS/jYMVxgN
         A4hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PTC5AciD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yJ+IxnRR8/QxEGEPlhXNBDPSq4RWxMVtbOqbsMmhDHg=;
        b=n1q1zx0u9CDCqcT76GApW82WaYZqM/++44k62EoJOZrtnhlBDwOiQdtbMDGyQxIyJ4
         JGfWU8J91jYyTNBbpP/i1Qcz4MCpDu1ZmdBBxzUI0bspcbdrc6VyZlcKgDg3jUbAjs/w
         Si57aPtkU4Y0kdI7U+NrZemlTt0dHI7ar3D+PWDA7+DMmikC0xixD2+qOuACjmZLqU0K
         HuK/wB3tEMYzI5KElfPjWn30i+Fi0tEmaT60yc7rFr2xeUePqKXx0ZsWQo/pWnJogrA9
         1omvm3DlSIp6jowQG981FgoEAM1D1uwr2Q6/knQeOOY13YHDsDbvpokrtlEWlMqHJYMX
         Ekag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yJ+IxnRR8/QxEGEPlhXNBDPSq4RWxMVtbOqbsMmhDHg=;
        b=MHlckUWbhC7rNqcNsroWdKjar3u6nACb2DcYeBt9B4L0kScwhlGUUVDpo4edlnJ0nb
         jR1TUrLKqmaOa5aSwqa0Vk+oXJdP1a3Rbi0ArPcAH4PgZlYaZlRvEZIsGY9gRmYxJN9C
         bursc2eQDm6i5AsdDJolmYjUMlVBX69WQMwjrxjbADwCsI+AcuJz98cgkyO0+WDb3LBt
         ayVKq/H19wJqhj7nX1m/qPubfX9jwojF0m1htHFkDo1cAV9cEGpvNDGUtZmd05qgJGSz
         BncxRO/nhVeccAlIBHiWBK810TKab5O0nqhPn//O23UPR7dTEPDSV+TD4BtEIXFWbHZb
         GdrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318B8RXRMK/RnndJbUS7rbmFCueW+y11o288sVt06+zb/KTpf9/
	7AViRx+WqCEGXJa3mY23gS8=
X-Google-Smtp-Source: ABdhPJzM0yh0Klc2sMhlfG2arGDWSqJJYIq+YMRqHTgdGNi0q4Ub7XnG4kRux5iVgS8Zz5HEA/L6cw==
X-Received: by 2002:a05:6870:2398:b0:e9:58ec:953a with SMTP id e24-20020a056870239800b000e958ec953amr8548760oap.120.1652036993733;
        Sun, 08 May 2022 12:09:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2626:0:b0:605:d52a:2a0f with SMTP id a35-20020a9d2626000000b00605d52a2a0fls2847295otb.2.gmail;
 Sun, 08 May 2022 12:09:53 -0700 (PDT)
X-Received: by 2002:a05:6830:2807:b0:605:5bd2:c02e with SMTP id w7-20020a056830280700b006055bd2c02emr4632595otu.272.1652036993377;
        Sun, 08 May 2022 12:09:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036993; cv=none;
        d=google.com; s=arc-20160816;
        b=sDkeMNz9yqPgR/gd2Gk6c2cmTtpCv6c6iEFQzmisuizXET6/JcnQ6xb3qwjcuN8mk+
         golStpdjCzIvMYD4w5fFef6WSL+AxQCHswUL2AuaV/gU0MP3Oab8rr14sQr3OMR3gx7C
         dPM6X8LbUtCYcvfDfPmE7xi9mXs/co1FpUujWuctorQBSwg1Fqvg7d+/SozmtR+5nYCE
         Od9NF4Kr5/4hMXQYtxRjhzzK9POdKFbmCSsSPVAx1qewgdZIZRUpAgAx88AoQv92YdvN
         Jk3XIaPZ/LYaqBv3u1hdqcV9kj+f1hKk4nvpWhzSXF0hc3XMEJntv1d5EXmdqVB4OGGA
         9jzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=EBR85XaMbeh0T44CkrvtpS6BU3Sm5SGyK1Gdmfon54A=;
        b=rxXipM9aDQLPrElgN7IuWALNjY2ygvAGID5NciJGG7WvqbNiDAvm39AVNCsyzvVVPx
         yxzdLsv4KlN92pPWR14amvlEeSbNyh8xW54vP3qzYT3yS32bHOQrn4FqgWRRZM7Mfkff
         QiHz4UdY18V9m7TdJ7UBxacjE9w5sBis8zODZf5Q/+o9ujR8XeGHt/eFTVWfD/MqN/jK
         1LivGUnKxUTmUBapQTZKvd5QElhlXwbRTLHsfLCiqUJtTV1ezMqMl7vySy1AW+CpjhjX
         qZv4VQlSyS+p9MFnPjlKnK1zNZXtNSz1SjHPeduXoQn/ctmkPhpKQ9cxUx603vLyUxnR
         jPsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PTC5AciD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id b5-20020aca6745000000b0032649611da3si613958oiy.2.2022.05.08.12.09.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:53 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSO030019;
	Mon, 9 May 2022 04:08:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSO030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 01/14] modpost: remove left-over cross_compile declaration
Date: Mon,  9 May 2022 04:06:18 +0900
Message-Id: <20220508190631.2386038-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PTC5AciD;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This is a remnant of commit 6543becf26ff ("mod/file2alias: make
modalias generation safe for cross compiling").

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v4:
  - New patch

 scripts/mod/modpost.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index cfa127d2bb8f..d9daeff07b83 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -174,7 +174,6 @@ static inline unsigned int get_secindex(const struct elf_info *info,
 }
 
 /* file2alias.c */
-extern unsigned int cross_build;
 void handle_moddevtable(struct module *mod, struct elf_info *info,
 			Elf_Sym *sym, const char *symname);
 void add_moddevtable(struct buffer *buf, struct module *mod);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-2-masahiroy%40kernel.org.
