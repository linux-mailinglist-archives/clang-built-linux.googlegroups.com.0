Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCV7Y7VAKGQEASEMPMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 675498A9DA
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:52:11 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id c25sf414675otp.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:52:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646730; cv=pass;
        d=google.com; s=arc-20160816;
        b=H99Dj3VvSF4MJs08mgD7CfE0Vd8mEZSk7rCNMNa1sNv7UcHU6CiUavhEc+WeUmat9y
         g0lhBrS+d4E4K8FQQJ3FoJams8lMZ5lv69D3i1x269odyEZ5wvTYo8u1FWn2G0KNxi1T
         5t6GxayiLAeUZUtQP4LmDC165R62JOBRvl56TuPWkdBdCOK8tKlKI1cfXvvm5TRjsRve
         cuc97LBxWOBdKzpSlcL2tScM6y1dYXeNQ8DlCL4zK0y0YARxQRsn0XA+98thWiWf65ty
         z5p8pzanwPIkq2fReSvD/Tzq0X9AGjciKsW05TGiOb4VWC48Jlq9hZoHhPsoCC+lFJoG
         RaeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4LvzxwbCML87qvdbPG3tr1iNmK2vKsf3vjFxrGHBs10=;
        b=cHc0OrXrQjWzuhI6ife1vg4CsEHY+bYFFW4Fw0y0T2X1h0LVbxxws/0vd/5ZIaDESB
         66KhPDvoxMg7jI89Hggjcr9EnwRwLTFfSCM543pl1Cq3wnWsPpsAgWcmxK7LLjYiS0wA
         b1r+4zVd0xA2VRtJfsQz1hzRRKCP1D1X0u4JO7jznMiDkFRZGJAE71xCD8AorGhNu351
         djUUiuPFyu85UKgdazyA5oCwHeyf3x0i4yAZahAeVu7YDoEDhOWBIxgDqyu37OkEMXyh
         wySvnSbSrWjE8eAfpHvsaJRbChbNLa5WD8c5rqoHdBicbivDovHYfrxpo9NoupXs+G9+
         jw8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I5dGVSJw;
       spf=pass (google.com: domain of 3id9rxqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3id9RXQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4LvzxwbCML87qvdbPG3tr1iNmK2vKsf3vjFxrGHBs10=;
        b=MAg09cQ4BQ4roExiGFQcfPVnhv8uo1QFPtyNGCOB1wsGuRQEEUsKidHdHfMOLhaTcC
         HRdiY2NFbv7CaXZCCboeHGo4XwWJ46LDxkI7IiDUrXLk3zzmx5V/W5LoLbQQ43NhXSXb
         OGWVVsRhcZ3m3rhhbpI1h7THKzt/kZO+8YdInI6nSL5oN5Nb7fWR9PhRKW1Nwfne6UtQ
         PQcID3haMOj4HPwUrVhvu1qxJ1eozGLYWKPEpWdpuQFt+UQtcgDdNbtwa/pklVnht2P2
         2VZWorP9yiEMSTOPHApwGyQX8QYF+Rd0qlkuHSVcl7NRD9Vgml4d+kn0sKv3p+gejwQK
         euDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4LvzxwbCML87qvdbPG3tr1iNmK2vKsf3vjFxrGHBs10=;
        b=ldkFl+vgL+sdA5JCLMEN1rU2b/+jvkwqpRhrLNFawy8enrP9EmH5jxBxvdm7Vzq404
         RUj8f+TyLE4vqJd0ZkSsNrpHxvajjQw0umB/bXznMeR3b5cyzF9ty4XlvuNUsbGH6ILP
         0y0Z53g2dUXFll5QwZvsrfeeDSLnlPBpaDNX31y3h8byBT0PGKVQKJzU7KP/clk2ClP4
         DFmoYtNNr5roG1Yx+8Hs9o1ajw/CCmy4nAd9LMGhuiGQJuY9i5bKyLcrAMcjaTiT9MZj
         lbamudB/ymRWALnkHl/FEwiXvbkioPnRTJg1R1dRf9aS/SIXNxnITzSOgm8orffyK3ul
         MqFQ==
X-Gm-Message-State: APjAAAX1YqS7On8OAtxnDU1sw+o2czz3cgCBhWWER879hxO0VYv6mV69
	RmPi4gkOf1tGeBD+kOMB+qY=
X-Google-Smtp-Source: APXvYqzcfxf1jlRwdQdss5IzP5CfBfllGgSf59iJ8wl8/yluj/0DsoQYxZyCpnpxOW35VNY1Wm0NVA==
X-Received: by 2002:a05:6830:1bf4:: with SMTP id k20mr18092906otb.79.1565646730410;
        Mon, 12 Aug 2019 14:52:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2818:: with SMTP id 24ls3437077oix.12.gmail; Mon, 12 Aug
 2019 14:52:10 -0700 (PDT)
X-Received: by 2002:aca:e046:: with SMTP id x67mr881937oig.3.1565646730140;
        Mon, 12 Aug 2019 14:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646730; cv=none;
        d=google.com; s=arc-20160816;
        b=uhkgsHrgH3X4bpgbPUMA4Vipu0MORlCLfIww9IAS0Qffhg9+1jKlQXtAAB24IV6njZ
         KuyFEzm+pU/cZhRqwic88DnlQGeC+kI3N5/tsP9yEt6+GZX6LM+AjqwhQfOehoQwX4pO
         r/94SRmwQPjr+t/5m5CFKH4Xy8hJ+TervtwhHAMVgOjDTFmuz8dXoxWkjtXCFNUl7ygQ
         MgPbp+RAOVGAKYHzKKKgUZe3pzNsEsWPaNPzN5RU59VdDZyjbqMjVcZs+MQkgh2dQEOi
         ImgO22/vPErrrmUSjQuQU26mXuvOyV8dxTendNiBK5rblKXkNHc2VZTbGe3qfDNtkExG
         4Kyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=q0pM2ZOzYJiqEFARYUko9qZH/ZZGqfD1MaH3ngq3us8=;
        b=Rz+ADXeBdatBzXADiPtQVdMSJjX+ShuIhTXi9vhK3/egfQthY5MSENXYrTR4Kg8J9f
         9zT0uJboNRft4XMKRNILuewEt7xeAaYW1HjXiqo8hosuxAS2PX7SHiY/p6AXvqxOOfYY
         xRKhIViOPWSXZrBz8eMd0AOXIE4dUOHLHPhe4d6Mi7JYSTM8rG/qXHU+IXpkPOOImjfp
         1qRQ8wIRQYer6Alx6qXKikGf0m7Xk/OXMmdVztNcxy86+Mqqax9h/9bQhQ1w5BIPqTqs
         Bj241C4UBF4Ewuc3PA3qkDjQc1eG7O2C0Y8zSzSaIkXjEF496O0uaIhUZl0amEmh8evk
         vLHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I5dGVSJw;
       spf=pass (google.com: domain of 3id9rxqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3id9RXQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc49.google.com (mail-yw1-xc49.google.com. [2607:f8b0:4864:20::c49])
        by gmr-mx.google.com with ESMTPS id f16si450577oib.0.2019.08.12.14.52.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3id9rxqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::c49 as permitted sender) client-ip=2607:f8b0:4864:20::c49;
Received: by mail-yw1-xc49.google.com with SMTP id q7so7867279ywg.3
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:52:10 -0700 (PDT)
X-Received: by 2002:a0d:d807:: with SMTP id a7mr4425576ywe.112.1565646729583;
 Mon, 12 Aug 2019 14:52:09 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:41 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-8-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 08/16] mips: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Ralf Baechle <ralf@linux-mips.org>, 
	Paul Burton <paul.burton@mips.com>, James Hogan <jhogan@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I5dGVSJw;       spf=pass
 (google.com: domain of 3id9rxqwkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::c49 as permitted sender) smtp.mailfrom=3id9RXQwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/cache.h b/arch/mips/include/asm/cache.h
index 8b14c2706aa5..af2d943580ee 100644
--- a/arch/mips/include/asm/cache.h
+++ b/arch/mips/include/asm/cache.h
@@ -14,6 +14,6 @@
 #define L1_CACHE_SHIFT		CONFIG_MIPS_L1_CACHE_SHIFT
 #define L1_CACHE_BYTES		(1 << L1_CACHE_SHIFT)
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_CACHE_H */
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-8-ndesaulniers%40google.com.
