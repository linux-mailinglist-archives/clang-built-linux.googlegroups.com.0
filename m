Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTPXZWJQMGQENOWQ55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746A51B8B6
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:02 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id d64-20020a17090a6f4600b001da3937032fsf4106022pjk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735501; cv=pass;
        d=google.com; s=arc-20160816;
        b=ezW/k2LKT1KHs0hM4Qve3vmw3Lb60nIh4ilGrYlKPG3Cr3uTdq6YnAMfCvoHo4Vy/P
         MAoT9MGcbXt+ysMxP0cYeoJ+coL6hanv6bSpL98IAga4eFC2msl4w+m3BbXWW5sMJDX0
         1/V4JrTD4rYEv5VFXCpy7ajd83/kTzHJ8YHShA9yqnrTdRCBplf1fh+5akT2mYw80hrF
         ZyZOywkybMp49pJqkvN2Er2eR1CMgid8i3k4MrlZTR360E13SwVPCZpJnly6eNMCCcQP
         4DQUjJMs2UMmT/rmwMyCtLRPN7TwNtkuLM5zdL/aQBxR+7RsFEvINcZDPq3F1RCOZGs2
         RP1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=BsrZWWT33qKPFEVotv7RipDJoc7Ob7Oig38aJiJ3pHA=;
        b=SVo7zqOPvDhhB3+UWelS1E8amIa3xlkKHYeotVMyM1Oiw9iPkjM6lv/iLXoTL50mhY
         Y+4k+Fgx71+FFlxopmRrULWE1hEWTvBxtvqDFz6m7qr80BxqgsiQ7fknsreG8tGFWrTk
         /pJZqq+znNF5cnQkAdce3lPVhXc+Zry4N4maRiBIiN/cjMk4hpAEl93/TUP2noLr/vWs
         09IxKXbEH5/z3nQhf/FKLE69bxtR+iqYQO9iuceybI9yGGr5oPH9g5cFV/+sypEcS/zP
         2UFrn0NM67dOG2AmsGv6iEkDRiBrRC/14IXP2yDTVq5o29dffTJiTG05U0bMxlSql2m0
         bHeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ghx0K94J;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BsrZWWT33qKPFEVotv7RipDJoc7Ob7Oig38aJiJ3pHA=;
        b=b3nXeplH/zpoNdElITDEUMAVbvSZXmDtB6O6WJk1BCBW91A4G/4m8FlD0lz2tRaxPJ
         8A3XH0hCtlpDJXEqCMUvwWXX2M24EFSDBRJduUA81YDEUSsyYJCgN8TyYDoKHcp10yJb
         C1GybThOftMByLuYrYDFUZJrN9OFPkY/5nMy0DgcK23pMRAcLCozAZb+H5i7AeyxzYEC
         u7bpoFoafJHhZ1nMObbAbS0V5W+yqIsEPv6ZwtxkAg1bEOauhnv5yUsRhNJPLopCeTG5
         cdhF6JcC6gEyHVNPhGFODiv/fKOjnvgawMqNupcHc6w8zjAH/3M67GEHxoiqrsq6odlg
         1hvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BsrZWWT33qKPFEVotv7RipDJoc7Ob7Oig38aJiJ3pHA=;
        b=hrLvkMZrqF/xQ/wgh/vA092gYifFddGHvdY6dE3g15RyUGjABzyG9umOJz5hQNiFcL
         wcVyJDL2vYeHUX1fIZFrIPWblwwKm/RxW1co51B9LwDw/knWXE/fgPRRSK8a/xKeEwhj
         YQxAMYFV/oSCs1PfPEKWYrJlgyvioI+7wdWQV8fAkVtsMs4xnmJ3PDdZDv3gZJmI5Et8
         HiourrLdQz914CogWiPCuGVTogtDLNO7uMPEbpZ7dzIdx0JmuNdVHdqZ4K/GD205W+5P
         QNIfsj7GaKwbqf/9yZoV0g2u8kvCVR65Dt3VFIVvOr/KeHCixbw9/hy66mm9XnkUMT71
         I81A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NbUJoVc0f1dEx6H/2GmrwrEjvxrgO7aQR3mQDUdI/Y2LcGkj9
	clyB2gsmYjUgw/r9OSKtxLo=
X-Google-Smtp-Source: ABdhPJyx/ibU6xye0BgMM/8ylM4CTx5E8ALrjSxuEvhrJxi+ZxHyuXImDe3v5CpU8PBdD63t8Z9lnw==
X-Received: by 2002:a05:6a00:18a4:b0:50d:f418:b982 with SMTP id x36-20020a056a0018a400b0050df418b982mr16242007pfh.49.1651735501228;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b10c:b0:15e:8cbc:fd2d with SMTP id
 q12-20020a170902b10c00b0015e8cbcfd2dls2819217plr.7.gmail; Thu, 05 May 2022
 00:25:00 -0700 (PDT)
X-Received: by 2002:a17:90b:1d0e:b0:1d2:79e9:21aa with SMTP id on14-20020a17090b1d0e00b001d279e921aamr4359118pjb.153.1651735500558;
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735500; cv=none;
        d=google.com; s=arc-20160816;
        b=q92nK4uYHJz0p2tVKexsa13SoVUJFQC6osE0FV/NJ1fQzKyODbJOB/z28CSwcFd2IB
         Ci4cFgIU5HK2A/OomHRLaDM38ClSe91TYaOflE7UpItydKVUcMQE7H71p+Pd7vDQvL54
         Io+wrYiL73CX0gUM4DvwLqx7R0Vy847BNH1WI1AnlMHAEO3/VxXnbP8+fidqnwSPThPG
         DycIloNepT3DiVJ4uZkmP5JMn/PkkmAnix4qQZRxrriC8aFOZs208JVwZfeBT8rZintt
         en4TQURZI1A0Yhw1MCsvZjaxGln88H5qC0hIlFO2FCG6aBQ1nTiSHcuAWrjB2MGor4Y7
         1t5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=CQEwGlTyJHJvfSf0T31INOBqtnHuEcYXjFZZEa+K6Lg=;
        b=rMn2Ok8pdc/EBMSB73g0VXU3CWUo2A0Nh9/5d4qR/NIlVC1Prz0eUTCNcVbKs2PKAL
         u5R+eNAJr4auTsceGAiFfNM9BilYAM0k49fGRVidGQZht3c9/jqgrudYAUqc+tpLm02T
         u9jLbq81usxf9jr8aLYtSn+Pves1DmUydaj/4VRxS+V0yYZAjrRSOGUV4jet5k0FhHRJ
         pL3+djn16NOocoUbmcUWNKYrjnNgCTRWIBXIQxPwenhyE0CT1cHwQXsXuLjA9HRo8y/+
         FZgQyeOYHjD17y5NSeZAoVXIrdGSrdSTP+MmU9cm6Yc1yEoIAkqyaJ0+JjOfDDjYOl5U
         8uiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Ghx0K94J;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id n34-20020a056a000d6200b0050d36924b8bsi31135pfv.1.2022.05.05.00.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenu019426;
	Thu, 5 May 2022 16:23:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenu019426
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
Subject: [PATCH v3 12/15] modpost: simplify the ->is_static initialization
Date: Thu,  5 May 2022 16:22:41 +0900
Message-Id: <20220505072244.1155033-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Ghx0K94J;       spf=softfail
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

->is_static is set to true at allocation, then to false if the symbol
comes from the dump file.

It is simpler to use !mod->from_dump as the init value.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/mod/modpost.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index e07542a90fc6..4edd5b223f49 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -242,7 +242,7 @@ static struct symbol *alloc_symbol(const char *name)
 
 	memset(s, 0, sizeof(*s));
 	strcpy(s->name, name);
-	s->is_static = true;
+
 	return s;
 }
 
@@ -376,6 +376,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
 
 	s = alloc_symbol(name);
 	s->module = mod;
+	s->is_static = !mod->from_dump;
 	s->is_gpl_only = gpl_only;
 	list_add_tail(&s->list, &mod->exported_symbols);
 	hash_add_symbol(s);
@@ -2523,7 +2524,6 @@ static void read_dump(const char *fname)
 			mod->from_dump = true;
 		}
 		s = sym_add_exported(symname, mod, gpl_only);
-		s->is_static = false;
 		sym_set_crc(s, crc);
 		sym_update_namespace(symname, namespace);
 	}
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-13-masahiroy%40kernel.org.
