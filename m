Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIEDZD6QKGQEZMDIAPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 636872B3C2A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 05:35:46 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id x11sf5903038plv.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 20:35:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605501345; cv=pass;
        d=google.com; s=arc-20160816;
        b=OYJtck8OL+PA8DZVkStZOWq8sSZrBImOL2p3lU8xKcxXY/wuy7PnCIZgbVSgusDJjJ
         3Yo2lA76+mEn80Eq7f1fTikDFL69LOXtgthZ8HGhva4k4xD/FyY1EgjTBg3fieUAzF1Y
         EdljwmjtYJppdbZOLdXhpfE4KWSQr2nf25dKX8QPfG95ZjKhCgiVBTv43/dmLZ+MxOOH
         JlGLtqQEZ3RUzyxpv1aO4SRw2ttOf+qaWl0iqFyWGQvL9O5/1djly42FNEzC9p9lusIT
         Zie+Vg2ViJ/kqw4TQJCKcwn+U/GbUOItu8/BN0WTBcK2FY2Svlt8NrcEp1fJ6+cldNGQ
         99kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=UnxaDfcbFbJn8pO5TLDIaBhHlLeQfCLo77A7OV+dTqs=;
        b=j/XIBc9BAZSaaJjqZBpk4dGGX+CSH9ionj/cx6pXLTJeYwHRZS0vk/5s9EWsaIRx7p
         Xtr2HVVZGbt1PPaR/KW9tx3mcoyizxMZyA4nFMwBstwtozDUuYTxe8sx4WLjk7c6lRsg
         wQ+RPbYv5EADgU4CLIZMNWcvX8JKnMKhd9P0OPm39szebItQRBZoQpCdTxJdAMJqaAyI
         9Wzeh2tiy7eJUaMy0KglC85dUj7PU2smpVTSzGzhWKlkU+5yTILOczSdRR9+L6odOZUt
         N5tPxtLIBNPHpf9ew/3Xz/qXi/MsOveSneDJjyKF9Kp6CKPfJ+vKdaWT3b6djSMNqshr
         eA6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l7DYaprb;
       spf=pass (google.com: domain of 3nwgyxwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nwGyXwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnxaDfcbFbJn8pO5TLDIaBhHlLeQfCLo77A7OV+dTqs=;
        b=iyKo8sXgCvHCbH9MXtkXacswHDZH83Xvtvh+dXLuONF4/WnVirh+H88Hsflaqt3aNn
         7twjnd5OqVi6zaZYGGZ63+rhLZriT53NR8X8NIyKltqNK2UMzuBVXoaIw4juXycVNCUy
         L56wfv+7L0s5thGH9KVwF29pfVuRt8dQyXc9SUigGrPKPwBcF2NKiRmVaHFaUbhYGLTq
         iTuZhMDEY1Kjky8GKfrneTVnrAOjVD66ubLJLUAaj2pU5AhNxzi0jvx4UKFedBvypXEw
         ZdgpyivwXH95MZ5XgqmfQN41kWRcThzf+DhrvpoVZFbfN2zDDx7AZnbwednaLKiIg7nh
         ewNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UnxaDfcbFbJn8pO5TLDIaBhHlLeQfCLo77A7OV+dTqs=;
        b=LmHKjLmyvUBqxkzv2/ni0w1CzjAYZ6AXL1jnFUqwvynZKkqNhJ2Ywy1scEFGuezZ5Z
         tsWeFp4vbfFXO5OidrSzA7QFPiHrTDuA6VB154chH937nShZ95FwuW4CSD8XFttKHQF9
         mzd0TGeW5UVdWg+Qv7s1M7VmAhXmNqFrSUL4B5z5z5Y04+KyLd/JUVhQod18BTJ/F01Y
         kuHQuLzTYcyyLTWORflqyPnse9Uxd+iLQxZiXXkOsw6N9B+gS3D3AsGcNYARYiS+zPZZ
         rmjYeFy4hXj5wHYokI3kOylbeAmH24XiuUb/c5AMx9aCjrEesYA5D1ACPJvLN1fNyQcF
         QD2Q==
X-Gm-Message-State: AOAM5331alO97y1oURn1D51X0msv8fNagRgRWkfJ9BPZBn1MeeIgHqvr
	4W9QXn1RFHmp5c9LG2lnLyk=
X-Google-Smtp-Source: ABdhPJzljqjohtv5/8tafvnfmO3bc6zmpr8wXo40+meFs1vntUnbatcCvOoMUo8tKQ41W/Wnfc/EGA==
X-Received: by 2002:a17:902:bd8e:b029:d4:c98b:c315 with SMTP id q14-20020a170902bd8eb02900d4c98bc315mr12119990pls.69.1605501344835;
        Sun, 15 Nov 2020 20:35:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls4040084pjs.3.canary-gmail;
 Sun, 15 Nov 2020 20:35:44 -0800 (PST)
X-Received: by 2002:a17:902:778d:b029:d7:cd5a:945e with SMTP id o13-20020a170902778db02900d7cd5a945emr11648982pll.25.1605501344291;
        Sun, 15 Nov 2020 20:35:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605501344; cv=none;
        d=google.com; s=arc-20160816;
        b=BK6TE2RbWmYXGdwREJPhDe3BKldRFPHtfv9b4LRUE/dbBnd4qx4LbP5qH7gKwWgsDp
         86uS30X+a85/tw4SGHAjY7KWXb+JsDa3zOM5gHrlnfOTdST9a97DMCYxE2rT+/2mD33W
         JqN01NLsw9hL++Ejk8OqS37/e3rjQDokmHdAju9FuFcX5crhbEF4d8BLA9BNtu0lI3cu
         VjIuSPtVMTDlHFGZbBBpONJmH0u4pjqx5o/zyQ0CknB7L79DHgny2thXFSCcuEl/uskQ
         KfX38mxJ0piwufVTMb0VfhsM3SHSPP9a8lr5QN+xRGgGozTKD6i3UQnCPBSuaFYatXlv
         yu5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ewLDtC1Ll1+KhSOjBeNvFZ/A9hKRZKnELHCa/fqKz8w=;
        b=Lcu0HeARR31UK+HI3Sg/205I5Rg/f0IZlpyLlljM77I6BxHEB/D9XWSAFYZ30NdCIm
         RUfam+N9Vq4Z3HFwDtnFIltQXatZaOvRcNGUte4stM77pKvALZZ8tiHSNih2564rrYUr
         4dV+S6pi7UoMXl+nOpQGnk6nrG87a01Y5IOQxoSZLR+Gh3Y4gQht98r9jDg4RCAOc8li
         kPjPZVSBpk0oU79xT47K77Xt4rZKj6W2DGxJjgzcFA9GDyb/hfn8J+bizfQO7qat6rIB
         Q3QM4Xyo7vbTm3woFcbIaF8CObEJ5gBbYNHgm3MVGOw3hmaR0NxZ4pb6SwHYZt0to7M7
         2Grw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l7DYaprb;
       spf=pass (google.com: domain of 3nwgyxwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nwGyXwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id o2si858195pjq.0.2020.11.15.20.35.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 20:35:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nwgyxwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id m186so4913601ybm.22
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 20:35:44 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:640e:: with SMTP id
 y14mr15191892ybb.446.1605501343478; Sun, 15 Nov 2020 20:35:43 -0800 (PST)
Date: Sun, 15 Nov 2020 20:35:32 -0800
In-Reply-To: <20201116043532.4032932-1-ndesaulniers@google.com>
Message-Id: <20201116043532.4032932-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH 3/3] powerpc: fix -Wimplicit-fallthrough
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l7DYaprb;       spf=pass
 (google.com: domain of 3nwgyxwwkag4zpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3nwGyXwwKAG4ZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

The "fallthrough" pseudo-keyword was added as a portable way to denote
intentional fallthrough. Clang will still warn on cases where there is a
fallthrough to an immediate break. Add explicit breaks for those cases.

Link: https://github.com/ClangBuiltLinux/linux/issues/236
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/kernel/prom_init.c | 1 +
 arch/powerpc/kernel/uprobes.c   | 1 +
 arch/powerpc/perf/imc-pmu.c     | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/powerpc/kernel/prom_init.c b/arch/powerpc/kernel/prom_init.c
index 38ae5933d917..e9d4eb6144e1 100644
--- a/arch/powerpc/kernel/prom_init.c
+++ b/arch/powerpc/kernel/prom_init.c
@@ -355,6 +355,7 @@ static int __init prom_strtobool(const char *s, bool *res)
 		default:
 			break;
 		}
+		break;
 	default:
 		break;
 	}
diff --git a/arch/powerpc/kernel/uprobes.c b/arch/powerpc/kernel/uprobes.c
index d200e7df7167..e8a63713e655 100644
--- a/arch/powerpc/kernel/uprobes.c
+++ b/arch/powerpc/kernel/uprobes.c
@@ -141,6 +141,7 @@ int arch_uprobe_exception_notify(struct notifier_block *self,
 	case DIE_SSTEP:
 		if (uprobe_post_sstep_notifier(regs))
 			return NOTIFY_STOP;
+		break;
 	default:
 		break;
 	}
diff --git a/arch/powerpc/perf/imc-pmu.c b/arch/powerpc/perf/imc-pmu.c
index 7b25548ec42b..e106909ff9c3 100644
--- a/arch/powerpc/perf/imc-pmu.c
+++ b/arch/powerpc/perf/imc-pmu.c
@@ -1500,6 +1500,7 @@ static int update_pmu_ops(struct imc_pmu *pmu)
 		pmu->pmu.stop = trace_imc_event_stop;
 		pmu->pmu.read = trace_imc_event_read;
 		pmu->attr_groups[IMC_FORMAT_ATTR] = &trace_imc_format_group;
+		break;
 	default:
 		break;
 	}
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116043532.4032932-4-ndesaulniers%40google.com.
