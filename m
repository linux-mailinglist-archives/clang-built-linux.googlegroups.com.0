Return-Path: <clang-built-linux+bncBC2ORX645YPRB7475TWQKGQELI5RY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 501EFEB521
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:46:57 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id k12sf4731125pgj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:46:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540415; cv=pass;
        d=google.com; s=arc-20160816;
        b=JtP9kqaaEalTsKlH1vwZzZNNknrL8xNhrJ/tf382VotC60bp+Fhd1gNp4Q4dVwHADW
         eX9cdnVdDjo8YIHs00s5eqkbLNrDpuSv49Q6KKuF7l0Au1UOWiG6KFRcaPViSDcPi/oe
         kVbi/ErsyykxcXbPdUFB1ugSYWEyXNsqZ/+duPmmh5fs8YPC3xbdpKaDkTdThFJ0Iy0z
         jaUUJWWqYFzCeJYAd4HrGRTQsdfeBeXA6U/eqUqO5UyBOCfvZ34UKNEBgNuFXNKVmjqp
         4W0MCk1OmPxUysuNzR0H8Yovm4fHL8sWtwBNOpsilDaFsmer5jgl4G1OE/Cvl/IcIAEF
         L63g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=JHQSZzcgsFLwu1kQUGdeCFAsUenI+skUJCvPJLZ6Wjg=;
        b=MKv4xEIKzGtd7+Qw7xNgSiW7NRkN5DhATjkOUS9O4bHmpzH8YCJ+M140Bdjb+A0uIL
         MIDhoOhEzSkHPdYhadgb1mjORv+ywiUVpNmreAxS0E4ibTsIPZ2Im9m2FiqMqCdSH4Sa
         INadd7Av6vtElPcCmlc48vmdoaUoEW1oo3rrq4MXGnQUam6RNg/hoIiTdGBA62/M2W4I
         NDDOdpsaloQ/CVBb6h8DQYlquTtgIY0nCACRREhWzfa/kJ+HYol3KMUitDbF446azJ+a
         BaKSQe7yUdgBWgEgH7xcK+qOjAzaGiHG9BtFId8v+6IjKLn5Al+xQUDVuVqxgYZjZZ9y
         KzdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DwFMzJZ+;
       spf=pass (google.com: domain of 3_g-7xqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_g-7XQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JHQSZzcgsFLwu1kQUGdeCFAsUenI+skUJCvPJLZ6Wjg=;
        b=RPj8t8oA5hSt5w9V/M3I2AviBR8zo/jqn2SWh1TMQhOi4vWpPoUW4agQeIQdTjjk3J
         wLcDGGo0+RX1IHrzX5Wo9NklBjmOu479M/7wqgRk7pxloa2ZP97Owey7SUrjdkvckG4a
         L5TvQs3LIN9tJeybwPdS+Obpmcj8ucnC5krBotM6ptt2FKdDijD+5/KhFA3od2z2Q0TE
         IpDHs9XhA4u5QV4BxSDKqMY5PDiu1RTv2J+Jv65EpuAJ7zCT+1NJ1STn2BLZqGADAGoo
         /s1e9tAwBaeFYimWKYoLM18dKDQxEzTWKF7hLCADVj8f85kxe8upheAodfqEHlvPbpHd
         u/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JHQSZzcgsFLwu1kQUGdeCFAsUenI+skUJCvPJLZ6Wjg=;
        b=Uh74VZoBf+hqwA0DND/F5LKzgAbvj4GHTlF5EbiwSURwZnTF0fMiTEAn54Hb7ksbFP
         OKOXjytEBxzx2bP++6bXAAN0PtUtBpTiUAC5mMdvUcyrz28WmM6QUT75XPXfxqbDeMQw
         f9CTC3C4LBIqL1aDxuNUtYmisX3YmOGNmA+QS4NagqaJjX0ha+8TvmEiwt06Vn0XnvXR
         zv7oAN+DOsNpyiT9IWf10U2/91AX+g/kS698SaNPh5Z7rf1V9XsurIU7VrLjhPQeYuU5
         AlGqDoP9lt1vRjj2yDvyOLXcsGrq/r+OpKgoQOJ12RcILn24uY/j0KSQ4Jura9V85hPQ
         EbtA==
X-Gm-Message-State: APjAAAWqYvkSY5cnFabvL9V8N6z9R2gnqueYSESCFfdJ9Qlfa6zxZQLk
	WV2BHsrAUU2k7I5pLoIiQf0=
X-Google-Smtp-Source: APXvYqx0U0IddEX4kcSMMA6Ydg8lhgly2mepbGDapazxWAZynKzBgP8HE/Mna7FWvDeCnr+naHoiHw==
X-Received: by 2002:aa7:8b4d:: with SMTP id i13mr7896965pfd.226.1572540415306;
        Thu, 31 Oct 2019 09:46:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3104:: with SMTP id gc4ls168472pjb.0.canary-gmail;
 Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
X-Received: by 2002:a17:902:5acd:: with SMTP id g13mr7596471plm.242.1572540414780;
        Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540414; cv=none;
        d=google.com; s=arc-20160816;
        b=L6wdfdVnPd97mqMTlgAk+rS9GXQzjPg+LoCdzyZpzZjJ3gg2gr1qE0tEHovNokSxKh
         NCypkiCMMai0hQzfIsM9eoe1j526NFFXSb5j09zCTr8alLf9M6acTE+TtNZPwCiGpH2t
         evB748N/0rOSTinMtviLz9ZNuIZDO8nRJ0Zy0qdsELj6lnleW4W30OufENCAcYKaVrkc
         jwGKCzP+wKWwDt9aWoDrZwdBXdlca8Ry7DuL4CR4XMRam+AcBYYRGaEqoSZSm+I3Xyc0
         jkIE++gCdHAu20Sy440ggWXyHUd5WEtirxqWhM+tCqqGT4alvho4eDMCUNqO2JQG4PVr
         ZLIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aHKOoX9zJAla15qSwjd99c+7iNT/pdKXHfBAM0TSbiA=;
        b=BedkjD7OrvuVYRtH9+PFECbNFd0UYv5yiFBs4La9EMlXYGOt0GovxSax3tcLiqxYK7
         unWrUM4NvTiRERHUIf/B4RunvwflEKq/DdQk70hLVWc3T/ir9WusHqDFstfEgMyQIq/h
         BfHK2Gv58eDFVzOsq6b5zhB1vfqmzmrLs4lqtCXwNr9D8qWWz45kJY/qDRm8Z2szlw2E
         O2NlVS2wrcXhcHfd/pDGVbdkx8JMFQDROS4yWVBH4NMq06QeZcGYg6WwsIllHsQ2p1da
         R3ieKaMmza9MYljBiJax3JrsZHnc2MVw4TUp2PvvW1MojKcjb25IUOrS6mf2A/CmWVaq
         OjKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DwFMzJZ+;
       spf=pass (google.com: domain of 3_g-7xqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_g-7XQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id b17si288566plz.1.2019.10.31.09.46.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_g-7xqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id g20so5018949pfo.0
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
X-Received: by 2002:a63:1904:: with SMTP id z4mr7825364pgl.413.1572540414204;
 Thu, 31 Oct 2019 09:46:54 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:24 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DwFMzJZ+;       spf=pass
 (google.com: domain of 3_g-7xqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_g-7XQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-5-samitolvanen%40google.com.
