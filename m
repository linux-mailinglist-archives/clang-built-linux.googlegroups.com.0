Return-Path: <clang-built-linux+bncBC2ORX645YPRB3HL46BQMGQEHHIFNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BD336297A
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:09 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id f7sf7507417ybp.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605548; cv=pass;
        d=google.com; s=arc-20160816;
        b=TIKFcKXUfV5+2ni0MU6eI0HIkOl4aBIwGPtjb3oByGmMUrtOpmwmKu9gGxu2qjr19o
         hl5QKUvdnJHyYaMNV9VfScZCL1c2JMDVMNT7OkSYffXdbduiIcdfPSnK/0mr0Uda7tQM
         G2MFK6+4xAHjpKKzgL7DhRqkHLP2hQut1nv/oE/c/ZYoa4oIgcXmIQhlsHZkCqXTMbkG
         yiPDBCjVsyPgHTKEQfbDkcYBDlcCCu6It9CyK0GVM81RNl+KG2eNeE6Fb5ZgheJ2AZ0R
         0vh8gnLPbUWR1Xn6uSaRJpVsvhZp3Q5bzGIyOAoWKJrRTZ7p72by9Bz48Gc4Z5tla//l
         ldmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=UB2N0KANw+vqvWZUQFKF8f2sbUVN7/D0fhpEWcFU/uQ=;
        b=vwEQ7YdrMFy+CB3yYlX+qCynJh+mWxzy7WgeAmGS3YzxOgQVQOAHV83Rlt4OUR0AxC
         ViBfDKBQZ78b8y3TCkzBLMQprez2pucRBAHDmuheO0j13e4wI01sUIdOnL7ve5O7jqvI
         ciBPdXbzOBCUCkjHLFzFmWgKjVWRPUX8OJRQnc1QB30JVPJ4fhjriHFgX3GTcvLBHBXg
         lMlj2/Nx3HMQUVtQwcPgoqToTNeRNstzlrydTmN32vweFDZUYGcPWiI/oQbj6XhSdaIC
         8I+BLTL3pTESogHzm2T0gvS0NbxCB7LqLPbshV4KxF2PRzgqj97QyCLHyktmzxWv7BS7
         qOtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWvfsSkF;
       spf=pass (google.com: domain of 36_v5yawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36_V5YAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UB2N0KANw+vqvWZUQFKF8f2sbUVN7/D0fhpEWcFU/uQ=;
        b=QJHwChNaBvZaNZ5hQUFqwk9rvo4pFjAU/Y29R+3sK3iCPnuNqQQYh6S4bbjftXs44E
         AV3+7f0qFZw0hBj/QJblSF/O2JTbodHOGUrQNrpJJmwNM7YFFc1ShGmhWx95wWZdSFIw
         ipbzOU0w+YLFpQCMF6pMRNsNVr+monTKGgK2uTi/QMIOJGSX8gnmzTpaqY4GrICDCE+K
         S2QnR6HZNW+cwsGugsio4PhbWiE3PiLrSdpfgw+QRlv33040JwzwnXL+wWWX4FMaCtHc
         hy83/0SjurWTHOad863p4y7dicWSWkY0LVtDeD2I9DXWwS+Gx1NzRw/p2xkpSeGS0MLl
         +0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UB2N0KANw+vqvWZUQFKF8f2sbUVN7/D0fhpEWcFU/uQ=;
        b=RVvjOa2BZx1tRL0QU3Z6lDYMGEKU1NDg2az9lCGCU66XX93j1fqI1gHWHnbyUyTM+P
         bZ/VwI4JI+DARlNkeG4RqV/1i8QHihXhyzDarCXl0gt/8aV62M2YphkP6SQqI8uL/s0a
         aGTWFSNC23fqy4bqEsAsFRd0BBxrGBnYVo0SD9aJjj5iV4SQKRWg03ma95QwHWzldFqh
         XQskX6+duhkkaayKiaFB2OVxds1lvqcKMTtluGblumA/rfDKOlwJuLy9FSF0QlfBE8wm
         dL5MX7XXf9vWPt4DEThmAiPpNckgWPAVaCwCmn7j/1O8YHoeAdeG4ocSymezB6AoZ/MA
         V7Gw==
X-Gm-Message-State: AOAM5300fhshBFD27n5m6f8ZWcxjdj5hRbyXyYcygmoxuEelWzty8cbD
	lAqdkCqvUV5IyXQPVKhvuho=
X-Google-Smtp-Source: ABdhPJyEoCGtnKsUCDisq+ynLFPs+wjhgfO85kg9USXQAuAlyriFS4dxDF5bQev72RaWjtJ+7rEMfA==
X-Received: by 2002:a25:3c01:: with SMTP id j1mr1506215yba.176.1618605548591;
        Fri, 16 Apr 2021 13:39:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:54d:: with SMTP id 74ls4942690ybf.7.gmail; Fri, 16 Apr
 2021 13:39:08 -0700 (PDT)
X-Received: by 2002:a25:2a0d:: with SMTP id q13mr1356771ybq.10.1618605548173;
        Fri, 16 Apr 2021 13:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605548; cv=none;
        d=google.com; s=arc-20160816;
        b=MVgRcwjEYruNRUbpclM8CTpaHZVlPvIXHS0zIJd6/sMlu+thRFSBr+k/Q7BvuXghOk
         tkvSLzTwONwChrdQSwYWunl/d+Ox25S+kb9n9G6iE357N6/lFMj0x6Uk+8JW2gj63ODD
         sEu4VD5eVDFKjJ0wmUq140SJE0Mezu/FlcgdYWisalJ0d3QYYEyaYG6PsY3kqY/1IUTw
         c3mxptQeDdgpfU2pcKKbWmT5Ng5Ijnt7f92cMI//kU7S9mTB79l83yMzGNRet/mjKgL9
         7Zr23Fd7wr07yt+Sz7Jy+4AibXnsMKqJWIrvvJNd77+ZLcCDdE5aIcCCAs6MzU4zkgE+
         1CpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kUjWBT9A/msvknG/cBSgVzJVzGCrFgBKQbJ1Wr5vaYY=;
        b=M9vKJW4O4Nwik3LSmz/ppxdod+Dh2d6qiC8xL+iGg3RC5ZC6lxTdw2HDFbfYtCjImm
         frhc856ZI6GPPGdaP/n4Bzn1W+FT6dVf1U6veSXU/Q4oIE7GuTRdi8XSNvjHjoYwhZER
         xkLOjVRRk+KODCP3YcERxGrXmbdCSjKyUugCzd7EeVpseQ3mRHLomH7oE2JPsv9dnwyW
         uAjA8e7Vg1YQ0GgVALN++KNmBadzBjKDWaNx7YYeMBBYiAmYMEjI6ki3qWU78A3fQzDv
         6OSsh9u/6PO7WDwH6jBOT6z9vyIZ3ommMf46OHX44as2KPc5LFbtQ1aLrE67A2ogGBth
         Rz3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HWvfsSkF;
       spf=pass (google.com: domain of 36_v5yawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36_V5YAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id f13si174337ybp.0.2021.04.16.13.39.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36_v5yawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id z39so7470949ybh.23
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:08 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a25:ba85:: with SMTP id
 s5mr1478504ybg.336.1618605547874; Fri, 16 Apr 2021 13:39:07 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:40 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 11/15] x86, relocs: Ignore __typeid__ relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HWvfsSkF;       spf=pass
 (google.com: domain of 36_v5yawkamg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36_V5YAwKAMg6o0w72z9o1s1u22uzs.q20@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

The __typeid__* symbols aren't actually relocations, so they can be
ignored during relocation generation.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/tools/relocs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index 04c5a44b9682..78516ccea0c8 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -48,6 +48,7 @@ static const char * const sym_regex_kernel[S_NSYMTYPES] = {
 	"^(xen_irq_disable_direct_reloc$|"
 	"xen_save_fl_direct_reloc$|"
 	"VDSO|"
+	"__typeid__|"
 	"__crc_)",
 
 /*
@@ -808,6 +809,12 @@ static int do_reloc64(struct section *sec, Elf_Rel *rel, ElfW(Sym) *sym,
 			    symname);
 		break;
 
+	case R_X86_64_8:
+		if (!shn_abs || !is_reloc(S_ABS, symname))
+			die("Non-whitelisted %s relocation: %s\n",
+				rel_type(r_type), symname);
+		break;
+
 	case R_X86_64_32:
 	case R_X86_64_32S:
 	case R_X86_64_64:
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-12-samitolvanen%40google.com.
