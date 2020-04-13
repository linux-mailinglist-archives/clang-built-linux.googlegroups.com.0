Return-Path: <clang-built-linux+bncBCS7XUWOUULBBXPC2P2AKGQE4YXUVAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A604B1A6FC2
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 01:10:22 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id b16sf13496403ybk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 16:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586819421; cv=pass;
        d=google.com; s=arc-20160816;
        b=n4oDsH6g4vid9PVTSJzN86ZeK2HHL1Pk8BJ7PO0xZdzMD0aWl9UG1a5eDD3gGwvJ9a
         ATzgbL9UM2qgFS0pV/nPMNn70pq0N2qEOqrK7tKgZOd1XddWLMbs37bZ/Ue6z/SUiF+f
         jba0O6VcfSY92klEQMGqfqY2MCarwSQoKXW3fIMM/y1p40Z4e8OyVqbrfYl5oy2ysZ05
         4DphYZXT5OuNuIraxbtU518V0UVWRM4Mg34Y8gZ6Tf5Sn7tZh9Sq1vsFcx2j1hDa3zaz
         ZgQyODT6GN7/+mU3Zrxp7fgv0FC2fNdUms1Xe8W3uxMLB/wAj6BQLP6TzUucDAL0mIC/
         DGTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=arHDIvlRs/AJql4SjiUHGCnpAKtJQYv6V9SQlI7a3Xk=;
        b=JQPspyBbWa16x1tbtYGITznaKiqSk8/JThAtD3SeahmOuVhW4K+Gv0bEdbyPYFPdrV
         6XXdZla0DKj+tF6jTizdnxfE8+BXxMCWLXQngK3UZc9HZpU+GUVd6H1WVlf5ToiH8prS
         2zAIbyq8kF5n3tSwAFjAIix7xNvcu/IZHmcN6qUYizAfoSSJhb6NJXuL9dXaprFUVFEu
         X7kgKo9G4cI91K5039wzdWn1Zxz49tggmvYNBYPxOj5TcrMmw4Ov7vtQ35QlSEnaamz7
         TUVosex+lzovjl0NTdLxyUUEcP9NWAnv+C82cgsdfC2jEReIWE6gKJJzaMvP/iNpUWTk
         1wwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uuJSa5gi;
       spf=pass (google.com: domain of 3xpguxgckey03r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XPGUXgcKEY03r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=arHDIvlRs/AJql4SjiUHGCnpAKtJQYv6V9SQlI7a3Xk=;
        b=LZuevSOhbCXwSOo4i8cBGdgtepBngwNIy/ZE5FstP+cdMJVClNzoSuMNP7TMq45w9S
         y+fZ9klVNy5hU3u7IP3ZxmaQXPzD8bNCdSfk1G4lOl8o0NmuON8RlZ5q3CeDzlGjFuTV
         Xr+l/9d4nckTxA0SfkxdxvKNBKLZ2wOO46WKjpthq+UdRvDI+ogQ8Mmb+FUR/hd+g0wI
         pIQkeDnjzT2uUXWZHBov2INkZIXBr2g0B4i6ziJLfJXz62Ug8Rihy0bcuNX+EnaL+pTq
         EIfeMv3ryQ2RjyimUhDsSkYhDTrRRlXIQLLDLU+Pwngvj4FejjVyWXZqZigsAzG7Q1Cm
         lwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=arHDIvlRs/AJql4SjiUHGCnpAKtJQYv6V9SQlI7a3Xk=;
        b=XSzVfxpjC9ViZRkrzYupkAkbi6WlVfac9KvGCWD84agLtt59CtLL7BFpEDjOI2Nc6C
         fwGAQoiNSjfdk528VrsvzzQWEXfl1v4MwmLrvFTu52XVTgcVfphTol4DuR4zqoPK/2wm
         7n4mu5hf8X8AM2TIQDy4tNR7Wbc+lL+upzrhgbEi06VPpVuaXyWlhYNSP3HXk9fNK/F0
         rSJID+XBRU8jI9XuwLNALeWassjlH91wBOTaIaIJtScWQZWedXVPkKao9oVJI7PIMQ/T
         lwtCVtOhUZKNM8UGQNWccRIWtlFSkggcd/G7YhlQIWkhB5zYDxAOw85TtknB6ivDH1b6
         XkeQ==
X-Gm-Message-State: AGi0PuabNNhoP4SHGu4RMFe1CF3Dz0nlmZd4CQ6tfD/YRx9MICktC0AX
	QO6WrprHFXSZVDtNp524uTo=
X-Google-Smtp-Source: APiQypLSItEFpFxEyMttB9GcSGlR1i2wUhu87dpHO46hwIuydsRtffy1QlHPQ3aRfavmuNd0ZdxVzA==
X-Received: by 2002:a25:9344:: with SMTP id g4mr27799267ybo.480.1586819421458;
        Mon, 13 Apr 2020 16:10:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls621000ybi.11.gmail; Mon, 13 Apr
 2020 16:10:21 -0700 (PDT)
X-Received: by 2002:a25:cf58:: with SMTP id f85mr32005722ybg.109.1586819421109;
        Mon, 13 Apr 2020 16:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586819421; cv=none;
        d=google.com; s=arc-20160816;
        b=1FRFcEbZcApOTCUlP10HJgRGuapjvTyRqxePFWb8A5Y9j2fklx3fq3j8rNL+2s7at2
         lFKK41M19/6cfngdTzf4t0VlF9OfphbKfAWMPBOG0AN86npD/OjyOQOZrG3Jye1KX6fy
         B7H5VJPonhgFWXPCD5cdw0WOwftvGroS6HGnMFFHPD9Ls70IVB9WdDrjxqFxJo+p79Se
         KYWL9ag4BNis/Ki8e8dLhh6cO7163S5vnr3/m0GeJzOGUcrwwTpsB8URqT1ao+lhW6Wf
         qbxqOOTcNwDfOsv0fGsaAH9duNepsmZJZ43GQITBmOIzDnz2bEJdwSxj55ml732/uATZ
         6KFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=vuPWpOEpABdmh/1VI4/up8dAs2XH63GBNImm7d32EIk=;
        b=S9GhnV2krlxd0305h8vbtHm2z+5ISuBTHE/EP96G/6sQB5WeDOA+vcp8LoB7sa3UuO
         ppfgqBARqBCXtSAUFUm0Y6nGiq1+gZJbCG0vrFoqCjElgL3cBp8AAaq1DgFJaQ34/bbC
         KUASOxFGMNBJglOEMiqRPTfjhRNIuCRrZfFqYv6/8mnxbCy+AGlvEbMucu8EJwY0p/1h
         c82lcVYTrgtoaqu+o/YLaum0f8uBYqtlytp7baBNZlqh8MlMSBnSkPQ0OJ3A9hc9ZEqR
         alFimA/avk4DNQvzeFXD9qpHV+i8wxS9SJnirxt2mLd31byxNzYyoseHP/C5+nqHfERZ
         3uOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uuJSa5gi;
       spf=pass (google.com: domain of 3xpguxgckey03r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XPGUXgcKEY03r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id l141si756560ybl.3.2020.04.13.16.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 16:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xpguxgckey03r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id x16so9909356pgi.0
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 16:10:21 -0700 (PDT)
X-Received: by 2002:a63:b256:: with SMTP id t22mr18355736pgo.92.1586819420186;
 Mon, 13 Apr 2020 16:10:20 -0700 (PDT)
Date: Mon, 13 Apr 2020 16:10:16 -0700
Message-Id: <20200413231016.250737-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu, 
	linux-kernel@vger.kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uuJSa5gi;       spf=pass
 (google.com: domain of 3xpguxgckey03r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3XPGUXgcKEY03r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
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

SYM_CODE_START defines \label , so it is redundant to define \label again.
A redefinition at the same place is accepted by GNU as
(https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
but rejected by the clang integrated assembler.

Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")
Link: https://github.com/ClangBuiltLinux/linux/issues/988
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/arm64/kvm/hyp/hyp-entry.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index c2a13ab3c471..9c5cfb04170e 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
 .macro invalid_vector	label, target = __hyp_panic
 	.align	2
 SYM_CODE_START(\label)
-\label:
 	b \target
 SYM_CODE_END(\label)
 .endm
-- 
2.26.0.110.g2183baf09c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413231016.250737-1-maskray%40google.com.
