Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAMNTTVQKGQEQE64Z7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2278BA0DD4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:02 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id f71sf1272291ybg.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032961; cv=pass;
        d=google.com; s=arc-20160816;
        b=r8hV2rPU9xQ4Si2xldD49Aexh6j6XaVDmQj+CTQ2wYVg/E49lNnNZVg97ePoRkX7ms
         fOpHrZhHjG1b13vV+WWWdaIPrUL/hjpkD1MJ5NYh/6LgrnHXcdGUhuqaZNC859Az48gC
         4Keazlk1VIeq79Yj5WDfbxXkaquVo7jngA0Zfd9SJcwZRaVcIqMyT5eP3psyWmfyEv6K
         m2+YdBq77mD7iIgdKhceU8wU7SwQ8BROn52kuprQ4X5bTFKD8ve4VMfKfDskZeJ1idu9
         CbMraHpAjpeNzQVd2OOHzbbJRe+afWQSNJHC8VWKrurSpCe4ug7KsOhQyjmcrlEn0TxB
         JiAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wXgantqG7LmsKwmHh4zsn1Agd0uk5K1b9R4zJa+IJ9E=;
        b=ifqU2Tam+2cidpOscIQS5Uz4cSN9qAa5x4M1c5SeBm5HsNM/5ZyNyMxrCoy8fwBeuZ
         2b5rr0UMOpj3uKk32mR2nSd4y+RU1jhQN7Tx0PAuvgewNCtH6BgCD6+0XxlyD3avnojb
         z9l1gjb/CNYXWGmEV6eHoPtzUZq3TxhdmDZcFaZFPaE5adQT2izEIg4zynV3st6unMvL
         Tdk0oimTHQvnNHUIxkIsxF3aoqH+BO4z+JSwlrCGHKU4pvAwTJ92wTd2cepuSdq25Mfx
         k1BlShjBcI0lVKrNQdzJt0VB4M551LFcXv29Me+Jzdo0N27V/uTA64w1Ot0lltw83lmc
         Nc/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HX5fMmMu;
       spf=pass (google.com: domain of 3gaznxqwkabse45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gAZnXQwKABsE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wXgantqG7LmsKwmHh4zsn1Agd0uk5K1b9R4zJa+IJ9E=;
        b=bMI/zp0pTUrFGj/fwKRV1aab7yy6C6dsY5nfR0j4kafVRgdLeeFsmi/CRI+dAprlyG
         9Rc7Ou/knFgMssjQRfAMBrSBkRw4UhmF3z3DCh8/BhXYtWbsI7/33bH48IDQEZwi6D5P
         v/C6mCqBKEjVs43fjNMbeVKLzMk1ZoZua1gIPBC72T0o2cAM2htIDvSI72m0UDhMPLmA
         DE6pZJtpfO2okFEyliKuM7j98dm6TPERBe8p+n4GsIc5vE8EHo50Sz6fkbX1zEqxVlw6
         LMU9V2dkIaQkAK0VJ/6HiqSf7dkS2yGo7dMiKGLVdPGaN71yQePu3lGBR+XcG64UJGwc
         AR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wXgantqG7LmsKwmHh4zsn1Agd0uk5K1b9R4zJa+IJ9E=;
        b=PSZ+8X+2KtYi4qv/qiuFV6YRq4DEDJ+AcMA/tTkkrBgeC4ZcDOWX2eNOItSr9ou8Md
         u6q/EtDdCwNrVdTu6XtuN33Amy0czgkA19rb4J+ZEGrn0y3t1dRp2vVA3JbdG1cpLPuw
         NNXFO5AAz24hv39shWx3uolos1gIQJO6eiYVWu/01HQH2zl2fE1O5FdtvTjjrFbUDO4/
         B0aFYEB1fY8BQGDdgjunBh68yvID6Lj8nr5i55jHo7E/MRlH3Mk/Hc4XkUnvDC+LH4br
         jf9WoUlQFACXXc37af8CwA0HL0o3s0Yt3RTzhVwdYehkptMcKql2yHHExpyuYP9dKG5G
         d1mQ==
X-Gm-Message-State: APjAAAUJ1X7U82tMx/1VH+q3+X0qbIkUzf94NxVTDc7BbmGgnIO9FMSu
	I43OQHWiWypQW1iOuh2xFOg=
X-Google-Smtp-Source: APXvYqy8Y6FsFdVovW3vro0OmR5y0Q2IvrtYZewFYqvKrIH88OsupnbwF0g8QopTLCXJeCV4hRu8Sw==
X-Received: by 2002:a81:2305:: with SMTP id j5mr5142955ywj.81.1567032961169;
        Wed, 28 Aug 2019 15:56:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:42c8:: with SMTP id p191ls99076yba.4.gmail; Wed, 28 Aug
 2019 15:56:00 -0700 (PDT)
X-Received: by 2002:a25:d8d3:: with SMTP id p202mr4929495ybg.512.1567032960957;
        Wed, 28 Aug 2019 15:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032960; cv=none;
        d=google.com; s=arc-20160816;
        b=B2Cln480mVIMcTqTkgNpURapTtqYSI/mDUqKdXwbSPUUyWxiRgm/FW2tQyRKvgv3D9
         9FY0goHELKmzG1zTh1v62+2POgVia/t6OO3dtPgNU00j34GITj26cIK9hK5reaHxNWWL
         Hp3xJ8e7pGaxrnc9qMXAGG7NTbhqzVB8wopEqjFiZSyvkPduPaP88vPttri6rZEpFQ4V
         64qYesEDI2jeCPV7BNcITJ2JOouSEsAsLpxhehnOcuq4xpW+VvmXH5BR59My2wtoOadk
         Aj6KW2OGQ34EyFmibYakuQ4SI3sQQKiBgWipHDizvlE0wTR76hF3i/urdQbKuWHSCzQe
         sZQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Zg0X84lAW+jskRxv7RHMWautXvu8YhPHY9Jy+iSuQjU=;
        b=ATrpVpSk1O3XiHACaoB8WdKbMf5NhhRJQz8T2FCnklmwIQjkUkJx2Mjc+bN7pXdWh6
         2GsbfU+3PEYBun/sUDKUublgUWQiEkWkv52a2ayPpgKT6Q54RiQteColTaR3QS7dokOx
         yE4zvCiYydZRWcY/ld1TtPc1MMDXI5jXHP65wtLrhi4i4hUcq7+gLGCzcZEeCibkccSJ
         6+TDA+Tw35iiPTpA1qsDhyit13yo9VUs1pWpw3FEZeoSyXtPflc1E2ERmHyTvW+2pC8A
         uVZc+pcVsdlOWrs+wzsayF75E9umSgTLLs6SOdJ/8lRXwXeNlgEmJPJPRy3fll0R7BoT
         3Zuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HX5fMmMu;
       spf=pass (google.com: domain of 3gaznxqwkabse45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gAZnXQwKABsE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id f190si44658ywh.2.2019.08.28.15.56.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gaznxqwkabse45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id m198so1591130qke.22
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:00 -0700 (PDT)
X-Received: by 2002:a0c:ea89:: with SMTP id d9mr4725816qvp.16.1567032960447;
 Wed, 28 Aug 2019 15:56:00 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:22 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 01/14] s390/boot: fix section name escaping
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HX5fMmMu;       spf=pass
 (google.com: domain of 3gaznxqwkabse45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gAZnXQwKABsE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/s390/boot/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/boot/startup.c b/arch/s390/boot/startup.c
index 7b0d05414618..26493c4ff04b 100644
--- a/arch/s390/boot/startup.c
+++ b/arch/s390/boot/startup.c
@@ -46,7 +46,7 @@ struct diag_ops __bootdata_preserved(diag_dma_ops) = {
 	.diag0c = _diag0c_dma,
 	.diag308_reset = _diag308_reset_dma
 };
-static struct diag210 _diag210_tmp_dma __section(".dma.data");
+static struct diag210 _diag210_tmp_dma __section(.dma.data);
 struct diag210 *__bootdata_preserved(__diag210_tmp_dma) = &_diag210_tmp_dma;
 void _swsusp_reset_dma(void);
 unsigned long __bootdata_preserved(__swsusp_reset_dma) = __pa(_swsusp_reset_dma);
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-2-ndesaulniers%40google.com.
