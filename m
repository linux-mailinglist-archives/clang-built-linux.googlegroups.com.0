Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSPXZWJQMGQEHE5NZVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BA42D51B8AF
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:58 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id i16-20020a170902cf1000b001540b6a09e3sf1899434plg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735497; cv=pass;
        d=google.com; s=arc-20160816;
        b=zp4lxdDr/TSr+IsgKmlQP86cH9Qjc2ddTlzd20wqyhDoUTu7MVNWRRtQaU1seuHmsY
         7uERVruFGEOlcQYa82RcdKMakVi+fliL7zRJT6zJTcUE15H0XK6a0p0n2aZxhcroMV3i
         hnD+1VNID49Sveg5SwaJfS/x9kcJ+xKWo4n3VusroCjh8wP56mXA797hasvYagxvVFd2
         LHESAf8OcqzB58fYSCegw9lO99NHVY1B+gFIqPF6eJkrfDsHHR3XJ9KydSJIs7yWPkP0
         xZ+aC/8hVYqZWoOWfwfX0c/niiYuK3XUmuyMJgdg7/fJg+8iNv8akI/h81FNOzcsIF1V
         sIjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=P1yXPe9pIJT6dIJgV9ixAj/bwuSiDVO9Coy6wlBwb3k=;
        b=OJ5w/hc9fQgSG3shVaqZNLBP0y2tmqr9U6DolM14ihhr86aXKK+kx47UiK1lkswxnc
         X/lpK+b/TVdLIXsOyoT/1YJVi2kb3BtxhrEeDbJNnb7QJRbR1DJJPkt3r7JnG4iuLJxZ
         TCcAxbCcCBgOIQQxdY9/Zppxe4mrYYwerjbsNiCDk5PdVR43QQ3RG3m4Z2xkhQXBTaxN
         59JccNscIYTuxD4Nin61Hwt6cE5SSZK6rGoeSUEnnEHFwR/zEYLyu1+BbXgZXjXjgiLw
         VanesUNW168zdEeZfMFDPXlD83LDNE0IkyQS3S/fUOjNdzUaKUMbiZJHDB66w3Qemv7b
         4uHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2JXJtDn1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P1yXPe9pIJT6dIJgV9ixAj/bwuSiDVO9Coy6wlBwb3k=;
        b=KBR7lDx3kB1sutNUIq8CAXq5WHbNUmr8JSiYjJ+OCZcTTc7NIAxgjHeaqUsVAEF+dC
         p1KUprB7qU9TvoJV0IggJYS0BmL9+GBwZNDewvBqRvh7zjalDDslSjRswYe+laTLQEx9
         w3LMe9EYglMsAipYHw2LgpBKgUIwhbBDveSx7/sjiVRdyhWsi1lQcOBqYr6/T0XRKxzD
         zzqAUwVtyr8ngC1s+TkgnikIxVVhi8bKhsMaEuUQ5lhZOmqkvJf7THM+nUfavBSuFF74
         rbhhOnTRE8bgU1q745IBI1hsSKp7khgSxozwa3/BZA78/iToASZFjBMmu33hZ+hGQVb9
         JEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P1yXPe9pIJT6dIJgV9ixAj/bwuSiDVO9Coy6wlBwb3k=;
        b=URcriiKjCkcyPAum6SrazP9GHwPEPCE7MiqMG+lDYdt0+Mq1JQ6T1r6VlxlnayB36W
         jlgBn8M/MGabIcYB964VnC58A/5K5hOBcjgxpUihEytU6LXV6z/weOs2dF0azMx7y+i5
         5w5rDbNr50hPwojQr2/gfFGvJAzKNMzm8JchG9aqMa1+bqn+JbnZIMRrUofleakasDdP
         F7jd3Gl2A3Lty25cnIAmHCJ36LueCVLhupZwz6MTZrCDt1XzFH9Pc1EXLHk+lMKTk76c
         Rcneyx5D3GEVG1ptI5WGmcI/c2YVmK+ahoO2jjCksrbQwFZ3zSPzQvGRyxidsm2i6gBN
         QUAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lDt8yqWYBKLop0wXC5hr/qXmLzc1uK1FdvDZB6ScnodonhfEU
	QvVt7cHnEu4qmff2X6U0wmY=
X-Google-Smtp-Source: ABdhPJwF5qf6Iz05mrCoDiPjwxXivLWGQwjdB2+yxifrGbogpCV5mXVTq8x1zRxxEjjcbkruiPyOVw==
X-Received: by 2002:a17:902:8c8f:b0:15e:ab1c:591b with SMTP id t15-20020a1709028c8f00b0015eab1c591bmr17265112plo.171.1651735497399;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1684:b0:4e1:b713:eb10 with SMTP id
 k4-20020a056a00168400b004e1b713eb10ls1785814pfc.9.gmail; Thu, 05 May 2022
 00:24:56 -0700 (PDT)
X-Received: by 2002:a63:85c6:0:b0:3ab:4545:e29e with SMTP id u189-20020a6385c6000000b003ab4545e29emr20544588pgd.573.1651735496416;
        Thu, 05 May 2022 00:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735496; cv=none;
        d=google.com; s=arc-20160816;
        b=Rd8CYlE1El+WLt26xmprkwAFDEgQsxi3PuY6tDkACSDTWKWIAIfuKwB1N44AMzt6R2
         TPbPTNWD+XkaIjZOmOjsMqwHq2c+h1jtSTObZIOxKOm8Mj0yiruG8vmNOrVawmxYyNNu
         1cL1/7xFLHu5/F562BIBGuf0OvwPNB/QzvxGQD8K4Zrx/4EXbnJ/B8qlxhkgyOVEBIBH
         ZH4f0jiioApPRnqxMgIEXuC/VfKJyVliHz7+7Of4fzLx08QEWljQJLPN36qEfc2FvqXW
         mAuL5gbm1rZaD4OO55HTfDV9g70MEQBhGGPJeqZqir+bGgRJVt5KKb2p92/SBbdhzaPX
         tOKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=BFUO29caSUfobdcXOazaV3japZmLNF4oOw4tiPaDpqU=;
        b=GJEiuqcrCSgIwboMDDjmqh5o2KJRjxYFEB52jWvOEJ3Lr6XlMBKKcnWI5T0RzP+eCV
         74Smt8Eja73p/ufptq9uZDR0m+MVyorsRnRAfvdkG0Y1oQeqp8M95i5T4mGOCVrsH7JR
         dMX60PvvOP7zgZXKUyd/29nFLYWCDDKCm/eL3VCwFYATr5MjxiogYt0hnqhwJ0FfWUCE
         +54LLzltk0mmJGDr9mqW1LGcjcbJqxc7TJ683OtK7fGwGCpA1rnjdAxdXqbNypFMygJv
         /z8boIJaqgBu9gx7Jy79FFB467cgGeeSygXLmksGtRaZNyccLxFYvkXJSvX6Z9twPKJI
         5CXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2JXJtDn1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id i6-20020a17090acf8600b001c75ad3207fsi52974pju.3.2022.05.05.00.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:56 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenl019426;
	Thu, 5 May 2022 16:23:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenl019426
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
Subject: [PATCH v3 03/15] modpost: merge add_{intree_flag,retpoline,staging_flag} to add_header
Date: Thu,  5 May 2022 16:22:32 +0900
Message-Id: <20220505072244.1155033-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2JXJtDn1;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

add_intree_flag(), add_retpoline(), and add_staging_flag() are small
enough to be merged into add_header().

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - New patch

 scripts/mod/modpost.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index ebd80c77fa03..ae8e4a4dcfd2 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2200,25 +2200,17 @@ static void add_header(struct buffer *b, struct module *mod)
 			      "#endif\n");
 	buf_printf(b, "\t.arch = MODULE_ARCH_INIT,\n");
 	buf_printf(b, "};\n");
-}
 
-static void add_intree_flag(struct buffer *b, int is_intree)
-{
-	if (is_intree)
+	if (!external_module)
 		buf_printf(b, "\nMODULE_INFO(intree, \"Y\");\n");
-}
 
-/* Cannot check for assembler */
-static void add_retpoline(struct buffer *b)
-{
-	buf_printf(b, "\n#ifdef CONFIG_RETPOLINE\n");
-	buf_printf(b, "MODULE_INFO(retpoline, \"Y\");\n");
-	buf_printf(b, "#endif\n");
-}
+	buf_printf(b,
+		   "\n"
+		   "#ifdef CONFIG_RETPOLINE\n"
+		   "MODULE_INFO(retpoline, \"Y\");\n"
+		   "#endif\n");
 
-static void add_staging_flag(struct buffer *b, const char *name)
-{
-	if (strstarts(name, "drivers/staging"))
+	if (strstarts(mod->name, "drivers/staging"))
 		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
 }
 
@@ -2544,9 +2536,6 @@ int main(int argc, char **argv)
 		check_exports(mod);
 
 		add_header(&buf, mod);
-		add_intree_flag(&buf, !external_module);
-		add_retpoline(&buf);
-		add_staging_flag(&buf, mod->name);
 		add_versions(&buf, mod);
 		add_depends(&buf, mod);
 		add_moddevtable(&buf, mod);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-4-masahiroy%40kernel.org.
