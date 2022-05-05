Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTPXZWJQMGQENOWQ55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D3451B8B8
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:02 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id u9-20020a17090282c900b0015ea48078b7sf1887666plz.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735501; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNdCE5Kcx+1mu8J/c+AoyUcUudaVNb/HCcIlUl76qeuQ1V9VRJKMOhGMe9kg9beoCd
         RsGvon1MzxrSqP+2u8KvvbfQWhqRsqn7CrHpZ10R3fpIyxKDXjWzkWi2AQf8AT4gzfZE
         +snlLq5R2zox4j33rArIGS54UU+NH2MpzOIZ9Nf9Xs+CEd1g/iBI80/RfBZENk5KVAlb
         BoQTgTeZenbJmDCXpce5+Okb5quhhJH+YkXtDLUefBVDBClAS6/Sma4pmV3zwRemLcmP
         L85It7PKDd6O8PCRLKuB0uV2k0PqTccrTWgHaqNTgCLS3K9uE+bHWIQFDw7LgMeCFf5f
         AFmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=V+GgmDoCFgk1qq5K0HcMPdT30tAiby/e2g65xPGVO/c=;
        b=V5Ic61vmKxH/oqW3Uy6mt/qzBnXWjkkSlIzyQHiEhwxifZftcQ6zdjx/8A68JSlPqt
         4zF7j+4pfC3q6cepG6lwCGsV0Y6R57OC1lLfEL6prCwLvZ4fDZoMxiYuuhhAE5nV4Nfk
         BDPdY6C0Xhk6tl9tYogCZk8gVzUsBmzd40wBPxETXyFf4CtpfvULj62Fc1WgJDLXT2FR
         DjzWH7W3jL8Nd1QboQ5TQTK4J5d7+Qpn7EGn4YcT2//mwaxHpHSbm2Ok+2JG8NHE9Enq
         +NIxg3b2LJcwEfYxh9LrHdexiNu7T/SBJmDsNPJ7fwQLE3Y8Jl46TaRX8Zr098igc0Rc
         q3bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Mg+Td5I/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V+GgmDoCFgk1qq5K0HcMPdT30tAiby/e2g65xPGVO/c=;
        b=CvJFi73lyJ+d4RQ0qVodICKegUCkaZVvKMTJH3+nyDEIG0DmtFldcM3O9CNBTlFLEH
         F/5ZhFG/nAIT33fUWg/GeU4CLUfNa27K86lTdBBponsHL+9RDXwBkTeTo5G6YCPzVHjI
         qCGMJY0VbGPyK692erdem1/pyVIzFZeCLAKm2Aou8ogi2qtpVs7Z5rt+NGaN8pc17QHn
         fb2qA7KjZXWQBDt6SBu98HBHqwiqKTpKcAEDBGNT/oaJDcaiMjKU6KnHKPwkzNV6NT34
         9Nr5w7ZSOp3UlvzVGPG+KPvkSCHZgLiDmd+a1GGtSetPeFhhtSy/y3LRhELEeeidfjGH
         THhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V+GgmDoCFgk1qq5K0HcMPdT30tAiby/e2g65xPGVO/c=;
        b=O2f/5henbRDG/6FfCXfFz2nJ+CZBsQj9Yf3oY7lhTquv9DaAO/J0vT8NLpmIao697f
         fblR6tIh3DVQJJgSC9wDTcenhtTJXBjKzwO+d8hn+McqqcERb08DxZeBG+MDbDRzcyh5
         Zf6iGAI2Zq1mo/PFPAjEsTumT9hSOzNo5EDg09PFsdeeEMypOsXTJF96PMGwlL+Gg4ts
         jMS7R0oOiZ1lrWFMloHoI3XMFVHIts4y5sGPGiqNn/bpgQh0jT6Tx3DEjjkxCZMsmjnp
         BtoCzso5PN9ZnXhdqPgzQXmPXv4W2UlGzIkvYAbtAcnkV7SjhuEtrcZ2LAUH2NxIDUfR
         XEyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aBanYXmYIUGcSgzHYznqQ4XLAjvNwOIAG5ezBsC+pL0zHE/Hg
	cO60B6lqopkuqG0+6Mw8rJE=
X-Google-Smtp-Source: ABdhPJwU+tOmJmx1Y/wGZuxtJeoPlhn/H6L+3Y6N7Nkv5cNf4hMyFMx6kcrbqKtaDp1d/7E/9tnJJQ==
X-Received: by 2002:a17:90a:db51:b0:1dc:9da2:793b with SMTP id u17-20020a17090adb5100b001dc9da2793bmr4414606pjx.77.1651735501593;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1b07:b0:1dc:4ad9:71b4 with SMTP id
 nu7-20020a17090b1b0700b001dc4ad971b4ls5800069pjb.0.canary-gmail; Thu, 05 May
 2022 00:25:01 -0700 (PDT)
X-Received: by 2002:a17:90b:3ecd:b0:1dc:94f2:1bc0 with SMTP id rm13-20020a17090b3ecd00b001dc94f21bc0mr4502932pjb.32.1651735501013;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735501; cv=none;
        d=google.com; s=arc-20160816;
        b=BbGK5ts34/1c0Lmnt6lItVHrIBeBv/Dc99PDgVqq+EnfqcxlPQhx+0xixFLJ/QR5w2
         7TCZ+Efxg5Okuu9w8kmL7rMLaL5VLCIYMTZ2E1Xr1TCOn4Fxbngm2/ZJP040PxFHk4GE
         pU1R4mbizgoRyUdmex3SEOS6FM7eBlPuk7JERFNyncfKB6q2QU7CDbJk1X+IaLIftWci
         EV3N7Bg0TYaTVI1MGsRD5nJBQqDdjHJrM6GdX8HpFn61KpLyJA+dEIq/gDDvgARrEiCQ
         LheD3u0YgjghUScqs19Ab1UxCw/XcJoEckFSbpT5YLXw1wVW8m+VhDTEazyZW3Gr6T6E
         VuTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=q2lbEzTRVD+QPFvQ/TvNHXThm5Pw736ecoqXdaet6u0=;
        b=tub0dyPKPkN1ztp7t3SA6eSJ1qNewdMywVoiD2TP4FXDRRHvSIxhbw/tNh7NOI9GfB
         e58jbS1ZoNL6v8TrP/ltiORETGD/OGhrdongErIJKwCbMW0nQLcAszBiKvc0vfdpZGFM
         55NnKNS0vgLFgSCO2wpx+uv7hfoIb/cNrESwfIvtDOOUnGClBFiwua8/X/jc1/dJ5GqN
         Q7HW570xrk/NY3nFIWGH3z9GEgMf1/DDJp/LnwJe+eiqZsjkEyzMDUEjvR1GyizDHOAk
         lMC5FuP4bQoSJvAlutfK8cd1bh888MxAPnIp4BWi/Ghw8iBMWKu0TyMAKeiGVfCa567W
         KcCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Mg+Td5I/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id i22-20020a17090acf9600b001c69d267568si414581pju.0.2022.05.05.00.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenx019426;
	Thu, 5 May 2022 16:23:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenx019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 15/15] kbuild: make *.mod rule robust against too long argument error
Date: Thu,  5 May 2022 16:22:44 +0900
Message-Id: <20220505072244.1155033-16-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="Mg+Td5I/";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/Makefile.build | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index cea48762299c..e7b3f329d443 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -266,8 +266,8 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-16-masahiroy%40kernel.org.
