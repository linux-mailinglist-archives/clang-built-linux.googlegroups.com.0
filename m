Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6L2H6QKGQEUMY7FLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C282B72DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:08:08 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id l77sf243959ili.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:08:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605658087; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNAJcS2QzBI70Hfl9IS1qgcKyE+3JrIOgxsBM6/TD9OPWYawTGCid3XzBhCXEP/NG9
         daofek3RtLhQbe6CuxcrTqI4i5yEG8EO5ZP+gxOUYGJGBwSNJNkFKxYl/RMidIVSvixq
         XsAy8rWgQu6ny3NGrLG9V/UHhaQQ8ImEE4s+bgxlWHOgVf+meaSxwm5vtQdbFhijdIDI
         tmDDCjuAhMUolzgJDe6uXjYfb8vEqZh+FJWxi6Jyx+TQnsQfDddsqAKT+usHqYohwzsJ
         nzNggrz76doVpdjNcIm0WDjsM3Ruyn19IKOTmUoN6BVL5+UZM6UK0Il1TKMxqfUKOOjv
         Dr4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=WjTpFZ8Pqg+P6JkyJaunGVIt+lb90Mk2/JINs14fc2Q=;
        b=N8ep/e+SfvtTsZLnqGKoy/pL9DmbAaQ0BcLQfd7uIsWdoXpWjt+vxNZirl5057rFGC
         SzzmGIedA5cpKh6Vlb6SdbrN6eKp1byu3BMcwD95gty4yBDZrbeZyvoSRzN1bh25GmZj
         ZyIR7TVm9yRxOdWAVhOxgZI4dBlUafAMCBKSdLpOzJvZRbcAOOmuF+w24lTGsr19vj/k
         YIYK9N8w3ohye7K8WUHSIiDV3/qHU/Qc/TGMm1iUz3wuf29E1wj0whvE/BLju6PF74Bj
         iKH0YMXLQSG+eFcfEFcSz+XXREsbQu0X2Vu68qoWu2NcNsVqmhl86l2+tg15Dp6dkjHj
         oPPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i2Z+6bK8;
       spf=pass (google.com: domain of 35mw0xwwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=35mW0XwwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WjTpFZ8Pqg+P6JkyJaunGVIt+lb90Mk2/JINs14fc2Q=;
        b=kJC/qwptdZpyReH7Wgw8VBJCtDKzveFp/gjR6UPzsGocQxmFzewqQ0kShs8CnF3NWk
         /Fyi9v4nn+nkLz9kcw0x7BnpkZ9EEFNhotViX9Vzsxah61LrzNJ84QhUrTt3ex/NTPaA
         1pE3HAV/xWZJ9WUv+SvTXfGQiFTxDA32SskgZ53zzoB1MfE3xVj4Ga0H8qGqNgpstMcR
         td6NRtfob82UOuf+5tXFkq7ooXNOoX7mbh6QWN/4t/s2QFGl4O5x3QrOjacJkjeogksf
         eL3r3WORS93MlDqJqfuoDPQmGXf6cK5hjaAu+RI84x7JsdF3+JINutgm6ylaCNmElCo6
         wuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WjTpFZ8Pqg+P6JkyJaunGVIt+lb90Mk2/JINs14fc2Q=;
        b=UYmuBi/wrSQSG4pMc9uhhRkoeX7/NdwOd090TvNEBb7R8/NFDYndbx0kw4wpp/pzVI
         ln04TDk/Zr8DzyHzfrZzDTuugjCI/dsrRj93GMaeZ6MeWVph7W+cTt5EfRXj8PKQplX7
         u7enoHfTxk/jXQNetboriXQArjdz3a5DIvYp/RmYkEnmBL8G0qVB3Wl10oJVmYyFb6AH
         DNw5yaOUaN180usc4HKPkvKhZrY/2v8yClXhYg5N7A6AD3z+MvFSxFHDxbJXR3P73Iun
         42jbV+hDivp767gs+Ckjam4n1Uak8n8aoe2eLjsGW9P8cxxVErv/9c/Ovssv5vrHcw1t
         xzFw==
X-Gm-Message-State: AOAM533RgzlZzlkSnKLxKLV4KCXkwxcr0E2+jgQIkwTY1h0APePXdy0W
	Loum6h5SemIeQtmUPDMDBUo=
X-Google-Smtp-Source: ABdhPJyo5E3+dq3Q2xT6Mg19nsaDi8xbCn6ETVM52xQ0f5/Oac8cP62tkQZTy4XajfOLFV93oMo2qg==
X-Received: by 2002:a05:6638:10ef:: with SMTP id g15mr6026251jae.85.1605658087224;
        Tue, 17 Nov 2020 16:08:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1246:: with SMTP id j6ls3980043ilq.10.gmail; Tue,
 17 Nov 2020 16:08:06 -0800 (PST)
X-Received: by 2002:a92:cd0d:: with SMTP id z13mr15025126iln.39.1605658086875;
        Tue, 17 Nov 2020 16:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605658086; cv=none;
        d=google.com; s=arc-20160816;
        b=ZqHKdZFOlrEI9hxaYGU22uUnPnHKv9DxJm0XSYFbamYSL2TZ5y3UIfC/sjcuup/I66
         24S4uu/d2fblT2fU8+1EZJ8BV2nGpxlPgxC5LuwXjzR2KS+JAVhXGTDcWOps/D2ahaIc
         kLX5gYxRPWRR/EqeloiBdJfEwYpWPo7o60Xs8CuTCoz/NmhCob8qcqp5AUh5HOFLK48A
         VIkv1nR3vRdzAfC4WROLwg106UZ0sop65h6bbNLe+x5uN5B/9BWumhydWXWg3acZQUEI
         4H4TneSRWE6JN0xKTPOPt2UJT3PT/LzQ3cjxTpjaFhSS0yBR9eerdfCXGLnqgZfmCCn2
         ayvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=C4I5cnBVqMLHEBaHI22ejtAYmddqM1FCT8jQvlcDxTA=;
        b=d0gS5fuyZ7kS8CGVHPJdf0/EkHKDkWk4Xo71u6+4qz4P/9A7nzKf6fFTTSHVRCFEAo
         RjZBJpCigjE/yd4w1/gmOPPbK3Df3Iq+wHjQRSD9sLFmt16TGNRRZNjv6y7IBaKHMqWJ
         Q0DL6AAgoFRw+UfLYbBMiyAail+kXyejkoORJDXf06uF3WMYf6uSr5521jGhXrO1n4JJ
         cnOWiDDRSzLuy1e5GUh56HVfbnQ5FBPEZRnYGhVapW9jJh4uX7WKbRHEP75L9+LhJ1Uk
         q8jBF2qTXHbL8dQdu5ZkTk0IcwCpO5CnwqtfSoxQccHKFFkgWgdFhcQaaNYcodmg+Bdd
         MGsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i2Z+6bK8;
       spf=pass (google.com: domain of 35mw0xwwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=35mW0XwwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id f6si1262027iob.0.2020.11.17.16.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 16:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 35mw0xwwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id g28so88760qka.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 16:08:06 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:44b3:: with SMTP id
 n19mr1968835qvt.56.1605658086294; Tue, 17 Nov 2020 16:08:06 -0800 (PST)
Date: Tue, 17 Nov 2020 16:07:51 -0800
In-Reply-To: <20201118000751.845172-1-ndesaulniers@google.com>
Message-Id: <20201118000751.845172-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201118000751.845172-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH v2 3/3] powerpc: fix -Wimplicit-fallthrough
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i2Z+6bK8;       spf=pass
 (google.com: domain of 35mw0xwwkaicyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=35mW0XwwKAIcyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://github.com/ClangBuiltLinux/linux/issues/236
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118000751.845172-4-ndesaulniers%40google.com.
