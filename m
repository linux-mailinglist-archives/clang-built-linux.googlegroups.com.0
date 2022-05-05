Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSPXZWJQMGQEHE5NZVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0EC51B8AE
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:58 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id p9-20020a544609000000b00325565968bdsf1221155oip.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735497; cv=pass;
        d=google.com; s=arc-20160816;
        b=NK5FcbeiiM+27aWT5OEOriSDikShLkAL6j1613qHbdg4CyQZqZ6BCW58k8a70PkWha
         aQ1On9lJBpkEu1XSRkQKQtt+fp8/FaCFLZbuz3Qkkf9NCLFyn+QAw4uSarpka7PBi1Uh
         paQvHqh1FTc81qZsXi/caRc32JSqzxU/7N5E5+oiBFNnfUC/jtv3g1WgVHJcT6Rsc4Yu
         YsgMCEDrk97z9z5hULF39qzZENNMm3D7QEles/c2Uc32CUM0ukw9AkgFKkErxBtcLoXl
         QKWjNum9Mol3P56tJOVVHU7REmRmftoaGgpaPgdhQh9Pam4JI8skVOsdkSYLzyQ8QQHb
         ui+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Jy0dfVKEsYv9k2QSpjggus8v150htP56GCS07ND9gBM=;
        b=AoayYX2cUWIc5jON+vA6m/yDIgIYfqJfaiG2uoWISe1yekZ/nUugJWx/1n/fVU1Gzg
         v8jaZD5BWelxW0R1cNfoWcPme6vuY8JADn98d7zvsXBAIvem+N/xLMM2IyKu+JDWsP0F
         q9zGV/EdGPyGP6JEKRrPtDCIEwS35+vYLvOCuhPEBot+anRJkc4g1Sic1NpcQ9uDw0Al
         VaTqbqVl3OeCPsDD/cOPgtmOTYS4gp/IRg0zjjIsflVG6MVHcOVGeG1CsfaMOhAlpoG4
         dx9yXDwfN/ZXGyo2yw9uzvZFCZFsZJ7wkFNsi4TrkbPRTda635X6kAKcaJjEeRu0QkLD
         ozdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RheR5FxU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jy0dfVKEsYv9k2QSpjggus8v150htP56GCS07ND9gBM=;
        b=L++3f7hRRNARAcKqDSgKxbFCJw8dybnK/x7O51CQ9LzG6Aa5R+8Si1HQ8ZKQ55M/4V
         tG+7BEeNz6/EcUUqVlcI34IAQFbnvmv9LK9mIi1SKpKjpdq4pT7qp9FgDtmj7WShkyxd
         BpLxZvw2JduGyz1P1M2+uUSCPKm2raAos05p7zx2cFWdkpwXuhiXGsAY8aFjdBtf0xZn
         NWM7wSY1Yy3l7baur8vayuHhARwgQBqMRh/ovK+kR8bONs/7LZ/+5pO0MdOrDP8szXZA
         3UfqD1zYP61UMPBCRe+ttrI1sRNKnrIxFgdlpHnSscmuxk3Jo196pj0WrLwFFAReV79x
         FYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jy0dfVKEsYv9k2QSpjggus8v150htP56GCS07ND9gBM=;
        b=akGe9dpdcnq68M6yaJ2YtU20xG47Hf7ON/o5uqrEpikGBCCkVUOpJ2onA2d7B7lROY
         GjoEyYczol7VlmBsUHCOG3u1kcI1dUg/T4Mr/1biYEFKkmg9JOppH8q3JLIYGQEWBoP3
         n/Mf1QIxDQD1ayWmM4LA1CRKY7S37mK8FPyHJhJObSQYW/qTVSGA7qnKkWB6uy7t62Vq
         ng/dRBYXL/jyrKRuSSIyZmJ9pHQWMrOmZu1dPykOAJ8TkQ+GznBrKtATcPpiHSDcxviu
         GPbDhCzYdYVX+zP/6L6VU9xcEr864QnxDTDYqsogRnS/1G2Fa2L5q48qtGAX06ZVRwQT
         c6yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qp8o3Nl84od5b+E46/D4xwb0lEOY1fKKzNRqudzvhrVQTPUfC
	JBOTY2nZ5mnaotcUNKwfxxQ=
X-Google-Smtp-Source: ABdhPJyqExg7j2ezSCelRc6fCnBmzGdgfGSgDlwy3mB3UP02CDEyec5loroIGpZIkIhHiHY4i3h9sQ==
X-Received: by 2002:a05:6830:1e13:b0:605:f05e:d413 with SMTP id s19-20020a0568301e1300b00605f05ed413mr8901450otr.296.1651735497074;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0f:b0:326:6279:e7c with SMTP id
 m15-20020a0568080f0f00b0032662790e7cls1163504oiw.4.gmail; Thu, 05 May 2022
 00:24:56 -0700 (PDT)
X-Received: by 2002:a54:4688:0:b0:325:9a36:ecfe with SMTP id k8-20020a544688000000b003259a36ecfemr1789544oic.96.1651735496746;
        Thu, 05 May 2022 00:24:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735496; cv=none;
        d=google.com; s=arc-20160816;
        b=WLp4NLM6d/hAB8K/syki1lYGcXEgtzpUgxkuTSdSorwN3XMbZ7FsX3CGnwy4UteYOO
         OBZ9pIki6IUZTA6S6P7zk985wuDB7FBdd814EFCQ743+yYpI+I5htiPh5zFUj/ZmX1g6
         X2k3h+iIt+EkhOANs2H+OzHdGnzs1sr2hmnu4JvbGxacYtSSVann7JBWcq/JA9RVP1FT
         4SExjGebH9JTMSGVCiOdQBWYywe2S54JjtZkRr0X4pILYVoD9W1ub4G7jxNc+A25x6Iu
         a9n3Mn9JQGyDJlrNGzILoukOyRmHRXau1rPeDBoLTdTzZX5dhkXTSWoyZmHD8raCt3Gx
         SyEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=XSY8vEAsNwUxWuIu8VWQF0+mhoFGCgLIKTmGfMENfeo=;
        b=o6RMRAtkarQqF8xfHjEfQQSW+Cz6nZReWPmH+kpo+WPheH3+l9CXtZPQ3TVXNm5Qqz
         4jpykQaY7WTcF6ADFKW549u5CYDxzal+EiqhY/17DCkA4WFxME/fa81urkOvdopaTdOG
         SAVI5ndtGKfQbTFurPyhgjTLBQBZqf4/s8HuRrq+PK6srVjg0VkKJfwJIVHSz787u0O0
         YAQeGwGE+kByRQI9xIcywV/SKkVuohwD6W3txW5G2OZU+dcxgJ81FF8zbn9o/Syqc/C8
         MEdk+1S/dNObgjO9BQD7ewE81ENsTXMAwiMJcyXjJ3wEuzQLkD7p61W/hJkYZcUynxom
         1QOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=RheR5FxU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id f23-20020a4a9d57000000b0035e8a81e5fcsi49541ook.2.2022.05.05.00.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:56 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenj019426;
	Thu, 5 May 2022 16:23:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenj019426
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
Subject: [PATCH v3 01/15] modpost: mitigate false-negatives for static EXPORT_SYMBOL checks
Date: Thu,  5 May 2022 16:22:30 +0900
Message-Id: <20220505072244.1155033-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=RheR5FxU;       spf=softfail
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

The 'static' specifier and EXPORT_SYMBOL() are an odd combination.

Since commit 15bfc2348d54 ("modpost: check for static EXPORT_SYMBOL*
functions"), modpost tries to detect it, but there are false negatives.

Here is the sample code.

[Sample 1]

  Makefile:

    obj-m += mymod1.o mymod2.o

  mymod1.c:

    #include <linux/export.h>
    #include <linux/module.h>
    static void foo(void) {}
    EXPORT_SYMBOL(foo);
    MODULE_LICENSE("GPL");

  mymod2.c:

    #include <linux/module.h>
    void foo(void) {}
    MODULE_LICENSE("GPL");

mymod1 exports the static symbol 'foo', but modpost cannot catch it
because it is fooled by the same name symbol in another module, mymod2.
(Without mymod2, modpost can detect the error in mymod1)

find_symbol() returns the first symbol found in the hash table with the
given name. This hash table is global, so it may return a symbol from
an unrelated module. So, a global symbol in a module may unset the
'is_static' flag of another module.

To mitigate this issue, add sym_find_with_module(), which receives the
module pointer as the second argument. If non-NULL pointer is passed, it
returns the symbol in the specified module. If NULL is passed, it is
equivalent to find_module().

Please note there are still false positives in the composite module,
like below (or when both are built-in). I have no idea how to do this
correctly.

[Sample 2]  (not fixed by this commit)

  Makefile:
    obj-m += mymod.o
    mymod-objs := mymod1.o mymod2.o

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

(no changes since v2)

Changes in v2:
  - Rename the new func to sym_find_with_module()

 scripts/mod/modpost.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index b605f4a58759..a55fa2b88a9a 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -272,7 +272,7 @@ static void sym_add_unresolved(const char *name, struct module *mod, bool weak)
 	list_add_tail(&sym->list, &mod->unresolved_symbols);
 }
 
-static struct symbol *find_symbol(const char *name)
+static struct symbol *sym_find_with_module(const char *name, struct module *mod)
 {
 	struct symbol *s;
 
@@ -281,12 +281,17 @@ static struct symbol *find_symbol(const char *name)
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
@@ -2063,8 +2068,9 @@ static void read_symbols(const char *modname)
 
 		if (bind == STB_GLOBAL || bind == STB_WEAK) {
 			struct symbol *s =
-				find_symbol(remove_dot(info.strtab +
-						       sym->st_name));
+				sym_find_with_module(remove_dot(info.strtab +
+								sym->st_name),
+						     mod);
 
 			if (s)
 				s->is_static = false;
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-2-masahiroy%40kernel.org.
