Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLF5Z72AKGQEWSEWPEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9982A1A61C4
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 05:38:22 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e18sf7400102pfl.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 20:38:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586749101; cv=pass;
        d=google.com; s=arc-20160816;
        b=LA+XNpJF4KFWTPnDvD9sPWGl3h+6Xn85xbsv/aHTplWrLdJ4NPJ0n8ZQhxQEZ8xKgy
         t5Kh1TITdgRmzsrGP6cp7Cnita8F2JBVmlquZSDQ+iesQnlZWs8SsbSFQAsFSs6082QI
         cgTqlMkMr1LmF9JS5wr1Rs0J5ctIADJsJfUHg21wke+0qYyT+pwY1J81rWr6pXGtIuiQ
         1vPWRITvJTwkoDUcOp5MNDBkGFiTlTk3FuNYqam30ZrBFrXfVz1qGhIpGvtefOC9Tydr
         GT7L50FBaJR+xJNPBxVO+CJxpzHMWUvKESzC3hF9ZVFMX9OXpC6bjBXnabbj13u/s/4D
         vuow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=pxH9EPdC1ld/+cB033FgSN+uDZI4Fs9cIoJ7lU/V9dA=;
        b=DQHGT+C7sShTM+loRv3VgEMigAdrsEEAuhdgC2yB6KYvpsgvyv9IYwbbsLUAN7FSUt
         35oSGWprPoRtWxJH3qY2GcOMSk9hMP5KDTl7LGw5igvR0g4VgHnIW5C5X+5O+AlgpBcD
         y4EOkIOB8dS85keYmnpLFdM3F46t7NoFFFvTVh3M+Xo5GdnCApWSQfzFgq2De12SKZuz
         8ZugF2v3eGZZzdRs5yn1llY0bWlsFphm5QKwR29YYTw2QDDhhuNJVkNmlg2gt+/w/cwz
         fVLvWa0mf0D4dJNI/13SASV59KEYewq35X2ob3NVi8IGzxLsOqoY9XAeqMyvldUcHLd7
         Oi6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YtFBuwoM;
       spf=pass (google.com: domain of 3q96txgckebieskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3q96TXgcKEbIeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pxH9EPdC1ld/+cB033FgSN+uDZI4Fs9cIoJ7lU/V9dA=;
        b=AykJRlYUYypQtFceHY334Caxnh8oLtMXV0ke8sT3NjvRn/SKE3LdQyqSFUVOR2fJe8
         Uqfx2CDMBa+e9Hv+c7D3RsgMB9lVPWGvg8nLN6S3wiPg64FcijNszJG9oSxT+XKjoeOS
         aJkIqrjip/a1+Dzbn9jSqCYMd23DKy7Mwe7OWd5ZbFOCKxBKtK/Wsx6X0hjxJ2w958su
         DSHMvA8DOrd/5V2kTWbIHUgtOMlFERC3DcXyy1fMFlOyf9fY6xjrASDmlIN6p2ZRPZM+
         Ja4YS2rtsrY7w84cgzcgxaxPZRbrz0pghRlFIAA7S1GSbMqIIBZTlL/UFJPABeHG3B5W
         5lLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pxH9EPdC1ld/+cB033FgSN+uDZI4Fs9cIoJ7lU/V9dA=;
        b=dbAjv2/m1wRpF3aa0D4s8UQC9dnYuxfrkKJdjcEYGBqf7xaDy8ycOAHp3WxXhresRn
         0g4kQh9o2ezh553Hfa3iBAjt1AV3OPxYlejhIevG9xEvmLtukNmX2Ub4I+Ntj6esTPtL
         IGJBiFiwDvPYqL2RiPFDkHsdYFw9iGpmD0wfUblHowTr7zgxj+33Qk1WEwH3/a05uDIQ
         T8Gc6KRalw3ZiBF49zoIqy5EoKbSIFBAqo/27g/NeD6Bxb74eHEypHjRSdNph+0wQnGz
         5S6pLKgvcxbFfTZg8LGlLxJIAObHTMIN7eZpZuSkG3v2TxTL6KvwA7zqzNhGhsoK375Y
         1JTA==
X-Gm-Message-State: AGi0PuZ3YlYAgk6NZA+SllhPZ5IqW9otikz8KwWWINFGpIl4ofq1EyPy
	OZQ+zm3OYqlG5ic1ORwtWZw=
X-Google-Smtp-Source: APiQypKISN0bOyKIRznUw9L7Yu0HSoCi/Y2xfslnrYSzyQvwQMyYL/EOPZK9b+jroixM2LwA2ICf2g==
X-Received: by 2002:aa7:9f03:: with SMTP id g3mr16860580pfr.287.1586749101018;
        Sun, 12 Apr 2020 20:38:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f196:: with SMTP id bv22ls9748393pjb.1.gmail; Sun,
 12 Apr 2020 20:38:20 -0700 (PDT)
X-Received: by 2002:a17:90a:2ac7:: with SMTP id i7mr12616551pjg.130.1586749100444;
        Sun, 12 Apr 2020 20:38:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586749100; cv=none;
        d=google.com; s=arc-20160816;
        b=WfknEcUfHWmiY3qrvqv7A7C00fK5BerLDS3W7X8W71PWA1IfMkLYr1Mll2ygiSKqPh
         oPKrhJH03SJ7aAN9MTWx6vC6ILybN2tJRJdqZmcreRYZWan52NwW8C8IYUU3+yVLI8cU
         qaktN8iUDRRjmPc+gQtVj0QRcyV/FSyrPfizQOeWBCZAnfJxGzeZuJ52tlnfgowx4l2m
         LYKnttYltPzauAO0FplE4UvZM0dHb1XjCUCmggFDhEpNzcPIY5vezBlTD3vRxsrPrM39
         0fL4a7RclyIlpkLdlV5lgUTE4Laq05M5Ezd48HaSVzBX0QWq7oYHtnwexsM99tQLpiPL
         aa+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=QORZam2dJ5jBZKiVodgUF3UBGqcYPusEkvKEQouWzf0=;
        b=NrXe4Z7oAfbFXk76nmfpDqnv5JRP2tyv9Z9aoa7vIR+LBchtos/D00IHD1IfHj9faZ
         TcZ6/Ru7AWpXHDVFkOTFwGl0KkzSy16NOy/uLGFv/8SZ3dTnKlyezq77xqhIrSpukNkW
         nYLwZ4DWMoqfdMUBzcIyyR0IyxlXeXtoZnggiCZdI/34RQBnNplJt+DN31xFR+6t5HjZ
         bvpElwWkKI/JYIx2eVFNnmtB9q/XaJq9uNVVzbWf043knTqO9OpkIfCKLVxDUJcglWnX
         2fFnyd9eHXHxmy0lSMZaz8V65z0/hHRuaoCCrIzoLiHFT/vTXIUZo/0DSRsedKxYK7em
         jYYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YtFBuwoM;
       spf=pass (google.com: domain of 3q96txgckebieskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3q96TXgcKEbIeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id 138si640490pfa.6.2020.04.12.20.38.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Apr 2020 20:38:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3q96txgckebieskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 20so7443629pfw.10
        for <clang-built-linux@googlegroups.com>; Sun, 12 Apr 2020 20:38:20 -0700 (PDT)
X-Received: by 2002:a17:90b:3752:: with SMTP id ne18mr20616356pjb.143.1586749099419;
 Sun, 12 Apr 2020 20:38:19 -0700 (PDT)
Date: Sun, 12 Apr 2020 20:38:11 -0700
Message-Id: <20200413033811.75074-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH] arm64: Delete the space separator in __emit_inst
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YtFBuwoM;       spf=pass
 (google.com: domain of 3q96txgckebieskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3q96TXgcKEbIeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Many instances of __emit_inst(x) expand to a directive. In a few places
it is used as a macro argument, e.g.

  arch/arm64/include/asm/sysreg.h
  #define __emit_inst(x)                       .inst (x)

  arch/arm64/include/asm/sysreg.h
  #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))

  arch/arm64/kvm/hyp/entry.S
  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

Clang integrated assembler parses `.inst (x)` as two arguments passing
to a macro. We delete the space separator so that `.inst(x)` will be
parsed as one argument.

Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
example the x86 backend will parse the construct as two arguments).
See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10

Link: https://github.com/ClangBuiltLinux/linux/issues/939
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..af21e2ec5e3e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -49,7 +49,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either a directive or a macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.26.0.110.g2183baf09c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413033811.75074-1-maskray%40google.com.
