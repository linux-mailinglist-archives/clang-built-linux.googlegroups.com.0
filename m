Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTHXZWJQMGQEMNQ5EMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 811AD51B8B5
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:02 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id a28-20020ac8435c000000b002f3bc1cbd08sf758365qtn.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735501; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ecg5FFfJuswdqWO27RKqiOyd0b2U9eCj2NsOuJPM1yh4bYV3SG1C3QiQIJBYm4Dhy3
         lzkloOj9mAwfUSvVhpZkW2+5VikW02fzVsUalQSbmILul65JZCk+9bx7BMppoPhwYSCo
         Qio2N8QF6iKzT93hiZf9NaAbga8sN3/qpGbQab634iER6QPI7TyStT1zkTN1CjkrZu7j
         i4ml7J3xzw8A4KZV+gpHcIBxOADvtAW6IMQ9ZoIxYEIQwqoWmImToJ1qiRCOG0KCXI6/
         TTOB98TRjCo1kQLmgNt0rkAjJRC2f7qKYvRvRz6Fbvf789sPZRqBibp8EoTXqYzL9bLE
         znug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=I32ownxqASxtcARVhlRc0Nr3jj9iTJeirl/aIhm3srM=;
        b=FAouK/o/8rTKoE7Z0dO3r585nqHriRIxl+sVFYmq5Df0L6Me3J9X+HlR6c5SkWOw2k
         EVy58RLK3oFR2lj557co/+J8DId3yraLx2pCZ/ill8fMwecRVL5/YlM3SiWnF9X/IjH7
         9Pc5yHHXdB2/ve90LeMrvZHPB+FEd9RkMSGMxdxLdhDuyj7L8lZyvljkNX9X0PsE1v45
         Idy9ilWZ9juJANEKvsKyKv2Vussw9cxGuXICzdtmZKMbpi9RmQXCE05uWCqtNkX/KBcT
         rvzo4l2MS4Nd3B/U8zsKwpwuTEwauHNm8m9IJJlwC20S/q2dejH27sasGRFKwvfODS85
         FtLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s8CzChdZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I32ownxqASxtcARVhlRc0Nr3jj9iTJeirl/aIhm3srM=;
        b=X+nuCr3SznhLEUDs3v/udjP5agIXvFL5pH4+yUqYWymnFS7IsoF0c/OIs5DcRIh21f
         KhRFOLVVpyDjz9NRfhq9GeOE9e2J++7KVOBrTPmgrxt1TaQ9z0KeQQSWa3pFChVfOBXr
         3ISvQzIe5ou+WEr7JBV5mw8BW7ZPmVVPNqM/iWYApWbQW9S97n1GctTCeOVeFzpBfiBU
         a7kbyY/ShMBjCSspOT7YW86SHuDYMjiNAMPe28U1LWp3vhhaT27tti3975rHMW9xRPyI
         Mh3EHI/0gpiUnoZGfSY2m6BqFazzLJHh2T/sdqXs+0V3IXvRlEHiEnaLkGKAMieY30EZ
         6XYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I32ownxqASxtcARVhlRc0Nr3jj9iTJeirl/aIhm3srM=;
        b=LiLfyNKUd31kqyelc9z9AmjabVjH9giF+eZfqqHVXnLJ1VMvI53uHfaZTIrmMjAK54
         crApGFyuYW6D8J0EeJlhkPf8/RZj4fZzr7NO2cZ2QXLJ7Y0zKCT07SHsq9qLtUMU4EgW
         iiwA427bUuY7GM0eHte2ioU+h9ZTOh7Tl3Z6vwF/sHRrpzyYzxs7rPeifg3jmSxIW5vm
         BM8qiV5WNX8gtLFfeqb25xYJnvoTPXx/s75mKha34Fz3T3rqmS1rWchv/IZ9I262TIJr
         10hvJ5cPMy/5Xr14in5ppUl0rJCd6V28/tLDBcqFcjqKlefGgXxzXaTWS0Q8Zl6GuErX
         OvXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313X9LS87uUJzttWIgE9VhCbidtsf8Ol6VB3o3wqOECF2Tm2PbT
	X7dcebKY4bMeruc8cptZlwA=
X-Google-Smtp-Source: ABdhPJwV5iCvFL8jQhU1s0Fzttay+Et+M7Qj7OterQaKTZKiE1Mvbucv3K1OXjiCMVSuiYzBOeddqw==
X-Received: by 2002:a05:620a:674:b0:69f:b500:ec16 with SMTP id a20-20020a05620a067400b0069fb500ec16mr18608361qkh.594.1651735501129;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5c07:0:b0:2f1:fe81:f8f3 with SMTP id i7-20020ac85c07000000b002f1fe81f8f3ls2793424qti.3.gmail;
 Thu, 05 May 2022 00:25:00 -0700 (PDT)
X-Received: by 2002:a05:622a:1a03:b0:2f3:a72e:efd with SMTP id f3-20020a05622a1a0300b002f3a72e0efdmr15662477qtb.73.1651735500650;
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735500; cv=none;
        d=google.com; s=arc-20160816;
        b=0GwiMIk8CxrkHp+GGXono+T+bRlAbqkSF1fVY1bYhv+hKgFNc1ENYsAXGdn4JA6KAC
         SJQRX166vdYEPo60JON6UNQ8y/5KCx01X2gp/lYXq6J5IrS74gBeUJerH4wJsz9tdd0U
         QOMqqRUtiQdqavzIzVS3KrNLSelhzmVR8XDVgYPwHTeN1MZt6NCgk+q0j1MuirH2Z2E1
         KGjFUc+Ncgrv0RHM6N/slovkmF3zUSj/+NW7ojPAerY4XjQS3hJ1mLoZIY3BpQQNjzX6
         QTdseOdbmfNo2NeuFDKWVOLTIK+fOSjuoYavb7bn5Wnp0YxpC6Uo4yVtjiPcEBK4ydBK
         NCwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=jiny9e/0ekLHfzDMPj/sTAYkp3K4e6Ir8SZeJf0qunI=;
        b=NqH3JbsWjktRUgGFQx8HQUZqVQhTcO8YhbO1/G52Lcoo9jIF6wng0Kaxenqgv9mAFW
         Ci8MDK+BOjFOOXbc7a1qnqNgDfa/d/4opK07wIRl4LtnO18R0urd5Q2a4MWcOr4ejyC2
         twuFI9ml/gKoy8THqdIe4Rt41orJz9Yd76PTsTuI3/872OCCZQR36YnzIukFIz9cPp2g
         OeszUJwqcND+WVg5XNWng2nFAIHRDBePJOccDD8nkv1ZwNWtLWx8KB8kLKHEtIAI+bHu
         OvD18f9C9Juv20qvgMnd9pYt+OgV4XktoGU5l+wm7DCxZhbiSEArWrjryfrjG0CldhjE
         m6Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=s8CzChdZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id l18-20020a05620a28d200b0069f8dcf5fa2si49849qkp.6.2022.05.05.00.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Neno019426;
	Thu, 5 May 2022 16:23:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Neno019426
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
Subject: [PATCH v3 06/15] kbuild: record symbol versions in *.cmd files
Date: Thu,  5 May 2022 16:22:35 +0900
Message-Id: <20220505072244.1155033-7-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=s8CzChdZ;       spf=softfail
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

When CONFIG_MODVERSIONS=y, the output from genksyms is saved in
separate *.symversions files, and will be used much later when
CONFIG_LTO_CLANG=y because it is impossible to update LLVM bit code
here.

This approach is not robust because:

 - *.symversions may or may not exist. If *.symversions does not
   exist, we never know if it is missing for legitimate reason
   (i.e. no EXPORT_SYMBOL) or something bad has happened (for
   example, the user accidentally deleted it). Once it occurs,
   it is not self-healing because *.symversions is generated
   as a side effect.

 - stale (i.e. invalid) *.symversions might be picked up if an
   object is generated in a non-ordinary way, and corresponding
   *.symversions (, which was generated by old builds) just happen
   to exist.

A more robust approach is to save symbol versions in *.cmd files
because:

 - *.cmd always exists (if the object is generated by if_changed
   rule or friends). Even if the user accidentally deletes it,
   it will be regenerated in the next build.

 - *.cmd is always re-generated when the object is updated. This
   avoid stale version information being picked up.

I will remove *.symversions later.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Tested-by: Nicolas Schier <nicolas@fjasle.eu>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
---

(no changes since v2)

Changes in v2:
  - Fix CONFIG_MODULE_REL_CRCS=y case

 scripts/Makefile.build | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index f6a506318795..a1023868775f 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -171,10 +171,17 @@ ifdef CONFIG_MODVERSIONS
 
 # Generate .o.symversions files for each .o with exported symbols, and link these
 # to the kernel and/or modules at the end.
+
+genksyms_format_rel_crc := [^_]*__crc_\([^ ]*\) = \.; LONG(\([^)]*\)).*
+genksyms_format_normal := __crc_\(.*\) = \(.*\);
+genksyms_format := $(if $(CONFIG_MODULE_REL_CRCS),$(genksyms_format_rel_crc),$(genksyms_format_normal))
+
 gen_symversions =								\
 	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
 		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
 		    > $@.symversions;						\
+		sed -n 's/$(genksyms_format)/$(pound)SYMVER \1 \2/p' $@.symversions \
+			>> $(dot-target).cmd;					\
 	else									\
 		rm -f $@.symversions;						\
 	fi
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-7-masahiroy%40kernel.org.
