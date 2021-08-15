Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26F4GEAMGQECJESQWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEEB3EC651
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 02:42:21 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id 5-20020a170902ee45b029012d3a69c6c5sf8471640plo.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 17:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628988140; cv=pass;
        d=google.com; s=arc-20160816;
        b=NThhhdpbzrlrsF2gZ57UiJC/a+iBC+HKA1X2HPs29JNWHA70Wa2UN24GdWG8eFMMj4
         JltC2adbL/Ox4RXPPfosAGkSq8RFf2WSN8FONjEyyhGTkiuBxBKdxRX1mz1yUsXMExJD
         WJfaB1yDHta078cMVmMwX06tY+2kBkv+839VBG/JfljOO1veW2wmswuvrGVO3tvcg4LR
         yT82mhsvPg2V6OEf6d5FqTWxIpHY7/EYa3sZWHZURMZIyOgmuPn0N9GB41R0TJeYsBj2
         NqsRgwZeEbo3l1b9Qc5RTbM0v0kLVxmBE5mXuC2lMHI7qCXBeMfHVobaS2V65Authcdq
         9YNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=zUEmzZP4YJWspj2jzP7m+EMf+nOl2suDOUVkToKmqUQ=;
        b=ayANlMuXSnnoh2FKfz3zoKMroJTMubLW7VU7zqHTygViDjbrwk6H0hqzuXITDfnAme
         wS0YrWyOf4tSZmTpRcqZIsDeKMMMfp/vDofRrWYIN8nrbspG0jkmYLbXXBMuUxrn+YpJ
         ujpxv/VtVBvbyHwizQTBq1ZtSFPH4AW3u7hiL3O/nFpPSmnlJDXNLxQPoTRn9vs1hVEC
         0FCp1astPBzij6vEGHxpOK0JLTIMd3l/mHqaQzfbz8cCPwGocTnwLpEQxZL+IHpAauea
         qcxDim3yk1V9eskYeVsSuWrrtDo9XzUx9KNI+ZlqZv96cesB9N9UdEvHdzyhGz9bHQ1z
         xXHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mP4HGWGV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zUEmzZP4YJWspj2jzP7m+EMf+nOl2suDOUVkToKmqUQ=;
        b=W1AgPnO+zMiP2Wal5G096qpb/39Zuj3qFPi5L7WbKE45PiF8E5Lh6xevsTf1B//8oJ
         4aov9ehbSQLzdxJbwMzBYDhmU0o/KuRIc1VVPkFfRfvOOQkr2iiz1v0QtIsXFk/nh7u/
         Z5nXSZ4pQi7QGa+1yLtZOOk578yzm6aYZZJKuBsuWn6xj7E/NqS8JmRURSGzXQRPOCDl
         6CVL766sUu06kS4edw9Bef74nI/xLM5kk1JDVTP0hs/Lz1OX1Qx8kZiBmF5PJGcgASQ6
         dkJM81mx9z+Ye+i/gncYBaDPjWh2XXcbitXemf+3hzB2gGG6JTdwXdn7QDXmSBDLj+c7
         7EfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zUEmzZP4YJWspj2jzP7m+EMf+nOl2suDOUVkToKmqUQ=;
        b=EYEwVmyOhFmyW8LIxUmB79NkG/y7QERfWdGMU0QPuhQWeGWgJhSRgVV3SMlLe81msZ
         xsuTA64DalOmRMozKFAOjxIih7yvkE3l/KJPLhzkDvURzBp8jbo28TL4cQ8dSueL+/Lj
         zFnZgigJsmL+Xwmriw9XiRORTxWr8/fql7Hb+Hu+l6Aa5jlCLNuqpafQV5of0qLfq6Vt
         5cOXuT48qhS432tQDDnOwHL2CrTuArv36voabd6plALK+3EkrCoTjSHV+ZUnJXC2OiTf
         Ck8b3PU61v/twWMEc+/YVm6r/k2NHPH+5ap/IUmzz1I6w5mHnDflmNaAYm5lHQ4Nu2UX
         QfiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wqbC4Np9nuv8ME3MmTSAAJl011MD4iYB5z4z6i1SSaEmWVRI1
	HFr+cysGLTa9DS34ZyDkoRI=
X-Google-Smtp-Source: ABdhPJxiEFFMnwHlctqBUO4NPHsoReQiso0NLf7r1if6KoES294zZ1cJ+lGkDPoPT45DPwb7kZFNeA==
X-Received: by 2002:a17:90a:d245:: with SMTP id o5mr9442060pjw.57.1628988139849;
        Sat, 14 Aug 2021 17:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls2240005pjh.1.gmail; Sat, 14
 Aug 2021 17:42:19 -0700 (PDT)
X-Received: by 2002:a17:90a:520e:: with SMTP id v14mr9305873pjh.132.1628988139216;
        Sat, 14 Aug 2021 17:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628988139; cv=none;
        d=google.com; s=arc-20160816;
        b=FHOSMrwfpxE6mWt0QM9UCidzo+zXPBGIkqBMrUHKwG1BmqAoLFCOSg47iqUg2x1BV8
         BDPFKmueYbPC817Jq9auJfHor7j8enPUGSz+B830WMErnAh622k5NwG5syiCXaeRKgha
         mUQNocUTWhv99wJjGUk+KZ8elVU6GT4cjtniqwm2l/KNx/gCO3ET+hxw3nOMJJSxgN6q
         UzSmbZUdmBDKq+V/hJ4K1gptoGRsUX12amTcLBICazAqLPQjGJu2dUg1v18aRUoR5//I
         bfiEBVBPHC8Jzh24lDkilc3i45o/KpGIhfnX/zP64geRfD/V6jGWVAeqjMWZZtlnDRU2
         DXCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1yJKhdnE+DdrcqxMFQvS1Z0164Etv7jH1wOavHIQU/g=;
        b=HWVYN15onq6nD7D/tNV5Pw6wklNjFb61ZiQRDM5i2ebWmdhZV9eXXAhuZe2iGiVBCC
         Trpk53AXfd79mPPWcFDiVlPUYLZIJFTqui7rSQ8lhrLotdA7vNUyusENENAkbXFpw+57
         GhisxfYDV/738nUJgB8KlgJotNAIEiplQgoKNKJpLdlmcp5apvJjyfWgRcr14HpdDKe6
         FIPfLKyIJd7NcP7MiFfdlZs/IZUjApcqSp8KwT2ZEAL2uQUknHbqpNrMlUnDymTz3sxe
         yVguNTocjP+KuR7gz4vYsF5xL1Z/Xn5y8v/QOgxzt5NdSs11Ic+tQEZkOOFeKkfGEVLH
         MiEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mP4HGWGV;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id nu6si290710pjb.3.2021.08.14.17.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 17:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C89E86056B;
	Sun, 15 Aug 2021 00:42:17 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] lib/zstd: Fix bitwise vs logical operators
Date: Sat, 14 Aug 2021 17:41:54 -0700
Message-Id: <20210815004154.1781834-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mP4HGWGV;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

clang warns several times along the lines of:

lib/zstd/compress.c:1043:7: warning: bitwise and of boolean expressions; did you mean logical and? [-Wbool-operation-and]
                if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                   &&

Bitwise ANDs do not short circuit, meaning that the ZSTD_read32 calls
will be evaluated even if the first condition is not true. This is not
always a problem but it is not a standard way to do conditionals so
replace the bitwise ANDs with logical ones to fix the warning and make
the code clearer.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 lib/zstd/compress.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/lib/zstd/compress.c b/lib/zstd/compress.c
index b080264ed3ad..0e515d1d4237 100644
--- a/lib/zstd/compress.c
+++ b/lib/zstd/compress.c
@@ -1040,7 +1040,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
 		const BYTE *match = base + matchIndex;
 		hashTable[h] = curr; /* update hash table */
 
-		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
+		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
 			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
 			ip++;
 			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
@@ -1072,7 +1072,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
 			hashTable[ZSTD_hashPtr(base + curr + 2, hBits, mls)] = curr + 2; /* here because curr+2 could be > iend-8 */
 			hashTable[ZSTD_hashPtr(ip - 2, hBits, mls)] = (U32)(ip - 2 - base);
 			/* check immediate repcode */
-			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
+			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
 				/* store sequence */
 				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
 				{
@@ -1291,7 +1291,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
 		const BYTE *match = base + matchIndexS;
 		hashLong[h2] = hashSmall[h] = curr; /* update hash tables */
 
-		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
+		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
 			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
 			ip++;
 			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
@@ -1350,7 +1350,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
 			hashLong[ZSTD_hashPtr(ip - 2, hBitsL, 8)] = hashSmall[ZSTD_hashPtr(ip - 2, hBitsS, mls)] = (U32)(ip - 2 - base);
 
 			/* check immediate repcode */
-			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
+			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
 				/* store sequence */
 				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
 				{
@@ -1929,7 +1929,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
 		const BYTE *start = ip + 1;
 
 		/* check repCode */
-		if ((offset_1 > 0) & (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
+		if ((offset_1 > 0) && (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
 			/* repcode : we take it */
 			matchLength = ZSTD_count(ip + 1 + EQUAL_READ32, ip + 1 + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
 			if (depth == 0)
@@ -1953,7 +1953,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
 		if (depth >= 1)
 			while (ip < ilimit) {
 				ip++;
-				if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
+				if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
 					size_t const mlRep = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
 					int const gain2 = (int)(mlRep * 3);
 					int const gain1 = (int)(matchLength * 3 - ZSTD_highbit32((U32)offset + 1) + 1);
@@ -1974,7 +1974,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
 				/* let's find an even better one */
 				if ((depth == 2) && (ip < ilimit)) {
 					ip++;
-					if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
+					if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
 						size_t const ml2 = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
 						int const gain2 = (int)(ml2 * 4);
 						int const gain1 = (int)(matchLength * 4 - ZSTD_highbit32((U32)offset + 1) + 1);
@@ -2021,7 +2021,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
 		}
 
 		/* check immediate repcode */
-		while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
+		while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
 			/* store sequence */
 			matchLength = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_2, iend) + EQUAL_READ32;
 			offset = offset_2;

base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210815004154.1781834-1-nathan%40kernel.org.
