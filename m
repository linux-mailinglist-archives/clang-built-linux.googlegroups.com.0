Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBI7E3LWQKGQEMJTQ4AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDEFE6ED3
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 10:17:23 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id 11sf1287815ljq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 02:17:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572254243; cv=pass;
        d=google.com; s=arc-20160816;
        b=PdL/LMPC+e8moPmtFemhFe+OaHobZelPeniV86lHafS0/VPJ3enWQZvypPFTR9xHcp
         Jr5n5iUyieruTsD9iCG1xKRXyhUdfMpzP8b2yf4+Dasmxod80gxc4YDBEIRkCgw2baEJ
         IJMJ/06mtHwr9CEzW+oniwrJrYiZBUhPEfLnDPHEOxvJG5hpt2BE22Kugs1Cn9wNWdFI
         C3Hh0EqLC7XI/gz5o/Po0C9wEGkoZEzlpbOWAy/rV6Y/pfO4Hbx0tGdMR3KIGHGp/mzL
         hWJOclDkFVmuJYl/iLvsKT04Fz3TVDSPVxKt/n5lkTlfWOj4cyWNmh824K97YVJ5FC4Q
         35gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+ewiUpsggpDZ3Oysif+u8I/1+9cNer4W+YndQyNfY+s=;
        b=RRXC83R+9T08WNdwEBvzTeYnus0a8Ffa3Dz+K/H0f94Wh2ys8u7NR599VFrtpQ8Z0h
         Pd3mKSB3wza/ZUwLFmSOpuIBeRr1RY8kezrkYQjYIWj8sb2o/u1Q1SfDay0tsdB9qw/5
         mybs380S1BrlX+JSaPXhqXQTFKM+6/m8XuHnhMYSwKcilnnsX7sC5ZCaUPC0Qbiyi8wQ
         W1ANSNyZ+cByn+vNDXfr0OAZEOsST/NMqgyvgolDMjmt/0AU7Imh7JI85Ar5RWchvk4o
         NP+qOBA6GjimBYiAVIj+XKqS57honQSSeChSkwGaMwofJRPYB+sK5yCPbe8DZT0uXSGD
         zm9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ewiUpsggpDZ3Oysif+u8I/1+9cNer4W+YndQyNfY+s=;
        b=ja9qC6GbvSlnBCIgg8YUwIG32/fif2Am2vo0nDoQBFl6DeoM3urF3LJ0XC00PxmjDF
         63p6C7tS37MTPWU6BE11o/QanYks6EENE3XihVktKMiMhUss4Rhzt2CRaIDlSPuyq7GL
         wDgdPh580MPksphBBdHPf24lafLPB9g2MX81qJJvCmNO5Trwj9PBjKW8y0Eriky+Hup+
         fq4VAumyKGaKD6Xz1shfylHHxjWs+IHxS/GZ8f0gsD3R8J/+JRbrEZfBwn1OQ8LJS/iK
         DBCkqWgCpDPAg0jbIcdKRiQfAAzFHw5ESSTtkCdb21nTkJCvfteMyYrWjpTz44h1QsHF
         Uflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+ewiUpsggpDZ3Oysif+u8I/1+9cNer4W+YndQyNfY+s=;
        b=epPXsoYzvB7ymIx62dL2GeylK2+OOAbgEouMXSBeuN3VfR6dVLLKbmp2ceOIZkDuNu
         XiYeMMr/0Hjiq52PjGYvxvsvcAEKdT47jPS9w0sAuGcmglg/FQTpNk82y3Y0jjXvk7as
         HwazBXZnTHAtabqEMhTbbeW5K8QUHBOSZZ7M78N04A5KZ/LDfMMnQ1RcydRetlAsOV25
         jyWUwLgFm5vH/fDMR90C4LwBCcnkHdyH/CfztaTS2Mq8RwwWsRxnWPj+RUrB3ptj2LBc
         sBRVqCV0fOvHp938YV4dZ8fvPMepxAvnaAie5M8NVNkIkZ6vQ2i1lD/DQZexEC5aX1/b
         1pig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+QPMUZhgLu+ts5PG6gqKM2wYjdjsQQyDBjWPQ0MOV47gS3WAN
	2X4zbvJ3ULKK3DGNFLb+ahg=
X-Google-Smtp-Source: APXvYqw7ESaVNo1VLrs7w9Y6SMFoWFcSO0511x/X9JXBZw6QVuPW/nb7q9n9wErSUKeZr4NQmN6gpw==
X-Received: by 2002:ac2:596b:: with SMTP id h11mr10568610lfp.26.1572254243155;
        Mon, 28 Oct 2019 02:17:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8806:: with SMTP id x6ls2442811ljh.11.gmail; Mon, 28 Oct
 2019 02:17:22 -0700 (PDT)
X-Received: by 2002:a2e:6101:: with SMTP id v1mr11182885ljb.122.1572254242391;
        Mon, 28 Oct 2019 02:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572254242; cv=none;
        d=google.com; s=arc-20160816;
        b=pOxvJRmLGSfCPZ/MFklEoYPLhzPaaa6FA1TfuXlr+Lj3f9FK+zfPRgyxBqmmhMnIp5
         Ut7xfRRpNAdAcKfFP216JZYpuPrSUYRcXI0jpKuSpJpthvVuvAogyMplBWIB0DVsN41T
         w3W3nqN6oTG0gBacb9P7vjZlzzXdqz64yFrIlmGRYoJGHLO4486SiGil9k/Gd4tR48ZC
         rpaEXmcTzeu0SNP97nDw17hVd7e+sQOUvssmbP+MucNJ90FgtWxaCNfBkp/gOuv1U0tT
         enpkEHguoPW86oEY/oKYtrq3sD65ci46tFH5y7WGqYIeQq8gNN7kqS1/q0oqVNVtQ2Hj
         VgGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7TXqjRzy4kb8LGxLWx8YpHAFsag4xAUtzmtnan5XP0I=;
        b=IQSfCoeFRwxNMCQMok2cMIWb3G51xIIp/iwkBB/q6b2/dckTgYBSWl+RMFRBKPNAQL
         QV40HcR2ZcZwWsZnvXBiWVNnR0tLwOzdDnI4JPJ9JT4KKcxF7LNwaWW9R44vMrZHgmYj
         rLGShMRfo3FB5yeSKWHWrfk4FiyN5aO07BHKseg0f87wS1gtCpoeBmlH9C9blxQdNEOk
         KF5UDpWuy+aNViRUBBATz2ZcoGbKKxqCzOErCsGkfhGZNyGhke16TRk+SK+iI7YM34Vw
         XnaMa45F5cduCF+Rdb2K1L+sxtbztuFglVpzz2+k5cZnq7AP0NQ8FTeVKNJmNJNpUCtM
         a9aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r71si431375lff.5.2019.10.28.02.17.21
        for <clang-built-linux@googlegroups.com>;
        Mon, 28 Oct 2019 02:17:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEF911FB;
	Mon, 28 Oct 2019 02:17:20 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBCE63F71E;
	Mon, 28 Oct 2019 02:17:19 -0700 (PDT)
Date: Mon, 28 Oct 2019 09:17:17 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: James Morse <james.morse@arm.com>, kbuild@lists.01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [arm64:for-next/neoverse-n1-stale-instr 3/3]
 arch/arm64/kernel/sys_compat.c:40:21: warning: value size does not match
 register size specified by the constraint and modifier
Message-ID: <20191028091716.GA16739@arrakis.emea.arm.com>
References: <201910260339.l5vEPjIc%lkp@intel.com>
 <20191026043942.GA9588@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191026043942.GA9588@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

Hi Nathan,

On Fri, Oct 25, 2019 at 09:39:42PM -0700, Nathan Chancellor wrote:
> On Sat, Oct 26, 2019 at 03:40:42AM +0800, kbuild test robot wrote:
> > vim +40 arch/arm64/kernel/sys_compat.c
> > 
> >     23	
> >     24	static long
> >     25	__do_compat_cache_op(unsigned long start, unsigned long end)
> >     26	{
> >     27		long ret;
> >     28	
> >     29		do {
> >     30			unsigned long chunk = min(PAGE_SIZE, end - start);
> >     31	
> >     32			if (fatal_signal_pending(current))
> >     33				return 0;
> >     34	
> >     35			if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
> >     36				/*
> >     37				 * The workaround requires an inner-shareable tlbi.
> >     38				 * We pick the reserved-ASID to minimise the impact.
> >     39				 */
> >   > 40				__tlbi(aside1is, 0);
> 
> Changing this to 0UL appears to fix the issue. Not sure if that is a
> fix you would prefer but that seems easy enough.

Thanks for the report. I think we should do as in the other cases of
__tlbi(aside1is) invocations, build the value using the __TLBI_VADDR()
macro:

---------8<----------------------
From 27a22fbdeedd6c5c451cf5f830d51782bf50c3a2 Mon Sep 17 00:00:00 2001
From: Catalin Marinas <catalin.marinas@arm.com>
Date: Mon, 28 Oct 2019 09:08:34 +0000
Subject: [PATCH] arm64: Silence clang warning on mismatched value/register
 sizes

Clang reports a warning on the __tlbi(aside1is, 0) macro expansion since
the value size does not match the register size specified in the inline
asm. Construct the ASID value using the __TLBI_VADDR() macro.

Fixes: 222fc0c8503d ("arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: James Morse <james.morse@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/sys_compat.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index c9fb02927d3e..3c18c2454089 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -37,7 +37,7 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
 			 * The workaround requires an inner-shareable tlbi.
 			 * We pick the reserved-ASID to minimise the impact.
 			 */
-			__tlbi(aside1is, 0);
+			__tlbi(aside1is, __TLBI_VADDR(0, 0));
 			dsb(ish);
 		}
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028091716.GA16739%40arrakis.emea.arm.com.
