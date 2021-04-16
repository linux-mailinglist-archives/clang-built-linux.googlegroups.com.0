Return-Path: <clang-built-linux+bncBC2ORX645YPRB37L46BQMGQELCHZMNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAE436297B
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:12 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id q10-20020a17090a2dcab029014e44f5454asf10698770pjm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605551; cv=pass;
        d=google.com; s=arc-20160816;
        b=L0qmPwtjh3E9KX7DqkyB9mDsLRCAqPnAmWy+B7bWyvM9ZuPJMAfhiGOE1S4RalM/6m
         DTv80BTGIkFBNabuTCrXGX6pdcfOnITYApCA/0h7R5oDdUiUqbNp+L4YKA0Lw8HhNgAd
         PNubvXWFNRgQTIaNhU8H+e/5Tywg0pYUIXss12vyViHWo0TPq4Bq4A432g5fz1wl4S5B
         BeibfpZP4Q7ep9VsicHLb6UuhUOS7aH/SCD0WiPqaB6tgDMj0ApIIjmQVzvGdTBEmvV3
         XN9zDFdDANt98Kdxskegjdzp/GeepWWsKQbExzjepQ665Gnq/phrSdycGXspuUU8ud55
         XwOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cgJuO1Gdw44AcVJhQw0M9vMq1XHlo2N3xmXm1m2m3Hk=;
        b=wcUch+woMpYehIk4kq/SOaFMaJBrv94SfzXAXjs9Vo1ifrNqq+60WDKlOQiqF64oTn
         Q9q4e1VrtvOETUOYOubTJSbE+IO93UZdNTMaDBfK0f7QU3FnJv8l4qWPveQNESfUdrLt
         Lpf/F7CU++jweMSsPfVfCWI4B56C7rdixhecxy7Oi9mzf1MbF/8AOr5H4o7dstV0IaDk
         8TWG9Kaiv1NRGrTk1gwQqA/sSKdg43dhqyPDdwLh8CvjgfvbM1plLGtRA1L5OA5yp9ih
         sNgSiNdVyFn8O/npu1thHGc3ySvJ1DX4ucJ9XgyavvSnawjDCaSoyxVnXzR7OzaY6TMU
         JfGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=igg0bNAl;
       spf=pass (google.com: domain of 37fv5yawkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=37fV5YAwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cgJuO1Gdw44AcVJhQw0M9vMq1XHlo2N3xmXm1m2m3Hk=;
        b=pVg7oVRvQUmUbl7M2/qeM0pkH65pGuvZxATQPaTY+BoMWe2BKrSOgeH8bM5RbVlvFG
         C3sFiKhGGktGFKmUCSQ51xiy3KfO4rv1qD4NLHI4NVrocfc2Cyb/W0xdA31T9TlwhjLm
         IApTUBA/zbYc9ydYGE0worRcB/uvFe6CmZB6r8FBSHVNz4jB3TW7pWOkAq0N7f/p0vLZ
         oI7x2hJM2cKs4cSejWQBQJk2u1Abs93Mu4tSn2EszMwmZ4fQ5dOJnQjeabO9+wiFkRpc
         NSdkvyO8RfjP5/HEuJrk9HV1kxdEu4DLWVsbHJRUYKa2t3xpd3TgOcGfZnOc2zUIkLvs
         LSGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cgJuO1Gdw44AcVJhQw0M9vMq1XHlo2N3xmXm1m2m3Hk=;
        b=KbggaKPCVKHPuNbJhzlCEjHOIiFoO3tb/FHb8qy1qjZ6MZf+TW8r56sQ0oP2U8iqB4
         wz6k4zrQKoGFzkQ4VSiKngB6SI0frtmKqIlCu5wQg/U0mQuUKWEICi5nETMnCaFhVUde
         6iwyKmAazOdfwZnt/6Li969oWy37tMsXvX66VslJ5ZtjRPj6hlmV1fgjwKZtV404svgf
         Gftoccs/PIBMy9PgtzxEMElkbd/E3TAzXmOvl01oR+NjJK3w1UPfvwec//ujAfsN8ADl
         w7u0guFLoHaYPG+YfzL7q5cAVgWCCa9yqzY5JzN6bbRshew1/0HLlc4NseE0q6ZpH5w+
         V+KA==
X-Gm-Message-State: AOAM531PTqsQlo37zHdhejaCJJqUxJfg5XZE8bP8Ne4jZ2IScIz+yu4A
	TJx9Nr6hrTSUDbKchVTmTrs=
X-Google-Smtp-Source: ABdhPJwANgA2TzC/Zy1gw0sLmA1rw4KqF0EI5RGi8OljH8jtSg14ga8e/FybjlYUxqmp9MOOMIgn8w==
X-Received: by 2002:aa7:828f:0:b029:200:6e27:8c8f with SMTP id s15-20020aa7828f0000b02902006e278c8fmr9230377pfm.44.1618605551205;
        Fri, 16 Apr 2021 13:39:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls4050724pgh.4.gmail; Fri, 16 Apr
 2021 13:39:10 -0700 (PDT)
X-Received: by 2002:a63:a42:: with SMTP id z2mr792181pgk.52.1618605550601;
        Fri, 16 Apr 2021 13:39:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605550; cv=none;
        d=google.com; s=arc-20160816;
        b=q/YK223omK+PjuZ4hIjKQYYX2D8BYim6jg3soTk8+qi27NzG5XGjgcVL+AqVFWUeG7
         slguR8yydXeKrvORjN9wNnoMLLLUSkNNpBEbZiTGs2C8ldTvU6ON9gcUd9JX0DoIcEB4
         rCDBTZwyZXhXB/+oQvIgkKlq08FeXYVFgSTlSKE0c5B8sthsO+YPSjl3lRdEMq9jiXgL
         Az9nWyeIeTKV78Mo7m67esz2qky50p6MGUSAErsLJ5fEgi3HGwXbGcils/ENr/yp6opn
         S3a1zc/xD2mZxQTcQ1hSlLoN27AjA0iyaJz0XVIxOxyEGW/AYllUM37ubm5Gx4BDzk/r
         QwqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dqjKvRAChby1KwNWd3tJUey7yQJEUcmJ1JTwP5gvp4E=;
        b=wAqy572qqgYUocG54uA+zIPdRzSS8DJFJLVfvDGJuT5boSescCe7LuWc5tlVOW2NFx
         OpebixcnKr9Rhjq5/e6JQLvP2IvVCc38GM5N4OR1tRub4brNHSQj07mJeeKM83h+kD1i
         I7QpMk8HTnswbLutN1Lyuvbb4OnDe0T9vOghbi1PdPI8fkpTQidWIrT1P8psA09/1wTu
         JS6J7U8BpK2usFrxp5tdAHRL7y05EKsKx2BgekY3UxIcGisKFctdfibEijsfTZbxsSBX
         I3/R4WsUC5pwoSTVy02WqZeeVZLqtcQMc1lO830IVD1BE+izponnQWFNWjgnHUSCaWwD
         SDCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=igg0bNAl;
       spf=pass (google.com: domain of 37fv5yawkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=37fV5YAwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z22si657954pfc.6.2021.04.16.13.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37fv5yawkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e187so7577011yba.15
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:10 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a5b:b8e:: with SMTP id
 l14mr1350126ybq.352.1618605549830; Fri, 16 Apr 2021 13:39:09 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:41 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 12/15] x86, module: Ignore __typeid__ relocations
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
 header.i=@google.com header.s=20161025 header.b=igg0bNAl;       spf=pass
 (google.com: domain of 37fv5yawkamo8q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=37fV5YAwKAMo8q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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

Ignore the __typeid__ relocations generated with CONFIG_CFI_CLANG
when loading modules.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/module.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 5e9a34b5bd74..c4aeba237eef 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -197,6 +197,10 @@ static int __apply_relocate_add(Elf64_Shdr *sechdrs,
 			val -= (u64)loc;
 			write(loc, &val, 8);
 			break;
+		case R_X86_64_8:
+			if (!strncmp(strtab + sym->st_name, "__typeid__", 10))
+				break;
+			fallthrough;
 		default:
 			pr_err("%s: Unknown rela relocation: %llu\n",
 			       me->name, ELF64_R_TYPE(rel[i].r_info));
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-13-samitolvanen%40google.com.
