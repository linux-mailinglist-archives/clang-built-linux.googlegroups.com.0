Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKFL4CJQMGQE3JBJZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F50051EF25
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:34 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id s2-20020a17090302c200b00158ea215fa2sf7105462plk.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037033; cv=pass;
        d=google.com; s=arc-20160816;
        b=C+tri+LUqwWk5hBHnul4xib/VxwvgkwLoa7NNXu7p+9hFzAwLbfZkQibm+/cM8XdgY
         XqQ9svVjGviSyJb6zeirrOelEPWitJ0YadYwGN9M3bSGwz7ITIhrC4DbUooLBoR1y1hu
         yMqa9KhdSlukjZALuDaMAtAjRMsHjbSIIuZUhwm04SfiJJ99q6UlpPvYg3GqQ5U1ZIIS
         vJFWPaWXrBxkM7f6ZQp51GViphjDOD4tj4tRiDhWCgo34WgNE1npfnuMSUT1SfuEL/6G
         oolpyUT1xTwlE0iMMBODw9EEKeVUU/JDCyJXc1U75WvU2G/eJNiFeALIDm3towO6xAwW
         tjtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=1vT59ZjF+wLC/jhE9QnS+KHhhwVi7y1FhfLeQKKVEfM=;
        b=T9Qkhv3g1QK7/Cv03hn/5Sk1iwM8qN91qP5NdtBjP6Za7NtcU5vpkfrj1WjqaLqeLq
         nJvhP0E4JzK9MS6tDsAeKjqRFGb0HEXBRz0JXc95egwrNi0CqzunET1ctcKW3TJ6zCUr
         arYwKStJf9bs49FaVs0d/9sb2Di7QtY2WjKpD8DRbXcWOpd5+DfwfwnHP1z+NwEj+Cyi
         PsBHw33DBB1xplzuCH2Alj05yygRzJ3vGHsqxkw2AwIlWD6K+xr8w4qzcTMs7XUQa3xw
         0mJFENMoICXLf6qlijYB5Jxt13/NhwGjazSkdlB0KwmYthyFV48yakJBhxleX30bJukz
         9Gig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=d+jmdaod;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1vT59ZjF+wLC/jhE9QnS+KHhhwVi7y1FhfLeQKKVEfM=;
        b=r0bZN+INP5VO0wnQvwcJfKAncMKp3HGfG53dBrVpCYzN40Im9RpTOZwMT4m21u08tJ
         0GdddMcBD9gl1/CgieX9Gi6T14BLT0EomOcrStEjojHicWfqPzzbzZHb/mWZyOkd7l8X
         xbia/bcTtYr5UuOBlMCUXGwCenbD3JZGFsHj1qmrBPCnNHVGFkniuFptEqv6ImK2tlaE
         lKgAqH7DG57waNTjk974sYHxzAOEP5x3wkuUcK4RtM/fHOK2z/EeDAp5U5/uUq1QeoqT
         Gh98UCdQc0nav9YIvUpf8jkyPTuPmvN7CpjyfJCY5JY7FIJPYwdg64N47/CZpgmSrIAc
         W7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1vT59ZjF+wLC/jhE9QnS+KHhhwVi7y1FhfLeQKKVEfM=;
        b=KWo66+wNGDtf1XUksX4t/orEUfDUH0RJqow/3cepDi5XSInXPSQnKcE/9wMxj8WgNj
         fYhpux6+Y5lXh6Xh1J37TYws73YDOMWIs4tydpQEdRMU6cervil6UmoqNc1U0dbqZG+I
         RzVO2j8my9oY9sneU7vzOjI3YVVuhBpFEQBkfSLE1MozKNMxFbhRNv79mwZQ/32JeRMu
         80+vC5e3gxH0bI76Sb6amGPaipc1kXiLq64EP21P8NEukqW+Cg+HT4UDvOoybZSZWx3H
         9CE06gXXUq1eKMw9vjhYEDzRn+NZGXsQ8RfgSvolO+AcDnvbomiCHuALKDK2pBwFSl0Y
         zYWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R7sl7a9i1Cj6RzltXX2vsU2/ZsZo849ZijMXUdnMNiH38SJqs
	qcRsu8zctw3iC9OL1KVl0no=
X-Google-Smtp-Source: ABdhPJybi7lHe2Yx4DUL+iFau6VedoJBQ/hlHQWA1hydpiBvJNNUCunMtxpr7QPg87n6jKwI9OoGMw==
X-Received: by 2002:a17:903:213:b0:15f:4ea:cd63 with SMTP id r19-20020a170903021300b0015f04eacd63mr5004237plh.68.1652037032916;
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c00b:0:b0:3c1:c6c8:3826 with SMTP id h11-20020a63c00b000000b003c1c6c83826ls4494858pgg.10.gmail;
 Sun, 08 May 2022 12:10:32 -0700 (PDT)
X-Received: by 2002:a63:4459:0:b0:39d:3808:7c84 with SMTP id t25-20020a634459000000b0039d38087c84mr10463212pgk.130.1652037032312;
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037032; cv=none;
        d=google.com; s=arc-20160816;
        b=t8NeXhaTF2/sJkDdz4a7Co8dh77K08MZr7XHYvOSY1rmwEZhfKnIiwjXvRbVgL/urn
         CLzOoixYh7lltstHQXFYnD7sl+AezqSTqJB/gJ4EE+dmPHGgMZYsk+PHZA2OcWfJPLW3
         byv4xjacZzAvOeWQgedPFqovD0vyZoakJCXsYT9Q6zQWqFNRoS/uqZ0Hq2UHq8/tWRIr
         SncDRXgR2zNkdR/zECML37z5sDiRCCFt2F+q51j7+NinCiJZfh4QgyToqOPC5WB2sv5z
         dUD3n4eSbSabT+fSkpLOKuUm9VgKjYRIG5r6zDcJMq/+EcVNlbjSeZJChZoN+s4npCY1
         Sgmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=DmsBv1fv38LgYT/uFaEQzmELMmHgADfzOYYANxRYdz0=;
        b=Mj0U+i4VmQdaXet/ySduYxskKhHvbyWlMeFiZURmvaqRrQ6H5kYwtFGRC0GaK/uoK5
         BwcVrGstsPajxthafUXQyUR9c0q/XHNS1EkfpSXuojr/H/HgiYfVrM0CCaDpCFDY9ObL
         VRX7EjCZpWoSUOdNGBHMDNZC9krT+xQmEZ3wmyfz+JYZ0IJ4QRnSE96TORNUVO4xkaMb
         nw4y6zPH8kbaj+C8vw3wwq6TD7pOzz5OvOjLiTBmXB8Q4RhBQ+K2hkybhD+8P880jsKE
         TmbA3jsZWYzMhsFnF4ecGsVdVmDXt/PJqkVDSRbXwUBwVKsqBNVTMOfm2LSLuN11YE6o
         SSJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=d+jmdaod;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id g19-20020a056a00079300b004e1a39c4e87si517053pfu.0.2022.05.08.12.10.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSa030019;
	Mon, 9 May 2022 04:09:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSa030019
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
        Masahiro Yamada <masahiroy@kernel.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH v4 13/14] kbuild: add cmd_and_savecmd macro
Date: Mon,  9 May 2022 04:06:30 +0900
Message-Id: <20220508190631.2386038-14-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=d+jmdaod;       spf=softfail
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

Separate out the command execution part of if_changed, as we did
for if_changed_dep.

This allows us to reuse it in if_changed_rule.

  define rule_foo
          $(call cmd_and_savecmd,foo)
          $(call cmd,bar)
  endef

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---

Changes in v4:
  - New.
    Resent of my previous submission.
    https://lore.kernel.org/all/20210831074004.3195284-10-masahiroy@kernel.org/

 scripts/Kbuild.include | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 455a0a6ce12d..ece44b735061 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -142,9 +142,11 @@ check-FORCE = $(if $(filter FORCE, $^),,$(warning FORCE prerequisite is missing)
 if-changed-cond = $(newer-prereqs)$(cmd-check)$(check-FORCE)
 
 # Execute command if command has changed or prerequisite(s) are updated.
-if_changed = $(if $(if-changed-cond),                                        \
+if_changed = $(if $(if-changed-cond),$(cmd_and_savecmd),@:)
+
+cmd_and_savecmd =                                                            \
 	$(cmd);                                                              \
-	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd, @:)
+	printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd
 
 # Execute the command and also postprocess generated .d dependencies file.
 if_changed_dep = $(if $(if-changed-cond),$(cmd_and_fixdep),@:)
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-14-masahiroy%40kernel.org.
