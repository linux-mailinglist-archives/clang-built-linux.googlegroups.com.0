Return-Path: <clang-built-linux+bncBCS7XUWOUULBBROL272AKGQE2DF7IPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF3B1A850E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 18:33:10 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id n18sf520627ilp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:33:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586881989; cv=pass;
        d=google.com; s=arc-20160816;
        b=recBkUK5aQR1K/43MLZ2CfPu7Hr64Xp48LGbzabktrJ1emckVWE8mG5gYoBGT9XJtP
         NlZa6PKhNZtLPMMG8wfqelKdaBbNw3v4HvnZr0a14VprKKedwPFBXm98hlaLx4pWMEze
         1kxCq5KIoxOzs1Nvyi8l0Izp4Omni4r9WV4C9IpsAx02K4exea+C3S2dMiLMvzbDWLOm
         KD+gOfv7tqLGciTKb4zk5MP+zXf4eBoKX1k+7x/7JwmkprihwH8y1aD/c4CUrQTAKqir
         MMKwCZV92xWvSZlPKOjwBEblGnH1DlUai4JI/+88r1gayJt1deVP8cIK2E0Rzl2zy2aX
         B63g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=swa9o5St7ZDLbmFYkv2qa9lRb5opKOmfelxbkBfvgVc=;
        b=KBVhZjZGYrTzplqK4PiVi+w0vcrCd/D/diUwr1rg/QYpipCpFi03bJPLd0QVKZTvXE
         01a2+v10cj0/BD0w7eTDiFHF7rTxoccwKfkYABHqmsnPzb+tqZgf8oEh8MNYDoOrwoEQ
         SNhGuYEqO7Z1djYJaluF91Osmv9vW4ckzw+JlMH1YdouLR0N0LDpJv5bWAyioSM1XkVX
         yK19JtVZxSKsqxQQXxAlGx4copMaUgLB1VutKh/OY0u3uF2/wZQfVexXuD7bV+0B//Hd
         7s0CqKe3rhcQISj00vqXnaIX9XpYYA/5w1KL9QGXxL2n1MSu6mfoFx4n4uEIeK/ikT2p
         YYBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gwOWdDcr;
       spf=pass (google.com: domain of 3xowvxgckeeepdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3xOWVXgcKEeEPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=swa9o5St7ZDLbmFYkv2qa9lRb5opKOmfelxbkBfvgVc=;
        b=jD4A+fp4SsNARo2zqhecd3P4adkH8v8ZHr+GVOxECPikdTMKKtJeSGQkoqmS0Xd9iu
         s5JfIG/ridGWVI9axJIjuFeG2DreHsOW5zT9grTSANZ/Firp7Pit1HjZVpbdXgCpv+Tx
         JDkUSlFFU3wdohy3+5LRzKLNkd6ELNgBRzghpwM5a0So/tflKso+Is6+1ubjaJNl/SPq
         ooSgIK2Z2SjyAOM+YWrbGIMcatX7/47jhu5zwgp3S0O21HSYi3W4/VVWsxVV3w/S8s8c
         iXGcL9pALer7HwYnDqp2kOFUdCfsdOQoTFxuaqJlnui46vrs4xw0Fk930TyPLulKmM4Y
         0kUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=swa9o5St7ZDLbmFYkv2qa9lRb5opKOmfelxbkBfvgVc=;
        b=Tuk8VTh5UMEFnTlzTTSCMkr9x/rnzjJhUEQxL+3iPY6Emn8nQ/aq+gZF61twR/LAC9
         ybW4BygN9Te7uJdcSkuBpsJiPXxR7iDD525BAJdUqsTLgACcV2FXlj8EZf6tg4N9SNgg
         f8SxkBkggTwALTx4HaK1AUtlKe6OZ3N+BzbHVV4fzDFoA00uDQH5Zf+iuJRom2Qipxra
         0yZ2ev6RukTutkG+BAm91XIe+sqPq7FaPVZ7e0YlbniC+A5tjpS1eprhCq3OVSs/Dwm/
         +b+UB6u+rFJiaxN1iyFrWzBppWWbBDP0VySG9UQSRIHSyB22y/G0jnjPlNLYW8iDV1iu
         KfCg==
X-Gm-Message-State: AGi0PuZJjXMIVcn7nUN1AUxYA2I0xYv4ZlmtrU3HO+hD4Xz5nJYWuSlz
	vi3dfSTHWRost2o7fB0H9nU=
X-Google-Smtp-Source: APiQypKDfdueQKC6QoSpDdc+fKmHH2xl1qwi68dRKZPCT00PQXK4ylbfr+b2BpRXdBT44W+PhBd2Xg==
X-Received: by 2002:a6b:2b91:: with SMTP id r139mr22122771ior.61.1586881989143;
        Tue, 14 Apr 2020 09:33:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4919:: with SMTP id w25ls1890064ila.10.gmail; Tue, 14
 Apr 2020 09:33:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:6c1:: with SMTP id p1mr1119376ils.137.1586881988843;
        Tue, 14 Apr 2020 09:33:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586881988; cv=none;
        d=google.com; s=arc-20160816;
        b=vjpN7yvlnw5dzTtyq9em7gkUA0Hj8uUxCmo1eH5hrMlt6u/Pqoq3d40vx/S+LN3/hD
         h2n/6Ny3ZyP+ipaHk3vWec1gooOHEG0YxnNJPlq6v8owPUZP2rnbUSS1SpZMWcT/Y4Gq
         uulotMV0oDY7rXnOch42XVgIfrZRbu2WOzC2UFBhhNnetnWRrDJ0MmoPgsSkBY9FvFly
         fEOzKNGM1+9O4MHSFAvyBaEEmEoc6C7Q8oNW18QI0I0kZZhcacD42Qiu0QMVO6EiMuzM
         aKgCCaco12Ea0gD0JWiawDrLOfQ7zgc0kITlwH/aNBgPazLtSXDya17WsRGf32mgSVPC
         Pi9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=C/WMPxWmNKBqJ/Zz9SNZ/9dLp/Pjl7eWvbmkGXyv5l8=;
        b=iRQa33+3gdre/WAu6UzthxqMtTs0TrH4Q96K6ZNylvHdDL3E1YpftR7+2FsV03CC8H
         Mh9oK/6TvV2rJt1qb16jDdQD1aP3DFckxhY1lv5B18zGSpvrIVZHG2D+X+36hDbiPKhC
         rAWQjyllZAxuV96YUoSBhOxI+ZqAOBC0yi1e0VOsOS9KFQzYTcF615o8mCyD3dwspOdT
         LmBYKMMnNxDPl/eddNij/ArtbSP74sJdEEJZS8oOzfrKLuwQ9ychf2bmhJOfiVdc8B58
         pH2DOp2jSBRuVRDocZoXgSiYlOodf7MqfJWQjaiTZvr2vZdtaUIO8bleVNxdEVXRstS0
         GnDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gwOWdDcr;
       spf=pass (google.com: domain of 3xowvxgckeeepdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3xOWVXgcKEeEPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x949.google.com (mail-ua1-x949.google.com. [2607:f8b0:4864:20::949])
        by gmr-mx.google.com with ESMTPS id u9si986047iln.5.2020.04.14.09.33.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 09:33:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xowvxgckeeepdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::949 as permitted sender) client-ip=2607:f8b0:4864:20::949;
Received: by mail-ua1-x949.google.com with SMTP id n36so222228uan.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 09:33:08 -0700 (PDT)
X-Received: by 2002:a67:2284:: with SMTP id i126mr890118vsi.223.1586881988191;
 Tue, 14 Apr 2020 09:33:08 -0700 (PDT)
Date: Tue, 14 Apr 2020 09:32:55 -0700
Message-Id: <20200414163255.66437-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH v2] arm64: Delete the space separator in __emit_inst
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, Ilie Halip <ilie.halip@gmail.com>, 
	Jian Cai <jiancai@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gwOWdDcr;       spf=pass
 (google.com: domain of 3xowvxgckeeepdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::949 as permitted sender) smtp.mailfrom=3xOWVXgcKEeEPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
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

In assembly, many instances of __emit_inst(x) expand to a directive. In
a few places __emit_inst(x) is used as an assembler macro argument. For
example, in arch/arm64/kvm/hyp/entry.S

  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

expands to the following by the C preprocessor:

  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so the clang
integrated assembler splits the arguments to:

   nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
(along with many other non-x86 backends) sees:

  alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # .inst(...) is parsed as one argument

while its x86 backend sees:

  alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # The extra space before '(' makes the whole .inst (...) parsed as two arguments

The non-x86 backend's behavior is considered unintentional
(https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
So drop the space separator inside `.inst (...)` to make the clang
integrated assembler work.

Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/939
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index ebc622432831..c4ac0ac25a00 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -49,7 +49,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either an assembler directive or an assembler macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.26.0.110.g2183baf09c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414163255.66437-1-maskray%40google.com.
