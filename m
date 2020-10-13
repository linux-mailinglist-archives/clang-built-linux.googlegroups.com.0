Return-Path: <clang-built-linux+bncBC2ORX645YPRBDPLSP6AKGQE55EK2UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id CABB328C5C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:14 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id u16sf12947264plq.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549133; cv=pass;
        d=google.com; s=arc-20160816;
        b=RCeMu8/cYfPFo/EFUX8FY8yX8qc8uw/DtJ2qmlKgodwKigzgXHATMcKi1AQO7veP+W
         l8ASKwu3gB+hxrzy7dDzclG7deIBTu/Rak327gwY9AH7IIwgvCXP+cKFyXIjMGPRb4kk
         6hN7DaXXF/8x3g+SAWmH2iFtD+twogLEDtYzGI1gnQQgJsJmPHGrwVaIiXtcdyjdE+mG
         aNn40o8grlA8V3nxZr1p4Rwmx5mcMQvGRP49UmhBd3dWmWuVYa9DEcyAttbT/uzicZcW
         K8BuoHPf0+3cLVLaYPLcExtgvEh8pBYl8iQLYsskxqc5fSK3WGot8TRg+zWJHZvLv3lT
         lUGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=jH5gBlD6iWahdB0oPLhmb5+GVeurDjgEYPLh/f85+oA=;
        b=cFQpQVvGsKJZVRHN4VCI6m2E9NBl61skT/socuZVtoXXJ/3KYcPWyh4apYH3Fnjph3
         E7iyiOa6t+p+m1z6xEM6t1exUoQ3CK85s2RWz1ZrirpyU0R34M9Hrb5Wde2/0PXam2H9
         M8xxTRRcJN0dMrQIomiobCRadi3Lw5rc02L12NuN0D9/Fk+kR6rnO71BKonXsE4kgyoj
         kJnT9TLBCDQBhGwwyZN5FpwYjbTQ0LwZl0DBg/N5Zetox9H0kZuXC30htjm/Z88yw1T3
         fPysE+FjxzG60tbLonoXAoM2hK3LQ2Cl/Et3txsRbgpRiLzKmMyG1A5O/ljmVeH+kAhM
         rxRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qUa1vHHc;
       spf=pass (google.com: domain of 3i_wexwwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i_WEXwwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jH5gBlD6iWahdB0oPLhmb5+GVeurDjgEYPLh/f85+oA=;
        b=DeB1/MJiEGUOLyBqRDMZHpyrNIFYCwo9Uy/u/nxJnIRJj2HUl4VmKXWx7XMp9FLbE5
         1W7gBX3SnQOp14oynoe8vnB2T1dd9ZqqljrKMA7LlVpkdUYW+B2Cj4VXyI5e47xYwrjf
         nuRcPxx2IRTBnEW9GL+//R4UpMN4usk7998yNNKZkLhUGr8frFLsWS0pDJWaoP00KqqU
         e5TlkHvz2ay7Oq5IVuk5pcxZ3cibly+q290rMGVx0IG6/6M5G9CHTGPedXcpFS2JTjX9
         rVNg1reuDk8OWAh8fKH2WVAQlrwsGBULa/zgvVseyVVPs2DRQslvYeX8MNCjR2CftFqz
         fmlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jH5gBlD6iWahdB0oPLhmb5+GVeurDjgEYPLh/f85+oA=;
        b=t0bPis/EqUvfRO3B4y/fUkWGLpgckdvN5xlMRhK8quNAPnnBNFZuTsfMv/QNrXXpRG
         5hzO6G4c6/zUYToHn+EqZptVKQKhRvxFyBT2zOZ2r1Hn/C/xn6Bh6Zdu7uLrFSl42CYo
         djdnRf6ChWotsL1/Q5Jii4UHIgPrCJ4hv2jVYBTrMiItaAeuR7EsBwOQ9mMBDe660rWH
         znuM9vlHYjrbhtVoWncTITCVWZTwgwyN8OENVHw7lIq5kGXadQ/qyLVSjSpuq01ZFSYK
         7Rt2YwsTlWxDPB5y/pZXSy2hfIWMD5of9SkeAkv87m17Ann8ESTSQDc/8lWI1WOCQzUV
         6w6A==
X-Gm-Message-State: AOAM5319Fc1i4MELewltlx6O2y7BbAeKdKViYUDncuOmGbZnzv2pzet2
	UoPzBJlsHb7uebpH2EqVxUA=
X-Google-Smtp-Source: ABdhPJysT00+RDJPmTkv3rYhzX4IuD/71XVO5kCSAOBCiSflem+nl/RIFt4fPlstW4QBE4ceoUgG3w==
X-Received: by 2002:a17:902:bd0c:b029:d4:ba5c:f37 with SMTP id p12-20020a170902bd0cb02900d4ba5c0f37mr19544366pls.56.1602549133354;
        Mon, 12 Oct 2020 17:32:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:86d4:: with SMTP id h20ls6185898pfo.7.gmail; Mon, 12 Oct
 2020 17:32:12 -0700 (PDT)
X-Received: by 2002:a63:1665:: with SMTP id 37mr15264989pgw.383.1602549132229;
        Mon, 12 Oct 2020 17:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549132; cv=none;
        d=google.com; s=arc-20160816;
        b=TQTjeFQfg0iiLP7KAn6TZowU3ubOpoDvDKJx6qMZcT9E/lMVTuzqDNFm7ju8iHBDoz
         4uL59ygw7ygRYmJMlj780/lzsQOC8YOmMV2J+ONyJHsghTGKmHY/wSqIlB7EQmHhVTmL
         PtdEoiOEzljHZmIqH3O1CWtKT0mS3ZuBdbI89H9dXZeCG/ckZebHmHnXGpbHauGo27Tv
         DNdYdbQs0H9KIs13wSWHUx6sqaf0GpE4PW1TfbMBNCsdQ17c4gQeEoBL2A/ZaeEEVaqU
         St8ytB8V9HUAfAfLkvBoevfwmGcr4lldT5r1hRiM9Z8bHdOC+VHg0wQbcecZyW6DiIW5
         Ab9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=kVJaNW7eSaj0HFfwrYDw0RQeIfteodxyLLwn3XkvFZA=;
        b=IIAx+q2DEwyn4o00r9thYbjpZuziojWzXmElDZRahJaAgPGLfNOVDJLJQ3WGTsUVrF
         r9jBhSH0uBm3qpReYArndcXNBv7Fcmft+BIyjbgjgl+gtNRfYxNT+z8QQgwLc57esybK
         tI3H1T8qeWGu4cEVDJp6iTSIFRo0a5Nl352iq4S482uoFI1k3w6k3xpP5gDvdavAOcC/
         CUshdk6CM2Dn7Hc872JRZafF6uqh1PESn1+/aFBpOTVs5VB/KHgP2Wqso2kPaAqEb8G1
         3JLu1cRU/abGdBr09DiYmqEfrADjeZ/3EHurcek2xjYDtLbzLepOZeRd8Pigi9+xCPwI
         rTEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qUa1vHHc;
       spf=pass (google.com: domain of 3i_wexwwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i_WEXwwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id e22si313427pgv.5.2020.10.12.17.32.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i_wexwwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id p29so11717890qve.17
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:12 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5843:: with SMTP id
 de3mr28374099qvb.12.1602549131356; Mon, 12 Oct 2020 17:32:11 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:41 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 03/25] objtool: Don't autodetect vmlinux.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qUa1vHHc;       spf=pass
 (google.com: domain of 3i_wexwwkaiw8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3i_WEXwwKAIw8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With LTO, we run objtool on vmlinux.o, but don't want noinstr
validation. This change requires --vmlinux to be passed to objtool
explicitly.

Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh       | 2 +-
 tools/objtool/builtin-check.c | 6 +-----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index e6e2d9e5ff48..372c3719f94c 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -64,7 +64,7 @@ objtool_link()
 	local objtoolopt;
 
 	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
-		objtoolopt="check"
+		objtoolopt="check --vmlinux"
 		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
 			objtoolopt="${objtoolopt} --no-fp"
 		fi
diff --git a/tools/objtool/builtin-check.c b/tools/objtool/builtin-check.c
index e92e76f69176..facfc10bc5dc 100644
--- a/tools/objtool/builtin-check.c
+++ b/tools/objtool/builtin-check.c
@@ -41,7 +41,7 @@ const struct option check_options[] = {
 
 int cmd_check(int argc, const char **argv)
 {
-	const char *objname, *s;
+	const char *objname;
 	struct objtool_file *file;
 	int ret;
 
@@ -52,10 +52,6 @@ int cmd_check(int argc, const char **argv)
 
 	objname = argv[0];
 
-	s = strstr(objname, "vmlinux.o");
-	if (s && !s[9])
-		vmlinux = true;
-
 	file = objtool_open_read(objname);
 	if (!file)
 		return 1;
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-4-samitolvanen%40google.com.
