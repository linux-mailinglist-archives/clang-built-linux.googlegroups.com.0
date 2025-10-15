Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMGPX7DQMGQEFUKZWUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 698DEBE02C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Oct 2025 20:28:02 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id e9e14a558f8ab-42f9bf61913sf142783015ab.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Oct 2025 11:28:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760552881; cv=pass;
        d=google.com; s=arc-20240605;
        b=Bk8/O0zqNq0LjsioXbNK8fSmujnk4eDwGiYbN4fLT0bnh59tFAA6lHXDlyRhZGyS+G
         d22oVRxWx0AilbKVg1sEAwZdqpgf8++qIRx4EtBP/3msfdE8iluf1dn4x7FpL4OI+wYV
         oThqqBfZTdA00MToLlrABBn26olg68Wg9bLlMUB6MD8RE7cfShaUTMbKsQ8sVLaeKNkd
         7vzZXCpnZKfDiiApMH7feHQ5f+XsyAv9foCraS/aAwlPZfgwySEYRrCNMf8K5+21591t
         ZE5RgjZG9SRVJPSOdixZoIAzd2JBu3pwSPOxRgJUsWk2VHz8V4YuBlVTadfTrvykUFQg
         GOMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mFSrSDrEIrlDJ/xOQRcKAKwEu4YmIgjY8V/r+As+RaQ=;
        fh=fsTmBk3gq4lE0DdSl02NI/PKtCSlfEGf7jQUH7rqhI4=;
        b=LtRRfuDrwFU2boueqeb2XlOKV+3uuUuPf51iGROIJdgXhuCXjBa1U6yodoQH0w/WXB
         4rsvKgmMwVyXaVDHBwWfAobwrFmcIlGZzjSlLHCiKo3e327ZBMKS900JdOLRzR00+aP+
         rY6FFJ8QW7y9mSSOuZ7hT7yiqKY5rrd7Q6Vx2YXutpi5eIoglH+9/bPKYdb3GLgPIZ1z
         EMDp+6aHACE1wVDo3agPgO34id1CEgjFZLeEL9GGWhLuE8tvSMXqiNtndaN+wwkL7iJw
         xJHI7PERcCGP0U2vgYBTHxO1r3PoMO5Mz2ZHle+ZDLAQgKiwEAyXak8xsqCBOi7DDbG9
         Yk5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tvsXYo3t;
       spf=pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1760552881; x=1761157681; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mFSrSDrEIrlDJ/xOQRcKAKwEu4YmIgjY8V/r+As+RaQ=;
        b=pMRrjBqygkfhiBm2Qxyb6reYvHohadvVBaoTDRz5dnkl3BJ4sGrX4XvUropxrZlpUI
         Ffohj4zlrKarTqQOrqsYNSeLSSOoFj0wW6gE9Oe2bbOUGj8EDbQ/0YsaSX3Mi2Seycjk
         9IIT+zCRkbuGCgmV2e3sD0NMqimccQxXyQXj86yuYqH05JczN+cLUGpOxsJzftFOBPLo
         X9YSVcyt9bQ4dWLqzqRFRJQh20+bgb78f3zgqt+MDMhVqjAhcPf23YWsKteagZTQXu1a
         zyvMSFLh/sRBl1arQS4ZQkjwuI4BwdS57FJdS2JCm2uDGmjX/S39MeA/Dd+KqHpcfY8Z
         NO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760552881; x=1761157681;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFSrSDrEIrlDJ/xOQRcKAKwEu4YmIgjY8V/r+As+RaQ=;
        b=TpdmtmUhsB9yO29Z60szNUJctqc247rcVFjV3uJg8KDi7cemy7KblnNz35QPjJb9sM
         dPxxaLx2RhHKB+v33C/Mher8xF8iz8TXV3nPggfZmKg+X6tl6NqBS8GUfiOhFQ8K1Lgj
         G7q7uOYZs2dRN/NIvHJpUD39iLotfMik/lwwWEY4CwIMAoKuz9WJaUTP/pAEVwlSk+kh
         YcIyxSq6QlJpoeD7jGKeuKY9/ev1HKTasAiwEwCSNf6PnpStuP/MinQB9yXte3w0mOeC
         Pxla/Bl3kxu3PuEIeK3IDFD+zDUEaMy8pp0eSbmDyaVp1aTi150yk6q5KfyN+f/EnZdO
         6Cqg==
X-Forwarded-Encrypted: i=2; AJvYcCUpTc+3cjEg1aYvWq4d8wh03cbcdBUS/C/Iw4GNZx5Hv6/an008+A19xKnkWmTqX9xnLcIb7A==@lfdr.de
X-Gm-Message-State: AOJu0YwVG/8Vxax0OUCtDHEkprv0Wa1gifezcrG4P1gxbLCRg8y4mQDQ
	VmcGZEVeEt6VNuMW1xZmBhXlbXBlFXAhmFLI7G2/rGo4VAa7ycjaKwG7
X-Google-Smtp-Source: AGHT+IGe28MGJrS4Q9GT2Rt3mXcIAK1WUEgAkfHO03xOTa8I/jaZcoj7cCAzW5/J/EkPl7iHFiyhAQ==
X-Received: by 2002:a05:6e02:450a:10b0:430:9104:3894 with SMTP id e9e14a558f8ab-430910439f9mr125565205ab.30.1760552880566;
        Wed, 15 Oct 2025 11:28:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com; h="ARHlJd6cvLO4AEjCryrDg7D5ALgbPEyHeQE2sS9P1lzp92VrgQ=="
Received: by 2002:a92:d841:0:b0:42f:8b27:82bd with SMTP id e9e14a558f8ab-42f90b3610cls45832585ab.2.-pod-prod-04-us;
 Wed, 15 Oct 2025 11:27:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpSxGGOxqhy52nFyA9WRF2ExyWFyJoY7S+sor5R/4SE7v9EJG6ieHDXRxSN+D4OGFcWTo/Pxy/txnEwqRjGfOXVQ==@googlegroups.com
X-Received: by 2002:a05:6e02:2142:b0:430:aec5:9bee with SMTP id e9e14a558f8ab-430aec59e9cmr30172575ab.7.1760552879554;
        Wed, 15 Oct 2025 11:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1760552879; cv=none;
        d=google.com; s=arc-20240605;
        b=YDFZGr8EX2AjFbzSauqFS5p7TsNW8hTjHXeJxr2S18KvElvXYXjbzAkLPO5PYJAPqZ
         1B9GX3UrSo7fF+ZZiVXThWzSWBhIS/olqJE+nUyC/mclQsMI/E78dvkWdBN9LFaLuqbA
         tUOBqnDL04NNXgYjVB/TGy6TtULXfmxzq80fhyqpSfXVUWlB7szFu3kzKZIBM7RWulnk
         IL60Bk8D8VO6dNcZr8lID/LufX7edaJno8TKR53wvweHUB26YggFynAoHpZ0OElD1/y7
         04xnEJfHDTcw1eHlB2lEVLLbz0k+sy0kRELYy8H0etjXwE0Ro1LQpSxR8OjzMqBixAWD
         Kwqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UT1DXpH6stHZzpuLlVt523N6/w2vc+6EjpAG1UNrdqY=;
        fh=qGNAJk9gU4JqHBED14UEZPwtwYd0njAydNXfJ56fAcU=;
        b=GXDO9mjOGmZ844W7ew6X+Y079JO26Usr+aC+zY7EBUI+I+FbPGKjgFsWV8TaZlKyJe
         ZOXu3RKoS2BM2S36yBJy2gVwBkTWgug+KLPhmkQg1/byO+Zzw8yk+y6w9TY8ghhU20K0
         uT9efOkvhwr50Uop4kXzWnqPwUfCJz8jLSCQE9lYzVDZIqjw68ZN2Vl59SbxxbCviEpt
         c/HeeVqshEK79FykwzGA1WcMhq0eaaLwCpIqHdNnUuVqXVTbh3vFKjSc+Be1jO4i8bKd
         IDph+tGL9jFjrniRNM73gr5Il7/OerbCd+LFqZEyzUbqDwIhNbNbfz2wl4TWAnupFKgP
         pF9g==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tvsXYo3t;
       spf=pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by gmr-mx.google.com with ESMTPS id e9e14a558f8ab-430b518660asi243925ab.5.2025.10.15.11.27.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 11:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C495F405B2;
	Wed, 15 Oct 2025 18:27:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D958C4CEF8;
	Wed, 15 Oct 2025 18:27:56 +0000 (UTC)
Date: Wed, 15 Oct 2025 11:27:54 -0700
From: "'Nathan Chancellor' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Vishal Chourasia <vishalc@linux.ibm.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, maddy@linux.ibm.com,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	"llvm@lists.linux.dev" <llvm@lists.linux.dev>
Subject: Re: [PATCH] arch/powerpc: Remove .interp section in vmlinux
Message-ID: <20251015182754.GA1055324@ax162>
References: <eeaf8fd6628a75d19872ab31cf7e7179e2baef5e.1751366959.git.christophe.leroy@csgroup.eu>
 <20251013040148.560439-1-vishalc@linux.ibm.com>
 <2b4a3215-1620-40c9-a00c-ca833ebbb7b6@csgroup.eu>
 <aOypxKMzsLR5tAtv@linux.ibm.com>
 <20251015002154.GA2300901@ax162>
 <aO8XEhMdT19UOPlp@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <aO8XEhMdT19UOPlp@linux.ibm.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tvsXYo3t;       spf=pass
 (google.com: domain of nathan@kernel.org designates 172.234.252.31 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Nathan Chancellor <nathan@kernel.org>
Reply-To: Nathan Chancellor <nathan@kernel.org>
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

On Wed, Oct 15, 2025 at 09:07:54AM +0530, Vishal Chourasia wrote:
> Hello Nathan,
> 
> On Tue, Oct 14, 2025 at 05:21:54PM -0700, Nathan Chancellor wrote:
> > In this bug report, you mention using LLVM=1. Does the issue happen if
> > you use GNU ld (ld.bfd) via LD (i.e., LD=powerpc64le-linux-gnu-ld or
> > equivalent) over ld.lld from LLVM=1? This sounds more likely to be a
> > linker difference rather than a compiler difference.
> 
> Thank you for the insight.
> 
> Yes, when using powerpc64le-linux-gnu-ld linker .interp section is not
> emitted.
> 
> Command:
> $ make LLVM=1 ARCH=powerpc LD=powerpc64le-linux-gnu-ld -j 8 zImage
> $ llvm-readelf -p .comment vmlinux
> 
> String dump of section '.comment':
> [     0] clang version 22.0.0git (https://github.com/llvm/llvm-project.git 7314565281ec28b745502c3f429fd431e16673eb)
> 
> $ llvm-readelf -p .interp vmlinux                                                                                    
> llvm-readelf: warning: 'vmlinux': could not find section '.interp'

Thanks for confirming. Does this fix the issue for you? It appears to
work for me.

Cheers,
Nathan

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index de6ee7d35cff..15850296c0a9 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -330,7 +330,6 @@ SECTIONS
 	}
 	.hash : AT(ADDR(.hash) - LOAD_OFFSET) { *(.hash) }
 	.gnu.hash : AT(ADDR(.gnu.hash) - LOAD_OFFSET) { *(.gnu.hash) }
-	.interp : AT(ADDR(.interp) - LOAD_OFFSET) { *(.interp) }
 	.rela.dyn : AT(ADDR(.rela.dyn) - LOAD_OFFSET)
 	{
 		__rela_dyn_start = .;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/clang-built-linux/20251015182754.GA1055324%40ax162.
