Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBCVL4CJQMGQE3K3QYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id D844051EF21
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:03 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id q6-20020a056e0215c600b002c2c4091914sf6497659ilu.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037003; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFvsC5Im1kGbiC5FsRZmFDN1J7kOR0orxL1pwlaZnt0YAFEhlOwdpsdQ1btjkk4Xmy
         zpUYCoXLn+k0lx6AYkZ2i8Urxfpqkf747AY0TsCTgk0Cn/+8dtJC8bZj8z9h2gQ0tW50
         2DquyzhcWkOoUYNL8XiRZKxvDYg6EHYniYgRH0YlXkDgE8cm5PbL+cDwD8k5b3oQ4BfS
         btSG+GF/g9uyB0WMvDjgKwgBDcMWdJwdXyZidVfMRN2SMpl2alGD7HCzCIvNH5w27BiV
         YxepSkTh+iKGZewEWOAKToHiWY+g0303Jc1Csd09l1haBeVHX+aJ8SAq//arNgkxF55v
         H6/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Q2M3dHEogfXyBxPA+JHvPZuF3LAUhu3Kb9wLs6brAaQ=;
        b=bHUGoJQhbrVy936Qpy36vmI2kZoHappiIQ6S9wnsisUgIjvnGOuUG26CJsF4r/q7yw
         oxv4YakWm9PRrPKlTbyxeQHaTqnb4R2o0H8qX0IQDy7g8l6LtTNWULlVp/3IoUNLb2cp
         tn5EoAY2G9jj8nCPHensd188wza+DTddralQIMi7sbd1KtYu6nEGxaiK3CZK+LlOBLBM
         Ui9deF7xdp4GjX4a1t3VZRIS12c+qN6jycKhhwYjODIa9uL+fjDMWbu24dIO++P86gEP
         FKvzRulaujVQxnkx4mPDQMiuJQOJbvqbBl6coCyOYQGyegpvaIf8C9z5MI1dn04Oz8vK
         ktBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eZIpxuzV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q2M3dHEogfXyBxPA+JHvPZuF3LAUhu3Kb9wLs6brAaQ=;
        b=rnsrRzax4Fc2BWbPdyjdcpDqv7WX5Sog21iosHJfkswLNht4J4h7EWyvAg7UgpYd+Q
         rIzHMtVX7W/otjXLI9hYdLSVpEGcU57WU818YWo1vR5hfZh7pI1uC/jM4YonyM3T18cA
         ZMIE6LKO6seH3zdiVzrds3VC7KuhhNA0Wpt6BDZL5blppUQ12mrJxoIFS17TUxzHFO9J
         cBTUzZEP783uJS9yHdEWLOQe2hPa/hjXm4Y9N9O2vRgnS8Bcn4FMy9cDIR6/dFb5YRqR
         Eoj91sbcpOtRTEXX/bxG2QsK83GdNrGCvzVhNp3IZxcyeUqjVKllWYOeOdaUg9/BAM8r
         NDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2M3dHEogfXyBxPA+JHvPZuF3LAUhu3Kb9wLs6brAaQ=;
        b=uauElghTAszgQW6qZAdyWJO1LVyEOBVn6DBfSJocGpdo1Lt4BVyMK8Lw3b6i7W2f9H
         COSxr/f/He2jYTTv86IAzguDvvRQm3shET1Cb84p9X0K0USXPsXcTc/XBHQ3tV2Cf7EO
         Re37QDjaOejxR6c+Zoz9662C1Etwg4FaJk6aP2PUbaMjraGClpo/rfXch2IPHcC3RdHK
         LldsQHZP0DZRLSX4BuG5n8AhTy+mKkZF4FY5hlWurY6Cj18vlipEHKiDP6I2KzN+bjvD
         CTpsqUM/50+o6aQpQom4dhOTB4fwqFbD7QQOL50A7BH9i/rAYCIBCNcymoGgP2E62dK5
         Khbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327LM2qWokMwyehbrH7hRCA9I8zaOAZihq7inViM+vq6mtf9+PL
	O6G6XO6O46oKBrSNvCsvJ0Y=
X-Google-Smtp-Source: ABdhPJz1xZlhZV3TZnZlrED9XZRUYzgqjeKAReFm5Vxf9F/tkWinO5b9UUXIW3igPPxndcMfDIVCEg==
X-Received: by 2002:a05:6e02:101:b0:2ca:c6d7:b077 with SMTP id t1-20020a056e02010100b002cac6d7b077mr5113259ilm.306.1652037002814;
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1395:b0:32b:85e8:b3a with SMTP id
 w21-20020a056638139500b0032b85e80b3als2379873jad.7.gmail; Sun, 08 May 2022
 12:10:02 -0700 (PDT)
X-Received: by 2002:a05:6638:2116:b0:32b:7d73:67f1 with SMTP id n22-20020a056638211600b0032b7d7367f1mr5772445jaj.135.1652037002453;
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037002; cv=none;
        d=google.com; s=arc-20160816;
        b=r/CYJfBg6T/1VVKiyb2ZoUGlhMHZ+9xrumt6AyVkHiBeb0CmvPXF4DiPaA9b/oEqls
         PiwS+cAGkixyA/a4sd7/ZuHIHaNKwXzJYHLBX0iNtftOlTWGSwYwrPZkaj/oztDzOO4W
         fTBGJBfvt16WLJV5md2M1I8YktEwGvW6PYZdAOThm0psVCWaqVc9M7Al8lndJnJiZlzG
         obIXMJNnAGFCUmmKmlnWpQ+k8FiFT8PjOYzzWyWz6Fvu0e86XRnXmrr6Weo5MDaf+4pp
         vxjoa/L7PSVQemDuJVz4klPiMWMgPfl2U3RrbuvXvxuslWQ8GIxh+luEhQEZEkNH+3UX
         EKzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=OcOEuS6jEbLubdZRYm9mI6nzM08ugGxo0tuefY4hIgE=;
        b=R0UGAxkWmBMzZ9UJKT+1cp1q7750hd8Cj1N1XK9r5dCPHwA7JhwZuYP3zBKxiOIUc1
         gq4G3QTMedEIen70qxg7WqhpN29zdxJ5QCc+EsWIBr9A3iGno4hZty8AjmsQRfyoFmqD
         MD7Bv0LbB/V3575CytU2tLjY3YNfj3/hy0BODempuYXMY6c2os64y18N9Bi6C76fChjr
         72HHIxsgkfpzWhlwEMmiWRfgkzdMSy0fxkC86a9gg95/qYEb0T/wCJ0xBBp1yT0BVlf4
         +hDsYWP8U55CoZrUEiGkRB0lzyi9k3k6GhguuPg2oO6G+8M8FGF2rqSZBAwoTodNsMu9
         o/Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=eZIpxuzV;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id j9-20020a92ca09000000b002cc33178a69si900683ils.1.2022.05.08.12.10.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSZ030019;
	Mon, 9 May 2022 04:09:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSZ030019
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
Subject: [PATCH v4 12/14] kbuild: make *.mod rule robust against too long argument error
Date: Mon,  9 May 2022 04:06:29 +0900
Message-Id: <20220508190631.2386038-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=eZIpxuzV;       spf=softfail
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

Like built-in.a, the command length of the *.mod rule scales with
the depth of the directory times the number of objects in the Makefile.

Add $(obj)/ by the shell command (awk) instead of by Make's builtin
function.

In-tree modules still have some room to the limit (ARG_MAX=2097152),
but this is more future-proof for big modules in a deep directory.

For example, you can build i915 as a module (CONFIG_DRM_I915=m) and
compare drivers/gpu/drm/i915/.i915.mod.cmd with/without this commit.

The issue is more critical for external modules because the M= path
can be very long as Jeff Johnson reported before [1].

[1] https://lore.kernel.org/linux-kbuild/4c02050c4e95e4cb8cc04282695f8404@codeaurora.org/

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/Makefile.build | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 8f1a355df7aa..f546b5f1f33f 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -270,8 +270,8 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
 	$(call if_changed_rule,cc_o_c)
 	$(call cmd,force_checksrc)
 
-cmd_mod = echo $(addprefix $(obj)/, $(call real-search, $*.o, .o, -objs -y -m)) | \
-	$(AWK) -v RS='( |\n)' '!x[$$0]++' > $@
+cmd_mod = echo $(call real-search, $*.o, .o, -objs -y -m) | \
+	$(AWK) -v RS='( |\n)' '!x[$$0]++ { print("$(obj)/"$$0) }' > $@
 
 $(obj)/%.mod: FORCE
 	$(call if_changed,mod)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-13-masahiroy%40kernel.org.
