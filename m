Return-Path: <clang-built-linux+bncBDY3NC743AGBBX5XYLUQKGQE4G2DPRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1A6D1D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 18:18:40 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id u84sf31444977iod.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 09:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563466719; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7Ib9SMnks7bSRmDJR83cdWVTm2nWavj8lhb9aUN23qIKp9wq9EiKKOxzgE4GMFe7+
         k6hKiHIdvCE6D/+wuht2UYWC1XiJol9sNcX7L4AVcVcQVPvHnDcfmA5LhEQ8MjXu48qg
         cYWsIQkF1GxYHKD+yboNmNJvJscBN+GB4JJAgdbwzp7miDwl++MTNHZ9CJ/j0OEvyp1G
         iDYYYueS50DH6n8939gSrqIWbH70vL9YoNSqsnRheD0O2QPoeRo0zNLQBSvhuUZETB1E
         M4SSiw9uAXE0lJRRhiRQ3id1GpZw2YJKv3hW+gmM6ky7OdiWIfcdI3ugVmImNB+E8zcx
         JCzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=U8Dhd///4gGCdERveDaluca95EcLNWcCzue3Yxof+iw=;
        b=QLzREZTORx35+MDjTwzJh/0RDIy95WvnXgE95MzhKnXdGJbYdK7uGxFx8+7L8Q58zi
         QJRR8iiak8bkwpRLbHbaTWxx9hYUPw27wPEAg97n+09vFsVC5NVW4wOtl5IhA4nYGvKj
         F8hqiqN7/5/QyTiWwRtfn8NxzIptNLoG4jmYti8rNeuFrwfXL4T2TWMoaBItnXKsvFlU
         7HTu8jRs3Lio4f/ZttjbJ0BifMrTaiEaxowhDdiRW1aYtGqNkrv+u9EJ7TvU3ChDpZH3
         h2Toypr4upXbmkRWkO0OOG8l7TFl+OdnYjin/Tt8O08zJ/99cqWv8DaDgSUI0RW2r1xx
         kwWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U8Dhd///4gGCdERveDaluca95EcLNWcCzue3Yxof+iw=;
        b=LAok2V25zk7GreZimDKLZkDU0q03tldY4CtqzI/aHoxYON+BmGQQCXieLsNtDX2/Me
         6BqgHBJ5SZAlYNuMg20RDZV4qiZaIQ5RUyofzn+CrqwFfWWtPVCsM1pcX+hhWq4ZTUV/
         306PZypWwRNjttECdw6XDjdrHjSv0m4WlCFSTCiFkd7kY5NnY/sc7fsYahWnB/I4w0bO
         cPloWQ61LsmOkLnRLyq2T8Tm1HpSPZrP/RP1XBYwczECtHHgWzQv5HxZbfwe7urYhA/+
         ux/Ov8MCN/3eZj/EF8Zm4Jhc5uLu93OldR3gOoSn8Bys/vF/CEOODftaFLTK9i8jxJvs
         bK6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U8Dhd///4gGCdERveDaluca95EcLNWcCzue3Yxof+iw=;
        b=ugpY2klUgyEAcLLINpR+kQFciLxuzQyS/UZWO5l3JeqF5HNIk0BOfnM6Ah4amny0zk
         wc34j/km+CjEAoDzx+KpxFX/iwsO3aXRxmqMSL7LRN+HOmrah4aocuhSTFCuvE3tsA0M
         XmXARbLz2rS92oytdVd3qTfS52xZv+ANkWArJYPhYB+5dP9v8r4H/BPRtHhCAwwkjn5S
         0PZLn5EevMxngBHrjBl6jSZFlV5GpkNIy4SuThKqQH7/hZG8ncgOwdo5Z2Iu8hq8r51t
         O94dDcaKoeiENPWZ+iV0Oqm/+93rGg4V8jImXQQ3G9rxCyrEj4DtfON09afcRRfaBY2/
         lq5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKfVWkDyRHI7JchQ4sajONSeIW8DmJGvhMDdkAPi26DiJh2Lez
	CYADdbNMspEszb03dRyCr/E=
X-Google-Smtp-Source: APXvYqxmOcxt5GbHFFney+/vAESmeIAnkVhxI6yx4dhPtmX2OYxqXAZdvqCIgKC1u4t6ZAg7Kh/U7Q==
X-Received: by 2002:a02:a07:: with SMTP id 7mr50135176jaw.65.1563466719541;
        Thu, 18 Jul 2019 09:18:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d819:: with SMTP id l25ls7700092iok.0.gmail; Thu, 18 Jul
 2019 09:18:39 -0700 (PDT)
X-Received: by 2002:a5d:9690:: with SMTP id m16mr42785323ion.180.1563466719216;
        Thu, 18 Jul 2019 09:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563466719; cv=none;
        d=google.com; s=arc-20160816;
        b=xKUdpQNjSyYPR2wdIs2P7IoE8nzu2QvoQFcByAp0WzzJ+iRv+/UCRuuxTzZZMjh26U
         bTHnvP47xo0rtjNlJB+asep/UwSPATgb5GOLF6A/D07ukI4boR0FCJgPsMTplb2g+BU8
         h+bUQQ0gTndjfy+Ock1MzAtpVgSJWIPv20mHMZx69n1y3tn0dGe8i3SQZ+QWzUL0Kvtl
         mHpdrRj17Jd+OX7QbB2VJ7AmUBSW56a2QCLEelqKoiRt8Ieo/EhuXRQ2lk6k6I6nEMnw
         hDR02k5MZ3ibd1nPImYTGsN+ciGmkjvzGQjPiGFBXHifcWRAVyMUN5QnTeKwqjyk+Fsa
         VTjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=QbNN5kc5hGhwxpHtuvFtuXYRtXLxjjIlVfA4gmmrfQY=;
        b=wXDQW5MY9NKENcMuJhGrKBqUM/cdG1F19yNvecKKpgzZtFOdZCSCJ7/3xS6SDeKfP3
         QLGYZBuMMTW4SC3piObb+zPsGKW3XDKyY2w5Zo164AWuJM3TJ6Ihb9Zb84RnaOB5NvGo
         j/uJWhbvSkGNYpPEEum7GQQ/3kvcihOdkn0LRaPEdB5ZITS0LMCOOK8GHXVRigdYkXgg
         e5pHTJ7yZofHIedNALJSBZTnA3Uf1F071/4ppOpVI7+KVWgndaYilijw3kg1v58rxVHt
         lm27V5f5BJugPavScd2s0OX1+THCpKcF0R75RmUfpNqb2vFnGe0S8ucoqJUSohfy//Dv
         5kGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0141.hostedemail.com. [216.40.44.141])
        by gmr-mx.google.com with ESMTPS id h25si1113876iol.2.2019.07.18.09.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 09:18:39 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.141 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.141;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 568338023D98;
	Thu, 18 Jul 2019 16:18:38 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::,RULES_HIT:41:355:379:599:800:960:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2195:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:5007:6119:7903:8603:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13160:13229:13439:13869:14181:14659:14721:21080:21324:21451:21627:30005:30012:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: deer25_684dc6a622a40
X-Filterd-Recvd-Size: 4295
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Thu, 18 Jul 2019 16:18:36 +0000 (UTC)
Message-ID: <db0a363fa35f1582f20e529d79927995a5512c0d.camel@perches.com>
Subject: Re: [PATCH] crypto: aegis: fix badly optimized clang output
From: Joe Perches <joe@perches.com>
To: Arnd Bergmann <arnd@arndb.de>, Herbert Xu <herbert@gondor.apana.org.au>,
  "David S. Miller" <davem@davemloft.net>
Cc: Ondrej Mosnacek <omosnacek@gmail.com>, Ard Biesheuvel
	 <ard.biesheuvel@linaro.org>, linux-crypto@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Thu, 18 Jul 2019 09:18:35 -0700
In-Reply-To: <20190718135017.2493006-1-arnd@arndb.de>
References: <20190718135017.2493006-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.141 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2019-07-18 at 15:50 +0200, Arnd Bergmann wrote:
> Clang sometimes makes very different inlining decisions from gcc.
> In case of the aegis crypto algorithms, it decides to turn the innermost
> primitives (and, xor, ...) into separate functions but inline most of
> the rest.

> This results in a huge amount of variables spilled on the stack, leading
> to rather slow execution as well as kernel stack usage beyond the 32-bit
> warning limit when CONFIG_KASAN is enabled:
> 
> crypto/aegis256.c:123:13: warning: stack frame size of 648 bytes in function 'crypto_aegis256_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis256.c:366:13: warning: stack frame size of 1264 bytes in function 'crypto_aegis256_crypt' [-Wframe-larger-than=]
> crypto/aegis256.c:187:13: warning: stack frame size of 656 bytes in function 'crypto_aegis256_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:135:13: warning: stack frame size of 832 bytes in function 'crypto_aegis128l_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128l.c:415:13: warning: stack frame size of 1480 bytes in function 'crypto_aegis128l_crypt' [-Wframe-larger-than=]
> crypto/aegis128l.c:218:13: warning: stack frame size of 848 bytes in function 'crypto_aegis128l_decrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:116:13: warning: stack frame size of 584 bytes in function 'crypto_aegis128_encrypt_chunk' [-Wframe-larger-than=]
> crypto/aegis128.c:351:13: warning: stack frame size of 1064 bytes in function 'crypto_aegis128_crypt' [-Wframe-larger-than=]
> crypto/aegis128.c:177:13: warning: stack frame size of 592 bytes in function 'crypto_aegis128_decrypt_chunk' [-Wframe-larger-than=]
> 
> Forcing the primitives to all get inlined avoids the issue and the
> resulting code is similar to what gcc produces.

Why weren't these functions in .h files
not always marked with inline?

Are there other static non-inlined function
definitions in .h files that should also get
this inline/__always_inline marking?

I presume there are but can't think of a
reasonable way to find them off the top of
my head.

> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  crypto/aegis.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/crypto/aegis.h b/crypto/aegis.h
> index 41a3090cda8e..efed7251c49d 100644
> --- a/crypto/aegis.h
> +++ b/crypto/aegis.h
> @@ -34,21 +34,21 @@ static const union aegis_block crypto_aegis_const[2] = {
>  	} },
>  };
>  
> -static void crypto_aegis_block_xor(union aegis_block *dst,
> +static __always_inline void crypto_aegis_block_xor(union aegis_block *dst,
>  				   const union aegis_block *src)
>  {
>  	dst->words64[0] ^= src->words64[0];
>  	dst->words64[1] ^= src->words64[1];
>  }
>  
> -static void crypto_aegis_block_and(union aegis_block *dst,
> +static __always_inline void crypto_aegis_block_and(union aegis_block *dst,
>  				   const union aegis_block *src)
>  {
>  	dst->words64[0] &= src->words64[0];
>  	dst->words64[1] &= src->words64[1];
>  }
>  
> -static void crypto_aegis_aesenc(union aegis_block *dst,
> +static __always_inline void crypto_aegis_aesenc(union aegis_block *dst,
>  				const union aegis_block *src,
>  				const union aegis_block *key)
>  {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/db0a363fa35f1582f20e529d79927995a5512c0d.camel%40perches.com.
