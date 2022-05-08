Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAVL4CJQMGQEFHKO5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x113a.google.com (mail-yw1-x113a.google.com [IPv6:2607:f8b0:4864:20::113a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A8A51EF18
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:09:55 +0200 (CEST)
Received: by mail-yw1-x113a.google.com with SMTP id 00721157ae682-2f7c322f770sf105079587b3.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:09:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036994; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9uJqRcBLe1rvTstwBiWMJi2KLXPAr6fLQNrjqnZcCNgI1ZymrtQPyTuLv2hEWORZj
         DY3sCMroTuc/J5UcFLdUOvjJUqeteHgshVAI72F6+9aiqrS8wa5aPU1x202pfgwsujE8
         OpXLN8/Mpp9PcQUHxQ3xiioEnlj+aCeghbqC7HUjFoECYaC3iJzZSJmrvSLY9OOAxqae
         960wED3umiFKusjdUnddVGodXB0SzeZ/KdG44mlUaEC3g0gA6vi+US115AUvWT9rY27W
         nmsEE/TT+A98II9KaL0PvyU+8rVHD/QlYzIZIJ0VbL5z6Komz/Y3DbritY3GTmMEdewM
         +Sbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=s9Zvoj3sF6t8/iHLFMpUdwWMbKWSXsWZ3zjWvpIWodE=;
        b=fsohhVQIp6ZhSvNJoaq3guzS+NRIsHBxuxkksPRmZS3jHJK1EpmvBSd+ZJjVl3cowW
         CeoBbpRLae89+iuvkGRVu4uEwnJdxqD9mqWK8WN6E5jo7YWa15V/BlQ1kPcKZSgE6bXl
         RsP48FAStCNAKuwHXLlmxErqtEovD2qkUfesFIQ0sotmaaE6xAerkxmB2CC/ZGMPU86Q
         0LpwuS8B3QV/PP+VGEAkoTJWuOk7RXqzgEQH97cPYtwBWT4wxurFU2/7WoGQL5pyWyi8
         6NMmH4o+j0ydvkqlHyiayik629UUjWECTlFfKbXR/tw1iGM1sjwckSvyJXQTwmOgcqv2
         5UzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IxQXJhKD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s9Zvoj3sF6t8/iHLFMpUdwWMbKWSXsWZ3zjWvpIWodE=;
        b=p9IuRfh42vCNxawXudpMEPDLGQxzVTgRF3KD2pAnjlz0BoRS6n7bmioJ7fCCZOWoQ2
         HqeSi+nlDFupcQOq+PouFS6gtKGa+q/ipUYrYR5rxeBO2MqcRqdpnNQ2fKJpiSmccm9H
         44MvLA3dWGFnmyu2d3nN7Vidai4jWZ2GujMVRrdkLIXFpPaOzogQx7CLvP1zp7SeaVNP
         EJ5ozaQkYTIXWYT5EPO5vvepNI7JfCZKdz/fso1d9A+ZeCLl/2c3UHQ68610xEJRgRpE
         5M1rFSMPIf+k+MFR+5THjwwu+TEZCbVFPMgiavswwmtKlwYSiiL/y9qWiInqTYFGdz1z
         Cvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s9Zvoj3sF6t8/iHLFMpUdwWMbKWSXsWZ3zjWvpIWodE=;
        b=U+DPMTBouJSWqltAP9QeB7UGSo1WIn87lgNKJjI5C+l2fr6bmcPkzUC3uUz2ZXgiyn
         aXWZ08+grcrW9lmHIju9IsXX23M72fibZi4cIgNY12+A60r//ZzYBaIL2Ahk6UxDXQrQ
         zgnbgFrlGclMaAM7w03aoL9kIRUeE5PWV19LpoujqxupNQoeGfZjugSdhB4mXdmdpg9+
         aHqIQHIVAd72iJjSchZlN+idToPyXVBsKwlf53KgZpX5bUgFS7htAfb8DLIxp7xmvcD+
         yBGPQ2zyY6c1s9LhJ1O23PCHunoxZdnlV+Ryvapm+dzQILrJRR5AelDgxrCd6DLU6c82
         e5yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RKReNNWqE0tNgvBI4cpJUQwpHo80Y3S90A90qrJI4O5zvNZDe
	unIpBogEpXUlxQKtKgHT1Js=
X-Google-Smtp-Source: ABdhPJyjkqWfKD8ED2JveacfqiMTQQLxTVjN+xuiHsc03VTx9UD919kZCTkr7n0ZEibMpaEC5e3mqA==
X-Received: by 2002:a25:256:0:b0:649:6cb:c4b3 with SMTP id 83-20020a250256000000b0064906cbc4b3mr9827368ybc.246.1652036994564;
        Sun, 08 May 2022 12:09:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:f58:0:b0:2f8:f2d7:dcf9 with SMTP id 85-20020a810f58000000b002f8f2d7dcf9ls5820437ywp.7.gmail;
 Sun, 08 May 2022 12:09:54 -0700 (PDT)
X-Received: by 2002:a81:2c3:0:b0:2f7:c26e:5790 with SMTP id 186-20020a8102c3000000b002f7c26e5790mr11515249ywc.84.1652036994072;
        Sun, 08 May 2022 12:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036994; cv=none;
        d=google.com; s=arc-20160816;
        b=mKtRBVigXus0mHei3GgEtdBsxOx7GYHdyWx5DUfPGYsRPQivOAbAVhoLvP2Y7T1pGQ
         dxm4Fbc1FvlU2e07v6pjkmrqiAkEPbNSfQHywTBkrtooJOy1yA/BMYFWKjn9JhVG7kUp
         2CCjl+e2+BlfHBOlV3a9AzvhgPKsg13wNj2tOA0eZJJhfFbw1FW7A1mVURpIX7zkLpc2
         mI1jP0FGVzh9OV7f0igsvPlsKvjl2FBhKW8hAmK+/apI/lVOFPXGcpSw5fgU0tqroOJ3
         nn+nvJ3aswN3tbpJ60DJ7DprJaRtplInmZFya2PgBBwxQshNpCb4638E4oD8iKZtCSNu
         riyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=fTWufSGLPIAfiy+llcmQSSOszMnmVGeqEYG5OUh4Gao=;
        b=EDUm2NERtWaZmgJGBq1Dr6LSlfslw5PiknEpYU3C/uWSqyAAcqNbXf1ezY0qD2ze3L
         Vk2Es60a7ZrboAuwiIsa5wf7vL4CqeB7YSWwd39dTKt/9DEVR5unxFJAN5Sw0rQnghBq
         e9jMh77YFb50PmmWXz5KEXmAszwOwiBJX4pxYC/KwpQorZQdolx/iFT+MVHX29+f8HhE
         1vZILA0H+vxcxdklhX1zMA9hj6BZXjDwLDjF3aOdsVrdAgDNXpN3JVF9nRmyxlZ1OntE
         fZc4gxTxVU9G1CKA8yBI6tLdKPGEzgqFJ5vFnrAp2/OSbTPOO20jJaXuy1DbRaU+dYvo
         O1Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IxQXJhKD;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id e16-20020a5b0050000000b00649fba4e9d4si1086647ybp.1.2022.05.08.12.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:53 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSR030019;
	Mon, 9 May 2022 04:08:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSR030019
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
Subject: [PATCH v4 04/14] modpost: add sym_find_with_module() helper
Date: Mon,  9 May 2022 04:06:21 +0900
Message-Id: <20220508190631.2386038-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=IxQXJhKD;       spf=softfail
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

find_symbol() returns the first symbol found in the hash table. This
table is global, so it may return a symbol from an unexpected module.

There is a case where we want to search for a symbol with a given name
in a specified module.

Add sym_find_with_module(), which receives the module pointer as the
second argument. It is equivalent to find_module() if NULL is passed
as the module pointer.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

Changes in v4:
  - Only takes the new helper from
    https://patchwork.kernel.org/project/linux-kbuild/patch/20220505072244.1155033-2-masahiroy@kernel.org/

Changes in v2:
  - Rename the new func to sym_find_with_module()

 scripts/mod/modpost.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index e7e2c70a98f5..fc5db1f73cf1 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -266,7 +266,7 @@ static void sym_add_unresolved(const char *name, struct module *mod, bool weak)
 	list_add_tail(&sym->list, &mod->unresolved_symbols);
 }
 
-static struct symbol *find_symbol(const char *name)
+static struct symbol *sym_find_with_module(const char *name, struct module *mod)
 {
 	struct symbol *s;
 
@@ -275,12 +275,17 @@ static struct symbol *find_symbol(const char *name)
 		name++;
 
 	for (s = symbolhash[tdb_hash(name) % SYMBOL_HASH_SIZE]; s; s = s->next) {
-		if (strcmp(s->name, name) == 0)
+		if (strcmp(s->name, name) == 0 && (!mod || s->module == mod))
 			return s;
 	}
 	return NULL;
 }
 
+static struct symbol *find_symbol(const char *name)
+{
+	return sym_find_with_module(name, NULL);
+}
+
 struct namespace_list {
 	struct list_head list;
 	char namespace[];
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-5-masahiroy%40kernel.org.
