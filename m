Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBE463D4AKGQEWOQXLNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA22270B4
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:39:32 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id r41sf3225350uad.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:39:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281171; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQBDPMQoRwHbB+Bwgu3d4pm8moVuGs/+uYUR3tcsVjS+90Ig13LB2Hlc58lO5jAX3k
         kNqLVmZGKEtJub+pPNPN5Ldc9ShUkZtlQefoI+8gvYMmK/t1sVBykAF4zW5+LlFVCuCi
         vBdLTeZ7pfyNs7LOY2PsYdg1NDsTKWdgoP6rZch8pVPc6RGN50qxjjrb086wtHmohVSu
         x8hE0dCFNfllc4taSOTjkjRF+rXplPz/P3iqF+5dU7/3ubRcDV0X5KGlnb6S15q94Z08
         H3hZO53vzGaiHcQl9mtwQtyfv4NKTTzSaeCQ9XkdDrFWI/qU2sCmkjwZroNpkyXvNxFU
         v8Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=F34WouPVZvSo1DhmpV120A24iJTOpTLSvMrciFgmadw=;
        b=CuHHPJXBrjhmzDJzgWRwrN4W3hDX57A1F/ODYnvIvAsP/DHspsXxhiH/KA6ApB/fz+
         crNehe87eb7yWIuatSkgK+2weqwe3ghLUve7Lm6xYsZWy2JoEvpqmFkn66mgpQIY2b2r
         8d8Hdpt4A86niZ2PuhF4Wl342tXGpDIE1q2ewjvXbwo8/5jJCGKkZlAplNd5dKUE3zr1
         ILJLpS7sQQnBi9StjdeSdECzfmOXA5rDossQyOhVzG6akYmjzcRS/B2w0yLgxZSOLkj2
         aaoH5ay3do4PRytfWKstbr/29bgldk0PIV/E43Kv8pbj9lCBWqrjAG7jMLW4fVqMfmR/
         tqGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QzaV/5Cn";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F34WouPVZvSo1DhmpV120A24iJTOpTLSvMrciFgmadw=;
        b=Tq9argIb/eg2ievAuMF1XVp+IRG8huzqCYTNotxhGtqzmQMpjcZXqmxqwJCIFp3NRP
         WqU1sV0i8E5BZhKu4xpC36e8BOw4+9dzS1bPnNXMFB78e7Mr8lDaWRHTBeaSrzhBt71h
         WmorrVyxEG4oMjEwwUVP4dCNQLYvtGr7qeg6b4YWTUKPabpp2oChGN5b8M62d1er8w6K
         gCIg8heQvhmIn4Mns3c75wfcA8EAyLlFAZqehCXoreOS90PgswzGAaPpxoiEJMJ3Jg7k
         lrKyr6k8djNT9D+Yprdt9gPXRRXO4bLYlOCSlrMpH64JH4TOwkByaZf7JYAZMm3h4HBZ
         61cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F34WouPVZvSo1DhmpV120A24iJTOpTLSvMrciFgmadw=;
        b=LlFOfvXftEzwGYHx/LhCGbKV3STTo9P2PldYBmabF81TTabzfD36TofrmGRDSKz5fs
         pRip/8mq90RxeIDHrCoEd3vcCqf8w1DY3GNyE+IH+Y0mC81dISORfBp7ijpGnlEI70Yg
         mP9BgAFzgVRBmWZdInc1vYiugjwYLLLhKILQFzJP5nZ/nHkOQEUdya6pm5kymUhdpdmC
         HWQiJDAicvzv/qEJCV6w1SAOYAcKEmTXShMjWvEp58Xr6xgYPCqLhp0HzFJwJmHrElgz
         eZPYIr1fUYOWwkx7TJ9vz4Kwtf01b09GMo/KMJ2hpqK9EqXxWX3F3iScQ2hmdw9ozJdN
         7xwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Yn3c2GJx0ptyTFiM3jVJoB2/iHmzbhYHjTPi7GYonEQvNjK7k
	IsdcX8esM9am9PLIR1xdA7I=
X-Google-Smtp-Source: ABdhPJwKLnLvPN9pbqVvj+iOacFDG26I3e5r9OxMmTF5EjgeDBuLgsvcIjhftOpNi2V+HFOuUteHhw==
X-Received: by 2002:a05:6122:32f:: with SMTP id d15mr18493675vko.101.1595281171689;
        Mon, 20 Jul 2020 14:39:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5404:: with SMTP id n4ls524370uaa.8.gmail; Mon, 20 Jul
 2020 14:39:31 -0700 (PDT)
X-Received: by 2002:ab0:4821:: with SMTP id b30mr17890060uad.83.1595281171179;
        Mon, 20 Jul 2020 14:39:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281171; cv=none;
        d=google.com; s=arc-20160816;
        b=XEg42XkCNKoFjVALuzRlxSuKhFxPb7IJzt77vmQdnZEew7W66UxWozGkmtGSC5xzy1
         w4EC+4xoudCxEgTtB3Ce4h4LxJhbnmN3hJxLq/LfuA6hDeNDhyIo1+uSUPHRmpFMw3t2
         ZIciy/3hQ5Sx83eFkzpTUM5b88Lfcdif5G4+GTKgKxVatK5Kb6FdrSL0UCoWos/W+Lj5
         U6/AfRdmT19i+vbTrSWx514VQ8EGgp/CTz7dIfiAAl8j2XoKdrK3ZGIFzk1iafBda4d6
         +3z64HYQANIvYwbiQWHw4CfVHjRXPlhB3WzjEY13cbUpcb0OFSxfcU6ITSTUAMg0PDi+
         +iJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+g2gp8qBPZq78TsIE6FdPXe3Sq/yWzgsxRT8xRfUf4o=;
        b=k8r4fmGOvS496QK1DZNzcTLQSWo7GzKcMpeF3OyWCAZ/8IWtxQnrZnxMlXR6kn5RP0
         n+cWqs7T86oy03XihbGzElTa2OGoV16WaEqymiPTEGJCaC86JEI0EXq9uhY5Mek7gBAM
         SzrdxDpVNQD21qbUnSaKb5/HXo1/+fwN65CoddnFJ9QowgBgtXQPnKPWcYKroHlF7lt7
         fFcZOp+999lWVVWE5CDVqPrqRo/NFmUo7qTi7JhndtXDFbcm5DAvqVf78xSaOCFSD0d7
         XQOppXrcz2fE0I74wL8OxKlaI8L6e0tCi5oTfLCOo3kFzMr+YfbdtrEDHoQz0PRtSwYe
         mBeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QzaV/5Cn";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c186si1341501vke.3.2020.07.20.14.39.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:39:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7364822CBB;
	Mon, 20 Jul 2020 21:39:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 12/13] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:39:13 -0400
Message-Id: <20200720213914.407919-12-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213914.407919-1-sashal@kernel.org>
References: <20200720213914.407919-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="QzaV/5Cn";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 81e96851ea32deb2c921c870eecabf335f598aeb ]

The clang integrated assembler requires the 'cmp' instruction to
have a length prefix here:

arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
 cmp $0xffffffff,-24(%ebp)
 ^

Make this a 32-bit comparison, which it was clearly meant to be.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lkml.kernel.org/r/20200527135352.1198078-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/wm_sqrt.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
index f031c0e193565..515cdee90df72 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -209,7 +209,7 @@ sqrt_stage_2_finish:
 
 #ifdef PARANOID
 /* It should be possible to get here only if the arg is ffff....ffff */
-	cmp	$0xffffffff,FPU_fsqrt_arg_1
+	cmpl	$0xffffffff,FPU_fsqrt_arg_1
 	jnz	sqrt_stage_2_error
 #endif /* PARANOID */
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213914.407919-12-sashal%40kernel.org.
