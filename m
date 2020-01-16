Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIGCQLYQKGQEO5LEDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B144913EA93
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:45:05 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id h16sf13385101pfn.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:45:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196704; cv=pass;
        d=google.com; s=arc-20160816;
        b=rNHj3Pa3InyYdT/zDndUvAVUUDzdb90sBwR9rgWut51ZFj0//uilP5qdgy6/JJ4VPu
         6PpCP9Q5QssI11f/691+IV9iZ1oSRFkXQv6xDzzpC9/QJe+RLjoaIC0q5TCtI2fKPqbp
         UykGQUkc2XwPiaX93EOjJqy9MlOHBeaKPBqtfpoYJ4iCH3aFqdL1jWt1/O8SM2Fl2Qc1
         AMwLZQWx42rozCrPPzx7iDxAGVmFjo8p3P/I8zaX5EcmX3xxkCCObAesnafHECqOhy/V
         xMZrjkpT8F+M9C+JZWUCZ28EQ5LHU2STFY0qEllgAHjvN0E2QJtr4+tLPiJF81i1qPLd
         bLvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rJQDOC0hoHBLm8/ON4fKkti8WIev+jQ3n+kSKSjG4Bo=;
        b=SkZu1kbWGnq3EaCH1dTg6w0dNaH/EB3KT4H30fCSKynGYLDR3kiKPynTVuDxu9UWRk
         LLwLP1ikcqK+CWh2KVo0cNXw0nkuVofeIV587PZXXRT1X+pw1VnILxEZIIhlEj3IILFP
         dM/iNrQZDwst9StpQaMSkUgMI26ZNzYM7qBo6vImnDs2JYdyukC8cq9gCDj6H+iOXAAP
         cQXvWm7uIha6Op3voFBORPKrPMnEUnBICGJGugLYR6Vu3zG+niM8hRln3TpwHVcYkq2P
         QE1KDeIZrr9Hmm10Tty4P862WemGwSqvAqDUivgg7EFrJKsdB8dMvQVx9DstqYhZUIiu
         RgaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PIvmDhOD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJQDOC0hoHBLm8/ON4fKkti8WIev+jQ3n+kSKSjG4Bo=;
        b=NXbLfd00UDwHJsJlliVWJU+Jg/xa7YrcttXsKwfja7itl5Prg8B9rwFYvdGjyjyVW4
         EnCdmf6FCVZJjVm2ueVAQvD4rlHBWkMAEkzE6SsJlFLdgzY/GltdZxtuMqlIoP7MX3lS
         6k9B49E9bdseSUPcn2B17+g68jC3TSl4sV30KguXx64BshN8Ir2sSERr8EYqhTnT8Jet
         HTOkzh3jqz4YU09/1bskn+PEUyawtKmBLNLK+ro3Cbwf+vyJ/6i6sMUpHrfvlw9IBPuT
         5/inzXHgH6hoiAbJe98/1vcWs2NBL2hhHY+0IYXoW9R1KO9IAr14jyJ9jWAgfgB9ll6c
         3aog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJQDOC0hoHBLm8/ON4fKkti8WIev+jQ3n+kSKSjG4Bo=;
        b=N740wjt8aGOy7lcg1PhLdHDGo9iGVikLSUe0whQVvg2b8hxcesjraQc5/64xnnRxPQ
         gZTM0DDzMuHiJhULL4BE6+zK5LcsdHX4p66WvB9nC2oFMYK4ZJprpSgxGBzwl1CJhgKM
         kmNSiCf/VFR/KBvBDk3LGm0Z/eLixnBQ8D1gr4qQ/7Z6NQR9Ob2VlGSi/klfqpCdAByB
         f1iTlIDn/uy3o/VUUe0dKz00afoJ1V8Khi6uUB6BqULQIysS5+j++5RDu+MndKjltIUO
         yCTGSzip5E0vhXVPJ6mGSHT/mYWtzFVadA66upZcVw26bI0BaK4zclbz0WJyaHl2zB0v
         k5Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUiEpGY4UkzKybHhP+x5GOPDmEgcahYFTMAyxTV76sctNEY1gTR
	alMFjSkx6PCD1aNFzbvArBM=
X-Google-Smtp-Source: APXvYqxmQUUVdlu6rQ/SErYS6M+ZXwKOebu/Ldm18RlT+K1g6Pj8ahZ4txYlCJsAgVdyWTGQLBXdaQ==
X-Received: by 2002:a63:1f0c:: with SMTP id f12mr41803045pgf.247.1579196704283;
        Thu, 16 Jan 2020 09:45:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d690:: with SMTP id v16ls558570ply.16.gmail; Thu, 16
 Jan 2020 09:45:03 -0800 (PST)
X-Received: by 2002:a17:902:aa04:: with SMTP id be4mr2482457plb.41.1579196703562;
        Thu, 16 Jan 2020 09:45:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196703; cv=none;
        d=google.com; s=arc-20160816;
        b=eTBKXuyWAEUNdpeWW01JLYpzKjPkwpFePksUhDHOEIKJST6wiri0px3JlaTwdzvDcR
         WX6FpHFF3pBA81WVquiNswcInMOWd+fBBgU7RNX8s5x4XCIsg2OdmaK4ZTDWcNNpB1Og
         kPvdLekuNjcSw10zta3t7xMKZTir6OF9Xjh0V/clLJKsSkVIF+qindCR2xVjgDV91bnu
         T7l4jPZJ670MZrBAA72IbHg5arMg/ox16L1dCAgN+bblJ+Mo4Pxzsz3/0gIelABmU7T4
         ojE+r2JeaToSH/Y9VUBaSyn05dDw+XmsnfDdt/7m8E1zgmBcVGFQBUqltkQ/f9stFXoC
         q3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SCcxqX8/IvYiB6gZdZT4NkGsdrTozojdpMQ8pa/uZAE=;
        b=nIk3To5o5NByXBiLPuxNAu1/ebIOfOP4cuc9q5W0rl7uX2+Ojb3sFVHnkBOq6V29rz
         On0P9Qf/FUVG4ppfytjpYyI60vTKEUj11TZNfnHeOlxVfeCSpWs650xH/MIILAPVwjJZ
         efzequsd9jU+K/fW8/t92basRvi6Zn4K/CDs7q0smqzYvpDcgpTi5laiO6qJSazkgsZt
         a8+3Gwm3fG6yCRi9/HpcrbMlD4P2zNyUKdKV46zLf1n7f2PzJKIY79ook8dT1KIuLzxD
         uT3VO/AxDLwXjN9cS7NsRAPb9coxaO23QUtRYFtdLH8gDEOrxVWmQVz7fzK66IUWD2Dy
         xAUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PIvmDhOD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si475722pjv.0.2020.01.16.09.45.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:45:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4C8E224773;
	Thu, 16 Jan 2020 17:45:02 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Stephen Hines <srhines@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 095/174] misc: sgi-xp: Properly initialize buf in xpc_get_rsvd_page_pa
Date: Thu, 16 Jan 2020 12:41:32 -0500
Message-Id: <20200116174251.24326-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PIvmDhOD;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b0576f9ecb5c51e9932531d23c447b2739261841 ]

Clang warns:

drivers/misc/sgi-xp/xpc_partition.c:73:14: warning: variable 'buf' is
uninitialized when used within its own initialization [-Wuninitialized]
        void *buf = buf;
              ~~~   ^~~
1 warning generated.

Arnd's explanation during review:

  /*
   * Returns the physical address of the partition's reserved page through
   * an iterative number of calls.
   *
   * On first call, 'cookie' and 'len' should be set to 0, and 'addr'
   * set to the nasid of the partition whose reserved page's address is
   * being sought.
   * On subsequent calls, pass the values, that were passed back on the
   * previous call.
   *
   * While the return status equals SALRET_MORE_PASSES, keep calling
   * this function after first copying 'len' bytes starting at 'addr'
   * into 'buf'. Once the return status equals SALRET_OK, 'addr' will
   * be the physical address of the partition's reserved page. If the
   * return status equals neither of these, an error as occurred.
   */
  static inline s64
  sn_partition_reserved_page_pa(u64 buf, u64 *cookie, u64 *addr, u64 *len)

  so *len is set to zero on the first call and tells the bios how many
  bytes are accessible at 'buf', and it does get updated by the BIOS to
  tell us how many bytes it needs, and then we allocate that and try again.

Fixes: 279290294662 ("[IA64-SGI] cleanup the way XPC locates the reserved page")
Link: https://github.com/ClangBuiltLinux/linux/issues/466
Suggested-by: Stephen Hines <srhines@google.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/sgi-xp/xpc_partition.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/sgi-xp/xpc_partition.c b/drivers/misc/sgi-xp/xpc_partition.c
index 6956f7e7d439..ca5f0102daef 100644
--- a/drivers/misc/sgi-xp/xpc_partition.c
+++ b/drivers/misc/sgi-xp/xpc_partition.c
@@ -70,7 +70,7 @@ xpc_get_rsvd_page_pa(int nasid)
 	unsigned long rp_pa = nasid;	/* seed with nasid */
 	size_t len = 0;
 	size_t buf_len = 0;
-	void *buf = buf;
+	void *buf = NULL;
 	void *buf_base = NULL;
 	enum xp_retval (*get_partition_rsvd_page_pa)
 		(void *, u64 *, unsigned long *, size_t *) =
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-95-sashal%40kernel.org.
