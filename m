Return-Path: <clang-built-linux+bncBC2ORX645YPRBWVXVX2AKGQEYIJ34YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC14B19FA72
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:42:03 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id m130sf81422vkh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191322; cv=pass;
        d=google.com; s=arc-20160816;
        b=GjxfQM3eS97Bu/UkgkUWRmcJQoxxhyqiJA8YTzUZ/fTG/p488L1n7GKnkAqpfpaYI0
         rp+vtI1WCkA3o5DJKoFEKsjT79GXkpDxHzElnYwSqc1MqwKY/CFSEnFRM+Ofaj2E69sV
         w98cFADAJnNjRa+rQCff8nuQ0QB4Fs9fD2c9XnDnc+uc3hAnQ6WCTub26A85sylpcp2p
         HGcujNV7f1Ubp8aC5yykDBB1rJ1Mdeg+BVf/PbslxGb2tx83jgNp6oK8k7D13Nj4egvl
         68MDLQL1ZG9kpCMb4hSsThklzHHwOLIlOQmLX0aOW0gUxtqdklGNbOono5GvgFsXsCOB
         HUzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KbzJkfPgAntlC0dSFJtUrj6TzTRv8GWNRZL8718CGdI=;
        b=l78qEQDf1huVR3RTZ/waRPePvaYxVwnmiqYTc8ykdpn8QUMmeDCA+cErVRn7BpGZs0
         8lx+WNpoY+swoU4Ptp4l4T0eCqH2LZim4fHdOq/gbpVc2iN3AecOSsT4phaCPVjVvfsd
         jUrZC60rLhkXady1BdtWk/+iyXTCF4Juc3LkJTu7DD+Tod8QVmkaE8a1MDtQklgFSUJN
         QHqqfQdSgsl6cFLZW/yl8bKClbtnd+VOE9IkNY+BG14j3/HmVuodBKg9roAxxY5ZgD+z
         9VwDITGTjMBrhWhtXSfi/xd6viMcOxe9pvVekKhDXN6KeCTDArfvCijJ4nzR/fh5SmtI
         JqSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sFTilaim;
       spf=pass (google.com: domain of 32vulxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=32VuLXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KbzJkfPgAntlC0dSFJtUrj6TzTRv8GWNRZL8718CGdI=;
        b=WiDF1sizsw0uBSJgaxAGw5HRULfseIVuVj00S32ihUJjBHfh55Gfo8CxsaUTGgzBUZ
         E7n+1j2abSGPceFkCGU/hm6FASgrDPxajFv1jGWnVk6dOJgXQvZRMcN7sLjXBg47yrT6
         SfyW2obDACpUD3Qumlf05bTVEehAC19CbxtKWNSc2Y7v2XOdaaLGjBaq/8BEDylNeFnE
         hqoGSsK+GRVudjzqX7I4Iz/DsD27Zgrb2orvt6VDKLk3PqaJsxjtboNB+a+uipkiX+Ya
         MnbaSqHG0+naFw1lsobSPys5VuUIMRi4tnJInIsA3xvW8UjQ0Ce8tgXPpef/h+JMm9ai
         EMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KbzJkfPgAntlC0dSFJtUrj6TzTRv8GWNRZL8718CGdI=;
        b=WsBQf9UaiUOuHRHkSnUDJBsf+GlLCa7sqTstmXfAUtFJWzY5fzMOwLcKrVTp1Kc0m8
         76qur9DvYMA/Sh8WNe9mD0zZo6wi3VuwZLAC6eIoysgUZM+zc0q3pLn2Pve7kSxJgWX7
         p1CKpdagNVgbfuBSmbsCcgh1Kymfh3k6etrlwnNGuG8q2FtBTD0JRPyXhPiWwSJw01wh
         DJt1zlInirEKytKNju7EVJ5Smohg2abhA16gzoeEj822jfVG0RW445PtTP1emr3t3DE0
         a+ThMqb90YS4aXexIrR0jPWXSSCJgAak/HqgN40Xy2Xymy1tp3463vxf0l2UNgTs3U3C
         JmZg==
X-Gm-Message-State: AGi0Pua/YABHVCn0UOKmqrdirAxPulXLTd2eTFEDkWRgdP4jdq5awMR1
	3cAWtv81UwnV2NUlmWe2PyQ=
X-Google-Smtp-Source: APiQypKsuAg6UTa+OgUgeGsgB0VKRkjlq4t9/UY/+fs/452iG9P2j6vH0kMMn6bv5lubO5lPHtVkhA==
X-Received: by 2002:a67:d613:: with SMTP id n19mr440794vsj.207.1586191322555;
        Mon, 06 Apr 2020 09:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls47237vsd.3.gmail; Mon, 06 Apr
 2020 09:42:02 -0700 (PDT)
X-Received: by 2002:a67:6f84:: with SMTP id k126mr494684vsc.112.1586191322041;
        Mon, 06 Apr 2020 09:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191322; cv=none;
        d=google.com; s=arc-20160816;
        b=ITqkY592sx7eO4kY3pS2Yf3XfttbR+o6Z2wzuNKACuZ1ep5x/t8CURbGLBmLxVSzt/
         SAZWctefLvgdj3UgtCdx6aojU4mgGoacxWnllZGae4hOCjlDzeYXQrNEqHygx9KENCCv
         FBRtg2LI36s/4G8KH1e9bihfvQ35jPFuT0nwDaog/Dt6xER81MCALgSrQTDQjVYRlCr6
         xwmZGJQ71i5QqD4vmR3S87GaL4NNWBt1ltgK0o5U3EzFzAhDwNVbRNE4EAJtfyd3PZsi
         tOGWmVKpRGt3OP/trBau3LlAGq9SKgqxndDopRN/uk1ioAuekHvsoZaw6gFAybNOEW5a
         7S2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=og4BfgkxEdyP0L7K3K2SXksO/AChbKUXMouXqYPSA00=;
        b=S7viVhlqzGCQO6aa/yX7YQ3fTHQTc8k+7KxHhNXRz0Pp74KxQ0qtziLycFXjkknGR6
         zDqwkVf91if7s8k7HVPmO/d/qSufY+G6obWkM0Y86sRUpIXrvnr1jbU4lmmnaTJThevL
         FroewQrSX9MlGUeJZE98TEYCx56scQNhjgJ87CJD8lFPLgvPB4GUXDBoBkQnQ8HYuACF
         cvPQSJOkrJCDbcF3ATyXKJSoLZU6aaFxt38GQFdEKnYcepCaR5dwjjVzGFMmZt4W92J1
         uoZ8Ed0xNhc4CNdp+nWbaBurGqNyH/x/sZYyW1rBVPb4fhy2Exu3nOLnqX8My7aQUEPT
         Q6mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sFTilaim;
       spf=pass (google.com: domain of 32vulxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=32VuLXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id y12si21749vsg.0.2020.04.06.09.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32vulxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id x25so32096pfq.18
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:42:01 -0700 (PDT)
X-Received: by 2002:a63:c504:: with SMTP id f4mr1623499pgd.292.1586191321112;
 Mon, 06 Apr 2020 09:42:01 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:18 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 09/12] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sFTilaim;       spf=pass
 (google.com: domain of 32vulxgwkalgqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=32VuLXgwKALgqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

Disable SCS for code that runs at a different exception level by
adding __noscs to __hyp_text.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_hyp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..875b106c5d98 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_mmu.h>
 #include <asm/sysreg.h>
 
-#define __hyp_text __section(.hyp.text) notrace
+#define __hyp_text __section(.hyp.text) notrace __noscs
 
 #define read_sysreg_elx(r,nvh,vh)					\
 	({								\
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-10-samitolvanen%40google.com.
