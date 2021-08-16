Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI5Q5KEAMGQEDF2PYLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id DE19E3EDBC6
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:53:56 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id a186-20020a671ac30000b0290289c309d3b2sf2975147vsa.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 09:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629132835; cv=pass;
        d=google.com; s=arc-20160816;
        b=TijwHkiJuJ34mniWMPvqJT9Bw2yTJfGzP7LwxFAlgNlUmbEwLtUoasbqySvpGIIaWx
         8HaZZSBf2VnpuaW+llNjmMygvohte0Vb4bBpLx9I3s4wexVGs78wySxer43cbrQUw0R4
         3E7GH06vMIM1F+y5sqa96oBwLykaU8z7N2ZOIVz6yIMF099NgEteg4R+kBnidAbMbgof
         DcBAtTDJai329yfGqkvmYhnoHynqISFB4C8kv917PuvA7AXolZQniSUuf89d6B8YtGjE
         ynWWFDCl0Ij9kVbEm6v34e92JNDcHkErRLJQGY4qfUKmj5cMMFMKwGC6qYM8OCwt0XYa
         YCGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=/AjOwzy7zqc6wJAco813Ogkb7ylUYP8213npdPBaXbE=;
        b=s6P0F6x8DltZZr6PsjGfb71mGTp5LxTGS8Kzy5sONO159dGq7wOjPkWNIBoohlGUyK
         A9hU5b8wnLjmz6LIlbC05kMG8qJXZLhX8OrBFCPie58eYlc6oWj9eoQf6Xd0yL6WAjlb
         IIsbdO3JJkjwlCYQJGJ43mHgtv2e/iD0/JTalqJXqNDL9OfZGXd04XCPgzgC+om1Tq1n
         Bx20RmJUDDQE/kApfdNMzd0TQ0ovMA7gLkxOw76PDE12fjkCJWSpk1qJhLGQU7vuQKv9
         hmed+g4kH0Qca15DtajdmIsPI3H01ve1PL6k2dwn7iT9DfXNINR+z2SidCDSHV0ESr7I
         awLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AmkdrMNB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/AjOwzy7zqc6wJAco813Ogkb7ylUYP8213npdPBaXbE=;
        b=KK6Td9fBHeZfSXP0XI7ywK4+ATWWVen59rArmKUkhEshaxcyJ4Z/CDMAwPxoavWzGw
         95GLgvEs0G7PsjkI8kidF+Nnz3S1mGoVQtFEE94VZqBM42vqV8EB6mIRZ7ea927DQaKZ
         2k1k/vqjBXuAe9OsIWVkfWvVCoCtBXs5h+0I9wPX74pr52UVe6cZGsQDtwd7VsigcP3G
         ii/6RmajtXM7kgdBe4LX+fXE1vOwuRUUxXT5WgScaFf7lGA9KxsBzRRsPS11YMSXlEju
         fIvjRW85bHLz8XEhPOjA5UVo+njFRb63MzITrUY5qoWzxafhGmcLYNna0XPmPzco11Mw
         9VXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/AjOwzy7zqc6wJAco813Ogkb7ylUYP8213npdPBaXbE=;
        b=fjrgoJMHlq2Qy2girDgRBFc33hsSgUBy9t3acC+nUbEIjj3vOLDXUQrJTqmi00pGnV
         UepPS+RM5HL+xTt6qzGPjR1u07xuQueJEH3sndoqCxHw+zudA6AJKIqPtmXRMoV7PZj1
         HRePtvvfMUJPD+6oLN/ryHJvVyQVFcLivzz836MJTgdNdJwShlT+DOPJMpc92g2fyFt7
         eyls995b9oxYtRGS7yD0o5WDQgUz01t2CPN3jv54/wjQg4/7M8Hv99RF/AtnJwVhZSap
         vLLwtYIZZKOgrs/ehm2FQLBB3Uzunvcot/FbVnXgY/f5dZzKj+moh/VwMSvYo30hB+z/
         JVvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fq4cN4+2kbeaThHxRmc1Z7OtIVgVbyP8tpqfaO/dbpeoPmgz+
	ijEYBIL1mJ1aC/HN7tcApi4=
X-Google-Smtp-Source: ABdhPJxPkxjxB0BpUTCkNvjjuqXYkD/CXkchu1zYN47sORkdjaC8/1a7iBoEg4d6iDBilCVQo7w2fQ==
X-Received: by 2002:a67:3311:: with SMTP id z17mr4098094vsz.31.1629132835817;
        Mon, 16 Aug 2021 09:53:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5ec1:: with SMTP id s184ls203832vkb.1.gmail; Mon, 16 Aug
 2021 09:53:55 -0700 (PDT)
X-Received: by 2002:a05:6122:d95:: with SMTP id bc21mr9792759vkb.23.1629132835271;
        Mon, 16 Aug 2021 09:53:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629132835; cv=none;
        d=google.com; s=arc-20160816;
        b=R6ccvsjcJtT0zggEQgREn0GdL3FwgAwCtUvmXnJfRYQ/VhUH1EPiPQCSMxfgG1mwrR
         0hj/6p8p4l5Q7iNLFFz69pCZ5H4emywcBAlXnNzLX4x8i1PtrdwrgjFVBfYKoVI6a4E7
         aKBrl1Ut4htXPUbSKXsQO3ZWJOJF4xnqdrjR76fEReWgO+Whk5u1CLTeadHHLjp4sOYp
         fVGxiqqIhl6PtR+7TfeTgfofsI25FchgPUSPpmjQE9wMS3RVfaHMgjxPYXR5k0koBQ7e
         Weem34ro7aEaSJ3b9F1lESoNts1DIbhquBXRs5ES4I+leP6pT7rGU3nyTJpE3nLHkj8H
         JtCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=BrdTlgg54/HSObRsVZ8ThoDUQWW40OShtjqyEVmRdVk=;
        b=bccRpMTh2qldqrjjFektjM2W6f37lSlJ/kPnF0wFfcbrp8yKZ0fGOGz5W2nQF/W/Zb
         S82LG/sZk9wJzmZ+4mskpm0KRYJEzRvVEsQwuBCVtzvS+hAJUf9pY1zIJbYcwamq0bXA
         FqZ5I/Ga7d9BnR+xHGabizZRwOHXC+CpowTsOUIRUuoduhQpRo3JkBqEqCGpk3Pbr9tk
         ZqN9wiRN2Ha1hEqAzutkYi0G0LPkAJ3mwiCwJdxxxcuvF4UQCwtv4SJ8LiMBS7X2b0Vn
         0vffHPVMQRF2kSHDelVSboG6wz2EIPA4tv1WXF+lMCz1NmbJzlL5u52qh/t5XU1Xn9H8
         xIQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AmkdrMNB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si637188vkp.2.2021.08.16.09.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 09:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9B19604DC;
	Mon, 16 Aug 2021 16:53:53 +0000 (UTC)
Subject: Re: [PATCH] lib/zstd: Fix bitwise vs logical operators
To: dsterba@suse.cz, Andrew Morton <akpm@linux-foundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, terrelln@fb.com
References: <20210815004154.1781834-1-nathan@kernel.org>
 <20210816151450.GF5047@twin.jikos.cz>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <bbb0a92c-4237-c651-3b8b-84dfaa2a2096@kernel.org>
Date: Mon, 16 Aug 2021 09:53:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210816151450.GF5047@twin.jikos.cz>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AmkdrMNB;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/16/2021 8:14 AM, David Sterba wrote:
> You should CC Nick Terell for ZSTD patches, added.

Thanks for the info and adding him, I did not see an entry for lib/zstd/ 
in MAINTAINERS and there is no consistent person picking up patches 
according to git.

Cheers,
Nathan

> On Sat, Aug 14, 2021 at 05:41:54PM -0700, Nathan Chancellor wrote:
>> clang warns several times along the lines of:
>>
>> lib/zstd/compress.c:1043:7: warning: bitwise and of boolean expressions; did you mean logical and? [-Wbool-operation-and]
>>                  if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>>                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>                                     &&
>>
>> Bitwise ANDs do not short circuit, meaning that the ZSTD_read32 calls
>> will be evaluated even if the first condition is not true. This is not
>> always a problem but it is not a standard way to do conditionals so
>> replace the bitwise ANDs with logical ones to fix the warning and make
>> the code clearer.
>>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>   lib/zstd/compress.c | 16 ++++++++--------
>>   1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/lib/zstd/compress.c b/lib/zstd/compress.c
>> index b080264ed3ad..0e515d1d4237 100644
>> --- a/lib/zstd/compress.c
>> +++ b/lib/zstd/compress.c
>> @@ -1040,7 +1040,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
>>   		const BYTE *match = base + matchIndex;
>>   		hashTable[h] = curr; /* update hash table */
>>   
>> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>>   			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
>>   			ip++;
>>   			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
>> @@ -1072,7 +1072,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
>>   			hashTable[ZSTD_hashPtr(base + curr + 2, hBits, mls)] = curr + 2; /* here because curr+2 could be > iend-8 */
>>   			hashTable[ZSTD_hashPtr(ip - 2, hBits, mls)] = (U32)(ip - 2 - base);
>>   			/* check immediate repcode */
>> -			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>> +			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>>   				/* store sequence */
>>   				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
>>   				{
>> @@ -1291,7 +1291,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
>>   		const BYTE *match = base + matchIndexS;
>>   		hashLong[h2] = hashSmall[h] = curr; /* update hash tables */
>>   
>> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
>> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
>>   			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
>>   			ip++;
>>   			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
>> @@ -1350,7 +1350,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
>>   			hashLong[ZSTD_hashPtr(ip - 2, hBitsL, 8)] = hashSmall[ZSTD_hashPtr(ip - 2, hBitsS, mls)] = (U32)(ip - 2 - base);
>>   
>>   			/* check immediate repcode */
>> -			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>> +			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>>   				/* store sequence */
>>   				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
>>   				{
>> @@ -1929,7 +1929,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>>   		const BYTE *start = ip + 1;
>>   
>>   		/* check repCode */
>> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
>> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
>>   			/* repcode : we take it */
>>   			matchLength = ZSTD_count(ip + 1 + EQUAL_READ32, ip + 1 + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>>   			if (depth == 0)
>> @@ -1953,7 +1953,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>>   		if (depth >= 1)
>>   			while (ip < ilimit) {
>>   				ip++;
>> -				if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>> +				if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>>   					size_t const mlRep = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>>   					int const gain2 = (int)(mlRep * 3);
>>   					int const gain1 = (int)(matchLength * 3 - ZSTD_highbit32((U32)offset + 1) + 1);
>> @@ -1974,7 +1974,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>>   				/* let's find an even better one */
>>   				if ((depth == 2) && (ip < ilimit)) {
>>   					ip++;
>> -					if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>> +					if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>>   						size_t const ml2 = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>>   						int const gain2 = (int)(ml2 * 4);
>>   						int const gain1 = (int)(matchLength * 4 - ZSTD_highbit32((U32)offset + 1) + 1);
>> @@ -2021,7 +2021,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>>   		}
>>   
>>   		/* check immediate repcode */
>> -		while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>> +		while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>>   			/* store sequence */
>>   			matchLength = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_2, iend) + EQUAL_READ32;
>>   			offset = offset_2;
>>
>> base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
>> -- 
>> 2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bbb0a92c-4237-c651-3b8b-84dfaa2a2096%40kernel.org.
