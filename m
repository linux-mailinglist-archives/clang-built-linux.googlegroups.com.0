Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEHOXT4QKGQEO7FVIBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BA823F9A7
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 Aug 2020 01:36:49 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id m82sf4624373ilb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Aug 2020 16:36:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596929808; cv=pass;
        d=google.com; s=arc-20160816;
        b=NAycHWk5YbMmus6Z/CAXW+qKJckVAcQs11aY0aOKpFDWWKYV8Diag/ExLkeJEy6KuF
         hh3pCAG/FoN/OgouMgckrWeHIRPco+wnRqdYXasJGt/XxCW9BoVsiX5bXPcW9xk1sHO/
         bHYXgDCOfxRJpTXalCEVFBvndCnIb/i9z5amNaQFtAD5KMq8NRVJB5U4uui+U5JD2cRy
         7Aek8eG8iurm2qB5OGAz/0Bpe6jvjeB1yLfAFjLmT96LUv6ozaQyzFc7qO2AP1UqJN1Y
         Eq6iO2G1EPKoj4I4eYHF+oa9SgQues4mivF2n8p1ZSR9nqT0NX67HQi95f3wSF7Wq/2v
         CzaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BUn/3zUK/NCKMpOn1USL4WEoCt59V46ISAyVANVpRpg=;
        b=zBZQ4hqxiXabJK5EAt3Kr3UhkGsLsJmr1BkYAMUtZzMic/kWuO2tc2CfhGfJ3L2aDG
         yj5xhUKNfCiUli2oNoESXwkCxlJT37FJi7XIaSjxVYo07nEEYuPMkkBpldIY4/qfvouc
         HLnLIttBcpbX+GGNG0t5NNhk0gkb7/wA8B5C/FuQ2KSosAWpjtCMDSgXQozZJOH4Gg1z
         ym1dVnD4/EmmPiTvb0ynzrK66mDfRteNk90uvTmAT8PkXhKQO7MqIat6WfR+ux/N+McS
         AyRRlFkst2MEJN2mJCM7XwDG5VxhmJxt20stw44tVAC63STCg1eQj7sRFflRkNlch1jg
         4hzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yxh0eIuM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BUn/3zUK/NCKMpOn1USL4WEoCt59V46ISAyVANVpRpg=;
        b=S0mifQV+4jWv1vqthjaHimUgrAq4M5zBaIt3djcZAjOTEtwgzBaoDolJfqubrDCD3r
         HlpXJlEdCRFX7y6NpJSt7zzE3KC+k+0q7mFf1pXf3P/9pR/DubOAaO4YJ52OqeCCa13J
         olODL/E3+jZ9bavLv7dE/EREj5CC6vM6Xik0y8osnNDIsd26nG0f9OqUfzeJ8en3/gyd
         Z/6xsm7c9ejOKWhMx15ezuqj1vBwSKRecKHDnobgi+hsQlzISlSp3VBAbXE3kU+oPSQm
         VwGX1PeIEfwzQFTB1fQUvgVLsAPpQwBwIVhHxVixhkYi4gJZVOvvidXkNKkh+/F+7SZb
         bzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BUn/3zUK/NCKMpOn1USL4WEoCt59V46ISAyVANVpRpg=;
        b=NH/+HnZnNHaw9NEIzsh43oCjhV5AFB3tDaxlSiN1M8ML5jWWBMuELlia77i/j1iMKJ
         IlXTeIl9dok0aJAnNC1R5xhKrkgvmnUWtEomDhO02yBkkQZA5shQTeYhqObWQzo3DqWl
         wRurTy2caq1UldKJyIV6z4LLIPZYv974uSQokubwc6i6J7LahllB83lKeuwEQfa+94Sr
         CbZ6q7z1g/HfsG4E2mPv3dTEmMQQEKLVDiTXf8drC8kMhFnj5dWPv9whuVTFccs2e6Yk
         T2ap/Zdf4s1+Kg/IerJBPYjwEWdC7OsCICGX1QbRXtOmtEMUiWGGJ80sT6+K3bgMg3vt
         y2uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TUDnNDiYI19znhlm8rUObaoxBgHPOqdTRdeLV4FCL0JfYr4zT
	AJlJ0hB9arQpzxKk9vHjgiw=
X-Google-Smtp-Source: ABdhPJylD5yH4QM8N7HKRMBJcdTgI1WbW4Lrxr/6EjDNBOCSu3S+qa/Bmsb7sfgYau6ohOIOsocEUw==
X-Received: by 2002:a92:84d0:: with SMTP id y77mr9788354ilk.208.1596929808625;
        Sat, 08 Aug 2020 16:36:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:85c4:: with SMTP id f187ls616011ilh.1.gmail; Sat, 08 Aug
 2020 16:36:48 -0700 (PDT)
X-Received: by 2002:a92:d588:: with SMTP id a8mr11584940iln.146.1596929808317;
        Sat, 08 Aug 2020 16:36:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596929808; cv=none;
        d=google.com; s=arc-20160816;
        b=WDhIcGZ/Fgl0Zf0sxbigvtGhukInTyL2W2wl6fOZWyCAyr4EzpJMjaYkqzl72Slkz4
         W3qHiK5Lulfo66Heymbv9XnkMhRvWjZ8DBL+ywkFGQ6xfHg1EHwxsmsLmDKfCB4jQzkU
         +d7eNbfveqBr1eqlKjR32vquSeMZRLNZUWgEGC5VjJDyWygtK6uRazO9x632uxCnl+P5
         yoPBZC6aqAkdNRRJP91ND0zRrhHn0vf0HBnoABAl9WQlBeJuj73yL9xEes5CMz652dyf
         W3oP92cgSmNVgk9hQLyOjkUEDj3hQqZwhu1bfTCCPfm0grIrWuUIlUT11NvVDhd4FFAa
         2H2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aD5Bj3ZIXFlq/eu2eCu2ZoWxnxrxSHaGtqxjoYw6bWM=;
        b=nU7cLLksT/Uk00KW3GyPsZ7ktcojT3Mp1WqFg31BjmayF8vccgmIm6Sn29JEZHgzBA
         zusKw4GG9D8V3YKlUpw6geqKzKrHCg77qM66Nq7gnmVJlUDC6j9aTxdIoCVVQe//Ds/7
         uHt0xDmQF/RcmETlEnhrn51RKwI+z0m4iaAeEwJX/Ct0BCYg6jj+C29JZxhc0Gz1HeJ5
         v38kOpqEgEq8O3uKFlKeLPOm1a8HCPKSDDyJmUZ3b36no3FyhSzoMEscc5Jzx4AaqpNB
         vL9iGii5Y/dFeD8ns8lySIRxYqWjqvqoC35OUG/x15abM61BHsGsY1lientVyyUmYOVp
         4GOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yxh0eIuM;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u9si155536ilg.0.2020.08.08.16.36.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Aug 2020 16:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C441C20716;
	Sat,  8 Aug 2020 23:36:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 44/72] crypto: x86/crc32c - fix building with clang ias
Date: Sat,  8 Aug 2020 19:35:13 -0400
Message-Id: <20200808233542.3617339-44-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200808233542.3617339-1-sashal@kernel.org>
References: <20200808233542.3617339-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yxh0eIuM;       spf=pass
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

[ Upstream commit 44623b2818f4a442726639572f44fd9b6d0ef68c ]

The clang integrated assembler complains about movzxw:

arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'

It seems that movzwq is the mnemonic that it expects instead,
and this is what objdump prints when disassembling the file.

Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
index 8501ec4532f4f..442599cbe7960 100644
--- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
+++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
@@ -170,7 +170,7 @@ continue_block:
 
 	## branch into array
 	lea	jump_table(%rip), %bufp
-	movzxw  (%bufp, %rax, 2), len
+	movzwq  (%bufp, %rax, 2), len
 	lea	crc_array(%rip), %bufp
 	lea     (%bufp, len, 1), %bufp
 	JMP_NOSPEC bufp
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200808233542.3617339-44-sashal%40kernel.org.
