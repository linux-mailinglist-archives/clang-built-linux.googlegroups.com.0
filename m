Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBG4D5KEAMGQEGCW2RCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 585313ED9BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:17:48 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id y22-20020a0564023596b02903bd9452ad5csf8993267edc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 08:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629127068; cv=pass;
        d=google.com; s=arc-20160816;
        b=RSu3pzgNQC3EtHq3DeAtfee6EQZSpUi3OisLuccsiiug0DHiL07CXWYcTpdX5K/LuF
         AvoeZPFHVU/YfROz7v12tZpKQsqLDzGsRqxjsma2jAF+wVB5b/1ywbwhjKn2axLLITvr
         AJxkv8vkVBepdfkGW3sC7SYz68fcVMeG2qgtf+27CBpLZtbHGzVfHl6LvyK4tK/4zNnL
         sP8PJ0O0C+GJszrteh4l/HlrbjZTVgPMtPAuOHwB/HnkYZ3ETXRrBC38OZ19Z4kgVZ27
         envf6DorD/POGhO7uDcMOCodO7zDsrMNVxmt+PFSZTwnLPni4Wm8NZWL4P1UWj3pZYax
         TVag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=czpBF4XGMjaTIyAg+8NoPQUIRNBDs7brd0bHYbZz7nc=;
        b=Vb6MlLCkhXAqDRP+YSH4Joa5mhxMmPvOUXix8b1tNbVftUQp7wU4PS5EXUzHiBZUXu
         nV0FZueoNz/tCNAkBNSuPr1BQgR3yuwWs/7i+Two4vSEspR/4c7KBaCGnCReR8cXtanO
         vuZo0ar+dDXzHNJ1iH43ntypNIC5mhpHSd0zuBK2ZNqk8fUDOVk1AOpv2hkzXAuqdBsS
         X8pDJwY6mEcZwzFroXWj5kydlE3j2M5XOha7Ps6Pyu1L2kPq1wvfCaPZk/0svoH9uxA9
         wuHbNX4AtXHEkC241AJUbN/sMc1opqG4WF4/Aw0ggXkHcWz3mX4PzzsN3bDLzghEbcQY
         5nYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=cQl4TLBb;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=USzbCISf;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=czpBF4XGMjaTIyAg+8NoPQUIRNBDs7brd0bHYbZz7nc=;
        b=f0UZdJN0/ryDRrazL5MJHGVBbsptgOzu5BY3PoK3HybL1i6OJbOx2QXSwDuFg1/HSb
         KF7mMwUFWdLhopfblrd/VAZtcUppsx2YV25QqZVd8SIVBHmMkRHUeUaYoAICCyFcL7iC
         QliqBelRgljZmA4PiQQB63ysw4gYKoVGrr1OnLW8Zx42rPd73vRJlfhdhFXuUR6qq6hW
         kTBOCuP3VN1awpyVvcovSOwIffNZMDdnQyE+f4O0wfUESRMu26omdTNoEuc0Slt3ijZl
         I6cJzVgJU4H5/yjecLlG1ksYtJsTwUTR0W0rrHW2J2ZnhH2IL0ZyjZfYyzfLq+3IhVm6
         eA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=czpBF4XGMjaTIyAg+8NoPQUIRNBDs7brd0bHYbZz7nc=;
        b=K9hM4zQ+CCefuZga+Cjdm2B3LD88O/0NvS85xG3gwYeAIHaNC73rfUaGDna8OvE1W+
         32W6UnZWAHdR2OULVUG9e8Qy4QRsyfattq9XQ8RYIKLNpMEwDrTIUXsLH1Chiirc8SJL
         8zXPnxoq8T2jf8YtDZxfbYZ0OFMnhWCfjPT5hHJuy5MzoP843eXgiOw1aEiD6/9W0ikm
         yBOuk1jdPvLTtALiko8fMai7wuibOcozSpPaGoC/4TuTgoj7Kyc7rccRLnl8nsQuDPti
         3AuTbgDZs4/d+sIuCFUTraVngA2wL+XHU2QhdDn6WtutqOzYrgasc4Kgh+pGziCvAMLQ
         CcVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jKj5HmL+jtljDqyMcAgm9inmP4gsu0MG6hvP9QIdto9OwEeWr
	9QhU69n97CAlcJPbYaSYgtQ=
X-Google-Smtp-Source: ABdhPJxDdo2FYLDQfVAKM4UjGcQ08QG0oPP4lTWX5HwkOp2F72ZbqSGkVyDAg5bPvhrPb3gm6opXpA==
X-Received: by 2002:a17:906:c00f:: with SMTP id e15mr16529860ejz.502.1629127068099;
        Mon, 16 Aug 2021 08:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1644:: with SMTP id n4ls3869739ejd.7.gmail; Mon, 16
 Aug 2021 08:17:47 -0700 (PDT)
X-Received: by 2002:a17:906:4541:: with SMTP id s1mr16843478ejq.378.1629127067240;
        Mon, 16 Aug 2021 08:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629127067; cv=none;
        d=google.com; s=arc-20160816;
        b=fLMMF3BH4sXveabZZo+9Ce8erU5XfV3EMUPZXpDxSScnJWJBYzGDNfadxyZhu+X9a9
         5gJpZlCcO0Sz0nxs58XhOS8jrzc7JTNCU9fXdqd4QaL/p00VtaTTh7uSBnejgoUjYnru
         9RqqtqNQ5KvPp/CpIr3gAsTsL/dq2i0HInBhtE3kr23X8fM/DaZLOQYpLVNrGJKgDy+M
         jttgyVgxDb4iLKss3n6LpJMJ3sRiWovUmORA8F9MdWd1/jh0aoCeXMMkmw3V1n9F3WIf
         F9fBJtlRd0y+yxGmNMngknRlSwn3b/UQu2LYj+/UAfoEV8UFNVuZ0AXu17PocGzXl1Dm
         M0uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=znmd6DssRyB2gfAtJKubIBtDRd+udlprmsCrGGY3Om0=;
        b=QFD1e2h74n2Ev4WNYxjFvfYSlldaLUzqbmDN6cPLdwjJzloKZUhEQO69cWHRpfE4YX
         0aW5de2oO4f/yzV+f76IFVnBkNzf2SzJShVd5haDHBCLSk7xPUBitkbTkflC5tqzrd08
         tKEKoOniWUws+20bv0yprJvCjCEpkX5x+hAE4ZMU/gxjzqAMTlZctS83pHKwK260G+/N
         3pWfEBuXDx7+o1d5ey7WDY527LVoYwk+4sfDziJmjnSz7KKlFsNLQdzMl9IM2iaHmumi
         z8IYTmWJruy+1UhejKjjnQeMvUXz/8mBy4iRvwGOtLVIdS59XXhRo97hoCEda+p/7ZN2
         w3bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=cQl4TLBb;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=USzbCISf;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id 24si142469edv.4.2021.08.16.08.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 08:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id D6E6C1FED8;
	Mon, 16 Aug 2021 15:17:46 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id BFA7AA3B87;
	Mon, 16 Aug 2021 15:17:46 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 07B8FDA72C; Mon, 16 Aug 2021 17:14:50 +0200 (CEST)
Date: Mon, 16 Aug 2021 17:14:50 +0200
From: David Sterba <dsterba@suse.cz>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	terrelln@fb.com
Subject: Re: [PATCH] lib/zstd: Fix bitwise vs logical operators
Message-ID: <20210816151450.GF5047@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Nathan Chancellor <nathan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	terrelln@fb.com
References: <20210815004154.1781834-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210815004154.1781834-1-nathan@kernel.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=cQl4TLBb;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=USzbCISf;
       spf=pass (google.com: domain of dsterba@suse.cz designates
 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

You should CC Nick Terell for ZSTD patches, added.

On Sat, Aug 14, 2021 at 05:41:54PM -0700, Nathan Chancellor wrote:
> clang warns several times along the lines of:
> 
> lib/zstd/compress.c:1043:7: warning: bitwise and of boolean expressions; did you mean logical and? [-Wbool-operation-and]
>                 if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                    &&
> 
> Bitwise ANDs do not short circuit, meaning that the ZSTD_read32 calls
> will be evaluated even if the first condition is not true. This is not
> always a problem but it is not a standard way to do conditionals so
> replace the bitwise ANDs with logical ones to fix the warning and make
> the code clearer.
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  lib/zstd/compress.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/zstd/compress.c b/lib/zstd/compress.c
> index b080264ed3ad..0e515d1d4237 100644
> --- a/lib/zstd/compress.c
> +++ b/lib/zstd/compress.c
> @@ -1040,7 +1040,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
>  		const BYTE *match = base + matchIndex;
>  		hashTable[h] = curr; /* update hash table */
>  
> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) {
>  			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
>  			ip++;
>  			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
> @@ -1072,7 +1072,7 @@ void ZSTD_compressBlock_fast_generic(ZSTD_CCtx *cctx, const void *src, size_t sr
>  			hashTable[ZSTD_hashPtr(base + curr + 2, hBits, mls)] = curr + 2; /* here because curr+2 could be > iend-8 */
>  			hashTable[ZSTD_hashPtr(ip - 2, hBits, mls)] = (U32)(ip - 2 - base);
>  			/* check immediate repcode */
> -			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
> +			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>  				/* store sequence */
>  				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
>  				{
> @@ -1291,7 +1291,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
>  		const BYTE *match = base + matchIndexS;
>  		hashLong[h2] = hashSmall[h] = curr; /* update hash tables */
>  
> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1 - offset_1) == ZSTD_read32(ip + 1))) { /* note : by construction, offset_1 <= curr */
>  			mLength = ZSTD_count(ip + 1 + 4, ip + 1 + 4 - offset_1, iend) + 4;
>  			ip++;
>  			ZSTD_storeSeq(seqStorePtr, ip - anchor, anchor, 0, mLength - MINMATCH);
> @@ -1350,7 +1350,7 @@ void ZSTD_compressBlock_doubleFast_generic(ZSTD_CCtx *cctx, const void *src, siz
>  			hashLong[ZSTD_hashPtr(ip - 2, hBitsL, 8)] = hashSmall[ZSTD_hashPtr(ip - 2, hBitsS, mls)] = (U32)(ip - 2 - base);
>  
>  			/* check immediate repcode */
> -			while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
> +			while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>  				/* store sequence */
>  				size_t const rLength = ZSTD_count(ip + 4, ip + 4 - offset_2, iend) + 4;
>  				{
> @@ -1929,7 +1929,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>  		const BYTE *start = ip + 1;
>  
>  		/* check repCode */
> -		if ((offset_1 > 0) & (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
> +		if ((offset_1 > 0) && (ZSTD_read32(ip + 1) == ZSTD_read32(ip + 1 - offset_1))) {
>  			/* repcode : we take it */
>  			matchLength = ZSTD_count(ip + 1 + EQUAL_READ32, ip + 1 + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>  			if (depth == 0)
> @@ -1953,7 +1953,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>  		if (depth >= 1)
>  			while (ip < ilimit) {
>  				ip++;
> -				if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
> +				if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>  					size_t const mlRep = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>  					int const gain2 = (int)(mlRep * 3);
>  					int const gain1 = (int)(matchLength * 3 - ZSTD_highbit32((U32)offset + 1) + 1);
> @@ -1974,7 +1974,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>  				/* let's find an even better one */
>  				if ((depth == 2) && (ip < ilimit)) {
>  					ip++;
> -					if ((offset) && ((offset_1 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
> +					if ((offset) && ((offset_1 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_1)))) {
>  						size_t const ml2 = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_1, iend) + EQUAL_READ32;
>  						int const gain2 = (int)(ml2 * 4);
>  						int const gain1 = (int)(matchLength * 4 - ZSTD_highbit32((U32)offset + 1) + 1);
> @@ -2021,7 +2021,7 @@ void ZSTD_compressBlock_lazy_generic(ZSTD_CCtx *ctx, const void *src, size_t src
>  		}
>  
>  		/* check immediate repcode */
> -		while ((ip <= ilimit) && ((offset_2 > 0) & (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
> +		while ((ip <= ilimit) && ((offset_2 > 0) && (ZSTD_read32(ip) == ZSTD_read32(ip - offset_2)))) {
>  			/* store sequence */
>  			matchLength = ZSTD_count(ip + EQUAL_READ32, ip + EQUAL_READ32 - offset_2, iend) + EQUAL_READ32;
>  			offset = offset_2;
> 
> base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
> -- 
> 2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816151450.GF5047%40twin.jikos.cz.
