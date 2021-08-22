Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAMERCEQMGQEMT5XFSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0703F3E58
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:30 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id u1-20020a25ab01000000b0059949024617sf896316ybi.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618689; cv=pass;
        d=google.com; s=arc-20160816;
        b=mamG4EViWiWXNODaC9mfaVuHsM3m6otf0T9E39arN/Q+Q0BV6nHQxkk2+CgNgBCNPO
         6ZzwKGsCxnRAlMspAmIsq4LFmUyGxRa9FWXUK7w56hQEYtAFlXPeufW9JArJkXrNzwHg
         kKauTNM14l0EzeWCdGaR8K5EhRpauwVyF57Hn2gKYJ8JtncpkVJCauljUK0b6bhVJxbd
         gltOm72EaG/833YhKkeQbrVKaQIUkVGk+NNnqtsYsfiKUHxikWUO4uCzEMUk7XIAHKae
         fXTA5bRY0OCu2wqgu6itb1BxPD+wcVuu8GCyYEGv4w1CzhIBsZzd5vL9bs73qqaHgIoV
         MRnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+Q1okXRReoAvnXtTeslnj9Y8eLNJB6VDxMALX4Fj+0I=;
        b=djHhwpOaoYRG17hkDA3gnEENXLpBiPNK9MNV1uh3GG4pzO+MoR6VE7GzC5+7VmSp8z
         FRsUQoDbCr+CqlHtnXESFpuFOFN98sqq3rvHLMXxVNqmKAOwx5hr9jV3K2Y1tpDg5mdq
         m7AQLWOpR2ia0BDtFVMq1MGZa5gQllAyqix7EX+c9OK6fTv1jQ2CVPsL0Ghu642ttcCk
         rO/CDBQn2eZ8DCsyjXpzfUQtydpy2UQkj8VZ1zbxp7MRLpHEBT/5vM+O31zG1Y+hi/2U
         yMOTedPXqDD3SMdQUMT5Ds+RSRY9WkEdoFg8JJ0BkG40k5R9VlBP6KRmSXQHl/2bPzFG
         vPFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KNehxyZs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Q1okXRReoAvnXtTeslnj9Y8eLNJB6VDxMALX4Fj+0I=;
        b=NUetXZBEkQIDC3ZKw1THVC9OYn+sI4S7Wx+cH5H2HEfzUktUUqA6jRKl7H05ev53Ni
         vIzhLl0j2H55TO8umTBy1HhNHwaJtySMBiOPozJmG1VjD4yPFSDjaA/BG58IawBIkJcI
         WOtNpghoz88A+mhL18TdIaqz07eN7Jm6QxGAQ9e5ePKe6OHuHFv8Jw7hVytiRVXivrD0
         +Nx4Ph/K7jZckAApSNyRAB0l4LY8bDtlNdnOW65ocK7JdtRFRwBuYie7C0YDM6DktApc
         sfaUrB7r2Ik8xSkeR9ros91AOHKxcspm5kopNQlxuelmv4xveS+j40ccbszHRqsYxGS9
         GMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Q1okXRReoAvnXtTeslnj9Y8eLNJB6VDxMALX4Fj+0I=;
        b=pVJqn/OGSBTYkfCwCeJ6b9bI8N3oI5IC5pocCYwEI5ib0CnpkMNQ4yNqQ5rXv6Dx9Q
         D0ruw/7L7Npk3giCLcCxurRG9SHFhS1y0AYswU6XzIJ1S/0wD0mMUVJxjTmKymvfBbks
         lIUQv5uVFI2qCQtrBAYE9lRhl4LaDePnuTj2R5A00jOx84r24LyT+TeOISQPmtFsrlsS
         1zP4qZjegHevHElgKjQQtM3OQQZilRYtsUywKOA5WDyZjEIYPOl3jihDCN7PWnMjAhyL
         +seKu8kmoDsu6y+BoxbWtqN01WrJvRpvqFS9ZS7/KhPr625IjufHpatYfVvUz8olRlvG
         KVQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53005ocxU+FC0btwXGyNltfwBJiVWJNPZSG6TbeY80Dn677Lgtj7
	XLituaqaIut4LHQjTT2WjaE=
X-Google-Smtp-Source: ABdhPJyUbFC0bYA6Bw6nqVMqShgbrRLlAq+Qn4UrZY9HT7pxPZn2BnmYzCTQI3geneLrX1yeMUnEPg==
X-Received: by 2002:a25:511:: with SMTP id 17mr36954502ybf.288.1629618689424;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8cb:: with SMTP id p194ls2553797ybg.6.gmail; Sun, 22
 Aug 2021 00:51:29 -0700 (PDT)
X-Received: by 2002:a25:9ac1:: with SMTP id t1mr36519178ybo.469.1629618689003;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618688; cv=none;
        d=google.com; s=arc-20160816;
        b=MkyNsr92ZqBtDF+KpcvXRjQmySZ5O6XkqD1zi58KvT6Y65CjsZo6e7Wl9dCTd6WKio
         rBINQioUwagUN6osX/ma08gN8iyKfN1danasbBDItV+a2+eaIyW+UqyF7PZgLwu9i8F1
         rTU1On+DKNEJ1Ebs18ZBOg3CaiciS51cLppg0aJUHWYeD8Mo8CLcDyC/FJYxMoJUXoGK
         h24kd8Ti//G0Hdq7e5vq0egqUiWP0GG+DdJhJ2qT90yseACNTTlOQK1CXgHcme9KA28K
         4w/rw6VW+YU+mJfdKxIDckTqnkbV8/LdeV2h1hVU03blp8JzA+Lujl5G4J+XC6ODK0fA
         4QrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m8xtan08Su1aPHkuXwbXQb4qxZDxvf0Qz0X3flwzJxU=;
        b=oxvWG71+qZ1P6WTBsKjCMeQa0luSPZGV/oZGHBob6yePAz+W2oPpkSCMrcT7PHDb1u
         NCx1GBkNc8aUFRKvPfwPimVln26b2k1EUBaWaZvXkrbiQjr+M9rlNZcDlnRPaPMIFKm0
         lNETf7+rGuAtDpc5bfwnVtAwmVc0dcnRb9u71Mmgxf/VPabkLwkqwFUHYMor8yUwqIyA
         WFhcUGJopJoKpqiJIDQ1YjWdmKR33vBtOP8ulgp0mWlU65zh9wN90bleB+W9whGNzYlv
         52osII+imPh9m2VLvq/0xybG2vczUDsVLg4TqTqpJNhDP2oQue4Vk4dUNW7zh5DoNXKL
         eM8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KNehxyZs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id u17si724958ybc.5.2021.08.22.00.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id j1so9984175pjv.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
X-Received: by 2002:a17:902:e744:b029:12d:6479:83a3 with SMTP id p4-20020a170902e744b029012d647983a3mr23356458plf.30.1629618688348;
        Sun, 22 Aug 2021 00:51:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z3sm12422917pff.47.2021.08.22.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 03/25] stddef: Fix kerndoc for sizeof_field() and offsetofend()
Date: Sun, 22 Aug 2021 00:51:00 -0700
Message-Id: <20210822075122.864511-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=973; h=from:subject; bh=LSI9Ve3iPXm24/e6+dJ/Whm/+Dq6iMvpCYAHC2kT7As=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH1w21LSBQACqZKJobE9QLuzQzYC1C0zIz8fHlJ j7xmpjuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9QAKCRCJcvTf3G3AJrdkD/ wKmF69TzlROZwIafqz2MLoItMJiWF/65+N6fmS2XO9e48KkVpSl2fKtlLamzp4HmXqzSDnzqrZdPk0 itFI4TMiLP++478UHgC0wuWMMe4Ducifntz4TDVW0g5+G/cwTzzgJwGz9AMHNgjY7TdhfBw4EE3c0D Jeug5F7twQ9FjEDaMzmLLynDQY/yeNO5HDDqHVdZRS6Qp2l0RhfF878rFc3Jp0ufEWS3VE/bCVlZ7x eQY2TrsxGok6P//wlSnfvOPbDermCWJr0reeYZcxyWC2YqbW++crZK5dk9aK0237tPWEG2O1QO3ofD Ac3IBz2jVy1oGQ8VmJIoxLQ9Lh85+lvUqiLs6S1VTNTlVAGB6NHYhTgWC2xVBdtVCuwsvs/Qt1xm3j LT/xKjTkZkRyGB+QGDb5XPiXh351iZH6rNoDnL+iR58vjO0MItRJqo9ydXevQg+Ul5b1XHrCiI3rzA 6c9Wk6pWdD0gJ1ch+rNk9dMJqfelisvVjpAsPQE8V4NYMfmaYgVUBqghH3LW8+LqCpidDMrXk1RM8c InBmG9X4jSf5m2HaoIoQudmq8ipqnFpqMY1T2r/AbgbTovYcSWFMXMwKGZ1+tgY8JfOJs69rtkN9pW nrxhwXPO6Od0J3Im7hVxdDvu4WFS68ohxHONWzmNrusiExiSogibF5+dCOvw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KNehxyZs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Adjust the comment styles so these are correctly identified as valid
kern-doc.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/stddef.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 998a4ba28eba..8553b33143d1 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -20,7 +20,7 @@ enum {
 #endif
 
 /**
- * sizeof_field(TYPE, MEMBER)
+ * sizeof_field() - Report the size of a struct field in bytes
  *
  * @TYPE: The structure containing the field of interest
  * @MEMBER: The field to return the size of
@@ -28,7 +28,7 @@ enum {
 #define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))
 
 /**
- * offsetofend(TYPE, MEMBER)
+ * offsetofend() - Report the offset of a struct field within the struct
  *
  * @TYPE: The type of the structure
  * @MEMBER: The member within the structure to get the end offset of
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-4-keescook%40chromium.org.
