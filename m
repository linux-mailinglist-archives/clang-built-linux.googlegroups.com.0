Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB45XST6QKGQEKPSWQQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B558F2A9347
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 10:48:35 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id b13sf319664edy.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 01:48:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604656115; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVGtWsCEXqp7PWJP1YErXwQqV0bvMwBAkqRf2jly87gYxuVExikG0zVOdU+WKsYZwG
         gsztaFMRf/LVt/emfKBpfBNddrHdVnCBeyPZkvspqVKoFTYCMjpT0Gk669pamFjsTReI
         bfbS4P7KwXacMvBxw9DZFa3pzi0KqAf0ZaRyqIWZ+aQuUadefMPWuMXL+LZ2ScKSwCmb
         V395FrOwfutibylBc6IYHs9MgfsaFlFwW/wg3asqPvPISiUUtMpuP587NAakgRjnLChg
         pemCwbWtWxEvmBQHZOYftJGudMg8/v8e2WfPRldZcVU35iaXAKcWkLyqLR8AW5KLyFf2
         QxRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=5cCY9ALDbgo3i1TINEG9ZvgxrOT2Ftoq/hmcKLQz35c=;
        b=bquAqckAmFpkoxLgbTWAE1QtbLjV5dG6RIpzeZVfw4gOVv+k/h953To42Iy0wCOns+
         0LkzqTxYwj4MXGaMHVzZMv4MaExxtEva8CxI7w1tqp0HnyHhrno1ehK9AlIEwSpDtAvO
         e6N6bzdimo/pFGOol+tcYJYT1Rqwrv2EkOK29fp2/2GO9FNXGzE+vHq9oRB1U8Xv5qTN
         LOrcSgyfOmjVT3jBCadGdJIARc7B1H/UblV+pRtVOo+/QxFh7HDJjldSruixR+2bVxih
         aowKCrtpyuhrWd1MVGzIbibbkw9pdLJXcm90cyguxcHRbPPEc/Dkp/fM++1gZPH2OYkD
         H2sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQ3+X40T;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cCY9ALDbgo3i1TINEG9ZvgxrOT2Ftoq/hmcKLQz35c=;
        b=MkxmtdiJbGin3LLgXEPL8xYMlge/7MwXoEvxrzn1dh1y26A1F79swsHZsfOIysQaOE
         E6jj23CpNahzDjootKJ4R+qViziDApZwKH6frqQutXauXeaRqMyAs/AVkIbjHHJnF3iH
         fWnoLeZHfge+a8968A+1hTiArrzv5Auj7/MIFDf+73U2TC23IWOLfRpJIePvPJOz536h
         pHapwaKdfdT7j/6bZOD9idZ3kJR2fIEyh1IPMsxWCCPycqFezkcLNrC1dnXHj7x+6k8d
         xcI2Fa9BbhjyOyN2ZvWQzJI1BuPego84vPx5tXN0y3iRsQNSa9WW1DHr5y5+r5Pd+8Ha
         Jctg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cCY9ALDbgo3i1TINEG9ZvgxrOT2Ftoq/hmcKLQz35c=;
        b=bya090dffldw9ndGg7a9ztoc2IfYH91o7DvdWyVX/EXX1bajjvRS8c/oKhFZu5w77I
         2HDhhpA5y/4e297AtcV44KFnhv0nAmUbqEZn5WwZ/pFyKqbHCeQusdHGwlC6xTVkkfIA
         AslZD3RYjq5jOWNC49ksboPrCkuodl86vVs/FxH+C1zcrin4Hyc3CQT6gPKkiXPakbVx
         pK2GlsrPCcdxaTmNEUfsKvZyGK0EaVrJfSmq8lUFqx7glATGwvilxxayW42e8lulUBem
         oOtTqLhZ6o7Ujzt7e2SomxGYC9JfAUTih0oxoj/zue26ZN69YrInl1SYVJ6wvFVANujs
         EQFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cCY9ALDbgo3i1TINEG9ZvgxrOT2Ftoq/hmcKLQz35c=;
        b=EtrCnYqVRf5YH3K61yk5UAW/JKtDcZTOzaq2NbfWOKtstmCmBpOaYcDJZ81fP85sDT
         zn0fS2EJaEzu0n1RpPyh9QY2dC6gozhtJAZvzjJArkSTKOrvoexqqkwt62IgT+7mpvut
         rogzuFv5wJiBheNObwMfT8+fhhYE0JDVDs8BqLabkar8MrJHcnv35nXdfa0qJvVwEbfv
         p3esQHYI8M8wz7JctcF0F63OfN8wiwXfzR/2YWlti4wSBg7Ls9BfObMaYl6OEHMa/8kq
         u1nncG6SgU4Xo+80N9xLvoXpbSYq25ll9XG1YnYkirsWIGoGGS779nqysvmnrHP+lSBj
         LdrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305329nX9aVY17CHRAkxxqeQv5pjvfiVG0ZtFdPtM3mCbXxSAIc
	Kxqe3NDbuLRE4m24T1wYHxo=
X-Google-Smtp-Source: ABdhPJwSVwZqcxiFAp2Ck/uVUdtatHcIrIQyhvF4SiLh5GWptnw0+acKVInuFitbRYOU92ZFQH0HxQ==
X-Received: by 2002:a50:ff05:: with SMTP id a5mr22152edu.43.1604656115422;
        Fri, 06 Nov 2020 01:48:35 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8585:: with SMTP id v5ls493485ejx.1.gmail; Fri, 06
 Nov 2020 01:48:34 -0800 (PST)
X-Received: by 2002:a17:906:12cf:: with SMTP id l15mr1276386ejb.540.1604656114426;
        Fri, 06 Nov 2020 01:48:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604656114; cv=none;
        d=google.com; s=arc-20160816;
        b=W31DJA8kFGHqDO5uFuPLM71/kJPYxweAIL8I00CwLP/CJwKhAVwAvhy1h4wWU8pUjZ
         aucEFu1agDc5R7k+Qud1wHDn1sjbU2IkDWQ8UZuyM+nQFBoYR7WQFm+5qZPY3V+2MxVK
         Ae2Tb6cJP6B8JbbzrDQKRPf33gnRfHaS5ey74OV36kYibgfN6cvvSQABlyTOdY/5KWFh
         z0iBjEaEYnZ/3/pqVZ1MyynF6dYfZ933eGKceg0j1Eb2JmquBagWelPMwHjShxOBacuA
         Qnz+z2fPieQQXWKtNqdzV/UY/WAMcdO4t5wMyRaHWOGAW0FPVCJ8rC0BgPsn4zc0wFgU
         OAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=r7YyaJmRIWWPTEfEzl80MC6QW4rF6G5MsBiV1a8/Lpc=;
        b=kJlkJp1sSyn+A2mRZzjWP0y5Y4EtxrY+oltCWN42to8OX4s4c2TXzZDGPPo8v+QE+K
         fs3t7LxrWlw0kwPzNikze2Els03shTwhzN7YRAXlxsruNkq7DznqVY85yTEkP3eGD+fQ
         EKYmQ7P/VxYolLoUNv6WHAjcWg4myvI72DVPP7AZtu2U284vHT+sfncxucOgfPnY2uni
         d/3kJgqIEBS+y3nfNKJg38jkGwZE7qDMVCr1o0dC579e2DoPRTep+tDYWHbmyoG6T6/0
         OvS4MOOGQl4iVHnhM59Z6Qqa9+5hJToQgEZsFkXUwOH2hzUkNCgfYFyixtRzdhxp8sP5
         aC6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQ3+X40T;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c11si22176edn.0.2020.11.06.01.48.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 01:48:34 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id a3so602919wrx.13
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 01:48:34 -0800 (PST)
X-Received: by 2002:a5d:6681:: with SMTP id l1mr1705435wru.356.1604656114107;
        Fri, 06 Nov 2020 01:48:34 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d20:9d00:b87b:b644:61a3:6870])
        by smtp.gmail.com with ESMTPSA id c9sm1187446wrp.65.2020.11.06.01.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 01:48:33 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] clk: remove unneeded dead-store initialization
Date: Fri,  6 Nov 2020 10:48:20 +0100
Message-Id: <20201106094820.30167-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eQ3+X40T;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

make clang-analyzer on x86_64 defconfig caught my attention with:

  drivers/clk/clk.c:423:19:
  warning: Value stored to 'parent' during its initialization is never read
  [clang-analyzer-deadcode.DeadStores]
          struct clk_core *parent = ERR_PTR(-ENOENT);
                           ^

Commit fc0c209c147f ("clk: Allow parents to be specified without string
names") introduced clk_core_fill_parent_index() with this unneeded
dead-store initialization.

So, simply remove this unneeded dead-store initialization to make
clang-analyzer happy.

As compilers will detect this unneeded assignment and optimize this anyway,
the resulting object code is identical before and after this change.

No functional change. No change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201106

Stephen, Michael, please pick this minor non-urgent clean-up patch.

 drivers/clk/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index f83dac54ed85..ba35bf35bcd3 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -420,7 +420,7 @@ static struct clk_core *clk_core_get(struct clk_core *core, u8 p_index)
 static void clk_core_fill_parent_index(struct clk_core *core, u8 index)
 {
 	struct clk_parent_map *entry = &core->parents[index];
-	struct clk_core *parent = ERR_PTR(-ENOENT);
+	struct clk_core *parent;
 
 	if (entry->hw) {
 		parent = entry->hw->core;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106094820.30167-1-lukas.bulwahn%40gmail.com.
