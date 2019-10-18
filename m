Return-Path: <clang-built-linux+bncBC2ORX645YPRBJ6IU7WQKGQEUXYBETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8ECDCA72
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:20 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id u23sf2811313qtb.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415079; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ij1xvwkuS+q+ygsrGzatEb+7wdsSnLltpuGx7fSKX+xjBH7kKukHH4dswuQSWjbYjT
         y7vL6DnjFm+hhmh5NRjXKMR8zSs3dRCVLtyCa8DfA0EwnHA9TAYvPrX/7iXFywZGM1JQ
         am3oM6UuHOS4MBeb3/f+Vu/js2OokMo5UccieHZtcMxcExqYz65PcAp7oRfG1Qglx/d8
         aUbHx9XtEnQZ5YavKaZSyyeJ2EsxIOA50/PWxfabTZgJ4+EQ//ZOwSHRaJwPX3CmokZh
         tB9I9O7RmPF1QIrSXeDBvqk4tN1S1v+85PocsTVrrkL/ODKt/AziSvCMK00twqJgiVt8
         aqIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XVOjmRKqbGCerk4oUvZkdvUq3nPdkbiEcBBJzvIEkjY=;
        b=yZ3rdbRW4Tu7jvrBIyCdZBcK4L7fmUvsu4e5oYWsEdI8yk8+HU41C87SMIBv3kPK4G
         INsPiuzRryzBbmeUk0xkqYKzjpsqBaNVjad+XljsDVrKFCXjt18DxFI50I/onNLPKvW8
         kPkVcmqrORvRxEfDNVvbyUNYpdFznIqsjOM+OFu+9OGa3gllPM9H9wRujpjuI//IfNk5
         6AZuH/h5Gl+lc+uRIJeWZMfj3jHOR/+xSuzXATBNZoIFKmUBiFCNRshRbxDW2CS6wzpy
         uWcrIpqnAIfZKpB8Vi1EeNZi67CMtGjjHUauCwf8DqkW3SYZmGM499AAxZe60+4u5unv
         ApRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSG0XzUq;
       spf=pass (google.com: domain of 3jespxqwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JeSpXQwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVOjmRKqbGCerk4oUvZkdvUq3nPdkbiEcBBJzvIEkjY=;
        b=UPJoChKpAgGqo2FZtReL9yKxm86eZ08VUfT1BgBnXgg4DZFO+aFX6GW9KoCWw9XN30
         PPOYs17wbxk5dHxd8+cnBDEuP8p4mN6N1BSnmB910JONsGA4zH88WYO6t7Uadeam9sRA
         zWmzDoPH9JmGOgsTdeB3i6NG+XnakZs2Rd0B30wWiqUECjDWI53aXKtR0VH953DMY+KA
         vPfitcXOTjrgWab/A/Uhzs16Pn2A2yHKadFkOiskd3+K9vgoR5+rK8RtJ9KgPreiFbuB
         UdY/jsGLrkgSMR0MiSx1nU298M5oGWnEKdmitbb0EggBk+yXMl07VA1q2H6r1UBAUPMM
         rCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XVOjmRKqbGCerk4oUvZkdvUq3nPdkbiEcBBJzvIEkjY=;
        b=F5j3zMGUABE+OD8f7pyOPg9eFFiAub4wajkqGVo1SDCvisZDeKqtsgXb/cIWOpqILN
         r3/GHI/m1pX+/oAZ/sLIq3w12JS1VHCTh3tpoagST0fQ03LBv045jS2daoCEEp+2oQYf
         ZkxJlgOneWfsCdYyHYeZRgTSdW+emifThOmUI/jTNrztGaASaeRKCjj52TP8RqF3mefX
         yyhgS4E5gKF9LmxRhKyAxLdf2FHsu+LnBmeFaoRa5BObJCdn3cyeiwLf8jDo+T4ymDn/
         0slSpTjUrpUdatg8NBgZAPperbOTsXCr5t0TchnfP48GqNcTz6GpFaIKf7FJEcPqCI9u
         x3AQ==
X-Gm-Message-State: APjAAAX+yuV2dAl5WOeVEZbUBfH9Q8Th/RdVF1/3zjrJdwaaVEqQILjg
	NDS36pDRyrmBhpLtw/pPV3I=
X-Google-Smtp-Source: APXvYqyI6wUg28bRGMQRUJwEHc0e3WdAyIprbKzUkrIXypNRaHW+4zlCJHpsF5eMkmspwYNsy7fqww==
X-Received: by 2002:ae9:c307:: with SMTP id n7mr5535849qkg.185.1571415079412;
        Fri, 18 Oct 2019 09:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9c11:: with SMTP id f17ls2165571qke.9.gmail; Fri, 18 Oct
 2019 09:11:19 -0700 (PDT)
X-Received: by 2002:a05:620a:13f2:: with SMTP id h18mr9360014qkl.218.1571415079122;
        Fri, 18 Oct 2019 09:11:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415079; cv=none;
        d=google.com; s=arc-20160816;
        b=AJA/31aN2cYAnIavE6rxPjLIhnHYfsqnqpQ7+AZp65h/mn49+LT8fkaTHj9+62k98v
         UmHd/zLq9UIhbFANz74w2mwGUOq3s0GjreyW79oAIs3ySoO5LybCJAn/YkQamPU9OX+C
         pkcg7QnUrpg+AJCyN93WTHAXExpwlSpyggU3wCukJJEo8EFcjwl0sjIcMYyARrYbOuah
         E5SnEJ8I/lJ67W8zfa2yVrMPWvqmv+tF6XH3is9n34xqngYH2ZbC/sNf3n1Ab3wW1BIp
         t/vUHUvJmd5/hP/8vGOJ2UW6Z0cMpjMTwCILn5Y/h1WnqwH+GN/P69OdczFyPRTxUU+P
         LMaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=fICIDxFYsM9a9Ff5jMCA2HNdKL4X15DyG8HPfHVUdX4=;
        b=aJPItX1b78qMNsWA5ea9Sf0er1HLXs+/7LPHqhDHNP7pr6kqCIzzsTY3uBHmlqKNOp
         QsCHepqK8RUs1jBnagkfd6DJIyCfT+Fd9F8E/HmhBOLnzuJTAXjGmaRdVAclQq26qtcx
         QUPpLAGuQInOA6LFp/hsWQxOhn3gETrQ/VTM2WLvzBT7cOfmnugimDg60TrYDTJbsdM4
         y+6Yjz/h+V9t1d5AZskv2YeH3hQsajnq6wOwL0Bv02MhbB/HAGSaB719P+VwQvLvITRH
         NVGwTX1exHbHOZEVEvObAP+DMcGPgB4vdmeaX89jvGjFY03dQ6WQ5TM2OFPZtNEeQOR5
         pGqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSG0XzUq;
       spf=pass (google.com: domain of 3jespxqwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JeSpXQwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id t187si206895qkd.0.2019.10.18.09.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jespxqwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id s137so4952802pfs.18
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:19 -0700 (PDT)
X-Received: by 2002:a65:6092:: with SMTP id t18mr11012516pgu.418.1571415077997;
 Fri, 18 Oct 2019 09:11:17 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:26 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 11/18] kprobes: disable kretprobes with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NSG0XzUq;       spf=pass
 (google.com: domain of 3jespxqwkaig4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JeSpXQwKAIg4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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

With CONFIG_KRETPROBES, function return addresses are modified to
redirect control flow to kretprobe_trampoline. This is incompatible with
return address protection.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a222adda8130..4646e3b34925 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
 
 config KRETPROBES
 	def_bool y
-	depends on KPROBES && HAVE_KRETPROBES
+	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE
 
 config USER_RETURN_NOTIFIER
 	bool
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-12-samitolvanen%40google.com.
